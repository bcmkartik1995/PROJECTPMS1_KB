<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Bussiness_activities extends Admin_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Bussiness_activities_model');

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

    public function bussiness_activities($id = NULL, $opt = null)
    {
        $data['title'] = "All Bussiness activities";
        $data['assign_user'] = $this->Bussiness_activities_model->allowed_user('164');
         if (!empty($id)) {
            $data['active'] = 2;
            $can_edit = $this->Bussiness_activities_model->can_action('tbl_bussiness_activities', 'edit', array('id' => $id));
            if (!empty($can_edit)) {
                $data['BussActivity_info'] = $this->Bussiness_activities_model->check_by(array('id' => $id), 'tbl_bussiness_activities');
            }
        } else {
            $data['active'] = 1;
        }

        $data['subview'] = $this->load->view('admin/bussiness_activities/bussiness_activities', $data, TRUE);
        $this->load->view('admin/_layout_main', $data);
 
    }
    public function save_bussiness_activity($id = NULL)
    {
        $created = can_action('164', 'created');
        $edited = can_action('164', 'edited');
        if (!empty($created) || !empty($edited) && !empty($id)) {
            $this->Bussiness_activities_model->_table_name = 'tbl_bussiness_activities';
            $this->Bussiness_activities_model->_primary_key = 'id';

            $data = $this->Bussiness_activities_model->array_from_post(array('name'));
            
            // update root category
            $where = array('name' => $data['name']);
            // duplicate value check in DB

            if (!empty($id)) { // if id exist in db update data
                $BaID = array('id !=' => $id);
            } else { // if id is not exist then set id as null
                $BaID = null;
            }

            // check whether this input data already exist or not
            $check_ba = $this->Bussiness_activities_model->check_update('tbl_bussiness_activities', $where, $BaID);

            if (!empty($check_ba)) { // if input data already exist show error alert
                // massage for user
                $type = 'error';
                $msg = "<strong style='color:#000'>" . $data['name'] . '</strong>  ' . lang('already_exist');
            } else { // save and update query
                $return_id = $this->Bussiness_activities_model->save($data, $id);

                if (!empty($id)) {
                    $id = $id;
                    $msg = "Bussiness activities updated successfully";
                } else {
                    $id = $return_id;
                    $msg = "Bussiness activities added successfully";
                }
                save_custom_field(8, $id);

                // messages for user
                $type = "success";
            }

            $message = $msg;
            set_message($type, $message);
        }
        redirect('admin/bussiness_activities/bussiness_activities');

    }

    public function delete_bussiness_activities($id, $bulk = null)
    {
        $deleted = can_action('164', 'deleted');
        if (!empty($deleted)) {
            
            $this->Bussiness_activities_model->_table_name = 'tbl_bussiness_activities';
            $this->Bussiness_activities_model->_primary_key = 'id';
            $this->Bussiness_activities_model->delete($id);
            $type = 'success';
            $message = "Bussiness activities deleted successfully.";
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
                $result[] = $this->delete_bussiness_activities($id, true);
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

    public function bussiness_activitieslist($type = null){
    {
        if ($this->input->is_ajax_request()) {
            $this->load->model('datatables');
            $this->datatables->table = 'tbl_bussiness_activities';
            $custom_field = 0;
            $main_column = array('name', 'status');
            $action_array = array('id');
            $result = array_merge($main_column, $custom_field, $action_array);
             $this->datatables->column_order = array('name');
            $this->datatables->column_search = array('name');
            $this->datatables->order = array('id' => 'desc');

            $fetch_data = $this->datatables->get_datatable_permission();

            $data = array();

            $edited = can_action('164', 'edited');
            $deleted = can_action('164', 'deleted');
            foreach ($fetch_data as $_key => $BussinessActivities) {
                $action = null;
                $can_edit = $this->Bussiness_activities_model->can_action('tbl_bussiness_activities', 'edit', array('id' => $BussinessActivities->id));
                $can_delete = $this->Bussiness_activities_model->can_action('tbl_bussiness_activities', 'delete', array('id' => $BussinessActivities->id));

                

                $sub_array = array();

                $name = null;
                $name .= '<strong class="block">' . $BussinessActivities->name . '</strong>';

                
                if (!empty($deleted)) {
                    $sub_array[] = '<div class="checkbox c-checkbox" ><label class="needsclick"> <input value="' . $BussinessActivities->id . '" type="checkbox"><span class="fa fa-check"></span></label></div>';
                }

                $sub_array[] = $name;

                
                $custom_form_table = custom_form_table(8, $BussinessActivities->id);

                if (!empty($custom_form_table)) {
                    foreach ($custom_form_table as $c_label => $v_fields) {
                        $sub_array[] = $v_fields;
                    }
                }
                
                if (!empty($can_edit) && !empty($edited)) {
                    $action .= btn_edit('admin/bussiness_activities/bussiness_activities/' . $BussinessActivities->id) . ' ';
                }
                if (!empty($can_delete) && !empty($deleted)) {
                    $action .= ajax_anchor(base_url("admin/bussiness_activities/delete_bussiness_activities/$BussinessActivities->id"), "<i class='btn btn-xs btn-danger fa fa-trash-o'></i>", array("class" => "", "title" => lang('delete'), "data-fade-out-on-success" => "#table_" . $_key)) . ' ';
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