<!DOCTYPE html>
<html lang="en">
<head>
    <title>Add Products</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="..js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Thêm mới sản phẩm</h2>
    <form class="form-horizontal" action="#">
        <div class="form-group">
            <label class="control-label col-sm-2" for="name">Tên sản phẩm</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="name" placeholder="Nhập tên sản phẩm" name="product_name">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Giá tiền</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" id="price" placeholder="giá bán" name="price">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Số lượng</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" id="quantity" placeholder="số lượng sản phẩm" name="quantity">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="pwd">Mã sản phẩm</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="code" placeholder="Mã sản phẩm" name="order_code">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Submit</button>
            </div>
        </div>
    </form>
</div>

</body>
</html>
