<%-- 
    Document   : index
    Created on : Dec 9, 2017, 6:09:16 PM
    Author     : nad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>
        <form method="post" action="login.jsp">
            <center>
                <br><br>
                Username <br>
                <input type="text" name="uname" value="" /> <br>
                Password <br>
                <input type="password" name="pass" value="" /> <br><br>
                <input type="submit" value="Login" />
                <input type="reset" value="Reset" /> <br>
                Not a member yet? <a href="reg.jsp">Register Here</a>
            </center>>
        </form>
    </body>
</html>
