<%-- 
    Document   : message
    Created on : 16 Dec, 2017, 05:50:59 PM
    Author     : nad
--%>

<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Fruits Online Shop</title>

        <link rel="stylesheet" type="text/css" href="css/reset.css"/>
        <link rel="stylesheet" type="text/css" href="css/text.css"/>
        <link rel="stylesheet" type="text/css" href="css/960_16.css"/>
        <link rel="stylesheet" type="text/css" href="css/styles.css"/>
        <link rel="stylesheet" type="text/css" href="css/product.css"  />

        <link rel="stylesheet" type="text/css" href="css/lightbox.css"  />

        <script src="js/jquery-1.7.2.min.js"></script>
        <script src="js/lightbox.js"></script>
    </head>
    <body>
        <%
        if (session.getAttribute("user") == null ){// Then new user, show join now
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
        <%
            if ((request.getAttribute("message") == null) || (request.getAttribute("messageDetails") == null)){
            // if email session is set, Dont show the message redirect to index
            //response.sendRedirect("/fruitsOnlineShop/index.jsp");
        }
        %>
        <div class="container_16">
            <div id="whiteBox" class="grid_16">
                <div style="padding: 10px;" class="grid_7 push_5 BigRed" >
                    <h1>
                        <% out.print(request.getAttribute("message"));%></h1>
                    <h5 style="padding: 10px;">
                        <%                                                                
                            out.print(request.getAttribute("messageDetail"));
                        %>
                    </h5> 
                </div>
            </div>
        </div>
    </body>
</html>
