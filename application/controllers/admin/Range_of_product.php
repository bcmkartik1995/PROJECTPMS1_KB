<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Range_of_product extends Admin_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('range_of_product_model');

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
        echo '1.......';
        die;
 
    }
}


?>