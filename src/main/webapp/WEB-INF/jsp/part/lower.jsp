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
				    <img src="https://mblogthumb-phinf.pstatic.net/20160318_45/sudveie875_1458268140460zX35y_JPEG/gvbc.jpg?type=w800"
						alt="상체운동 이미지" width="1050" height="500">
				  </div>				    
					
				  <div>
				    <div class="uppertext  mb-4 d-flex justify-content-center align-items-center text-white">하체 운동<br></div>
				  </div>		
				    		
	 					
				</div>
			  </div>
			 
			</div>
			<hr>

			 <div class="d-flex justify-content-center">
				<div class="productBox d-flex justify-content-between mt-4">
				   <div class="bottom-imageBox d-flex justify-content-between">
					<div class="product">
						<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210226_295%2F1614323889313CUc5C_JPEG%2F105945_0.jpg&type=sc960_832" alt="" width="450px" height="450px">
						<div class="font-weight-bold mt-4"><a href="" class="text-blue"><h3>하체 근력운동 스트레칭 힙쓰러스트</h3></a></div><br>
						<div class="text-danger"><h4>4,200원</h4></div>
					</div>

					<div class="product">
						<img src="https://thumbnail10.coupangcdn.com/thumbnails/remote/492x492ex/image/vendor_inventory/e0d0/fb2e4e49164cbc56ca2e783f24b189b6f0c9cf296741e42ad0c0d0801f22.png" alt="" width="450px" height="450px">
						<div class="font-weight-bold mt-4"><a href="" class="text-blue"><h3>힙딥밴드 하체근력 운동기구</h3></a></div><br>
						<div class="text-danger"><h4>9,000원</h4></div>
					</div>

					<div class="product">
						<img src="https://cdn.011st.com/11dims/resize/600x600/quality/75/11src/pd/21/7/7/4/4/1/8/kjCIV/3713774418_B.jpg" alt="" width="450px" height="450px">
						<div class="font-weight-bold mt-4"><a href="" class="text-blue"><h3>하체운동 미니 바이크 자전거 스텝퍼</h3></a></div><br>
						<div class="text-danger"><h4>35,000원</h4></div>
					</div>
				   </div>
				</div>

			</div> 
		</div>
	</div>    
   </div>    
</body>
</html>