/**
 *  comment : viewM0302.jsp 에 해당하는 js 파일입니다.
 *  date : 2022. 03. 18
 *  auth : psy	
 */

$(function() {
	$("[id^=name]").html(fnGetParameters('name'));
	//selectViewProductiveRank();
	
	$("#M0302_table").DataTable({
		responsive: true,
		scrollX:true,
		sScrollXInner: "100%",
		autoWidth: true,
		language: {
		    emptyTable: "데이터가 없습니다.",
		    lengthMenu: "페이지당 _MENU_ 개씩 보기",
		    info: "현재 _START_ - _END_ / _TOTAL_건",
		    infoEmpty: "데이터 없음",
		    infoFiltered: "( _MAX_건의 데이터에서 필터링됨 )",
		    search: "",
		    zeroRecords: "일치하는 데이터가 없습니다.",
		    loadingRecords: "로딩중...",
		    processing: "잠시만 기다려 주세요.",
		    paginate: {
		      next: "다음",
		      previous: "이전",
		    },
		},
        order:[1,"asc"],
         columnDefs: [
			{ targets: 2, render: $.fn.dataTable.render.ellipsis( 7 ) }
			, { targets: 3, render: $.fn.dataTable.render.ellipsis( 7 ) }
			, { targets: 4, render: $.fn.dataTable.render.ellipsis( 7 ) }
			, { targets: 5, render: $.fn.dataTable.render.ellipsis( 7 ) }
			, { targets: 6, render: $.fn.dataTable.render.ellipsis( 7 ) }
			, { targets: 7, render: $.fn.dataTable.render.ellipsis( 7 ) }
			, { targets: 8, render: $.fn.dataTable.render.ellipsis( 7 ) }
			, { targets: 9, render: $.fn.dataTable.render.ellipsis( 7 ) }
			, { targets: 10, render: $.fn.dataTable.render.ellipsis( 7 ) }
		]
	});
        
});

function selectViewProductiveRank() {

	var param = "";

	$.ajax({
		type: 'GET',
		url: '/manufacturing/selectViewProductiveRank.do',
		dataType: 'json',
		async: false,
		data: param,
		success: function(response) {
			var data = response.resultList;
			var table = $('#M0302_table');
			var thead = $('#M0302_table_thead');
			var tbody = $('#M0302_table_tbody');
			var tfoot = $("#M0302_table_tfoot");

			var h_html = '';
			h_html += '<tr>';
			for (var i = 1; i < data[0].length; i++) {
				h_html += '<th>';
				h_html += data[0][i];
				h_html += '</th>';
			}
			h_html += '</tr>';
			thead.append(h_html);

			var b_html = '';
			var indexOf = '';
			for (var i = 1; i < data[1].length + 1; i++) {
				b_html += '<tr>';
				for (var j = 1; j < data[i].length; j++) {
					indexOf = data[i][j].indexOf("-");
					if(indexOf === -1 && data[i][j].length > 10){
						b_html += '<td style="background-color:#0127FF; color:white;">';
						b_html += data[i][j];
						b_html += '</td>';
					}else if(data[i][j].length > 10){
						b_html += '<td style="background-color:#FF1800;color:white;">';
						b_html += data[i][j];
						b_html += '</td>';
					}else{
						b_html += '<td>';
						b_html += data[i][j];
						b_html += '</td>';
					}
				}
				b_html += '</tr>';
			}
			tbody.append(b_html);

			/*
			var f_html = '';
			f_html += '<tr>';
			for (var i = 1; i < data[0].length; i++) {
				f_html += '<th>';
				f_html += data[0][i];
				f_html += '</th>';
			}
			f_html += '</tr>';
			tfoot.append(f_html);
			*/
		},
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}