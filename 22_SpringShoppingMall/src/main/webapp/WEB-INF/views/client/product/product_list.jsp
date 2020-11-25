<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>/client/product/product_list.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="client/js/product.js"></script>
</head>
<body>

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
<%-- 상품 목록 --%>
<div class='container' style='margin-top:100px;min-height:500px'>
	<h1>${product_category_bean.product_category_name}</h1>
	<div class='row'>
		<c:forEach var="obj" items = "${requestScope.product_list}" >
			<div class='col-sm-3'>
				<div class='card product_card' style='margin-top:20px'>
					<div style='padding:5px'>
						<img class='card-img-top' src='${obj.product_image_file}' style='width:100%'/>
					</div>
					<div class='card-body'>
						<h4 class='card-title'>${obj.product_name}</h4>
						<p class='card-text'>${obj.product_price}</p>
						<a href='product_detail.springshoppingmall?product_idx=${obj.product_idx }&product_category_idx=${obj.product_category_idx }' class='btn btn-primary'>자세히보기</a>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>


<div class='container' style='margin-top:50px'>
   <ul class='pagination justify-content-center'>
      <c:if test="${page_bean.pagination_min > 1}">
   <a href="product_list.springshoppingmall?page_num=${page_bean.pagination_min - 1}&product_category_idx=${product_category_idx}"class ='page-link'>이전</a>
   </c:if>
   
   <c:forEach var="idx" begin="${page_bean.pagination_min }" end="${page_bean.pagination_max }">
      <a href="product_list.springshoppingmall?page_num=${idx}&product_category_idx=${product_category_idx}" class ='page-link'>${idx }</a>
   </c:forEach>
   
   <c:if test="${page_bean.pagination_max < page_bean.page_cnt}">
   <a href="product_list.springshoppingmall?page_num=${page_bean.pagination_max + 1}&product_category_idx=${product_category_idx}"class ='page-link'>다음</a>
   </c:if>
   
   </ul>
</div>
<c:import url="/client/common/bottom_info.jsp"/>

</body>
</html>






