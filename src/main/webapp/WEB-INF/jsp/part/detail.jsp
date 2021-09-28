<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail view</title>
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
         <div class=" d-flex justify-content-center">
            <div class="emptyBox"></div>             
         </div><br>         
       </div>
       
       <div>
         <div class=" d-flex justify-content-center">
            <div class="detailImageBox d-flex">
               <img src="#" class="product">
               <div class="centerEmpty"></div>
               <div class="detailBox ml-4">
                 <div class="ml-3 mt-4 productName">딥스바 푸시업바</div><br><br>
                 <div class="ml-4 mt-2 productPrice font-weight-bold text-danger">75,300원</div>
                 
                 <hr>
                 <div class="d-flex">
                    <div class="ml-2 font-weight-bold col-3">배송비</div>
                    <div class="ml-2 col-9">무료</div>                    
                 </div><br>
                 
                 <div class="d-flex">
                    <div class="ml-2 font-weight-bold col-3">혜택</div>
                    <div class="ml-2 col-9">5,000원 쿠폰 지급</div>
                 </div><br><br><br><br><br>
                 <hr>
                 <br><br>
                 
                 <div class="d-flex mt-4 ">
                  <button type="submit" class="cartBtn btn-secondary mr-2">장바구니</button>
                  <button type="submit" class="buyBtn text-white">구매하기</button>
                 </div>                 
               </div>              
             </div>                                               
         </div>
       </div><br>
       <hr>
       
       <div>
         <div class=" d-flex justify-content-center">
            <div class="emptyBox1"></div>             
         </div><br>         
       </div>
       
       <div>
          <div class=" d-flex justify-content-center">
             <div class="reviewText justify-content-start">
                <div>review</div>
                <hr>
                
             </div>
          </div>
       </div>  
   </div>
</body>
</html>