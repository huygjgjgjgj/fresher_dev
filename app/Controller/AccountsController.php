<?php
App::uses('AppController', 'Controller');

class AccountsController extends AppController {

    public $components = array('session');
    var $helpers = array("Html");


	public function index() {
        $username = "";
        $error = "";

        if($this->request->is('post')){

            $username = $this->request->data('username');
            $password = $this->request->data('password');
            $password = md5($password);

            if($this->Account->checkLogin($username,$password)) {
                $this->Session->write("session", $username);
                $this->redirect("/");
            }else{
                $error = "Tên đăng nhập và mật khẩu không đúng";
            }

        }
        $this->set('title','Login');
        $this->set('data',$username);
        $this->set("error",$error);
	}

}
