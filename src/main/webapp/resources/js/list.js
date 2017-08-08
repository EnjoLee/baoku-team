var nan = 0;
$(function(){
	
	$(".sex").each(function(){
		if($(this).val()=="男"){
			nan++;
		}
	})
	if(nan==1 && $(".sex").length==1){
		$("#number").text("他");
	}else if(nan>1){
		$("#number").text("他们");
	}else if(nan==1 && $(".sex").length>1){
		$("#number").text("他们");
	}else{
		$("#number").text("她");
	}
	
	/*var pl = $("#plength").find("p").text();
	if(pl.length>62){
		var html = "";
		html+=pl.substring(0,90);
		html+="</p><p>";
		html+=pl.substring(90,pl.length);
		$("#plength").text(html);
	}*/
})