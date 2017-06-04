<%@ page import="java.net.*" %>
    <%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%> 
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
    <%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>取消预约</title>
</head>
<body>


<%
String cancel1=request.getParameter("cancel1");
int y;
y=Integer.valueOf(cancel1);
String[] cm1 =(String[])session.getAttribute("cm1");
String[] po1 =(String[])session.getAttribute("po1");
String[] co1 =(String[])session.getAttribute("co1");
String[] re1 =(String[])session.getAttribute("re1");
String[] da1 =(String[])session.getAttribute("da1");
String[] s1 =(String[])session.getAttribute("s1");
String[] e1 =(String[])session.getAttribute("e1");
%>
<%
String driver = "com.mysql.jdbc.Driver";    
String url = "jdbc:mysql://localhost:3306/system";    
String use = "root";     
String password0 = "0598"; 
Class.forName(driver); 
Connection conn= DriverManager.getConnection(url,use,password0);
String sql=("select * from classroom where cm='"+cm1[y]+"'and position='"+po1[y]+"'and date='"+da1[y]+"' and reason='"+re1[y]+"'and content='"+co1[y]+"'and s_time='"+s1[y]+"';");  
Statement stmt = conn.createStatement(); 
ResultSet rs=stmt.executeQuery(sql);  
if(rs.next())
{
PreparedStatement sql1 =conn.prepareStatement("Update classroom Set request1='"+0+"',answer='"+0+"',reason=null, username=null where cm='"+cm1[y]+"'and position='"+po1[y]+"'and date='"+da1[y]+"' and reason='"+re1[y]+"'and content='"+co1[y]+"'and s_time='"+s1[y]+"';");  
sql1.executeUpdate();
%>
 <script language="javascript">
    alert("成功取消")
    </script>
     <% response.setHeader("refresh","0; URL=chakan.jsp");
      }
      %>
    
</body>
</html>