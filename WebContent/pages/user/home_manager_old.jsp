<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>信息与权限管理</title>
<script src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js" type="text/javascript"></script>
<link href="${pageContext.request.contextPath }/css/home.css" rel="stylesheet" type="text/css">
<style>
		#div1{
			margin: 20px 20px;
			width:500px;
			height: 600px;
		}

		input{
			outline:none;
   			border:0px;
		}

		.input{
			margin-right: 30px;
			float:right;
		}
		.tip{width:100px;float:left;}

</style>
</head>
<body onload="load()">
	<!-- 外层容器 -->
	<div id="container">
		<jsp:include page="header.jsp"></jsp:include>
		<div id="middle">
			<div id=div1>
				<h1>个人信息管理</h1>
				<form action="${pageContext.request.contextPath }/user/infoEdit" method="post" id="form1">
					<input type="hidden" name="iid" value='<s:property value="#info.iid"/>'>
					<div class="tip">真实姓名：</div><input type="text" name="name" size="15" value="<s:property value="#info.name" />">
					<div class="input">
					<input type="radio" name="nameAchi" value=1>打开
					<input type="radio" name="nameAchi" value=0>关闭
					</div>
					<br><br>
					
					<div class="tip">性别：</div><select name="sex" id="sexselect">
						<option value="1">男</option>
						<option value="0">女</option>
					</select>
					<div class="input">
					<input type="radio" name="sexAchi" value="1">打开
					<input type="radio" name="sexAchi" value="0">关闭
					</div>
					<br><br>

					<div class="tip">地址1：</div><input type="text" name="address1" size=30 value="<s:property value="#info.address1" />">
					<div class="input">
					<input type="radio" name="addAchi" value="1">打开
					<input type="radio" name="addAchi" value="0">关闭
					</div>
					<br><br>

					<div class="tip">地址2： </div><input type="text" name="address2" size=30 value="<s:property value="#info.address2" />">
					<br><br>

					<div class="tip">地址3：</div><input type="text" name="address3" size=30 value="<s:property value="#info.address3" />">
					<br><br>

					<div class="tip">手机号：</div><input type="text" name="tel" size=20 value="<s:property value="#info.tel" />">
					<div class="input">
					<input type="radio" name="telAchi" value="1">打开
					<input type="radio" name="telAchi" value="0">关闭
					</div>
					<br><br>

					<div class="tip">邮箱：</div><input type="text" name="email" size=20 value="<s:property value="#info.email" />">
					<div class="input">
					<input type="radio" name="emailAchi" value="1">打开
					<input type="radio" name="emailAchi" value="0">关闭
					</div>
					<br><br>
					
					<div class="tip">身份证号：</div><input type="text" name="IDCardNum" size=20 value="<s:property value="#info.IDCardNum" />">
					<div class="input">
					<input type="radio" name="IDNumAchi" value="1">打开
					<input type="radio" name="IDNumAchi" value="0">关闭
					</div>
					<br><br>

					<div class="tip">QQ号：</div><input type="text" name="QQnum" size=20 value="<s:property value="#info.QQnum" />">
					<div class="input">
					<input type="radio" name="QQAchi" value="1">打开
					<input type="radio" name="QQAchi" value="0">关闭
					</div>
					<br><br>
					
					<div class="tip">生日:</div><input type="date" name="birthday" size=20 value="<s:date name="#info.birthday" format="yyyy-MM-dd" />">
					<div class="input">
					<input type="radio" name="birthAchi" value="1">打开
					<input type="radio" name="birthAchi" value="0">关闭
					</div>
					<br><br>
					
					<div class="tip">工作:</div><input type="text" name="work" size=20 value="<s:property value="#info.work" />">
					<div class="input">
					<input type="radio" name="workAchi" value="1">打开
					<input type="radio" name="workAchi" value="0">关闭
					</div>
					<br><br>
					
					<input type="button" id="subbut" value="完成" ><br><br>
				</form>
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
<script type="text/javascript">
function load(){
	var sexselect=document.getElementById("sexselect");
	for(var i=0;i<sexselect.length;i++){
        if(sexselect[i].value=="<s:property value="#info.sex" />")
        	sexselect[i].selected = true;
    }
	
	var namelimit=document.getElementsByName("nameAchi");
	for(var i=0;i<namelimit.length;i++){
		if("<s:property value="#info.nameAchi" />"==namelimit[i].value){
			namelimit[i].checked=true;
		}
	}
	
	var sexlimit=document.getElementsByName("sexAchi");
	for(var i=0;i<sexlimit.length;i++){
		if("<s:property value="#info.sexAchi" />"==sexlimit[i].value)
			sexlimit[i].checked=true;
	}
	
	var addresslimit=document.getElementsByName("addAchi");
	for(var i=0;i<addresslimit.length;i++){
		if("<s:property value="#info.addAchi" />"==addresslimit[i].value)
			addresslimit[i].checked=true;
	}
	
	var Phonelimit=document.getElementsByName("telAchi");
	for(var i=0;i<Phonelimit.length;i++){
		if("<s:property value="#info.telAchi" />"==Phonelimit[i].value)
			Phonelimit[i].checked=true;
	}
	var emaillimit=document.getElementsByName("emailAchi");
	for(var i=0;i<emaillimit.length;i++){
		if("<s:property value="#info.emailAchi" />"==emaillimit[i].value)
			emaillimit[i].checked=true;
	}
	var idlimit=document.getElementsByName("IDNumAchi");
	for(var i=0;i<idlimit.length;i++){
		if("<s:property value="#info.IDNumAchi" />"==idlimit[i].value)
			idlimit[i].checked=true;
	}
	var QQnumlimit=document.getElementsByName("QQAchi");
	for(var i=0;i<QQnumlimit.length;i++){
		if("<s:property value="#info.QQAchi" />"==QQnumlimit[i].value)
			QQnumlimit[i].checked=true;
	}
	var birthdaylimit=document.getElementsByName("birthAchi");
	for(var i=0;i<birthdaylimit.length;i++){
		if("<s:property value="#info.birthAchi" />"==birthdaylimit[i].value)
			birthdaylimit[i].checked=true;
	}
	var worklimit=document.getElementsByName("workAchi");
	for(var i=0;i<worklimit.length;i++){
		if("<s:property value="#info.workAchi" />"==worklimit[i].value)
			worklimit[i].checked=true;
	}
}

$(document).ready(function(){
    $("#subbut").click(function(){
         $.ajax({
            type:'POST',
            url:'${pageContext.request.contextPath }/InfoAction_update',
            data:$("#form1").serialize(),
            success:function(data){
                alert("修改成功");
            },
            error:function(data){
            	alert("修改失败");
            }
        });
    });
});
</script>
</html>