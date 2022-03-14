
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

        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />

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
                                            <a href="${pageContext.request.contextPath}/cart?action=update&id=${item.product.productId}&direc=down"><i class="material-icons">arrow_downward</i></a>
                                            <span class="d-block"> ${item.quantity} </span>
                                            <a href="${pageContext.request.contextPath}/cart?action=update&id=${item.product.productId}&direc=up"><i class="material-icons">arrow_upward</i></a>
                                            <i class="fa-solid fa-angle-right ml-1"></i>
                                            <span class="d-block ml-5 font-weight-bold">${item.soldPrice} VNĐ</span>
                                            <a href="${pageContext.request.contextPath}/cart?action=remove&id=${item.product.productId}"><i class="material-icons">close</i></a>
                                        </div>
                                    </div>
                                </c:forEach>

                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>

                        </div>


                        <div  class="col-md-4 stick-board">
                            <div class="payment-info">
                                <form action="cart" method="post">
                                    <input type="hidden" name="action" value="checkout"/>
                                        <div class="d-flex justify-content-between align-items-center"><span>Card details</span>${message}<img
                                            class="rounded"
                                            src="https://img.hoidap247.com/picture/question/20200508/large_1588936738888.jpg"
                                            width="42">
                                    </div>

                                    <div>
                                        <label class="credit-card-label">Name</label><input value="${sessionScope.usersession.user.name}"  name="name" type="text"
                                                                                            class="form-control credit" placeholder="Name" required="true">
                                    </div>

                                    <div>
                                        <label class="credit-card-label">Phone number</label><input value="${sessionScope.usersession.user.phoneNumber}" name="phone" type="text"
                                                                                                    class="form-control credit" placeholder="Phone number" required="true">
                                    </div>

                                    <div>
                                        <label class="credit-card-label">Address</label><input value="${sessionScope.usersession.user.address}" name="address" type="text"
                                                                                               class="form-control credit" placeholder="Address" required="true">
                                    </div>


                                    <div>
                                        <label class="credit-card-label">Điểm </label><input name="point" type="text"
                                            class="form-control credit" disabled="" 
                                            placeholder="Điểm hiện có: ${sessionScope.usersession.user.point==null?0:sessionScope.usersession.user.point}, giảm ${sessionScope.usersession.user.point==null?0:sessionScope.usersession.user.point}k khi sử dụng">
                                    </div>

                                    <div class="row" style="margin-top: 7px; margin-bottom: 10px;">
                                        <div class="col-md-6">
                                            <input type="radio" name="point" value="yes"/><span>Sử dụng</span> 
                                        </div>
                                        <div class="col-md-6">
                                            <input type="radio" name="point" value="no" checked="checked" /><span>Không Sử dụng</span> 
                                        </div>
                                    </div>

                                   

                                    <div>
                                        <label class="credit-card-label">Note: </label>
                                        <textarea name="note" type="text" class="form-control credit" placeholder="Note"> 
                                        </textarea>
                                    </div>

                                    <button class="btn btn-primary btn-block d-flex justify-content-between mt-3"
                                            type="submit"><span>${sessionScope.cart.subTotal/1000}k (VNĐ)</span><span>Checkout<i
                                                class="fa fa-long-arrow-right ml-1"></i></span></button>
                                </form>   

                                <hr class="line">
                                <form action="cart" method="post">
                                    <input type="hidden" name="action" value="checkVoucher"/>
                                    <div class="row">
                                        <div class="col-sm-8">
                                            <input name="voucherId" type="text"
                                                   class="form-control credit" placeholder="Voucher">
                                        </div>
                                        <div class="col-sm-4">
                                            <input style="display: block;height: 100%; border-radius: 10%; border: none; color: white; background-color: gray" type="submit" value="Kiểm tra"/>
                                        </div>
                                        <div>${voucher_message}</div>
                                    </div>
                                </form>

                                <hr class="line">
                                <div class="d-flex justify-content-between information"><span>Total</span><span>${sessionScope.cart.total/1000}k (VNĐ)</span></div>

                                <div class="d-flex justify-content-between information">
                                    <span>Discount: </span><span>${sessionScope.cart.discounted/1000}k (VNĐ)</span>
                                </div>

                                <div class="d-flex justify-content-between information">
                                    <span>Final total:</span><span>${sessionScope.cart.subTotal/1000}k (VNĐ)</span>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- start image1_of_3 -->

            <!-- start footer -->
            <jsp:include page="Footer.jsp"/>
            <script src="${linkSource}/js/bootstrap.bundle.min.js"></script>
    </body>

</html>