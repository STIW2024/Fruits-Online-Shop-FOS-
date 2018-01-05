<%-- 
    Document   : index
    Created on : Nov 21, 2017, 6:09:15 PM
    Author     : nad
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login</title>
</head>
<body>
    <%! 
        String userdbName;
        String userdbPsw;
    %>
    <%
    PreparedStatement ps = null;
    ResultSet rs = null;
    String sql = "select * from users where username=? and password=?";

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        ps = con.prepareStatement(sql);
        ps.setString(1, username);
        ps.setString(2, password);
        rs = ps.executeQuery();
        if(rs.next()){ 
            userdbName = rs.getString("username");
            userdbPsw = rs.getString("password");
            if(username.equals(userdbName) && password.equals(userdbPsw)){
                response.sendRedirect("HelloWorld.jsp"); 
            } 
        }
        rs.close();
        ps.close(); 
    }
    catch(Exception e){
        out.println(e);
    }
    %>
</body>
</html>

      
		


