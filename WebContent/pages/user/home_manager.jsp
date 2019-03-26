<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>信息与权限管理</title>
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
								<li class="active">
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
					<form role="form" method="post" id="form1">
						<div class="form-group">
							<label for="exampleInputEmail1">真实姓名：</label>
							<div style="float: right;">允许<input type="radio" name="nameAchi" value="1" />&nbsp禁止<input type="radio" name="nameAchi" value="0" /></div>
							<input type="text" class="form-control" name="name" id="exampleInputEmail1" value="<s:property value="#info.name"/>"  />
						</div>
						<div class="form-group ">
							<label for="exampleInputPassword1">性别：</label>
							<div style="float: right; ">允许<input type="radio" name="sexAchi" value="1" />&nbsp禁止<input type="radio" name="sexAchi" value="0" /></div>
							<br />
							<select name="sex" id="sexselect">
								<option value="1">男</option>
								<option value="0">女</option>
							</select>
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1 ">地址1：</label>
							<div style="float: right; ">允许<input type="radio" name="addAchi" value="1" />&nbsp禁止<input type="radio" name="addAchi" value="0" /></div>
							<input type="text" class="form-control" name="address1" value="<s:property value="#info.address1" />" />
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1 ">地址2：</label>
							<input type="text" class="form-control" name="address2" value="<s:property value="#info.address2" />" />
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1 ">地址3：</label>
							<input type="text" class="form-control" name="address3" value="<s:property value="#info.address3" />" />
						</div>
						
						<div class="form-group">
							<label for="exampleInputEmail1">手机号：</label>
							<div style="float: right;">允许<input type="radio" name="telAchi" value="1" />&nbsp禁止<input type="radio" name="telAchi" value="0" /></div>
							<input type="text" class="form-control" name="tel" id="exampleInputEmail1" value="<s:property value="#info.tel" />" />
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">邮箱：</label>
							<div style="float: right;">允许<input type="radio" name="emailAchi" value="1" />&nbsp禁止<input type="radio" name="emailAchi" value="0" /></div>
							<input type="email" name="email" value="<s:property value="#info.email" />" class="form-control" id="exampleInputEmail1" />
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">身份证号：</label>
							<div style="float: right;">允许<input type="radio" name="IDNumAchi" value="1" />&nbsp禁止<input type="radio" name="IDNumAchi" value="0" /></div>
							<input type="text" name="IDCardNum" value="<s:property value="#info.IDCardNum" />" class="form-control" id="exampleInputEmail1" />
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">QQ号：</label>
							<div style="float: right;">允许<input type="radio" name="QQAchi" value="1" />&nbsp禁止<input type="radio" name="QQAchi" value="0" /></div>
							<input type="text" name="QQnum" class="form-control" id="exampleInputEmail1" value="<s:property value="#info.QQnum" />" />
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">生日:</label>
							<div style="float: right;">允许<input type="radio" name="birthAchi" value="1" />&nbsp禁止<input type="radio" name="birthAchi" value="0" /></div>
							<input type="date" class="form-control" name="birthday" id="exampleInputEmail1" value="<s:date name="#info.birthday" format="yyyy-MM-dd" />" />
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">工作:</label>
							<div style="float: right;">允许<input type="radio" name="workAchi" value="1" />&nbsp禁止<input type="radio" name="workAchi" value="2" /></div>
							<input type="text" name="work" class="form-control" id="exampleInputEmail1" value="<s:property value="#info.work" />" />
						</div>
						<input type="button" class="btn btn-default" id="subbut" value="提交" />
					</form>
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
			load();
		    $("#subbut").click(function(){
		         $.ajax({
		            type:'POST',
		            url:'${pageContext.request.contextPath }/InfoAction_update',
		            data:$("#form1").serialize(),
		            success:function(data){
		                alert("修改成功");
		            },
		            error:function(data){
		            	console.log(data);
		            	alert("修改失败");
		            }
		        });
		    });
		});
	</script>
</html>