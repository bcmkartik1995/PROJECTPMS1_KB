<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Uom extends Admin_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Uom_model');

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

    public function uom_list($id = NULL, $opt = null)
    {
        $data['title'] = "All uom";
        $data['assign_user'] = $this->Uom_model->allowed_user('163');
         if (!empty($id)) {
            $data['active'] = 2;
            $can_edit = $this->Uom_model->can_action('tbl_uom', 'edit', array('id' => $id));
            if (!empty($can_edit)) {
                $data['uom_info'] = $this->Uom_model->check_by(array('id' => $id), 'tbl_uom');
            }
        } else {
            $data['active'] = 1;
        }

        $data['subview'] = $this->load->view('admin/uom/uom', $data, TRUE);
        $this->load->view('admin/_layout_main', $data);
 
    }
    public function save_uom($id = NULL)
    {
        $created = can_action('163', 'created');
        $edited = can_action('163', 'edited');
        if (!empty($created) || !empty($edited) && !empty($id)) {
            $this->Uom_model->_table_name = 'tbl_uom';
            $this->Uom_model->_primary_key = 'id';

            $data = $this->Uom_model->array_from_post(array('name'));
            
            // update root category
            $where = array('name' => $data['name']);
            // duplicate value check in DB

            if (!empty($id)) { // if id exist in db update data
                $Uomid = array('id !=' => $id);
            } else { // if id is not exist then set id as null
                $Uomid = null;
            }

            // check whether this input data already exist or not
            $check_uom = $this->Uom_model->check_update('tbl_uom', $where, $Uomid);

            if (!empty($check_uom)) { // if input data already exist show error alert
                // massage for user
                $type = 'error';
                $msg = "<strong style='color:#000'>" . $data['name'] . '</strong>  ' . lang('already_exist');
            } else { // save and update query
                $return_id = $this->Uom_model->save($data, $id);

                if (!empty($id)) {
                    $id = $id;
                    $msg = "UOM updated successfully";
                } else {
                    $id = $return_id;
                    $msg = "UOM added successfully";
                }
                save_custom_field(8, $id);

                // messages for user
                $type = "success";
            }

            $message = $msg;
            set_message($type, $message);
        }
        redirect('admin/uom/uom_list');

    }

    public function delete_uom($id, $bulk = null)
    {
        $deleted = can_action('163', 'deleted');
        if (!empty($deleted)) {

            $this->Uom_model->_table_name = 'tbl_uom';
            $this->Uom_model->_primary_key = 'id';
            $this->Uom_model->delete($id);
            $type = 'success';
            $message = "UOM deleted successfully.";
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
                $result[] = $this->delete_uom($id, true);
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

    public function uomlist($type = null){
    {
        if ($this->input->is_ajax_request()) {
            $this->load->model('datatables');
            $this->datatables->table = 'tbl_uom';
            $custom_field = 0;
            $main_column = array('name', 'status');
            $action_array = array('id');
            $result = array_merge($main_column, $custom_field, $action_array);
             $this->datatables->column_order = array('name');
            $this->datatables->column_search = array('name');
            $this->datatables->order = array('id' => 'desc');

            $fetch_data = $this->datatables->get_datatable_permission();

            $data = array();

            $edited = can_action('163', 'edited');
            $deleted = can_action('163', 'deleted');
            foreach ($fetch_data as $_key => $Uom) {
                $action = null;
                $can_edit = $this->Uom_model->can_action('tbl_uom', 'edit', array('id' => $Uom->id));
                $can_delete = $this->Uom_model->can_action('tbl_uom', 'delete', array('id' => $Uom->id));

                

                $sub_array = array();

                $name = null;
                $name .= '<strong class="block">' . $Uom->name . '</strong>';
                
                if (!empty($deleted)) {
                    $sub_array[] = '<div class="checkbox c-checkbox" ><label class="needsclick"> <input value="' . $Uom->id . '" type="checkbox"><span class="fa fa-check"></span></label></div>';
                }

                $sub_array[] = $name;

                
                $custom_form_table = custom_form_table(8, $Uom->id);

                if (!empty($custom_form_table)) {
                    foreach ($custom_form_table as $c_label => $v_fields) {
                        $sub_array[] = $v_fields;
                    }
                }
                
                if (!empty($can_edit) && !empty($edited)) {
                    $action .= btn_edit('admin/uom/uom_list/' . $Uom->id) . ' ';
                }
                if (!empty($can_delete) && !empty($deleted)) {
                    $action .= ajax_anchor(base_url("admin/uom/delete_uom/$Uom->id"), "<i class='btn btn-xs btn-danger fa fa-trash-o'></i>", array("class" => "", "title" => lang('delete'), "data-fade-out-on-success" => "#table_" . $_key)) . ' ';
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