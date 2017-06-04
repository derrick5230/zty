<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
<title>会议室教室预约系统主界面</title>
<style type="text/css">
<!--
body {
	background-image: url(images/140611102413-1.jpg);
	background-repeat: repeat;
}
body,td,th {
	font-size: small;
}
.STYLE2 {color: #000000}
-->
</style></head>

<body>

<div align="right"><a href="denglujiemian.jsp" target="_self" class="STYLE10 STYLE2 charset="UTF-8">退出登录</a></div>
<div align="left"><span class="STYLE6">欢迎你亲爱的用户</span>
  </div>
<% 
String username=null;
Cookie cookie = null;
Cookie[]   cookiea= request.getCookies();
for (int i = 1; i < cookiea.length; i++)
{
	  cookie = cookiea[i];

if(cookie.getName().equals("username"))
{
	  username=cookie.getValue();
	  out.println(cookie.getValue());
break;
}
}
%>

<ul class="nav nav-tabs">
  <li role="presentation" class="active"><a href="#">教室预约系统</a></li>
  <li role="presentation"><a href="zhujiemian.jsp">个人信息</a></li>
  <li role="presentation"><a href="jiaoshi.jsp">教室信息</a></li>
  <li role="presentation"><a href="about.jsp">关于</a></li>
</ul>
<div class="alert alert-success" role="alert">该系统由郑天宇开发完成，不经同意不得私自营利使用</div>
<div class="alert alert-info" role="alert">该系统用于北京科技大学机电楼教室借用</div>
<div class="alert alert-warning" role="alert">该系统完成与2017年6月</div>
<div class="alert alert-danger" role="alert">如果有任何意见或者建议请发送邮件到：372801474@qq。com或者电话联系：18813176126</div>
</body>
</html>
