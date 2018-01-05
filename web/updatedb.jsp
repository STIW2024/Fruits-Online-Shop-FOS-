<%-- 
    Document   : updatedb
    Created on : Jan 3, 2018, 3:49:59 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    </head>
    <body>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/fruits_online_shop"
                           user="root"  password=""/>
        <sql:update dataSource="${dbsource}" var="count">
            UPDATE products SET product_name = ?, sub_category_name = ?, category_name = ?, company_name = ?, price = ?, summary = ?, tags = ?, product_qty = ?, lastUpdated = ?, hits = ?
            WHERE product_id='${param.product_id}'
            <sql:param value="${param.pname}" />
            <sql:param value="${param.sub_category_name}" />
            <sql:param value="${param.category_name}" />
            <sql:param value="${param.company_name}" />
            <sql:param value="${param.price}" />
            <sql:param value="${param.summary}" />
            <sql:param value="${param.tags}" />
            <sql:param value="${param.qty}" />
            <sql:param value="${param.lastUpdated}" />
            <sql:param value="${param.hits}" />
        </sql:update>
        <c:if test="${count>=1}">
            <font size="5" color='green'> Congratulations ! Data updated
            successfully.</font>
              <a href="adminhome.jsp">Go Home</a>          
        </c:if>
    </body>
</html>
