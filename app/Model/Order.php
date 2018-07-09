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
    public $useTable = 'orders';

    public $validate = array(
        'order_code' => array(
            'rule1' => array(
                'rule' => 'notBlank',
                'message' => 'Mã đơn hàng ko được để trống'
            ),
            'rule2' => array(
                'rule' => '/^[a-z0-9]{6,6}$/i',
                'message' => 'Mã đơn hàng gồm 6 ký tự và ko có ký tự đặc biệt'
            ),
        )
    );

    public $hasMany = array(
        'Order_detail' => array(
            'className' => 'Order_detail',
            'foreignKey' => 'order_id',
        )
    );

    public  $belongsTo = array(
        'Account' => array(
            'className' => 'Account',
            'foreignKey' => 'account_id'
        )
    );
}