<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/login.css">
    <style>
        .my-form-control-feedback {
            position: absolute;
            top: 0;
            right: 0;
            z-index: 2;
            display: block;
            width: 34px;
            height: 34px;
            line-height: 34px;
            text-align: center;
            color: #3C763D;
        }
        body {
            padding-top: 70px;
            padding-bottom: 40px;
            background-color: #eee;
            background-image: url(/pics/1.jpg);
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>

<div class="container">
    <form id="doLoginForm" class="form-signin" role="form" style="margin:50px auto">
        <h2 class="form-signin-heading"><i class="glyphicon glyphicon-log-in"></i> 我爱至诚</h2>
        <div class="form-group has-success has-feedback">
            <input type="text" name="id" class="form-control" id="id" placeholder="请输入学号" autofocus>
            <span class="glyphicon glyphicon-user form-control-feedback" style="font-size: 20px;margin-right: -5px;margin-top: 6px" ></span>
        </div>
        <div id="psw" class="form-group has-success has-feedback">
            <input type="password" name="password" class="form-control" id="password" placeholder="请输入登录密码" style="margin-top:10px;">
            <span id="position" class="glyphicon glyphicon-eye-close my-form-control-feedback" style="font-size: 20px;margin-right: -5px;margin-top: 6px"></span>
        </div>
        <a class="btn btn-lg btn-success btn-block" onclick=dologin()> 登录</a>
    </form>
</div>
<script src="/jquery/jquery-2.1.1.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/jquery/layer/layer.js"></script>
<script>
    function dologin() {
        var lc = $("#id");
        var psw = $("#password");
        var loadingIndex = -1;
        if ($.trim(lc.val()) === "") {
            layer.msg("输入的账号不能为空，请重新输入", {time: 1000, icon: 0, shift: 3,offset: psw}, function () {
                lc.val("");
                lc.focus();
            });
            return false;
        }
        $.ajax({
            url: "/doLogin.do",
            type: "post",
            dataType: "json",
            data: {
                id: $("#id").val(),
                password: $("#password").val(),
            },
            beforeSend: function () {
                loadingIndex = layer.msg('正在登录...', {icon: 16,offset: psw});
                return true;
            },
            success: function (data){
                layer.close(loadingIndex);
                if (data.flag) {
                    window.location.href = "/main.html";
                } else {
                    layer.msg("账号或密码错误，请重新输入", {time: 1000, icon: 5, shift: 6, offset: psw}, function () {
                        psw.focus();
                        psw.val("");
                    });
                    return false;
                }
            }
        })}
</script>

<script>
    var flag = 0;
    console.log($("#psw span"))
    $("#position").mouseover(function () {
        $(this)[0].style.cursor = "pointer";
    });
    $("#psw span").on({
            mouseover: function () {
                $(this)[0].style.cursor = "pointer";
            },
            click: function () {
                if (flag === 0) {
                    $("#psw span").attr("class", "glyphicon glyphicon-eye-open my-form-control-feedback");
                    $("#psw input").prop("type", "text");
                    flag = 1;
                } else {
                    $("#psw span").attr("class", "glyphicon glyphicon-eye-close my-form-control-feedback");
                    $("#psw input").prop("type", "password");
                    flag = 0;
                }
            }
        }
    )

</script>
</body>
</html>