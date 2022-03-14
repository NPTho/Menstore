<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html>
    <head>
    <c:url var="linkSource" value="${request.contextPath}/views/web" />
    
    <title>The Fooseshoes Website Template | Details :: w3layouts</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Maven+Pro:400,900,700,500' rel='stylesheet' type='text/css'>
    <link href="${linkSource}/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <script src="${linkSource}/js/jquery.min.js" type="text/javascript"></script>
    <!-- start details -->
    <link rel="stylesheet" type="text/css" href="${linkSource}/css/productviewgallery.css" media="all" />
    <script type="text/javascript" src="${linkSource}/js/cloud-zoom.1.0.3.min.js"></script>
    <script type="text/javascript" src="${linkSource}/js/jquery.fancybox.pack.js"></script>
    <script type="text/javascript" src="${linkSource}/js/productviewgallery.js"></script>
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
    <!-- start top_js_button -->
    <script type="text/javascript" src="${linkSource}/js/easing.js"></script>
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
    <!-- start header -->
    <jsp:include page="header.jsp"/>

    <!-- start top_bg -->
    <div class="top_bg">
        <div class="wrap">
            <div class="main_top">
                <h4 class="style">PRODUCT DETAIL</h4>
            </div>
        </div>
    </div>
    <!-- start main -->
    <div class="main_bg">
        <div class="wrap">
            <div class="main">
                <!-- start content -->
                <div class="single">
                    <!-- start span1_of_1 -->
                    <div>
                        <div class="span1_of_1">
                            <!-- start product_slider -->
                            <div class="product-view">
                                <div class="product-essential">
                                    <div class="product-img-box">
<!--                                        <div class="more-views">
                                            <div class="more-views-container">
                                                <ul>
                                                    <li>
                                                        <a class="cs-fancybox-thumbs" data-fancybox-group="thumb"  href=""  title="" alt="">
                                                            <img src="" src_main=""  title="" alt="" /></a>            
                                                    </li>
                                                    <li>
                                                        <a class="cs-fancybox-thumbs" data-fancybox-group="thumb" href=""  title="" alt="">
                                                            <img src="" src_main=""  title="" alt="" /></a>
                                                    </li>
                                                    <li>
                                                        <a class="cs-fancybox-thumbs" data-fancybox-group="thumb"  href=""  title="" alt="">
                                                            <img src="" src_main=""  title="" alt="" /></a> 
                                                    </li>
                                                    <li>
                                                        <a class="cs-fancybox-thumbs" data-fancybox-group="thumb" href=""  title="" alt="">
                                                            <img src="" src_main="" title="" alt="" /></a>  
                                                    </li>
                                                    <li>
                                                        <a class="cs-fancybox-thumbs" data-fancybox-group="thumb"  href=""  title="" alt="">
                                                            <img src="" src_main="" title="" alt="" /></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>-->
                                        <div class="product-image"> 
                                            <a class="cs-fancybox-thumbs cloud-zoom" rel="adjustX:30,adjustY:0,position:'right',tint:'#202020',tintOpacity:0.5,smoothMove:2,showTitle:true,titleOpacity:0.5" data-fancybox-group="thumb" href="images/0001-2.jpg" title="Women Shorts" alt="Women Shorts">
                                                <img src="${requestScope.product.linkImage}" alt="Women Shorts" title="Women Shorts" />
                                            </a>
                                        </div>
                                        <script type="text/javascript">
                                            var prodGallery = jQblvg.parseJSON('{"prod_1":{"main":{"orig":"https://cdn.shopify.com/s/files/1/0246/3668/6402/products/black_front_ab4cc71d-5e23-462d-8938-f7f6278f4c71_540x.jpg?v=1577127966","main":"https://cdn.shopify.com/s/files/1/0246/3668/6402/products/black_front_ab4cc71d-5e23-462d-8938-f7f6278f4c71_540x.jpg?v=1577127966","thumb":"https://cdn.shopify.com/s/files/1/0246/3668/6402/products/black_front_ab4cc71d-5e23-462d-8938-f7f6278f4c71_540x.jpg?v=1577127966","label":""},"gallery":{"item_0":{"orig":"https://cdn.shopify.com/s/files/1/0246/3668/6402/products/black_front_ab4cc71d-5e23-462d-8938-f7f6278f4c71_540x.jpg?v=1577127966","main":"https://cdn.shopify.com/s/files/1/0246/3668/6402/products/black_front_ab4cc71d-5e23-462d-8938-f7f6278f4c71_540x.jpg?v=1577127966","thumb":"https://cdn.shopify.com/s/files/1/0246/3668/6402/products/black_front_ab4cc71d-5e23-462d-8938-f7f6278f4c71_540x.jpg?v=1577127966","label":""},"item_1":{"orig":"https://cdn.shopify.com/s/files/1/0246/3668/6402/products/black_back_16524b42-563c-4b82-96e1-1d8e9e521093_540x.jpg?v=1577127966","main":"https://cdn.shopify.com/s/files/1/0246/3668/6402/products/black_back_16524b42-563c-4b82-96e1-1d8e9e521093_540x.jpg?v=1577127966","thumb":"https://cdn.shopify.com/s/files/1/0246/3668/6402/products/black_back_16524b42-563c-4b82-96e1-1d8e9e521093_540x.jpg?v=1577127966","label":""},"item_2":{"orig":"https://cdn.shopify.com/s/files/1/0246/3668/6402/products/black_scull_f04edce0-d7d7-4c91-bdd1-c7508832d8db_540x.jpg?v=1577127966","main":"https://cdn.shopify.com/s/files/1/0246/3668/6402/products/black_scull_f04edce0-d7d7-4c91-bdd1-c7508832d8db_540x.jpg?v=1577127966","thumb":"https://cdn.shopify.com/s/files/1/0246/3668/6402/products/black_scull_f04edce0-d7d7-4c91-bdd1-c7508832d8db_540x.jpg?v=1577127966","label":""},"item_3":{"orig":"https://cdn.shopify.com/s/files/1/0246/3668/6402/products/black_fold_023c961c-47b5-41f6-bde1-6a850ab2c5bc_540x.jpg?v=1577127966","main":"https://cdn.shopify.com/s/files/1/0246/3668/6402/products/black_fold_023c961c-47b5-41f6-bde1-6a850ab2c5bc_540x.jpg?v=1577127966","thumb":"https://cdn.shopify.com/s/files/1/0246/3668/6402/products/black_fold_023c961c-47b5-41f6-bde1-6a850ab2c5bc_540x.jpg?v=1577127966 ","label":""},"item_4":{"orig":"images/0001-4.jpg","main":"images/large/0001-4.jpg","thumb":"images/small/0001-4.jpg","label":""}},"type":"simple","video":false}}'),
                                                    gallery_elmnt = jQblvg('.product-img-box'),
                                                    galleryObj = new Object(),
                                                    gallery_conf = new Object();
                                            gallery_conf.moreviewitem = '<a class="cs-fancybox-thumbs" data-fancybox-group="thumb"  href=""  title="" alt=""><img src="" src_main="" title="" alt="" /></a>';
                                            gallery_conf.animspeed = 200;
                                            jQblvg(document).ready(function () {
                                                galleryObj[1] = new prodViewGalleryForm(prodGallery, 'prod_1', gallery_elmnt, gallery_conf, '.product-image', '.more-views', 'http:');
                                                jQblvg('.product-image .cs-fancybox-thumbs').absoluteClick();
                                                jQblvg('.cs-fancybox-thumbs').fancybox({prevEffect: 'none',
                                                    nextEffect: 'none',
                                                    closeBtn: true,
                                                    arrows: true,
                                                    nextClick: true,
                                                    helpers: {
                                                        thumbs: {
                                                            position: 'bottom'
                                                        }
                                                    }
                                                });
                                                jQblvg('#wrap').css('z-index', '100');
                                                jQblvg('.more-views-container').elScroll({type: 'vertical', elqty: 4, btn_pos: 'border', scroll_speed: 400});

                                            });

                                            function initGallery(a, b, element) {
                                                galleryObj[a] = new prodViewGalleryForm(prods, b, gallery_elmnt, gallery_conf, '.product-image', '.more-views', '');
                                            }
                                            ;
                                        </script>
                                    </div>
                                </div>
                            </div>
                            <!-- end product_slider -->
                        </div>
                        <!-- start span1_of_1 -->
                        <div class="span1_of_1_des">
                            <div class="desc1">
                                <h3>${requestScope.product.productName}</h3>
                                <h5>${requestScope.product.price - requestScope.product.price*(requestScope.product.discount)/100} 
                                    <c:if test="${requestScope.product.discount > 0}"><span>${requestScope.product.price}</span> </c:if> VNĐ
                                </h5>
                                <div class="available">
                                    <div class="btn_form">
                                        <form action="cart?action=buy" method="post">
                                            <input type="hidden" name="id" value="${requestScope.product.productId}">
                                            <input type="hidden" name="price" value="${requestScope.product.price - requestScope.product.price*(requestScope.product.discount/100)}">
                                            <input type="submit" value="Add to Cart" />
                                        </form>

                                    </div>
                                    <p>Size: ${requestScope.product.size}, Đồ đẹp bao mặc, 1 đêm duy nhất 1 đêm duy nhất</p>
                                    <c:if test="${requestScope.product.discount > 0}"><p>Sản phẩm được giảm giá lên tới ${requestScope.product.discount}%, nhanh tayyyy</p></c:if>
                                </div>
                                <div class="share-desc">
                                    <div class="share">
                                        <h4>Share Product :</h4>
                                        <ul class="share_nav">
                                            <li><a href="#"><img src="images/facebook.png" title="facebook"></a></li>
                                            <li><a href="#"><img src="images/twitter.png" title="Twiiter"></a></li>
                                            <li><a href="#"><img src="images/rss.png" title="Rss"></a></li>
                                            <li><a href="#"><img src="images/gpluse.png" title="Google+"></a></li>
                                        </ul>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <!-- start left content_bottom -->
                        <div class="left_content_btm">
                            <!--			   		<p class="para">Long arm T-shirt with skull, super comfortable, 100% heavy cotton fabric, long-lasting colors. Another skull design that will make you look great anywhere.</p>-->
                            <!-- start tabs -->
                            <!--				   	<section class="tabs">
                                                        <input id="tab-1" type="radio" name="radio-set" class="tab-selector-1" checked="checked">
                                                            <label for="tab-1" class="tab-label-1">overview</label>
                                                    
                                                        <input id="tab-2" type="radio" name="radio-set" class="tab-selector-2">
                                                            <label for="tab-2" class="tab-label-2">consumer</label>
                                                    
                                                        <input id="tab-3" type="radio" name="radio-set" class="tab-selector-3">
                                                            <label for="tab-3" class="tab-label-3">semiconductor</label>
                                              
                                                                <div class="clear-shadow"></div>
                                                                    
                                                            <div class="content">
                                                                    <div class="content-1">
                                                                            <p class="para top"><span>LOREM IPSUM</span> There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined </p>
                                                                                    <ul>
                                                                                            <li>Research</li>
                                                                                            <li>Design and Development</li>
                                                                                            <li>Porting and Optimization</li>
                                                                                            <li>System integration</li>
                                                                                            <li>Verification, Validation and Testing</li>
                                                                                            <li>Maintenance and Support</li>
                                                                                    </ul>
                                                                                    <div class="clear"></div>
                                                                            </div>
                                                                    <div class="content-2">
                                                                                    <p class="para"><span>WELCOME </span> Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections </p>
                                                                                    <ul class="qua_nav">
                                                                                            <li>Multimedia Systems</li>
                                                                                            <li>Digital media adapters</li>
                                                                                            <li>Set top boxes for HDTV and IPTV Player applications on various Operating Systems and Hardware Platforms</li>
                                                                                    </ul>
                                                                            </div>
                                                                    <div class="content-3">
                                                                            <p class="para top"><span>LOREM IPSUM</span> There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined </p>
                                                                                    <ul>
                                                                                            <li>Research</li>
                                                                                            <li>Design and Development</li>
                                                                                            <li>Porting and Optimization</li>
                                                                                            <li>System integration</li>
                                                                                            <li>Verification, Validation and Testing</li>
                                                                                            <li>Maintenance and Support</li>
                                                                                    </ul>
                                                                                    <div class="clear"></div>
                                                                            </div>
                                                            </div>
                                                            </section>-->
                            <!-- end tabs -->
                        </div>
                        <!-- end left content_bottom -->
                    </div>
                    <!-- start left_sidebar -->
                </div>	
                <!-- end content -->
            </div>
        </div>
    </div>
    <jsp:include page="Footer.jsp"/>
</body>
</html>