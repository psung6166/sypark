// google chart
google.charts.load('current', {'packages':['corechart']});

/* team 1 */
var quarter_rows1 = "";
var quarter_zero_row1 = "";
var quarter_length1 = "";
gradeQuarterChartAjax1();
function gradeQuarterChartAjax1(){
	
	var param = "";
	
	$.ajax({
		type : 'GET',
		url : '/manufacturing/manufacturingGradeQuarterChartAjax1.do',
		dataType : 'json',
		async: false,
		data : param,
		success : function(response) {
			quarter_rows1 = [response.resultList];
			quarter_zero_row1 = [response.resultList[0]];
			quarter_length1 = response.resultList.length;
			google.charts.setOnLoadCallback(gradeQuarterChart1);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}

function gradeQuarterChart1(){
var data = new google.visualization.DataTable();
data.addColumn('string', quarter_zero_row1[0][0]);
data.addColumn('number', quarter_zero_row1[0][1]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', quarter_zero_row1[0][2]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', quarter_zero_row1[0][3]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', quarter_zero_row1[0][4]);
data.addColumn({type: 'string', role: 'annotation'});

var arr = new Array();
var a, b, c , d;
var a_tot, b_tot, c_tot, d_tot;
for(var i=1; i<=quarter_length1-1; i++){
	a = parseFloat(quarter_rows1[0][i][1]);
	b = parseFloat(quarter_rows1[0][i][2]);
	c = parseFloat(quarter_rows1[0][i][3]);
	d = parseFloat(quarter_rows1[0][i][4]);
	a_tot = (a/(a+b+c+d)*100).toFixed(2).toString();
	b_tot = (b/(a+b+c+d)*100).toFixed(2).toString();
	c_tot = (c/(a+b+c+d)*100).toFixed(2).toString();
	d_tot = (d/(a+b+c+d)*100).toFixed(2).toString();
	arr.push([(Math.floor(quarter_rows1[0][i][0])).toString() + " 분기"
				, parseFloat(quarter_rows1[0][i][1]), a_tot + "%"
				, parseFloat(quarter_rows1[0][i][2]), b_tot + "%"
				, parseFloat(quarter_rows1[0][i][3]), c_tot + "%"
				, parseFloat(quarter_rows1[0][i][4]), d_tot + "%"]);
}

data.addRows(arr);
var options = {
		isStacked: 'percent',
		legend: { position: "top" ,alignment: 'end'},
		height: 200, 
		width: '100%',
        chartArea : { width : '80%', height : '60%', top : 50, left : 50 },
	};
var chart = new google.visualization.BarChart(document.getElementById("grade_quarter_chart1"));
	chart.draw(data, options);
	window.addEventListener('resize',gradeQuarterChart1,false);
}

/* team 2 */
var quarter_rows2 = "";
var quarter_zero_row2 = "";
var quarter_length2 = "";
gradeQuarterChartAjax2();
function gradeQuarterChartAjax2(){
	
	var param = "";
	
	$.ajax({
		type : 'GET',
		url : '/manufacturing/manufacturingGradeQuarterChartAjax2.do',
		dataType : 'json',
		async: false,
		data : param,
		success : function(response) {
			quarter_rows2 = [response.resultList];
			quarter_zero_row2 = [response.resultList[0]];
			quarter_length2 = response.resultList.length;
			google.charts.setOnLoadCallback(gradeQuarterChart2);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}

function gradeQuarterChart2(){
var data = new google.visualization.DataTable();
data.addColumn('string', quarter_zero_row2[0][0]);
data.addColumn('number', quarter_zero_row2[0][1]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', quarter_zero_row2[0][2]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', quarter_zero_row2[0][3]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', quarter_zero_row2[0][4]);
data.addColumn({type: 'string', role: 'annotation'});

var arr = new Array();
var a, b, c , d;
var a_tot, b_tot, c_tot, d_tot;
for(var i=1; i<=quarter_length2-1; i++){
	a = parseFloat(quarter_rows2[0][i][1]);
	b = parseFloat(quarter_rows2[0][i][2]);
	c = parseFloat(quarter_rows2[0][i][3]);
	d = parseFloat(quarter_rows2[0][i][4]);
	a_tot = (a/(a+b+c+d)*100).toFixed(2).toString();
	b_tot = (b/(a+b+c+d)*100).toFixed(2).toString();
	c_tot = (c/(a+b+c+d)*100).toFixed(2).toString();
	d_tot = (d/(a+b+c+d)*100).toFixed(2).toString();
	arr.push([(Math.floor(quarter_rows2[0][i][0])).toString() + " 분기"
				, parseFloat(quarter_rows2[0][i][1]), a_tot + "%"
				, parseFloat(quarter_rows2[0][i][2]), b_tot + "%"
				, parseFloat(quarter_rows2[0][i][3]), c_tot + "%"
				, parseFloat(quarter_rows2[0][i][4]), d_tot + "%"]);
}

data.addRows(arr);
var options = {
		isStacked: 'percent',
		legend: { position: "top" ,alignment: 'end'},
		height: 200, 
		width: '100%',
        chartArea : { width : '80%', height : '60%', top : 50, left : 50 },
	};
var chart = new google.visualization.BarChart(document.getElementById("grade_quarter_chart2"));
	chart.draw(data, options);
	window.addEventListener('resize',gradeQuarterChart2,false);
}

/* team 3 */
var quarter_rows3 = "";
var quarter_zero_row3 = "";
var quarter_length3 = "";
gradeQuarterChartAjax3();
function gradeQuarterChartAjax3(){
	
	var param = "";
	
	$.ajax({
		type : 'GET',
		url : '/manufacturing/manufacturingGradeQuarterChartAjax3.do',
		dataType : 'json',
		async: false,
		data : param,
		success : function(response) {
			quarter_rows3 = [response.resultList];
			quarter_zero_row3 = [response.resultList[0]];
			quarter_length3 = response.resultList.length;
			google.charts.setOnLoadCallback(gradeQuarterChart3);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}

function gradeQuarterChart3(){
var data = new google.visualization.DataTable();
data.addColumn('string', quarter_zero_row3[0][0]);
data.addColumn('number', quarter_zero_row3[0][1]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', quarter_zero_row3[0][2]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', quarter_zero_row3[0][3]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', quarter_zero_row3[0][4]);
data.addColumn({type: 'string', role: 'annotation'});

var arr = new Array();
var a, b, c , d;
var a_tot, b_tot, c_tot, d_tot;
for(var i=1; i<=quarter_length3-1; i++){
	a = parseFloat(quarter_rows3[0][i][1]);
	b = parseFloat(quarter_rows3[0][i][2]);
	c = parseFloat(quarter_rows3[0][i][3]);
	d = parseFloat(quarter_rows3[0][i][4]);
	a_tot = (a/(a+b+c+d)*100).toFixed(2).toString();
	b_tot = (b/(a+b+c+d)*100).toFixed(2).toString();
	c_tot = (c/(a+b+c+d)*100).toFixed(2).toString();
	d_tot = (d/(a+b+c+d)*100).toFixed(2).toString();
	arr.push([(Math.floor(quarter_rows3[0][i][0])).toString() + " 분기"
				, parseFloat(quarter_rows3[0][i][1]), a_tot + "%"
				, parseFloat(quarter_rows3[0][i][2]), b_tot + "%"
				, parseFloat(quarter_rows3[0][i][3]), c_tot + "%"
				, parseFloat(quarter_rows3[0][i][4]), d_tot + "%"]);
}

data.addRows(arr);
var options = {
		isStacked: 'percent',
		legend: { position: "top" ,alignment: 'end'},
		height: 200, 
		width: '100%',
        chartArea : { width : '80%', height : '60%', top : 50, left : 50 },
	};
var chart = new google.visualization.BarChart(document.getElementById("grade_quarter_chart3"));
	chart.draw(data, options);
	window.addEventListener('resize',gradeQuarterChart3,false);
}