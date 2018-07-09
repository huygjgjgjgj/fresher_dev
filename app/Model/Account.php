<?php
App::uses('AppModel', 'Model');
/**
 * Account Model
 *
 * @property Order $Order
 */
class Account extends AppModel {

    public $useTable = 'accounts';
    function checklogin($username, $password){
        return $this->find('all',array('conditions' => array('username'=>$username, 'password'=>$password)));
    }


	// The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * hasMany associations
 *
 * @var array
 */
	public $hasMany = array(
		'Order' => array(
			'className' => 'Order',
			'foreignKey' => 'account_id',
			'dependent' => false,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => ''
		)
	);

}
