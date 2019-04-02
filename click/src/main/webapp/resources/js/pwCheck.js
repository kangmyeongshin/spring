$(function(){
	$("#alert-success").hide();
    $("#alert-danger").hide();
    $("input").keyup(function(){
          var pass=$("#pass").val();
          var pw2=$("#pw2").val();
            if(pass != null || pw2 != ""){
                if(pass == pw2){
                    $("#alert-success").show();
                    $("#alert-danger").hide();
                    $("#submit").removeAttr("disabled");
                }else{
                    $("#alert-success").hide();
                    $("#alert-danger").show();
                    $("#submit").attr("disabled", "disabled");
                }    
            }
        });
    });