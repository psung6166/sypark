<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="/WEB-INF/views/common/layout/header.jsp" %>
    <script type="text/javascript" src="/static/js/sales/viewS0000.js"></script>
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
                            <li class="breadcrumb-item active"><a href="/home/main.do">Data Analysis</a> / 유통 / 기초정보 분석 패키지 / <span id="name"></span></li>
                        </ol>
                        <div class="row2">
                           <div class="card mb-4">
                               <div class="card-header">
                                   <i class="fas fa-table me-1"></i>
                                basic_analysis
                               </div> 
                          	 <div class="card-body">
                               <iframe src="/static/html/Sales_basic_analysis.html" width="100%" height="1000px"></iframe>
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
 