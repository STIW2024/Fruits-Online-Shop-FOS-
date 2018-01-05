<%-- 
    Document   : update
    Created on : Jan 3, 2018, 3:49:20 PM
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
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from products where product_id=?;
            <sql:param value="${param.id}" />
        </sql:query>
    <center>
            Welcome <%=session.getAttribute("userid")%> 
        <a href='adminlogout.jsp'>Log out</a>
            <br><br>
            <br><br>
        <h3><b>Update Product</b></h3>
    </center>
        <form action="updatedb.jsp" method="post">
            <table border="0" width="40%" cellspacing = "10">
                
                
                <tr>
                    <th>Product Name</th>
                    <th>Product Sub Category Name</th>
                    <th>Product Category Name</th>
                    <th>Product Company Name</th>
                    <th>Product Price</th>
                    <th>Product Summary</th>
                    <th>Product Tags</th>
                    <th>Product Quantity</th>
                    <th>Product Last Updated</th>
                    <th>Product Hits</th>
                </tr>
                <br>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><input type="hidden" value="${param.id}" name="product_id"/>
                            <input type="text" value="${row.product_name}" name="pname"/></td>
                        <td><input type="text" value="${row.sub_category_name}" name="sub_category_name"/></td>
                        <td><input type="text" value="${row.category_name}" name="category_name"/></td>
                        <td><input type="text" value="${row.company_name}" name="company_name"/></td>
                        <td><input type="text" value="${row.price}" name="price"/></td>
                        <td><input type="text" value="${row.summary}" name="summary"/></td>
                        <td><input type="text" value="${row.tags}" name="tags"/></td>
                        <td><input type="text" value="${row.product_qty}" name="qty"/></td>
                        <td><input type="date" value="${row.lastUpdated}" name="lastUpdated"/></td>
                        <td><input type="text" value="${row.hits}" name="hits"/></td>
                        <td><input type="submit" value="Update"/></td>
                    </tr>
                </c:forEach>
            </table>
            <br><br>
            <a href="adminhome.jsp">Go Home</a>
        </form>
    </body>
</html>
