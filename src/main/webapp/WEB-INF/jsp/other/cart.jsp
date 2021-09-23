<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart</title>
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
         
         <div class=" d-flex justify-content-center">
            <div class="shoppingBasket">
               <div class="basketText">장바구니</div>
            </div>             
         </div>
        
         <div class=" d-flex justify-content-center">
            <div class="basket mt-4">
               <table class="table">
                  <thead>
                  
                  </thead>
                  <tbody>
                  
                  </tbody>
               </table>
            </div>                         
         </div>
         
         <div class=" d-flex justify-content-center">
            <div class="btnBox d-flex">
              <button type="button" class="saleBtn1 mt-4 text-white mr-2">상품 주문</button>
              <a href="/user/main_page_view"><button type="button" class="saleBtn2 mt-4 text-black">쇼핑 계속하기</button></a>
              
            </div>
         </div>         
       </div>
       
   </div>
</body>
</html>