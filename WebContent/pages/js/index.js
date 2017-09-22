/**
 */
$(document).ready(function(){
  
       $("#head_div2").on("click",function(e){
           $("#cdiv2").slideToggle(500);
//            停止该事件的传播
           e.stopPropagation();
       });
       
       $(document).click(function() {
            $('#cdiv2').slideUp(500);
        });

    
    
});
