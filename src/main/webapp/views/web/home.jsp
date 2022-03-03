<%-- 
    Document   : home
    Created on : Mar 2, 2022, 9:47:53 PM
    Author     : MyPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- ĐÃ SỬA -->

<!DOCTYPE HTML>
<html>
    <head>
        <title>The Fooseshoes Website Template | Home :: w3layouts</title>
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
        <!-- start slider -->
        <link href="${pageContext.request.contextPath}/views/web/css/slider.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="${pageContext.request.contextPath}/views/web/js/jquery.eislideshow.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/views/web/js/easing.js"></script>
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
        <!-- Start header -->
        <jsp:include page="header.jsp"/>
         <!-- End Header -->
        
        <!-- start slider -->
        <div class="slider">
            <!---start-image-slider---->
            <div class="image-slider">
                <div class="wrapper">
                    <div id="ei-slider" class="ei-slider">
                        <ul class="ei-slider-large">
                            <li>
                                <img src="${pageContext.request.contextPath}/views/web/images/slider-image2.jpg" alt="image04"/>
                                <div class="ei-title">
                                    <h3 class="btn">$145.99</h3>
                                    <h2>Chelsea Boot <br>	2022 collections</h2>
                                    <h3 class="active">This is Chelsea boot from new collections<br>
                                        
                                    </h3>
                                    <h3>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_1.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_2.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_3.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_4.png" alt=""></a>
                                    </h3>
                                </div>
                            </li>
                            
                            <li>
                                <img src="${pageContext.request.contextPath}/views/web/images/slider-image2.jpg" alt="image04"/>
                                <div class="ei-title">
                                    <h3 class="btn">$145.99</h3>
                                    <h2>Chelsea Boot <br>	2022 collections</h2>
                                    <h3 class="active">This is Chelsea boot from new collections<br>
                                        
                                    </h3>
                                    <h3>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_1.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_2.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_3.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_4.png" alt=""></a>
                                    </h3>
                                </div>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/views/web/images/slider-image2.jpg" alt="image04"/>
                                <div class="ei-title">
                                    <h3 class="btn">$145.99</h3>
                                    <h2>Chelsea Boot <br>	2022 collections</h2>
                                    <h3 class="active">This is Chelsea boot from new collections<br>
                                        
                                    </h3>
                                    <h3>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_1.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_2.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_3.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_4.png" alt=""></a>
                                    </h3>
                                </div>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/views/web/images/slider-image2.jpg" alt="image04"/>
                                <div class="ei-title">
                                    <h3 class="btn">$145.99</h3>
                                    <h2>Chelsea Boot <br>	2022 collections</h2>
                                    <h3 class="active">This is Chelsea boot from new collections<br>
                                        
                                    </h3>
                                    <h3>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_1.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_2.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_3.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_4.png" alt=""></a>
                                    </h3>
                                </div>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/views/web/images/slider-image2.jpg" alt="image04"/>
                                <div class="ei-title">
                                    <h3 class="btn">$145.99</h3>
                                    <h2>Chelsea Boot <br>	2022 collections</h2>
                                    <h3 class="active">This is Chelsea boot from new collections<br>
                                        
                                    </h3>
                                    <h3>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_1.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_2.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_3.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_4.png" alt=""></a>
                                    </h3>
                                </div>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/views/web/images/slider-image2.jpg" alt="image04"/>
                                <div class="ei-title">
                                    <h3 class="btn">$145.99</h3>
                                    <h2>Chelsea Boot <br>	2022 collections</h2>
                                    <h3 class="active">This is Chelsea boot from new collections<br>
                                        
                                    </h3>
                                    <h3>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_1.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_2.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_3.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_4.png" alt=""></a>
                                    </h3>
                                </div>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/views/web/images/slider-image2.jpg"/>
                                <div class="ei-title">
                                    <h3 class="btn">$145.99</h3>
                                    <h2>Chelsea Boot <br>	2022 collections</h2>
                                    <h3 class="active">This is Chelsea boot from new collections<br>
                                        
                                    </h3>
                                    <h3>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_1.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_2.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_3.png" alt=""></a>
                                        <a class="ei_icons" href="#########"><img src="${pageContext.request.contextPath}/views/web/images/icon_4.png" alt=""></a>
                                    </h3>
                                </div>
                            </li>
                        </ul><!-- ei-slider-large -->
                        <ul class="ei-slider-thumbs">
                            <li class="ei-slider-element">Current</li>
                            <li>
                                <a href="#">
                                    <span class="active">T Shirt</span>
                                    <p>now of $145.99</p> 
                                </a>
                                <img src="${pageContext.request.contextPath}/views/web/images/thumbs/1.jpg" alt="thumb01" />
                            </li>
                            <li class="hide"><a href="#"><span>T Shirt</span><p>limited edition</p> </a><img src="${pageContext.request.contextPath}/views/web/images/thumbs/2.jpg" alt="thumb01" /></li>
                            <li  class="hide1"><a href="#"><span>T Shirt</span><p>summer is coming</p></a><img src="${pageContext.request.contextPath}/views/web/images/thumbs/3.jpg" alt="thumb02" /></li>
                            <li class="hide1"><a href="#"><span>T Shirt</span><p>all colors available</p> </a><img src="${pageContext.request.contextPath}/views/web/images/thumbs/4.jpg" alt="thumb03" /></li>
                            <li><a href="#"><span>T Shirt</span><p>free delivery</p> </a><img src="${pageContext.request.contextPath}/views/web/images/thumbs/1.jpg" alt="thumb04" /></li>
                            <li><a href="#"><span>T Shirt</span><p>limited edition</p> </a><img src="${pageContext.request.contextPath}/views/web/images/thumbs/5.jpg" alt="thumb05" /></li>
                            <li><a href="#"><span>T Shirt</span><p>limited edition</p> </a><img src="${pageContext.request.contextPath}/views/web/images/thumbs/3.jpg" alt="thumb07" /></li>
                        </ul><!-- ei-slider-thumbs -->
                    </div><!-- ei-slider -->
                </div><!-- wrapper -->
            </div>
            <!---End-image-slider---->	
        </div>
        <!-- start image1_of_3 -->
        <div class="top_bg">
            <div class="wrap">
                <div class="main1">
                    <div class="image1_of_3">
                        <img src="https://cdn.shopify.com/s/files/1/0246/3668/6402/products/black_front_ab4cc71d-5e23-462d-8938-f7f6278f4c71_2048x2048.jpg?v=1577127966" alt=""/>
                        <a href="details.html"><span class="tag">on sale</span></a>
                    </div>
                    <div class="image1_of_3">
                        <img src="https://www.hobbycorner.co.nz/user/images/6340_300_300.jpg?t=1507071001" alt=""/>
                        <a href="details.html"><span class="tag">special offers</span></a>
                    </div>
                    <div class="image1_of_3">
                        <img src="https://znews-photo.zadn.vn/w660/Uploaded/rohunwa/2020_04_13/skinny_jeans.jpg" alt=""/>
                        <a href="details.html"><span class="tag">must have</span></a>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>

        <!-- start main -->
        <div class="main_bg">
            <div class="wrap">
                <div class="main">
                    <div class="top_main">
                        <h2>new arrivals on MenStore</h2>
                        <a href="######">show all</a>
                        <div class="clear"></div>
                    </div>
                    <!-- start grids_of_3 -->
                    <div class="grids_of_3">
                        <div class="grid1_of_3">
                            <a href="######">
                                <img src="data:image/jpeg;base64,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"alt=""/>
                                <h3>even & odd</h3>
                                <span class="price">$145,99</span>
                            </a>
                        </div>
                        <div class="grid1_of_3">
                            <a href="######">
                                <img src="data:image/jpeg;base64,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" alt=""/>
                                <h3>buffalo decollete</h3>
                                <span class="price">$185,99</span>
                                <span class="price1 bg">on sale</span>
                            </a>
                        </div>
                        <div class="grid1_of_3">
                            <a href="######">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0d-DC6mbnZVJY2Ld4ynBH0l42X38nCDqC_A&usqp=CAU" alt=""/>
                                <h3>even & odd</h3>
                                <span class="price">$145,99</span>
                            </a>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="top_main">
                        <h2>best sellers of the month</h2>
                        <a href="######">show all</a>
                        <div class="clear"></div>
                    </div>
                    <!-- start grids_of_3 -->
                    <div class="grids_of_3">
                        <div class="grid1_of_3">
                            <a href="######">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2NrICZGfSxeHsGhc4b4NhJE9yQFf-2gsD6A&usqp=CAU" alt=""/>
                                <h3>buffalo decollete</h3>
                                <span class="price">$145,99</span>
                            </a>
                        </div>
                        <div class="grid1_of_3">
                            <a href="######">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKdevpitJMV4NZ_p4SNwRVGy6Vqhg-M_Kwew&usqp=CAU" alt=""/>
                                <h3>even & odd</h3>
                                <span class="price">$185,99</span>
                            </a>
                        </div>
                        <div class="grid1_of_3">
                            <a href="######">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEklXWJxshj9SKQ-jhRnj4iMux7zaZ-mR7BA&usqp=CAU" alt=""/>
                                <h3>buffalo decollete</h3>
                                <span class="price">$145,99</span>
<!--                                <span class="price1 bg1">out of stock</span>-->
                            </a>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                    <!-- start grids_of_2 -->
                    
                </div>
            </div>
        </div>
        <!-- start footer -->
        <div class="footer_top">
            <div class="wrap">
                <div class="footer">
                    <!-- start grids_of_3 -->
                    <div class="span_of_3">
                        <div class="span1_of_3">
                            <h3>text edit</h3>
                            <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>
                        </div>
                        <div class="span1_of_3">
                            <h3>twitter widget</h3>
                            <p><a href="#">@Contrarypopular</a> I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give <a href="#">@accountofsystem</a> </p>
                            <p class="top">19 days ago</p>
                            <p class="top"><a href="#">@Contrarypopular</a> I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give <a href="#">@accountofsystem</a> </p>
                            <p class="top">19 days ago</p>
                        </div>
                        <div class="span1_of_3">
                            <h3>flickr widget</h3>
                            <ul class="f_nav">
                                <li><a href="#"><img src="${pageContext.request.contextPath}/views/web/images/f_pic1.jpg" alt="" /> </a></li>
                                <li><a href="#"><img src="${pageContext.request.contextPath}/views/web/images/f_pic2.jpg" alt="" /> </a></li>
                                <li><a href="#"><img src="${pageContext.request.contextPath}/views/web/images/f_pic3.jpg" alt="" /> </a></li>
                                <li><a href="#"><img src="${pageContext.request.contextPath}/views/web/images/f_pic4.jpg" alt="" /> </a></li>
                                <li><a href="#"><img src="${pageContext.request.contextPath}/views/web/images/f_pic5.jpg" alt="" /> </a></li>
                                <li><a href="#"><img src="${pageContext.request.contextPath}/views/web/images/f_pic6.jpg" alt="" /> </a></li>
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
                            <input type="submit" value=""/>
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
                        <p class="link"><span>© All rights reserved | Template by&nbsp;<a href="http://w3layouts.com/"> W3Layouts</a></span></p>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </body>
</html>