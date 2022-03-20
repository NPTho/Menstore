<%-- 
    Document   : login
    Created on : Mar 2, 2022, 9:50:11 PM
    Author     : MyPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Da Sua
-->

<!DOCTYPE HTML>
<html>
    <head>
        <title>Đăng nhập</title>
        <link rel="icon" type="image/png"  href="${pageContext.request.contextPath}/views/common/images/login-logo.png">

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
        <jsp:include page="../web/header.jsp"/>

        <!-- start top_bg -->
        <div class="top_bg">
            <div class="wrap">
                <div class="main_top">
                    <h4 class="style">Login/Register</h4>
                </div>
            </div>
        </div>
        <!-- start main -->
        <div class="main_bg">
            <div class="wrap">
                <div class="main">
                    <div class="login_left">
                        <h3>login customers</h3>
                        <p>if you have any account with us, please log in.</p>
                        <!-- start registration -->
                        <div class="registration">
                            <!-- [if IE] 
                                < link rel='stylesheet' type='text/css' href='ie.css'/>  
                             [endif] -->  

                            <!-- [if lt IE 7]>  
                                < link rel='stylesheet' type='text/css' href='ie6.css'/>  
                            <! [endif] -->  
                            <script>
                                (function () {

                                    // Create input element for testing
                                    var inputs = document.createElement('input');

                                    // Create the supports object
                                    var supports = {};

                                    supports.autofocus = 'autofocus' in inputs;
                                    supports.required = 'required' in inputs;
                                    supports.placeholder = 'placeholder' in inputs;

                                    // Fallback for autofocus attribute
                                    if (!supports.autofocus) {

                                    }

                                    // Fallback for required attribute
                                    if (!supports.required) {

                                    }

                                    // Fallback for placeholder attribute
                                    if (!supports.placeholder) {

                                    }

                                    // Change text inside send button on submit
                                    var send = document.getElementById('register-submit');
                                    if (send) {
                                        send.onclick = function () {
                                            this.innerHTML = '...Sending';
                                        }
                                    }

                                })();
                            </script>
                            <div class="registration_left">
                                <div class="registration_form">
                                    <!-- Form -->
                                    <form id="registration_form" action="access" method="post">
                                        <input type="hidden" name="action" value="login"/>
                                        <div>
                                            <label>
                                                <input name="username" placeholder="Username" type="text" tabindex="1" required="">
                                            </label>
                                        </div>
                                        <div>
                                            <label>	
                                                <input name="password" placeholder="password" type="password" tabindex="2" required="">
                                            </label>
                                        </div>									
                                        <div>
                                            <input type="submit" value="sign in" id="register-submit"> <span style="color: red;">${login_mess}</span>
                                        </div>
                                    </form>
                                    <!-- /Form -->
                                </div>
                            </div>
                        </div>
                        <!-- end registration -->
                    </div>
                    <div class="login_left">
                        <h3>register new customers</h3>
                        <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping address, view and track your orders in your accoung and more.</p>
                        <div class="registration_left">
                            <div class="registration_form">
                                <!-- Form -->
                                <form id="registration_form" action="access" method="post">
                                    <input type="hidden" name="action" value="register"/>
                                    <div>
                                        <label>
                                            <input name="register_name" placeholder="Name" type="text" tabindex="3" required="" autofocus="">
                                        </label>
                                    </div>

                                    <div>
                                        <label>
                                            <input name="register_username" placeholder="Username" type="text" tabindex="4" required="">
                                        </label>
                                    </div>
                                    <div>
                                        <label>
                                            <input name="register_password" placeholder="password" type="password" tabindex="5" required="">
                                        </label>
                                    </div>						
                                    <div>
                                        <label>
                                            <input name="register_retypePassword" placeholder="retype password" type="password" tabindex="6" required="">
                                        </label>
                                    </div>
                                    <div>
                                        <label>
                                            <input name="register_phoneNumber" placeholder="Phone number" type="text" tabindex="7" required="">
                                        </label>
                                    </div>
                                    <div>
                                        <label>
                                            <input name="register_address" placeholder="Address" type="text" tabindex="8" required="">
                                        </label>
                                    </div>
                                    <div>
                                        <input type="submit" value="create an account" id="register-submit"> <span> ${register_mess}</span>
                                    </div>

                                </form>
                                <!-- /Form -->
                            </div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <!-- start footer -->
        <jsp:include page="../web/Footer.jsp"/>
    </body>
</html>