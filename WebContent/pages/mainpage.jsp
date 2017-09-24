<%@page import="com.beli.pojo.Message"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link rel="stylesheet" type="text/css" href="style/index.css">
<link rel="stylesheet" type="text/css" href="style/index2.css">
<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</head>
<body id="body">

<!--Smile  -->
<div id="head_div">
	<div id="head_logo">
		<a class="head_a" href="mainpage.jsp"><img alt="" src="img/logo.jpg" width="200" height="50"></a>
	</div>
	<div id="nav">
			<ul id="head_ul">
				<li class="head_li"><a class="head_a" href="">话题</a></li>
				<li class="head_li"><a class="head_a" href="">发现</a></li>
				<li class="head_li"><a class="head_a" href="">百科</a></li>
			</ul>		
	</div>	
	<div id="head_div2">
		<div class="cdiv1"><img id="img" alt="" src="img/headimg.png"><p>${loginUserName}</p></div>		
			
	</div>
	<div id="cdiv2" class="cdiv2">
		<ul>
			<li><a href="meinfo.jsp">个人信息</a></li>
			<li><a href="#">我的宠物</a></li>
			<li><a href="#">我的设置</a></li>
			<li><a href="index.jsp">退出登录</a></li>
		</ul>
	</div>
</div>

<div id="title">
	<div id="title_inner">
		<ul>
			<li><a href="#">最新</a></li>
			<li><a href="#">热门</a></li>
			<li><a href="writepage.jsp">发布</a></li>
		</ul>
	</div>
	
	
		
	
		<div id="title_in_left">
			<%
				int i =0;
				List<Message> list = (List<Message>)session.getAttribute("MessageList");
				for(Message m : list){
					i++;
					
					out.write(
				"<div>"+
					"<p class='huati'>来自话题:"+m.getType()+"</p>"+
							"<span class='head_title'>"+m.getTitle()+"</span><br>"+
						"<p class='head_p'><img class='head_img'src='img/headimg.png'/>"+"&nbsp;&nbsp;<span class='cUserName'>"+m.getU_name()+"</p>"+					
						"<p id='centent"+i+"' class='centent'>"+m.getContent()+"</p><a id='showall' href='SelectOneMessageAction?message.m_id="+m.getM_id()+"'>查看全文</a>"+
					"<span class='ping'>评论(个数)&nbsp;&nbsp;&nbsp;"+m.getTime()+"</span>"+
						
				"</div>");
				}
				
			%>
			<!-- 
			<div>
				<p class="huati">来自话题:</p>
				<span class="head_title">标题</span><br>
				<img class="head_img" src="img/headimg.png"/><span class="cUserName">&nbsp;用户名</span>&nbsp;&nbsp;
				<p class="centent">内容</p>
				<span class="ping">评论(个数)&nbsp;&nbsp;&nbsp;时间</span>				
			</div>
			 -->
		</div>
		
	
	
	<div id="title_in_right">
		<div id="title_right">
			<div>
				<img alt="收藏" src="img/shoucang.png" width="45px" height="45px"><br>
				<span style="font-size: 15px;font-family: sans-serif;">我的收藏</span>
			</div>		
			<div>
				<img alt="关注" src="img/guanzhu.png" width="45px" height="45px"><br>
				<span style="font-size: 15px;font-family: sans-serif;">我的关注</span>
			</div>	
			<div>
				<img alt="反馈建议" src="img/jianyifankui.png" width="45px" height="45px"><br>
				<span style="font-size: 15px;font-family: sans-serif;">反馈建议</span>
			</div>		
			
		</div>
		<div></div>
	</div>
</div>


<!-- 回到顶部 -->
<div id="back_top">
	<a href="#"><img alt="" src="img/back_top.png"></a>
</div>

</body>
</html>