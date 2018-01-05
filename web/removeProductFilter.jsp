<%-- 
    Document   : removeProductFilter
    Created on : 16 Dec, 2017, 05:50:59 PM
    Author     : nad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getParameter("cat") != null ){
        session.removeAttribute("cat");
    }
    if (request.getParameter("scat") != null ){
        session.removeAttribute("scat");
    }
    response.sendRedirect("viewProducts.jsp");
%>
