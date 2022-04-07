<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
   <div class="sb-sidenav-menu">
       <div class="nav">
           <div class="sb-sidenav-menu-heading"></div> 
           <a class="nav-link" href="/home/board.do">
               <div class="sb-nav-link-icon"><i class="bi bi-collection"></i></div>
               대시보드
           </a>
           <div class="sb-sidenav-menu-heading">제품 구성</div>
           <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts1" aria-expanded="false" aria-controls="collapseLayouts1">
               <div class="sb-nav-link-icon"><i class="bi bi-nut"></i></div>
               제조
               <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
           </a>
           <div class="collapse" id="collapseLayouts1" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
               <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                   <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseBasicInfo" aria-expanded="false" aria-controls="pagesCollapseBasicInfo">
                   		기초정보 분석 패키지
                   		<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <div class="collapse" id="pagesCollapseBasicInfo" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                       <nav class="sb-sidenav-menu-nested nav">
                           <a class="nav-link" href="#" onclick="fnMoveManufacturing('기초정보 분석 모듈','M0000')">기초정보 분석 모듈</a>
                       </nav>
                   </div>
                   <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseStandardInfo" aria-expanded="false" aria-controls="pagesCollapseStandardInfo">
						기준정보 분석 패키지
						<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <div class="collapse" id="pagesCollapseStandardInfo" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                       <nav class="sb-sidenav-menu-nested nav">
                           <a class="nav-link" href="#">코드 표준 분석 모듈</a>
                           <a class="nav-link" href="#">공정 모델링 분석 모듈</a>
                           <a class="nav-link" href="#">시스템 운영 분석 모듈</a>
                           <a class="nav-link" href="#">계획 관리 분석 모듈</a>
                           <a class="nav-link" href="#">안전 재고 분석 모듈</a>
                       </nav>
                   </div>
                   <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseMaterial" aria-expanded="false" aria-controls="pagesCollapseMaterial">
	                   	자재 분석 패키지
	                   	<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <div class="collapse" id="pagesCollapseMaterial" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                       <nav class="sb-sidenav-menu-nested nav">
                           <a class="nav-link" href="#">입/출고 분석 모듈</a>
                           <a class="nav-link" href="#">계근/계량/계측 분석 모듈</a>
                           <a class="nav-link" href="#">수불 분석 모듈</a>
                           <a class="nav-link" href="#">첨가(제) 자재 분석 모듈</a>
                           <a class="nav-link" href="#">자재 반품 분석 모듈</a>
                       </nav>
                   </div>
                   <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseProcess" aria-expanded="false" aria-controls="pagesCollapseProcess">
	                   	공정 분석 패키지
	                   	<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <div class="collapse" id="pagesCollapseProcess" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                       <nav class="sb-sidenav-menu-nested nav">
                           <a class="nav-link" href="#" onclick="fnMoveManufacturing('작업 계획 분석 모듈','M0300')">작업 계획 분석 모듈</a>
                           <a class="nav-link" href="#" onclick="fnMoveManufacturing('효율성 분석 모듈','M0301')">효율성 분석 모듈</a>
                           <a class="nav-link" href="#" onclick="fnMoveManufacturing('생산성 분석 모듈','M0302')">생산성 분석 모듈</a>
                           <a class="nav-link" href="#" onclick="fnMoveManufacturing('공정 능력 분석 모듈','M0303')">공정 능력 분석 모듈</a>
                           <a class="nav-link" href="#">자재 투입 분석 모듈</a>
                           <a class="nav-link" href="#">공정 실적 분석 모듈</a>
                           <a class="nav-link" href="#">재작업 분석 모듈</a>
                           <a class="nav-link" href="#">공정 Aging 분석 모듈</a>
                           <a class="nav-link" href="#">자재 발란스 분석 모듈</a>
                           <a class="nav-link" href="#">생산 현황 분석 모듈</a>
                       </nav>
                   </div>
                   <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseFacilities" aria-expanded="false" aria-controls="pagesCollapseFacilities">
	                   	설비 분석 패키지
	                   	<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <div class="collapse" id="pagesCollapseFacilities" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                       <nav class="sb-sidenav-menu-nested nav">
                           <a class="nav-link" href="#">예지 보전 분석 모듈</a>
                           <a class="nav-link" href="#">설비 분석 모듈</a>
                           <a class="nav-link" href="#">핵심 설비 분석 모듈</a>
                           <a class="nav-link" href="#">설비 운영 분석 모듈</a>
                       </nav>
                   </div>
                   <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseQuality" aria-expanded="false" aria-controls="pagesCollapseQuality">
	                   	품질 분석 패키지
	                   	<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   	</a>
                   	<div class="collapse" id="pagesCollapseQuality" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                       <nav class="sb-sidenav-menu-nested nav">
                           <a class="nav-link" href="#">검사 기준 분석 모듈</a>
                           <a class="nav-link" href="#">수입 검사 분석 모듈</a>
                           <a class="nav-link" href="#">공정 검사 분석 모듈</a>
                           <a class="nav-link" href="#">불량 재처리 분석 모듈</a>
                           <a class="nav-link" href="#">출하 검사 분석 모듈</a>
                           <a class="nav-link" href="#">고객 요구 대응 분석 모듈</a>
                           <a class="nav-link" href="#">성능 분석 모듈</a>
                           <a class="nav-link" href="#">공정 제어 분석 모듈</a>
                           <a class="nav-link" href="#">Lot 추적 분석 모듈</a>
                       </nav>
                   </div>
                   <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseProduct" aria-expanded="false" aria-controls="pagesCollapseProduct">
	                   	제품 분석 패키지
	                   	<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <div class="collapse" id="pagesCollapseProduct" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                       <nav class="sb-sidenav-menu-nested nav">
                           <a class="nav-link" href="#">제품 입출고 분석 모듈</a>
                           <a class="nav-link" href="#">OTD 분석 모듈</a>
                           <a class="nav-link" href="#">제품 재고 분석 모듈</a>
                           <a class="nav-link" href="#">제품 반품 분석 모듈</a>
                           <a class="nav-link" href="#">LOCATION 분석 모듈</a>
                           <a class="nav-link" href="#">긴급 출하 분석 모듈</a>
                           <a class="nav-link" href="#">출하 성적서 분석 모듈</a>
                       </nav>
                   </div>
               </nav>
           </div>
           <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts2" aria-expanded="false" aria-controls="collapseLayouts2">
               <div class="sb-nav-link-icon"><i class="bi bi-cart4"></i></div>
               유통
               <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
           </a>
           <div class="collapse" id="collapseLayouts2" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
               <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages2">
                   <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseBasicAnalysis" aria-expanded="false" aria-controls="pagesCollapseBasicInfo">
                   		기초정보 분석 패키지
                   		<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <div class="collapse" id="pagesCollapseBasicAnalysis" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages2">
                       <nav class="sb-sidenav-menu-nested nav">
                           <a class="nav-link" href="#">기초 분석 모듈</a>
                       </nav>
                   </div>
                   <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseBasicInfo" aria-expanded="false" aria-controls="pagesCollapseBasicInfo">
                   		수요 분석 패키지
                   		<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <div class="collapse" id="pagesCollapseBasicInfo" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages2">
                       <nav class="sb-sidenav-menu-nested nav">
                           <a class="nav-link" href="#">머천다이징 분석 모듈</a>
                           <a class="nav-link" href="#">적정가격 분석 모듈</a>
                           <a class="nav-link" href="#">시장수요 및 규모 분석 모듈</a>
                           <a class="nav-link" href="#">고객 구매 분석 모듈</a>
                           <a class="nav-link" href="#">매출 분석 모듈</a>
                       </nav>
                   </div>
                   <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseStandardInfo" aria-expanded="false" aria-controls="pagesCollapseStandardInfo">
						재고 분석 패키지
						<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <div class="collapse" id="pagesCollapseStandardInfo" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages2">
                       <nav class="sb-sidenav-menu-nested nav">
                           <a class="nav-link" href="#">재고 관리 분석 모듈</a>
                           <a class="nav-link" href="#">상품 입출고 분석 모듈</a>
                           <a class="nav-link" href="#">재고 품질 분석 모듈</a>
                           <a class="nav-link" href="#">재고 관리 목표 산출 모듈</a>
                       </nav>
                   </div>
                   <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseMaterial" aria-expanded="false" aria-controls="pagesCollapseMaterial">
	                   	구매 및 물류 분석 패키지
	                   	<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <div class="collapse" id="pagesCollapseMaterial" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages2">
                       <nav class="sb-sidenav-menu-nested nav">
                           <a class="nav-link" href="#">구매관리 분석 모듈</a>
                           <a class="nav-link" href="#">주문비용 분석 모듈</a>
                           <a class="nav-link" href="#">구매 관리 목표 산출 모듈</a>
                           <a class="nav-link" href="#">납기관리 분석 모듈</a>
                           <a class="nav-link" href="#">상품배송 분석 모듈</a>
                           <a class="nav-link" href="#">유통경로 분석 모듈</a>
                       </nav>
                   </div>
                   <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseProcess" aria-expanded="false" aria-controls="pagesCollapseProcess">
	                   	상품 분석 패키지
	                   	<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <div class="collapse" id="pagesCollapseProcess" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages2">
                       <nav class="sb-sidenav-menu-nested nav">
                           <a class="nav-link" href="#">상품별 판매량 분석 모듈</a>
                           <a class="nav-link" href="#">품목별 수익성 분석 모듈</a>
                           <a class="nav-link" href="#">상품 속성별 분석 모듈</a>
                           <a class="nav-link" href="#">원가 분석 모듈</a>
                           <a class="nav-link" href="#">상품 품질 분석 모듈</a>
                           <a class="nav-link" href="#">경쟁 상품 분석 모듈</a>
                           <a class="nav-link" href="#">경쟁사 분석 모듈</a>
                       </nav>
                   </div>
                   <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseFacilities" aria-expanded="false" aria-controls="pagesCollapseFacilities">
	                   	고객 분석 패키지
	                   	<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   </a>
                   <div class="collapse" id="pagesCollapseFacilities" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages2">
                       <nav class="sb-sidenav-menu-nested nav">
                           <a class="nav-link" href="#">고객 세그먼트 분석 모듈</a>
                           <a class="nav-link" href="#">객단가 분석 모듈</a>
                           <a class="nav-link" href="#">고객 서비스 분석 모듈</a>
                           <a class="nav-link" href="#">E-CRM 분석 모듈</a>
                       </nav>
                   </div>
                   <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseQuality" aria-expanded="false" aria-controls="pagesCollapseQuality">
	                   	판매 분석 패키지
	                   	<div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                   	</a>
                   	<div class="collapse" id="pagesCollapseQuality" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages2">
                       <nav class="sb-sidenav-menu-nested nav">
                           <a class="nav-link" href="#">판촉비용 분석 모듈</a>
                           <a class="nav-link" href="#">광고 효율성 분석 모듈</a>
                           <a class="nav-link" href="#">광고 키워드 분석 모듈</a>
                           <a class="nav-link" href="#">구매패턴 분석 모듈</a>
                           <a class="nav-link" href="#">상품 상관성 분석 모듈</a>
                       </nav>
                   </div>
               </nav>
           </div>
           <div class="sb-sidenav-menu-heading">환경설정</div>
           <a class="nav-link" href="/management/viewUserMgt.do">
               <div class="sb-nav-link-icon"><i class="bi bi-person-lines-fill"></i></div>
               사용자관리
           </a>
           <!-- <a class="nav-link" href="#">
               <div class="sb-nav-link-icon"><i class="bi bi-file-person"></i></div>
               접속관리
           </a> -->
           <!-- <a class="nav-link" href="#">
               <div class="sb-nav-link-icon"><i class="bi bi-archive"></i></div>
               배포 및 회수관리
           </a> -->
           <a class="nav-link" href="/management/viewDataMgt.do">
               <div class="sb-nav-link-icon"><i class="bi bi-bar-chart-steps"></i></div>
               데이터 관리
           </a>
           <div class="sb-sidenav-menu-heading">소개자료</div>
           <a class="nav-link" href="/home/info.do">
               <div class="sb-nav-link-icon"><i class="bi bi-book-half"></i></div>
               EDGE - it
           </a>
           <a class="nav-link" href="#" onclick="window.open('http://www.safekorea.co.kr/')">
               <div class="sb-nav-link-icon"><i class="bi bi-house-door"></i></div>
               Home Page
           </a>
           <div class="sb-sidenav-menu-heading">기타</div>
           <a class="nav-link" href="/home/board.do">
               <div class="sb-nav-link-icon">T</div>
               TEST
           </a>
		</div>
             </div>
             <div class="sb-sidenav-footer">
                 <div class="small">Logged in as:</div>  
				ADMIN
             </div>
         </nav>