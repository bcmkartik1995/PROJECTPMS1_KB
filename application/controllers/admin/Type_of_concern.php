<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Type_of_concern extends Admin_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Type_of_concern_model');

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

    public function type_of_concern($id = NULL, $opt = null)
    {
        $data['title'] = "All type of concern";
        $data['assign_user'] = $this->Type_of_concern_model->allowed_user('165');
         if (!empty($id)) {
            $data['active'] = 2;
            $can_edit = $this->Type_of_concern_model->can_action('tbl_type_of_concern', 'edit', array('id' => $id));
            if (!empty($can_edit)) {
                $data['TConcern_info'] = $this->Type_of_concern_model->check_by(array('id' => $id), 'tbl_type_of_concern');
            }
        } else {
            $data['active'] = 1;
        }

        $data['subview'] = $this->load->view('admin/type_of_concern/type_of_concern', $data, TRUE);
        $this->load->view('admin/_layout_main', $data);
 
    }
    public function save_tc($id = NULL)
    {
        $created = can_action('165', 'created');
        $edited = can_action('165', 'edited');
        if (!empty($created) || !empty($edited) && !empty($id)) {
            $this->Type_of_concern_model->_table_name = 'tbl_type_of_concern';
            $this->Type_of_concern_model->_primary_key = 'id';

            $data = $this->Type_of_concern_model->array_from_post(array('name'));
            
            // update root category
            $where = array('name' => $data['name']);
            // duplicate value check in DB

            if (!empty($id)) { // if id exist in db update data
                $TConcernId = array('id !=' => $id);
            } else { // if id is not exist then set id as null
                $TConcernId = null;
            }

            // check whether this input data already exist or not
            $check_tc = $this->Type_of_concern_model->check_update('tbl_type_of_concern', $where, $TConcernId);

            if (!empty($check_tc)) { // if input data already exist show error alert
                // massage for user
                $type = 'error';
                $msg = "<strong style='color:#000'>" . $data['name'] . '</strong>  ' . lang('already_exist');
            } else { // save and update query
                $return_id = $this->Type_of_concern_model->save($data, $id);

                if (!empty($id)) {
                    $id = $id;
                    $msg = "Type of concern updated successfully";
                } else {
                    $id = $return_id;
                    $msg = "Type of concern added successfully";
                }
                save_custom_field(8, $id);

                // messages for user
                $type = "success";
            }

            $message = $msg;
            set_message($type, $message);
        }
        redirect('admin/type_of_concern/type_of_concern');

    }

    public function delete_tc($id, $bulk = null)
    {
        $deleted = can_action('165', 'deleted');
        if (!empty($deleted)) {
            
            $this->Type_of_concern_model->_table_name = 'tbl_type_of_concern';
            $this->Type_of_concern_model->_primary_key = 'id';
            $this->Type_of_concern_model->delete($id);
            $type = 'success';
            $message = "Type of concern deleted successfully.";
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
                $result[] = $this->delete_tc($id, true);
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

    public function type_of_concernlist($type = null){
    {
        if ($this->input->is_ajax_request()) {
            $this->load->model('datatables');
            $this->datatables->table = 'tbl_type_of_concern';
            $custom_field = 0;
            $main_column = array('name', 'status');
            $action_array = array('id');
            $result = array_merge($main_column, $custom_field, $action_array);
             $this->datatables->column_order = array('name');
            $this->datatables->column_search = array('name');
            $this->datatables->order = array('id' => 'desc');

            $fetch_data = $this->datatables->get_datatable_permission();

            $data = array();

            $edited = can_action('165', 'edited');
            $deleted = can_action('165', 'deleted');
            foreach ($fetch_data as $_key => $TConcern) {
                $action = null;
                $can_edit = $this->Type_of_concern_model->can_action('tbl_type_of_concern', 'edit', array('id' => $TConcern->id));
                $can_delete = $this->Type_of_concern_model->can_action('tbl_type_of_concern', 'delete', array('id' => $TConcern->id));

                

                $sub_array = array();

                $name = null;
                $name .= '<strong class="block">' . $TConcern->name . '</strong>';

                
                if (!empty($deleted)) {
                    $sub_array[] = '<div class="checkbox c-checkbox" ><label class="needsclick"> <input value="' . $TConcern->id . '" type="checkbox"><span class="fa fa-check"></span></label></div>';
                }

                $sub_array[] = $name;

                
                $custom_form_table = custom_form_table(8, $TConcern->id);

                if (!empty($custom_form_table)) {
                    foreach ($custom_form_table as $c_label => $v_fields) {
                        $sub_array[] = $v_fields;
                    }
                }
                
                if (!empty($can_edit) && !empty($edited)) {
                    $action .= btn_edit('admin/type_of_concern/type_of_concern/' . $TConcern->id) . ' ';
                }
                if (!empty($can_delete) && !empty($deleted)) {
                    $action .= ajax_anchor(base_url("admin/type_of_concern/delete_tc/$TConcern->id"), "<i class='btn btn-xs btn-danger fa fa-trash-o'></i>", array("class" => "", "title" => lang('delete'), "data-fade-out-on-success" => "#table_" . $_key)) . ' ';
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