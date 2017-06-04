 <%@ page import="java.net.*" %>
    <%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%>  
<%@ page import="java.io.*,java.util.*" %>
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
<title>借用情况</title>
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
<form id="form1" name="form1" method="post" action="quxiao.jsp">
<h1 class="sub-header">待审批借用情况</h1>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                 <th>教室类型</th>
                  <th>教室位置</th>
                  <th>教室容量</th>
                  <th>借用理由</th>
                   <th>借用时间</th>
                    <th>开始时间</th>
                     <th>结束时间</th>
                </tr>
              </thead>
<tbody>
 <%   String driver = "com.mysql.jdbc.Driver";    
    String url = "jdbc:mysql://localhost:3306/system";    
    String use = "root";     
    String password = "0598";  
    String[] po=new String[]{"","","","","","","","","",""};
    String[] cm=new String[]{"","","","","","","","","",""};
    String[] co=new String[]{"","","","","","","","","",""};
    String[] re=new String[]{"","","","","","","","","",""};
    String[] da=new String[]{"","","","","","","","","",""};
    String[] s=new String[]{"","","","","","","","","",""};
    String[] e=new String[]{"","","","","","","","","",""};
    String[] po1=new String[]{"","","","","","","","","",""};
    String[] cm1=new String[]{"","","","","","","","","",""};
    String[] co1=new String[]{"","","","","","","","","",""};
    String[] re1=new String[]{"","","","","","","","","",""};
    String[] da1=new String[]{"","","","","","","","","",""};
    String[] s1=new String[]{"","","","","","","","","",""};
    String[] e1=new String[]{"","","","","","","","","",""};
    String[] ya1=new String[]{"","","","","","","","","",""};
    Class.forName(driver); 
    Connection conn= DriverManager.getConnection(url,use,password);    
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

  String sql="select * from classroom where username='"+username+"'and answer='"+0+"' and request1='"+1+"';";  
  Statement stmt = conn.createStatement(); 
  ResultSet rs=stmt.executeQuery(sql);  
  int i1=0;
  while(rs.next())
  { 
    po[i1]=rs.getString("position");
    cm[i1]=rs.getString("cm");
    re[i1]=rs.getString("reason");
    co[i1]=rs.getString("content");
    da[i1]=rs.getString("date");
    s[i1]=rs.getString("s_time");
    e[i1]=rs.getString("e_time");
   
    
    %>

      <tr>
        <td><%=cm[i1] %></td>
        <td><%=po[i1] %></td> 
        <td><%=co[i1] %></td>
        <td><%=re[i1] %></td>
        <td><%=da[i1] %></td>
        <td><%=s[i1] %></td>
        <td><%=e[i1] %></td>
      <td>  <button type="submit" name="cancel" value="<%=i1 %>" />取消借用</button>  </td>
      </tr>
  
      

    	
 <% i1++;  }
    %>  
         
 </tbody>
  </table>
</form>
<form id="form2" name="form2" method="post1" action="quxiao1.jsp">
<h2 class="sub-header">通过审批情况</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                 <th>教室类型</th>
                  <th>教室位置</th>
                  <th>教室容量</th>
                  <th>借用密码</th>
                  <th>借用理由</th>
                   <th>借用时间</th>
                    <th>开始时间</th>
                     <th>结束时间</th>
                </tr>
              </thead>
<tbody>
 <%  
   
  for (int i = 1; i < cookiea.length; i++)
  {
	  cookie = cookiea[i];
  
  if(cookie.getName().equals("username"))
  {
	  username=cookie.getValue();
  break;
  }
  }

 String sql1="select * from classroom where username='"+username+"'and answer='"+1+"'and request1='"+1+"';";  
 Statement stmt1 = conn.createStatement(); 
 ResultSet rs1=stmt1.executeQuery(sql1);  
 int i2=0;
  while(rs1.next())
  { 
    po1[i2]=rs1.getString("position");
    cm1[i2]=rs1.getString("cm");
    re1[i2]=rs1.getString("reason");
    co1[i2]=rs1.getString("content");
    ya1[i2]=rs1.getString("yaoshi");
    da1[i2]=rs1.getString("date");
    s1[i2]=rs1.getString("s_time");
    e1[i2]=rs1.getString("e_time");
    %>

      <tr>
        <td><%=cm1[i2] %></td>
        <td><%=po1[i2] %></td> 
        <td><%=co1[i2] %></td>
        <td><%=ya1[i2] %></td>
        <td><%=re1[i2] %></td>
        <td><%=da1[i2] %></td>
        <td><%=s1[i2] %></td>
        <td><%=e1[i2] %></td>
          <td>  <button type="submit" name="cancel1" value="<%=i2 %>" />取消借用</button>  </td>
      </tr>

    	
 <% i2++;  }
    %>  
         
 </tbody>
  </table>
    <center>            
    <div>
    <p><a class="btn btn-lg btn-success" target="_self"   onclick="javascript:window.close()" role="button">关闭</a>    </p>
    </div> 
    </center>  
    </form>     
    <%
    request.getSession().setAttribute("cm",cm);
    request.getSession().setAttribute("po",po);
    request.getSession().setAttribute("co",co);
    request.getSession().setAttribute("re",re);
    request.getSession().setAttribute("da",da);
    request.getSession().setAttribute("s",s);
    request.getSession().setAttribute("e",e);
    
    
    request.getSession().setAttribute("cm1",cm1);
    request.getSession().setAttribute("po1",po1);
    request.getSession().setAttribute("co1",co1);
    request.getSession().setAttribute("ya1",ya1);
    request.getSession().setAttribute("re1",re1);
    request.getSession().setAttribute("da1",da1);
    request.getSession().setAttribute("s1",s1);
    request.getSession().setAttribute("e1",e1);
 
    %>  
     
</body>
</html>