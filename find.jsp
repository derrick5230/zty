<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!-- 引入 Bootstrap -->
      <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 
      <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
      <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
      <!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<style type="text/css">
<!--
body {
	background-image: url(images/d0ce2f384b3e7cbfcedd811e2627575b.jpg);
}
-->
</style>
<meta http-equiv="Content-Type" content="text/html; chars0et=ISO-8859-1">
<title>找回密码</title>
</head>
<body>
<form id="form1" name="form1" method="post" action="findcheck.jsp">
<h1 align="center" class="STYLE3">找回密码
</h1>
  <center>
<label for="basic-url">用户名</label>
<div class="input-group">
  <span class="input-group-addon" id="basic-addon3">请输入 用 户 名：</span>
  <input type="text" class="form-control"  name="username"  aria-describedby="basic-addon3">
</div>
<label for="basic-url">密保1</label>
<div class="input-group">
  <span class="input-group-addon" id="basic-addon3">请输入密保英文：</span>
  <input type="text" class="form-control"  name="find"  aria-describedby="basic-addon3">
</div>
<label for="basic-url">密保2</label>
<div class="input-group" align="center">
  <span class="input-group-addon" id="basic-addon3">请输入密保数字：</span>
  <input type="text" class="form-control" name="find1" aria-describedby="basic-addon3">
</div>
</center>
<p align="center">
 <label>  
    <input class="btn btn-primary btn-lg" type="submit" name="Submit" value="查询密码" />  
   </label>   </p>
   </form>
</body>
</html>