<%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
      
    <title>检验注册页面</title>  
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
    <!--  
    <link rel="stylesheet" type="text/css" href="styles.css">  
    -->  
  
  </head>  
    
  <body>  
    <br>  
   <%  
   request.setCharacterEncoding("utf-8");  
   String username=request.getParameter("username");
   String password1=request.getParameter("password");
   String password2=request.getParameter("password1");
   String name=request.getParameter("name");
    String college=request.getParameter("college");
    String sex=request.getParameter("sex");
    String class1=request.getParameter("class1");
    String telephone=request.getParameter("telephone");
    String nativeplace=request.getParameter("nativeplace");
    String find=request.getParameter("find");
    String find1=request.getParameter("find1");
    String s="0";
   %>  
   <%   
    String driver = "com.mysql.jdbc.Driver";    
    String url = "jdbc:mysql://localhost:3306/system";    
    String use = "root";     
    String password = "0598";    
    Class.forName(driver);    
    Connection conn= DriverManager.getConnection(url,use,password);
if(!password1.equals(password2))
    {
        %><script language="javascript">
        alert("两次密码不一致")
        </script>
        <% 
        response.setHeader("refresh","0; URL=zhuce.jsp");
    } 
    else 
    {
   PreparedStatement sql =conn.prepareStatement("insert into userinfo(username,name,college,sex,class,telephone,nativeplace,find,find1)values(?,?,?,?,?,?,?,?,?)");  
    sql.setString(1,username);  
    sql.setString(2,name);   
    sql.setString(3,college); 
    sql.setString(4,sex); 
    sql.setString(5,class1); 
    sql.setString(6,telephone); 
    sql.setString(7,nativeplace); 
    sql.setString(8,find); 
    sql.setString(9,find1); 
    PreparedStatement sql1 =conn.prepareStatement("insert into account(username,password,jurisdiction)values(?,?,?)"); 
    sql1.setString(1,username); 
    sql1.setString(2,password1); 
    sql1.setString(3,s); 
    int rtn=sql.executeUpdate(); 
    int rtn1=sql1.executeUpdate();
    sql.close();  
    sql1.close();  
    conn.close();
    %><script language="javascript">
    alert("注册成功")
    </script>
    <% 
    response.setHeader("refresh","0; URL=denglujiemian.jsp");
    }
    %>  
      
  </body>  
</html>  