<%-- 
    Document   : success
    Created on : Dec 9, 2017, 7:39:50 PM
    Author     : nad
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>
        <center>
            <br><br>
            <%
                if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
            %>
            You are not logged in<br/>
            <a href="index.jsp">Please Login</a>
            <%} else {
            %>
            Welcome <%=session.getAttribute("userid")%>
            <a href='logout.jsp'>Log out</a>
            <%
                }
            %>
        </center>
    </body>
</html>
