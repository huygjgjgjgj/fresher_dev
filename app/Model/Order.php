<?php
App::uses('AppModel', 'Model');
/**
 * Created by PhpStorm.
 * User: Staff
 * Date: 06/07/2018
 * Time: 09:40
 */

class Order extends AppModel
{
    public $name = 'orders';

    public $hasMany = array(
        'Order_detail' => array(
            'className' => 'Order_detail',
            'foreignKey' => 'order_id',
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

    public  $belongsTo = array(
        'Account' => array(
            'className' => 'Account',
            'foreignKey' => 'account_id'
        )
    );

    public function showorder(){
        return $this->find('all',array(
            'fields' => array('order_code'),
            'order' => array('created_date' => 'asc'),
            'contain'=> array(
                'Order_detail'=>array(
                    'id','product_name', 'amount', 'quantity', 'status ',
                ),
                'Account' => array(
                    'id','role'
                )
            )
        ));
    }
}