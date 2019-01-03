<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>小区管理系统</title>
    <script src="jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="panel panel-info">
    <div class="panel-heading">
        <ul class="nav nav-tabs">
            <li role="presentation"><a href="index.jsp">房屋住户管理</a></li>
            <li role="presentation"><a href="parking_management.jsp">停车管理</a></li>
            <li role="presentation" class="active"><a href="equip.jsp">设备管理</a></li>
            <li role="presentation"><a href="fee.jsp">费用管理</a></li>
            <li role="presentation"><a href="info.jsp">投诉意见和报修信息管理</a></li>
        </ul>
    </div>
    <div class="panel-body">


        <%--添加设备--%>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">添加设备</h3>
            </div>
            <div class="panel-body">
                <form action="add.equip" method="post">


                    <div class="row">

                        <div class="col-lg-3 form-group">
                            <label for="add_name">设备名称</label>
                            <input type="number" class="form-control" id="add_name" name="name"
                                   placeholder="device id">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="add_type">设备类型</label>
                            <input type="text" class="form-control" id="add_type" name="type"
                                   placeholder="device type">
                        </div><!-- /.col-lg-3 -->
                        <div class="col-lg-3 form-group">
                            <label for="community_name">小区名称</label>
                            <input type="date" class="form-control" id="community_name" name="community_name"
                                   placeholder="check date">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="add_description">设备描述</label>
                            <input type="number" class="form-control" id="add_description" name="description"
                                   placeholder="description of the equipment">
                        </div>
                    </div><!-- /.row -->


                    <%--<div class="form-group">--%>
                    <%--<label for="device_type">设备类型</label>--%>
                    <%--<input type="text" class="form-control" id="device_type" name="device_type"--%>
                    <%--placeholder="device type">--%>
                    <%--</div>--%>
                    <input type="submit" value="添加" class="btn btn-primary">
                </form>
            </div>
        </div>

        <%--添加设备排查记录--%>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">添加设备排查记录</h3>
            </div>
            <div class="panel-body">
                <form action="check.equip" method="post">


                    <div class="row">

                        <div class="col-lg-3 form-group">
                            <label for="check_equip_id">设备id</label>
                            <input type="number" class="form-control" id="check_equip_id" name="equip_id"
                                   placeholder="equipment id">
                        </div>

                        <div class="col-lg-3 form-group">
                            <label for="check_manager_id">检查人员id</label>
                            <input type="number" class="form-control" id="check_manager_id" name="manager_id"
                                   placeholder="manager id">
                        </div><!-- /.col-lg-3 -->
                        <div class="col-lg-3 form-group">
                            <label for="check_examine_time">排查日期</label>
                            <input type="date" class="form-control" id="check_examine_time" name="examine_time"
                                   placeholder="check date">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="check_fee">排查费用</label>
                            <input type="number" class="form-control" id="check_fee" name="fee"
                                   placeholder="check and repair costs">
                        </div>
                    </div><!-- /.row -->
                    <input type="submit" value="添加" class="btn btn-primary">
                </form>
            </div>
        </div>

        <%--添加设备报修记录--%>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">添加设备报修记录</h3>
            </div>
            <div class="panel-body">
                <form action="report.equip" method="post">
                    <div class="row">
                        <div class="col-lg-3 form-group">
                            <label for="report_user_id">户主id</label>
                            <input type="number" class="form-control" id="report_user_id" name="user_id"
                                   placeholder="id of report user">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="report_equip_id">设备id</label>
                            <input type="number" class="form-control" id="report_equip_id" name="equip_id"
                                   placeholder="id of equipment reported">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="report_time">报修时间</label>
                            <input type="date" class="form-control" id="report_time" name="time"
                                   placeholder="report time">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="report_reason">报修原因</label>
                        <input type="text" class="form-control" id="report_reason" name="reason"
                               placeholder="repair reason">
                    </div>
                    <input type="submit" value="添加" class="btn btn-primary">
                </form>
            </div>
        </div>

        <%--添加修理设备记录--%>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">添加设备报修记录</h3>
            </div>
            <div class="panel-body">
                <form action="repair.equip" method="post">
                    <div class="row">
                        <div class="col-lg-3 form-group">
                            <label for="repair_equip_id">户主id</label>
                            <input type="number" class="form-control" id="repair_report_id" name="report_id"
                                   placeholder="id of report">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="repair_equip_id">设备id</label>
                            <input type="number" class="form-control" id="repair_equip_id" name="equip_id"
                                   placeholder="id of equipment reported">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="repair_manager_id">维修人员id</label>
                            <input type="number" class="form-control" id="repair_manager_id" name="manager_id"
                                   placeholder="id of equipment reported">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="repair_time">维修时间</label>
                            <input type="datetime-local" class="form-control" id="repair_time" name="time"
                                   placeholder="report time">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="repair_fee">维修费用</label>
                        <input type="text" class="form-control" id="repair_fee" name="fee"
                               placeholder="repair fee">
                    </div>
                    <input type="submit" value="添加" class="btn btn-primary">
                </form>
            </div>
        </div>

        <%--查询设备信息--%>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">查询设备信息</h3>
            </div>
            <div class="panel-body">
                <form action="query.equip" method="post">
                    <div class="row">
                        <div class="col-lg-3 form-group">
                            <label for="query_year">查询年份</label>
                            <input type="number" class="form-control" id="query_year" name="year"
                                   placeholder="year for query">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="query_type">查询类型</label>
                            <input type="text" class="form-control" id="query_type" name="type"
                                   placeholder="month or season">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="query_number">月份/季度数</label>
                            <input type="number" class="form-control" id="query_number" name="number"
                                   placeholder="1-12 stand for month or 1-4 stand for spring summer fall and winter">
                        </div>
                        <input type="submit" value="查询" class="btn btn-primary">
                    </div>
                </form>
            </div>
            <div class="panel-body">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">设备报修记录</h3>
                    </div>
                    <table class="table table-striped table-bordered table-hover table-condensed">
                        <tr>
                            <th>设备id</th>
                            <th>设备名称</th>
                            <th>设备类型</th>
                            <th>设备所在小区</th>
                            <th>报修用户id</th>
                            <th>报修时间</th>
                            <th>报修原因</th>
                        </tr>
                        <c:forEach items="${reports}" var="report" varStatus="st">
                            <tr>
                                <td>${report.equip_id}</td>
                                <td>${report.name}</td>
                                <td>${report.type}</td>
                                <td>${report.community_name}</td>
                                <td>${report.user_id}</td>
                                <td>${report.time}</td>
                                <td>${report.reason}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>


                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">设备维修记录</h3>
                    </div>
                    <table class="table table-striped table-bordered table-hover table-condensed">
                        <tr>
                            <th>报修id</th>
                            <th>设备id</th>
                            <th>设备名称</th>
                            <th>设备类型</th>
                            <th>设备所在小区</th>
                            <th>维修管理员id</th>
                            <th>维修时间</th>
                            <th>报修费用</th>
                        </tr>
                        <tr>
                            <td>report_id</td>
                            <td>equip_id</td>
                            <td>name</td>
                            <td>type</td>
                            <td>community_name</td>
                            <td>manager_id</td>
                            <td>time</td>
                            <td>fee</td>
                        </tr>
                        <c:forEach items="${repairs}" var="repair" varStatus="st">
                            <tr>
                                <td>${repair.report_id}</td>
                                <td>${repair.equip_id}</td>
                                <td>${repair.name}</td>
                                <td>${repair.type}</td>
                                <td>${repair.community_name}</td>
                                <td>${repair.manager_id}</td>
                                <td>${repair.time}</td>
                                <td>${repair.fee}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>
