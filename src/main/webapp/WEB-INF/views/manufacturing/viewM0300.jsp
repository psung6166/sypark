<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/common/layout/header.jsp" %>
    
    <script type="text/javascript" src="/static/js/manufacturing/chart/chart-day-fl.js"></script>
   	<script type="text/javascript" src="/static/js/manufacturing/chart/chart-hour-fl.js"></script>
   	<script type="text/javascript" src="/static/js/manufacturing/chart/chart-week-fl.js"></script>
   	<script type="text/javascript" src="/static/js/manufacturing/chart/chart-month-fl.js"></script>
   	<script type="text/javascript" src="/static/js/manufacturing/chart/chart-quarter-fl.js"></script>
   	<script type="text/javascript" src="/static/js/manufacturing/chart/chart-year-fl.js"></script>
   	
   	<script type="text/javascript" src="/static/js/manufacturing/viewM0300.js"></script>
   	
   	<script type="text/javascript">
   		// GET으로 넘긴값 찾아서 화면에 뿌려줌
   		//$("#name").html(fnGetParameters('name'));
   	</script>
</head>
    <body class="sb-nav-fixed">
    	<%@ include file="/WEB-INF/views/common/layout/navi.jsp" %>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <%@ include file="/WEB-INF/views/common/layout/left.jsp" %>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4 de-font"> 
                        <h1 class="mt-4"><span id="name"></span></h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active"><a href="/home/main.do">Data Analysis</a> / 제조 / 공정 분석 패키지 / <span id="name"></span></li>
                        </ol>
                        <div class="row">
                        	<div class="tabs">
							    <input id="team1" type="radio" name="tab_item" checked>
							    <label class="tab_item" for="team1">Team 1</label>
							    <input id="team2" type="radio" name="tab_item">
							    <label class="tab_item" for="team2">Team 2</label>
							    <input id="team3" type="radio" name="tab_item">
							    <label class="tab_item" for="team3">Team 3</label>
							    <input id="team3" type="radio" name="tab_item">
							    <label class="tab_item" for="team3"> </label>
							    <input id="team3" type="radio" name="tab_item">
							    <label class="tab_item" for="team3"> </label>
							    <input id="team3" type="radio" name="tab_item">
							    <label class="tab_item" for="team3"> </label>
							    <div class="tab_content" id="team1_content">
							    	<div class="row" id="team1">
							    		<div id="slide_team1_option" class="">
					                   		<div class="row">
					                            <div class="col-xl-6">
					                                <div class="card mb-4"> 
					                                    <div class="card-header">
															<i class="bi bi-bar-chart-line-fill"></i>
					                                         일(1 ~ 31)별 등급 비율<!-- Grade Day Chart -->
					                                    </div>
					                                    <div class="card-body" id="grade_day_chart1_body">
															<div id="grade_day_chart1"></div>                                    
					                                    </div>
					                                </div>
					                            </div>
					                            <div class="col-xl-6">
					                                <div class="card mb-4">
					                                    <div class="card-header"> 
					                                    	<i class="bi bi-bar-chart-line-fill"></i>
					                                        시간(8 ~ 17)별 등급 비율<!-- Grade Hour Chart -->
					                                    </div>
					                                    <div class="card-body">
					                                    	<div id="grade_hour_chart1"></div>
					                                    </div>
					                                </div>
					                                <div class="card mb-4">
					                                    <div class="card-header">
					                                    	<i class="bi bi-bar-chart-line-fill"></i> 
					                                        요일(일 ~ 월)별 등급 비율 <!-- Grade Week Chart -->
					                                    </div>
					                                    <div class="card-body">
					                                    	<div id="grade_week_chart1"></div>
					                                    </div>
					                                </div>
					                            </div>
					                        </div>
					                   		<div class="row">
					                            <div class="col-xl-6">
					                                <div class="card mb-4">
					                                    <div class="card-header">
					                                    	<i class="bi bi-bar-chart-line-fill"></i>
					                                        월(1 ~ 12)별 등급 비율<!-- Grade Month Chart -->
					                                    </div>
					                                    <div class="card-body">
															<div id="grade_month_chart1"></div>                                    
					                                    </div>
					                                </div>
					                            </div>
					                            <div class="col-xl-6">
					                                <div class="card mb-4">
					                                    <div class="card-header">
					                                    	<i class="bi bi-bar-chart-line-fill"></i>
					                                        분기(1 ~ 4)별 등급 비율<!-- Grade Quarter Chart -->
					                                    </div>
					                                    <div class="card-body">
					                                    	<div id="grade_quarter_chart1"></div>
					                                    </div>
					                                </div>
					                                <div class="card mb-4">
					                                    <div class="card-header">
					                                    	<i class="bi bi-bar-chart-line-fill"></i>
					                                        연도(20 ~ 21)별 등급 비율<!-- Grade Year Chart -->
					                                    </div>
					                                    <div class="card-body">
					                                    	<div id="grade_year_chart1"></div>
					                                    </div>
					                                </div>
					                            </div>
					                        </div>
				                        </div>
							    	</div>
							    </div>
							    <div class="tab_content" id="team2_content">
							    	<div class="row" id="team2">
							    		<div id="slide_team2_option" class="">
					                   		<div class="row">
					                            <div class="col-xl-6">
					                                <div class="card mb-4">
					                                    <div class="card-header">
					                                    	<i class="bi bi-bar-chart-line-fill"></i>
					                                        일(1 ~ 31)별 등급 비율
					                                    </div>
					                                    <div class="card-body">
															<div id="grade_day_chart2"></div>                                    
					                                    </div>
					                                </div>
					                            </div>
					                            <div class="col-xl-6">
					                                <div class="card mb-4">
					                                    <div class="card-header"> 
					                                    	<i class="bi bi-bar-chart-line-fill"></i>
					                                        시간(8 ~ 17)별 등급 비율
					                                    </div>
					                                    <div class="card-body">
					                                    	<div id="grade_hour_chart2"></div>
					                                    </div>
					                                </div>
					                                <div class="card mb-4">
					                                    <div class="card-header">
					                                    	<i class="bi bi-bar-chart-line-fill"></i>
					                                        요일(일 ~ 월)별 등급 비율
					                                    </div>
					                                    <div class="card-body">
					                                    	<div id="grade_week_chart2"></div>
					                                    </div>
					                                </div>
					                            </div>
					                        </div>
					                   		<div class="row">
					                            <div class="col-xl-6">
					                                <div class="card mb-4">
					                                    <div class="card-header">
					                                    	<i class="bi bi-bar-chart-line-fill"></i>
					                                        월(1 ~ 12)별 등급 비율
					                                    </div>
					                                    <div class="card-body">
															<div id="grade_month_chart2"></div>                                    
					                                    </div>
					                                </div>
					                            </div>
					                            <div class="col-xl-6">
					                                <div class="card mb-4">
					                                    <div class="card-header">
					                                    	<i class="bi bi-bar-chart-line-fill"></i>
					                                        분기(1 ~ 4)별 등급 비율
					                                    </div>
					                                    <div class="card-body">
					                                    	<div id="grade_quarter_chart2"></div>
					                                    </div>
					                                </div>
					                                <div class="card mb-4">
					                                    <div class="card-header">
					                                    	<i class="bi bi-bar-chart-line-fill"></i> 
					                                        연도(20 ~ 21)별 등급 비율
					                                    </div>
					                                    <div class="card-body">
					                                    	<div id="grade_year_chart2"></div>
					                                    </div>
					                                </div>
					                            </div>
					                        </div>
				                      	</div>
							    	</div>
							    </div>
							    <div class="tab_content" id="team3_content">
							    	<div class="row" id="team3">
					                     <div id="slide_team3_option" class="">
					                   		<div class="row">
					                            <div class="col-xl-6">
					                                <div class="card mb-4">
					                                    <div class="card-header">
					                                    	<i class="bi bi-bar-chart-line-fill"></i>
					                                        일(1 ~ 31)별 등급 비율
					                                    </div>
					                                    <div class="card-body">
															<div id="grade_day_chart3"></div>                                    
					                                    </div>
					                                </div>
					                            </div>
					                            <div class="col-xl-6">
					                                <div class="card mb-4">
					                                    <div class="card-header">
					                                    	<i class="bi bi-bar-chart-line-fill"></i> 
					                                        시간(8 ~ 17)별 등급 비율
					                                    </div>
					                                    <div class="card-body">
					                                    	<div id="grade_hour_chart3"></div>
					                                    </div>
					                                </div>
					                                <div class="card mb-4">
					                                    <div class="card-header">
					                                    	<i class="bi bi-bar-chart-line-fill"></i>
					                                        요일(일 ~ 월)별 등급 비율
					                                    </div>
					                                    <div class="card-body">
					                                    	<div id="grade_week_chart3"></div>
					                                    </div>
					                                </div>
					                            </div>
					                        </div>
					                   		<div class="row">
					                            <div class="col-xl-6">
					                                <div class="card mb-4">
					                                    <div class="card-header">
					                                    	<i class="bi bi-bar-chart-line-fill"></i>
					                                        월(1 ~ 12)별 등급 비율
					                                    </div>
					                                    <div class="card-body">
															<div id="grade_month_chart3"></div>                                    
					                                    </div>
					                                </div>
					                            </div>
					                            <div class="col-xl-6">
					                                <div class="card mb-4">
					                                    <div class="card-header">
					                                    	<i class="bi bi-bar-chart-line-fill"></i>
					                                        분기(1 ~ 4)별 등급 비율
					                                    </div>
					                                    <div class="card-body">
					                                    	<div id="grade_quarter_chart3"></div>
					                                    </div>
					                                </div>
					                                <div class="card mb-4">
					                                    <div class="card-header">
					                                    	<i class="bi bi-bar-chart-line-fill"></i> 
					                                        연도(20 ~ 21)별 등급 비율
					                                    </div>
					                                    <div class="card-body">
					                                    	<div id="grade_year_chart3"></div>
					                                    </div>
					                                </div>
					                            </div>
					                        </div>
										</div>							    	
							    	</div>
							    </div>
                        </div>
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
