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
			
			<div class="d-flex justify-content-center mt-4">
			   <div class="signUpInputBox mt-4">
			       <h3>아이디</h3>
			       <input type="text" id="signUpId" class="signUpInput form-control" placeholder="아이디를 입력하세요">
			       
			       <h3 class="mt-4">비밀번호</h3>
			       <input type="password" id="signUpPw" class="signUpInput form-control" placeholder="비밀번호를 입력하세요">
			       
			       <h3 class="mt-4">비밀번호 확인</h3>
			       <input type="password" id="signUpCheckPw" class="signUpInput form-control" placeholder="비밀번호를 다시 입력해주세요">
			       
			       <h3 class="mt-4">이름</h3>
			       <input type="text" id="userName" class="signUpInput form-control" placeholder="이름을 입력하세요">
			       
			       <h3 class="mt-4">이메일</h3>
			       <input type="text" id="email" class="signUpInput form-control">
			       		       
			            <select id="emailDomain" class="form-control mt-2">
                            <option>@naver.com</option>
                            <option>@nate.com</option>
                            <option>@google.com</option>
                            <option>@daum.net</option>
                            <option>직접 입력</option>
                        </select>
                        
                   <a href="/user/sign_in_view"><button type="submit" class="signupBtn form-control text-white mt-4">
                   가입하기</button></a>
			   </div>
			</div>
			
			
			
			
		</div>

	</div>
</body>
</html>