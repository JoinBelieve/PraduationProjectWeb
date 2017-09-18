<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style/conf.css">
<link rel="stylesheet" type="text/css" href="style/login.css">
<title>Insert title here</title>
</head>
<body>

<img alt="" src="img/login_background.jpg">
<div id="table">
	
	<div id="table_div">
		<h1>Smile宠物论坛</h1>
		<p class="login">管理员登录</p>
			<form method="post" action="">		
				<input id="user" type="text"  name="user.u_name" placeholder="用户名" size="20"/><br>
				<input id="pwd"  type="password" name="user.pwd"  placeholder="密码" size="20" /><br>
				<input id="submit" type="submit" value="登录">
			</form>	
			<div id="div_bottom">
				<a href="login.jsp">&返回登录页面</a>
			</div>
		
	</div>
	
</div>
</body>
</html>