<?php
App::uses('AppModel', 'Model');
/**
 * Created by PhpStorm.
 * User: Staff
 * Date: 06/07/2018
 * Time: 09:50
 */

class OrderDetail extends AppModel
{
    public $useTable = 'order_details';

    public $validate = array(
        'product_name' => array(
            'rule1' => array(
                'rule' => 'notBlank',
                'message' => 'Chưa điền tên sản phẩm'
            ),
            'rule2' => array(
                'rule' => array('minLength' , 6),
                'message' => 'Tên sản phẩm phải trên 5 ký tự'
            ),
        ),
        'amount' => array(
            'rule1' => array(
                'rule' => 'notBlank',
                'message' => 'Chưa có giá tiền'
            ),
            'rule2' => array(
                'rule' => 'numeric',
                'message' => 'Số tiền phải là số'
            ),
            'rule3' => array(
                'rule' => array('minlength', 0 ),
                'message' => 'Số tiền không được nhỏ hơn 0'
            ),
            'rule4' => array(
                'rule' => array('maxlength', 1000000000 ),
                'message' => 'Số tiền không được lớn hơn 1000000000'
            )
        ),
        'quantity' =>array(
            'rule1' => array(
                'rule' => 'notBlank',
                'message' => 'Chưa có giá tiền'
            ),
            'rule2' => array(
                'rule' => 'numeric',
                'message' => 'Số tiền phải là số'
            ),
            'rule3' => array(
                'rule' => array('minlength', 0 ),
                'message' => 'Số tiền không được nhỏ hơn 0'
            ),
            'rule4' => array(
                'rule' => array('maxlength', 100),
                'message' => 'Số tiền không được lớn hơn 100'
            )
        )
    );
}