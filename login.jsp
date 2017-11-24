<%-- 
    Document   : index
    Created on : Nov 23, 2017, 3:23:10 PM
    Author     : nad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Login Page</title>
    </head>
    <body>
        <center>
        <form action="verify.jsp" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                </tbody>
            </table>
            <br>
            <input type="submit" value="LOGIN" />
        </form>
        </center>
    </body>
</html>
