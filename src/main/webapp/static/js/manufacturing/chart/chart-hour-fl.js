// google chart
google.charts.load('current', {'packages':['corechart']});

/* team 1 */
var hour_rows1 = "";
var hour_zero_row1 = "";
var hour_length1 = "";
gradeHourChartAjax1();
function gradeHourChartAjax1(){
	
	var param = "";
	
	$.ajax({
		type : 'GET',
		url : '/manufacturing/manufacturingGradeHourChartAjax1.do',
		dataType : 'json',
		async: false,
		data : param,
		success : function(response) {
			hour_rows1 = [response.resultList];
			hour_zero_row1 = [response.resultList[0]];
			hour_length1 = response.resultList.length;
			google.charts.setOnLoadCallback(gradeHourChart1);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}

function gradeHourChart1(){
var data = new google.visualization.DataTable();
data.addColumn('string', hour_zero_row1[0][0]);
data.addColumn('number', hour_zero_row1[0][1]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', hour_zero_row1[0][2]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', hour_zero_row1[0][3]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', hour_zero_row1[0][4]);
data.addColumn({type: 'string', role: 'annotation'});

var arr = new Array();
var a, b, c , d;
var a_tot, b_tot, c_tot, d_tot;
for(var i=1; i<=hour_length1-1; i++){
	a = parseFloat(hour_rows1[0][i][1]);
	b = parseFloat(hour_rows1[0][i][2]);
	c = parseFloat(hour_rows1[0][i][3]);
	d = parseFloat(hour_rows1[0][i][4]);
	a_tot = (a/(a+b+c+d)*100).toFixed(2).toString();
	b_tot = (b/(a+b+c+d)*100).toFixed(2).toString();
	c_tot = (c/(a+b+c+d)*100).toFixed(2).toString();
	d_tot = (d/(a+b+c+d)*100).toFixed(2).toString();
	arr.push([(Math.floor(hour_rows1[0][i][0])).toString() + " 시"
				, parseFloat(hour_rows1[0][i][1]), a_tot + "%"
				, parseFloat(hour_rows1[0][i][2]), b_tot + "%"
				, parseFloat(hour_rows1[0][i][3]), c_tot + "%"
				, parseFloat(hour_rows1[0][i][4]), d_tot + "%"]);
}

data.addRows(arr);
var options = {
		isStacked: 'percent',
		legend: { position: "top" ,alignment: 'end'},
		height: 450, 
		width: '100%',
        chartArea : { width : '80%', height : '80%', top : 50, left : 50 },
	};
var chart = new google.visualization.BarChart(document.getElementById("grade_hour_chart1"));
	chart.draw(data, options);
	window.addEventListener('resize',gradeHourChart1,false);
}

/* team 2 */
var hour_rows2 = "";
var hour_zero_row2 = "";
var hour_length2 = "";
gradeHourChartAjax2();
function gradeHourChartAjax2(){
	
	var param = "";
	
	$.ajax({
		type : 'GET',
		url : '/manufacturing/manufacturingGradeHourChartAjax2.do',
		dataType : 'json',
		async: false,
		data : param,
		success : function(response) {
			hour_rows2 = [response.resultList];
			hour_zero_row2 = [response.resultList[0]];
			hour_length2 = response.resultList.length;
			google.charts.setOnLoadCallback(gradeHourChart2);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}

function gradeHourChart2(){
var data = new google.visualization.DataTable();
data.addColumn('string', hour_zero_row2[0][0]);
data.addColumn('number', hour_zero_row2[0][1]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', hour_zero_row2[0][2]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', hour_zero_row2[0][3]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', hour_zero_row2[0][4]);
data.addColumn({type: 'string', role: 'annotation'});

var arr = new Array();
var a, b, c , d;
var a_tot, b_tot, c_tot, d_tot;
for(var i=1; i<=hour_length2-1; i++){
	a = parseFloat(hour_rows2[0][i][1]);
	b = parseFloat(hour_rows2[0][i][2]);
	c = parseFloat(hour_rows2[0][i][3]);
	d = parseFloat(hour_rows2[0][i][4]);
	a_tot = (a/(a+b+c+d)*100).toFixed(2).toString();
	b_tot = (b/(a+b+c+d)*100).toFixed(2).toString();
	c_tot = (c/(a+b+c+d)*100).toFixed(2).toString();
	d_tot = (d/(a+b+c+d)*100).toFixed(2).toString();
	arr.push([(Math.floor(hour_rows2[0][i][0])).toString() + " 시"
				, parseFloat(hour_rows2[0][i][1]), a_tot + "%"
				, parseFloat(hour_rows2[0][i][2]), b_tot + "%"
				, parseFloat(hour_rows2[0][i][3]), c_tot + "%"
				, parseFloat(hour_rows2[0][i][4]), d_tot + "%"]);
}

data.addRows(arr);
var options = {
		isStacked: 'percent',
		legend: { position: "top" ,alignment: 'end'},
		height: 450, 
		width: '100%',
        chartArea : { width : '80%', height : '80%', top : 50, left : 50 },
	};
var chart = new google.visualization.BarChart(document.getElementById("grade_hour_chart2"));
	chart.draw(data, options);
	window.addEventListener('resize',gradeHourChart2,false);
}

/* team 3 */
var hour_rows3 = "";
var hour_zero_row3 = "";
var hour_length3 = "";
gradeHourChartAjax3();
function gradeHourChartAjax3(){
	
	var param = "";
	
	$.ajax({
		type : 'GET',
		url : '/manufacturing/manufacturingGradeHourChartAjax3.do',
		dataType : 'json',
		async: false,
		data : param,
		success : function(response) {
			hour_rows3 = [response.resultList];
			hour_zero_row3 = [response.resultList[0]];
			hour_length3 = response.resultList.length;
			google.charts.setOnLoadCallback(gradeHourChart3);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}

function gradeHourChart3(){
var data = new google.visualization.DataTable();
data.addColumn('string', hour_zero_row3[0][0]);
data.addColumn('number', hour_zero_row3[0][1]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', hour_zero_row3[0][2]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', hour_zero_row3[0][3]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', hour_zero_row3[0][4]);
data.addColumn({type: 'string', role: 'annotation'});

var arr = new Array();
var a, b, c , d;
var a_tot, b_tot, c_tot, d_tot;
for(var i=1; i<=hour_length3-1; i++){
	a = parseFloat(hour_rows3[0][i][1]);
	b = parseFloat(hour_rows3[0][i][2]);
	c = parseFloat(hour_rows3[0][i][3]);
	d = parseFloat(hour_rows3[0][i][4]);
	a_tot = (a/(a+b+c+d)*100).toFixed(2).toString();
	b_tot = (b/(a+b+c+d)*100).toFixed(2).toString();
	c_tot = (c/(a+b+c+d)*100).toFixed(2).toString();
	d_tot = (d/(a+b+c+d)*100).toFixed(2).toString();
	arr.push([(Math.floor(hour_rows3[0][i][0])).toString() + " 시"
				, parseFloat(hour_rows3[0][i][1]), a_tot + "%"
				, parseFloat(hour_rows3[0][i][2]), b_tot + "%"
				, parseFloat(hour_rows3[0][i][3]), c_tot + "%"
				, parseFloat(hour_rows3[0][i][4]), d_tot + "%"]);
}

data.addRows(arr);
var options = {
		isStacked: 'percent',
		legend: { position: "top" ,alignment: 'end'},
		height: 450, 
		width: '100%',
        chartArea : { width : '80%', height : '80%', top : 50, left : 50 },
	};
var chart = new google.visualization.BarChart(document.getElementById("grade_hour_chart3"));
	chart.draw(data, options);
	window.addEventListener('resize',gradeHourChart3,false);
}