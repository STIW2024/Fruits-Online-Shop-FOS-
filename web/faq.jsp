<%-- 
    Document   : faq
    Created on : 16 Dec, 2017, 05:50:59 PM
    Author     : nad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fruits Online Shop</title>        
        <!-- Default Stylesheets -->

        <link rel="stylesheet" type="text/css" href="css/reset.css"/>
        <link rel="stylesheet" type="text/css" href="css/text.css"/>
        <link rel="stylesheet" type="text/css" href="css/960_16.css"/>
        <link rel="stylesheet" type="text/css" href="css/styles.css"/>
        <link rel="stylesheet" type="text/css" href="css/product.css"  />

        <script type="text/javascript" src="js/jquery.js"></script>

        <script type="text/javascript" src="js/myScript.js"></script>

    </head>
    <body>
        
        <%
            if (session.getAttribute("user") == null) {// THen new user, show join now
        %>
        <jsp:include page="includesPage/_joinNow.jsp"></jsp:include>
        <%        } else {
        %>
        <jsp:include page="includesPage/_logout.jsp"></jsp:include>
        <%            }
        %>
        
        <%@include file="includesPage/_search_navigationbar.jsp" %>

        <div class="container_16">
            <br/>
            <h1>Frequently Asked Questions FAQs</h1>
            <hr/>
        </div>

        <div class="container_16">
            <div id="whiteBox" class="grid_16" style="padding: 10px;">
                <div name="top" class="push_1">
                    <br><br>
                    <a href="#1">&bull; What is the delivery method often used?</a>
                    <br><br>
                    <a href="#2" >&bull; Can I make another account over here?</a>
                    <br><br>
                    <a href="#3" >&bull; How many days will the product reach?</a>
                </div> 
                <br><br>
                <hr/>
                <a  href="#top" name="1">&bull; What is the delivery method often used?</a>
                    <div>
                        <p>
                            Delivery is normally done by poslaju.
                        </p>    
                    </div>
                <br/><br/>
                <a  href="#top"  name="2">&bull; Can I make another account over here?</a>
                    <div>
                        <p>
                            It is not advisable to make another account in Fruits Online Shop (FOS).
                        </p>
                    </div>
                <br/><br/>
                <a  href="#top" name="3">&bull; How many days will the product reach?</a>
                    <div>
                        <p>
                            Normally it takes around 5-7 working days. It depends on the availability of the stocks.
                        </p>
                    </div>
                <br/><br/>
            </div>
        </div>
    </body>
</html>
