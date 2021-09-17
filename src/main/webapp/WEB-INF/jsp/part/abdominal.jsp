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
			  <div class="upBox d-flex justify-content-center">
				<div class="topPartBox mt-4 text-center">
				    <div class="mb-3">복부 운동</div>
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWZ1N8E-I4b35voCHwhgEBKZe55XJ02ln14g&usqp=CAU"
						alt="복부운동 이미지" width="450" height="250"> 
				</div>
			  </div>
			</div>

			<div class="d-flex justify-content-center">
				<div class="productBox d-flex justify-content-between mt-4">
				   <div class="bottom-imageBox d-flex justify-content-between">
					<div class="product">
						<img src="" alt="" width="450px" height="450px">
						<div class="font-weight-bold mt-4"><a href="" class="text-dark"><h3>상품이름</h3></a></div><br>
						<div class="text-secondary"><h4>가격</h4></div>
					</div>

					<div class="product">
						<img src="" alt="" width="450px" height="450px">
						<div class="font-weight-bold mt-4"><a href="" class="text-dark"><h3>상품이름</h3></a></div><br>
						<div class="text-secondary"><h4>가격</h4></div>
					</div>

					<div class="product">
						<img src="" alt="" width="450px" height="450px">
						<div class="font-weight-bold mt-4"><a href="" class="text-dark"><h3>상품이름</h3></a></div><br>
						<div class="text-secondary"><h4>가격</h4></div>
					</div>
				</div>
				</div>

			</div>
		</div>
	</div>    
</body>
</html>