<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>/client/buy/buy_product_detail.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

<c:import url="/client/common/top_menu.jsp"/>

<div class='container' style='margin-top:100px;min-height:500px'>
	<div class='row'>
		<div class='col-md-2'></div>
		<div class='col-md-8'>
			<div class='row'>
				<div class='col-md-4'>
					<div class='card'>
						<div style='padding:5px'>
							<img class='card-img-top' src='client/image/nojapan.jpg' style='width:210px;height:210px'/>
						</div>
					</div>
				</div>
				<div class='col-md-8'>
					<div class='card' style='height:220px;padding:5px'>
						<div class='card-body'>
							<h1 class='card-title'>상품명</h1>
							<h3 class='card-text'>100,000원</h3>
							<h3 class='card-text'>3개</h3>
							<a href='buy_detail.springshoppingmall' class='btn btn-primary'>목록보기</a>
						</div>
					</div>
				</div>
			</div>
			
			<div style='margin-top:50px'>
				<img src='client/image/ott_top.jpg' width='100%'/>
			</div>
		</div>
		<div class='col-md-2'></div>
	</div>
	
	
</div>

<c:import url="/client/common/bottom_info.jsp"/>

</body>
</html>





