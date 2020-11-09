<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="webjars/jquery/3.1.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="webjars/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <table class="table table-hover text-center">
                <tr>
                    <td colspan="5">
                        <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#addModal">添加用户</button>
                        <%--弹出模态框--%>
                        <div class="modal fade" id="addModal" tabindex="-1" role="dialog"
                             aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel">添加用户</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form action="addUser" method="post" class="form-horizontal">
                                            <div class="form-group">
                                                <label class="col-md-2 control-label">姓名</label>
                                                <div class="col-md-10">
                                                    <input type="text" name="name" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-2 control-label">电话</label>
                                                <div class="col-md-10">
                                                    <input type="text" name="tel" class="form-control"
                                                    >
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-2 control-label">地址</label>
                                                <div class="col-md-10">
                                                    <input type="text" name="address" class="form-control">
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-primary">添加</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="active">编号</td>
                    <td class="info">姓名</td>
                    <td class="success">地址</td>
                    <td class="warning">电话</td>
                    <td class="danger">操作</td>
                </tr>
                <c:forEach var="user" items="${list}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.addr}</td>
                        <td>${user.tel}</td>
                        <td>
                            <a href="deleteById?id=${user.id}">
                                <button class="btn btn-danger btn-sm delete">删除</button>
                            </a>
                            <button class="btn btn-default btn-sm" data-toggle="modal"
                                    data-target="#myModal${user.id}">修改
                            </button>
                            <div class="modal fade" tabindex="-1" role="dialog" id="myModal${user.id}">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">
                                                <span aria-hidden="true">x</span></button>
                                            <h4 class="modal-title" id="gridSystemModalLabel">修改信息</h4>
                                        </div>
                                        <div class="modal-body">
                                            <form action="updateById" method="post" class="form-horizontal">
                                                <div class="form-group">
                                                    <label class="col-md-2 control-label"></label>
                                                    <div class="col-md-10">
                                                        <input type="hidden" name="id" value="${user.id}">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 control-label">姓名</label>
                                                    <div class="col-md-10">
                                                        <input type="text" name="name" class="form-control"
                                                               value="${user.name}">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 control-label">电话</label>
                                                    <div class="col-md-10">
                                                        <input type="text" name="tel" class="form-control"
                                                               value="${user.tel}">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-2 control-label">住址</label>
                                                    <div class="col-md-10">
                                                        <input type="text" name="address" class="form-control"
                                                               value="${user.addr}">
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="submit" class="btn btn-primary update">修改</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div><!-- /.modal -->
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
<script>
    /*    $(function () {
            $(".delete").each(function () {
                var id = $(this).attr("name");
                $.ajax({
                    url: "delete",
                    data: {action: "delete", id: id},
                    dataType: "json",
                    success: function (res) {
                        if (res == 1) {
                            alert("删除成功！！！");
                            $("#bb").load("address?action=show");
                        } else {
                            alert("删除失败！！！")
                        }
                    }
                })
            })
        })*/
</script>
</body>
</html>
