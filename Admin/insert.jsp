<%-- 
    Document   : insert
    Created on : Dec 19, 2017, 5:07:30 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="insertdb.jsp" method="post">
            <table border="0" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Purchase Product</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>Product Name</label></td>
                        <td><input type="text" name="pname"/></td>
                    </tr>
                    <tr>
                        <td><label>Sub Category Name</label></td>
                        <td><input type="text" name="sub_category_name"/></td>
                    </tr>
                    
                    <tr>
                        <td><label>Category Name</label></td>
                        <td><input type="text" name="category_name"/></td>
                    </tr>
                    
                    <tr>
                        <td><label>Company Name</label></td>
                        <td><input type="text" name="company_name"/></td>
                    </tr>
                    
                    <tr>
                        <td><label>Price</label></td>
                        <td><input type="text" name="price"/></td>
                    </tr>
                    
                    <tr>
                        <td><label>Summary</label></td>
                        <td><input type="text" name="summary"/></td>
                    </tr>
                    
                    <tr>
                        <td><label>Tags</label></td>
                        <td><input type="text" name="tags"/></td>
                    </tr>
                    <tr>
                        <td><label>Quantity</label></td>
                        <td><input type="text" name="qty"/></td>
                    </tr>
                    <tr>
                        <td><label>Last Updated</label></td>
                        <td><input type="date" name="lastUpdated"/></td>
                    </tr>
                    
                    <tr>
                        <td><label>Hits</label></td>
                        <td><input type="text" name="hits"/></td>
                    </tr>
                    
                    <tr>
                        <td><input type="submit" value="Save" /></td>
                        <td><input type="reset" value="reset"/></td>
                    </tr>
                </tbody>
            </table>
        </form>
        <font color="red"><c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}" />
            <a href="index.jsp">Go Back</a>
        </c:if></font>
        <font color="green"><c:if test="${not empty param.susMsg}">
            <c:out value="${param.susMsg}" />
            <a href="index.jsp">Go Back</a>
        </c:if></font>
 
    </body>
</html>
