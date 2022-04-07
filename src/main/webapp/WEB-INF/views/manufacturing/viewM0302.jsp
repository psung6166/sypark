<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/common/layout/header.jsp" %>
    <script type="text/javascript" src="/static/js/manufacturing/viewM0302.js"></script>
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
                                라인 별 생산성 순위
                               </div>
                          	 <div class="card-body">
                                <table id="M0302_table" class="table cell-border table-bordered stripe hover" style=""> 
                                    <thead id="M0302_table_thead">
                                    	<tr class="de-font alCenter">
                                    		<th>팀 라인</th>
                                    		<th>순위</th>
                                    		<th>주변 습도</th>
                                    		<th>주변 온도</th>
                                    		<th>원료공급 변수</th>
                                    		<th>구역1 온도</th>
                                    		<th>구역2 온도</th>
                                    		<th>모터의 전류</th>
                                    		<th>원자재 속성</th>
                                    		<th>모터의전류 백분율</th>
                                    		<th>등급</th>
                                    	</tr>
                                    </thead> 
                                    <tbody id="M0302_table_tbody">
                                    	<c:forEach var="item" items="${resultList}" varStatus="status">
                                    		<tr>
                                    		<c:choose>
                                    			<c:when test="${item.RANK eq '1'}">
                                    				<td class="table-color-gw alCenter">${item.TEAM_LINE}</td>
	                                    			<td class="table-color-gw alCenter">${item.RANK}</td>
	                                    			<td class="table-color-gw alRight">${item.aa}</td>
	                                    			<td class="table-color-gw alRight">${item.bb}</td>
	                                    			<td class="table-color-gw alRight">${item.cc}</td>
	                                    			<td class="table-color-gw alRight">${item.dd}</td>
	                                    			<td class="table-color-gw alRight">${item.ee}</td>
	                                    			<td class="table-color-gw alRight">${item.ff}</td>
	                                    			<td class="table-color-gw alRight">${item.gg}</td>
	                                    			<td class="table-color-gw alRight">${item.hh}</td>
	                                    			<td class="table-color-gw alRight">${item.GRADE}</td>
                                    			</c:when>
                                    			<c:when test="${item.RANK ne '1'}">
                                    				<td class="alCenter">${item.TEAM_LINE}</td>
	                                    			<td class="alCenter">${item.RANK}</td>
	                                    			<c:if test="${fn:indexOf(item.aa,'-') eq '-1'}">
	                                    				<td class="table-color-rw alRight">${item.aa}</td>
	                                    			</c:if>
	                                    			<c:if test="${fn:indexOf(item.aa,'-') ne '-1'}">
	                                    				<td class="table-color-bw alRight">${item.aa}</td>
	                                    			</c:if>
	                                    			<c:if test="${fn:indexOf(item.bb,'-') eq '-1'}">
	                                    				<td class="table-color-rw alRight">${item.bb}</td>
	                                    			</c:if>
	                                    			<c:if test="${fn:indexOf(item.bb,'-') ne '-1'}">
	                                    				<td class="table-color-bw alRight">${item.bb}</td>
	                                    			</c:if>
	                                    			<c:if test="${fn:indexOf(item.cc,'-') eq '-1'}">
	                                    				<td class="table-color-rw alRight">${item.cc}</td>
	                                    			</c:if>
	                                    			<c:if test="${fn:indexOf(item.cc,'-') ne '-1'}">
	                                    				<td class="table-color-bw alRight">${item.cc}</td>
	                                    			</c:if>
	                                    			<c:if test="${fn:indexOf(item.dd,'-') eq '-1'}">
	                                    				<td class="table-color-rw alRight">${item.dd}</td>
	                                    			</c:if>
	                                    			<c:if test="${fn:indexOf(item.dd,'-') ne '-1'}">
	                                    				<td class="table-color-bw alRight">${item.dd}</td>
	                                    			</c:if>
	                                    			<c:if test="${fn:indexOf(item.ee,'-') eq '-1'}">
	                                    				<td class="table-color-rw alRight">${item.ee}</td>
	                                    			</c:if>
	                                    			<c:if test="${fn:indexOf(item.ee,'-') ne '-1'}">
	                                    				<td class="table-color-bw alRight">${item.ee}</td>
	                                    			</c:if>
	                                    			<c:if test="${fn:indexOf(item.ff,'-') eq '-1'}">
	                                    				<td class="table-color-rw alRight">${item.ff}</td>
	                                    			</c:if>
	                                    			<c:if test="${fn:indexOf(item.ff,'-') ne '-1'}">
	                                    				<td class="table-color-bw alRight">${item.ff}</td>
	                                    			</c:if>
	                                    			<c:if test="${fn:indexOf(item.gg,'-') eq '-1'}">
	                                    				<td class="table-color-rw alRight">${item.gg}</td>
	                                    			</c:if>
	                                    			<c:if test="${fn:indexOf(item.gg,'-') ne '-1'}">
	                                    				<td class="table-color-bw alRight">${item.gg}</td>
	                                    			</c:if>
	                                    			<c:if test="${fn:indexOf(item.hh,'-') eq '-1'}">
	                                    				<td class="table-color-rw alRight">${item.hh}</td>
	                                    			</c:if>
	                                    			<c:if test="${fn:indexOf(item.hh,'-') ne '-1'}">
	                                    				<td class="table-color-bw alRight">${item.hh}</td>
	                                    			</c:if>
	                                    			<c:if test="${fn:indexOf(item.GRADE,'-') eq '-1'}">
	                                    				<td class="table-color-rw alRight">${item.GRADE}</td>
	                                    			</c:if>
	                                    			<c:if test="${fn:indexOf(item.GRADE,'-') ne '-1'}">
	                                    				<td class="table-color-bw alRight">${item.GRADE}</td>
	                                    			</c:if>
                                    			</c:when>
                                    		</c:choose>
                                    		</tr>
                                    	</c:forEach>
                                    </tbody>
                                </table>
                            </div>
					      </div>
	                    </div>
	                    <div class="row2">
	                    	<div class="card mb-4">
                            <div class="card-body">
                            	<ul>
                            		<li>생산성 산정 방식 :  제품의 등급(GRADE) 기준으로 스코어 산정.
                            			<ul>
                            				<li>(각 라인 별 생산된 등급 점수의 합산 / 작업 수)</li>
                            			</ul>
                            		</li>                            		
                            		<li>팀 라인 : 해당 공정의 <span style="background-color: #EAEAEA;">팀 라인</span> 표현</li>
                            		<li>순위 : 전체 공정(Factory)에서 팀 , 라인 별 전체 순위를 구한 값</li>
                            		<li>순위 1의 경우 <span style="color:green;font-weight:bold;">녹색</span>으로 표시 > 생산성이 가장 좋은 라인
                            			<ul>
                            				<li>순위 1의 경우 해당 <span style="background-color: #EBF7FF;">공정의 평균</span>을 표현.</li>
                            			</ul>
                            		</li>
                            		<li>순위 2위~12위: <span style="background-color: #EAEAEA;">순위 1의 평균값</span>에서 해당 공정(순위 1을 제외한 공정)의 평균값의 편차.
                            			<ul>
                            				<li>(순위 1 - 순위 2 ~ 12)</li>
                            				<li>순위 1의 기준 값보다 적을 경우(+값) > <span style="color:red;font-weight:bold;">빨간색</span></li>
                            				<li>순위 1의 기준 값보다 클 경우 (-값) > <span style="color:blue;font-weight:bold;">파란색</span></li>
                            			</ul>
                            		</li>
                            	</ul>
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
