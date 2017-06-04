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
<title>个人信息展示</title>
<style type="text/css">
<!--
body {
	background-image: url(images/29278a997fe0d7ca96c3c175a7f56d9e.jpg);
	background-repeat: repeat;
}
body,td,th {
	font-size: small;
}
.STYLE2 {color: #000000}
-->
</style></head>

<body>
<%String panduan=request.getParameter("panduan"); 
   String username=request.getParameter("username"); 
   String	 name1=null;
   String  class1=null;
   String college=null;
   String nativeplace=null;
   String telephone=null;
   String sex=null;
   String find=null;
   String find1=null;
   String a="1";
   String b="2";
    String driver = "com.mysql.jdbc.Driver";    
    String url = "jdbc:mysql://localhost:3306/system";    
    String use = "root";     
    String password = "0598";  
    Class.forName(driver); 
    Connection conn= DriverManager.getConnection(url,use,password);
if(panduan.equals(a))
{  
    PreparedStatement sm=conn.prepareStatement("select * from account where username='"+username+"';");   
    ResultSet rs=sm.executeQuery();
  
    if(rs.next())
    {
    	PreparedStatement sql1 =conn.prepareStatement("Update account Set jurisdiction='"+1+"'where username='"+username+"';");  
    	sql1.executeUpdate();
    	%>
    	 <script language="javascript">
    	    alert("设置管理员成功")
    	    </script>
    	        <% response.setHeader("refresh","0; URL=yonghuguanli.jsp");
	    	      }
	    else
	    	{%>
   	 <script language="javascript">
   	    alert("无该用户")
   	    </script>
   	     <% response.setHeader("refresh","0; URL=yonghuguanli.jsp");
	    	}
	    	      %>
	    	
    	<% }
else if(panduan.equals(b))
{   
	 PreparedStatement sm=conn.prepareStatement("select * from account where username='"+username+"';");   
	    ResultSet rs=sm.executeQuery();
	    if(rs.next())
	    {
	    	PreparedStatement sql1 =conn.prepareStatement("delete from account where username='"+username+"';");  
	    	sql1.executeUpdate();
	    	PreparedStatement sql2 =conn.prepareStatement("delete from userinfo where username='"+username+"';");  
	    	sql2.executeUpdate();

	    	%>
	    	 <script language="javascript">
	    	    alert("删除用户成功")
	    	    </script>
	    	     <% response.setHeader("refresh","0; URL=yonghuguanli.jsp");
	    	      }
	    else
	    	{%>
   	 <script language="javascript">
   	    alert("无该用户")
   	    </script>
   	     <% response.setHeader("refresh","0; URL=yonghuguanli.jsp");
	    	}
	    	      %>
	    	<% }
else 
{
	PreparedStatement sm=conn.prepareStatement("select * from userinfo where username='"+username+"';");   
    ResultSet rs=sm.executeQuery();
    if(rs.next())
    {
    	 username=rs.getString("username");   	
    	 name1=rs.getString("name");
      class1=rs.getString("class");
     college=rs.getString("college");
     nativeplace=rs.getString("nativeplace");
     telephone=rs.getString("telephone");
     sex=rs.getString("sex");
     find=rs.getString("find");
     find1=rs.getString("find1");
    }
else
{%>
<script language="javascript">
alert("无该用户")
</script>
<% response.setHeader("refresh","0; URL=yonghuguanli.jsp");
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
  <li class="list-group-item">英语密保:<%=find%></li>
  <li class="list-group-item">数字密保:<%=find1%></li>
</ul>
<center>
<div>
    <p><a class="btn btn-lg btn-success" target="_self"   href="yonghuguanli.jsp" role="button">返回</a>    </p>
    </div> 
    </center>
<% 
}
%>

</body>
</html>