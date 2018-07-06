<?php
App::uses('AppController', 'Controller');
/**
 * Created by PhpStorm.
 * User: Staff
 * Date: 06/07/2018
 * Time: 10:13
 */

class OrdersController extends AppController
{
    public $components = array('session');
    var $helpers = array("Html");

    public function showOrder(){
        if($this->Session->check("session")) {//kiểm tra có session hay không
            $username = $this->Session->read('session');
            $order = $this->Order->showorder();
//        echo "<pre>";print_r($order);die;
            $this->set('orders', $order);
            $this->set("name", $username);
        }else{
            $this->redirect(array('controller' => 'accounts','action' => 'index'));
        }

        $order = $this->Order->showorder();
//        echo "<pre>";print_r($order);die;
        $this->set('orders', $order);
    }

    public function logout(){
        $this->Session->delete('session');
        $this->redirect(array('controller' => 'accounts','action' => 'index'));
    }

    public function addOrder(){
        if ($this->request->is('post')) {
            $data = $this->request->data;
            echo "<pre>";print_r($data);die;
        }
    }

    public function editOrder(){
        
    }

    public function delOrder(){

    }

}