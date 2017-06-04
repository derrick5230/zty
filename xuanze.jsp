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
String cancel=request.getParameter("cancel");
int x;
x=Integer.valueOf(cancel);
String[] cm =(String[])session.getAttribute("cm");
String[] po =(String[])session.getAttribute("po");
String[] co =(String[])session.getAttribute("co");
String[] re =(String[])session.getAttribute("re");
String[] da =(String[])session.getAttribute("da");
String[] s =(String[])session.getAttribute("s");
String[] e =(String[])session.getAttribute("e");
String[] us =(String[])session.getAttribute("us");
String a=request.getParameter("a");
String b="disagree";
String c="agree";
%>
<%
String driver = "com.mysql.jdbc.Driver";    
String url = "jdbc:mysql://localhost:3306/system";    
String use = "root";     
String password0 = "0598"; 
Class.forName(driver); 
Connection conn= DriverManager.getConnection(url,use,password0);
if(a.equals(b))
{	
String sql=("select * from classroom where cm='"+cm[x]+"'and position='"+po[x]+"'and date='"+da[x]+"' and reason='"+re[x]+"'and content='"+co[x]+"'and s_time='"+s[x]+"';");  
Statement stmt = conn.createStatement(); 
ResultSet rs=stmt.executeQuery(sql);  
if(rs.next())
{
PreparedStatement sql1 =conn.prepareStatement("Update classroom Set request1='"+0+"',reason='"+null+"', username='"+null+"' where cm='"+cm[x]+"'and position='"+po[x]+"'and date='"+da[x]+"' and reason='"+re[x]+"'and content='"+co[x]+"'and s_time='"+s[x]+"';");  
sql1.executeUpdate();
%>
 <script language="javascript">
    alert("拒绝成功")
    </script>
     <% response.setHeader("refresh","0; URL=shenpi.jsp");
      }
      %>
<% }
else if(a.equals(c))
	{
	String sql=("select * from classroom where cm='"+cm[x]+"'and position='"+po[x]+"'and date='"+da[x]+"' and reason='"+re[x]+"'and content='"+co[x]+"'and s_time='"+s[x]+"';");  
	Statement stmt = conn.createStatement(); 
	ResultSet rs=stmt.executeQuery(sql);  
	if(rs.next())
	{
	PreparedStatement sql1 =conn.prepareStatement("Update classroom Set answer='"+1+"'where cm='"+cm[x]+"'and position='"+po[x]+"'and date='"+da[x]+"' and reason='"+re[x]+"'and content='"+co[x]+"'and s_time='"+s[x]+"';");  
	sql1.executeUpdate();	
	}
	%>
	<script language="javascript">
    alert("审批通过")
    </script>
     <% response.setHeader("refresh","0; URL=shenpi.jsp");
      }
      %>

</body>
</html>