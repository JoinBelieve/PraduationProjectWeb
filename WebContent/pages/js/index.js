/**
 */
$(document).ready(function() {
	//     调用头像下拉菜单功能
	headDown();


});


//   头像的下拉菜单功能
function headDown() {
	$("#head_div2").on("click", function(e) {
		$("#cdiv2").slideToggle(500);
		//            停止该事件的传播
		e.stopPropagation();
	});

	$(document).click(function() {
		$('#cdiv2').slideUp(500);
	});
}