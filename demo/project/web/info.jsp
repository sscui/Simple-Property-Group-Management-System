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
            <li role="presentation"><a href="fee.jsp">费用管理</a></li>
            <li role="presentation" class="active"><a href="info.jsp">投诉意见和报修信息管理</a></li>
        </ul>
    </div>
    <div class="panel-body">

        <%--添加投诉记录--%>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">添加投诉记录</h3>
            </div>
            <div class="panel-body">
                <form action="addComplaint.info" method="post">
                    <div class="row">
                        <div class="col-lg-3 form-group">
                            <label for="addComplaint_house_id">投诉房屋id</label>
                            <input type="number" class="form-control" id="addComplaint_house_id" name="house_id"
                                   placeholder="house_id">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="addComplaint_type">投诉类型</label>
                            <input type="text" class="form-control" id="addComplaint_type" name="type" placeholder="type">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="addComplaint_time">投诉日期</label>
                            <input type="date" class="form-control" id="addComplaint_time" name="time"
                                   placeholder="complaint date">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="addComplaint_content">投诉内容</label>
                        <input type="text" class="form-control" id="addComplaint_content" name="content"
                               placeholder="complaint details">
                    </div>
                    <input type="submit" value="添加" class="btn btn-primary">
                </form>
            </div>
        </div>

        <%--添加投诉处理记录--%>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">添加投诉处理记录</h3>
            </div>
            <div class="panel-body">
                <form action="addComplaintDeal.info" method="post">
                    <div class="row">
                        <div class="col-lg-3 form-group">
                            <label for="addComplaintDeal_complaint_id">投诉id</label>
                            <input type="number" class="form-control" id="addComplaintDeal_complaint_id" name="complaint_id"
                                   placeholder="complaint id">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="addComplaintDeal_manager_id">处理人员id</label>
                            <input type="number" class="form-control" id="addComplaintDeal_manager_id" name="manager_id"
                                   placeholder="manager id">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="addComplaintDeal_time">处理日期</label>
                            <input type="date" class="form-control" id="addComplaintDeal_time" name="time"
                                   placeholder="solve date">
                        </div>
                        <div class="col-lg-3 form-group">
                            <label for="addComplaintDeal_content">处理结果</label>
                            <input type="text" class="form-control" id="addComplaintDeal_result" name="result"
                                   placeholder="solve result">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="addComplaintDeal_content">处理内容</label>
                        <input type="text" class="form-control" id="addComplaintDeal_content" name="content"
                               placeholder="content">
                    </div>

                    <input type="submit" value="添加" class="btn btn-primary">
                </form>
            </div>
        </div>

        <%--查询投诉--%>
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">查询收入</h3>
            </div>
            <div class="panel-body">
                <form action="query.info" method="post">
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
                        <h3 class="panel-title">投诉及维修记录</h3>
                    </div>
                    <table class="table table-striped table-bordered table-hover table-condensed">
                        <tr>
                            <th>房屋id</th>
                            <th>报修日期</th>
                            <th>维修日期</th>
                            <th>设备类型</th>
                            <th>报修内容</th>
                            <th>维修内容</th>
                            <th>维修人员id</th>
                            <th>维修结果</th>
                        </tr>
                        <tr>
                            <td>house_id</td>
                            <td>complaint_time</td>
                            <td>deal_time</td>
                            <td>type</td>
                            <td>complaint_content</td>
                            <td>deal_content</td>
                            <td>manager_id</td>
                            <td>result</td>
                        </tr>
                        <c:forEach items="${complaints}" var="complaint" varStatus="st">
                            <tr>
                                <td>${complaint.house_id}</td>
                                <td>${complaint.complaint_time}</td>
                                <td>${complaint.deal_time}</td>
                                <td>${complaint.type}</td>
                                <td>${complaint.complaint_content}</td>
                                <td>${complaint.deal_content}</td>
                                <td>${complaint.manager_id}</td>
                                <td>${complaint.result}</td>
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
