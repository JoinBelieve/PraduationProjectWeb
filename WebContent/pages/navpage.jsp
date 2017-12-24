<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="style/navstyle.css">
<link rel="stylesheet" type="text/css" href="google_lobster/Lobster.css">
<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/navpagejs.js"></script>
<title>Insert title here</title>
<style>
	.main_content{
		margin-top:100px;
	}
	.navbar-brand{
		font-family:Lobster;
	}
</style>
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
					<li><a href="main_bbs.jsp">社区</a></li>
					<li><a href="#">下载</a></li>
					<li><a href="#">关于</a></li>
				</ul>    					
			</div>    	    				
    	</div>
    </nav> 
    <!-- stop nav -->
    <!-- 轮播图开始 -->
    <div class="container-fluid ">
    	<div class="row">
	    	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			    <div class="banner">
			    	<ul class="img">
			    		<li><a href="#"><img src="img/dog1.jpg"></a></li>
			    		<li><a href="#"><img src="img/dog2.jpg"></a></li>
			    		<li><a href="#"><img src="img/dog3.jpg"></a></li>
			    		<li><a href="#"><img src="img/dog4.jpg"></a></li>
			    	</ul>
			    	<ul class="num"></ul>
			 		<div class="btn btn-l"><</div>
			 		<div class="btn btn-r">></div>
			    </div>
	    	</div>
    	</div>    	
    </div>
    <!-- 轮播图结束 -->
    <!-- start main content -->    
    <div class="main_content">
		<div class="container">
			<div class="row">
			  <div class="col-sm-6 col-md-4">
			    <div class="thumbnail">
			      <img src="img/Maltese_Child.jpg" alt="..." class="img-responsive img-rounded">
			      <div class="caption">
			        <h3>玛尔济斯</h3>
			        <p>一种白色长毛的小型玩赏犬，性情温和，外表可爱，撒娇好客，因此十分受到人们的喜爱，是很受欢迎的狗品种之一，广泛饲养于世界各地。</p>
			        <p><a href="https://zh.wikipedia.org/wiki/玛尔济斯" class="btn btn-primary" role="button">详细</a></p>
			      </div>
			    </div>
			  </div>
			  <div class="col-sm-6 col-md-4">
			    <div class="thumbnail">
			      <img src="img/llw.png" alt="..." class="img-responsive img-rounded">
			      <div class="caption">
			        <h3>中国沙皮狗</h3>
			        <p>传统中国沙皮犬（骨嘴）、混血型沙皮狗（肉嘴）。传统中国沙皮犬 起源于中国南方，可追溯至汉代，有二千多年的历史。在发掘一些汉代时期的墓穴，经常都会发现类似传统中国沙皮犬型态的陶俑（陶犬）出现，在1920年代的广东被人用作斗狗.</p>
			        <p><a href="https://zh.wikipedia.org/wiki/中国沙皮狗" class="btn btn-primary" role="button">详细</a></p>
			      </div>
			    </div>
			  </div>
			  <div class="col-sm-6 col-md-4">
			    <div class="thumbnail">
			      <img src="img/Labrador_Retriever-holalau-20130201.jpg" alt="..." class="img-responsive img-rounded">
			      <div class="caption">
			        <h3>拉布拉多犬</h3>
			        <p>拉布拉多拾猎犬（简称拉布拉多；英语：Labrador Retriever）是一种中大型犬类，天生个性温和、活泼、没有攻击性和智能高，是适合被选作导盲犬或其他工作犬的狗品种，跟黄金猎犬、哈士奇并列三大无攻击性犬类之一。在美国犬业俱乐部中拉布拉多是目前登记数量最多的品种。</p>
			        <p><a href="https://zh.wikipedia.org/wiki/拉布拉多犬" class="btn btn-primary" role="button">详细</a></p>
			      </div>
			    </div>
			  </div>
			  <div class="col-sm-6 col-md-4">
			    <div class="thumbnail">
			      <img src="img/12.png" alt="..." class="img-responsive img-rounded">
			      <div class="caption">
			        <h3>金毛寻回犬</h3>
			        <p>它是最常见的家犬之一，因为它很容易养，有耐心并且对主人要求不多，只要定期的运动，食物和兽医体检就可以了。金毛寻回犬的独特之处在于它讨人喜欢的性格。</p>
			        <p><a href="https://zh.wikipedia.org/wiki/金毛寻回犬" class="btn btn-primary" role="button">详细</a></p>
			      </div>
			    </div>
			  </div>
			  <div class="col-sm-6 col-md-4">
			    <div class="thumbnail">
			      <img src="img/20080420_LunaHallett.jpg" alt="..." class="img-responsive img-rounded">
			      <div class="caption">
			        <h3>雪纳瑞</h3>
			        <p>又称史纳莎，是一种原产于德国的犬种。其名称在德语的意思为八字胡，因为此犬种的特征在于其鼻子周围有很长的毛覆盖住,常见的毛色有黑色及银灰等。</p>
			        <p><a href="https://zh.wikipedia.org/wiki/雪纳瑞" class="btn btn-primary" role="button">详细</a></p>
			      </div>
			    </div>
			  </div>
			  <div class="col-sm-6 col-md-4">
			    <div class="thumbnail">
			      <img src="img/11.jpg" alt="..." class="img-responsive img-rounded">
			      <div class="caption">
			        <h3>吉娃娃</h3>
			        <p>吉娃娃（西班牙语：Chihuahueño，英语：Chihuahua），是世界上最小的犬种之一，以墨西哥奇瓦瓦州命名。</p>
			        <p><a href="https://zh.wikipedia.org/wiki/吉娃娃" class="btn btn-primary" role="button">详细</a></p>
			      </div>
			    </div>
			  </div> 
			 
			</div>
		</div>
	</div>
    <!-- stop main content -->
    <div class="panel-footer">&copy;微笑宠物社区</div>


</body>
</html>