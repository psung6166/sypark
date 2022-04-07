/**
 *  comment : viewM0303.jsp 에 해당하는 js 파일입니다.
 *  date : 2022. 03. 22
 *  auth : psy	
 */

var lan_kor = {emptyTable: "데이터가 없습니다.",lengthMenu: "페이지당 _MENU_ 개씩 보기",info: "현재 _START_ - _END_ / _TOTAL_건",infoEmpty: "데이터 없음",infoFiltered: "( _MAX_건의 데이터에서 필터링됨 )",search: "",zeroRecords: "일치하는 데이터가 없습니다.",loadingRecords: "로딩중...",processing: "잠시만 기다려 주세요.", paginate: {next: "다음",previous: "이전",}, };

$(function() {
	$("[id^=name]").html(fnGetParameters('name'));
	
	$("#M0303_table").DataTable({
		scrollX:true,
		sScrollXInner: "100%",
		language: lan_kor,
		// 표시 건수기능 숨기기
		lengthChange: false,
		// 검색 기능 숨기기
		searching: false,
		// 정렬 기능 숨기기
		ordering: false,
		// 정보 표시 숨기기
		info: false,
		// 페이징 기능 숨기기
		paging: false
	});

	$("#M0303_table2").DataTable({
		scrollX:true,
		sScrollXInner: "100%",
		language: lan_kor,
		order: [[0, 'desc']],
	});
        

	$("#M0303_table3").DataTable({
		scrollX:true,
		sScrollXInner: "100%",
		language: lan_kor,
		// 표시 건수기능 숨기기
		lengthChange: false,
		// 검색 기능 숨기기
		searching: false,
		// 정렬 기능 숨기기
		ordering: false,
		// 정보 표시 숨기기
		info: false,
		// 페이징 기능 숨기기
		paging: false
	});
        

	$("#M0303_table4").DataTable({
		scrollX:true,
		sScrollXInner: "100%",
		language: lan_kor,
		// 표시 건수기능 숨기기
		lengthChange: false,
		// 검색 기능 숨기기
		searching: false,
		// 정렬 기능 숨기기
		ordering: false,
		// 정보 표시 숨기기
		info: false,
		// 페이징 기능 숨기기
		paging: false
	});
        
});

