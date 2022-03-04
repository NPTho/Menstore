 <!-- start header -->
        <div class="top_bg">
            <div class="wrap">
                <div class="header">
                    <div class="logo">
                        <a href="/home"><img src="${pageContext.request.contextPath}/views/web/images/MenStore.jpg" alt=""/></a>
                    </div>
                    <div class="log_reg">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/login">Login</a> </li>
                            <span class="log"> or </span>
                            <li><a href="${pageContext.request.contextPath}/login">Register</a> </li>								   
                            <div class="clear"></div>
                        </ul>
                    </div>	
                    <div class="web_search">
                        <form>
                            <input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = '';
                                    }">
                            <input type="submit" value=" " />
                        </form>
                    </div>						
                    <div class="clear"></div>
                </div>	
            </div>
        </div>
        <!-- start header_btm -->
        <div  class="wrap">
            <div class="header_btm">
                <div class="menu">
                    <ul>
                        <li class="active"><a href="${pageContext.request.contextPath}/home">Home</a></li>
                        <li><a href="${pageContext.request.contextPath}/products">Product</a></li>
                        <div class="clear"></div>
                    </ul>
                </div>
                <div id="smart_nav">
                    <a class="navicon" href="#menu-left"> </a>
                </div>
                <nav id="menu-left">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
                        <li><a href="${pageContext.request.contextPath}/products">Product</a></li>
                        <div class="clear"></div>
                    </ul>
                </nav>
                <div class="header_right">
                    <ul>
                        <li><a href="#"><i  class="art"></i><span class="color1">30</span></a></li>
                        <li><a href="${pageContext.request.contextPath}/cart"><i  class="cart"></i><span>0</span></a></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
                    
        