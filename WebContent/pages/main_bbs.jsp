<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="style/main_bbs.css">
<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script src="js/main_bbs.js" type="text/javascript"></script>
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
    <div class="left_container col-xs-2">
      <ul class="left1">
        <li><a href="#" title=""><span class="glyphicon glyphicon-comment" aria-hidden="true"></span><b>&nbsp;&nbsp;所有话题</b></a></li>
        <li><a href="#" title=""><span class="glyphicon glyphicon-menu-hamburger" aria-hidden="true"></span>&nbsp;&nbsp;分类</a></li>
      </ul>
      <ul class="left2">
        <li><a href="#" title=""><span style="color: rgb(212, 106, 64);" class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></span>&nbsp;&nbsp;吉娃娃</a></li>
        <li><a href="#" title=""><span style="color: #33da33;" class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></span>&nbsp;&nbsp;柯基</a></li>
        <li><a href="#" title=""><span style="color: #0000ff;" class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></span>&nbsp;&nbsp;布达拉多</a></li>
        <li><a href="#" title=""><span style="color: #e3e3e3;" class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></span>&nbsp;&nbsp;秋田犬</a></li>
        <li><a href="#" title=""><span style="color: #434343;" class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></span>&nbsp;&nbsp;狮子狗</a></li>
      </ul>
    </div>
    <div class="col-xs-10">
        <!-- Single button -->
        <div class="btn-group">
            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              所有话题<span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
              <li><a href="#">最热话题</a></li>
              <li><a href="#">最新话题</a></li>
            </ul>
        </div>
       <!-- 话题 -->
        <div id="contant_info">              
        </div>
        
    </div>
  </div>
</div>

<div class="panel-footer">&copy;微笑宠物社区</div>
</body>
</html>