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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>改密码check	</title>
</head>
<body>
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
<%
String password= request.getParameter("password");
String password1=request.getParameter("password1");
String password2=request.getParameter("password2");
String sql=null;
String driver = "com.mysql.jdbc.Driver";    
String url = "jdbc:mysql://localhost:3306/system";    
String use = "root";     
String password0 = "0598"; 
Class.forName(driver); 
Connection conn= DriverManager.getConnection(url,use,password0);
if(!password1.equals(password2))
{
    %><script language="javascript">
    alert("两次密码不一致")
    </script>
    <% 
    response.setHeader("refresh","0; URL=gaimima.jsp");
} 
else
{
 sql=("select * from account where username="+username+" and password="+ password+"");  
Statement stmt = conn.createStatement(); 
ResultSet rs=stmt.executeQuery(sql);  
if(rs.next())
{
	PreparedStatement sql1 =conn.prepareStatement("Update account Set password='"+password1+"' where username='"+username+"';");  
	sql1.executeUpdate();
    %><script language="javascript">
    alert("修改成功")
    </script>
    <% 
    response.setHeader("refresh","0; URL=gaimima.jsp");
 }
else
{
    %><script language="javascript">
    alert("密码错误")
    </script>
    <% 
    response.setHeader("refresh","0; URL=gaimima.jsp");
} 	
}

%>
</body>
</html>