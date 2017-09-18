/**
 * 
 */
window.onload=function(){

	
//	获取组件Id
	
	var table_div = document.getElementById("table_div");
	var form = document.getElementById("form");
	var Ipwd = document.getElementById("pwd");	
	var pwd_help = document.getElementById("pwd_help");
	var submitBtn = document.getElementById("submit");
	
//	密码验证方法
	function pwdVerify(){		
//		获取表单的长度
		var pwdSize = Ipwd.value.length;
		if (pwdSize<6) {
//			提示用户密码长度小于6,请重新输入
			pwd_help.innerHTML="密码至少6位数,请重新输入";
			return false;
		}else{
			pwd_help.innerHTML="";
			return true;
		}
//		console.log(pwdSize);
		alert(pwdSize);
	}
	submitBtn.onmousedown=function(){
		submitBtn.style.opacity=0.5;
	}
	submitBtn.onmouseup=function(){
		submitBtn.style.opacity=1;
	}
//	提交按钮点击事件
	submitBtn.onclick=function(event){		
		if (pwdVerify()) {
			alert("表单提交");
			
			
		} else {
//			阻止提交
			
		}
	};
	
}