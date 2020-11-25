<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>/client/main/main.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src='client/js/product.js'></script>
</head>
<body>
<%-- 최상단바  --%>
<c:import url="/client/common/top_menu.jsp"/>
<%-- 검색창  --%>
<div class="col-md-10 col-lg-8 col-xl-7 mx-auto" style='margin-top: 80px'>
	<form action = 'search_product.springshoppingmall'>
		<div class="form-row">
			<div class="col-12 col-md-9">
				<input id="search_product" name="search_product" type="text" class="form-control form-control-lg"
					placeholder="검색어를 입력해주세요" />
			</div>
			<div class="col-12 col-md-3">
				<button class="btn btn-primary btn-block btn-lg" type="submit">검색</button>
			</div>
		</div>
	</form>
</div>
<%-- 상단바  --%>
<div class='container'>
	<div class='d-flex justify-content-between btn-group btn-group-lg' style= 'margin-top: 30px'>
		<button type='button' class='btn btn-light'>카테고리</button>
		<button type='button' class='btn btn-light'>오늘만 특가</button>
		<button type='button' class='btn btn-light'>쇼핑몰별 할인</button>
		<button type='button' class='btn btn-light'>브랜드별 할인</button>
		<button type='button' class='btn btn-light'>GGI릿한 이벤트</button>
		<button type='button' class='btn btn-light'>시크릿  할인</button>
		<button type='button' class='btn btn-light'>해외 직구</button>
	</div>
</div>

<%-- 회전목마 --%>
<div class='container' style='margin-top:40px;min-height:350px;'>
	<%-- 좌측 버튼 부분 --%>	
		<div class='btn-group-vertical btn-group-lg' style ='display: inline-block ;width:19%; float:left; margin-right:20px;'>
	
			<button type='button' class='btn btn-light' onclick='location.href="product_list.springshoppingmall?product_category_idx=1"'>가전</button>
			<button type='button' class='btn btn-light' onclick='location.href="product_list.springshoppingmall?product_category_idx=2"'>식품</button>
			<button type='button' class='btn btn-light' onclick='location.href="product_list.springshoppingmall?product_category_idx=3"'>가구</button>
			<button type='button' class='btn btn-light' onclick='location.href="product_list.springshoppingmall?product_category_idx=4"'>자동차</button>
			<button type='button' class='btn btn-light' onclick='location.href="product_list.springshoppingmall?product_category_idx=5"'>스포츠</button>
			<button type='button' class='btn btn-light' onclick='location.href="product_list.springshoppingmall?product_category_idx=6"'>컴퓨터</button>
		</div>
	<div style ='display: inline-block ;width:50%; float:center;  margin-right:15px'>
		<div class='carousel slide' data-ride='carousel' data-interval='3000' id='banner'>
	
		<%-- 이미지 부분 --%>
		
			<div class='carousel-inner'>
				<div class='carousel-item active'>
					<a href="http://google.com">
						<img src='client/image/tb.jpg' style="width:100%"/>
					</a>
				</div>
				<div class='carousel-item'>
					<a href="http://google.com">
						<img src='client/image/sp.jpg' style="width:100%"/>
					</a>
				</div>
				<div class='carousel-item'>
					<a href="http://google.com">
						<img src='client/image/ny2.jpg' style="width:100%"/>
					</a>
				</div>
			</div>
			<%-- 인디케이터 부분 --%>
			<ul class='carousel-indicators'>
				<li data-target='#banner' data-slide-to='0' class='active'></li>
				<li data-target='#banner' data-slide-to='1'></li>
				<li data-target='#banner' data-slide-to='2'></li>
			</ul>
		</div>

	</div>
	<%-- 우측 --%>
	<div class='btn-group btn-group-lg' style ='display: inline-block ; float:right ; width:27%'>
		<c:choose>
			<c:when test="${sessionScope.login_bean.login == false }">
				<div class='btn-group-vertical btn-group-lg' style ='display: inline-block ; float:right; width:100%'>
					<a href='user_login.springshoppingmall' class='btn btn-light'>로그인</a>
					<a href='user_join.springshoppingmall' class='btn btn-light'>회원가입</a>
				</div>
				<div>
					<a href='user_login.springshoppingmall' class='btn btn-link'>로그인해서 더 많은 정보를 만나보세요</a>
				</div>
			</c:when>
			<c:otherwise>
				<div class='btn-group-vertical btn-group-lg' style ='display: inline-block ; float:right; width:100%'>
					<a href='user_info.springshoppingmall' class='btn btn-light'>내 정보</a>
					<a href='buy_cart.springshoppingmall' class='btn btn-light'>장바구니</a>
					<a href='buy_history.springshoppingmall' class='btn btn-light'>구매이력</a>
					<a href='logout.springshoppingmall' class='btn btn-light'>로그아웃</a>
				<div >
					<!-- 탭 버튼 -->
					<ul class='nav nav-tabs'>
						<li class='nav-item'>
							<a href='#tab1' class='nav-link active' data-toggle='tab'>
								daily 할인
							</a>
						</li>
						<li class='nav-item'>
							<a href='#tab2' class='nav-link' data-toggle='tab'>
								관심 태그
							</a>
						</li>
						<li class='nav-item'>
							<a href='#tab3' class='nav-link' data-toggle='tab'>
								내 쪽지
							</a>
						</li>
					</ul>
					<!-- 본문 -->
					<div class='tab-content'>
						<div class='tab-pane container active fade show' id='tab1'>
							
							<p>오늘 할인되는 품목은 뭐가 있을까</p>
						</div>
						<div class='tab-pane container fade' id='tab2'>
							<p>cpu가 1년도 안되서 뻑가냐</p>
						</div>
						<div class='tab-pane container fade' id='tab3'>
							<p>쿠폰이 도착했어요</p>
						</div>
					</div>
				</div>
				</div>
				
			</c:otherwise>
		</c:choose>
	
	</div>	
	
</div>

<%-- 상품 목록 부분 --%>

<%-- 상품 목록 --%>
<div class='container' style='margin-top:100px;min-height:500px'>
	<h1>오늘의 할인</h1>
	<div class='row'>
		
		
		<c:forEach var='list' items="${requestScope.product_list }">
			<c:forEach var='obj' items='${list }'>
				<div class='col-sm-3'>
					<div class='card product_card' style='margin-top:20px'>
						<div style='padding:5px'>
							<img class='card-img-top' src='${obj.product_image_file}' style='width:100%'/>
						</div>
						<div class='card-body'>
							<h4 class='card-title'>${obj.product_name}</h4>
							<p class='card-text'>${obj.product_price}</p>
							<a href='product_detail.springs hoppingmall?product_idx=${obj.product_idx }&product_category_idx=${obj.product_category_idx}' class='btn btn-primary'>자세히보기</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:forEach>
	</div>
</div>



<c:import url="/client/common/bottom_info.jsp"/>

</body>
</html>






