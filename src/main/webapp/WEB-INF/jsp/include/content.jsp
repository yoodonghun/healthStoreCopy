<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

  <div>
     <div class="d-flex justify-content-center mt-4">
       <div class="imageBox">
        <img src="https://www.10wallpaper.com/wallpaper/1920x1080/1604/Push_up_Workout-Sports_Poster_Wallpapers_1920x1080.jpg" width="1550" height="700">        
       </div> 
     </div>
     
     <div class="d-flex justify-content-center mt-4">
       <div class="partBox d-flex justify-content-around  mt-4">
          <div class="middleBox">
	           <a href="/product/himssen_upperBody_view" class="middleText text-dark">
	           <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjn9k72FiOHd2vVaxn18bSFySFtYrpERXAkw&usqp=CAU" alt="상체운동 이미지" width="450" height="200">
	           상체 운동</a>	           
          </div>
        
          <div class="middleBox">
	           <a href="/product/himssen_lowerBody_view " class="middleText text-dark" >
	           <img src="https://post-phinf.pstatic.net/MjAxNzEyMjlfMjkg/MDAxNTE0NTM1MTEyMTk4.I2cSI2y_mm5qEEN7r70T8VrKl5QTqo8c4lmnmrNKVGUg.orhlQY0KcaLmlKpbAxEe8cwLwUzo5KeCwqVx8r4GCmkg.PNG/u1.png?type=w1200" alt="하체운동 이미지" width="450" height="200">
	           하체 운동</a>
          </div>
        
       	  <div class="middleBox">
	            <a href="/product/himssen_abdominal_view" class="middleText text-dark">
	            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIEXMsIMa5sRJaNm8dloOHQsqLhaS_GZPQ7A&usqp=CAU" alt="상체운동 이미지" width="450" height="200">
	            복부 운동</a>
          </div>    
       </div> 
     </div><br><br>
  </div> 
     <br><br>  
     <hr>
     <br><br>
     
      
       <div class="d-flex justify-content-center">
         <div class="bottomBox">
           <h1>오늘의 추천상품</h1>         
         </div>       
      </div><br>
      
      
     
     <div>
	       <div class="d-flex justify-content-center">
	        
				<div>
				  <div class="bottom-imageBox d-flex justify-content-between">
				   <c:forEach var="item" items="${productDetail}" end="0">
					<div class="detail1">					 					  
						<a href="/product/detail_view?productId=${item.id}" class="text-blue">
						<img src=${item.imagePath} alt="" width="450px" height="450px">
					   	<div class="font-weight-bold mt-4"><h4>${item.productName}</h4></div></a><br>
						<div class="text-danger"><h4>${item.price}원</h4></div>					    
					</div>
				  </c:forEach>

					<c:forEach var="item" items="${productDetail}" begin="4" end="4">
						<div class="detail2">					 					  
							<a href="/product/detail_view?productId=${item.id}" class="text-blue">
							<img src=${item.imagePath} alt="" width="450px" height="450px">
						   	<div class="font-weight-bold mt-4"><h4>${item.productName}</h4></div></a><br>
							<div class="text-danger"><h4>${item.price}원</h4></div>					    
						</div>
					</c:forEach>

					<c:forEach var="item" items="${productDetail}" begin="7" end="7">
						<div class="detail3">					 					  
							<a href="/product/detail_view?productId=${item.id}" class="text-blue">
							<img src=${item.imagePath} alt="" width="450px" height="450px">
						   	<div class="font-weight-bold mt-4"><h4>${item.productName}</h4></div></a><br>
							<div class="text-danger"><h4>${item.price}원</h4></div>					    
						</div>
					</c:forEach>
				  </div>
				</div>
				      
	       </div>
       </div>