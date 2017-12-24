/**
 * 
 */
$(document).ready(function(){
		var i = 0;
		$(".banner btn-l").click(function(){
			i++;
			$(".banner .img").animate({left:-i*1400},500);
		});
});