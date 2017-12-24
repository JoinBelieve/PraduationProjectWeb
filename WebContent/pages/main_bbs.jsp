<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="style/main_bbs.css">
<script type="text/javascript" src="js/bootstrap.js"></script>
<title>Insert title here</title>
<style>
      *{
      padding: 0;
      margin: 0;
      list-style: none;
    }
    .navbar{
      margin:0;
      padding:0;
    }
    .main-header{
      height:180px;
    }
    .title_font{
      padding-top:40px;
      color:#fff;
    }
</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">微笑宠物社区</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="main_bbs.jsp">首页</a></li>
        <li><a href="navpage.jsp">主站</a></li>        
      </ul>
      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="搜索其实很简单">
        </div>
        <button type="submit" class="btn btn-default">🔍</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">登录</a></li>
        <li><a href="#">注册</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<!-- nav结束 -->
<header class="main-header"  style="background-image: url(img/banner.jpg)">
        <div class="container">
            <div class="row">
                <div class="title_font col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <h2>Welcome to SimleBBS!</h2>
                    <h4>微笑宠物社区欢迎您！</h4>
                </div>
            </div>
        </div>
</header>
<div class="main_container container">
  <div class="row">
    <div class="left_container col-xs-4">
      <ul>
        <li><span class="glyphicon glyphicon-comment" aria-hidden="true"> </span> <b>所有话题</b></li>
      </ul>
    </div>
    <div class="col-xs-8">
      
    </div>
  </div>
</div>


</body>
</html>