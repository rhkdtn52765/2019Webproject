<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>/client/buy/buy_cart.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script>
	$(function(){
		$(".cart_bottom_button").hide()
	})
	
	function move_bottom(idx){
		// 현재 tr 태그를 하단 테이블에 추가한다.
		var tr_tag = $("#cart_top_" + idx)
		
		// 하단 테이블에 tr 태그 객체를 추가한다.
		$("#cart-bottom-table > tbody").append(tr_tag)
		
		tr_tag.find('.cart_bottom_button').show()
		tr_tag.find('.cart_top_button').hide()
	}
	
	function move_top(idx){
		// 현재 tr 태그를 상단 테이블에 추가한다.
		var tr_tag = $("#cart_top_" + idx)
		
		// 상단 테이블에 tr 태그 객체를 추가한다.
		$("#cart_top_table > tbody").append(tr_tag)
		
		tr_tag.find('.cart_bottom_button').hide()
		tr_tag.find('.cart_top_button').show()
	}
	
	function remove_product(idx){
		$("#cart_top_" + idx).remove()
	}
	
	function remove_all(){
		$("#cart_top_table > tbody").empty()
	}
	
	function move_bottom_all(){
		$("#cart_top_table > tbody > tr").each(function(){
			
			$(this).find('.cart_bottom_button').show()
			$(this).find('.cart_top_button').hide()
			
			$("#cart-bottom-table > tbody").append($(this))
		})
	}
	
	function move_top_all(){
		$("#cart-bottom-table > tbody > tr").each(function(){
			
			$(this).find('.cart_bottom_button').hide()
			$(this).find('.cart_top_button').show()
			
			$("#cart_top_table > tbody").append($(this))
		})
	}
</script>
</head>
<body>

<c:import url="/client/common/top_menu.jsp"/>

<%-- 장바구니 리스트 부분 --%>
<div class='container' style='margin-top:100px;min-height:500px'>
	<h1>장바구니</h1>
	<div style='margin-top:20px'></div>
	
	<table class='table text-center' id='cart_top_table'>
		<thead>
			<tr>
				<th style='width:10%'>번호</th>
				<th class='text-left'>상품명</th>
				<th style='width:20%'>날짜</th>
				<th style='width:20%'></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var='i' begin='1' end='10'>
			<tr id='cart_top_${i}'>
				<td>${i }</td>
				<td class='text-left'>상품1</td>
				<td>2018-10-10</td>
				<td>
					<div class='cart_top_button'>
						<button type='button' class='btn btn-primary' onclick='move_bottom(${i})'>구매</button>
						<button type='button' class='btn btn-danger' onclick='remove_product(${i})'>삭제</button>
					</div>
					<div class='cart_bottom_button'>
						<button type='button' class='btn btn-danger' onclick='move_top(${i})'>삭제</button>
					</div>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<div style='margin-top:100px'></div>
	
	
	<h3>구매 대기</h3>
	<table class='table text-center' id='cart-bottom-table'>
		<thead>
			<tr>
				<th style='width:10%'>번호</th>
				<th class='text-left'>상품명</th>
				<th style='width:20%'>날짜</th>
				<th style='width:20%'></th>
			</tr>
		</thead>
		<tbody></tbody>
	</table>
	
	<div class='text-right' style='margin-top:100px'>
		<a href='product_buy.springshoppingmall' class='btn btn-primary'>구매하기</a>
		<button type='button' class='btn btn-info' onclick='move_bottom_all()'>전체 선택</button>
		<button type='button' class='btn btn-danger' onclick='move_top_all()'>전체 선택 해제</button>
		<button type='button' class='btn btn-warning' onclick='remove_all()'>장바구니 비우기</button>
	</div>
</div>

<c:import url="/client/common/bottom_info.jsp"/>

</body>
</html>






