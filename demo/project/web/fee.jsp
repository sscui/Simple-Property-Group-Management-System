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
            <li role="presentation"><a href="equip.jsp">设备管理</a></li>
            <li role="presentation" class="active"><a href="fee.jsp">费用管理</a></li>
            <li role="presentation"><a href="info.jsp">投诉意见和报修信息管理</a></li>
        </ul>
    </div>
    <div class="panel-body">


        <%--添加物业费收入--%>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">添加物业费收入</h3>
            </div>
            <div class="panel-body">
                <form action="addProperty.fee" method="post">


                    <div class="row">

                        <div class="col-lg-3 form-group">
                            <label for="addProperty_house_id">房屋id</label>
                            <input type="number" class="form-control" id="addProperty_house_id" name="house_id"
                                   placeholder="house id">
                        </div>

                        <div class="col-lg-3 form-group">
                            <label for="addProperty_manager_id">收费人员id</label>
                            <input type="number" class="form-control" id="addProperty_manager_id" name="manager_id"
                                   placeholder="manager id">
                        </div><!-- /.col-lg-3 -->
                        <div class="col-lg-3 form-group">
                            <label for="addProperty_fee">支付费用</label>
                            <input type="number" class="form-control" id="addProperty_fee" name="fee"
                                   placeholder="pay fee">
                        </div>
                    </div><!-- /.row -->
                    <div class="row">
                        <div class="col-lg-3 form-group">
                            <label for="addProperty_time">支付日期</label>
                            <input type="date" class="form-control" id="addProperty_time" name="time"
                                   placeholder="pay date">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="addProperty_start_time">支付的开始日期</label>
                            <input type="date" class="form-control" id="addProperty_start_time" name="start_time"
                                   placeholder="the date of pay start time">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="addProperty_end_time">支付的结束日期</label>
                            <input type="date" class="form-control" id="addProperty_end_time" name="time"
                                   placeholder="the date of pay end time">
                        </div>
                    </div>
                    <input type="submit" value="添加" class="btn btn-primary">
                </form>
            </div>
        </div>

        <%--添加其他收入--%>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">添加其他收入</h3>
            </div>
            <div class="panel-body">
                <form action="addOtherIncome.fee" method="post">


                    <div class="row">

                        <div class="col-lg-3 form-group">
                            <label for="addOtherIncome_name">收入费用名称</label>
                            <input type="text" class="form-control" id="addOtherIncome_name" name="name"
                                   placeholder="example: 广告楼梯费等">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="addOtherIncome_manager_id">收取费用的管理员</label>
                            <input type="number" class="form-control" id="addOtherIncome_manager_id" name="manager_id"
                                   placeholder="id of manager">
                        </div><!-- /.col-lg-3 -->
                        <div class="col-lg-3 form-group">
                            <label for="addOtherIncome_community_name">小区名称</label>
                            <input type="text" class="form-control" id="addOtherIncome_community_name"
                                   name="community_name"
                                   placeholder="check date">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="addOtherIncome_fee">收取的费用</label>
                            <input type="number" class="form-control" id="addOtherIncome_fee" name="fee"
                                   placeholder="pay fee">
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


        <%--查询收入--%>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">查询收入</h3>
            </div>
            <div class="panel-body">
                <form action="queryIncome.fee" method="post">
                    <div class="row">
                        <div class="col-lg-3 form-group">
                            <label for="queryIncome_year">查询年份</label>
                            <input type="number" class="form-control" id="queryIncome_year" name="year"
                                   placeholder="year for query">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="queryIncome_type">查询类型</label>
                            <input type="text" class="form-control" id="queryIncome_type" name="type"
                                   placeholder="month or season">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="queryIncome_number">月份/季度数</label>
                            <input type="number" class="form-control" id="queryIncome_number" name="number"
                                   placeholder="1-12 stand for month or 1-4 stand for spring summer fall and winter">
                        </div>
                        <input type="submit" value="查询" class="btn btn-primary">
                    </div>
                </form>
            </div>
            <div class="panel-body">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">收入记录</h3>
                    </div>

                    <table class="table table-striped table-bordered table-hover table-condensed">
                        <tr>
                            <th>车位购买收入</th>
                            <th>临时停车收入</th>
                            <th>车位租用收入</th>
                            <th>车位管理收入</th>
                            <th>物业费收入</th>
                            <th>其他收入</th>
                        </tr>
                        <tr>
                            <td>park_purchase</td>
                            <td>temporary_park</td>
                            <td>park_rent</td>
                            <td>park_manage_pay</td>
                            <td>property_fee</td>
                            <td>other_fee</td>
                        </tr>
                        <c:forEach items="${income}" var="aIncome" varStatus="st">
                            <tr>
                                <td>${aIncome.park_purchase}</td>
                                <td>${aIncome.temporary_park}</td>
                                <td>${aIncome.park_rent}</td>
                                <td>${aIncome.park_manage_pay}</td>
                                <td>${aIncome.property_fee}</td>
                                <td>${aIncome.other_fee}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>


        <%--查询支出--%>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">查询支出</h3>
            </div>
            <div class="panel-body">
                <form action="queryOutcome.fee" method="post">
                    <div class="row">
                        <div class="col-lg-3 form-group">
                            <label for="queryOutcome_year">查询年份</label>
                            <input type="number" class="form-control" id="queryOutcome_year" name="year"
                                   placeholder="year for query">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="queryOutcome_type">查询类型</label>
                            <input type="text" class="form-control" id="queryOutcome_type" name="type"
                                   placeholder="month or season">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="queryOutcome_number">月份/季度数</label>
                            <input type="number" class="form-control" id="queryOutcome_number" name="number"
                                   placeholder="1-12 stand for month or 1-4 stand for spring summer fall and winter">
                        </div>
                        <input type="submit" value="查询" class="btn btn-primary">
                    </div>
                </form>
            </div>
            <div class="panel-body">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">支出记录</h3>
                    </div>

                    <table class="table table-striped table-bordered table-hover table-condensed">
                        <tr>
                            <th>排查维修费用</th>
                            <th>报修维修费用</th>
                        </tr>
                        <tr>
                            <td>check_fee</td>
                            <td>repair_fee</td>
                        </tr>
                        <c:forEach items="${outcome}" var="aOutcome" varStatus="st">
                            <tr>
                                <td>${aOutcome.check_fee}</td>
                                <td>${aOutcome.repair_fee}</td>
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
