/**
 *  comment : viewM0030.jsp 에 해당하는 js 파일입니다.
 *  date : 2022. 03. 18
 *  auther : psy	
 */
$(function(){
   	$("[id^=name]").html(fnGetParameters('name'));
});

$(function(){
	$("#all").on("click",function(){
	});
	$("#team1").on("click",function(){
		gradeDayChartAjax1();
		gradeHourChartAjax1();
		gradeWeekChartAjax1();
		gradeMonthChartAjax1();
		gradeQuarterChartAjax1();
		gradeYearChartAjax1();
	});
	$("#team2").on("click",function(){
		gradeDayChartAjax2();
		gradeHourChartAjax2();
		gradeWeekChartAjax2();
		gradeMonthChartAjax2();
		gradeQuarterChartAjax2();
		gradeYearChartAjax2();
	});
	$("#team3").on("click",function(){
		gradeDayChartAjax3();
		gradeHourChartAjax3();
		gradeWeekChartAjax3();
		gradeMonthChartAjax3();
		gradeQuarterChartAjax3();
		gradeYearChartAjax3();
	});
});