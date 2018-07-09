<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{$title}</title>

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<form class="form" id="formLogin" method="post" name="login">
    <div class="form-group userfrom" >
        <label for="User">username</label>
        <input type="text" class="form-control" id="user" name="username"  aria-describedby="userHelp" placeholder="username">
        <span id="userError"></span>
    </div>

    <div class="form-group">
        <label for="exampleInputPassword1">password</label>
        <input type="password" class="form-control" name="password" id="password" placeholder="password">
        <span id="passError"></span>
    </div>

    <div class="form-check">
        <input type="checkbox" class="form-check-label" name="save" id="save">
        <label class="form-check-label" for="exampleCheck1">save pass</label>
    </div>

    <div class="form-group">
        <a href="#" class="forgot">forgot pass</a>
    </div>

    <button type="submit" name="login" class="btn btn-primary">Login</button>
    </br>
    <span class="error" style="color: #9E2424 !important;">{$error}</span>



</form>
</body>
</html>