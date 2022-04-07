<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/common/layout/header.jsp" %>
</head>
    <body class="sb-nav-fixed">
    	<%@ include file="/WEB-INF/views/common/layout/navi.jsp" %>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <%@ include file="/WEB-INF/views/common/layout/left.jsp" %>
            </div>
            <div id="layoutSidenav_content">
                <main class="de-font">
                    <div class="container-fluid px-4">
                    <div class="row">
                            <div class="col-lg-2">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        제품구성
                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="50"></canvas></div>
                                    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-pie me-1"></i>
                                        환경설정
                                    </div>
                                    <div class="card-body"><canvas id="myPieChart" width="100%" height="50"></canvas></div>
                                    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-pie me-1"></i>
                                        소개자료
                                    </div>
                                    <div class="card-body"><canvas id="myPieChart" width="100%" height="50"></canvas></div>
                                    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-pie me-1"></i>
                                        TEST
                                    </div>
                                    <div class="card-body"><canvas id="myPieChart" width="100%" height="50"></canvas></div>
                                    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-pie me-1"></i>
                                        관리자
                                    </div>
                                    <div class="card-body"><canvas id="myPieChart" width="100%" height="50"></canvas></div>
                                    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
	                        <div class="col-xl-3 col-md-6">
	                        	<div class="card bg-primary text-white mb-4">
		                        	<img src="/static/img/edge-it-board.jpg"/>
		                        </div>
	                        </div>
                        </div>
	                    <h4 class="mt-1">제품구성</h4>
                        <div class="row">
							<div class="col-xl-2-1 col-md-6" style="text-align: center;">
		                        <div class="card text-white mb-4">
		                            <!-- <div class="card-body btn-success" onclick="location.href='/home/main.do';"> -->
		                            <div class="card-body btn-success" onclick="fnDataAnalysis('manufacturing');">
	                            		<i class="bi bi-nut"></i> 제조
		                            </div>
		                        </div>
	                        </div>
	                        <div class="col-xl-2-1 col-md-6" style="text-align: center;">
		                        <div class="card text-white mb-4">
		                            <div class="card-body btn-success" onclick="fnDataAnalysis('sales');">
		                            	<i class="bi bi-cart4"></i> 유통
		                            </div>
		                        </div>
	                        </div>
                        </div>
                        <h4 class="mt-1">환경설정</h4>
                        <div class="row">
                            <div class="col-xl-2-1 col-md-6" style="text-align: center;">
                                <div class="card text-white mb-4">
                                    <div class="card-body btn-success"><i class="bi bi-person-lines-fill"></i> 사용자관리</div>
                                </div>
                            </div>
                            <div class="col-xl-2-1 col-md-6" style="text-align: center;">
                                <div class="card text-white mb-4">
                                    <div class="card-body btn-success"><i class="bi bi-file-person"></i> 접속관리</div>
                                </div>
                            </div>
                            <div class="col-xl-2-1 col-md-6" style="text-align: center;">
                                <div class="card text-white mb-4">
                                    <div class="card-body btn-success"><i class="bi bi-archive"></i> 배포 및 회수관리</div>
                                </div>
                            </div>
                            <div class="col-xl-2-1 col-md-6" style="text-align: center;">
                                <div class="card text-white mb-4">
                                    <div class="card-body btn-success"><i class="bi bi-bar-chart-steps"></i> 데이터 관리</div>
                                </div>
                            </div>
                        </div>
                        <h4 class="mt-1">소개자료</h4>
                        <div class="row">
                            <div class="col-xl-2-1 col-md-6" style="text-align: center;">
                                <div class="card text-white mb-4">
                                    <div class="card-body btn-success"><i class="bi bi-book-half"></i> EDGE - it</div>
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
