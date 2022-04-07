// google chart
google.charts.load('current', {'packages':['corechart']});

/* team 1 */
var month_rows1 = "";
var month_zero_row1 = "";
var month_length1 = "";
gradeMonthChartAjax1();
function gradeMonthChartAjax1(){
	
	var param = "";
	
	$.ajax({
		type : 'GET',
		url : '/manufacturing/manufacturingGradeMonthChartAjax1.do',
		dataType : 'json',
		async: false,
		data : param,
		success : function(response) {
			month_rows1 = [response.resultList];
			month_zero_row1 = [response.resultList[0]];
			month_length1 = response.resultList.length;
			google.charts.setOnLoadCallback(gradeMonthChart1);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}

function gradeMonthChart1(){
var data = new google.visualization.DataTable();
data.addColumn('string', month_zero_row1[0][0]);
data.addColumn('number', month_zero_row1[0][1]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', month_zero_row1[0][2]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', month_zero_row1[0][3]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', month_zero_row1[0][4]);
data.addColumn({type: 'string', role: 'annotation'});

var arr = new Array();
var a, b, c , d;
var a_tot, b_tot, c_tot, d_tot;
for(var i=1; i<=month_length1-1; i++){
	a = parseFloat(month_rows1[0][i][1]);
	b = parseFloat(month_rows1[0][i][2]);
	c = parseFloat(month_rows1[0][i][3]);
	d = parseFloat(month_rows1[0][i][4]);
	a_tot = (a/(a+b+c+d)*100).toFixed(2).toString();
	b_tot = (b/(a+b+c+d)*100).toFixed(2).toString();
	c_tot = (c/(a+b+c+d)*100).toFixed(2).toString();
	d_tot = (d/(a+b+c+d)*100).toFixed(2).toString();
	arr.push([(Math.floor(month_rows1[0][i][0])).toString() + " 월"
				, parseFloat(month_rows1[0][i][1]), a_tot + "%"
				, parseFloat(month_rows1[0][i][2]), b_tot + "%"
				, parseFloat(month_rows1[0][i][3]), c_tot + "%"
				, parseFloat(month_rows1[0][i][4]), d_tot + "%"]);
}

data.addRows(arr);
var options = {
		isStacked: 'percent',
		legend: { position: "top" ,alignment: 'end'},
		height: 500, 
		width: '100%',
        chartArea : { width : '80%', height : '80%', top : 50, left : 50 },
	};
var chart = new google.visualization.BarChart(document.getElementById("grade_month_chart1"));
	chart.draw(data, options);
	window.addEventListener('resize',gradeMonthChart1,false);
}

/* team 2 */
var month_rows2 = "";
var month_zero_row2 = "";
var month_length2 = "";
gradeMonthChartAjax2();
function gradeMonthChartAjax2(){
	
	var param = "";
	
	$.ajax({
		type : 'GET',
		url : '/manufacturing/manufacturingGradeMonthChartAjax2.do',
		dataType : 'json',
		async: false,
		data : param,
		success : function(response) {
			month_rows2 = [response.resultList];
			month_zero_row2 = [response.resultList[0]];
			month_length2 = response.resultList.length;
			google.charts.setOnLoadCallback(gradeMonthChart2);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}

function gradeMonthChart2(){
var data = new google.visualization.DataTable();
data.addColumn('string', month_zero_row2[0][0]);
data.addColumn('number', month_zero_row2[0][1]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', month_zero_row2[0][2]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', month_zero_row2[0][3]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', month_zero_row2[0][4]);
data.addColumn({type: 'string', role: 'annotation'});

var arr = new Array();
var a, b, c , d;
var a_tot, b_tot, c_tot, d_tot;
for(var i=1; i<=month_length2-1; i++){
	a = parseFloat(month_rows2[0][i][1]);
	b = parseFloat(month_rows2[0][i][2]);
	c = parseFloat(month_rows2[0][i][3]);
	d = parseFloat(month_rows2[0][i][4]);
	a_tot = (a/(a+b+c+d)*100).toFixed(2).toString();
	b_tot = (b/(a+b+c+d)*100).toFixed(2).toString();
	c_tot = (c/(a+b+c+d)*100).toFixed(2).toString();
	d_tot = (d/(a+b+c+d)*100).toFixed(2).toString();
	arr.push([(Math.floor(month_rows2[0][i][0])).toString() + " 월"
				, parseFloat(month_rows2[0][i][1]), a_tot + "%"
				, parseFloat(month_rows2[0][i][2]), b_tot + "%"
				, parseFloat(month_rows2[0][i][3]), c_tot + "%"
				, parseFloat(month_rows2[0][i][4]), d_tot + "%"]);
}

data.addRows(arr);
var options = {
		isStacked: 'percent',
		legend: { position: "top" ,alignment: 'end'},
		height: 500, 
		width: '100%',
        chartArea : { width : '80%', height : '80%', top : 50, left : 50 },
	};
var chart = new google.visualization.BarChart(document.getElementById("grade_month_chart2"));
	chart.draw(data, options);
	window.addEventListener('resize',gradeMonthChart2,false);
}

/* team 3 */
var month_rows3 = "";
var month_zero_row3 = "";
var month_length3 = "";
gradeMonthChartAjax3();
function gradeMonthChartAjax3(){
	
	var param = "";
	
	$.ajax({
		type : 'GET',
		url : '/manufacturing/manufacturingGradeMonthChartAjax3.do',
		dataType : 'json',
		async: false,
		data : param,
		success : function(response) {
			month_rows3 = [response.resultList];
			month_zero_row3 = [response.resultList[0]];
			month_length3 = response.resultList.length;
			google.charts.setOnLoadCallback(gradeMonthChart3);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}

function gradeMonthChart3(){
var data = new google.visualization.DataTable();
data.addColumn('string', month_zero_row3[0][0]);
data.addColumn('number', month_zero_row3[0][1]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', month_zero_row3[0][2]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', month_zero_row3[0][3]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', month_zero_row3[0][4]);
data.addColumn({type: 'string', role: 'annotation'});

var arr = new Array();
var a, b, c , d;
var a_tot, b_tot, c_tot, d_tot;
for(var i=1; i<=month_length3-1; i++){
	a = parseFloat(month_rows3[0][i][1]);
	b = parseFloat(month_rows3[0][i][2]);
	c = parseFloat(month_rows3[0][i][3]);
	d = parseFloat(month_rows3[0][i][4]);
	a_tot = (a/(a+b+c+d)*100).toFixed(2).toString();
	b_tot = (b/(a+b+c+d)*100).toFixed(2).toString();
	c_tot = (c/(a+b+c+d)*100).toFixed(2).toString();
	d_tot = (d/(a+b+c+d)*100).toFixed(2).toString();
	arr.push([(Math.floor(month_rows3[0][i][0])).toString() + " 월"
				, parseFloat(month_rows3[0][i][1]), a_tot + "%"
				, parseFloat(month_rows3[0][i][2]), b_tot + "%"
				, parseFloat(month_rows3[0][i][3]), c_tot + "%"
				, parseFloat(month_rows3[0][i][4]), d_tot + "%"]);
}

data.addRows(arr);
var options = {
		isStacked: 'percent',
		legend: { position: "top" ,alignment: 'end'},
		height: 500, 
		width: '100%',
        chartArea : { width : '80%', height : '80%', top : 50, left : 50 },
	};
var chart = new google.visualization.BarChart(document.getElementById("grade_month_chart3"));
	chart.draw(data, options);
	window.addEventListener('resize',gradeMonthChart3,false);
}