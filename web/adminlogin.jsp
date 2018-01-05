<%-- 
    Document   : adminlogin
    Created on : Jan 3, 2018, 3:37:33 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Fruits Online Shop</title>
        <!-- Default Stylesheets -->
        <%@include file="includesPage/_stylesheets.jsp" %>
        
        <link rel="stylesheet" href="css/slider.css"  />

        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/slider.js"></script>
        <script type="text/javascript" src="js/myScript.js"></script>
    </head>
    <body>
        <jsp:include page="includesPage/_joinNow.jsp"></jsp:include>
        <%@include file="includesPage/_search_navigationbar.jsp" %>
        <form method="post" action="adminverifylogin.jsp">
            <center>
                <br><br>
                Email <br>
                <input type="email" name="email" value="" /> <br>
                Password <br>
                <input type="password" name="pass" value="" /> <br><br>
                <input type="submit" value="Login" />
                <input type="reset" value="Reset" />
            </center>>
        </form>
    </body>
</html>
