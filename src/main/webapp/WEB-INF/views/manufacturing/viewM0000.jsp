<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/common/layout/header.jsp" %>
    <script type="text/javascript" src="/static/js/manufacturing/viewM0000.js"></script>
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
                            <li class="breadcrumb-item active"><a href="/home/main.do">Data Analysis</a> / 제조 / 기초정보 분석 패키지 / <span id="name"></span></li>
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
							    		 <iframe src="/static/html/manufacturing/TEAM_1_basic_analysis.html" width="100%" height="1000px"></iframe>
							    	</div>
							    </div>
							    <div class="tab_content" id="team2_content">
							    	<div class="row" id="team2">
							    		<iframe src="/static/html/manufacturing/TEAM_2_basic_analysis.html" width="100%" height="1000px"></iframe>
							    	</div>
							    </div>
							    <div class="tab_content" id="team3_content">
							    	<div class="row" id="team3">
							    		<iframe src="/static/html/manufacturing/TEAM_3_basic_analysis.html" width="100%" height="1000px"></iframe>
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
 