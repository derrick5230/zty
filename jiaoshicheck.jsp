 <%@ page import="java.net.*" %>
    <%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%> 
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.net.URLDecoder" %>
<%
   // 编码，解决中文乱码   
   String str = URLEncoder.encode(request.getParameter("date"),"utf-8");  
String str1 = URLEncoder.encode(request.getParameter("cm"),"utf-8");
String str2 = URLEncoder.encode(request.getParameter("content"),"utf-8");
String str3 = URLEncoder.encode(request.getParameter("s_time"),"utf-8");
   // 设置 name 和 url cookie 
   Cookie date1 = new Cookie("date",str);
   Cookie cm1 = new Cookie("cm",str1);
   Cookie content1 = new Cookie("content",str2);
   Cookie s_time1 = new Cookie("s_time",str3);
   // 设置cookie过期时间为24小时。
   date1.setMaxAge(60*60*24); 
   cm1.setMaxAge(60*60*24);
   content1.setMaxAge(60*60*24);
   s_time1.setMaxAge(60*60*24);
   // 在响应头部添加cookie
   response.addCookie( date1 );
   response.addCookie( cm1 );
   response.addCookie( content1 );
   response.addCookie( s_time1 );
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>可用教室信息</title>
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
<form id="form1" name="form1" method="post" action="jieyong.jsp">
<%
String date= request.getParameter("date");  
String cm= request.getParameter("cm");
String content=request.getParameter("content");
String s_time=request.getParameter("s_time");
String position=null;
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
ArrayList list=new ArrayList();
while(rs.next())
{
	list.add(rs.getString("position"));
}
rs.close();
%>
<center><font style="font-size: 40pt; filter: shadow(color=#9370db); width: 100%; color: #ffebcd; line-height: 150%; font-family: 隶书">符合条件的教室：</b></font></center>
<%for(int i=list.size()-1;i>=0;i--)
{ %>
 <center>
<div class="alert alert-success" role="alert"> 
<div align="center">可用教室：<%=list.get(i) %></div>
 </div>

<%} %>
请输入借用教室：<input type="text" name="position">
请输入借用理由：<input type="text" name="reason">
<input type="submit" name="Submit"   value="借用" class="btn btn-info btn-xs">
<div>
    <p><a class="btn btn-lg btn-success" target="_self"   onclick="javascript:window.close()" role="button">关闭</a>    </p>
    </div> 
    </center>
     
</body>
</html>