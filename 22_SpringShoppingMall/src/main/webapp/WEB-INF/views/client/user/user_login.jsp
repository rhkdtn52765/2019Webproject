<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>/client/user/user_login.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src='client/js/regex.js'></script>
<script>
	function check_input(){
		var user_id = $("#user_id").val()
		var user_pw = $("#user_pw").val()
		
		if(userid_regex.test(user_id) == false){
			alert('아이디가 잘못되었습니다(영문,숫자,4~20글자)')
			$("#user_id").val('')
			$("#user_id").focus()
			return false
		}
		
		if(userpw_regex.test(user_pw) == false){
			alert('비밀번호가 잘못되었습니다(영문,숫자,4~20글자)')
			$("#user_pw").val('')
			$("#user_pw").focus()
			return false
		}
		
		var param = {
				user_id : user_id,
				user_pw : user_pw
		}
		
		$.ajax({
			url : 'user_login_pro.springshoppingmall',
			type : 'post',
			data : param,
			dataType : 'text',
			success : function(result){
				if(result.trim() == 'YES'){
					alert('로그인 되었습니다')
					location.href = 'main.springshoppingmall'
				} else {
					alert('로그인에 철희때문에 실패했습니다.')
					$("#user_id").val('');
					$("#user_pw").val('');
					$("#user_id").focus();
				}
			}
			
		})
		
		return false
	}
</script>
</head>
<body>

<c:import url="/client/common/top_menu.jsp"/>

<%-- 로그인 부분 --%>
<div class='container' style='margin-top:100px;min-height:500px'>
	<div class='row'>
	<div class='col-md-3'></div>
	<div class='col-md-6'>
		<h1>로그인</h1>
		<div style="margin-top:20px"></div>
		<div class='card'>
			<div class='card-body'>
				<form onsubmit='return check_input()'>
					<div class='form-group'>
						<label for='user_id'>아이디</label>
						<input type='text' id='user_id' class='form-control'/>
					</div>
					<div class='form-group'>
						<label for='user_pw'>비밀번호</label>
						<input type='password' id='user_pw' class='form-control'/>
					</div>
					<div class='form-group'>
						<div class='text-right'>
							<button type='submit' class='btn btn-primary'>로그인</button>
							<a href='user_join.springshoppingmall' class='btn btn-info'>회원가입</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class='col-md-3'></div>
	</div>
</div>

<c:import url="/client/common/bottom_info.jsp"/>

</body>
</html>









