<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="/static/css/main_style.css">
</head>
<body>
	<div id="wrap">
		<header>
			<jsp:include page="../include/gnb.jsp" />
		</header>

		<nav>
			<jsp:include page="../include/nav.jsp" />
		</nav>

		<div>
			<div class="d-flex justify-content-center">
				<div class="signUpBox mt-4">
					<div class="signUp text-center display-4 mt-4">회원가입</div>
				</div>
			</div>
			<form id="signUpForm" method="post" action="/user/sign_up_for_submit">
				<div class="d-flex justify-content-center mt-4">
					<div class="signUpInputBox mt-4">
						<h3>아이디</h3>
						<div class="d-flex">
							<input type="text" id="loginId" name="loginId"
								class="signUpInput form-control" placeholder="아이디를 입력하세요">
							<button type="button" id="overlapCheckId"
								class="btn form-control col-2 ml-3 text-white">중복확인</button>
						</div>

						<div class="ml-3 mb-3 mt-2">
							<div id="idCheckLength" class="small text-danger d-none">ID를
								4자 이상 입력해주세요.</div>

							<div id="idCheckDuplicated" class="small text-danger d-none">이미
								사용중인 ID입니다.</div>

							<div id="idCheckOk" class="small text-success d-none">사용
								가능한 ID 입니다.</div>

						</div>

						<h3 class="mt-4">비밀번호</h3>
						<input type="password" id="signUpPw" name="signUpPw"
							class="signUpInput form-control" placeholder="비밀번호를 입력하세요">

						<h3 class="mt-4">비밀번호 확인</h3>
						<input type="password" id="signUpCheckPw" name="signUpCheckPw"
							class="signUpInput form-control" placeholder="비밀번호를 다시 입력해주세요">

						<h3 class="mt-4">이름</h3>
						<input type="text" id="userName" name="userName"
							class="signUpInput form-control" placeholder="이름을 입력하세요">

						<h3 class="mt-4">이메일</h3>
						<input type="text" id="email" name="email"
							class="signUpInput form-control"> <select
							id="emailDomain" class="form-control mt-2">
							<option>@naver.com</option>
							<option>@nate.com</option>
							<option>@google.com</option>
							<option>@daum.net</option>
							<option>직접 입력</option>
						</select> <a href="/user/sign_in_view"><button type="submit"
								class="signupBtn form-control text-white mt-4">가입하기</button></a>
					</div>
				</div>
			</form>	
		</div>
		
	</div>
</body>

<script>
	$(document).ready(function() {
		$("#overlapCheckId").on("click", function(e) {

			var loginId = $('input[name=loginId]').val().trim();

			if (loginId.length < 4) {
				$("#idCheckLength").removeClass("d-none");
				$("#idCheckDuplicated").addClass("d-none");
				$("#idCheckOk").addClass("d-none");
				return;
			}

			$.ajax({
				url : "/user/is_duplicated_id",
				data : {
					"loginId" : loginId
				},
				success : function(data) {
					if (data.result == true) {
						$("#idCheckDuplicated").removeClass("d-none");
						$("#idCheckLength").addClass("d-none");
						$("#idCheckOk").addClass("d-none");
					} else {
						$("#idCheckOk").removeClass("d-none");
						$("#idCheckLength").addClass("d-none");
						$("#idCheckDuplicated").addClass("d-none");
					}
				},
				error : function(error) {
					alert("아이디 중복 확인에 실패했습니다.")
				}
			});
		});

		$("#signUpForm").submit(function(e){
			e.preventDefault();
			
			
			let loginId = $("#loginId").val().trim();
			if(loginId == ""){
				alert("아이디를 입력해주세요");
				return;
			}
			
			let password = $("#password").val();
			let signUpCheckPw = $("#signUpCheckPw").val();
			if(password == "" || signUpCheckPw==""){
				alert("비밀번호를 입력해주세요");
				return;
			}
			
			if(password != signUpCheckPw){
				alert("비밀번호가 일치하지 않습니다");
				$("#password").val();
				$("#signUpCheckPw").val();
				
			}
			
			let name = $("#name").val().trim();
			if (name = "") {
				alert("이름을 입력하세요");
				return;
			}
			
			let email = $("#email").val().trim();
			if (email = "") {
				alert("이메일을 입력하세요");
				return;
			}
			
			if ($("#idCheckOk").hasClass("d-none")) {
				alert("아이디 중복확인을 해주세요");
				return;
			}
			
			
			
			let url = '/user/sign_up_for_ajax';
			let data = $(this).serialize();
			
			$.post(url, data).done(function(data) {
				if (data.result == "success") {
					alert("회원가입을 환영합니다");
					location.href = "/user/sign_in_view";
				} else {
					alert("회원가입에 실패했습니다. 다시 시도해주세요");
				}
			});
			
		});

	});
</script>
</html>