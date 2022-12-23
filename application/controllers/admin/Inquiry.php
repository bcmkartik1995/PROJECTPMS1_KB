<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Inquiry extends Admin_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('inquiry_model');

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

    public function inquiry_list($id = NULL, $opt = null)
    {
        echo '2.........';
        die;

 
    }
}


?>