<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/common/layout/header.jsp" %>
    <script type="text/javascript" src="/static/js/sales/viewS0100.js"></script>
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
                            <li class="breadcrumb-item active"><a href="/home/main.do">Data Analysis</a> / 유통 / 수요 분석 패키지 / <span id="name"></span></li>
                        </ol>
                        <div class="row2">
	                        <div class="card mb-4" style="width:80%;float:left;">
	                            <div class="card-body">
	                                <table class="">
	                                	<tbody>
	                                		<tr>
	                                			<th>시간</th> 
	                                			<td>
	                                			<div class="input-group">
	                                				<a href="#" class="btn btn-primary" onclick="fnSelectEvent('hour')">
				                                        <span class="text">시간</span>
				                                    </a>
	                                				<a href="#" class="btn btn-primary" onclick="fnSelectEvent('day')">
				                                        <span class="text">일</span>
				                                    </a>
	                                				<a href="#" class="btn btn-primary" onclick="fnSelectEvent('week')">
				                                        <span class="text">요일</span>
				                                    </a>
	                                				<a href="#" class="btn btn-primary" onclick="fnSelectEvent('month')">
				                                        <span class="text">월</span>
				                                    </a>
	                                				<a href="#" class="btn btn-primary" onclick="fnSelectEvent('quarter')">
				                                        <span class="text">분기</span>
				                                    </a>
												    <input class="form-control" type="text" id="start_dt" name="start_dt" placeholder="시작일" aria-label="start" autocomplete="off"><span class="input-group-text">~</span>
												    <input class="form-control" type="text" id="end_dt" name="end_dt" placeholder="종료일" aria-label="end" onchange="fnSelectDate(this);" autocomplete="off">
													</div>	
				                               </td>
	                                		</tr>
	                                		<tr>
	                                			<th>부서</th>
	                                			<td>
											  		<div class="input-group">
		                                				<select id="select_dept" name="select_dept" class="selectpicker" onchange="fnChangeDept();">
														    <option value="">부서 전체</option>
														    <c:forEach var="item" items="${listDept}">
															    <c:if test="${item.DEPARTMENT_ID ne '0'}">
															    	<option value="${item.DEPARTMENT_ID}">${item.DEPARTMENT}</option>
															    </c:if>
														    </c:forEach>
												  		</select>
		                                				<select id="select_aisle" name="select_aisle" class="selectpicker" onchange="fnChangeAisle();">
														    <option value="">통로 전체</option>
														    <c:forEach var="item" items="${listAisle}">
														    	<option value="${item.AISLE_ID}">${item.AISLE}</option>
														    </c:forEach>
												  		</select>
													    <input class="form-control" type="text" id="input_product" name="input_product" placeholder="제품명 입력" aria-label="제품명 입력" aria-describedby="button-addon2">
													    <button class="btn btn-primary" id="button-addon2" type="button" onclick="fnClickProduct();">입력</button>
													</div>
	                                    		</td>
	                                		</tr>
	                                		<!-- <tr>
	                                			<th>고객</th>
	                                			<td>
	                                				<div class="dropdown">
													    <button class="btn btn-primary dropdown-toggle" id="dropdownMenuButton2" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">성별</button>
													    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
													        <a class="dropdown-item" href="#!">남자</a>
													        <a class="dropdown-item" href="#!">여자</a>
													    </div>
													</div>
	                                			</td>
	                                		</tr> -->
	                                	</tbody>
	                                </table>
	                            </div>
	                        </div>
                            <div class="card mb-4" style="width:20%;float:right;margin-left: -1px;">
	                            <div class="card-body">
	                            	<button class="btn btn-primary" style="width:100%;height:100%;" onclick="fnSearch();">
										<i class="bi bi-search"></i>
									</button>
	                            </div>
                            </div>
                        </div>
                        <div class="row2">
	                        <div class="card mb-4">
	                        	<div id="select_search" style="height:50px;padding:6px;">
	                                	
                                </div>
                                <form action="#" method="get" name="aform" id="aform" role="form">
	                                <div id="select_hidden">
	                                	
	                                </div>
                                </form> 
	                        </div>
	                    </div>
                        <div class="row2">
                           <div class="card mb-4">
                               <div class="card-header">
                                   <i class="fas fa-table me-1"></i>
                                머천다이징 테이블
                               </div> 
                          	 <div class="card-body">
                              		<table id="S0100_table" class="table cell-border table-bordered stripe hover">
                              			<thead>
                              				<tr class="de-font alCenter">
                              					<th>주문번호</th>
                              					<th>방문번호</th>
                              					<th>고객ID</th>
                              					<th>장바구니순서</th>
                              					<th>재구매여부</th>
                              					<th>방문일</th>
                              					<th>상품번호</th>
                              					<th>상품명</th>
                              					<th>통로번호</th>
                              					<th>통로명</th>
                              					<th>부서번호</th>
                              					<th>부서명</th>
                              					<th>가격</th>
                              				</tr>
                              			</thead>
                              			<tbody>
                              				<c:forEach var="item" items="${resultList}">
	                              				<tr class="de-font">
	                              					<td>${item.ORDER_ID}</td>
	                              					<td>${item.ORDER_NUMBER}</td>
	                              					<td>${item.USER_ID}</td>
	                              					<td>${item.ADD_TO_CART_ORDER}</td>
	                              					<td>${item.REORDERED}</td>
	                              					<td>${item.VISIT_DATE}</td>
	                              					<td>${item.PRODUCT_ID}</td>
	                              					<td>${item.PRODUCT_NAME}</td>
	                              					<td>${item.AISLE_ID}</td>
	                              					<td>${item.AISLE}</td>
	                              					<td>${item.DEPARTMENT_ID}</td>
	                              					<td>${item.DEPARTMENT}</td>
	                              					<td>${item.PRICE_WON}</td>
	                              				</tr>
                              				</c:forEach>
                              			</tbody>
                              		</table>
                            </div>
					      </div>
	                    </div>
                        <!-- <div class="row2">
                           <div class="card mb-4">
                               <div class="card-header">
                                   <i class="bi bi-file-bar-graph"></i>
                                merchandising chart
                               </div> 
                          	 <div class="card-body">
                          	 	<div class="row">
									<div class="col-xl-3">
	                          	 		<button class="btn btn-primary" type="button">시간별</button>
		                            </div>
									<div class="col-xl-3">
	                          	 		<button class="btn btn-primary" type="button">부서별</button>
		                            </div>
									<div class="col-xl-3">
	                          	 		<button class="btn btn-primary" type="button">고객별</button>
		                            </div>
                          	 	</div>
                          	 	<br/>
                              	<div class="row">
                              		<div id="barchart_material" style="width: 100%; height: 500px;"></div>
                              	</div>
                            </div>
					      </div>
	                    </div> -->
	                </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
	                <%@ include file="/WEB-INF/views/common/layout/footer.jsp" %>
                </footer>
            </div>
        </div>
    </body>
</html>
 