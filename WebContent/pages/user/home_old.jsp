<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>主页</title>
<link href="${pageContext.request.contextPath }/css/home.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="middle">
			<h3>个人信息使用记录</h3>
			<div id="table">
				<table width=400px>
					<tr align="center">
						<th width=200px>时间</th>
						<th width=100px>服务平台</th>
						<th width=100px>用途</th>
					</tr>
					
					<s:iterator value="#pagebean.list" var="record" >
						<tr>
							<td><s:date name="#record.useTime" format="yyyy-MM-dd HH:mm:ss" /></td>
							<td><s:property value="#record.server" /></td>
							<td><s:property value="#record.useWay" /></td>
						</tr>
					</s:iterator>
				</table>
				<br />
				<div style="text-align: center;width: 100%">
				<a href="${pageContext.request.contextPath }/RecordAction_home?currentPage=<s:property value="#pagebean.currentPage-1"/>">上一页</a>
				&nbsp
				第<s:property value="#pagebean.currentPage"/>页
				&nbsp
				<a href="${pageContext.request.contextPath }/RecordAction_home?currentPage=<s:property value="#pagebean.currentPage+1"/>">下一页</a>
				</div>
			</div>
		</div>
		<div id="right">
			<jsp:include page="ad.jsp"/>
		</div>
		<div id="footer">
			©第三方隐私保护平台版权所有
		</div>
	</div>
</body>
</html>