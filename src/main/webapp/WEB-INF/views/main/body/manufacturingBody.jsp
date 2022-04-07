<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row" id="manufacturing">
	<div class="col-xl-2-1 col-md-6">
	    <div class="card bg-blacck mb-4">
	        <div class="card-body package-h-text1 btn-blacck" id="manufacturing_a_1">기초정보 분석 패키지</div>
	        <div class="card-footer adivgn-items-center justify-content-between">
	         	<div class="btn-whitee module-box1" id="manufacturing_b_1" onclick="fnMoveManufacturing('기초정보 분석 모듈','M0000');">
	         		<div class="module-h-text1">기초정보 분석 모듈</div>
	         		<div class="module-b-text1">기초정보 분석</div>
	         	</div>
	         	<div class="btn-whitee-dis module-box1" id="manufacturing_b_1">
	         		<div class="module-h-text1">상세정보 분석 모듈</div>
	         		<div class="module-b-text1">상세정보 분석</div>
	         	</div>
	        </div>
	    </div>
	</div>
	<div class="col-xl-2-1 col-md-6">
       <div class="card bg-blacck mb-4">
           <div class="card-body package-h-text1 btn-blacck" id="manufacturing_a_2">기준정보 분석 패키지</div>
           <div class="card-footer adivgn-items-center justify-content-between">
           	<div class="btn-whitee-dis module-box1" id="manufacturing_b_2">
          			<div class="module-h-text1">코드 표준 분석 모듈</div>
          			<div class="module-b-text1">코드 표준 분석</div> 
           	</div>
           	<div class="btn-whitee-dis module-box1" id="manufacturing_b_2">
          			<div class="module-h-text1">공정 모델링 분석 모듈</div>
           			<div class="module-b-text1">라우팅, 작업지시 등 표준 분석</div> 
           	</div>
           	<div class="btn-whitee-dis module-box1" id="manufacturing_b_2">
          			<div class="module-h-text1">시스템 운영 분석 모듈</div>
           			<div class="module-b-text1">운영환경, 시스템 위험 감지 등</div>
           	</div>
           	<div class="btn-whitee-dis module-box1" id="manufacturing_b_2">
           		<div class="module-h-text1">계획 관리 분석 모듈</div>
           			<div class="module-b-text1">수요, 공급, MRP 정보 등</div>
           	</div>
           	<div class="btn-whitee-dis module-box1" id="manufacturing_b_2">
          			<div class="module-h-text1">안전 재고 분석 모듈</div>
           			<div class="module-b-text1">적정 재고 수준 산출 등</div>
           	</div>
           </div>
       </div> 
   </div>
   <div class="col-xl-2-1 col-md-6">
       <div class="card bg-blacck mb-4"> 
           <div class="card-body package-h-text1 btn-blacck" id="manufacturing_a_3">자재 분석 패키지</div>
           <div class="card-footer adivgn-items-center justify-content-between">
          	<div class="btn-whitee-dis module-box1" id="manufacturing_b_3">
          			<div class="module-h-text1">입/출고 분석 모듈</div>
           			<div class="module-b-text1">원부자재 구매 프로세스 등</div>
           	</div>
           	<div class="btn-whitee-dis module-box1" id="manufacturing_b_3">
          			<div class="module-h-text1">계근/계량/계측 분석 모듈</div>
           			<div class="module-b-text1">수치 해석 등</div>
           	</div>
           	<div class="btn-whitee-dis module-box1" id="manufacturing_b_3">
          			<div class="module-h-text1">수불 분석 모듈</div>
           			<div class="module-b-text1">마감 프로세스 등</div>
           	</div>
           	<div class="btn-whitee-dis module-box1" id="manufacturing_b_3">
          			<div class="module-h-text1">첨가(제) 자재 분석 모듈</div>
           			<div class="module-b-text1">첨가재 투입 실적 등</div>
           	</div>
           	<div class="btn-whitee-dis module-box1" id="manufacturing_b_3">
          			<div class="module-h-text1">자재 반품 분석 모듈</div>
           			<div class="module-b-text1">반품 프로세스 등</div>
           	</div>
           </div>
       </div> 
   </div>
   <div class="col-xl-2-1 col-md-6">
       <div class="card bg-blacck mb-4">
           <div class="card-body package-h-text1 btn-blacck" id="manufacturing_a_4">공정 분석 패키지</div>
           <div class="card-footer adivgn-items-center justify-content-between">
           		<div class="btn-whitee module-box1" id="manufacturing_b_4" onclick="fnMoveManufacturing('작업 계획 분석 모듈','M0300');">
           			<div class="module-h-text1">작업 계획 분석 모듈</div>
            			<div class="module-b-text1">생산 계획, 반제품 단위 등</div>
            	</div>
            	<div class="btn-whitee module-box1" id="manufacturing_b_4" onclick="fnMoveManufacturing('효율성 분석 모듈','M0301');">
           			<div class="module-h-text1">효율성 분석 모듈</div>
           			<div class="module-b-text1">효율성 분석</div>
            	</div>
            	<div class="btn-whitee module-box1" id="manufacturing_b_4" onclick="fnMoveManufacturing('생산성 분석 모듈','M0302');">
           			<div class="module-h-text1">생산성 분석 모듈</div>
           			<div class="module-b-text1">생산성 분석</div>
            	</div>
            	<div class="btn-whitee module-box1" id="manufacturing_b_4" onclick="fnMoveManufacturing('공정 능력 분석 모듈','M0303');">
           			<div class="module-h-text1">공정 능력 분석 모듈</div>
           			<div class="module-b-text1">공정 능력 분석</div>
            	</div>
            	<div class="btn-whitee module-box1" id="manufacturing_b_4" onclick="fnMoveManufacturing('이상치 분석 모듈','M0304');">
           			<div class="module-h-text1">이상치 분석 모듈</div>
           			<div class="module-b-text1">이상치 분석</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_4">
           			<div class="module-h-text1">자재 투입 분석 모듈</div>
            			<div class="module-b-text1">원자재, 부산물 투입 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_4">
           			<div class="module-h-text1">공정 실적 분석 모듈</div>
            			<div class="module-b-text1">공정 단위, 실적, Lot, 설비 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_4">
           			<div class="module-h-text1">재작업 분석 모듈</div>
            			<div class="module-b-text1">재작업 계획, 실적 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_4">
           			<div class="module-h-text1">공정 Aging 분석 모듈</div>
            			<div class="module-b-text1">기준, 시작 및 종료 시점 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_4">
           			<div class="module-h-text1">자재 발란스 분석 모듈</div>
            			<div class="module-b-text1">원장, 재고, 물류 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_4">
           			<div class="module-h-text1">생산 현황 분석 모듈</div>
            			<div class="module-b-text1">작업자, 기반, 모니터링 정보 등</div>
            	</div>
            </div>
        </div> 
    </div>
    <div class="col-xl-2-1 col-md-6">
        <div class="card bg-blacck mb-4">
            <div class="card-body package-h-text1 btn-blacck" id="manufacturing_a_5">설비 분석 패키지</div>
            <div class="card-footer adivgn-items-center justify-content-between">
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_5">
           			<div class="module-h-text1">예지 보전 분석 모듈</div>
            			<div class="module-b-text1">설비 점검, 보전 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_5">
           			<div class="module-h-text1">설비 분석 모듈</div>
            			<div class="module-b-text1">사용량, 교체 주기 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_5">
           			<div class="module-h-text1">핵심 설비 분석 모듈</div>
            			<div class="module-b-text1">고비용 설비 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_5">
           			<div class="module-h-text1">설비 운영 분석 모듈</div>
            			<div class="module-b-text1">설비 별 모니터링 정보 등</div>
            	</div>
            </div>
        </div> 
    </div>
    <div class="col-xl-2-1 col-md-6">
        <div class="card bg-blacck mb-4">
            <div class="card-body package-h-text1 btn-blacck" id="manufacturing_a_6">품질 분석 패키지</div>
            <div class="card-footer adivgn-items-center justify-content-between">
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_6">
           			<div class="module-h-text1">검사 기준 분석 모듈</div>
            			<div class="module-b-text1">검사, 불량, 검사 기준 항목 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_6">
           			<div class="module-h-text1">수입 검사 분석 모듈</div>
            			<div class="module-b-text1">자재 입고검사 프로세스 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_6">
           			<div class="module-h-text1">공정 검사 분석 모듈</div>
            			<div class="module-b-text1">공정 및 설비 검사 기록 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_6">
           			<div class="module-h-text1">불량 재처리 분석 모듈</div>
            			<div class="module-b-text1">불량 처리 프로세스 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_6">
           			<div class="module-h-text1">출하 검사 분석 모듈</div>
            			<div class="module-b-text1">제품 최종 검사, spec 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_6">
           			<div class="module-h-text1">고객 요구 대응 분석 모듈</div>
            			<div class="module-b-text1">제품 별 고객 요구 대응 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_6">
           			<div class="module-h-text1">성능 분석 모듈</div>
            			<div class="module-b-text1">샘픔/완제품 성능 점검 기록 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_6">
           			<div class="module-h-text1">공정 제어 분석 모듈</div>
            			<div class="module-b-text1">품질 기준에 따른 설비 제어 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_6">
           			<div class="module-h-text1">Lot 추적 분석 모듈</div>
            			<div class="module-b-text1">정방, 역방향 품질 등</div>
            	</div>
            </div>
        </div> 
    </div>
    <div class="col-xl-2-1 col-md-6">
        <div class="card bg-blacck mb-4">
            <div class="card-body package-h-text1 btn-blacck" id="manufacturing_a_7">제품 분석 패키지</div>
            <div class="card-footer adivgn-items-center justify-content-between">
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_7">
           			<div class="module-h-text1">제품 입출고 분석 모듈</div>
            			<div class="module-b-text1">제품 입출고 내역, 바코드 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_7">
           			<div class="module-h-text1">OTD 분석 모듈</div>
            			<div class="module-b-text1">납기 준수, 적시 적송 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_7">
           			<div class="module-h-text1">제품 재고 분석 모듈</div>
            			<div class="module-b-text1">창고, 악성, 폐기 대상 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_7">
           			<div class="module-h-text1">제품 반품 분석 모듈</div>
            			<div class="module-b-text1">반품 프로세스 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_7">
           			<div class="module-h-text1">LOCATION 분석 모듈</div>
            			<div class="module-b-text1">적재, 선반, 위치 정보 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_7">
           			<div class="module-h-text1">긴급 출하 분석 모듈</div>
            			<div class="module-b-text1">샘플 및 고객 요구 등</div>
            	</div>
            	<div class="btn-whitee-dis module-box1" id="manufacturing_b_7">
           			<div class="module-h-text1">출하 성적서 분석 모듈</div>
            			<div class="module-b-text1">고객사 출하 성적서 정보 등</div>
            	</div>
            </div>
        </div> 
    </div>
</div><!-- manufacturing end -->