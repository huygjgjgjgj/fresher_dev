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
    public $uses = array('Order','OrderDetail');

    public function showOrder(){
        if($this->Session->check("session")) {//kiểm tra có session hay không
            $session = $this->Session->read('session');
            foreach ($session as $sess){
                $session_id = $sess['Account']['id'];
                $session_username = $sess['Account']['username'];
                $this->set('name',$session_username);

                $order = $this->Order->find('all', array(
                    'order' => array('created_date' => 'asc'),
                    'fields' => array('Account.username','Order.order_code'),
                    'conditions' => array('account_id' => $session_id)
                ));
//            echo "<pre>";print_r($order);die;
                $this->set('orders', $order);
            }
        }else{
            $this->redirect(array('controller' => 'accounts','action' => 'index'));
        }
        $this->addOrder();
    }

    public function logout(){
        $this->Session->delete('session');
        $this->redirect(array('controller' => 'accounts','action' => 'index'));
    }

    public function addOrder(){
        $data = array();
        $errors = array();

        if ($this->request->is('post')) {
            $data = $this->request->data;

            $this->Order->set($data['Order']);
            if(!$this->Order->validates()){
                $errors['Order'] = $this->Order->validationErrors;
            }

            $this->OrderDetail->set($data['OrderDetail']);
            if(!$this->OrderDetail->validates()){
                $errors['OrderDetail'] = $this->OrderDetail->validationErrors;
            }
            if(empty($errors)) {
                if ($this->Session->check('session')) {
                    $session = $this->Session->read('session');
                    foreach ($session as $sess) {
                        $data['Order']['account_id'] = $sess['Account']['id'];
                        $this->Order->save($data['Order']);
                        $order = $this->Order->find('first',array('order' => array('Order.id' => 'desc')));
                        $data['OrderDetail']['order_id'] = $order['Order']['id'];
                        $this->OrderDetail->save($data['OrderDetail']);

                        return $this->redirect('/');
                    }
                }
            }else{

            }
        }
        $this->set(compact('data','errors'));
    }

    public function editOrder(){

    }

    public function delOrder(){

    }

}