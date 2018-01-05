<%-- 
    Document   : index
    Created on : 16 Dec, 2017, 05:50:59 PM
    Author     : nad
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.DB_Conn"%>
<!DOCTYPE HTML>
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

    <%@include file="includesPage/_search_navigationbar.jsp" %>
    
    <div class="grid_16" style="padding-left: 200px;" id="slider">
        <img src="images/banner/header.jpg" width="900" height="250" /> 
        <br>
    <p>
        <font size="7"><center>About us<br></font>

    <font size="5">Welcome to Fruit Online Shop! it's been our mission to deliver fresh fruit straight away in front your door.
              <br/>
              <center/></font>
              
       <p/> 
    </div>
    
</body>
</html>



