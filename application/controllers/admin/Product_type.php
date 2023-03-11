<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Product_type extends Admin_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Product_type_model');

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

    public function product_type($id = NULL, $opt = null)
    {
        $data['title'] = "All Product Types";
        $data['assign_user'] = $this->Product_type_model->allowed_user('167');
         if (!empty($id)) {
            $data['active'] = 2;
            $can_edit = $this->Product_type_model->can_action('tbl_product_type', 'edit', array('id' => $id));
            if (!empty($can_edit)) {
                $data['PType_info'] = $this->Product_type_model->check_by(array('id' => $id), 'tbl_product_type');
            }
        } else {
            $data['active'] = 1;
        }

        $data['subview'] = $this->load->view('admin/product_type/product_type', $data, TRUE);
        $this->load->view('admin/_layout_main', $data);
 
    }
    public function save_pt($id = NULL)
    {
        $created = can_action('167', 'created');
        $edited = can_action('167', 'edited');
        if (!empty($created) || !empty($edited) && !empty($id)) {
            $this->Product_type_model->_table_name = 'tbl_product_type';
            $this->Product_type_model->_primary_key = 'id';

            $data = $this->Product_type_model->array_from_post(array('name'));
            
            // update root category
            $where = array('name' => $data['name']);
            // duplicate value check in DB

            if (!empty($id)) { // if id exist in db update data
                $PTypeId = array('id !=' => $id);
            } else { // if id is not exist then set id as null
                $PTypeId = null;
            }

            // check whether this input data already exist or not
            $check_pt = $this->Product_type_model->check_update('tbl_product_type', $where, $PTypeId);

            if (!empty($check_pt)) { // if input data already exist show error alert
                // massage for user
                $type = 'error';
                $msg = "<strong style='color:#000'>" . $data['name'] . '</strong>  ' . lang('already_exist');
            } else { // save and update query
                $return_id = $this->Product_type_model->save($data, $id);

                if (!empty($id)) {
                    $id = $id;
                    $msg = "Product Type updated successfully";
                } else {
                    $id = $return_id;
                    $msg = "Product Type added successfully";
                }
                save_custom_field(8, $id);

                // messages for user
                $type = "success";
            }

            $message = $msg;
            set_message($type, $message);
        }
        redirect('admin/product_type/product_type');

    }

    public function delete_pt($id, $bulk = null)
    {
        $deleted = can_action('167', 'deleted');
        if (!empty($deleted)) {
            
            $this->Product_type_model->_table_name = 'tbl_product_type';
            $this->Product_type_model->_primary_key = 'id';
            $this->Product_type_model->delete($id);
            $type = 'success';
            $message = "Product Type deleted successfully.";
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
                $result[] = $this->delete_pt($id, true);
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

    public function product_typelist($type = null){
    {
        if ($this->input->is_ajax_request()) {
            $this->load->model('datatables');
            $this->datatables->table = 'tbl_product_type';
            $custom_field = 0;
            $main_column = array('name', 'status');
            $action_array = array('id');
            $result = array_merge($main_column, $custom_field, $action_array);
             $this->datatables->column_order = array('name');
            $this->datatables->column_search = array('name');
            $this->datatables->order = array('id' => 'desc');

            $fetch_data = $this->datatables->get_datatable_permission();

            $data = array();

            $edited = can_action('167', 'edited');
            $deleted = can_action('167', 'deleted');
            foreach ($fetch_data as $_key => $PType) {
                $action = null;
                $can_edit = $this->Product_type_model->can_action('tbl_product_type', 'edit', array('id' => $PType->id));
                $can_delete = $this->Product_type_model->can_action('tbl_product_type', 'delete', array('id' => $PType->id));

                

                $sub_array = array();

                $name = null;
                $name .= '<strong class="block">' . $PType->name . '</strong>';

                
                if (!empty($deleted)) {
                    $sub_array[] = '<div class="checkbox c-checkbox" ><label class="needsclick"> <input value="' . $PType->id . '" type="checkbox"><span class="fa fa-check"></span></label></div>';
                }

                $sub_array[] = $name;

                
                $custom_form_table = custom_form_table(8, $PType->id);

                if (!empty($custom_form_table)) {
                    foreach ($custom_form_table as $c_label => $v_fields) {
                        $sub_array[] = $v_fields;
                    }
                }
                
                if (!empty($can_edit) && !empty($edited)) {
                    $action .= btn_edit('admin/product_type/product_type/' . $PType->id) . ' ';
                }
                if (!empty($can_delete) && !empty($deleted)) {
                    $action .= ajax_anchor(base_url("admin/product_type/delete_pt/$PType->id"), "<i class='btn btn-xs btn-danger fa fa-trash-o'></i>", array("class" => "", "title" => lang('delete'), "data-fade-out-on-success" => "#table_" . $_key)) . ' ';
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