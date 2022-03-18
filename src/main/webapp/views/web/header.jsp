<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- start header -->
<div class="top_bg">
    <div class="wrap">
        <div class="header">
            <div class="logo">
                <a href="./home"><img src="${pageContext.request.contextPath}/views/web/images/MenStore.jpg" alt=""/></a>
            </div>
            <c:if test="${sessionScope.usersession == null}">
                <div class="log_reg">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/access">Đăng nhập</a> </li>
                        <span class="log"> | </span>
                        <li><a href="${pageContext.request.contextPath}/access">Đăng ký</a> </li>								   
                        <div class="clear"></div>
                    </ul>
                </div>
            </c:if>
            <c:if test="${sessionScope.usersession != null}">
                <div class="log_reg">             
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/information">Chào ${sessionScope.usersession.user.name}</a> </li>
                        <span class="log"> | </span>
                        <li><a href="${pageContext.request.contextPath}/access?action=logout">Đăng xuất</a> </li>								   
                        <div class="clear"></div>
                    </ul>
                </div>
            </c:if>

            <div class="web_search">
                <form action="products" method="POST">
                    
                    <input name="listType" type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {
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
                <li><a href="${pageContext.request.contextPath}/home">Trang chủ</a></li>
                <li><a href="${pageContext.request.contextPath}/products">Sản phẩm</a></li>
                <c:set var="admincheck" value="${sessionScope.usersession.user.role}" />
                <c:if test="${admincheck!=null}">
                    <c:if test="${admincheck=='admin'}">
                        <li><a href="${pageContext.request.contextPath}/admin">Admin</a></li>
                    </c:if>
                </c:if>
                
                <div class="clear"></div>
            </ul>
        </div>
        <div id="smart_nav">
            <a class="navicon" href="#menu-left"> </a>
        </div>
        <nav id="menu-left">
            <ul>
                <li><a href="${pageContext.request.contextPath}/home">Trang chủ</a></li>
                <li><a href="${pageContext.request.contextPath}/products">Sản phẩm</a></li>
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

