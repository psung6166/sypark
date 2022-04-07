/**
 
 event 파일
 
 */
 
 $(function(){
	  
	$("[id^=manufacturing_a_1]").on("click",function(){
		if($("[id^=manufacturing_b_1]").css("display") === "none"){
			$("[id^=manufacturing_b_1]").slideDown();
		}else{
			$("[id^=manufacturing_b_1]").slideUp();
		}
	});
	$("[id^=manufacturing_a_2]").on("click",function(){
		if($("[id^=manufacturing_b_2]").css("display") === "none"){
			$("[id^=manufacturing_b_2]").slideDown();
		}else{
			$("[id^=manufacturing_b_2]").slideUp();
		}
	});
	$("[id^=manufacturing_a_3]").on("click",function(){
		if($("[id^=manufacturing_b_3]").css("display") === "none"){
			$("[id^=manufacturing_b_3]").slideDown();
		}else{
			$("[id^=manufacturing_b_3]").slideUp();
		}
	});
	$("[id^=manufacturing_a_4]").on("click",function(){
		if($("[id^=manufacturing_b_4]").css("display") === "none"){
			$("[id^=manufacturing_b_4]").slideDown();
		}else{
			$("[id^=manufacturing_b_4]").slideUp();
		}
	});
	$("[id^=manufacturing_a_5]").on("click",function(){
		if($("[id^=manufacturing_b_5]").css("display") === "none"){
			$("[id^=manufacturing_b_5]").slideDown();
		}else{
			$("[id^=manufacturing_b_5]").slideUp();
		}
	});
	$("[id^=manufacturing_a_6]").on("click",function(){
		if($("[id^=manufacturing_b_6]").css("display") === "none"){
			$("[id^=manufacturing_b_6]").slideDown();
		}else{
			$("[id^=manufacturing_b_6]").slideUp();
		}
	});
	$("[id^=manufacturing_a_7]").on("click",function(){
		if($("[id^=manufacturing_b_7]").css("display") === "none"){
			$("[id^=manufacturing_b_7]").slideDown();
		}else{
			$("[id^=manufacturing_b_7]").slideUp();
		}
	});

	$("[id^=sales_a_0]").on("click",function(){
		if($("[id^=sales_b_0]").css("display") === "none"){
			$("[id^=sales_b_0]").slideDown();
		}else{
			$("[id^=sales_b_0]").slideUp();
		}
	});
	$("[id^=sales_a_1]").on("click",function(){
		if($("[id^=sales_b_1]").css("display") === "none"){
			$("[id^=sales_b_1]").slideDown();
		}else{
			$("[id^=sales_b_1]").slideUp();
		}
	});
	$("[id^=sales_a_2]").on("click",function(){
		if($("[id^=sales_b_2]").css("display") === "none"){
			$("[id^=sales_b_2]").slideDown();
		}else{
			$("[id^=sales_b_2]").slideUp();
		}
	});
	$("[id^=sales_a_3]").on("click",function(){
		if($("[id^=sales_b_3]").css("display") === "none"){
			$("[id^=sales_b_3]").slideDown();
		}else{
			$("[id^=sales_b_3]").slideUp();
		}
	});
	$("[id^=sales_a_4]").on("click",function(){
		if($("[id^=sales_b_4]").css("display") === "none"){
			$("[id^=sales_b_4]").slideDown();
		}else{
			$("[id^=sales_b_4]").slideUp();
		}
	});
	$("[id^=sales_a_5]").on("click",function(){
		if($("[id^=sales_b_5]").css("display") === "none"){
			$("[id^=sales_b_5]").slideDown();
		}else{
			$("[id^=sales_b_5]").slideUp();
		}
	});
	$("[id^=sales_a_6]").on("click",function(){
		if($("[id^=sales_b_6]").css("display") === "none"){
			$("[id^=sales_b_6]").slideDown();
		}else{
			$("[id^=sales_b_6]").slideUp();
		}
	});
	
});


function fnMoveManufacturing(name, code){
	location.href = "/manufacturing/view"+code+".do?name="+name+"&code="+code;
}

function fnMoveSales(name, code){
	location.href = "/sales/view"+code+".do?name="+name+"&code="+code;
}

function fnShowAll(){
	$("[id^=manufacturing_b_]").slideDown();
	$("[id^=sales_b_]").slideDown();
}

function fnHideAll(){
	$("[id^=manufacturing_b_]").slideUp();
	$("[id^=sales_b_]").slideUp();
}

function fnSlideTeam1(){
	if($("[id^=slide_team1_option]").css("display") === "none"){
		$("[id^=slide_team1_option]").slideDown();
	}else{
		$("[id^=slide_team1_option]").slideUp();
	}
}

function fnSlideTeam2(){
	if($("[id^=slide_team2_option]").css("display") === "none"){
		$("[id^=slide_team2_option]").slideDown();
	}else{
		$("[id^=slide_team2_option]").slideUp();
	}
}

function fnSlideTeam3(){
	if($("[id^=slide_team3_option]").css("display") === "none"){
		$("[id^=slide_team3_option]").slideDown();
	}else{
		$("[id^=slide_team3_option]").slideUp();
	}
}

function fnGetParameters(val){
	var getParameters = function (paramName) { // 리턴값을 위한 변수 선언
		var returnValue; // 현재 URL 가져오기 
		var url = location.href; // get 파라미터 값을 가져올 수 있는 ? 를 기점으로 slice 한 후 split 으로 나눔 
		var parameters = (url.slice(url.indexOf('?') + 1, url.length)).split('&'); // 나누어진 값의 비교를 통해 paramName 으로 요청된 데이터의 값만 return 
		for (var i = 0; i < parameters.length; i++) {
			var varName = parameters[i].split('=')[0]; 
			if (varName.toUpperCase() == paramName.toUpperCase()) { 
				returnValue = parameters[i].split('=')[1]; return decodeURIComponent(returnValue); 
			}
		}
	};
	return getParameters(val);
}
function fnDataAnalysis(type){
	location.href="/home/main.do?type="+type;
}
