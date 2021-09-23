<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main page</title>
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
			  <div class="upBox d-flex justify-content-start">
				<div class="topPartBox mt-4 text-center d-flex">
				  <div>
				    <img src="https://img.okezone.com/content/2018/08/31/481/1944183/10-cara-agar-wanita-bisa-punya-perut-six-pack-seperti-jonatan-christie-WtsffoTabG.jpg"
						alt="복근운동 이미지" width="1050" height="500">
				  </div>				    
					
				  <div>
				    <div class="uppertext  mb-4 d-flex justify-content-center align-items-center text-white">복근 운동<br></div>
				  </div>		
				    		
	 					
				</div>
			  </div>
			 
			</div>
			<hr>

			 <div class="d-flex justify-content-center">
				<div class="productBox d-flex justify-content-between mt-4">
				   <div class="bottom-imageBox d-flex justify-content-between">
					<div class="product">
						<img src="http://static.fv-cdn.com/caz/1_koharu/thumb/ABS_04.jpg" alt="" width="450px" height="450px">
						<div class="font-weight-bold mt-4"><a href="" class="text-blue"><h3>듀얼 바퀴 복근운동기구</h3></a></div><br>
						<div class="text-danger"><h4>18,500원</h4></div>
					</div>

					<div class="product">
						<img src="https://image.g9.co.kr/g/1680486544/n?ts=1606805103000" alt="" width="450px" height="450px">
						<div class="font-weight-bold mt-4"><a href="" class="text-blue"><h3>복근운동 멀티싯업</h3></a></div><br>
						<div class="text-danger"><h4>138,000원</h4></div>
					</div>

					<div class="product">
						<img src="https://image.g9.co.kr/g/1575516738/n?ts=1552894623000" alt="" width="450px" height="450px">
						<div class="font-weight-bold mt-4"><a href="" class="text-blue"><h3>윗몸일으키기 복근운동</h3></a></div><br>
						<div class="text-danger"><h4>11,000원</h4></div>
					</div>
				   </div>
				</div>

			</div> 
		</div>
	</div>    
   </div>    
</body>
</html>