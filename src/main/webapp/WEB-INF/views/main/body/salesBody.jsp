<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row" id="sales">
	<div class="col-xl-2-1 col-md-6">
       <div class="card bg-blacck mb-4">
           <div class="card-body package-h-text1 btn-blacck" id="sales_a_0">기초정보 분석 패키지</div>
           <div class="card-footer adivgn-items-center justify-content-between">
           	<div class="btn-whitee module-box1" id="sales_b_0" onclick="fnMoveSales('기초 분석 모듈','S0000');">
          		<div class="module-h-text1">기초 분석 모듈</div>
          		<div class="module-b-text1">기초정보 분석</div>
           	</div>
           </div>
       </div> 
   </div>
	<div class="col-xl-2-1 col-md-6">
       <div class="card bg-blacck mb-4">
           <div class="card-body package-h-text1 btn-blacck" id="sales_a_1">수요 분석 패키지</div>
           <div class="card-footer adivgn-items-center justify-content-between">
           	<div class="btn-whitee module-box1" id="sales_b_1" onclick="fnMoveSales('머천다이징 분석 모듈','S0100');">
          		<div class="module-h-text1">머천다이징 분석 모듈</div>
           			<div class="module-b-text1">판매 장소, 시간, 수량 등 계획</div>
           	</div>
           	<div class="btn-whitee-dis module-box1" id="sales_b_1">
          		<div class="module-h-text1">적정가격 분석 모듈</div>
           			<div class="module-b-text1">목표가격, 패키지 가격 등 계산</div> 
           	</div>
           	<div class="btn-whitee-dis module-box1" id="sales_b_1">
          		<div class="module-h-text1">시장수요 및 규모 분석 모듈</div>
           			<div class="module-b-text1">예상 시장규모, 점유율 등</div>
           	</div>
           	<div class="btn-whitee-dis module-box1" id="sales_b_1">
           		<div class="module-h-text1">고객 구매 분석 모듈</div>
           			<div class="module-b-text1">고객별 수요예측 등</div>
           	</div>
           	<div class="btn-whitee-dis module-box1" id="sales_b_1">
<!--            	<div class="btn-whitee module-box1" id="sales_b_1" onclick="fnMoveSales('매출 분석 모듈','S0104');"> -->
          		<div class="module-h-text1">매출 분석 모듈</div>
           			<div class="module-b-text1">품목별 수요예측 등</div>
           	</div>
           </div>
       </div> 
   </div>
   <div class="col-xl-2-1 col-md-6">
       <div class="card bg-blacck mb-4"> 
           <div class="card-body package-h-text1 btn-blacck" id="sales_a_2">재고 분석 패키지</div>
           <div class="card-footer adivgn-items-center justify-content-between">
          	<div class="btn-whitee-dis module-box1" id="sales_b_2">
          		<div class="module-h-text1">재고 관리 분석 모듈</div>
           			<div class="module-b-text1">재고회전율, 재고비용 등</div>
           	</div>
           	<div class="btn-whitee-dis module-box1" id="sales_b_2">
          			<div class="module-h-text1">상품 입출고 분석 모듈</div>
           			<div class="module-b-text1">재고정확도, 반입률 등 산출</div>
           	</div>
           	<div class="btn-whitee-dis module-box1" id="sales_b_2">
          			<div class="module-h-text1">재고 품질 분석 모듈</div>
           			<div class="module-b-text1">불량률, 결점비율 등 산출</div>
           	</div>
           	<div class="btn-whitee-dis module-box1" id="sales_b_2">
          			<div class="module-h-text1">재고 관리 목표 산출 모듈</div>
           			<div class="module-b-text1">목표/안전재고 수량 산출</div>
           	</div>
           </div>
       </div> 
   </div>
   <div class="col-xl-2-1 col-md-6">
       <div class="card bg-blacck mb-4">
           <div class="card-body package-h-text1 btn-blacck" id="sales_a_3">구매 및 물류 분석 패키지</div>
           <div class="card-footer adivgn-items-center justify-content-between">
           	<div class="btn-whitee-dis module-box1" id="sales_b_3">
           		<div class="module-h-text1">구매관리 분석 모듈</div>
            			<div class="module-b-text1">거래처별 구매량, 비용 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="sales_b_3">
           			<div class="module-h-text1">주문비용 분석 모듈</div>
            			<div class="module-b-text1">주문관리비, 주문비용율 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="sales_b_3">
           			<div class="module-h-text1">구매 관리 목표 산출 모듈</div>
            			<div class="module-b-text1">목표 발주량, 발주시점 산출</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="sales_b_3">
           			<div class="module-h-text1">납기관리 분석 모듈</div>
            			<div class="module-b-text1">리드타임, 납기준수율 등 산출</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="sales_b_3">
           			<div class="module-h-text1">상품배송 분석 모듈</div>
            			<div class="module-b-text1">배달 리드타임, 배송비 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="sales_b_3">
           			<div class="module-h-text1">유통경로 분석 모듈</div>
            			<div class="module-b-text1">유통 노드간 배송시간, 비용 등</div>
            	</div>
            </div>
        </div> 
    </div>
    <div class="col-xl-2-1 col-md-6">
        <div class="card bg-blacck mb-4">
            <div class="card-body package-h-text1 btn-blacck" id="sales_a_4">상품 분석 패키지</div>
            <div class="card-footer adivgn-items-center justify-content-between">
            	<div class="btn-whitee-dis module-box1" id="sales_b_4">
<!--             	<div class="btn-whitee module-box1" id="sales_b_4" onclick="fnMoveSales('상품별 판매량 분석 모듈','S0400');"> -->
           			<div class="module-h-text1">상품별 판매량 분석 모듈</div>
            			<div class="module-b-text1">월별, 계절별, 시간대 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="sales_b_4">
           			<div class="module-h-text1">품목별 수익성 분석 모듈</div>
            			<div class="module-b-text1">상품 단위당 총 비용, 이익 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="sales_b_4">
           			<div class="module-h-text1">상품 속성별 분석 모듈</div>
            			<div class="module-b-text1">색상, 기능 등 속성별 분석</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="sales_b_4">
           			<div class="module-h-text1">원가 분석 모듈</div>
            			<div class="module-b-text1">상품별 구매, 유통 원가 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="sales_b_4">
           			<div class="module-h-text1">상품 품질 분석 모듈</div>
            			<div class="module-b-text1">반품, 교환비율 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="sales_b_4">
           			<div class="module-h-text1">경쟁 상품 분석 모듈</div>
            			<div class="module-b-text1">동일카테고리 상품의 판매량 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="sales_b_4">
           			<div class="module-h-text1">경쟁사 분석 모듈</div>
            			<div class="module-b-text1">유사업종, 보완 업종 분석 등</div>
            	</div>
            </div>
        </div> 
    </div>
    <div class="col-xl-2-1 col-md-6">
        <div class="card bg-blacck mb-4">
            <div class="card-body package-h-text1 btn-blacck" id="sales_a_5">고객 분석 패키지</div>
            <div class="card-footer adivgn-items-center justify-content-between">
            	<div class="btn-whitee-dis module-box1" id="sales_b_5">
<!--             	<div class="btn-whitee module-box1" id="sales_b_5" onclick="fnMoveSales('고객 세그먼트 분석 모듈','S0500');"> -->
           			<div class="module-h-text1">고객 세그먼트 분석 모듈</div>
            			<div class="module-b-text1">고객 군집 분석 및 특성 파악</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="sales_b_5">
           			<div class="module-h-text1">객단가 분석 모듈</div>
            			<div class="module-b-text1">고객당 순이익, 판촉비 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="sales_b_5">
           			<div class="module-h-text1">고객 서비스 분석 모듈</div>
            			<div class="module-b-text1">CS, 리뷰 분석 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="sales_b_5">
           			<div class="module-h-text1">E-CRM 분석 모듈</div>
            			<div class="module-b-text1">CRM 실행 현황 및 성과 분석</div>
            	</div>
            </div>
        </div> 
    </div>
    <div class="col-xl-2-1 col-md-6">
        <div class="card bg-blacck mb-4">
            <div class="card-body package-h-text1 btn-blacck" id="sales_a_6">판매 분석 패키지</div>
            <div class="card-footer adivgn-items-center justify-content-between">
            	<div class="btn-whitee-dis module-box1" id="sales_b_6">
           			<div class="module-h-text1">판촉비용 분석 모듈</div>
            			<div class="module-b-text1">유형별 판촉비용 및 성과 분석</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="sales_b_6">
           			<div class="module-h-text1">광고 효율성 분석 모듈</div>
            			<div class="module-b-text1">광고유입량, 비용, 구매전환율 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="sales_b_6">
           			<div class="module-h-text1">광고 키워드 분석 모듈</div>
            			<div class="module-b-text1">매체별, 키워드 효과성 분석</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="sales_b_6">
           			<div class="module-h-text1">구매패턴 분석 모듈</div>
            			<div class="module-b-text1">상품별 주 구매 고객 속성 분석</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="sales_b_6">
           			<div class="module-h-text1">상품 상관성 분석 모듈</div>
            			<div class="module-b-text1">장바구니 분석, 패키지 상품 등</div>
            	</div>
            </div>
        </div> 
    </div>
</div><!-- sales end -->