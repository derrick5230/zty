 <%@ page import="java.net.*" %>
    <%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%> 
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.net.URLDecoder" %> 
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
 <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Fancy 3D-Button" />
        <meta name="keywords" content="" />
        <meta name="author" content="" />
       
		
<style>
		a.button {
			position: relative;
			color: rgba(255,255,255,1);
			text-decoration: none;
			background-color: rgba(219,87,5,1);
			font-family: 'Yanone Kaffeesatz';
			font-weight: 700;
			font-size: 3em;
			display: block;
			padding: 4px;
			-webkit-border-radius: 8px;
			-moz-border-radius: 8px;
			border-radius: 8px;
			-webkit-box-shadow: 0px 9px 0px rgba(219,31,5,1), 0px 9px 25px rgba(0,0,0,.7);
			-moz-box-shadow: 0px 9px 0px rgba(219,31,5,1), 0px 9px 25px rgba(0,0,0,.7);
			box-shadow: 0px 9px 0px rgba(219,31,5,1), 0px 9px 25px rgba(0,0,0,.7);
			margin: 100px auto;
			width: 160px;
			text-align: center;
			
			-webkit-transition: all .1s ease;
			-moz-transition: all .1s ease;
			-ms-transition: all .1s ease;
			-o-transition: all .1s ease;
			transition: all .1s ease;
		}

		a.button:active {
			-webkit-box-shadow: 0px 3px 0px rgba(219,31,5,1), 0px 3px 6px rgba(0,0,0,.9);
			-moz-box-shadow: 0px 3px 0px rgba(219,31,5,1), 0px 3px 6px rgba(0,0,0,.9);
			box-shadow: 0px 3px 0px rgba(219,31,5,1), 0px 3px 6px rgba(0,0,0,.9);
			position: relative;
			top: 6px;
		}
	</style>

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
	
  }
  if(cookie.getName().equals("username"))
  {
	  username=cookie.getValue();
  out.println(cookie.getValue());
  }
%>
<ul class="nav nav-tabs">
  <li role="presentation" class="active"><a href="#">教室预约系统</a></li>
  <li role="presentation"><a href="zhujiemian1.jsp">个人信息</a></li>
  <li role="presentation"><a href="jiaoshi1.jsp">教室	信息</a></li>
  <li role="presentation"><a href="guanli.jsp">管理</a></li>
</ul>
	

	<a href="shenpi.jsp" class="button" target="_blank">借用审批</a>
		<a href="yonghuguanli.jsp" class="button" target="_blank">用户管理</a>
    
</body>
</html>