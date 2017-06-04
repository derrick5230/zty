 <%@ page import="java.net.*" %>
    <%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 

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
  <li role="presentation"><a href="jiaoshi.jsp">教室	信息</a></li>
  <li role="presentation"><a href="about.jsp">关于</a></li>
</ul>
<form id="form1" name="form1" method="post" action="jiaoshicheck.jsp" target="_blank">
 <center>
   <div class="input-group">
     <p>&nbsp;</p>
     <p><span class="input-group-addon" align="center">选择借用时间：</span>
       <input type="date" class="form-control"name="date" style="width:150px; height:30px;" align="center" aria-describedby="basic-addon1">
          </p>
   </div>
<div align="center">
  <p>请选择借用教室类型：</p>
  </div>
<p>
  <select name="cm" align="center">
    <option value="classroom">教室</option>
    <option value="meetingroom">会议室</option>
  </select>
</p>
<div align="center">
  <p>请选择借用教室容量:</p>
  </div>
<p>
  <select name="content" align="center">
    <option value="30">30人</option>
    <option value="60">60人</option>
  </select>
</p>
<div align="center">
  <p>请选择借用教室时间段：</p>
  </div>
<p>
  <select name="s_time" align="center">
    <option value="08:00:00">8:00-9:35</option>
    <option value="09:50:00">9:55-11:30</option>
    <option value="13:30:00">13:30-15:05</option>
    <option value="15:20:00">15:20-16:55</option>
    <option value="17:10:00">17:10-18:45</option>
    <option value="19:30:00">19:30-21:05</option>
    <option value="21:10:00">21:10-23:30</option>
  </select>
</p>
<div>
    <p><input  class="btn btn-lg btn-success" type="submit" name="Submit" target="_blank"   value="查询可借用教室"></a>    </p>
    </div> 
</center>
</body>
</html>