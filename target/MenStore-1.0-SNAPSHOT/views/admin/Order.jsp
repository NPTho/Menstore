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
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

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
                                                        <h2>DANH SÁCH ĐƠN HÀNG</h2>
                                                    </div>

                                                </div>
                                            </div>
                                            <table class="table table-striped table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>Mã đơn hàng</th>
                                                        <th>Note</th>
                                                        <th>Tiền trước giảm</th>
                                                        <th>Tiền giảm</th>
                                                        <th>Thành tiền</th>
                                                        <th>Ngày</th>
                                                        <th>Trạng thái</th>
                                                        <th>Voucher</th>
                                                        <th>Khách hàng</th>
                                                        <th>
                                                            <span class="custom-checkbox">
                                                                <input type="checkbox" id="selectAllOrderCheckBox">
                                                                <label for="selectAllOrderCheckBox"></label>
                                                            </span>
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>X</td>
                                                        <td>X</td>
                                                        <td>X</td>
                                                        <td>X</td>
                                                        <td>X</td>
                                                        <td>X</td>
                                                        <td>X</td>
                                                        <td>X</td>
                                                        <td>
                                                            <span class="custom-checkbox">
                                                                <input class="CustomerOrderCheckBox" type="checkbox" id="checkbox1" name="CustomerOrderOptions[]" value="b? id dô">
                                                                <label for="checkbox1"></label>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>XX</td>
                                                        <td>XX</td>
                                                        <td>XX</td>
                                                        <td>XX</td>
                                                        <td>XX</td>
                                                        <td>X</td>
                                                        <td>X</td>
                                                        <td>XX</td>
                                                        <td>XX/XX/XXXX</td>
                                                        <td>
                                                            <span class="custom-checkbox">
                                                                <input class="CustomerOrderCheckBox" type="checkbox" id="checkbox2" name="CustomerOrderOptions[]" value="b? id dô">
                                                                <label for="checkbox2"></label>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                </tbody>

                                            </table>
                                            <div class="clearfix">
                                                <div class="hint-text">Showing <b>3</b> out of <b>25</b> entries</div>
                                                <ul class="pagination">
                                                    <li class="page-item disabled"><a href="#">Previous</a></li>
                                                    <li class="page-item"><a href="#" class="page-link">1</a></li>
                                                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                                                    <li class="page-item active"><a href="#" class="page-link">3</a></li>
                                                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                                                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                                                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Add Modal HTML -->
                        <div id="addEmployeeModal" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form>
                                        <div class="modal-header">						
                                            <h4 class="modal-title">ADD PRODUCT</h4>
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
                                                <label>Size</label>
                                                <textarea class="form-control" required></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label>Price</label>
                                                <input type="text" class="form-control" required>  
                                            </div>
                                            <div class="form-group">
                                                <label>Quantitative</label>
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
                        <!-- Delete PRODUCT HTML -->
                        <div id="deleteEmployeeModal" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form>
                                        <div class="modal-header">						
                                            <h4 class="modal-title">Delete Employee</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        </div>

                                        <input type="hidden" name="listOfDeleteRecords" value=""/>

                                        <div class="modal-body">					
                                            <p>Are you sure you want to delete these Records?</p>
                                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                                        </div>
                                        <div class="modal-footer">
                                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                            <input type="submit" class="btn btn-danger" value="Delete">
                                        </div>
                                    </form>
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

        $("#selectAllStockGood").click(function () {
            $(".RunningOutStockCheckBox").not(this).prop('checked', this.checked);
        });

        $("#selectAllVoucher").click(function () {
            $(".VoucherCheckBox").not(this).prop('checked', this.checked);
        });
    });


</script>

</html>
