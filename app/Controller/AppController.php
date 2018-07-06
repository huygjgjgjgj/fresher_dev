<?php
App::uses('RunHelper', 'Lib');
class AppController extends Controller {

    var $viewClass = 'Smarty';
    public $components = array('Session');
    
    public function __construct($request = null, $response = null) {
        parent::__construct($request, $response);
    }

    function beforeFilter() {
        
        }
} 

//function d($data)
//{
//    echo "<pre>";
//    print_r($data);
//}
