<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/common/layout/header.jsp" %>
    <script type="text/javascript" src="/static/js/manufacturing/viewM0303.js"></script>
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
                        <div class="row2">
                           <div class="card mb-4">
                               <div class="card-header">
                                   <i class="fas fa-table me-1"></i>
                                공정능력분석
                               </div>
                          	 <div class="card-body">
                          	 	<div style="float: left;width: 60%;">
	                                <table id="M0303_table" class="table cell-border table-bordered stripe hover" style=""> 
	                                    <thead id="M0303_table_thead">
	                                    	<tr class="text-center"> 
	                                    		<th>TEAM</th>
	                                    		<th>Cp</th>
	                                    		<th>등급</th>
	                                    		<th>Cpk</th>
	                                    		<th>불량률(PPM)</th>
	                                    	</tr>
	                                    </thead> 
	                                    <tbody id="M0303_table_tbody">
	                                    	<c:forEach var="item" items="${resultList}" varStatus="status">
	                                    		<tr>
	                                  				<td class="text-center">${item.aa}</td>
		                                   			<td class="text-end">${item.bb}</td>
		                                   			<td class="text-center">${item.cc}</td>
		                                   			<td class="text-end">${item.dd}</td>
		                                   			<td class="text-end">${item.ee}</td>
	                                    		</tr>
	                                    	</c:forEach>
	                                    </tbody>
	                                </table>
                                </div>
	                            <div style="float: right;width: 36%;">
	                                <div class="row">
	                                	- Cp: Capability of Process 공정 능력<br/>
										- 등급 :  하단 그림 1-1 참고<br/>
										- Cpk : Capability of Process, Katayori(공정 능력의 치우침 정도 반영)<br/>
										- [참고] 공정 능력 당 불량률(100만건 중)
	                                </div>
                                </div>
                               </div>
                                <br/>
                                <div class="card-body">
                                <div style="float: left;width: 48%;">
	                                <div class="row">
	                                	<span style="font-weight: bold;">[판단기준]</span>
	                                	<!-- <img src="/static/img/M0303/M0303_1.png" alt="공정기준" style="height:700px;width:900px;"> -->
		                                <table id="M0303_table3" class="table cell-border table-bordered stripe hover">
	                                		<thead>
	                                			<tr class="text-center">
	                                				<th>구분</th>
	                                				<th>판단</th>
	                                				<th>예상 양품률(%)</th>
	                                				<th>예상 불량률</th>
	                                			</tr>
	                                		</thead>
	                                		<tbody>
	                                		<c:forEach var="item" items="${resultList3}" varStatus="status">
	                                    		<tr>
	                                  				<td class="text-center">${item.aa}</td>
		                                   			<td class="text-center">${item.bb}</td>
		                                   			<td>${item.cc}</td>
		                                   			<td>${item.dd}</td>
	                                    		</tr>
	                                    	</c:forEach>
	                                		</tbody>
	                                	</table>
	                                </div>
	                                <br/>
	                                <div class="row">
	                                	<span style="font-weight: bold;">[판단기준(국내)]</span>
		                                <table id="M0303_table4" class="table cell-border table-bordered stripe hover">
	                                		<thead>
	                                			<tr class="text-center">
	                                				<th>구분</th>
	                                				<th>급수</th>
	                                				<th>판단</th>
	                                				<th>대처</th>
	                                			</tr>
	                                		</thead>
	                                		<tbody>
	                                		<c:forEach var="item" items="${resultList4}" varStatus="status">
	                                    		<tr>
	                                  				<td class="text-center">${item.aa}</td>
		                                   			<td class="text-center">${item.bb}</td>
		                                   			<td class="text-center">${item.cc}</td>
		                                   			<td>${item.dd}</td>
	                                    		</tr>
	                                    	</c:forEach>
	                                		</tbody>
	                                	</table>
	                                </div>
                                </div>
                            <div style="float: right;width: 48%;">
                                <div class="row">
                                	<span style="font-weight: bold;">[참고]</span>
                                	<table id="M0303_table2" class="table cell-border table-bordered stripe hover">
                                		<thead>
                                			<tr class="text-center">
                                				<th>공정능력</th>
                                				<th>추정불량수(PPM)</th>
                                			</tr>
                                		</thead>
                                		<tbody>
                                		<c:forEach var="item" items="${resultList2}" varStatus="status">
                                    		<tr class="text-center">
                                  				<td>${item.aa}</td>
	                                   			<td>${item.bb}</td>
                                    		</tr>
                                    	</c:forEach>
                                		</tbody>
                                	</table>
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
