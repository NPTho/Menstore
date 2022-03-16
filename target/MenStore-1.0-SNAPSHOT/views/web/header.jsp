<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- start header -->
<div class="top_bg">
    <div class="wrap">
        <div class="header">
            <div class="logo">
                <a href="/home"><img src="${pageContext.request.contextPath}/views/web/images/MenStore.jpg" alt=""/></a>
            </div>
            <c:if test="${sessionScope.usersession == null}">
                <div class="log_reg">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/access">Login</a> </li>
                        <span class="log"> or </span>
                        <li><a href="${pageContext.request.contextPath}/access">Register</a> </li>								   
                        <div class="clear"></div>
                    </ul>
                </div>
            </c:if>
            <c:if test="${sessionScope.usersession != null}">
                <div class="log_reg">             
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/information">Hello ${sessionScope.usersession.user.name}</a> </li>
                        <span class="log"> | </span>
                        <li><a href="${pageContext.request.contextPath}/access?action=logout">Log out</a> </li>								   
                        <div class="clear"></div>
                    </ul>
                </div>
            </c:if>

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
                <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
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
                <li><a><i  class="art"></i><span class="color1">${(sessionScope.usersession.user.point == null)?0:sessionScope.usersession.user.point}</span></a></li>
                <li><a href="${pageContext.request.contextPath}/cart"><i  class="cart"></i><span>${(sessionScope.cart.itemCount == null)?0:sessionScope.cart.itemCount}</span></a></li>
            </ul>
        </div>
        <div class="clear"></div>
    </div>
</div>

