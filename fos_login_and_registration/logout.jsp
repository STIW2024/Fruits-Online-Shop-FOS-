<%-- 
    Document   : logout
    Created on : Dec 9, 2017, 7:40:39 PM
    Author     : nad
--%>

<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
