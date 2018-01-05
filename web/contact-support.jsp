<%-- 
    Document   : contact-support
    Created on : 16 Dec, 2017, 05:50:59 PM
    Author     : nad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Fruits Online Shop</title>
        <jsp:useBean class="product.product" id="product" scope="session"></jsp:useBean>

        <%@page import="java.sql.*, database.*" %>
        <link rel="stylesheet" type="text/css" href="css/reset.css"/>
        <link rel="stylesheet" type="text/css" href="css/text.css"/>
        <link rel="stylesheet" type="text/css" href="css/960_16.css"/>
        <link rel="stylesheet" type="text/css" href="css/product.css"  />

        <link rel="stylesheet" type="text/css" href="css/lightbox.css"  />

        <link rel="stylesheet" type="text/css" href="css/styles.css"/>

        <script src="js/jquery-1.7.2.min.js"></script>
        <script src="js/lightbox.js"></script>
        <script src="js/myScript.js"></script>
        
        <script type="text/javascript">
            $(document).ready(function (){
                
                var usrname = $('#usrname');
                
                usrname.keyup(function (){
                    if (!isNaN(usrname.attr ('value'))){
                        usrname.addClass('error');
                    }else {
                        usrname.removeClass('error');
                    }
                });
                
                //usrname.addClass('error')
        });
        </script>
    </head>
    <body>
        
        <%
        if (session.getAttribute("user") == null ){// THen new user, show join now
            %>
            <jsp:include page="includesPage/_joinNow.jsp"></jsp:include>
        <%
        }else {
            %>
            <jsp:include page="includesPage/_logout.jsp"></jsp:include>
        <%
        }
        
        %>
        <jsp:include page="includesPage/_search_navigationbar.jsp"></jsp:include>

        <div class="container_16">
            <br>
            <h1>Contact Us</h1>
            <hr/>
            Fruits Online Shop (FOS) <br>
            Contact us: 04-928 4000 <br>
            Locate us: Universiti Utara Malaysia (UUM)   
        </div>          
          
       
    </body>
</html>
