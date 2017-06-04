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
<title>用户管理</title>
<style type="text/css">
<!--
body {
	background-image: url(images/29278a997fe0d7ca96c3c175a7f56d9e.jpg);
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
<h1 align="center" class="STYLE2">普通用户管理 
</h1>
<form id="form1" name="form1" method="post" action="yonghuguanlicheck.jsp">
<p align="center"><span class="STYLE9">用户账号</span>
 <abbr title="请输入8位数学号!">
   <label>  
  <input type="text" name="username" />  
  </label>  
  </abbr>
</p>
  <p align="center">
    <label>     
    <div align="center">
      <div align="center">
        <span class="STYLE6">
        <input type="radio" name="panduan" value="0" />
        查看用户信息</span>
        <span class="STYLE6">
      <input type="radio" name="panduan" value="1" />
  设为管理员</span>  
   <span class="STYLE6">   
  <input type="radio" name="panduan" value="2" />
        删除用户</span>
         </div>
</form>
<p align="center">
 <label>  
    <input type="submit" name="Submit" value="确认" />  
    </label>  


</body>
</html>
