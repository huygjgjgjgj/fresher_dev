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

            $Account = $this->Account->checkLogin($username,$password);

            if($Account) {
//                foreach ($Account as $ac){
//                    $id = $ac['Account']['id'];
//                    $username = $ac['Account']['username'];
//                    $this->Session->write("session_id", $id);
//                    $this->Session->write("session_username", $username);
//                }
                $this->Session->write('session',$Account);
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
