<%-- 
    Document   : adminverifylogin
    Created on : Jan 3, 2018, 3:40:38 PM
    Author     : user
--%>

<%@ page import ="java.sql.*" %>
<%@ page import ="java.sql.*" %>

<%
    String email = request.getParameter("email");    
    String pass = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fruits_online_shop",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from admin where email='" + email + "' and pass='" + pass + "'");
    if (rs.next()) {
        session.setAttribute("userid", email);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("adminhome.jsp");
    } else {
        out.println("Invalid password <a href='adminlogin.jsp'>try again</a>");
    }
%>