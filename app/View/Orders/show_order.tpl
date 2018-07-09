<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>info</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <span class="mr-sm-2">TK : {$name}</span>
    <a href="orders/logout"><button type="submit" class="btn btn-outline-success my-2 my-sm-0">Đăng xuất</button></a>
</nav>

<div class='container'>

    <h2>Order:  </h2>

    <table class="table">
        <thead>
        <tr>
            <th>STT</th>
            <th>order_code</th>
            <th>product_name</th>
            <th>amount</th>
            <th>quantity</th>
            <th>status</th>
            <th>thao tác</th>
        </tr>
        </thead>
        {foreach $orders as $order}
            {foreach $order['Order_detail'] as $order_detail}
            <tr>
                <td>{$order_detail['id']}</td>
                <td>{$order['Order']['order_code']}</td>
                <td>{$order_detail['product_name']}</td>
                <td>{$order_detail['amount']}</td>
                <td>{$order_detail['quantity']}</td>
                <td>{$order_detail['status']}</td>
                <td>
                    <button type="submit" class="btn btn-edit">sửa</button>
                    <button type="submit" class="btn btn-del">xóa</button>
                </td>
            </tr>
            {/foreach}
        {/foreach}
    </table>
    <button type="submit" class="btn btn-block" id="show-form" onclick="load_ajax()">Thêm mới sản phẩm</button>

    <div id="addOrder" style="padding-left: 150px; margin-top: 20px;">
<!--        <h2>Thêm mới sản phẩm</h2>-->
<!--        <form class="form-horizontal" method="post" action="#">-->
<!--            <div class="form-group">-->
<!--                <label class="control-label col-sm-2" for="name">Tên sản phẩm *</label>-->
<!--                <div class="col-sm-10">-->
<!--                    <input type="text" class="form-control" id="name" placeholder="Nhập tên sản phẩm" name="OrderDetail[product_name]" value="{if !empty($data['OrderDetail']['product_name'])} {$data['OrderDetail']['product_name']} {/if}">-->
<!--                </div>-->
<!--                {if !empty($errors['OrderDetail']['product_name'])}-->
<!--                <span> {$errors['OrderDetail']['product_name'][0]} </span>-->
<!--                {/if}-->
<!--            </div>-->
<!--            <div class="form-group">-->
<!--                <label class="control-label col-sm-2" for="pwd">Giá tiền *</label>-->
<!--                <div class="col-sm-10">-->
<!--                    <input type="number" class="form-control" id="price" placeholder="giá bán" name="OrderDetail[amount]" value="{if !empty($data['OrderDetail']['amount'])} {$data['OrderDetail']['amount']} {/if}">-->
<!--                </div>-->
<!--                {if !empty($errors['OrderDetail']['amount'])}-->
<!--                <span> {$errors['OrderDetail']['amount'][0]} </span>-->
<!--                {/if}-->
<!--            </div>-->
<!--            <div class="form-group">-->
<!--                <label class="control-label col-sm-2" for="pwd">Số lượng *</label>-->
<!--                <div class="col-sm-10">-->
<!--                    <input type="number" class="form-control" id="quantity" placeholder="số lượng sản phẩm" name="OrderDetail[quantity]" value="{if !empty($data['OrderDetail']['quantity'])} {$data['OrderDetail']['quantity']} {/if}">-->
<!--                </div>-->
<!--                {if !empty($errors['OrderDetail']['quantity'])}-->
<!--                <span> {$errors['OrderDetail']['quantity'][0]} </span>-->
<!--                {/if}-->
<!--            </div>-->
<!--            <div class="form-group">-->
<!--                <label class="control-label col-sm-2" for="pwd">Mã sản phẩm *</label>-->
<!--                <div class="col-sm-10">-->
<!--                    <input type="text" name='Order[order_code]' class="form-control" id="code" placeholder="Mã sản phẩm" value="{if !empty($data['Order']['order_code'])} {$data['Order']['order_code']} {/if}">-->
<!--                </div>-->
<!--                {if !empty($errors['Order']['order_code'])}-->
<!--                <span> {$errors['Order']['order_code'][0]} </span>-->
<!--                {/if}-->
<!--            </div>-->
<!--            <div class="form-group">-->
<!--                <label class="control-label col-sm-2" for="pwd">Status</label>-->
<!--                <div class="col-sm-10">-->
<!--                    <input type="text" class="form-control" id="status" placeholder="status" name="OrderDetail[status]" value="{if !empty($data['OrderDetail']['status'])} {$data['OrderDetail']['status']} {/if}">-->
<!--                </div>-->
<!--                {if !empty($errors['OrderDetail']['status'])}-->
<!--                <span> {$errors['OrderDetail']['status'][0]} </span>-->
<!--                {/if}-->
<!--            </div>-->
<!--            <div class="form-group">-->
<!--                <div class="col-sm-offset-2 col-sm-10">-->
<!--                    <button type="submit" class="btn btn-default new-product">Thêm mới</button>-->
<!--                </div>-->
<!--            </div>-->
<!---->
<!--        </form>-->
    </div>
</div>
<script type="text/javascript">
    // $(document).ready(function(){
    //     $('#show-form').click(function(){
    //         $('.addOrder').toggleClass('active');
    //     });
    // });
    function load_ajax() {
        $.ajax({
            url : "orders/addOrder",
            type : 'GET',
            dataType : 'html',
            data : {

            },
            success : function (addOrder) {
                console.log(addOrder);
                $('#addOrder').html(addOrder);
            }
        });
    }
</script>

</body>
</html>