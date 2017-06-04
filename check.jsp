<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.net.*" %>
<%
   // 编码，解决中文乱码   
   String str = URLEncoder.encode(request.getParameter("username"),"utf-8");  
   // 设置 name 和 url cookie 
   Cookie name = new Cookie("username",str);
   // 设置cookie过期时间为24小时。
   name.setMaxAge(60*60*24); 
   // 在响应头部添加cookie
   response.addCookie( name );
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<body>  
<%  
    String username=new String(request.getParameter("username").getBytes("ISO8859_1"),"GBK");  
   String jurisdiction=request.getParameter("jurisdiction");
   String password=new String(request.getParameter("password").getBytes("ISO8859_1"),"GBK"); 
   String s="1";
   
    try {  
        // 加载数据库驱动，注册到驱动管理器  
        Class.forName("com.mysql.jdbc.Driver");  
        // 数据库连接字符串  
        String url = "jdbc:mysql://localhost:3306/system";  
        // 数据库用户名  
        String usename = "root";  
        // 数据库密码  
        String psw = "0598";  
        // 创建Connection连接  
        Connection conn = DriverManager.getConnection(url,usename,psw);  
        // 判断 数据库连接是否为空  
        if(conn != null){             
            String sql="select * from account where username='"+username+"' and password='"+ password + "' and jurisdiction="+ jurisdiction;  
            Statement stmt = conn.createStatement(); 
          
            
            ResultSet rs=stmt.executeQuery(sql);  
            if(rs.next()){  
            	if(jurisdiction.equals(s))
            	{ response.sendRedirect("zhujiemian1.jsp"); } 
                else 
                { response.sendRedirect("zhujiemian.jsp");}
            }else{  
            	%><script language="javascript">
                alert("密码或权限选择错误")
                </script>
                <% 
                response.setHeader("refresh","0; URL=denglujiemian.jsp");
            }             
            // 输出连接信息  
            //out.println("数据库连接成功！");  
            // 关闭数据库连接  
            conn.close();  
        }else{  
            // 输出连接信息  
            out.println("数据库连接失败！");                          
        }  
    } catch (ClassNotFoundException e) {  
        e.printStackTrace();  
    } catch (SQLException e) {  
        e.printStackTrace();  
    }  
%>  
</body>  