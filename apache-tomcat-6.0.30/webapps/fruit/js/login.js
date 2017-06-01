$(function() {
	
	$("#username1").focus(function(){
		$(this).val("");
		 $("#resultUsername1").hide();
		});
	
	
	$("#username1").blur(function() {
		var uname = $(this).val();
		$.post("ajaxLogin.action",{"username1":uname},
		function(returnData,status){
			if("success"==status){
				if(returnData){
					$("#resultUsername1").html("用户名已存在!").show();
				}else{
					$("#resultUsername1").html("用户名可注册!").show();
					
				}
			}
		});
		
	});
});