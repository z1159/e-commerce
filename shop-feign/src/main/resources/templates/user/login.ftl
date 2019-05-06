<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
</head>
<body>
    <center>
                管理员登录
        <form id="login-form">
            用户名<input name="user.userName" id="userName" /><span id="msg"></span><br>
            密码<input name="user.userPass" id="userPass"/><br/>
            <input type="button" value="登录" onClick="loginUser()"/>
        </form>
    </center>
</body>

<script type="text/javascript">
    function loginUser() {
        $.get("loginUser", $("#login-form").serialize(), function(data) {
            if (data == 'success') {
                data.msg(data);
                alert("登录成功！");
//                location.href = "toIndex";
            } else {
                alert("登录失败");
            }
        });
    }
</script>

</html>