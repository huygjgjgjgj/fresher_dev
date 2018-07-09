<!DOCTYPE html>
<html lang="en">
<head>
    <title>Add Products</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</head>
<body>

<div class="container">
    <h2>Thêm mới sản phẩm</h2>
    <form class="form-horizontal" method="post">
        <div class="form-group">
            <label class="control-label col-sm-2" for="name">Tên sản phẩm *</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="name" placeholder="Nhập tên sản phẩm" name="OrderDetail[product_name]" value="{if !empty($data['OrderDetail']['product_name'])} {$data['OrderDetail']['product_name']} {/if}">
            </div>
            {if !empty($errors['OrderDetail']['product_name'])}
            <span> {$errors['OrderDetail']['product_name'][0]} </span>
            {/if}
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Giá tiền *</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" id="price" placeholder="giá bán" name="OrderDetail[amount]" value="{if !empty($data['OrderDetail']['amount'])} {$data['OrderDetail']['amount']} {/if}">
            </div>
            {if !empty($errors['OrderDetail']['amount'])}
            <span> {$errors['OrderDetail']['amount'][0]} </span>
            {/if}
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Số lượng *</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" id="quantity" placeholder="số lượng sản phẩm" name="OrderDetail[quantity]" value="{if !empty($data['OrderDetail']['quantity'])} {$data['OrderDetail']['quantity']} {/if}">
            </div>
            {if !empty($errors['OrderDetail']['quantity'])}
            <span> {$errors['OrderDetail']['quantity'][0]} </span>
            {/if}
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Mã sản phẩm *</label>
            <div class="col-sm-10">
                <input type="text" name='Order[order_code]' class="form-control" id="code" placeholder="Mã sản phẩm" value="{if !empty($data['Order']['order_code'])} {$data['Order']['order_code']} {/if}">
            </div>
            {if !empty($errors['Order']['order_code'])}
                <span> {$errors['Order']['order_code'][0]} </span>
            {/if}
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Status</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="status" placeholder="status" name="OrderDetail[status]" value="{if !empty($data['OrderDetail']['status'])} {$data['OrderDetail']['status']} {/if}">
            </div>
            {if !empty($errors['OrderDetail']['status'])}
            <span> {$errors['OrderDetail']['status'][0]} </span>
            {/if}
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Thêm mới</button>
            </div>
        </div>
    </form>

</div>

</body>
</html>
