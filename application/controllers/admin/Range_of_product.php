<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Range_of_product extends Admin_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Range_of_product_model');

        $this->load->helper('ckeditor');
        $this->data['ckeditor'] = array(
            'id' => 'ck_editor',
            'path' => 'asset/js/ckeditor',
            'config' => array(
                'toolbar' => "Full",
                'width' => "99.8%",
                'height' => "400px"
            )
        );
    }

    public function range_of_product($id = NULL, $opt = null)
    {
        $data['title'] = "All range of product";
        $data['assign_user'] = $this->Range_of_product_model->allowed_user('162');
         if (!empty($id)) {
            $data['active'] = 2;
            $can_edit = $this->Range_of_product_model->can_action('tbl_range_of_product', 'edit', array('id' => $id));
            if (!empty($can_edit)) {
                $data['RProduct_info'] = $this->Range_of_product_model->check_by(array('id' => $id), 'tbl_range_of_product');
            }
        } else {
            $data['active'] = 1;
        }

        $data['subview'] = $this->load->view('admin/range_of_product/range_of_product', $data, TRUE);
        $this->load->view('admin/_layout_main', $data);
 
    }
    public function save_product($id = NULL)
    {
        $created = can_action('162', 'created');
        $edited = can_action('162', 'edited');
        if (!empty($created) || !empty($edited) && !empty($id)) {
            $this->Range_of_product_model->_table_name = 'tbl_range_of_product';
            $this->Range_of_product_model->_primary_key = 'id';

            $data = $this->Range_of_product_model->array_from_post(array('name'));
            
            // update root category
            $where = array('name' => $data['name']);
            // duplicate value check in DB

            if (!empty($id)) { // if id exist in db update data
                $Productid = array('id !=' => $id);
            } else { // if id is not exist then set id as null
                $Productid = null;
            }

            // check whether this input data already exist or not
            $check_product = $this->Range_of_product_model->check_update('tbl_range_of_product', $where, $Productid);

            if (!empty($check_product)) { // if input data already exist show error alert
                // massage for user
                $type = 'error';
                $msg = "<strong style='color:#000'>" . $data['name'] . '</strong>  ' . lang('already_exist');
            } else { // save and update query
                $return_id = $this->Range_of_product_model->save($data, $id);

                if (!empty($id)) {
                    $id = $id;
                    $msg = "Range of product updated successfully";
                } else {
                    $id = $return_id;
                    $msg = "Range of product added successfully";
                }
                save_custom_field(8, $id);

                // messages for user
                $type = "success";
            }

            $message = $msg;
            set_message($type, $message);
        }
        redirect('admin/range_of_product/range_of_product');

    }

    public function delete_RProduct($id, $bulk = null)
    {
        $deleted = can_action('162', 'deleted');
        if (!empty($deleted)) {
            
            $this->Range_of_product_model->_table_name = 'tbl_range_of_product';
            $this->Range_of_product_model->_primary_key = 'id';
            $this->Range_of_product_model->delete($id);
            $type = 'success';
            $message = "Range of product deleted successfully.";
        } else {
            $type = "error";
            $message = lang('no_permission');
        }
        if (!empty($bulk)) {
            return (array("status" => $type, 'message' => $message));
        }
        echo json_encode(array("status" => $type, 'message' => $message));
        exit();
    }
    public function bulk_delete()
    {

        $selected_id = $this->input->post('ids', true);
        if (!empty($selected_id)) {
            foreach ($selected_id as $id) {
                $result[] = $this->delete_RProduct($id, true);
            }
            echo json_encode($result);
            exit();
        } else {
            $type = "error";
            $message = lang('you_need_select_to_delete');
            echo json_encode(array("status" => $type, 'message' => $message));
            exit();
        }
    }

    public function range_of_productlist($type = null){
    {
        if ($this->input->is_ajax_request()) {
            $this->load->model('datatables');
            $this->datatables->table = 'tbl_range_of_product';
            $custom_field = 0;
            $main_column = array('name', 'status');
            $action_array = array('id');
            $result = array_merge($main_column, $custom_field, $action_array);
             $this->datatables->column_order = array('name');
            $this->datatables->column_search = array('name');
            $this->datatables->order = array('id' => 'desc');

            $fetch_data = $this->datatables->get_datatable_permission();

            $data = array();

            $edited = can_action('162', 'edited');
            $deleted = can_action('162', 'deleted');
            foreach ($fetch_data as $_key => $RProduct) {
                $action = null;
                $can_edit = $this->Range_of_product_model->can_action('tbl_range_of_product', 'edit', array('id' => $RProduct->id));
                $can_delete = $this->Range_of_product_model->can_action('tbl_range_of_product', 'delete', array('id' => $RProduct->id));

                

                $sub_array = array();

                $name = null;
                $name .= '<strong class="block">' . $RProduct->name . '</strong>';

                
                if (!empty($deleted)) {
                    $sub_array[] = '<div class="checkbox c-checkbox" ><label class="needsclick"> <input value="' . $RProduct->id . '" type="checkbox"><span class="fa fa-check"></span></label></div>';
                }

                $sub_array[] = $name;

                
                $custom_form_table = custom_form_table(8, $RProduct->id);

                if (!empty($custom_form_table)) {
                    foreach ($custom_form_table as $c_label => $v_fields) {
                        $sub_array[] = $v_fields;
                    }
                }
                
                if (!empty($can_edit) && !empty($edited)) {
                    $action .= btn_edit('admin/range_of_product/range_of_product/' . $RProduct->id) . ' ';
                }
                if (!empty($can_delete) && !empty($deleted)) {
                    $action .= ajax_anchor(base_url("admin/range_of_product/delete_RProduct/$RProduct->id"), "<i class='btn btn-xs btn-danger fa fa-trash-o'></i>", array("class" => "", "title" => lang('delete'), "data-fade-out-on-success" => "#table_" . $_key)) . ' ';
                }
                if (!empty($can_edit) && !empty($edited)) {
                    $action .= $change_status;
                }
                $sub_array[] = $action;
                $data[] = $sub_array;
            }

            render_table($data);
        } else {
            redirect('admin/dashboard');
        }
    }
    }
}


?>