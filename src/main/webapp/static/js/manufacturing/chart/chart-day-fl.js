/* team 1 */
// google chart
google.charts.load('current', {'packages':['corechart']});
var day_rows1 = "";
var day_zero_row1 = "";
var day_length1 = "";
gradeDayChartAjax1();
function gradeDayChartAjax1(){
	
	var param = "";
	
	$.ajax({
		type : 'GET',
		url : '/manufacturing/manufacturingGradeDayChartAjax1.do',
		dataType : 'json',
		async: false,
		data : param,
		success : function(response) {
			day_rows1 = [response.resultList];
			day_zero_row1 = [response.resultList[0]];
			day_length1 = response.resultList.length;
			google.charts.setOnLoadCallback(gradeDayChart1);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}

function gradeDayChart1(){
var data = new google.visualization.DataTable();
data.addColumn('string', day_zero_row1[0][0]);
data.addColumn('number', day_zero_row1[0][1]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', day_zero_row1[0][2]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', day_zero_row1[0][3]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', day_zero_row1[0][4]);
data.addColumn({type: 'string', role: 'annotation'});

var arr = new Array();

var a, b, c , d;
var a_tot, b_tot, c_tot, d_tot;
for(var i=1; i<=day_length1-1; i++){
	a = parseFloat(day_rows1[0][i][1]);
	b = parseFloat(day_rows1[0][i][2]);
	c = parseFloat(day_rows1[0][i][3]);
	d = parseFloat(day_rows1[0][i][4]);
	a_tot = (a/(a+b+c+d)*100).toFixed(2).toString();
	b_tot = (b/(a+b+c+d)*100).toFixed(2).toString();
	c_tot = (c/(a+b+c+d)*100).toFixed(2).toString();
	d_tot = (d/(a+b+c+d)*100).toFixed(2).toString();
	arr.push([(Math.floor(day_rows1[0][i][0])).toString() + " 일"
				, parseFloat(day_rows1[0][i][1]), a_tot + "%"
				, parseFloat(day_rows1[0][i][2]), b_tot + "%"
				, parseFloat(day_rows1[0][i][3]), c_tot + "%"
				, parseFloat(day_rows1[0][i][4]), d_tot + "%"]);
}

data.addRows(arr);

var grade_day_chart1_body = $("#grade_day_chart1_body").width(); 

var options = {
		isStacked: 'percent',
		legend: { position: "top" ,alignment: 'end'},
		height: 1000, 
		width: '100%',
        chartArea : { width : '80%', height : '90%', top : 50, left : 50 },
        annotations: {
			textStyle:{fontSize: 10}
		}
	};
		var chart = new google.visualization.BarChart(document.getElementById("grade_day_chart1"));
			chart.draw(data, options);
			window.addEventListener('resize',gradeDayChart1,false);
}

/* team 2 */
// google chart
var day_rows2 = "";
var day_zero_row2 = "";
var day_length2 = "";
gradeDayChartAjax2();
function gradeDayChartAjax2(){
	
	var param = "";
	
	$.ajax({
		type : 'GET',
		url : '/manufacturing/manufacturingGradeDayChartAjax2.do',
		dataType : 'json',
		async: false,
		data : param,
		success : function(response) {
			day_rows2 = [response.resultList];
			day_zero_row2 = [response.resultList[0]];
			day_length2 = response.resultList.length;
			google.charts.setOnLoadCallback(gradeDayChart2);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}

function gradeDayChart2(){
var data = new google.visualization.DataTable();
data.addColumn('string', day_zero_row2[0][0]);
data.addColumn('number', day_zero_row2[0][1]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', day_zero_row2[0][2]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', day_zero_row2[0][3]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', day_zero_row2[0][4]);
data.addColumn({type: 'string', role: 'annotation'});

var arr = new Array();

var a, b, c , d;
var a_tot, b_tot, c_tot, d_tot;
for(var i=1; i<=day_length2-1; i++){
	a = parseFloat(day_rows2[0][i][1]);
	b = parseFloat(day_rows2[0][i][2]);
	c = parseFloat(day_rows2[0][i][3]);
	d = parseFloat(day_rows2[0][i][4]);
	a_tot = (a/(a+b+c+d)*100).toFixed(2).toString();
	b_tot = (b/(a+b+c+d)*100).toFixed(2).toString();
	c_tot = (c/(a+b+c+d)*100).toFixed(2).toString();
	d_tot = (d/(a+b+c+d)*100).toFixed(2).toString();
	arr.push([(Math.floor(day_rows2[0][i][0])).toString() + " 일"
				, parseFloat(day_rows2[0][i][1]), a_tot + "%"
				, parseFloat(day_rows2[0][i][2]), b_tot + "%"
				, parseFloat(day_rows2[0][i][3]), c_tot + "%"
				, parseFloat(day_rows2[0][i][4]), d_tot + "%"]);
}

data.addRows(arr);
var options = {
		isStacked: 'percent',
		legend: { position: "top" ,alignment: 'end'},
		height: 1000, 
		width: '100%',
        chartArea : { width : '80%', height : '90%', top : 50, left : 50 },
        annotations: {
			textStyle:{fontSize: 10}	
		}
	};
var chart = new google.visualization.BarChart(document.getElementById("grade_day_chart2"));
	chart.draw(data, options);
	window.addEventListener('resize',gradeDayChart2,false);
}

/* team 3 */
// google chart
var day_rows3 = "";
var day_zero_row3 = "";
var day_length3 = "";
gradeDayChartAjax3();
function gradeDayChartAjax3(){
	
	var param = "";
	
	$.ajax({
		type : 'GET',
		url : '/manufacturing/manufacturingGradeDayChartAjax3.do',
		dataType : 'json',
		async: false,
		data : param,
		success : function(response) {
			day_rows3 = [response.resultList];
			day_zero_row3 = [response.resultList[0]];
			day_length3 = response.resultList.length;
			google.charts.setOnLoadCallback(gradeDayChart3);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("error");
		}
	});
}

function gradeDayChart3(){
var data = new google.visualization.DataTable();
data.addColumn('string', day_zero_row3[0][0]);
data.addColumn('number', day_zero_row3[0][1]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', day_zero_row3[0][2]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', day_zero_row3[0][3]);
data.addColumn({type: 'string', role: 'annotation'});
data.addColumn('number', day_zero_row3[0][4]);
data.addColumn({type: 'string', role: 'annotation'});

var arr = new Array();

var a, b, c , d;
var a_tot, b_tot, c_tot, d_tot;
for(var i=1; i<=day_length3-1; i++){
	a = parseFloat(day_rows3[0][i][1]);
	b = parseFloat(day_rows3[0][i][2]);
	c = parseFloat(day_rows3[0][i][3]);
	d = parseFloat(day_rows3[0][i][4]);
	a_tot = (a/(a+b+c+d)*100).toFixed(2).toString();
	b_tot = (b/(a+b+c+d)*100).toFixed(2).toString();
	c_tot = (c/(a+b+c+d)*100).toFixed(2).toString();
	d_tot = (d/(a+b+c+d)*100).toFixed(2).toString();
	arr.push([(Math.floor(day_rows3[0][i][0])).toString() + " 일"
				, parseFloat(day_rows3[0][i][1]), a_tot + "%"
				, parseFloat(day_rows3[0][i][2]), b_tot + "%"
				, parseFloat(day_rows3[0][i][3]), c_tot + "%"
				, parseFloat(day_rows3[0][i][4]), d_tot + "%"]);
}

data.addRows(arr);
var options = {
		isStacked: 'percent',
		legend: { position: "top" ,alignment: 'end'},
		height: 1000, 
		width: '100%',
        chartArea : { width : '80%', height : '90%', top : 50, left : 50 },
        annotations: {
			textStyle:{fontSize: 10}	
		}
	};
var chart = new google.visualization.BarChart(document.getElementById("grade_day_chart3"));
	chart.draw(data, options);
	window.addEventListener('resize',gradeDayChart3,false);
}

