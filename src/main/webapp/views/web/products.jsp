<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--Da sua
-->
<!DOCTYPE HTML>
<html>
    <head>
        <title>Products</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href='http://fonts.googleapis.com/css?family=Maven+Pro:400,900,700,500' rel='stylesheet' type='text/css'>
        <link href="${pageContext.request.contextPath}/views/web/css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!--- start-mmmenu-script---->
        <script src="${pageContext.request.contextPath}/views/web/js/jquery.min.js" type="text/javascript"></script>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/views/web/css/jquery.mmenu.all.css" />
        <script type="text/javascript" src="${pageContext.request.contextPath}/views/web/js/jquery.mmenu.js"></script>
        <script type="text/javascript">
            //	The menu on the left
            $(function () {
                $('nav#menu-left').mmenu();
            });
        </script>
        <!-- start top_js_button -->
        <script type="text/javascript" src="${pageContext.request.contextPath}/views/web/js/easing.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/views/web/js/move-top.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1200);
                });
            });
        </script>
    </head>
    <body>
        <!-- start header -->
        <jsp:include page="header.jsp"/>

        <!-- start top_bg -->
        <div class="top_bg">
            <div class="wrap">
                <div class="main_top">
                    <h4 class="style">SẢN PHẨM</h4>
                </div>
            </div>
        </div>
        <!-- start main -->
        <div class="main_bg">
            <div class="wrap">
                <div class="main">
                    <div class="top_main">
                        <h2>Áo/Áo khoác</h2>
                        <a href="products?show=SHIRT">show all</a>
                        <div class="clear"></div>
                    </div>
                    
                    <c:set var="shirtList" value="${requestScope.shirtList}" />
                    <div class="grids_of_3">
                        <c:forEach var="product" items="${shirtList}">
                            <div class="grid1_of_3">
                                <a href="detail?productName=${product.productName}">
                                    <img src="${product.linkImage}" width="230" height="270"/>

                                    <h3>${product.productName}</h3>
                                    
                                    <c:set var="actuaPrice" value="${product.price - product.price*product.discount/100}"/>
                                    
                                    <span class="price">${actuaPrice}</span>

                                    <c:if test="${product.discount != 0}">
                                        <span class="price1 bg">on sale</span>
                                    </c:if>
                                </a>
                            </div>
                        </c:forEach>
                    </div>
                    
                        <div class="clear"></div>
                    </div>
                    
                    <div class="top_main">
                        <h2>Quần</h2>
                        <a href="#######">show all</a>
                        <div class="clear"></div>
                    </div>
                    <!-- start grids_of_3 -->
                    <div class="grids_of_3">
                        <div class="grid1_of_3">
                            <a href="#######">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2NrICZGfSxeHsGhc4b4NhJE9yQFf-2gsD6A&usqp=CAU" alt="">
                                <h3>buffalo decollete</h3>
                                <span class="price">$145,99</span>
                            </a>
                        </div>
                        <div class="grid1_of_3">
                            <a href="#######">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKdevpitJMV4NZ_p4SNwRVGy6Vqhg-M_Kwew&usqp=CAU" alt="">
                                <h3>even &amp; odd</h3>
                                <span class="price">$185,99</span>
                            </a>
                        </div>
                        <div class="grid1_of_3">
                            <a href="#######">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEklXWJxshj9SKQ-jhRnj4iMux7zaZ-mR7BA&usqp=CAU" alt="">
                                <h3>buffalo decollete</h3>
                                <span class="price">$145,99</span>
                                <span class="price1 bg1">out of stock</span>
                            </a>
                        </div>
                        <div class="clear"></div>
                    </div>

                    <div class="top_main">
                        <h2>Phụ kiện</h2>
                        <a href="#######">show all</a>
                        <div class="clear"></div>
                    </div>
                    <!-- start grids_of_3 -->
                    <div class="grids_of_3">
                        <div class="grid1_of_3">
                            <a href="#######">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2NrICZGfSxeHsGhc4b4NhJE9yQFf-2gsD6A&usqp=CAU" alt="">
                                <h3>buffalo decollete</h3>
                                <span class="price">$145,99</span>
                            </a>
                        </div>
                        <div class="grid1_of_3">
                            <a href="#######">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKdevpitJMV4NZ_p4SNwRVGy6Vqhg-M_Kwew&usqp=CAU" alt="">
                                <h3>even &amp; odd</h3>
                                <span class="price">$185,99</span>
                            </a>
                        </div>
                        <div class="grid1_of_3">
                            <a href="#######">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEklXWJxshj9SKQ-jhRnj4iMux7zaZ-mR7BA&usqp=CAU" alt="">
                                <h3>buffalo decollete</h3>
                                <span class="price">$145,99</span>
                                <span class="price1 bg1">out of stock</span>
                            </a>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>

                </div>
            </div>
        </div>
        <!-- start footer -->
        <jsp:include page="Footer.jsp"/>
    </body>
</html>