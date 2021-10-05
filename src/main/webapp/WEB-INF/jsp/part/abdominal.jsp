<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		  </div>
			<hr><br>
			
			
	     <div>
	       <div class="d-flex justify-content-center">
	        
				<div>
				  <div class="bottom-imageBox d-flex justify-content-between">
				   <c:forEach var="item" items="${productDetail}" begin="6" end="6">
					<div class="detail1">					 					  
						<a href="/product/detail_view" class="text-blue">
						<img src=${item.imagePath} alt="" width="450px" height="450px">
					   	<div class="font-weight-bold mt-4"><h4>${item.productName}</h4></div></a><br>
						<div class="text-danger"><h4>${item.price}원</h4></div>					    
					</div>
				  </c:forEach>

					<c:forEach var="item" items="${productDetail}" begin="7" end="7">
						<div class="detail2">					 					  
							<a href="/product/detail_view" class="text-blue">
							<img src=${item.imagePath} alt="" width="450px" height="450px">
						   	<div class="font-weight-bold mt-4"><h4>${item.productName}</h4></div></a><br>
							<div class="text-danger"><h4>${item.price}원</h4></div>					    
						</div>
					</c:forEach>

					<c:forEach var="item" items="${productDetail}" begin="8" end="8">
						<div class="detail3">					 					  
							<a href="/product/detail_view" class="text-blue">
							<img src=${item.imagePath} alt="" width="450px" height="450px">
						   	<div class="font-weight-bold mt-4"><h4>${item.productName}</h4></div></a><br>
							<div class="text-danger"><h4>${item.price}원</h4></div>					    
						</div>
					</c:forEach>
				  </div>
				</div>
				      
	       </div>
       </div>
		   	
	</div>
	  
</body>
</html>