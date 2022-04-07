/**
 * 
 */
$(document).ready(function() {

	$.ajax({
		url: '/management/dataMgt/selectFileInfo.do',
		type: 'POST',
		dataType: 'json',
		success: function(response) {
			console.log(response.resultList); // 여기서 로그 확인
			$("#data_mgt_table").dataTable({
				data: response.resultList,
				columns: [
					{ data: "FILE_SQ" },
					{ data: "FILE_NM_ORIG" },
					{ data: "FRST_DT" },
				]
			});
		}
	});


});