<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/views/admin/img/apple-icon.png">
        <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/views/admin/img/favicon.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>Product manage</title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
        <!--     Fonts and icons     -->

        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- CSS Files -->
        <link href="${pageContext.request.contextPath}/views/admin/css/bootstrap.min.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/views/admin/css/light-bootstrap-dashboard.css?v=2.0.0 " rel="stylesheet" />

        <link href="${pageContext.request.contextPath}/views/admin/css/qldata.css" rel="stylesheet"/>

        <script>
            $(document).ready(function () {
                // Activate tooltip
                $('[data-toggle="tooltip"]').tooltip();

                // Select/Deselect checkboxes
                var checkbox = $('table tbody input[type="checkbox"]');
                $("#selectAll").click(function () {
                    if (this.checked) {
                        checkbox.each(function () {
                            this.checked = true;
                        });
                    } else {
                        checkbox.each(function () {
                            this.checked = false;
                        });
                    }
                });
                checkbox.click(function () {
                    if (!this.checked) {
                        $("#selectAll").prop("checked", false);
                    }
                });
            });
        </script>
    </head>

    <body>

        <%@include file="../admin/CheckLogin.jsp" %>

        <div class="wrapper">

            <jsp:include page="Menu.jsp"/>

            <div class="main-panel">

                <nav class="navbar navbar-expand-lg " color-on-scroll="500">
                    <div class="container-fluid">
                        <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                PRODUCT
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">All</a>
                                <a class="dropdown-item" href="#">Shirt</a>
                                <a class="dropdown-item" href="#">Paint</a>
                                <a class="dropdown-item" href="#">Shoes</a>
                            </div>
                        </div>

                        <form action="#"> 
                            <input class="form-control form-control-sm mr-3 w-75" type="text" placeholder="Search..."
                                   aria-label="Search">

                        </form>
                    </div>
                </nav>

                <div class="content">
                    <div class="container-fluid">
                        <div class="table-responsive">
                            <div class="table-wrapper">
                                <form action="product?action=delete" method="post">
                                    <div class="table-title">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <h2>PRODUCT <b>TABLE</b></h2>
                                            </div>

                                            <div class="col-sm-6">
                                                <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal">Add New Product</a>
                                                <input value="Delete" type="submit" class="btn btn-danger" data-toggle="modal" onclick="return confirm('Are you sure you want to delete these Records?')"/> 
                                            </div>
                                        </div>
                                    </div>

                                    <table class="table table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <span class="custom-checkbox">
                                                        <input class="Checkbox" type="checkbox" id="selectAll">
                                                        <label for="selectAll"></label>
                                                    </span>
                                                </th>
                                                <th><span>Mã</span><a href="${pageContext.request.contextPath}/product?action=sort&direction=down&by=id"><i class="material-icons">arrow_downward</i></a><a href="#"><i class="material-icons">arrow_upward</i></a></th>
                                                <th><span>Tên</span><a href="#"><i class="material-icons">arrow_downward</i></a><a href="#"><i class="material-icons">arrow_upward</i></a></th>
                                                <th>Size</th>
                                                <th><span>Giá</span><a href="#"><i class="material-icons">arrow_downward</i></a><a href="#"><i class="material-icons">arrow_upward</i></a></th>
                                                <th>Giảm giá(%)</th>
                                                <th><span>Số lượng</span><a href="#"><i class="material-icons">arrow_downward</i></a><a href="#"><i class="material-icons">arrow_upward</i></a></th>
                                                <th>Loại hàng</th>
                                                <th>Trạng thái</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:set var="productList" value="${requestScope.list}" />
                                            <c:forEach var="product" items="${productList}">
                                                <tr>
                                                    <td>
                                                        <span class="custom-checkbox">
                                                            <input class="Checkbox" type="checkbox" id="checkbox2" name="options[]" value="1">
                                                            <label for="checkbox2"></label>
                                                        </span>
                                                    </td>
                                                    <td>${product.productId}</td>
                                                    <td>${product.productName}</td>
                                                    <td>${product.size}</td>
                                                    <td>${product.price}</td>
                                                    <td>${product.discount}</td>
                                                    <td>${product.quantity}</td>
                                                    <td>${product.categoryId}</td>
                                                    <td>${product.status}</td>
                                                    <td>
                                                        <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                                        <a href="${product.linkImage}" target="_blank" class="see"><i class="material-icons" data-toggle="tooltip" title="Image">visibility</i></a>
                                                    </td>
                                                </tr>
                                            </c:forEach>                               
                                        </tbody>
                                    </table>
                                </form>
                                <div class="clearfix">
                                    <div class="hint-text">Showing <b>${currentPage}</b> out of <b>${noOfPages}</b> entries</div>
                                    <ul class="pagination">
                                        <!--                                        <li class="page-item disabled"><a href="product?page=1">Previous</a></li>
                                                                                <li class="page-item"><a href="#" class="page-link">1</a></li>
                                                                                <li class="page-item"><a href="#" class="page-link">2</a></li>
                                                                                <li class="page-item active"><a href="#" class="page-link">3</a></li>
                                                                                <li class="page-item"><a href="#" class="page-link">4</a></li>
                                                                                <li class="page-item"><a href="#" class="page-link">5</a></li>
                                                                                <li class="page-item"><a href="#" class="page-link">Next</a></li>-->
                                        <c:if test="${currentPage != 1}">
                                            <td><a href="product?page=${currentPage - 1}">Previous</a></td>
                                        </c:if>
                                        <c:forEach begin="1" end="${noOfPages}" var="i">
                                            <c:choose>
                                                <c:when test="${currentPage eq i}">
                                                    <li class="page-item"><a class="page-link">${i}</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                    <li class="page-item"><a href="product?page=${i}" class="page-link">${i}</a></li>
<!--                                                    <td><a href="employee.do?page=${i}">${i}</a></td>-->
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>

                                        <c:if test="${currentPage lt noOfPages}">
                                            <td><a href="product?page=${currentPage + 1}">Next</a></td>
                                        </c:if>                
                                    </ul>
                                </div>
                            </div>
                        </div>        
                    </div>

                    <!-- Add Modal HTML -->
                    <div id="addEmployeeModal" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="product?action=add" method="post">
                                    <div class="modal-header">						
                                        <h4 class="modal-title">ADD PRODUCT</h4>
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    </div>
                                    <div class="modal-body">					
                                        <div class="form-group">
                                            <label>Product ID</label>
                                            <input type="text" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Product name</label>
                                            <input type="text" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Size</label>
                                            <input type="text" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Price</label>
                                            <input type="text" class="form-control" required>  
                                        </div>
                                        <div class="form-group">
                                            <label>Discount</label>
                                            <input type="text" class="form-control" required>
                                        </div>	
                                        <div class="form-group">
                                            <label>Quantity</label>
                                            <input type="text" class="form-control" required>
                                        </div>	
                                        <div class="form-group">
                                            <label>Category</label>
                                            <input type="text" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Status</label>
                                            <input type="text" class="form-control" required>
                                        </div>

                                    </div>
                                    <div class="modal-footer">
                                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                        <input type="submit" class="btn btn-success" value="Add">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Edit Modal HTML -->
                    <div id="editEmployeeModal" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form>
                                    <div class="modal-header">						
                                        <h4 class="modal-title">PRODUCT TABLE</h4>
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    </div>
                                    <div class="modal-body">					
                                        <div class="form-group">
                                            <label>ID</label>
                                            <input type="text" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Name</label>
                                            <input type="email" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Price</label>
                                            <textarea class="form-control" required></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label>Quantitative</label>
                                            <input type="text" class="form-control" required>
                                        </div>					
                                    </div>
                                    <div class="modal-footer">
                                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                        <input type="submit" class="btn btn-info" value="Save">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Delete Modal HTML -->
                    <!--                    <div id="deleteEmployeeModal" class="modal fade">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <form>
                                                        <div class="modal-header">						
                                                            <h4 class="modal-title">Delete Employee</h4>
                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                        </div>
                                                        <div class="modal-body">					
                                                            <p>Are you sure you want to delete these Records?</p>
                                                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <input type="button" class="btn btn-default" data-dismiss="modal" value="false">
                                                            <input type="submit" class="btn btn-danger" value="true">
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>-->

                </div>
                <jsp:include page="Footer.jsp"/>
                </body>
                <!--   Core JS Files   -->
                <script src="${pageContext.request.contextPath}/views/admin/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
                <script src="${pageContext.request.contextPath}/views/admin/js/core/popper.min.js" type="text/javascript"></script>
                <script src="${pageContext.request.contextPath}/views/admin/js/core/bootstrap.min.js" type="text/javascript"></script>
                <!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
                <script src="${pageContext.request.contextPath}/views/admin/js/plugins/bootstrap-switch.js"></script>
                <!--  Google Maps Plugin    -->
                <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
                <!--  Chartist Plugin  -->
                <script src="${pageContext.request.contextPath}/views/admin/js/plugins/chartist.min.js"></script>
                <!--  Notifications Plugin    -->
                <script src="${pageContext.request.contextPath}/views/admin/js/plugins/bootstrap-notify.js"></script>
                <!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
                <script src="${pageContext.request.contextPath}/views/admin/js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
                <script>
                                                    $("#selectAll").click(function () {
                                                        $(".Checkbox").not(this).prop('checked', this.checked);
                                                    });


                </script>

                </html>
