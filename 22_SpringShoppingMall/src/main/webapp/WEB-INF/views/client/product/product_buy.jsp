<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>/client/product/product_buy.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="client/js/daum_address.js"></script>
<script>
	function setUserInfo(){
		$("#buy_name").val('홍길동')
		$("#sample2_postcode").val('11111')
		$("#sample2_address").val('주소1')
		$("#sample2_detailAddress").val('주소2')
		$("#sample2_extraAddress").val('참조주소')
		$("#buy_phone1").val('017')
		$("#buy_phone2").val('1111')
		$("#buy_phone3").val('2222')
		
	}
</script>
</head>
<body>

<c:import url="/client/common/top_menu.jsp"/>

<%-- 다음 주소 검색 --%>
<div id="daum_address" style="display:none;position:fixed;overflow:hidden;z-index:100;-webkit-overflow-scrolling:touch;">
<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>

<%-- 구매 물품 리스트 --%>
<div class='container' style='margin-top:100px;min-height:500px'>
	<h1>구매 리스트</h1>
	<div style='margin-top:20px'></div>
	<table class='table table-hover text-center'>
		<thead>
			<tr>
				<th style='width:10%'>구매번호</th>
				<th class='text-left'>상품명</th>
				<th style='width:20%'>구매단가</th>
				<th style='width:10%'>구매개수</th>
				<th style='width:10%'>총금액</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var='i' begin='1' end='10'>
			<tr>
				<td>${i }</td>
				<td class='text-left'>구매상품</td>
				<td>100,000원</td>
				<td>5</td>
				<td>500,000원</td> 
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

<%-- 구매 정보 입력 --%>
<div class='container' style='margin-top:50px'>
	<h3>구매자 정보</h3>
	<div style='margin-top:20px'></div>
	<div class='row'>
		<div class='col-md-6'>
			<div class='form-group'>
				<label for='buy_name'>구매자 이름</label>
				<input type='text' id='buy_name' class='form-control'/>
			</div>
			<div class='form-group'>
				<label for='buy_postal'>우편번호</label>
				<div class='input-group'>
					<input type='text' id='sample2_postcode' class='form-control' readonly="readonly"/>
					<div class='input-group-append'>
						<button type='button' class='btn btn-primary' onclick='sample2_execDaumPostcode()'>우편번호 찾기</button>
					</div> 
				</div>
			</div>
			<div class='form-group'>
				<input type='text' id='sample2_address' class='form-control' readonly="readonly"/>
			</div>
			<div class='form-group'>
				<input type='text' id='sample2_detailAddress' class='form-control'/>
			</div>
			<div class='form-group'>
				<input type='text' id='sample2_extraAddress' class='form-control'/>
			</div>
			<div class='form-group'>
				<label for='buy_phone1'>연락처</label>
				<div class='row'>
					<div class='col-md-4'>
						<select id='buy_phone1' class='form-control'>
							<option value='010'>010</option>
							<option value='011'>011</option>
							<option value='017'>017</option>
							<option value='018'>018</option>
							<option value='019'>019</option>
						</select>
					</div>
					<div class='col-md-4'>
						<input type='text' id='buy_phone2' class='form-control' maxlength='4'/>
					</div>
					<div class='col-md-4'>
						<input type='text' id='buy_phone3' class='form-control' maxlength='4'/>
					</div>
				</div>
			</div>
			<div class='form-group text-right'>
				<button type='button' class='btn btn-primary' onclick='setUserInfo()'>회원정보와 동일</button>
			</div>
		</div>
		<div class='col-md-6'>
			<div class='display-3'>총 결제 금액</div>
			<div class='display-3'>5,000,000원</div>
			<h3 class='text-danger'>결제시 환불 없음. 죽어도 없음</h3>
			<a href='buy_history.springshoppingmall' class='btn btn-primary' style='width:100%'>구매</a>
		</div>
	</div>
</div>

<c:import url="/client/common/bottom_info.jsp"/>

</body>
</html>





