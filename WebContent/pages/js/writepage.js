/**
 * 
 */
$(document).ready(function(){
// flag 发布的状态 :false 不能发布 ; true 可以发布
	var flag = false;	
//	$("input").on("click",function(){
//		var iTitle = $("#iTitle").val().length;
//		console.log(iTitle);
//	});
	function isText(){		
			var iTitle = $("#iTitle").val().length;
			var iContent = $("#iContent").val().length;
			console.log(iTitle+"--"+iContent);	
			if (iTitle>=3 && iContent!=0) {				
//				可以提交
				$("#input").css({
					"background":"#1E90FF",
					"color":"#fff",
					"cursor":"pointer",
				});
				$('#input').on("mousedown",function(){
					$('#input').css("opacity","0.5");
				});
				$('#input').on("mouseup",function(){
					$('#input').css("opacity","1");
				});
				flag=true;
			}else {
//				不可以提交
				$("#input").css({
					"background":"#fff",
					"color":"#000"
				});
				flag=false;
			}
	}
//	实时监听文本框内容
	$("#iTitle").on("input propertychange",isText);
	$("#iContent").on("input propertychange",isText);
	
	
//	提交按钮
	$("#input").on("click",function(){
//		
		
		var type = $("#select").val()?true:false;		
			if (flag) {
//				可以提交
				if(type==false){
					alert("请选择论坛类型");
				}else {
					console.log(flag+"可以提交了");
					$("#form").submit();
					alert("发布成功");
				}				
			}
			else{
//				不可以提交
				console.log(flag+"no可以提交了");
			}			
		
	});
});