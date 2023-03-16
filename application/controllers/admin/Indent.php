<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Indent extends Admin_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Indent_model');

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

    public function indent($id = NULL, $opt = null)
    {
        $data['title'] = "All indent";
        $data['assign_user'] = $this->Indent_model->allowed_user('171');
         if (!empty($id)) {
            $data['active'] = 2;
            $can_edit = $this->Indent_model->can_action('tbl_indent', 'edit', array('id' => $id));
            if (!empty($can_edit)) {
                $data['indent_info'] = $this->Indent_model->check_by(array('id' => $id), 'tbl_indent');
            }
        } else {
            $data['active'] = 1;
        }

        $data['subview'] = $this->load->view('admin/indent/indent', $data, TRUE);
        //echo "<pre>";print_r($data);die;
        $this->load->view('admin/_layout_main', $data);
 
    }

    public function indentlist($type = null)
    {
        if ($this->input->is_ajax_request()) {
            $this->load->model('datatables');
            $this->datatables->table = 'tbl_indent';
            $custom_field = 0;
            $main_column = array('indent_no');
            $action_array = array('id');
            $result = array_merge($main_column, $custom_field, $action_array);
            $this->datatables->column_order = array('indent_no','project','date','indent_due_date','project_initiation_date','created_by','Narration');
            $this->datatables->column_search = array('indent_no','project','date','indent_due_date','project_initiation_date','created_by','Narration');
            $this->datatables->order = array('id' => 'desc');

            $fetch_data = $this->datatables->get_datatable_permission();

            $data = array();

            $edited = can_action('171', 'edited');
            $deleted = can_action('171', 'deleted');
            foreach ($fetch_data as $_key => $indent) {
                $action = null;
                $can_edit = $this->Indent_model->can_action('tbl_indent', 'edit', array('id' => $indent->id));
                $can_delete = $this->Indent_model->can_action('tbl_indent', 'delete', array('id' => $indent->id));

                $sub_array = array();

                $indent_no = null;
                $indent_no .= '<strong class="block">' . $indent->indent_no . '</strong>';
                
                if (!empty($deleted)) {
                    $sub_array[] = '<div class="checkbox c-checkbox" ><label class="needsclick"> <input value="' . $indent->id . '" type="checkbox"><span class="fa fa-check"></span></label></div>';
                }

                $sub_array[] = $indent_no;
                $sub_array[] = $indent->project;
                $sub_array[] = $indent->date;
                $sub_array[] = $indent->indent_due_date;
                $sub_array[] = $indent->project_initiation_date;
                $sub_array[] = $indent->created_by;
                $sub_array[] = $indent->Narration;

                
                $custom_form_table = custom_form_table(8, $indent->id);

                if (!empty($custom_form_table)) {
                    foreach ($custom_form_table as $c_label => $v_fields) {
                        $sub_array[] = $v_fields;
                    }
                }
                
                if (!empty($can_edit) && !empty($edited)) {
                    $action .= btn_edit('admin/indent/indent/' . $indent->id) . ' ';
                }
                if (!empty($can_delete) && !empty($deleted)) {
                    $action .= ajax_anchor(base_url("admin/indent/delete_indent/$indent->id"), "<i class='btn btn-xs btn-danger fa fa-trash-o'></i>", array("class" => "", "title" => lang('delete'), "data-fade-out-on-success" => "#table_" . $_key)) . ' ';
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

    
    public function save_indent($id = NULL)
    {
        $created = can_action('171', 'created');
        $edited = can_action('171', 'edited');
        if (!empty($created) || !empty($edited) && !empty($id)) {
            $this->indent_model->_table_name = 'tbl_indent';
            $this->indent_model->_primary_key = 'id';

            $data = $this->Indent_model->array_from_post(array('indent_no'));
            
            // update root category
            $where = array('indent_no' => $data['indent_no']);
            // duplicate value check in DB

            if (!empty($id)) { // if id exist in db update data
                $indentid = array('id !=' => $id);
            } else { // if id is not exist then set id as null
                $indentid = null;
            }

            // check whether this input data already exist or not
            $check_indent = $this->Indent_model->check_update('tbl_indent', $where, $indentid);

            if (!empty($check_indent)) { // if input data already exist show error alert
                // massage for user
                $type = 'error';
                $msg = "<strong style='color:#000'>" . $data['indent_no'] . '</strong>  ' . lang('already_exist');
            } else { // save and update query
                $return_id = $this->Indent_model->save($data, $id);

                if (!empty($id)) {
                    $id = $id;
                    $msg = "indent updated successfully";
                } else {
                    $id = $return_id;
                    $msg = "indent added successfully";
                }
                save_custom_field(8, $id);

                // messages for user
                $type = "success";
            }

            $message = $msg;
            set_message($type, $message);
        }
        redirect('admin/indent/indent');

    }

    public function delete_indent($id, $bulk = null)
    {
        $deleted = can_action('171', 'deleted');
        if (!empty($deleted)) {

            $this->Indent_model->_table_name = 'tbl_indent';
            $this->Indent_model->_primary_key = 'id';
            $this->Indent_model->delete($id);
            $type = 'success';
            $message = "indent deleted successfully.";
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
                $result[] = $this->delete_indent($id, true);
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
}

?>