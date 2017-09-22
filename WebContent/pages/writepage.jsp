<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style/writepage.css"></link>
<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="js/writepage.js"></script>
<title>Insert title here</title>
</head>
<body>
	<%
		String time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
	%>
	
	<div id="nav">
		<div class="logo"><a href="mainpage.jsp"><img alt="" src="img/logo.jpg"></a></div>
		<div class="title"><h3>写文章</h3></div>
		<input id="input" type="button" value="发布"/>		
	</div>
	<div id="table" class="table">
		<div class="div_form">
			<form id="form" action="addMessageAction" method="post">
				<input type="hidden" value="<%=time %>" name="message.time"/>
				<input type=hidden value="${loginUserName}" name="message.u_name"/>
				<input id="iTitle" class="iTitle" type="text" placeholder="请输入标题" name="message.title"/><br>
				<span>请选择论坛</span><br>
				<select id="select" name="message.type">
					<option value="">---</option>
					<option value="猫星人">猫星人</option>
					<option value="阿拉斯加">阿拉斯加</option>
					<option value="柯基">柯基</option>
					<option value="吉娃娃">吉娃娃</option>
				</select><br>
				<textarea id="iContent" class="iContent" type="text" placeholder="请输入正文" name="message.content"></textarea>
				<input type="submit" value="提交" style="display: none"/>
			</form>
		</div>
		
	</div>
	
</body>
</html>