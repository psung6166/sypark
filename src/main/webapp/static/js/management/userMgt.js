/**
 * 
 */
$(document).ready(function() {

	$.ajax({
		url: '/management/userMgt/selectUserInfo.do',
		type: 'POST',
		dataType: 'json',
		success: function(response) {
			console.log(response.resultList); // 여기서 로그 확인
			$("#user_mgt_table").dataTable({
				data: response.resultList,
				columns: [
					{ data: "USER_SQ" },
					{ data: "USER_NM" },
					{ data: "USER_ID" },
					{ data: "USER_EMAIL" },
					{ data: "FRST_DT" },
				],
				scrollX:true,
				sScrollXInner: "100%",
			});
		}
	});


});