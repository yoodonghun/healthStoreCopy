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
				    <img src="https://d3h9ln6psucegz.cloudfront.net/wp-content/uploads/2013/06/7-Brutal-New-Upper-Body-Exercises-1.jpg"
						alt="상체운동 이미지" width="1050" height="500">
				  </div>				    
					
				  <div>
				    <div class="uppertext  mb-4 d-flex justify-content-center align-items-center text-white">상체 운동<br></div>
				  </div>		
				    		
	 					
				</div>
			  </div>
			 
			</div>
			<hr>

			 <div class="d-flex justify-content-center">
				<div class="productBox d-flex justify-content-between mt-4">
				   <div class="bottom-imageBox d-flex justify-content-between"> 
					<div class="product">
						<img src="http://th3.tmon.kr/thumbs/image/954/27c/c92/92fd29ddb_700x700_95_FIT.jpg" alt="" width="450px" height="450px">
						<div class="font-weight-bold mt-4"><a href="" class="text-blue"><h3>스쿼트 머신 3in1 전신운동기구</h3></a></div><br>
						<div class="text-danger"><h4>42,000원</h4></div>
					</div>

					<div class="product">
						<img src="https://image.g9.co.kr/g/2173112733/n?ts=1627629743000" alt="" width="450px" height="450px">
						<div class="font-weight-bold mt-4"><a href="" class="text-blue"><h3>딥스바 푸쉬업바 가정용 헬스기구</h3></a></div><br>
						<div class="text-danger"><h4>75,300원</h4></div>
					</div>

					<div class="product">
						<img src="http://th1.tmon.kr/thumbs/image/cec/788/f03/fda462a47_700x700_95_FIT.jpg" alt="" width="450px" height="450px">
						<div class="font-weight-bold mt-4"><a href="" class="text-blue"><h3>팔뚝살 상체 운동기구</h3></a></div><br>
						<div class="text-danger"><h4>17,900원</h4></div>
					</div>
				   </div>
				</div>

			</div> 
		</div>
	</div>    
   </div>    
</body>
</html>