<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%-- /client/common/top_menu.jsp --%>
<nav class='navbar bg-light navbar-primary navbar-expand-md fixed-top'>
	<div class='container'>
		<%-- 로고 --%>
		<a href='main.springshoppingmall' class='navbar-brand'>할인하.GG</a>
		<%-- 모바일 메뉴 버튼 --%>
		<button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#navMenu'>
			<span class='navbar-toggler-icon'></span>
		</button>
		<%-- 메뉴 --%>
		<div class='collapse navbar-collapse' id='navMenu'>
			<%-- 좌측 --%>
			<ul class='navbar-nav'>
				<li class='nav-item'>
					<a href='board_main.springshoppingmall?board_category_idx=0' class='nav-link'>공지사항</a>
				</li>

			</ul>			
			<%-- 우측 --%>
			<ul class='navbar-nav ml-auto'>
				<li class='nav-item dropdown'>
					<a href='#' class='nav-link dropdown-toggle' data-toggle='dropdown'>QnA</a>
					<div class='dropdown-menu'>
						<a href='board_main.springshoppingmall?board_category_idx=4' class='dropdown-item'>FAQ</a>
						<a href='board_main.springshoppingmall?board_category_idx=5' class='dropdown-item'>상품문의</a>
						<a href='board_main.springshoppingmall?board_category_idx=6' class='dropdown-item'>기타문의</a>
					</div>
				</li>
				<li class='nav-item dropdown'>
					<a href='#' class='nav-link dropdown-toggle' data-toggle='dropdown'>게시판</a>
					<div class='dropdown-menu'>
						<a href='board_main.springshoppingmall?board_category_idx=1' class='dropdown-item'>자유게시판</a>
						<a href='board_main.springshoppingmall?board_category_idx=2' class='dropdown-item'>할인게시판</a>
						<a href='board_main.springshoppingmall?board_category_idx=3' class='dropdown-item'>정보게시판</a>
					</div>
				</li>
				

			</ul>
		</div>
	</div>
</nav>








