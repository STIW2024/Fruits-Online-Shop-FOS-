<%-- 
    Document   : adminhome
    Created on : Jan 3, 2018, 3:43:15 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    </head>
    <body>
        <center>
            Welcome <%=session.getAttribute("userid")%>
                <a href='adminlogout.jsp'>Log out</a>
                <br><br>
            <h1>Choose Option</h1>
            <a href="insert.jsp">Insert Record</a><br>
            <a href="display.jsp">Display Record</a><br>
            
        </center>
    </body>
</html>
