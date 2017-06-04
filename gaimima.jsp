<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="zh-CN">
  <head>
  <body style="background:url('images/140611102413-1.jpg') no-repeat;">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>修改密码</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

   <center>
<form id="form1" name="form1" method="post" action="gaimimacheck.jsp">
    <div class="container">

      <form class="form-signin">
        <h2 class="form-signin-heading">修改密码</h2>

 
      原密码： <input type="password" name="password" style="width:200px; height:30px;" class="form-control"placeholder="Old Password"  required>
        
       新密码： <input type="password" name="password1" style="width:200px; height:30px;" class="form-control" placeholder="New Password" required>
 
     确认密码： <input type="password" name="password2" style="width:200px; height:30px;" class="form-control"placeholder="New Password"  required>
        <button class="btn btn-lg btn-primary btn-block" style="width:150px; height:50px;" type="submit">确认修改</button>
      
      </form>
      
    </div>
    <div>
    <p><a class="btn btn-lg btn-success" target="_self"   onclick="javascript:window.close()" role="button">关闭</a>    </p>
    </div> 
    </center>
     <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
