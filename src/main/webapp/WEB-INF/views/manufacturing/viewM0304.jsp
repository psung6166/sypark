<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/common/layout/header.jsp" %>
    <script type="text/javascript" src="/static/js/manufacturing/viewM0304.js"></script>
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
                        <div class="row2" id="all">
				    		<div class="card mb-4">
	                              <div class="card-header">
	                                  <i class="fas fa-table me-1"></i>
	                              	   이상치 분석
	                              </div>
	                         	 <div class="card-body">
	                         	 	<div style="float:right;">
	                         	 		<select id="select_team" name="select_team" class="selectpicker" onchange="fnChangeTeam();">
										    <option value="">전체</option>
										    <option value="1">팀 1</option>
										    <option value="2">팀 2</option>
										    <option value="3">팀 3</option>
								  		</select>
									 </div>
		                            	<table id="M0304_table" class="table cell-border table-bordered stripe hover" > 
		                                   <thead id="M0304_table_thead">
			                                   	<tr class="text-center">
			                                   		<th>변수</th>
			                                   		<th>팀</th>
			                                   		<th>하위 1%</th>
			                                   		<th>하위 5%</th>
			                                   		<th>하위 10%</th>
			                                   		<th>상위 90%</th>
			                                   		<th>상위 95%</th>
			                                   		<th>상위 99%</th>
			                                   	</tr>
		                                   </thead> 
		                                   <tbody id="M0304_table_tbody">
		                                   	<c:forEach var="item" items="${resultList}">
		                                    	<tr>
		                                    		<td><div class="text-center">${item.FEATURE}</div></td>
		                                    		<c:choose>
		                                    			<c:when test="${item.TEAM eq '1'}">
		                                    				<td class="text-center" style="background-color: #c9c9c9;">${item.TEAM}</td>		
		                                    			</c:when>
		                                    			<c:when test="${item.TEAM eq '2'}">
		                                    				<td class="text-center" style="background-color: #ffd966;">${item.TEAM}</td>
		                                    			</c:when>
		                                    			<c:when test="${item.TEAM eq '3'}">
		                                    				<td class="text-center" style="background-color: #8497b0;">${item.TEAM}</td>
		                                    			</c:when>
		                                    		</c:choose>
		                                    		<td class="text-end" style="color:blue;">${item.LOW_1}</td>
		                                    		<td class="text-end" style="color:blue;">${item.LOW_5}</td>
		                                    		<td class="text-end" style="color:blue;">${item.LOW_10}</td>
		                                    		<td class="text-end" style="color:red;">${item.UP_90}</td>
		                                    		<td class="text-end" style="color:red;">${item.UP_95}</td>
		                                    		<td class="text-end" style="color:red;">${item.UP_99}</td>
		                                    	</tr>
		                                   	</c:forEach>
		                                   </tbody>
		                               </table>
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
