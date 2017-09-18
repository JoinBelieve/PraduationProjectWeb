/**
 * 
 */
window.onload=function(){
	var submitBtn = document.getElementById("submit");
	submitBtn.onmousedown=function(){
		submitBtn.style.opacity=0.5;
	};
	submitBtn.onmouseup=function(){
		submitBtn.style.opacity=1;
	};
	
};