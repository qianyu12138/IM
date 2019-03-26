<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE head PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>注册</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/login_register.css" />
<!-- 注意以下两个jquery文件的顺序 -->
<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="js/jquery.validate.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
</head>


<script type="text/javascript">

	$.validator.addMethod(
		"checkUsername",
		function(value,element,params){
			var pass=true;
			$.ajax({
				"async":false,//异步操作
				"url":"${pageContext.request.contextPath}/UserAction_checkName",
				"data":{"username":value},//发送到服务器的数据
				"type":"POST",
				"dataType":"json",
				"success":function(data){
					pass = data.isExist;
				}
				
			});
			return !pass;
		}
	)

	$(function(){
		$("#registerForm").validate({
			rules:{
				"username":{
					"required":true,
					"checkUsername":true
				},
				"password":{
					"required":true,
					"rangelength":[5,16]
				},
				"confirm_password":{
					"required":true,
					"rangelength":[5,16],
					"equalTo":"#password"
				},
				"tel":{
					"required":true,
					"rangelength":[11,11]
				},
				"email":{
					"required":true,
					"email":true
				}
				
			},
			messages:{
				"username":{
					"required":"用户名不能为空",
					"checkUsername":"用户名已存在"
				},
				"password":{
					"required":"密码不能为空",
					"rangelength":"密码长度必须为5~16位"
				},
				"confirm_password":{
					"required":"密码不能为空",
					"rangelength":"密码长度必须为5~16位",
					"equalTo":"与密码不一致"
				},
				"tel":{
					"required":"手机号不能为空",
					"rangelength":"请输入正确的手机号"
				},
				"email":{
					"required":"邮箱不能为空",
					"email":"请输入正确的邮箱"
				}
			}
		});
	});
	
</script>
</head>

<body>

<div class="register-container">
	<h1>Information Manager</h1>
	
	<div class="connect">
		<p>Link the world. Share to world.</p>
	</div>
	
	<form action="${pageContext.request.contextPath }/UserAction_regist" method="post" id="registerForm">
		<div>
			<input type="text" name="username" class="username" placeholder="您的用户名" autocomplete="off"/>
		</div>
		<div>
			<input type="password" name="password" class="password" placeholder="输入密码" oncontextmenu="return false" onpaste="return false" id="password"/>
		</div>
		<div>
			<input type="password" name="confirm_password" class="confirm_password" placeholder="再次输入密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<div>
			<input type="text" name="tel" class="phone_number" placeholder="输入手机号码" autocomplete="off" id="number"/>
		</div>
		<div>
			<input type="email" name="email" class="email" placeholder="输入邮箱地址" oncontextmenu="return false" onpaste="return false" />
		</div>

		<button type="submit" id="submitbutton">注册</button>
	</form>
	<a href="index.jsp">
		<button type="button" class="register-tis">已经有账号？</button>
	</a>
</div>

</body>
<script src="js/jquery.min.js"></script>
<script src="js/common.js"></script>
<!-- 背景图片自动更换 -->
<script src="js/supersized.3.2.7.min.js"></script>
<script src="js/supersized-init.js"></script>
<!--表单验证-->
<script src="js/jquery.validate.min.js?var1.14.0"></script>
</html>