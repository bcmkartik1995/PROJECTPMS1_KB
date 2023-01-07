<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Vendor extends Admin_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Vendor_model');

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

    public function vendor($id = NULL, $opt = null)
    {
        $data['title'] = "All Vendors";
        $data['assign_user'] = $this->Vendor_model->allowed_user('165');
         if (!empty($id)) {
            $data['active'] = 2;
            $can_edit = $this->Vendor_model->can_action('tbl_vendor', 'edit', array('id' => $id));
            if (!empty($can_edit)) {
                $data['Vendor_info'] = $this->Vendor_model->check_by(array('id' => $id), 'tbl_vendor');
            }
        } else {
            $data['active'] = 1;
        }

        $data['subview'] = $this->load->view('admin/vendor/vendor', $data, TRUE);
        $this->load->view('admin/_layout_main', $data);
 
    }

    public function NewVendorList()
    {
        $data['title'] = "New Vendors";
        $data['assign_user'] = $this->Vendor_model->allowed_user('165');

        $data['Vendor_info'] = $this->Vendor_model->check_by(array('id' => $id), 'tbl_vendor');

        
        $data['subview'] = $this->load->view('admin/vendor/new_vendors_list', $data, TRUE);

        $this->load->view('admin/_layout_main', $data);
 
    }

    public function InactiveVendorList()
    {
        
         if ($this->input->is_ajax_request()) {
            $this->load->model('datatables');
            $this->datatables->table = 'tbl_vendor';
            
            $action_array = array('id');
            $where = array('approve_status' => '1');
            $this->datatables->order = array('id' => 'asc');

            $fetch_data = $this->datatables->get_datatable_permission($where);

            $data = array();

            foreach ($fetch_data as $_key => $Vendor) {
                
                $sub_array = array();

                $vendor_name = null;
                $vendor_name .= '<strong class="block">' . $Vendor->vendor_name . '</strong>';

                $sub_array[] = $vendor_name;
                $sub_array[] = $Vendor->company_name;
                $sub_array[] = $Vendor->designation;
                $sub_array[] = $Vendor->email;
                $sub_array[] = $Vendor->mobile;
                $action = btn_view('admin/vendor/vendor_details/' . $Vendor->id) . ' <a href="'.base_url().'admin/vendor/approve_vendor/'.$Vendor->id.'" class="btn btn-info btn-xs" style="background-color:#27c24c;" data-toggle="tooltip" data-placement="top" title="Approve">Approve</a> <a href="'.base_url().'admin/vendor/reject_vendor/'.$Vendor->id.'" class="btn btn-info btn-xs" data-toggle="tooltip" data-placement="top" title="Reject">Reject</a>';
                $sub_array[] = $action;
                $data[] = $sub_array;
            }

            render_table($data);
        } else {
            redirect('admin/dashboard');
        }
 
    }

    public function vendor_details($id, $active = NULL, $op_id = NULL)
    {
        $data['title'] = 'vendor details';
        //get all task information
        $data['vendor_details'] = $this->Vendor_model->check_by(array('id' => $id), 'tbl_vendor');

        if($data['vendor_details']->type_of_concern_id != null && $data['vendor_details']->type_of_concern_id != 0 && $data['vendor_details']->type_of_concern_id != ''){

            $tConcern = $this->Vendor_model->check_by(array('id' => $data['vendor_details']->type_of_concern_id), 'tbl_type_of_concern');
            $data['vendor_details']->type_of_concern_id = $tConcern->name;
        } else {
            $data['vendor_details']->type_of_concern_id = "";
        }

        if($data['vendor_details']->bussiness_activity_id != null && $data['vendor_details']->bussiness_activity_id != 0 && $data['vendor_details']->bussiness_activity_id != ''){

            $business = $this->Vendor_model->check_by(array('id' => $data['vendor_details']->bussiness_activity_id), 'tbl_bussiness_activities');
            $data['vendor_details']->bussiness_activity_id = $business->name;
        } else {
            $data['vendor_details']->bussiness_activity_id = "";
        }

        $data['vendor_details']->iso9001 = $data['vendor_details']->iso9001 == 1 ? "True" : "False" ;
        $data['vendor_details']->iso140011 = $data['vendor_details']->iso140011 == 1 ? "True" : "False" ;
        $data['vendor_details']->ohsasa18001 = $data['vendor_details']->ohsasa18001 == 1 ? "True" : "False" ;
        $data['vendor_details']->other = $data['vendor_details']->other == 1 ? "True" : "False" ;
        $data['vendor_details']->is_relative_working_uwob = $data['vendor_details']->is_relative_working_uwob == 1 ? "YES" : "NO" ;

        
        if($data['vendor_details']->range_of_products != null && $data['vendor_details']->range_of_products != 0 && $data['vendor_details']->range_of_products != ''){

            $product = $this->Vendor_model->check_by(array('id' => $data['vendor_details']->range_of_products), 'tbl_range_of_product');
            $data['vendor_details']->range_of_products = $product->name;
        } else {
            $data['vendor_details']->range_of_products = "";
        }

        $data['subview'] = $this->load->view('admin/vendor/vendor_details', $data, TRUE);
        $this->load->view('admin/_layout_main', $data);
    }

    public function approve_vendor($id, $bulk = null)
    {
         
        $this->Vendor_model->_table_name = 'tbl_vendor';
        $this->Vendor_model->_primary_key = 'id';

        $data = $this->Vendor_model->array_from_post(array('approve_status'));
        $data['approve_status'] = 2;
        $return_id = $this->Vendor_model->save($data, $id);
        $message = "Vendor Approved successfully";
        set_message('success', $message);
        redirect('admin/vendor/vendor');
    }
    public function reject_vendor($id, $bulk = null)
    {
         
        $this->Vendor_model->_table_name = 'tbl_vendor';
        $this->Vendor_model->_primary_key = 'id';

        $data = $this->Vendor_model->array_from_post(array('approve_status'));
        $data['approve_status'] = 3;
        $return_id = $this->Vendor_model->save($data, $id);
        $message = "Vendor Rejected successfully";
        set_message('success', $message);
        redirect('admin/vendor/vendor');
    }

    public function save_vendor($id = NULL)
    {
        $this->Vendor_model->_table_name = 'tbl_vendor';
        $this->Vendor_model->_primary_key = 'id';

        $data = $this->Vendor_model->array_from_post(array('vendor_name','company_name', 'work_address', 'office_address', 'type_of_concern_id', 'contact_person', 'designation', 'mobile', 'telephone', 'email', 'week_of', 'vendor_status', 'remark', 'bussiness_activity_id', 'pancard', 'gstin', 'iso9001', 'iso140011', 'ohsasa18001', 'other', 'iso9001m', 'iso140011m', 'ohsasa18001m', 'otherm', 'is_relative_working_uwob', 'name', 'designationi', 'date', 'sign_with_seal', 'range_of_products','approve_status'));
        
        
        $config['upload_path']   = './uploads/vendor/'; 
        //$config['upload_path'] = './uploads/temp/';
            $config['allowed_types'] = '*';
            $config['max_size'] = '90000';
            $config['overwrite'] = TRUE;


        $this->load->library('upload', $config);
            
         
        if (!empty($_FILES['iso9001m'])) {
            if ($this->upload->do_upload('iso9001m')) {
                 $data['iso9001m'] = $_FILES['iso9001m']['name'];
             } 
           
        }
        if (!empty($_FILES['iso140011m'])) {
            if ($this->upload->do_upload('iso140011m')) {
                 $data['iso140011m'] = $_FILES['iso140011m']['name'];
             } 
        }
        if (!empty($_FILES['ohsasa18001m'])) {
            if ($this->upload->do_upload('ohsasa18001m')) {
                 $data['ohsasa18001m'] = $_FILES['ohsasa18001m']['name'];
             }
        }
        if (!empty($_FILES['otherm'])) {
            if ($this->upload->do_upload('otherm')) {
                 $data['otherm'] = $_FILES['otherm']['name'];
             } 
        }
        if (!empty($_FILES['sign_with_seal'])) {
            if ($this->upload->do_upload('sign_with_seal')) {
                 $data['sign_with_seal'] = $_FILES['sign_with_seal']['name'];
             } 
        }
            
        $data['approve_status'] = 1;
        // update root category
        $where = array('email' => $data['email']);
        // duplicate value check in DB

        if (!empty($id)) { // if id exist in db update data
            $VendorId = array('id !=' => $id);
        } else { // if id is not exist then set id as null
            $VendorId = null;
        }

        // check whether this input data already exist or not
        $check_vendor = $this->Vendor_model->check_update('tbl_vendor', $where, $VendorId);

        if (!empty($check_vendor)) { // if input data already exist show error alert
            // massage for user
            $type = 'error';
            $msg = "<strong style='color:#000'>" . $data['email'] . '</strong>  ' . lang('already_exist');
        } else { // save and update query
            //echo "<pre>";print_r($data);die;
            $return_id = $this->Vendor_model->save($data, $id);
            //echo $this->db->last_query();die;
            if (!empty($id)) {
                $id = $id;
                $msg = "Vendor updated successfully";
            } else {
                $id = $return_id;
                $msg = "Vendor added successfully";
            }
            save_custom_field(8, $id);

            // messages for user
            $type = "success";
        }

        $message = $msg;
        set_message($type, $message);
        redirect('admin/vendor/vendor');

    }

    public function delete_vendor($id, $bulk = null)
    {
        $deleted = can_action('165', 'deleted');
        if (!empty($deleted)) {
            
            $this->Vendor_model->_table_name = 'tbl_vendor';
            $this->Vendor_model->_primary_key = 'id';
            $this->Vendor_model->delete($id);
            $type = 'success';
            $message = "Vendor deleted successfully.";
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
                $result[] = $this->delete_vendor($id, true);
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

    public function vendorlist($type = null){
    {
        if ($this->input->is_ajax_request()) {
            $this->load->model('datatables');
            $this->datatables->table = 'tbl_vendor';
            $custom_field = 0;
            $main_column = array('company_name', 'work_address', 'office_address', 'type_of_concern_id', 'contact_person', 'designation', 'mobile', 'telephone', 'email', 'week_of', 'vendor_status', 'remark', 'bussiness_activity_id', 'pancard', 'gstin', 'iso9001', 'iso140011', 'ohsasa18001', 'other', 'iso9001m', 'iso140011m', 'ohsasa18001m', 'otherm', 'is_relative_working_uwob', 'name', 'designationi', 'date', 'sign_with_seal', 'range_of_products','approve_status');
            $action_array = array('id');
            $result = array_merge($main_column, $custom_field, $action_array);
             $this->datatables->column_order = array('company_name', 'work_address', 'office_address', 'type_of_concern_id', 'contact_person', 'designation', 'mobile', 'telephone', 'email', 'week_of', 'vendor_status', 'remark', 'bussiness_activity_id', 'pancard', 'gstin', 'iso9001', 'iso140011', 'ohsasa18001', 'other', 'iso9001m', 'iso140011m', 'ohsasa18001m', 'otherm', 'is_relative_working_uwob', 'name', 'designationi', 'date', 'sign_with_seal', 'range_of_products','approve_status');
            $this->datatables->column_search = array('company_name', 'work_address', 'office_address', 'type_of_concern_id', 'contact_person', 'designation', 'mobile', 'telephone', 'email', 'week_of', 'vendor_status', 'remark', 'bussiness_activity_id', 'pancard', 'gstin', 'iso9001', 'iso140011', 'ohsasa18001', 'other', 'iso9001m', 'iso140011m', 'ohsasa18001m', 'otherm', 'is_relative_working_uwob', 'name', 'designationi', 'date', 'sign_with_seal', 'range_of_products','approve_status');
            $this->datatables->order = array('id' => 'desc');

            $fetch_data = $this->datatables->get_datatable_permission();

            $data = array();

            $edited = can_action('165', 'edited');
            $deleted = can_action('165', 'deleted');
            foreach ($fetch_data as $_key => $Vendor) {
                $action = null;
                $can_edit = $this->Vendor_model->can_action('tbl_vendor', 'edit', array('id' => $Vendor->id));
                $can_delete = $this->Vendor_model->can_action('tbl_vendor', 'delete', array('id' => $Vendor->id));

                

                $sub_array = array();

                $vendor_name = null;
                $vendor_name .= '<strong class="block">' . $Vendor->vendor_name . '</strong>';

                
                if (!empty($deleted)) {
                    $sub_array[] = '<div class="checkbox c-checkbox" ><label class="needsclick"> <input value="' . $Vendor->id . '" type="checkbox"><span class="fa fa-check"></span></label></div>';
                }
                if($Vendor->approve_status == 3){
                    $Vendor->approve_status = "Rejected";
                } elseif ($Vendor->approve_status == 2) {
                    $Vendor->approve_status = "Approved";
                } else {
                    $Vendor->approve_status = "Pending";
                }
                $sub_array[] = $vendor_name;
                $sub_array[] = $Vendor->company_name;
                $sub_array[] = $Vendor->designation;
                $sub_array[] = $Vendor->email;
                $sub_array[] = $Vendor->mobile;
                $sub_array[] = $Vendor->approve_status;

                
                $custom_form_table = custom_form_table(8, $Vendor->id);

                if (!empty($custom_form_table)) {
                    foreach ($custom_form_table as $c_label => $v_fields) {
                        $sub_array[] = $v_fields;
                    }
                }
                
                if (!empty($can_edit) && !empty($edited)) {
                    $action .= btn_edit('admin/vendor/vendor/' . $Vendor->id) . ' ';
                }
                if (!empty($can_delete) && !empty($deleted)) {
                    $action .= ajax_anchor(base_url("admin/vendor/delete_vendor/$Vendor->id"), "<i class='btn btn-xs btn-danger fa fa-trash-o'></i>", array("class" => "", "title" => lang('delete'), "data-fade-out-on-success" => "#table_" . $_key)) . ' ';
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