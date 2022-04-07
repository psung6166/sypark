<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/common/layout/header.jsp" %>
    <script type="text/javascript" src="/static/js/management/dataMgt.js"></script>
</head>
    <body class="sb-nav-fixed">
    	<%@ include file="/WEB-INF/views/common/layout/navi.jsp" %>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <%@ include file="/WEB-INF/views/common/layout/left.jsp" %>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4"> 
                        <h1 class="mt-4"><span id="name"></span></h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active"><a href="/home/main.do">Data Analysis</a> / 데이터 관리
                        </ol>
                        <div class="row2">
                           <div class="card mb-4">
                               <div class="card-header">
                                   <i class="fas fa-table me-1"></i>
                                파일첨부
                               </div>
                          	 <div class="card-body">
                          	 	<form action="/management/dataUpload.do" method="post" enctype="multipart/form-data">
                          	 		<ul>
									 	<li><input type="file" name="file" ></li>
									 </ul>
									 <input type="submit"/>
                          	 	</form>
                            </div>
					      </div>
	                    </div>
                        <div class="row2">
                           <div class="card mb-4">
                               <div class="card-header">
                                   <i class="fas fa-table me-1"></i>
                                파일첨부 테이블
                               </div>
                          	 <div class="card-body">
                                <table id="data_mgt_table" class="table cell-border table-bordered stripe hover">
                                	<colgroup>
                                		<col width="10%" />
                                		<col width="70%" />
                                		<col width="20%" />
                                	</colgroup>
                                    <thead>
                                    	<tr>
                                    		<th>No</th>
                                    		<th>파일명</th>
                                    		<th>등록일자</th>
                                    	</tr>
                                    </thead> 
                                    <tbody>
                                    
                                    </tbody>
                                </table>
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
