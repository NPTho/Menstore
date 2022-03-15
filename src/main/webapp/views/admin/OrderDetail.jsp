<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="en">

    <head>
        <meta charset="utf-8" />
        <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/views/admin/img/apple-icon.png">
        <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/views/admin/img/favicon.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>Customer order</title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
        <!--     Fonts and icons     -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- CSS Files -->
        <link href="${pageContext.request.contextPath}/views/admin/css/bootstrap.min.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/views/admin/css/light-bootstrap-dashboard.css?v=2.0.0 " rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/views/admin/css/qldata.css" rel="stylesheet"/>
    </head>

    <body>

        <%@include file="../admin/CheckLogin.jsp" %>

        <div class="wrapper">

            <jsp:include page="Menu.jsp"/>  


            <div class="main-panel">
                <!-- Navbar -->
                <nav class="navbar navbar-expand-lg " color-on-scroll="500">
                    <div class="container-fluid">
                        <form action="orderDetail" method="post"> 
                            <input type="hidden" name="action" value="search"/>
                            <input name="keyword" class="form-control form-control-sm mr-3 w-75" type="text" placeholder="Enter ID..." aria-label="Search">
                        </form>
                    </div>
                </nav>
                <!-- End Navbar -->
                <div class="content">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="container-fluid"> 
                                <div class="card-body ">
                                    <div class="table-responsive">
                                        <div class="table-wrapper">

                                            <div class="table-title">
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <h2>CHI TIẾT HÓA ĐƠN</h2>
                                                    </div>

                                                </div>
                                            </div>
                                            <table class="table table-striped table-hover">
                                                <thead>
                                                    <tr>
                                                        <th><span>Mã</span><a href="${pageContext.request.contextPath}/orderDetail?action=sort&direction=down&by=id"><i class="material-icons">arrow_downward</i></a><a href="${pageContext.request.contextPath}/admin?action=sort&direction=up&by=id"><i class="material-icons">arrow_upward</i></a></th>

                                                        <th><span>Mã sản phẩm</span><a href="${pageContext.request.contextPath}/orderDetail?action=sort&direction=down&by=discounted"><i class="material-icons">arrow_downward</i></a><a href="${pageContext.request.contextPath}/admin?action=sort&direction=up&by=discounted"><i class="material-icons">arrow_upward</i></a></th>
                                                        <th><span>Giá bán ra</span><a href="${pageContext.request.contextPath}/orderDetail?action=sort&direction=down&by=total"><i class="material-icons">arrow_downward</i></a><a href="${pageContext.request.contextPath}/admin?action=sort&direction=up&by=total"><i class="material-icons">arrow_upward</i></a></th>
                                                        <th>Số lượng<a href="${pageContext.request.contextPath}/orderDetail?action=sort&direction=down&by=date"><i class="material-icons">arrow_downward</i></a><a href="${pageContext.request.contextPath}/admin?action=sort&direction=up&by=date"><i class="material-icons">arrow_upward</i></a></th>
                                                        <th>Thành tiền</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:set var="orderDetailList" value="${requestScope.list}" />
                                                    <c:set var="count" value="${0}" />

                                                    <c:forEach var="orderDetail" items="${orderDetailList}">
                                                        <tr>
                                                            <td>${orderDetail.invoiceId}</td>
                                                            <td>${orderDetail.productId}</td>
                                                            <td>${orderDetail.soldPrice}</td>
                                                            <td>${orderDetail.quantity}</td>
                                                            <td>${orderDetail.soldPrice * orderDetail.quantity}</td>
                                                        </tr>
                                                        <c:set var="count" value="${count + 1}" />
                                                    </c:forEach>
                                                </tbody>

                                            </table>
                                            <div class="clearfix">
                                                <div class="hint-text">Showing <b>${currentPage}</b> out of <b>${noOfPages}</b> entries</div>

                                                <c:choose>

                                                    <c:when test = "${param.action == 'sort'}">
                                                        <ul class="pagination">

                                                            <c:if test="${currentPage != 1}">
                                                                <li class="page-item"><a href="orderDetail?action=sort&direction=${param.direction}&by=${param.by}&page=${currentPage - 1}">Previous</a></li>
                                                                </c:if>
                                                                <c:forEach begin="1" end="${noOfPages}" var="i">
                                                                    <c:choose>
                                                                        <c:when test="${currentPage eq i}">
                                                                        <li class="page-item"><a class="page-link">${i}</a></li>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                        <li class="page-item"><a href="orderDetail?action=sort&direction=${param.direction}&by=${param.by}&page=${i}" class="page-link">${i}</a></li>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </c:forEach>
                                                                <c:if test="${currentPage lt noOfPages}">
                                                                <li class="page-item"><a href="orderDetail?action=sort&direction=${param.direction}&by=${param.by}&page=${currentPage + 1}">Next</a></li>
                                                                </c:if>                
                                                        </ul>
                                                    </c:when>

                                                    <c:when test = "${param.action == 'listBy'}">
                                                        <ul class="pagination">

                                                            <c:if test="${currentPage != 1}">
                                                                <li class="page-item"><a href="orderDetail?action=listBy&category=${param.category}&page=${currentPage - 1}">Previous</a></li>
                                                                </c:if>
                                                                <c:forEach begin="1" end="${noOfPages}" var="i">
                                                                    <c:choose>
                                                                        <c:when test="${currentPage eq i}">
                                                                        <li class="page-item"><a class="page-link">${i}</a></li>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                        <li class="page-item"><a href="orderDetail?action=listBy&category=${param.category}&page=${i}" class="page-link">${i}</a></li>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </c:forEach>

                                                            <c:if test="${currentPage lt noOfPages}">
                                                                <li class="page-item"><a href="orderDetail?action=listBy&category=${param.category}&page=${currentPage + 1}">Next</a></li>
                                                                </c:if>                
                                                        </ul>
                                                    </c:when>

                                                    <c:when test = "${param.action == 'search'}">
                                                        <ul class="pagination">

                                                            <c:if test="${currentPage != 1}">
                                                                <li class="page-item"><a href="orderDetail?action=search&by=${param.by}&keyword=${param.keyword}&page=${currentPage - 1}">Previous</a></li>
                                                                </c:if>
                                                                <c:forEach begin="1" end="${noOfPages}" var="i">
                                                                    <c:choose>
                                                                        <c:when test="${currentPage eq i}">
                                                                        <li class="page-item"><a class="page-link">${i}</a></li>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                        <li class="page-item"><a href="orderDetail?action=search&by=${param.by}&keyword=${param.keyword}&page=${i}" class="page-link">${i}</a></li>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </c:forEach>

                                                            <c:if test="${currentPage lt noOfPages}">
                                                                <li class="page-item"><a href="orderDetail?action=search&by=${param.by}&keyword=${param.keyword}&page=${currentPage + 1}">Next</a></li>
                                                                </c:if>                
                                                        </ul>
                                                    </c:when>

                                                    <c:otherwise>
                                                        <ul class="pagination">

                                                            <c:if test="${currentPage != 1}">
                                                                <li class="page-item"><a href="orderDetail?page=${currentPage - 1}">Previous</a></li>
                                                                </c:if>
                                                                <c:forEach begin="1" end="${noOfPages}" var="i">
                                                                    <c:choose>
                                                                        <c:when test="${currentPage eq i}">
                                                                        <li class="page-item"><a class="page-link">${i}</a></li>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                        <li class="page-item"><a href="orderDetail?page=${i}" class="page-link">${i}</a></li>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </c:forEach>

                                                            <c:if test="${currentPage lt noOfPages}">
                                                                <li class="page-item"><a href="orderDetail?page=${currentPage + 1}">Next</a></li>

                                                            </c:if>                
                                                        </ul>
                                                    </c:otherwise>
                                                </c:choose>


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
        <jsp:include page="Footer.jsp"/>
    </div>

</body>
<!--   Core JS Files   -->
<script src="${pageContext.request.contextPath}/views/admin/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/views/admin/js/core/popper.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/views/admin/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="${pageContext.request.contextPath}/views/admin/js/plugins/bootstrap-switch.js"></script>
<!--  Chartist Plugin  -->
<script src="${pageContext.request.contextPath}/views/admin/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="${pageContext.request.contextPath}/views/admin/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="${pageContext.request.contextPath}/views/admin/js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $("#selectAllOrderCheckBox").click(function () {
            $(".CustomerOrderCheckBox").not(this).prop('checked', this.checked);
        });
    });


</script>

</html>
