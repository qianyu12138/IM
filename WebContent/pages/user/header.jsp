<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/header.css" type="text/css" />
<div id="banner">
			<div id="welcome">
					<font color="white">欢迎  <s:property value="#session.user.username"/><a href="${pageContext.request.contextPath }/UserAction_logout">注销</a></font>
			</div>
</div>
<div id="globllink">
				<ul>
					<li><a href="${pageContext.request.contextPath }/RecordAction_home">首页</a></li>
					<li><a href="${pageContext.request.contextPath }/InfoAction_getInfo">信息管理</a></li>
					<li><a href="${pageContext.request.contextPath }/RecordAction_homecheck">信息记录</a></li>
					<li><a href="#">账号功能</a></li>
					<li><a href="#">关于我们</a></li>
					<li><textarea rows="1" cols="12"></textarea></li>
					<li><div id="clear"></div></li>
				</ul>
</div>