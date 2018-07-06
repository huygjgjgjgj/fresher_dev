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

</div>
</body>
</html>