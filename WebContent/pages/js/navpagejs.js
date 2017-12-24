/**
 * 
 */
$(document).ready(function(){
		var i = 0;
		var clone = $(".banner .img li").first().clone();
		$(".banner .img").append(clone);
		var size = $(".banner .img li").length;
		for(var j=0;j<size-1;j++){
			$(".banner .num").append("<li></li>");
		}
		$(".banner .num li").first().addClass("on");

		// 鼠标滑入圆点
		$(".banner .num li").hover(function(){
			var index = $(this).index();
			i = index;
			$(".banner .img").stop().animate({left:-index*1400},500);
			$(this).addClass("on").siblings().removeClass("on");
		})

		// 自动轮播
		var t = setInterval(moveL,2000)
		// 对banner定时器的操作
		$(".banner").hover(function(){
			clearInterval(t);
		},function(){
			t = setInterval(moveL,2000);
		})
		// 左边按钮效果
		$(".banner .btn-l").click(function(){
			moveL();
		});
		// 右边按钮效果
		$(".banner .btn-r").click(function(){
			moveR();
		});
		function moveR(){
			i--;
			if (i==-1) {
				$(".banner .img").css({left:-(size-1)*1400});
				i = size-2;
			}
			$(".banner .img").stop().animate({left:-i*1400},500);
			$(".banner .num li").eq(i).addClass("on").siblings().removeClass("on");
		}
		function moveL(){
			i++;
			if (i==size) {				
				$(".banner .img").css({left:0});
				i = 1;
			}
			$(".banner .img").stop().animate({left:-i*1400},500);
			if (i == size-1) {
				$(".banner .num li").eq(0).addClass("on").siblings().removeClass("on");
			}
			$(".banner .num li").eq(i).addClass("on").siblings().removeClass("on");
		}
 


});