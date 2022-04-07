/* team 1 */
// google chart
google.charts.load('current', {'packages':['corechart']});
var week_rows1 = "";
var week_zero_row1 = "";
var week_length1 = "";
gradeWeekChartAjax1();
function gradeWeekChartAjax1(){
	var param = "";
	$.ajax({
		type : 'GET',
		url : '/manufacturing/manufacturingGradeWeekChartAjax1.do',
		dataType : 'json',
		async: false,
		data : param,
		success : function(response) {
			week_rows1 = [response.resultList];
			week_zero_row1 = [response.resultList[0]];
			week_length1 = response.resultList.length;
			google.charts.setOnLoadCallback(gradeWeekChart1);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}

function gradeWeekChart1(){
var data = new google.visualization.DataTable();
data.addColumn('string', week_zero_row1[0][0]);
data.addColumn('number', week_zero_row1[0][1]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', week_zero_row1[0][2]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', week_zero_row1[0][3]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', week_zero_row1[0][4]);
data.addColumn({type: 'string', role: 'annotation'});

var arr = new Array();
var week = "";
var a, b, c , d;
var a_tot, b_tot, c_tot, d_tot;
for(var i=1; i<=week_length1-1; i++){
	if(Math.floor(week_rows1[0][i][0]) == "0"){
		week = "일";
	}else if(Math.floor(week_rows1[0][i][0]) == "1"){
		week = "월";	
	}else if(Math.floor(week_rows1[0][i][0]) == "2"){
		week = "화";	
	}else if(Math.floor(week_rows1[0][i][0]) == "3"){
		week = "수";	
	}else if(Math.floor(week_rows1[0][i][0]) == "4"){
		week = "목";	
	}else if(Math.floor(week_rows1[0][i][0]) == "5"){
		week = "금";	
	}else if(Math.floor(week_rows1[0][i][0]) == "6"){
		week = "토";	
	}
	a = parseFloat(week_rows1[0][i][1]);
	b = parseFloat(week_rows1[0][i][2]);
	c = parseFloat(week_rows1[0][i][3]);
	d = parseFloat(week_rows1[0][i][4]);
	a_tot = (a/(a+b+c+d)*100).toFixed(2).toString();
	b_tot = (b/(a+b+c+d)*100).toFixed(2).toString();
	c_tot = (c/(a+b+c+d)*100).toFixed(2).toString();
	d_tot = (d/(a+b+c+d)*100).toFixed(2).toString();
	arr.push([ week
				, parseFloat(week_rows1[0][i][1]), a_tot + "%"
				, parseFloat(week_rows1[0][i][2]), b_tot + "%"
				, parseFloat(week_rows1[0][i][3]), c_tot + "%"
				, parseFloat(week_rows1[0][i][4]), d_tot + "%"]);
}

data.addRows(arr);
var options = {
		isStacked: 'percent',
		legend: { position: "top" ,alignment: 'end'},
		height: 450, 
		width: '100%',
        chartArea : { width : '80%', height : '80%', top : 50, left : 50 },
	};
var chart = new google.visualization.BarChart(document.getElementById("grade_week_chart1"));
	chart.draw(data, options);
	window.addEventListener('resize',gradeWeekChart1,false);
}

/* team 2 */
var week_rows2 = "";
var week_zero_row2 = "";
var week_length2 = "";
gradeWeekChartAjax2();
function gradeWeekChartAjax2(){
	var param = "";
	$.ajax({
		type : 'GET',
		url : '/manufacturing/manufacturingGradeWeekChartAjax2.do',
		dataType : 'json',
		async: false,
		data : param,
		success : function(response) {
			week_rows2 = [response.resultList];
			week_zero_row2 = [response.resultList[0]];
			week_length2 = response.resultList.length;
			google.charts.setOnLoadCallback(gradeWeekChart2);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}

function gradeWeekChart2(){
var data = new google.visualization.DataTable();
data.addColumn('string', week_zero_row2[0][0]);
data.addColumn('number', week_zero_row2[0][1]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', week_zero_row2[0][2]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', week_zero_row2[0][3]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', week_zero_row2[0][4]);
data.addColumn({type: 'string', role: 'annotation'});

var arr = new Array();
var week = "";
var a, b, c , d;
var a_tot, b_tot, c_tot, d_tot;
for(var i=1; i<=week_length2-1; i++){
	if(Math.floor(week_rows2[0][i][0]) == "0"){
		week = "일";
	}else if(Math.floor(week_rows2[0][i][0]) == "1"){
		week = "월";	
	}else if(Math.floor(week_rows2[0][i][0]) == "2"){
		week = "화";	
	}else if(Math.floor(week_rows2[0][i][0]) == "3"){
		week = "수";	
	}else if(Math.floor(week_rows2[0][i][0]) == "4"){
		week = "목";	
	}else if(Math.floor(week_rows2[0][i][0]) == "5"){
		week = "금";	
	}else if(Math.floor(week_rows2[0][i][0]) == "6"){
		week = "토";	
	}
	a = parseFloat(week_rows2[0][i][1]);
	b = parseFloat(week_rows2[0][i][2]);
	c = parseFloat(week_rows2[0][i][3]);
	d = parseFloat(week_rows2[0][i][4]);
	a_tot = (a/(a+b+c+d)*100).toFixed(2).toString();
	b_tot = (b/(a+b+c+d)*100).toFixed(2).toString();
	c_tot = (c/(a+b+c+d)*100).toFixed(2).toString();
	d_tot = (d/(a+b+c+d)*100).toFixed(2).toString();
	arr.push([ week
				, parseFloat(week_rows2[0][i][1]), a_tot + "%"
				, parseFloat(week_rows2[0][i][2]), b_tot + "%"
				, parseFloat(week_rows2[0][i][3]), c_tot + "%"
				, parseFloat(week_rows2[0][i][4]), d_tot + "%"]);
}

data.addRows(arr);
var options = {
		isStacked: 'percent',
		legend: { position: "top" ,alignment: 'end'},
		height: 450, 
		width: '100%',
        chartArea : { width : '80%', height : '80%', top : 50, left : 50 },
	};
var chart = new google.visualization.BarChart(document.getElementById("grade_week_chart2"));
	chart.draw(data, options);
	window.addEventListener('resize',gradeWeekChart2,false);
}

/* team 3 */
var week_rows3 = "";
var week_zero_row3 = "";
var week_length3 = "";
gradeWeekChartAjax3();
function gradeWeekChartAjax3(){
	var param = "";
	$.ajax({
		type : 'GET',
		url : '/manufacturing/manufacturingGradeWeekChartAjax3.do',
		dataType : 'json',
		async: false,
		data : param,
		success : function(response) {
			week_rows3 = [response.resultList];
			week_zero_row3 = [response.resultList[0]];
			week_length3 = response.resultList.length;
			google.charts.setOnLoadCallback(gradeWeekChart3);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}

function gradeWeekChart3(){
var data = new google.visualization.DataTable();
data.addColumn('string', week_zero_row3[0][0]);
data.addColumn('number', week_zero_row3[0][1]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', week_zero_row3[0][2]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', week_zero_row3[0][3]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', week_zero_row3[0][4]);
data.addColumn({type: 'string', role: 'annotation'});

var arr = new Array();
var week = "";
var a, b, c , d;
var a_tot, b_tot, c_tot, d_tot;
for(var i=1; i<=week_length3-1; i++){
	if(Math.floor(week_rows3[0][i][0]) == "0"){
		week = "일";
	}else if(Math.floor(week_rows3[0][i][0]) == "1"){
		week = "월";	
	}else if(Math.floor(week_rows3[0][i][0]) == "2"){
		week = "화";	
	}else if(Math.floor(week_rows3[0][i][0]) == "3"){
		week = "수";	
	}else if(Math.floor(week_rows3[0][i][0]) == "4"){
		week = "목";	
	}else if(Math.floor(week_rows3[0][i][0]) == "5"){
		week = "금";	
	}else if(Math.floor(week_rows3[0][i][0]) == "6"){
		week = "토";	
	}
	a = parseFloat(week_rows3[0][i][1]);
	b = parseFloat(week_rows3[0][i][2]);
	c = parseFloat(week_rows3[0][i][3]);
	d = parseFloat(week_rows3[0][i][4]);
	a_tot = (a/(a+b+c+d)*100).toFixed(2).toString();
	b_tot = (b/(a+b+c+d)*100).toFixed(2).toString();
	c_tot = (c/(a+b+c+d)*100).toFixed(2).toString();
	d_tot = (d/(a+b+c+d)*100).toFixed(2).toString();
	arr.push([ week
				, parseFloat(week_rows3[0][i][1]), a_tot + "%"
				, parseFloat(week_rows3[0][i][2]), b_tot + "%"
				, parseFloat(week_rows3[0][i][3]), c_tot + "%"
				, parseFloat(week_rows3[0][i][4]), d_tot + "%"]);
}

data.addRows(arr);
var options = {
		isStacked: 'percent',
		legend: { position: "top" ,alignment: 'end'},
		height: 450, 
		width: '100%',
        chartArea : { width : '80%', height : '80%', top : 50, left : 50 },
	};
var chart = new google.visualization.BarChart(document.getElementById("grade_week_chart3"));
	chart.draw(data, options);
	window.addEventListener('resize',gradeWeekChart3,false);
}