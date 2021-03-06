<%-- 
    Document   : userinfo
    Created on : 16 Dec, 2017, 05:50:59 PM
    Author     : nad
--%>

<%@page import="cart.cart"%>
<%@page import="user.user"%>
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
        
        <style type="text/css">
            
            #leftside {
                cursor: pointer;
                position: fixed;
            }
        </style>
        <script type="text/javascript">
            $(document).ready(function (){
                var MyOrders = $('#MyOrders');
                var MyAccount = $('#Account');
                var MySettings = $('#Settings');
                var MyUserInfo = $('#userInfo');
                
                var Orders = $('.MyOrders');
                var Account = $('.Account');
                var Settings = $('.Settings');
                
                MyOrders.click(function (){
                    Orders.slideDown(700);
                    Account.slideUp(700);
                    Settings.slideUp(700);
                });
                
                MySettings.click(function (){
                    Orders.slideUp(700);
                    Account.slideUp(700);
                    Settings.slideDown(700);
                });
                MyUserInfo.click(function (){
                    Orders.slideDown(700);
                    Account.slideDown(700);
                    Settings.slideDown(700);
                });         
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
        
            user User;
            String printName = null;
            if ((session.getAttribute("user") == null)) {
                response.sendRedirect("index.jsp");
            } else {
                User = (user) session.getAttribute("user");
                String email = User.getUserEmail();
                String userName = User.getUsername();
                int uid = User.getUserId();

                if (userName == null){
                    printName = email;
                }
                else {
                    printName = userName;
                }
           
        %>
        <jsp:include page="includesPage/_search_navigationbar.jsp"></jsp:include>

        <div class="container_16">
            <div id="leftside" class="grid_3">
                <ul id="leftsideNav">
                    <li><a id="userInfo"><strong>User Profile</strong></a></li>
                       
                    <li><a id="MyOrders">My Orders</a></li>
                    <li><a id="Settings">Settings</a></li>
                </ul>
            </div>
            <div class="grid_13 push_3" id="whiteBox">
                <div  class="grid_13">
                    <h1  style ="text-align: center; padding: 10px 0px 0px 0px;">Hello <%= printName %></h1>  
                    <p  style ="text-align: center;"> 
                       Enter personal information for your Account to have quick checkouts on any transaction 
                    </p>
                </div>
            </div>
            <div id="whiteBox" class="grid_13 push_3">
                <div  style ="text-align: center; border-top: 20px #444 solid; padding: 10px 0px 10px 0px;" class="grid_12 MyOrders">
                    <h1 style ="padding: 10px 0px 10px 0px;">My Orders</h1>  
                    <div id="CartTable" style="padding:10px 00px" class="grid_12">
                        <div class="grid_1">
                            <h3>Order No</h3>
                        </div> 
                        <div class="grid_7">
                            <h3 class="push_3">Order Summary</h3> 
                            <div class="clear"></div>
                            <div class="grid_4">
                                Item 
                            </div>
                            <div class="grid_2">
                                Price x Quantity
                            </div>
                                
                        </div>
                        <div class="grid_3 push_1">
                            <h3>Date</h3>
                        </div>
                        <div class="clear"></div>
                        <%
                            String sql = "SELECT  `order_id` ,  `product_name` ,  `product_price` ,  `product_quantity` ,  `sold_on` "
                                                +" FROM  `order` o "
                                                +" INNER JOIN  `sales` s "
                                                +" USING (  `order_id` ) "
                                                +" WHERE o.`user_id` = "+uid+" "
                                                + " ORDER BY `order_id` DESC ";
                                    
                            Connection c = new DB_Conn().getConnection();
                            PreparedStatement psmt = c.prepareStatement(sql);
                            ResultSet rs = psmt.executeQuery();
                            
                            int oldOrder = 0;
                            int newOrder;
                            String product_name;
                            double product_price;
                            int product_quantity;
                            Date sold_on_date;
                            Time sold_on_time;
                            
                            while (rs.next()){
                                newOrder = rs.getInt("order_id");
                                product_name = rs.getString("product_name");
                                product_price = rs.getDouble("product_price");
                                product_quantity = rs.getInt("product_quantity");
                                sold_on_time = rs.getTime("sold_on");
                                sold_on_date = rs.getDate("sold_on");
                                String orderDateArr [] = sold_on_date.toString().split("-");
                                        
                                String billNo = "";
                                for (int i= orderDateArr.length-1; i>= 1; i--){
                                    billNo += orderDateArr[i];
                                }
                                billNo+= newOrder;
                                if (oldOrder == newOrder){
                                    // Dont Draw border Type II order Div
                        %>
                                    <!-- Type II Order -->
                                    <div class="grid_12">
                                        <div class="push_1">
                                            <div class="grid_7">
                                                <div class="grid_4 ">
                                                    <a href="product.jsp?id="></a>
                                                    <%= product_name %>
                                                </div>
                                                <div class="grid_2">
                                                    MYR <%= product_price %> x<%= product_quantity %>
                                                </div>
                                            </div>
                                            <div class="grid_3">
                                                <%= sold_on_date %> : <%= sold_on_time %>
                                            </div>
                                        </div>
                                    </div>
                        <%
                                }else {
                                    // Draw New Order Type I order Div
                        %>
                                    <!-- Type I Order -->
                                    <div class="grid_12"  style="border-top: 2px #444 solid;">
                                        <div  class="grid_1">
                                            <a class="blue" href="showMyBill.jsp?oid=<%= newOrder %>"><%= billNo %></a>
                                        </div>
                                        <div class="grid_7">
                                            <div class="grid_4 ">
                                                <%= product_name %> 
                                            </div>
                                            <div class="grid_2">
                                                MYR <%= product_price %> x<%= product_quantity %>
                                            </div>
                                        </div>
                                        <div class="grid_3">
                                            <%= sold_on_date %> : <%= sold_on_time %>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                        <%
                                }
                                oldOrder = newOrder;
                            }
                        %>
                    </div>
                </div>
                
                        <div class="clear"></div>
                        <div  style ="text-align: center; border-top: 20px #444 solid; padding: 10px 0px 10px 0px;" class="grid_9 push_1 Settings">
                            <h1 style ="padding: 10px 0px 10px 0px;">Settings</h1>  
                            <form method="post" action="changeMyPass">
                                <div class="grid_3">
                                    Email 
                                </div>
                                <div class="grid_5">
                                    <input type="text" name="email" value="<%= User.getUserEmail() %>" disabled/>
                                </div>
                                <div class="clear"></div><br/>
                                <div class="grid_3">
                                    Password
                                </div>
                                <div class="grid_5">
                                    <input type="password" name="pass" /><br/><br/> 
                                    <input id="greenBtn" type="submit" value="Change My Password"/>
                                </div>
                                <div class="clear"></div><br/>
                            </form>
                        </div>
                        <div class="clear"></div>
            </div>
        </div>
        <%
            //This is else closing of the top if checking of User Logged In...
            }        
        %>
    </body>
</html>
