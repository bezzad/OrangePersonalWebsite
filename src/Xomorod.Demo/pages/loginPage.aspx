<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="Xomorod.Demo.pages.loginPage" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Xomorod web site login form" />
    <meta name="keywords" content="xomorod, zoomorod, zomorod, login, form" />
    <meta name="author" content="Vincent Garreau" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="shortcut icon" href="../images/favicon.jpg">
    <title>Login</title>

    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">

    <!-- trianglify js and css -->
    <link href="../css/login/trianglify.css" rel="stylesheet" />
    <script src="../js/local_resources/trianglify-0.4.0.min.js"></script>

    <!-- particles style CSS -->
    <link rel="stylesheet" media="screen" href="../css/login/particles/style.css">

    <!-- login form css -->
    <link href="../css/login/login.css" rel="stylesheet" />


    

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

    <%--<script src="../js/login/loginForm.js"></script>--%>
</head>
<body>

    <!-- Trianglify container -->
    <canvas id="headerCanvas"></canvas>
    <script src="../js/login/trianglifyCreator.js"></script>

    <!-- particles.js container -->
    <div id="particles-js"></div>
    <!-- particles scripts -->
    <script src="../js/local_resources/particles-2.0.0.min.js"></script>
    <script src="../js/login/particles/app.js"></script>

    <!-- login form container -->
    <div class="container">

        <div id="loginbox" class="mainbox col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">

            <div class="row">
                <div class="iconmelon">
                    <object data="../images/xomorod.svg" type="image/svg+xml" id="svg-logo"></object>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title text-center">Xomorod</div>
                </div>

                <div class="panel-body">

                    <form name="form" id="form" class="form-horizontal" enctype="multipart/form-data" method="POST">

                        <div class="has-success has-feedback col-sm-12">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input id="user" type="text" class="form-control" name="user" value="" placeholder="Username">
                            </div>
                            <span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
                        </div>

                        <div class="has-error has-feedback col-sm-12">
                            <div class="input-group ">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input id="password" type="password" class="form-control" name="password" placeholder="Password">
                            </div>
                            <span class="glyphicon glyphicon-remove  form-control-feedback" aria-hidden="true"></span>
                            <span class="help-inline error" style="margin: 10px; font-size: 1.5em; display: block">Something may have gone wrong</span>
                        </div>

                        <div class="form-group">
                            <!-- Button -->
                            <div class="col-sm-12 controls">
                                <button id="btn-sign-up" href="#" class="btn btn-primary pull-left"><i class="glyphicon glyphicon-user btn-gly"></i>Signup</button>
                                <button type="submit" id="btn-submit" href="#" class="btn btn-primary pull-right"><i class="glyphicon glyphicon-log-in btn-gly"></i>Login</button>
                            </div>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>

</body>
</html>
