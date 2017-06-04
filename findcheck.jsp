<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.net.*" %>
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
<title>查找密码check</title>
</head>
<body>
<%
String username= request.getParameter("username");  
String find= request.getParameter("find");
String find1=request.getParameter("find1");
String sql=null;
String sql1=null;
String password=null;
String n=null;
String driver = "com.mysql.jdbc.Driver";    
String url = "jdbc:mysql://localhost:3306/system";    
String use = "root";     
String password0 = "0598"; 
Class.forName(driver); 
Connection conn= DriverManager.getConnection(url,use,password0);
 sql=("select * from userinfo where username='"+username+"' and find='"+ find+"' and find1='"+find1+"';");  
 Statement stmt = conn.createStatement(); 
ResultSet rs=stmt.executeQuery(sql);  
if(rs.next())
{
      sql1=("select * from account where username='"+ username +"';");  
      Statement stmt1 = conn.createStatement(); 
      ResultSet rs1=stmt1.executeQuery(sql1);
	try{
		while(rs1.next())
		{
			password=rs1.getString("password");
		}
	}catch(SQLException e){
		System.out.println(rs1);
	}
	 %><script language="javascript">
	    alert("你的密码是：<%=password%>。请记好，妥善保管");
	    </script>
	    <% 
	    response.setHeader("refresh","0; URL=find.jsp");
}
else
{
	%>
	<script language="javascript">
    alert("密保错误，请重新输入")
    </script>
    <% 
    response.setHeader("refresh","0; URL=find.jsp");
}
%>
</body>
</html>