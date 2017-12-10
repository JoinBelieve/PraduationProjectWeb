<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="style/navstyle.css">
<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/navpagejs.js"></script>
<title>Insert title here</title>

</head>
<body>
<!-- start header -->
    <header class="main-header"  style="background-image: url(img/banner.jpg)">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <!-- start logo -->
                    <a class="branding" href="http://www.ghostchina.com" title="Smile宠物社区"><img src="img/dog-small.png" alt="Smile宠物社区" class="img-responsive center-block"></a>
                    <!-- end logo -->
                </div>
            </div>
        </div>
    </header>
    <!-- start nav -->
    <nav class="navbar navbar-default">
    	<div class="container-fluid">
    		<div class="navbar-header">
    			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					 <span class="sr-only">Toggle navigation</span>
					 <span class="icon-bar"></span>
					 <span class="icon-bar"></span>
					 <span class="icon-bar"></span>
				</button>
    			<a href="#" class="navbar-brand">SmilePetBBS</a>
    		</div>    	
    		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">    		
    			<ul class="nav navbar-nav">
					<li><a href="#">宠物百科</a></li>
					<li><a href="#">社区</a></li>
					<li><a href="#">下载</a></li>
					<li><a href="#">关于</a></li>
				</ul>    					
		</div>    	    				
    	</div>
    </nav> 
    <!-- stop nav -->
    <!-- 轮播图开始 -->
    <div class="container-fluid">
    	<div class="row">
	    	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			    <div class="banner">
			    	<ul class="img">
			    		<li><a href="#"><img src="img/dog1.jpg"></a></li>
			    		<li><a href="#"><img src="img/dog2.jpg"></a></li>
			    		<li><a href="#"><img src="img/dog3.jpg"></a></li>
			    		<li><a href="#"><img src="img/dog4.jpg"></a></li>
			    	</ul>
			    	<ul class="num">
			    		<li></li>
			    		<li></li>
			    		<li></li>
			    		<li></li>
			    	</ul>
			 		<div class="btn btn-l"><</div>
			 		<div class="btn btn-r">></div>
			    </div>
	    	</div>
    	</div>    	
    </div>
    
    <!-- 轮播图结束 -->
    <!-- start main content -->
    <article id=108 class="post">
	    <div class="post-head">
	        <h1 class="post-title"><a href="/custom-excerpts/">自定义文章摘要（Excerpt）</a></h1>
	        <div class="post-meta">
	            <span class="author">作者：<a href="/author/wangsai/">王赛</a></span> &bull;
	            <time class="post-date" datetime="2017年8月9日星期三下午4点57分" title="2017年8月9日星期三下午4点57分">2017年8月9日</time>
	        </div>
	    </div>
	    <div class="post-content">
	        <p>随着 Ghost 1.0 和 Hemingway Mode 的发布，今天我们又发布了“自定义文章摘要”功能。 默认情况下，Ghost 会截取文章正文开头部分的文字（一般是55个字）作为文章摘要并显示在文章归档列表中。摘要有助于读者快速了解文章所要表达的内容。但是，如果你希望自己定</p>
	    </div>
	    <div class="post-permalink">
	        <a href="/custom-excerpts/" class="btn btn-default">阅读全文</a>
	    </div>

	    <footer class="post-footer clearfix">
	        <div class="pull-left tag-list">
	            <i class="fa fa-folder-open-o"></i>	            
	        </div>
	        <div class="pull-right share">
	        </div>
	    </footer>
	</article>
	<div class="container">
		<div class="row">
		  <div class="col-sm-6 col-md-4">
		    <div class="thumbnail">
		      <img src="..." alt="...">
		      <div class="caption">
		        <h3>Thumbnail label</h3>
		        <p>...</p>
		        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
		      </div>
		    </div>
		  </div>
		  <div class="col-sm-6 col-md-4">
		    <div class="thumbnail">
		      <img src="..." alt="...">
		      <div class="caption">
		        <h3>Thumbnail label</h3>
		        <p>...</p>
		        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
		      </div>
		    </div>
		  </div>
		  <div class="col-sm-6 col-md-4">
		    <div class="thumbnail">
		      <img src="..." alt="...">
		      <div class="caption">
		        <h3>Thumbnail label</h3>
		        <p>...</p>
		        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
    <!-- stop main content -->
</body>
</html>