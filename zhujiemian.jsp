 <%@ page import="java.net.*" %>
    <%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%>  

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
</td>
<ul class="nav nav-tabs">
  <li role="presentation" class="active"><a href="#">教室预约系统</a></li>
  <li role="presentation"><a href="zhujiemian.jsp">个人信息</a></li>
  <li role="presentation"><a href="jiaoshi.jsp">教室	信息</a></li>
  <li role="presentation"><a href="about.jsp">关于</a></li>
</ul>

 <%   
    String driver = "com.mysql.jdbc.Driver";    
    String url = "jdbc:mysql://localhost:3306/system";    
    String use = "root";     
    String password = "0598";  

	String  password1=null;
	String name1=null;
	String  class1=null;
	String college=null;
	String nativeplace=null;
	String telephone=null;
	String sex=null;
    Class.forName(driver); 
    Connection conn= DriverManager.getConnection(url,use,password);

   // Cookie[]   cookies= request.getCookies();
    PreparedStatement sm=conn.prepareStatement("select * from userinfo where username='"+username+"';");   
    ResultSet rs=sm.executeQuery();
  
    while(rs.next())
    {
    	 username=rs.getString("username");   	
    	 name1=rs.getString("name");
    	  class1=rs.getString("class");
    	 college=rs.getString("college");
    	 nativeplace=rs.getString("nativeplace");
    	 telephone=rs.getString("telephone");
    	 sex=rs.getString("sex");
    }
    
%>
<ul class="list-group">
  <li class="list-group-item">学号:<%= username %></li>
  <li class="list-group-item">姓名:<%=name1%></li>
  <li class="list-group-item">籍贯:<%=nativeplace%></li>
  <li class="list-group-item">学院:<%=college%></li>
  <li class="list-group-item">班级:<%=class1%></li>
  <li class="list-group-item">电话:<%=telephone%></li>
  <li class="list-group-item">性别:<%=sex%></li>
</ul>
<blockquote>
  <p align="center"><a href="chakan.jsp" target="_blank" >查看借用情况</a>  </p>
</blockquote>
<blockquote>
  <p align="center"><a href="gaimima.jsp" target="_blank" >修改密码信息</a>  </p>
</blockquote>
</body>
</html>
