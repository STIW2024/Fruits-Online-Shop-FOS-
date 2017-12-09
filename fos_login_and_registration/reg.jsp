<%-- 
    Document   : reg
    Created on : Dec 9, 2017, 6:48:02 PM
    Author     : nad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>
        <form method="post" action="registration.jsp">
            <center>
                <br><br>
                First Name<br>
                <input type="text" name="fname" value="" /><br>
                Last Name<br>
                <input type="text" name="lname" value="" /><br>
                Email<br>
                <input type="text" name="email" value="" /><br>
                Username<br>
                <input type="text" name="uname" value="" /><br>
                Password<br>
                <input type="password" name="pass" value="" /><br><br>
                <input type="submit" value="Submit" />
                <input type="reset" value="Reset" /><br>
                Already registered? <a href="index.jsp">Login Here</a>
            </center>
        </form>
    </body>
</html>
