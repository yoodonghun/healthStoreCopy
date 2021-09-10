<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
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
             <div class="loginBox mt-4">
                <div class="text-center display-3 mt-4">로그인</div>
             </div>
          </div>
          
         <form method="post" id="loginForm" action="/user/afterLogin_main_page_view"> 
          <div class="d-flex justify-content-center">
             <div class="inputBox mt-4">
                <div class="d-flex justify-content-center">
                   <input type="text" id="loginId" name="loginId" class="inputId  col-5" placeholder="ID">
                </div>
             </div>
          </div>
          
          <div class="d-flex justify-content-center">
             <div class="inputBox ">
                <div class="d-flex justify-content-center">
                   <input type="password" id="password" name="password" class="inputPw  col-5" placeholder="PW">
                </div>
             </div>
          </div>
          
          <div class="d-flex justify-content-center">
	          <div class="inputBox ">
	            <div class="d-flex justify-content-center">
	             
	             
	             <button type="submit" class="signInBtn btn-secondary form-control">로그인</button>                   
                </div>	                
	          </div>
          </div>  
          
          <hr align="center" style="border: solid 1px gray; width:21%">
          
          <div>
             <div class="d-flex justify-content-center">
	          <div class="inputBox mt-4">
	            <div class="d-flex justify-content-center">
	             
	             <a href="/user/sign_up_view" class="text-white">
	             <button type="submit" class="signUpBtn btn-secondary form-control">회원가입</button></a>                   
                </div>	                
	          </div>
          </div>  
          </div>
          </form> 
       </div>
     
   </div>
</body>

<script>
   $(document).ready(function(){
	  $("#loginForm").submit(function(){
		  e.preventDefault();
		  
		  let loginId = $("input[name=loginId]").val().trim();
		  if(loginId == ""){
			  alert("아이디를 입력해주세요");
			  return;
		  }
		  
		  let password = $("input[name=password]").val();
		  if(password == ""){
			  alert("비밀번호를 입력해주세요");
		  }
		  
		  let url = $(this).attr("action");
		  let params = $(this).serialize();
		  
		  $.post(url, params).done(function(data)){
			  
			  if(data.result == "success"){
				  
				  location.href = "/user/afterLogin_main_page_view"
			  }else{
				  alert("로그인에 실패했습니다. 다시 입력해주세요")
			  }
		  }
	  }); 	
	  
	   	
	   	
   });
</script>
</html>