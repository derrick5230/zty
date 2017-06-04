<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
  <!-- 引入 Bootstrap -->
      <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 
      <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
      <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
      <!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>会议室教室预约系统</title>
<style type="text/css">
<!--
body {
	background-image: url(images/5343a59948d5b903d61fa593.jpg);
}
.STYLE2 {
	color: #009999;
	font-size: 36px;
}
.STYLE3 {color: #000000}
.STYLE5 {
	color: #0000FF;
	font-size: 18px;
}
.STYLE6 {color: #FFFFFF}
.STYLE9 {color: #FFFFFF; font-size: 18px; }
.STYLE10 {color: #000000; font-size: 24px; }
-->
</style></head>
<body>
 <div align="right"><span class="STYLE6">建议意见投递邮箱：372801474@qq.com</span>
  </div>
<h1 align="center" class="STYLE2">教室预约系统 
</h1>
<form id="form1" name="form1" method="post" action="check.jsp">
<p align="center"><span class="STYLE9">学号</span>
 <abbr title="请输入8位数学号!">
   <label>  
  <input type="text" name="username" />  
  </label>  
  </abbr>
</p>
  
<p align="center"><span class="STYLE9">密码</span>
<abbr title="请输入6位数密码!">
<input type="password" name="password" /></abbr>

  <p align="center">
    <label>     
    <div align="center">
      <div align="center">
        <span class="STYLE6">
        <input type="radio" name="jurisdiction" value="0" />
        用户</span>
        <span class="STYLE6">
      <input type="radio" name="jurisdiction" value="1" />
  管理员</span>      </div>
</form>
<p align="center">
 <label>  
    <input type="submit" name="Submit" value="登录" />  
    </label>  
 <div>
  <p align="center"><a href="find.jsp" target="_blank" > 忘记密码</a> </p>
</div>
<div>  <p align="center"><a href="zhuce.jsp" target="_blank" > 注册</a> </p></div>



</body>
</html>
