<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
   <head>
    	<%@ include file="/WEB-INF/views/common/layout/header.jsp" %>
    	<script type="text/javascript">
    		$(function(){
    			
    			$("#manufacturing").prop("checked",true);
    			if(window.location.search === "?type=manufacturing"){
    				$("#manufacturing").prop("checked",true);
    			}else if(window.location.search === "?type=sales"){
    				$("#sales").prop("checked",true);
    				$("#manufacturing").prop("checked",false);
    			}
    			fnShowAll();
    		});
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
                    <div class="container-fluid px-4"> 
                        <h1 class="mt-4">데이터 분석</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active"><a href="/home/main.do">Data Analysis</a> / Main</li>
                        </ol>
                        <div class="row">
                        	<div class="tabs">
							    <input id="manufacturing" type="radio" name="tab_item">
							    <label class="tab_item" for="manufacturing">제조</label>
							    <input id="sales" type="radio" name="tab_item">
							    <label class="tab_item" for="sales">유통</label>
							    <input id="tab1" type="radio" name="tab_item">
							    <label class="tab_item" for="sales"></label>
							    <input id="tab2" type="radio" name="tab_item">
							    <label class="tab_item" for="sales"></label>
							    <input id="tab3" type="radio" name="tab_item">
							    <label class="tab_item" for="sales"></label>
							    <input id="tab4" type="radio" name="tab_item">
							    <label class="tab_item" for="sales"></label>
							    <div class="tab_content" id="manufacturing_content">
							    	<div class="row">
							    	<div class="align-items-center justify-content-between mb-4">
				                        <a href="#" onclick="fnShowAll();" class="d-none d-sm-inline-block btn btn-sm btn-blacck shadow-sm"><i class="fas fa-plus fa-sm text-white-50"></i></a>
				                        <a href="#" onclick="fnHideAll();" class="d-none d-sm-inline-block btn btn-sm btn-blacck shadow-sm"><i class="fas fa-minus fa-sm text-white-50"></i></a>
				                    </div>
							    	</div>
							        <%@ include file="/WEB-INF/views/main/body/manufacturingBody.jsp" %>
							    </div>
							    <div class="tab_content" id="sales_content">
							    	<div class="row">
							    	<div class="align-items-center justify-content-between mb-4">
				                        <a href="#" onclick="fnShowAll();" class="d-none d-sm-inline-block btn btn-sm btn-blacck shadow-sm"><i class="fas fa-plus fa-sm text-white-50"></i></a>
				                        <a href="#" onclick="fnHideAll();" class="d-none d-sm-inline-block btn btn-sm btn-blacck shadow-sm"><i class="fas fa-minus fa-sm text-white-50"></i></a>
				                    </div>
							    	</div>
							        <%@ include file="/WEB-INF/views/main/body/salesBody.jsp" %>
							    </div>
								<div class="row">
									
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
