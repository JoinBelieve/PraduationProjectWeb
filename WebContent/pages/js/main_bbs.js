$(document).ready(function() {
	$.getJSON("http://localhost:8080/GraduationProject/pages/selectAllMessageActionByJson",function(data){
    	$.each(data.messages,function(i,item){
    		console.log(item.m_id);
    		$("#contant_info").append(
    			"<div class='contant'>"+
    				"<div class='LisItem'>"+
    					"<a href='#'>"+"<img src='img/headimg.png' class='img-circle'></img>"+"</a>"+
    					"<a href='#' class='title'> "+"<h3>"+item.title+"</h3>"+"</a>"+
                        "<div class='contant_div'>"+
                            "<span class='time'>"+item.u_name+" 发布于 "+item.time+"</span>"+
                            "<span class='label label-info'>"+item.type+"</span>"+
                            "<span class='a_badge'>"+
                                "<span class='badge'>"+0+"</span>"+
                            "</span>"+
                        "</div>"+
    				"</div>"+
    			"</div>"

    		);
    	});
    });
	// $.ajax( "http://localhost:8080/GraduationProject/pages/selectAllMessageActionByJson" )
 //  .done(function(msg) {
 //    alert( "success" +msg);
    
 //  })
 //  .fail(function() {
 //    alert( "error" );
 //  })
 //  .always(function() {
    
 //  });
});