/**
 *  comment : 유통 viewS0100.jsp 에 해당하는 js 파일입니다.
 *  date : 2022. 03. 23
 *  auth : psy	
 */

window.addEventListener('DOMContentLoaded', event => {
    // Simple-DataTables
    // https://github.com/fiduswriter/Simple-DataTables/wiki

    const datatablesSimple = document.getElementById('S0100_table');
    if (datatablesSimple) {
        new simpleDatatables.DataTable(datatablesSimple);
    }
});

$(function() {
	$("[id^=name]").html(fnGetParameters('name'));
	$(".dropdown-toggle").dropdown();
	
/*	$("#ss").DataTable({
		searching: false,    //검색란 표시 설정
          ordering: false,      //글 순서 설정
          paging: true,        //페이징 표시 설정
           bLengthChange: true, // n개씩보기
           lengthMenu : [ [5], [5] ], // 10/25/50/All 개씩보기
		colums:[
		],
		scrollX:true,
		sScrollXInner: "100%",
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
	});*/
	
	$("#start_dt").datepicker();
	$("#end_dt").datepicker();
  
});

/*google.charts.load('current', {'packages':['bar']});
  google.charts.setOnLoadCallback(drawChart);

  function drawChart() {
    var data = google.visualization.arrayToDataTable([
      ['Year', 'Sales', 'Expenses', 'Profit'],
      ['2014', 1000, 400, 200],
      ['2015', 1170, 460, 250],
      ['2016', 660, 1120, 300],
      ['2017', 1030, 540, 350]
    ]);

    var options = {
      chart: {
        title: 'Company Performance',
        subtitle: 'Sales, Expenses, and Profit: 2014-2017',
      },
      bars: 'horizontal' // Required for Material Bar Charts.
    };

    var chart = new google.charts.Bar(document.getElementById('barchart_material'));

    chart.draw(data, google.charts.Bar.convertOptions(options));
  }*/
  
  
var hour = "<a href=\"#\" onclick=\"fnBtnDelete('hour',this);\" class=\"btn btn-primary btn-icon-split\"><span class=\"text\">시간</span><i class=\"bi bi-x\" style=\"position:relative;top:-7px;left:9px;\"></i></a>";
var day = "<a href=\"#\" onclick=\"fnBtnDelete('day',this);\" class=\"btn btn-primary btn-icon-split\"><span class=\"text\">일</span><i class=\"bi bi-x\" style=\"position:relative;top:-7px;left:9px;\"></i></a>";
var week = "<a href=\"#\" onclick=\"fnBtnDelete('week',this);\" class=\"btn btn-primary btn-icon-split\"><span class=\"text\">요일</span><i class=\"bi bi-x\" style=\"position:relative;top:-7px;left:9px;\"></i></a>";
var month = "<a href=\"#\" onclick=\"fnBtnDelete('month',this);\" class=\"btn btn-primary btn-icon-split\"><span class=\"text\">월</span><i class=\"bi bi-x\" style=\"position:relative;top:-7px;left:9px;\"></i></a>";
var quarter = "<a href=\"#\" onclick=\"fnBtnDelete('quarter',this);\" class=\"btn btn-primary btn-icon-split\"><span class=\"text\">분기</span><i class=\"bi bi-x\" style=\"position:relative;top:-7px;left:9px;\"></i></a>";

var hour_hide = "<input type=\"hidden\" id=\"hour_hide\" name=\"hour_hide\" value=\"T\">";
var day_hide = "<input type=\"hidden\" id=\"day_hide\" name=\"day_hide\" value=\"T\">";
var week_hide = "<input type=\"hidden\" id=\"week_hide\" name=\"week_hide\" value=\"T\">";
var month_hide = "<input type=\"hidden\" id=\"month_hide\" name=\"month_hide\" value=\"T\">";
var quarter_hide = "<input type=\"hidden\" id=\"quarter_hide\" name=\"quarter_hide\" value=\"T\">";

function fnSelectEvent(type){
	var param = "";
	if(type === "hour"){
		if($("#hour_hide").val() == "T"){
			alert("이미 선택된 값입니다.");
		}else{
			$("#select_search").append(hour);
			$("#select_hidden").append(hour_hide);
		}
	}
	if(type === "day"){
		if($("#day_hide").val() == "T"){
			alert("이미 선택된 값입니다.");	
		}else{
			$("#select_search").append(day);
			$("#select_hidden").append(day_hide);
		}
	}
	if(type === "week"){
		if($("#week_hide").val() == "T"){
			alert("이미 선택된 값입니다.");
		}else{
			$("#select_search").append(week);
			$("#select_hidden").append(week_hide);
		}
	}
	if(type === "month"){
		if($("#month_hide").val() == "T"){
			alert("이미 선택된 값입니다.");
		}else{
			$("#select_search").append(month);
			$("#select_hidden").append(month_hide);
		}
	}
	if(type === "quarter"){
		if($("#quarter_hide").val() == "T"){
			alert("이미 선택된 값입니다.");
		}else{
			$("#select_search").append(quarter);
			$("#select_hidden").append(quarter_hide);
		}
	}
}

function fnBtnDelete(type,obj){
	if(type === "hour"){
		$(obj).remove();
		$("#hour_hide").remove();
	}
	if(type === "day"){
		$(obj).remove();
		$("#day_hide").remove();
	}
	if(type === "week"){
		$(obj).remove();
		$("#week_hide").remove();
	}
	if(type === "month"){
		$(obj).remove();
		$("#month_hide").remove();
	}
	if(type === "quarter"){
		$(obj).remove();
		$("#quarter_hide").remove();
	}
	if(type === "dt_box"){
		$(obj).remove();
		$("#dt_box_hide").remove();
	}
	if(type === "dept_box"){
		$(obj).remove();
		$("#dept_box_hide").remove();	
	}
	if(type === "aisle_box"){
		$(obj).remove();
		$("#aisle_box_hide").remove();
	}
	if(type === "product_box"){
		$(obj).remove();
		$("#product_box_hide").remove();
	}
}

function fnSearch(){
	alert("준비중입니다.");
	//$("#aform").attr({action : "/sales/selectSalesS0100python.do", method : 'get'}).submit();
}

function fnSelectDate(){
	var start_dt = $("#start_dt").val();
	var end_dt = $("#end_dt").val();
	var dt_box = "<a href=\"#\" onclick=\"fnBtnDelete('dt_box',this);\" class=\"btn btn-primary btn-icon-split\"><span class=\"text\">"+ start_dt+ "~"+ end_dt +"</span><i class=\"bi bi-x\" style=\"position:relative;top:-7px;left:9px;\"></i></a>";
	var dt_box_hide = "<input type=\"hidden\" id=\"dt_box_hide\" name=\"dt_box_hide\" value=\"\">";
	
	$("#select_search").append(dt_box);
	$("#select_hidden").append(dt_box_hide);
}

function fnChangeDept(){
	var select_dept_val = $("#select_dept option:checked").val();
	var select_dept_text = $("#select_dept option:checked").text();
	var dept_box = "<a href=\"#\" onclick=\"fnBtnDelete('dept_box',this);\" class=\"btn btn-primary btn-icon-split\"><span class=\"text\">"+ select_dept_text +"</span><i class=\"bi bi-x\" style=\"position:relative;top:-7px;left:9px;\"></i></a>";
	var dept_box_hide = "<input type='hidden' id='dept_box_hide' name='dept_box_hide' value='"+ select_dept_val +"'>";

	$("#select_search").append(dept_box);
	$("#select_hidden").append(dept_box_hide);
}

function fnChangeAisle(){
	var select_aisle_val = $("#select_aisle option:checked").val();
	var select_aisle_text = $("#select_aisle option:checked").text();
	var aisle_box = "<a href=\"#\" onclick=\"fnBtnDelete('aisle_box',this);\" class=\"btn btn-primary btn-icon-split\"><span class=\"text\">"+ select_aisle_text +"</span><i class=\"bi bi-x\" style=\"position:relative;top:-7px;left:9px;\"></i></a>";
	var aisle_box_hide = "<input type='hidden' id='aisle_box_hide' name='aisle_box_hide' value='"+ select_aisle_val +"'>";

	$("#select_search").append(aisle_box);
	$("#select_hidden").append(aisle_box_hide);	
}

function fnClickProduct(){
	var input_product = $("#input_product").val();
	var product_box = "<a href=\"#\" onclick=\"fnBtnDelete('product_box',this);\" class=\"btn btn-primary btn-icon-split\"><span class=\"text\">"+ input_product +"</span><i class=\"bi bi-x\" style=\"position:relative;top:-7px;left:9px;\"></i></a>";
	var product_box_hide = "<input type='hidden' id='product_box_hide' name='product_box_hide' value='"+ input_product +"'>";
	
	$("#select_search").append(product_box);
	$("#select_hidden").append(product_box_hide);	
}



