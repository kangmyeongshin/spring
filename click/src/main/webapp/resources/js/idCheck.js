$(document).ready(function(){

	$(".idCheck").click(function(){
		
		 var query = {uid : $("#uid").val()};
		 
		 $.ajax({
		  url : "/click/member/idCheck",
		  data : query,
		  success : function(data) {
		  		
				if(data == 1) {
			    	$(".result .msg").text("사용 불가");
			    	$(".result .msg").attr("style", "color:#f00");  
			    	
			    	$("#submit").attr("disabled","disabled");
			   	}else {
				    $(".result .msg").text("사용 가능");
				    $(".result .msg").attr("style", "color:#00f");
				    
				    $("#sumit").removeAttr("disabled");
			 	  	}
				}
			});  // ajax 끝
		});
});
