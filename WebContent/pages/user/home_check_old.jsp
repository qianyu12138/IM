<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>信息使用记录浏览</title>
<link href="${pageContext.request.contextPath }/css/home.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		var end = new Date();
	    var day = ("0" + end.getDate()).slice(-2);
	    var month = ("0" + (end.getMonth() + 1)).slice(-2);
	    var today = end.getFullYear()+"-"+(month)+"-"+(day) ;
	    $('#enddate').val(today);
	
	    var start = new Date();
	    start.setMonth(start.getMonth()-1);
	    day = ("0" + start.getDate()).slice(-2);
	    month = ("0" + (start.getMonth() + 1)).slice(-2);
	    today = start.getFullYear()+"-"+(month)+"-"+(day) ;
	    $('#startdate').val(today);
	});
	
	function changePage(pageNum){
		$("#currentPage").val(pageNum);
		$("#subform").submit();
	};

</script>
<body>
	<!-- 外层容器 -->
	<div id="container">
	<jsp:include page="header.jsp"></jsp:include>
		<div id="middle">
			<h3>近期个人信息使用情况</h3>
			<div id="table">
				<form action="${pageContext.request.contextPath}/RecordAction_homecheck" id="subform" method="post">
					<input type="hidden" id="currentPage" name="currentPage">
					筛选： 服务方名称：<input type="text" name="server" value='<s:property value="#record.server"/>'><br>
					开始时间：<input type="date" name="startTime" id="startdate">~结束时间:<input type="date" name="endTime" id="enddate">
					<button type="submit">筛选</button>
				</form>
				<table width=500px>
					<tr align="center">
						<th width=200px>时间</th>
						<th width=100px>服务平台</th>
						<th width=100px>用途</th>
						<th width=100px>操作</th>
					</tr>
					<s:iterator value="#pagebean.list" var="record" >
						<tr>
							<td><s:date name="#record.useTime" format="yyyy-MM-dd HH:mm:ss" /></td>
							<td><s:property value="#record.server" /></td>
							<td><s:property value="#record.useWay" /></td>
							<td><a href="${pageContext.request.contextPath }/RecordAction_report?rid=<s:property value='#record.rid'/>">举报</a></td>
						</tr>
					</s:iterator>			
				</table>
				<br />
				<div style="text-align: center;width: 100%">
				<a href="javaScript:void(0)" onclick="changePage(<s:property value='#pagebean.currentPage-1'/>)">上一页</a>
				&nbsp
				第<s:property value="#pagebean.currentPage"/>页
				&nbsp
				<a href="javaScript:void(0)" onclick="changePage(<s:property value='#pagebean.currentPage+1'/>)">下一页</a>
				</div>
			</div>
		</div>
		<div id="right">
			<jsp:include page="ad.jsp"></jsp:include>
		</div>
		<div id="footer">
			版权所有**********************
		</div>
	</div>
</body>
</html>