// google chart
google.charts.load('current', {'packages':['corechart']});

/* team 1 */
var year_rows1 = "";
var year_zero_row1 = "";
var year_length1 = "";
gradeYearChartAjax1();
function gradeYearChartAjax1(){
	
	var param = "";
	
	$.ajax({
		type : 'GET',
		url : '/manufacturing/manufacturingGradeYearChartAjax1.do',
		dataType : 'json',
		async: false,
		data : param,
		success : function(response) {
			year_rows1 = [response.resultList];
			year_zero_row1 = [response.resultList[0]];
			year_length1 = response.resultList.length;
			google.charts.setOnLoadCallback(gradeYearChart1);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}

function gradeYearChart1(){
var data = new google.visualization.DataTable();
data.addColumn('string', year_zero_row1[0][0]);
data.addColumn('number', year_zero_row1[0][1]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', year_zero_row1[0][2]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', year_zero_row1[0][3]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', year_zero_row1[0][4]);
data.addColumn({type: 'string', role: 'annotation'});

var arr = new Array();
var a, b, c , d;
var a_tot, b_tot, c_tot, d_tot;
for(var i=1; i<=year_length1-1; i++){
	a = parseFloat(year_rows1[0][i][1]);
	b = parseFloat(year_rows1[0][i][2]);
	c = parseFloat(year_rows1[0][i][3]);
	d = parseFloat(year_rows1[0][i][4]);
	a_tot = (a/(a+b+c+d)*100).toFixed(2).toString();
	b_tot = (b/(a+b+c+d)*100).toFixed(2).toString();
	c_tot = (c/(a+b+c+d)*100).toFixed(2).toString();
	d_tot = (d/(a+b+c+d)*100).toFixed(2).toString();
	arr.push([(Math.floor(year_rows1[0][i][0])).toString() + " 년"
	, parseFloat(year_rows1[0][i][1]), a_tot + "%"
	, parseFloat(year_rows1[0][i][2]), b_tot + "%"
	, parseFloat(year_rows1[0][i][3]), c_tot + "%"
	, parseFloat(year_rows1[0][i][4]), d_tot + "%"]);
}

data.addRows(arr);
var options = {
		isStacked: 'percent',
		legend: { position: "top" ,alignment: 'end'},
		height: 200, 
		width: '100%',
        chartArea : { width : '80%', height : '60%', top : 50, left : 50 },
	};
var chart = new google.visualization.BarChart(document.getElementById("grade_year_chart1"));
	chart.draw(data, options);
	window.addEventListener('resize',gradeYearChart1,false);
}

/* team 2 */
var year_rows2 = "";
var year_zero_row2 = "";
var year_length2 = "";
gradeYearChartAjax2();
function gradeYearChartAjax2(){
	
	var param = "";
	
	$.ajax({
		type : 'GET',
		url : '/manufacturing/manufacturingGradeYearChartAjax2.do',
		dataType : 'json',
		async: false,
		data : param,
		success : function(response) {
			year_rows2 = [response.resultList];
			year_zero_row2 = [response.resultList[0]];
			year_length2 = response.resultList.length;
			google.charts.setOnLoadCallback(gradeYearChart2);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}

function gradeYearChart2(){
var data = new google.visualization.DataTable();
data.addColumn('string', year_zero_row2[0][0]);
data.addColumn('number', year_zero_row2[0][1]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', year_zero_row2[0][2]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', year_zero_row2[0][3]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', year_zero_row2[0][4]);
data.addColumn({type: 'string', role: 'annotation'});

var arr = new Array();
var a, b, c , d;
var a_tot, b_tot, c_tot, d_tot;
for(var i=1; i<=year_length2-1; i++){
	a = parseFloat(year_rows2[0][i][1]);
	b = parseFloat(year_rows2[0][i][2]);
	c = parseFloat(year_rows2[0][i][3]);
	d = parseFloat(year_rows2[0][i][4]);
	a_tot = (a/(a+b+c+d)*100).toFixed(2).toString();
	b_tot = (b/(a+b+c+d)*100).toFixed(2).toString();
	c_tot = (c/(a+b+c+d)*100).toFixed(2).toString();
	d_tot = (d/(a+b+c+d)*100).toFixed(2).toString();
	arr.push([(Math.floor(year_rows2[0][i][0])).toString() + " 년"
	, parseFloat(year_rows2[0][i][1]), a_tot + "%"
	, parseFloat(year_rows2[0][i][2]), b_tot + "%"
	, parseFloat(year_rows2[0][i][3]), c_tot + "%"
	, parseFloat(year_rows2[0][i][4]), d_tot + "%"]);
}

data.addRows(arr);
var options = {
		isStacked: 'percent',
		legend: { position: "top" ,alignment: 'end'},
		height: 200, 
		width: '100%',
        chartArea : { width : '80%', height : '60%', top : 50, left : 50 },
	};
var chart = new google.visualization.BarChart(document.getElementById("grade_year_chart2"));
	chart.draw(data, options);
	window.addEventListener('resize',gradeYearChart2,false);
}

/* team 3 */
var year_rows3 = "";
var year_zero_row3 = "";
var year_length3 = "";
gradeYearChartAjax3();
function gradeYearChartAjax3(){
	
	var param = "";
	
	$.ajax({
		type : 'GET',
		url : '/manufacturing/manufacturingGradeYearChartAjax3.do',
		dataType : 'json',
		async: false,
		data : param,
		success : function(response) {
			year_rows3 = [response.resultList];
			year_zero_row3 = [response.resultList[0]];
			year_length3 = response.resultList.length;
			google.charts.setOnLoadCallback(gradeYearChart3);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}

function gradeYearChart3(){
var data = new google.visualization.DataTable();
data.addColumn('string', year_zero_row3[0][0]);
data.addColumn('number', year_zero_row3[0][1]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', year_zero_row3[0][2]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', year_zero_row3[0][3]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', year_zero_row3[0][4]);
data.addColumn({type: 'string', role: 'annotation'});

var arr = new Array();
var a, b, c , d;
var a_tot, b_tot, c_tot, d_tot;
for(var i=1; i<=year_length3-1; i++){
	a = parseFloat(year_rows3[0][i][1]);
	b = parseFloat(year_rows3[0][i][2]);
	c = parseFloat(year_rows3[0][i][3]);
	d = parseFloat(year_rows3[0][i][4]);
	a_tot = (a/(a+b+c+d)*100).toFixed(2).toString();
	b_tot = (b/(a+b+c+d)*100).toFixed(2).toString();
	c_tot = (c/(a+b+c+d)*100).toFixed(2).toString();
	d_tot = (d/(a+b+c+d)*100).toFixed(2).toString();
	arr.push([(Math.floor(year_rows3[0][i][0])).toString() + " 년"
	, parseFloat(year_rows3[0][i][1]), a_tot + "%"
	, parseFloat(year_rows3[0][i][2]), b_tot + "%"
	, parseFloat(year_rows3[0][i][3]), c_tot + "%"
	, parseFloat(year_rows3[0][i][4]), d_tot + "%"]);
}

data.addRows(arr);
var options = {
		isStacked: 'percent',
		legend: { position: "top" ,alignment: 'end'},
		height: 200, 
		width: '100%', 
        chartArea : { width : '80%', height : '60%', top : 50, left : 50 },
	};
var chart = new google.visualization.BarChart(document.getElementById("grade_year_chart3"));
	chart.draw(data, options);
	window.addEventListener('resize',gradeYearChart3,false);
}