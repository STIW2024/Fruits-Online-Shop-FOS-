<%-- 
    Document   : insertdb
    Created on : Jan 3, 2018, 3:46:03 PM
    Author     : user
--%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<!DOCTYPE html> 
<html>
    <head>
        <title>Admin</title>
    </head>
    <body>
            <a href='adminlogout.jsp'>Log out</a>
            <br><br>
        <c:if test="${ empty param.pname or empty param.qty}">
            <c:redirect url="insert.jsp" >
                <c:param name="errMsg" value="Please Enter Product and Quantity" />
            </c:redirect>
 
        </c:if>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/fruits_online_shop"
                           user="root"  password=""/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO products(product_name, sub_category_name, category_name, company_name, price, summary, tags, product_qty, lastUpdated, hits ) VALUES (?,?,?,?,?,?,?,?,?,?);
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
         
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
            <c:redirect url="insert.jsp" >
                <c:param name="susMsg" value="Congratulations ! Data inserted
            successfully." />
            </c:redirect>
        </c:if> 
 
 
    </body>
</html>
