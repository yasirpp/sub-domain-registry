<%-- 
    Document   : login
    Created on : 7 Jul, 2016, 10:06:12 AM
    Author     : yaser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Premiumco.co | Log in</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.5 -->
        <link rel="stylesheet" href="theme/bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="theme/dist/css/AdminLTE.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="theme/plugins/iCheck/square/blue.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="hold-transition login-page">
        <div class="login-box">
            <div class="login-logo">
                <a href="../../index2.html"><b>Premiumco.co </b>Login</a>
            </div><!-- /.login-logo -->

            <div class="login-box-body">
                <s:property value="errorMessage" />
                <p>Sign in to start</p>
                <!--<form action="index2.html" method="post">-->
                <form action="validate_login" name="login_form" id="login_form" method="post">
                    <!--                    <div class="form-group has-feedback">
                                            <input type="text" class="form-control" id="user_name" name="user_name" placeholder="Username">
                                            <span class="glyphicon glyphicon-book form-control-feedback"></span>
                                        </div>-->
                    <div class="form-group has-feedback">
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                        <span class="glyphicon glyphicon-book form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="row">
                        <div class="col-xs-4 pull-right">
                            <input type="submit" name="submit" class="btn btn-primary btn-block btn-flat" value="Sign In">
                        </div><!-- /.col -->
                    </div>
                </form>

                <!-- comment by yasir
                <div class="social-auth-links text-center">
                  <p>- OR -</p>
                  <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using Facebook</a>
                  <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using Google+</a>
                </div><!-- /.social-auth-links -->


                <a href="javascript:viewResetPasswordDiv();">I forgot my password</a><br>
                <div class="row" id="email_reset_div" style="display: none">
                    <div class="col-sm-12">
                        <p>We will send your password to your email</p>
                        <input type="text" name="reset_email" id="reset_email" class="col-sm-8" placeholder="Email your email"/>
                        <input type="button" name="email_pass" id="email_pass" class="col-sm-offset-1 col-sm-3" value="Send"/>
                    </div><!-- /.col -->
                </div><br>
                <a href="" class="text-center">Register a new membership</a>

            </div><!-- /.login-box-body -->
        </div><!-- /.login-box -->

        <!-- jQuery 2.1.4 -->
        <script src="theme/plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <!-- Bootstrap 3.3.5 -->
        <script src="theme/bootstrap/js/bootstrap.min.js"></script>
        <!-- iCheck -->
        <script src="theme/plugins/iCheck/icheck.min.js"></script>
        <script>
            $(function () {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' // optional
                });
            });

            function viewResetPasswordDiv() {
                $("#email_reset_div").show();
            }
        </script>
    </body>
</html>

