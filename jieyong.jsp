 <%@ page import="java.net.*" %>
    <%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%> 
    <%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>借用</title>
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
	background-image: url(images/140611102413-1.jpg);
	background-repeat: repeat;
}
body,td,th {
	font-size: small;
}
.STYLE2 {color: #000000}
-->
</style></head>
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
  break;
  }
  }
%>
  <% 
  String date=null;
  for (int i = 1; i < cookiea.length; i++)
  {
	  cookie = cookiea[i];
  
  if(cookie.getName().equals("date"))
  {
	  date=cookie.getValue();
  break;
  }
  }
%>
<% 
  String cm=null;
  for (int i = 1; i < cookiea.length; i++)
  {
	  cookie = cookiea[i];
  
  if(cookie.getName().equals("cm"))
  {
	  cm=cookie.getValue();
  break;
  }
  }
%>
<% 
  String content=null;
  for (int i = 1; i < cookiea.length; i++)
  {
	  cookie = cookiea[i];
  
  if(cookie.getName().equals("content"))
  {
	  content=cookie.getValue();
  break;
  }
  }
%>
<% 
  String s_time=null;
  for (int i = 1; i < cookiea.length; i++)
  {
	  cookie = cookiea[i];
  
  if(cookie.getName().equals("s_time"))
  {
	  s_time=URLDecoder.decode(cookie.getValue(), "UTF-8");
  break;
  }
  }
%>
<%
String reason= request.getParameter("reason");
String position= request.getParameter("position");
String sql=null;
String request1="0";
String driver = "com.mysql.jdbc.Driver";    
String url = "jdbc:mysql://localhost:3306/system";    
String use = "root";     
String password0 = "0598"; 
Class.forName(driver); 
Connection conn= DriverManager.getConnection(url,use,password0);
sql=("select * from classroom where date='"+date+"' and cm='"+ cm+"'and content='"+content+"'and s_time='"+ s_time+"'and request1='"+request1+"'");  
Statement stmt = conn.createStatement(); 
ResultSet rs=stmt.executeQuery(sql);  
if(rs.next())
{
	PreparedStatement sql1 =conn.prepareStatement("Update classroom Set request1='1', username='"+username+"' , reason='"+reason+"' where position='"+position+"'and date='"+date+"' and cm='"+ cm+"'and content='"+content+"'and s_time='"+ s_time+"';");  
	System.out.println(sql1);
	sql1.executeUpdate();
    %><script language="javascript">
    alert("借用成功，请等待管理员审批")
    </script>
    <% 
   response.setHeader("refresh","0; URL=jiaoshi.jsp");
}
else
{
	 %><script language="javascript">
	    alert("输入班级错误，请重新输入")
	    </script>
	    <%
	    response.setHeader("refresh","0; URL=jiaoshi.jsp");

}

rs.close();
%>

</body>
</html>