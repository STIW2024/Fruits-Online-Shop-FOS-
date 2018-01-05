<%-- 
    Document   : display
    Created on : Dec 19, 2017, 5:11:28 PM
    Author     : user
--%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head>
        <title>SELECT Operation</title>
        <script>
            function confirmGo(m,u) {
                if ( confirm(m) ) {
                    window.location = u;
                }
            }
        </script>
    </head>
    <body>
 
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/fruits_online_shop"
                           user="root"  password=""/>
 
        <sql:query dataSource="${dbsource}" var="result">
            SELECT * from product;
        </sql:query>
    <center>
        <form>
            <table border="1" width="40%">
                <caption>Product List</caption>
                <tr>
                    <th>Product ID</th>
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
                    <th colspan="2">Action</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.product_id}"/></td>
                        <td><c:out value="${row.product_name}"/></td>
                        <td><c:out value="${row.sub_category_name}"/></td>
                        <td><c:out value="${row.category_name}"/></td>
                        <td><c:out value="${row.company_name}"/></td>
                        <td><c:out value="${row.price}"/></td>
                        <td><c:out value="${row.summary}"/></td>
                        <td><c:out value="${row.tags}"/></td>
                        <td><c:out value="${row.product_qty}"/></td>
                        <td><c:out value="${row.lastUpdated}"/></td>
                        <td><c:out value="${row.hits}"/></td>
                        <td><a href="update.jsp?id=<c:out value="${row.product_id}"/>">Update</a></td>
                        <td><a href="javascript:confirmGo('Sure to delete this record?','deletedb.jsp?id=<c:out value="${row.product_id}"/>')">Delete</a></td>
                         
                    </tr>
                </c:forEach>
            </table>
        </form>
        <a href="index.jsp">Go Home</a>
    </center>
</body>
</html>
