<%-- 
    Document   : adminlogout
    Created on : Jan 3, 2018, 4:06:52 PM
    Author     : user
--%>

<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("adminlogin.jsp");
%>
