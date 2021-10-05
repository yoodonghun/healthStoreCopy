<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="/static/css/admin_style.css">
</head>
<body>
   <div id="wrap">
      <div class="d-flex">
         <div class="leftBox">
            <div class="text-white text-center mt-4 logo">HIM-SSEN</div>
            <div class="emptyBox"></div>
            <div>
	           <ul class="nav flex-column mt-4 text-center">
	             <li class="nav-item text-weight-bold  mt-4"><a href="/admin/userList_view" class="nav-link text-white">회원목록</a></li>
	             <li class="nav-item text-weight-bold  mt-4"><a href="/admin/sale_view" class="nav-link text-white">판매</a></li>
	             <li class="nav-item text-weight-bold  mt-4"><a href="/admin/saleList_view" class="nav-link text-white">판매목록</a></li>
	             <li class="nav-item text-weight-bold  mt-4"><a href="/admin/adminInfo_view" class="nav-link text-white">관리자정보</a></li>
	           </ul>
            </div>
                        
         </div>
         
         <div>
           <div>
	           <div class="d-flex justify-content-center ml-4 mt-4">
	             <div class="innerBox">
	                <div class="topEmptyBox"></div>
	                <div class="topText ml-4 mb-2">회원 목록</div>
	                
	                
	                
	                <div>
	                  <table class="table">
	                     <thead>
	                       <tr class="text-center">
	                         <th class="col-1">No.</th>
	                         <th class="col-3">Id</th>
	                         <th class="col-2">Name</th>
	                         <th class="col-6">Email</th>
	                       </tr>
	                     </thead>
	                     <tbody>
	                     <c:forEach var="user" items="${userList}">
	                       <tr class="text-center">
	                         <td>${user.id}</td>
	                         <td>${user.loginId}</td>
	                         <td>${user.name}</td>
	                         <td>${user.email}</td>
	                       </tr>
	                      </c:forEach> 
	                     </tbody>
	                  </table>
	                </div>

	             </div>
	           </div>
         </div>
         </div>
         
         
         
      </div>
   </div>
</body>
</html>