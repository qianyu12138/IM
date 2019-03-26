<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>主页</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	</head>

	<body>
		<div class="container" style="width: 900px;">
			<div class="row clearfix">
				<div class="col-lg-12 column" style="background: url('images/banner.jpg');height: 170px;background-size: contain;">
					hello
				</div>
			</div>
			<br  />
			<div class="row clearfix">
				<div class="col-md-12 column">
					<nav class="navbar navbar-default" role="navigation">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
							<a class="navbar-brand" href="${pageContext.request.contextPath }/RecordAction_home">主页</a>
						</div>

						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li>
									<a href="${pageContext.request.contextPath }/InfoAction_getInfo">信息管理</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath }/RecordAction_homecheck">信息记录</a>
								</li>
								<li>
									<a href="#">账号功能</a>
								</li>
								<li>
									<a href="#">关于我们</a>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
									<ul class="dropdown-menu">
										<li>
											<a href="#">Action</a>
										</li>
										<li>
											<a href="#">Another action</a>
										</li>
										<li>
											<a href="#">Something else here</a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="#">Separated link</a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="#">One more separated link</a>
										</li>
									</ul>
								</li>
							</ul>
							<form class="navbar-form navbar-left" role="search">
								<div class="form-group">
									<input type="text" class="form-control" />
								</div> <button type="submit" class="btn btn-default">Submit</button>
							</form>
							
						</div>

					</nav>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-lg-8 column">
					<strong>信息使用记录</strong>
					<table class="table">
						<thead>
							<tr>
								<th>
									时间
								</th>
								<th>
									服务平台
								</th>
								<th>
									用途
								</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="#pagebean.list" var="record">
								<tr>
									<td><s:date name="#record.useTime" format="yyyy-MM-dd HH:mm:ss" /></td>
									<td><s:property value="#record.server" /></td>
									<td><s:property value="#record.useWay" /></td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
					<ul class="pager" style="text-align: center;">
						<li>
							<a href="${pageContext.request.contextPath }/RecordAction_home?currentPage=<s:property value="#pagebean.currentPage-1"/>">Prev</a>
						</li>
						<li>
							<a href="#"><s:property value="#pagebean.currentPage"/>/<s:property value="#pagebean.totalPage" /></a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/RecordAction_home?currentPage=<s:property value="#pagebean.currentPage+1"/>">Next</a>
						</li>
					</ul>
				</div>
				<div class="col-lg-4 column">
					<jsp:include page="ad.jsp"/>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-lg-12 column" style="text-align: center;">
					©第三方隐私保护平台版权所有
				</div>
			</div>
		</div>
	</body>

</html>