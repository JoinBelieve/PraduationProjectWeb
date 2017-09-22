<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<script type="text/javascript" src="js/formVerify.js"></script>
<script type="text/javascript">
var flag ;
function checkForm(){	
	var Ipwd = document.getElementById("pwd");
	var Iuser = document.getElementById("user");
	var userHelp = document.getElementById("user_help");
	var pwdHelp = document.getElementById("pwd_help");
	if (Iuser.value.length == 0 && Ipwd.value.length == 0) {
		userHelp.innerHTML="用户名不能为空";		
		pwdHelp.innerHTML="密码不能为空"
		return false;
	}else if(Iuser.value.length == 0){
		userHelp.innerHTML="用户名不能为空";	
		return false;
	}else if(Ipwd.value.length == 0){
		pwdHelp.innerHTML="密码不能为空";
		return false;
	}else if(flag){
		flag = false;
		return false;
	}
}

function IpwdFunction(){
	var Ipwd = document.getElementById("pwd");
	var pwdHelp = document.getElementById("pwd_help");
	//获得密码的长度
	var pwdLength = Ipwd.value.length;
	if(pwdLength>1 && pwdLength<6){
		pwdHelp.innerHTML="至少6位数密码";	
		flag=true;	
	}else{
		pwdHelp.innerHTML="";
	}
};
function IUserFunction(){
	var Iuser = document.getElementById("user");
	var userHelp = document.getElementById("user_help");
	//获得密码的长度
	var userLength = Iuser.value.length;
	if(userLength>1 && userLength<2){
		userHelp.innerHTML="至少2个字符";	
		flag=true;	
	}else{
		userHelp.innerHTML="";
	}
};
</script>
<link rel="stylesheet" type="text/css" href="style/conf.css">
<link rel="stylesheet" type="text/css" href="style/login.css">
<title>注册</title>
</head>
<body>


<img alt="" src="img/login_background.jpg">
<div id="table">
	
	<div id="table_div">
		<h1>Smile宠物论坛</h1>
		<p>欢迎您</p>
		<p class="login">注册界面</p>
		
			<form id="form" method="post" action="registerUserAction" onsubmit="return checkForm()" >		
				<input id="user" type="text"  name="user.u_name" placeholder="用户名(至少2位数)" size="20" onblur="IUserFunction()"/><br><span id="user_help" class="help"></span><br>
				<input id="pwd"  type="password" name="user.pwd"  placeholder="密码(至少6位数)" size="20" onblur="IpwdFunction()"/><br><span id="pwd_help" class="help"></span><br>
				<input id="submit" type="submit"  value="注册">
			</form>	
			<div id="div_bottom">
				<a href="index.jsp">返回登录页面</a>	&nbsp;&nbsp;&nbsp;
				<a href="">管理员登录</a>
			</div>		
	</div>
	
</div>

</body>
</html>