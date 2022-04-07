/**
 *  comment : viewM0303.jsp 에 해당하는 js 파일입니다.
 *  date : 2022. 03. 22
 *  auth : psy	
 */

var lan_kor = {emptyTable: "데이터가 없습니다.",lengthMenu: "페이지당 _MENU_ 개씩 보기",info: "현재 _START_ - _END_ / _TOTAL_건",infoEmpty: "데이터 없음",infoFiltered: "( _MAX_건의 데이터에서 필터링됨 )",search: "",zeroRecords: "일치하는 데이터가 없습니다.",loadingRecords: "로딩중...",processing: "잠시만 기다려 주세요.", paginate: {next: "다음",previous: "이전",}, };

$(function() {
	$("[id^=name]").html(fnGetParameters('name'));
	
	$("#M0304_table").DataTable({
		scrollX:true,
		sScrollXInner: "100%",
		language: lan_kor,
		searching: false
	});
	
        
});

function fnChangeTeam(){
	
	$.ajax({
		url: '/manufacturing/selectListM0304.do',
		type: 'POST',
		dataType: 'json',
		async: false,
		success: function(response) {
			console.log(response.resultList); // 여기서 로그 확인
			$("#M0304_table").dataTable({
				destroy: true,
				data: response.resultList,
				columns: [
					{
						data: function(data){
							return "<div class='text-center'>"+data.FEATURE+"</div>";
						}
					},
					{
						data: function(data){
							if(data.TEAM == "1"){
								return "<div class='text-center' id='divTeam1'>"+ data.TEAM +"</div>";							
							}
							if(data.TEAM == "2"){
								return "<div class='text-center' id='divTeam2'>"+ data.TEAM +"</div>";							
							}
							if(data.TEAM == "3"){
								return "<div class='text-center' id='divTeam3'>"+ data.TEAM +"</div>";							
							}
						}
					},
					{ 
						data: function(data){
							return "<div class='text-end'  style='color:blue;'>"+data.LOW_1+"</div>";
						}
					},
					{ 
						data: function(data){
							return "<div class='text-end' style='color:blue;'>"+data.LOW_5+"</div>";
						}
					},
					{ 
						data: function(data){
							return "<div class='text-end' style='color:blue;'>"+data.LOW_10+"</div>";
						}
					},
					{ 
						data: function(data){
							return "<div class='text-end' style='color:red;'>"+data.UP_90+"</div>";
						}
					},
					{ 
						data: function(data){
							return "<div class='text-end' style='color:red;'>"+data.UP_95+"</div>";
						} 
					},
					{ 
						data:"UP_99", sClass:"text-center"
					},
				],
				scrollX:true,
				sScrollXInner: "100%",
				searching: false,
				language: lan_kor,
			});
				/*$("[id^=divTeam1]").parent('td').css('background-color','#c9c9c9');
				$("[id^=divTeam2]").parent('td').css('background-color','#ffd966');
				$("[id^=divTeam3]").parent('td').css('background-color','#8497b0');*/
		}
	});
	

	
	
}
