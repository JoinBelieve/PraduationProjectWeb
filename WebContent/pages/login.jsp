<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/formVerify.js"></script>
<link rel="stylesheet" type="text/css" href="style/conf.css">
<link rel="stylesheet" type="text/css" href="style/login.css">
<title>登录</title>
</head>
<body>
<img alt="" src="img/login_background.jpg">
<div id="table">
	
	<div id="table_div">
		<h1>Smile宠物论坛</h1>
		<p>欢迎您</p>
		<p class="login">登录界面</p>
			<form name="formName" method="post" action="">		
				<input id="user" type="text"  name="user.u_name" placeholder="用户名" size="20"/><br><span id="user_help" class="help"></span><br>
				
				<input id="pwd"  type="password" name="user.pwd"  placeholder="密码" size="20"/><br><span id="pwd_help" class="help"></span>
				
				<input id="submit" type="button" value="登录">
			</form>	
			<div id="div_bottom">
				<a href="register.jsp">注册账号</a>	&nbsp;&nbsp;&nbsp;
				<a href="">管理员登录</a>
			</div>
		
	</div>
	
</div>


</body>
</html>