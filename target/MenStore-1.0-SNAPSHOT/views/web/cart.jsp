
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Da sua
-->
<!DOCTYPE HTML>
<html>
    <c:url var="linkSource" value="${request.contextPath}/views/web" />

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href='http://fonts.googleapis.com/css?family=Mavsen+Pro:400,900,700,500' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="${linkSource}/css/cart.css">
        <link rel="stylesheet" href="${linkSource}/css/bootstrap.min.css">
        <link rel="stylesheet" href="${linkSource}/font/fontawesome-free-6.0.0-web/css/all.css">
        <link href="${linkSource}/css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!--- start-mmmenu-script---->
        <script src="${linkSource}/js/jquery.min.js" type="text/javascript"></script>
        <link type="text/css" rel="stylesheet" href="${linkSource}/css/jquery.mmenu.all.css" />
        <script type="text/javascript" src="${linkSource}/js/jquery.mmenu.js"></script>
        <script type="text/javascript">
            //	The menu on the left
            $(function () {
                $('nav#menu-left').mmenu();
            });
        </script>
        <!-- start slider -->
        <link href="${linkSource}/css/slider.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="${linkSource}/js/jquery.eislideshow.js"></script>
        <script type="text/javascript" src="${linkSource}/js/easing.js"></script>
        <script type="text/javascript">
            $(function () {
                $('#ei-slider').eislideshow({
                    animation: 'center',
                    autoplay: true,
                    slideshow_interval: 3000,
                    titlesFactor: 0
                });
            });
        </script>
        <!-- start top_js_button -->
        <script type="text/javascript" src="${linkSource}/js/move-top.js"></script>
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
        <div>
            <!-- start header -->
            <jsp:include page="header.jsp"/>
            ${requestScope.voucher}
            <!-- start slider -->
            <div class="gray_bg">
                <div class="container p-3 rounded cart gray_bg">
                    <div class="row no-gutters">
                        <div class="col-md-8 same-height">

                            <div class="product-details mr-2">
                                <div class="d-flex flex-row align-items-center"><a href="home">Continue Shopping</a></div>
                                <hr>
                                <h6 class="mb-0">SHOPPING CART</h6>
                                <div class="d-flex justify-content-between"><span>You have ${sessionScope.cart.itemCount} items in your cart</span>
                                    <!--                                     <div class="d-flex flex-row align-items-center"><span class="text-black-50">Sort
                                                                                        by:</span>
                                                                                <div class="price-cart ml-2"><span class="mr-2">Price</span><i
                                                                                                class="fa fa-angle-down"></i>
                                                                                </div>
                                                                        </div> -->
                                </div>

                                <c:if test="${sessionScope.cart.itemCount == 0}">
                                    <hr>
                                    <h1>Your cart is empty!!</h1>
                                </c:if>
                                <c:forEach var="item" items="${sessionScope.cart.list}">

                                    <div class="d-flex justify-content-between align-items-center mt-3 p-4 items rounded white_bg">
                                        <div class="d-flex flex-row"><img class="rounded"
                                                                          src="${item.product.linkImage}"
                                                                          height="120">
                                            <div class="ml-5 a-space"><span class="font-weight-bold d-block">${item.product.productName}</span>
                                                <span class="spec">Size: ${item.product.size}</span></div>
                                        </div>
                                        <div class="d-flex flex-row align-items-center">
                                            <i class="fa-solid fa-angle-left mr-1"></i>
                                            <span class="d-block">${item.quantity}</span>
                                            <i class="fa-solid fa-angle-right ml-1"></i>
                                            <span
                                                class="d-block ml-5 font-weight-bold">${item.soldPrice} VNĐ</span><i
                                                class="fa-solid fa-trash ml-4 text-black-50"></i></div>
                                    </div>
                                </c:forEach>

                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>

                        </div>


                        <div  class="col-md-4 stick-board">
                            <div class="payment-info">
                                <form action="####" method="post">
                                    <div class="d-flex justify-content-between align-items-center"><span>Card details</span><img
                                            class="rounded"
                                            src="https://img.hoidap247.com/picture/question/20200508/large_1588936738888.jpg"
                                            width="42"></div>

                                    <div>
                                        <label class="credit-card-label">Name</label><input  name="username" type="text"
                                                                                            class="form-control credit-inputs" placeholder="Name" required="true">
                                    </div>

                                     <div>
                                        <label class="credit-card-label">Phone number</label><input name="phone" type="text"
                                                                                               class="form-control credit-inputs" placeholder="Phone number" required="true">
                                    </div>

                                    <div>
                                        <label class="credit-card-label">Address</label><input name="address" type="text"
                                                                                               class="form-control credit-inputs" placeholder="Address" required="true">
                                    </div>

                                    <div class="row">
                                        <div class="col-8">
                                           <label class="credit-card-label">Voucher code:</label><input name="voucher" type="text"
                                                                                                     class="form-control credit-inputs" placeholder="Voucher">
                                        </div>
                                        
                                        <div class="col-4">
                                            <a class="btn btn-primary btn-sm" href="cart?action=checkVoucher&voucherId=TetHoliday" >Check</a>
                                        </div>
                                        
                                    </div>
                                    
                                    <div>
                                        <label class="credit-card-label">Note...: </label>
                                        <textarea name="note" type="text" class="form-control credit-inputs" placeholder="Note"> 
                                        </textarea>
                                    </div>

                                    <hr class="line">
                                    <div class="d-flex justify-content-between information"><span>Total</span><span>${sessionScope.cart.total} (VNĐ)</span></div>
                                    
                                    <div class="d-flex justify-content-between information">
                                        <span>Discount: </span><span>${sessionScope.cart.discounted} (VNĐ)</span>
                                    </div>
                                    
                                    <div class="d-flex justify-content-between information">
                                        <span>Final total:</span><span>${sessionScope.cart.subTotal} (VNĐ)</span>
                                    </div>
                                    <button
                                        class="btn btn-primary btn-block d-flex justify-content-between mt-3"
                                        type="submit"><span>${sessionScope.cart.subTotal} (VNĐ)</span><span>Checkout<i
                                                class="fa fa-long-arrow-right ml-1"></i></span></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- start image1_of_3 -->

            <!-- start footer -->
            <div class="footer_top">
                <div class="wrap">
                    <div class="footer">
                        <!-- start grids_of_3 -->
                        <div class="span_of_3">
                            <div class="span1_of_3">
                                <h3>text edit</h3>
                                <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising
                                    pain
                                    was born and I will give you a complete account of the system, and expound the actual
                                    teachings of the great explorer of the truth, the master-builder of human happiness.</p>
                            </div>
                            <div class="span1_of_3">
                                <h3>twitter widget</h3>
                                <p><a href="#">@Contrarypopular</a> I must explain to you how all this mistaken idea of
                                    denouncing pleasure and praising pain was born and I will give <a
                                        href="#">@accountofsystem</a> </p>
                                <p class="top">19 days ago</p>
                                <p class="top"><a href="#">@Contrarypopular</a> I must explain to you how all this mistaken
                                    idea
                                    of denouncing pleasure and praising pain was born and I will give <a
                                        href="#">@accountofsystem</a> </p>
                                <p class="top">19 days ago</p>
                            </div>
                            <div class="span1_of_3">
                                <h3>flickr widget</h3>
                                <ul class="f_nav">
                                    <li><a href="#"><img src="images/f_pic1.jpg" alt="" /> </a></li>
                                    <li><a href="#"><img src="images/f_pic2.jpg" alt="" /> </a></li>
                                    <li><a href="#"><img src="images/f_pic3.jpg" alt="" /> </a></li>
                                    <li><a href="#"><img src="images/f_pic4.jpg" alt="" /> </a></li>
                                    <li><a href="#"><img src="images/f_pic5.jpg" alt="" /> </a></li>
                                    <li><a href="#"><img src="images/f_pic6.jpg" alt="" /> </a></li>
                                </ul>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- start footer -->
            <div class="footer_mid">
                <div class="wrap">
                    <div class="footer">
                        <div class="f_search">
                            <form>
                                <input type="text" value="" placeholder="Enter email for newsletter" />
                                <input type="submit" value="" />
                            </form>
                        </div>
                        <div class="soc_icons">
                            <ul>
                                <li><a class="icon1" href="#"></a></li>
                                <li><a class="icon2" href="#"></a></li>
                                <li><a class="icon3" href="#"></a></li>
                                <li><a class="icon4" href="#"></a></li>
                                <li><a class="icon5" href="#"></a></li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
            <!-- start footer -->
            <div class="footer_bg">
                <div class="wrap">
                    <div class="footer">
                        <!-- scroll_top_btn -->
                        <script type="text/javascript">
                            $(document).ready(function () {

                                var defaults = {
                                    containerID: 'toTop', // fading element id
                                    containerHoverID: 'toTopHover', // fading element hover id
                                    scrollSpeed: 1200,
                                    easingType: 'linear'
                                };


                                $().UItoTop({easingType: 'easeOutQuart'});

                            });
                        </script>
                        <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
                        <!--end scroll_top_btn -->
                        <div class="f_nav1">
                            <ul>
                                <li><a href="#">home /</a></li>
                                <li><a href="#">support /</a></li>
                                <li><a href="#">Terms and conditions /</a></li>
                                <li><a href="#">Faqs /</a></li>
                                <li><a href="#">Contact us</a></li>
                            </ul>
                        </div>
                        <div class="copy">
                            <p class="link"><span>© All rights reserved | Template by&nbsp;<a href="http://w3layouts.com/">
                                        W3Layouts</a></span></p>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
            <script src="${linkSource}/js/bootstrap.bundle.min.js"></script>
    </body>

</html>