<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/common/layout/header.jsp" %>
    <script type="text/javascript">
    	google.charts.load('current', { packages: ['corechart'] });
	    google.charts.setOnLoadCallback(drawChart);
	
	  function drawChart() {
	
		  var data = google.visualization.arrayToDataTable([
	          ['Month', '접속 수'],
	          ['1월',  1],
	          ['2월',  2],
	          ['3월',  5],
	          ['4월',  7],
	          ['5월',  9],
	          ['6월',  8],
	          ['7월',  7],
	          ['8월',  9],
	          ['9월',  7],
	          ['10월',  11],
	          ['11월',  12],
	          ['12월',  13],
	        ]);
			
	    var options = {
	    	bars:'vertical',
	  	  series : { 0 : { type : 'line', color : 'red' } },
	      width: '100%',
	      height: 500,
	      legend : { position : 'top', textStyle : { color : 'black' }, alignment : 'end' },
	      pointSize : '5',
	    };
	
	    var chart = new google.visualization.ColumnChart(document.getElementById('linechart_material'));
	    chart.draw(data, options);
	    window.addEventListener('resize', drawChart, false);
	  }
    </script>
    <style>

    </style>
</head>
    <body class="sb-nav-fixed">
    	<%@ include file="/WEB-INF/views/common/layout/navi.jsp" %>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <%@ include file="/WEB-INF/views/common/layout/left.jsp" %>
            </div>
            <div id="layoutSidenav_content" class="layoutSidenav_content">
                <main class="de-font">
                    <div class="container-fluid px-4">
                  	  <!-- <div class="row">
	                        <div class="col-xl-3 col-md-6">
	                        	<div class="card bg-primary text-white mb-4">
		                        	<img src="/static/img/edge-it-board.jpg"/>
		                        </div>
	                        </div>
		                    <div class="col-xl-8 col-md-6">
		                        Edge라는 단어는 연합학습에 적용되는 기술인 Edge Computing의 뜻을 포함하며, "엣지있게"는 현대 유행어로 "멋있다/느낌있다"라는 의미를 가지기도 합니다.<br/> 엣지있게의 "있"을 it로 바꾸어 Insight Tracker, Intelligence Tool, Information Technology의 약자로 활용하여 의미를 더할 수 있습니다.
		                    </div>
                        </div> -->
                    <div class="row">
                            <div class="col-lg-2">
                                <div class="card mb-4">
                                    <div class="card-header">
                                       <i class="bi bi-diagram-3-fill"></i>
                                        제품구성
                                    </div>
                                    <div class="card-body">
                                   		<div class="" style="text-align: center;">
					                        <div class="card text-white mb-4">
					                            <div class="card-body btn-success" onclick="fnDataAnalysis('manufacturing');" style="cursor:pointer;">
				                            		<i class="bi bi-nut"></i> 제조
					                            </div>
					                        </div>
				                        </div>
				                         <div class="" style="text-align: center;">
					                        <div class="card text-white mb-4">
					                            <div class="card-body btn-success" onclick="fnDataAnalysis('sales');" style="cursor:pointer;">
					                            	<i class="bi bi-cart4"></i> 유통
					                            </div>
					                        </div>
				                        </div>
				                        <div class="" style="text-align: center;">
					                        <div class="card text-white mb-4">
					                            <div class="card-body btn-success" style="background-color: #D5D5D5;cursor:no-drop;">
					                            	<i class="bi bi-bandaid"></i> 헬스케어
					                            </div>
					                        </div>
				                        </div>
				                        <div class="" style="text-align: center;">
					                        <div class="card text-white mb-4">
					                            <div class="card-body btn-success" style="background-color: #D5D5D5;cursor:no-drop;">
					                            	<i class="bi bi-cash-coin"></i> 금융
					                            </div>
					                        </div>
				                        </div>
				                        <div class="" style="text-align: center;">
					                        <div class="card text-white mb-4">
					                            <div class="card-body btn-success" style="background-color: #D5D5D5;cursor:no-drop;">
					                            	<i class="bi bi-shield-lock"></i> 보안
					                            </div>
					                        </div>
				                        </div>
				                        <div class="" style="text-align: center;">
					                        <div class="card text-white mb-4">
					                            <div class="card-body btn-success" style="background-color: #D5D5D5;cursor:no-drop;">
					                            	<i class="bi bi-building"></i> 기관, 기업
					                            </div>
					                        </div>
				                        </div>
                                    </div>
                                </div>
                            </div>
                             <div class="col-lg-2">
                                <div class="card mb-4">
                                    <div class="card-header">
                                       <i class="bi bi-gear-wide-connected"></i>
                                        환경설정
                                    </div>
                                    <div class="card-body">
                                    	<div class="" style="text-align: center;">
			                                <div class="card text-white mb-4">
			                                    <div class="card-body btn-success" onclick="location.href='/management/viewUserMgt.do'" style="cursor:pointer;">
			                                    	<i class="bi bi-person-lines-fill"></i> 사용자관리
			                                    </div>
			                                </div>
			                            </div>
			                            <div class="" style="text-align: center;">
			                                <div class="card text-white mb-4">
			                                    <div class="card-body btn-success" onclick="location.href='/management/viewDataMgt.do'" style="cursor:pointer;">
			                                    	<i class="bi bi-bar-chart-steps"></i> 데이터 관리
			                                    </div>
			                                </div>
			                            </div>
			                            <div class="" style="text-align: center;">
			                                <div class="card text-white mb-4">
			                                    <div class="card-body btn-success" style="background-color: #D5D5D5;cursor:no-drop;">
			                                    	<i class="bi bi-file-person"></i> 접속관리
			                                    </div>
			                                </div>
			                            </div>
			                            <div class="" style="text-align: center;">
			                                <div class="card text-white mb-4">
			                                    <div class="card-body btn-success" style="background-color: #D5D5D5;cursor:no-drop;">
			                                    	<i class="bi bi-archive"></i> 배포 및 회수관리
			                                    	</div>
			                                </div>
			                            </div>
                                    </div>
                                </div>
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="bi bi-info-circle"></i>
                                        소개자료
                                    </div>
                                    <div class="card-body">
                                    	<div class="" style="text-align: center;">
			                                <div class="card text-white mb-4">
			                                    <div class="card-body btn-success" onclick="location.href='/home/info.do'" style="cursor:pointer;">
			                                    	<i class="bi bi-book-half"></i> EDGE - it
			                                    </div>
			                                </div>
			                            </div>
                                    	<div class="" style="text-align: center;">
			                                <div class="card text-white mb-4">
			                                    <div class="card-body btn-success" onclick="window.open('http://www.safekorea.co.kr/')" style="cursor:pointer;">
			                                    	<i class="bi bi-house-door"></i> Home Page
			                                    </div>
			                                </div>
			                            </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="bi bi-laptop"></i>
                                        Jupyter Lab
                                    </div>
                                    <div class="card-body">
                                    	<div class="" style="text-align: center;">
			                                <div class="card text-white mb-4" style="cursor: pointer;"onclick="window.open('http://192.168.5.161:22002/lab/tree')">
			                                	<img src="/static/img/jupyter.png"/>
			                                    <!-- <div class="card-body btn-success" onclick="location.href='/home/info.do'" style="cursor:pointer;">
			                                    	
			                                    </div> -->
			                                </div>
			                            </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-5-1">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="bi bi-people-fill"></i>
                                        접속정보
                                    </div>
                                    <div class="card-body" style="background-color:#212529;">
                                    	<div class="row">
                                    		<div style="text-align:center;font-size:50px;color:white;">
												<i class="bi bi-person"></i>
											</div>
											<div style="text-align:center;font-size:20px;color:white;">
												${sessionScope.userInfoVo.userNm}님, 환영합니다.
											</div>
											<div style="text-align:left;font-size:15px;color:white;">
												접속 아이피 : ${sessionScope.userInfoVo.userIp}
											</div>
											<div style="text-align:left;font-size:15px;color:white;">
												접속 운영체제 : ${sessionScope.userInfoVo.userOs}
											</div>
											<div style="text-align:left;font-size:15px;color:white;">
												접속 브라우저 : ${sessionScope.userInfoVo.userBr}
											</div>
											<div style="text-align:left;font-size:15px;color:white;">
												접속 환경 : ${sessionScope.userInfoVo.userTy}
											</div>
                                    	</div>
                                    	<br/>
                                    	<div class="row">
                                    		<div id="linechart_material"></div>
                                    	</div>
                                    </div>
                                    <div class="card-footer small text-muted">Last Login at ${lastLogin}</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                        	
                        </div>
	                </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
	                <%@ include file="/WEB-INF/views/common/layout/footer.jsp" %>
                </footer>
            </div>
        </div>
    </body>
</html>
