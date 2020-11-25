<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>/client/user/user_history.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel='stylesheet' href='client/css/jica.css'/>
<script>
	$(function(){
		$("#buy_list > tbody > tr").click(function(){
			location.href = 'buy_detail.springshoppingmall'
		})
	})
</script>
</head>
<body>

<c:import url="/client/common/top_menu.jsp"/>

<div class='container' style='margin-top:100px;min-height:500px'>
	<h1>구매이력</h1>
	<div style='margin-top:20px'></div>
	
	<table class='table table-hover text-center mouse_hand' id='buy_list'>
		<thead>
			<tr>
				<th style='width:10%'>구매번호</th>
				<th class='text-left'>상품명</th>
				<th style='width:20%'>구매가격</th>
				<th style='width:20%'>구매날짜</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="i" begin="1" end="10">
			<tr>
				<td>${i }</td>
				<td class='text-left'>구매 상품 이름</td>
				<td>100,000원</td>
				<td>2018-10-10</td>
			</tr>			
			</c:forEach>
		</tbody>
	</table>
	
	<%-- pagination --%>
	<ul class='pagination justify-content-center' style='margin-top:50px'>
		<li class='page-item'>
			<a href='#' class='page-link'>이전</a>
		</li>
		<c:forEach var='i' begin='1' end='10'>
		<li class='page-item'>
			<a href='#' class='page-link'>${i }</a>
		</li>
		</c:forEach>
		<li class='page-item'>
			<a href='#' class='page-link'>다음</a>
		</li>
	</ul>
</div>

<c:import url="/client/common/bottom_info.jsp"/>

</body>
</html>







