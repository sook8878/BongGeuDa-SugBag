<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>봉그다 숙박숙박 :: 숙소 관리</title>
<link href="${pageContext.servletContext.contextPath }/resources/owner/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<script src="${pageContext.servletContext.contextPath }/resources/owner/js/jquery.min.js"></script>
<link href="${pageContext.servletContext.contextPath }/resources/owner/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<script src="${pageContext.servletContext.contextPath }/resources/owner/js/jquery.min.js"></script>

<script src="${pageContext.servletContext.contextPath }/resources/owner/js/scripts.js"></script>
<script src="${pageContext.servletContext.contextPath }/resources/owner/js/event.js"></script>
<link href="${pageContext.servletContext.contextPath }/resources/owner/css/styles.css" rel="stylesheet">

<link href="${pageContext.servletContext.contextPath }/resources/owner/css/style.css" rel="stylesheet" type="text/css" media="all" />   

<script src="${pageContext.servletContext.contextPath }/resources/owner/js/responsiveslides.min.js"></script>


   <link rel="shortcut icon" href="../favicon.ico"> 
   <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath }/resources/owner/css/default.css" />
   <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath }/resources/owner/css/component.css" />
   <script src="${pageContext.servletContext.contextPath }/resources/owner/js/modernizr.custom.js"></script>
<style>
   th{
      background-color: lightgray;
      color : black;
   }

   .roomCondition{
      text-align: center;
      width: 170px;
      margin-top: 100px;
      font-weight: bold;
      font-size: 13px;
</style>

</head>

<body>
<!--header-->
<div class="header">
   <div class="container">
      <!--logo-->
         <div class="logo">
            <h1><a href="index.html">Bonggeuda</a></h1>
         </div>
      <!--//logo-->
      <div class="top-nav">
         <ul class="right-icons">
            <li><a href="registration.html">숙소등록</a></li>
            <li><a href="managementYesRoom.html">숙소관리</a></li>
            <li><a href="booking.html">예약관리</a></li>
            <li><a href="QnA.html">공지사항</a></li>
            <li><a  href="mypage.html">마이페이지</a></li>
            <li><a  href="login.html"><i class="glyphicon glyphicon-user"> </i>Login</a></li>
            
            
         </ul>

      
      </div>
   </div>
</div>
<!--header-->
<div class=" banner-buying">
   <div class=" container">
      <h3>숙소 관리</h3> 
   <div class="clearfix"> </div>
      <!--initiate accordion-->
      <script type="text/javascript">
         $(function() {
             var menu_ul = $('.menu > li > ul'),
                    menu_a  = $('.menu > li > a');
             menu_ul.hide();
             menu_a.click(function(e) {
                 e.preventDefault();
                 if(!$(this).hasClass('active')) {
                     menu_a.removeClass('active');
                     menu_ul.filter(':visible').slideUp('normal');
                     $(this).addClass('active').next().stop(true,true).slideDown('normal');
                 } else {
                     $(this).removeClass('active');
                     $(this).next().stop(true,true).slideUp('normal');
                 }
             });
         
         });
      </script>
            
   </div>
</div>


<br><br>

<table class="table-bordered table" id="registTb" style="width: 65%;" >
   <thead>
      <th>숙소 대표이미지</th>
      <th>숙소 정보</th>
      <th>숙소 평점 및 리뷰</th>
      <th>숙소 상태</th>
      <th>숙소 설정</th>
   </thead>
   <tbody>
      <c:forEach var="accomoList" items="${ requestScope.RmAccmoInfoDTOList }">
      <tr class="room1">
         <th style="background-color: white;">
         <c:choose>
         
         <c:when test="${ accomoList.rmType eq 'EN'}">
         
            <img src="${pageContext.servletContext.contextPath }/${ accomoList.thumbNailPath }" style="width: 370px; height: 250px;">
         </c:when>
         <c:when test="${ accomoList.rmType eq 'RM'}">
         <!-- RM 일때는 CATEGORY_NO = 1 인 사진 조회해 와야댐.-->
            <img src="${pageContext.servletContext.contextPath }/${ requestScope.rmImagePathSelect }" style="width: 370px; height: 250px;">
         </c:when>

         
         </c:choose>
         

         </th>
         <td class="roomList">
            <p class="roomName"><c:out value="${ accomoList.accomoName }"/></p>
            <p class="roomForm"><c:out value="${ accomoList.accomoType }"/></p>
            <br>
      
            <div>
      <c:choose>
         
         <c:when test="${ accomoList.approvalYN eq 'N'}">
              	 숙소 등록 승인 대기중 
         </c:when>
         <c:when test="${ accomoList.approvalYN eq 'Y' && accomoList.approvalStatus eq 'Y'}"> 
       <!-- rm 히스토리의 approveStatus가 Y인 애들은 등록 됐다는 거지 -->
            <form action="/bonggeuda/owner/accomoModify" method="post">
               <button  class="submit-btn" type="submit">
               <input type="hidden" name="accomoNo" value="<c:out value="${ accomoList.accomoNo }"/>">
                숙소 수정
            </form>
         </c:when>
         <c:when test="${ accomoList.approvalYN eq 'Y' && accomoList.approvalStatus eq 'N'}"> 
       <!-- rm 히스토리의 approveStatus가 Y인 애들은 등록 됐다는 거지 -->
   				숙소 승인 거절됨
            </form>
         </c:when>
         </c:choose>
         

            </div>

         </td>
         <td class="" >
            <ul class="liMaginLefe">
               <li style="margin-top: 10px;"> 이번달 예약 : n 개</li>
               <li> 별점 : n </li>
               <li style="margin-bottom: 15px;"> 리뷰 : n개 </li>
            </ul>
            <button class="roomModifyBtn" onClick="location.href='managementToReview.html'">  리뷰 보러가기</button>
         </td>
         <td class="roomCondition">
         <c:choose>
         
         <c:when test="${ accomoList.approvalStatus eq 'Y'}">
        	 관리자 승인 완료
         </c:when>
         <c:when test="${ accomoList.approvalYN eq 'N'}">
         	숙소 검수 중
         </c:when>
         <c:when test="${ accomoList.approvalStatus eq 'N'}">
                     <br>
            <p style="color: red; font-size: 20px">숙소 등록 거절</p>
            <br>
            
            <button type="submit" class="submit-btn" onclick="location.href='#pop01'">거절 사유 보기</button>
         </c:when>

         
         </c:choose>
         </td>
         <td>
            <br>
            <button class="roomModifyBtn" onclick="roomRemove()" style="background-color: orangered;">숙소 삭제</button>
            <br>
            <br>
            
            <button class="roomModifyBtnPublic" id="roomDisable" onclick="roomAble()" disabled="disabled" style="background-color: lightgray;">숙소 공개</button>
            <button class="roomModifyBtnPrivate" id="roomDisable" onclick="roomDisable()" style="background-color: lightgreen;">숙소 비공개</button>
            


         </td>
      </tr>
   </c:forEach>
   </tbody>
   
</table>

<script>
   function roomRemove(){
   var result = confirm("정말 삭제 하시겠습니까?");
   if(result){
      alert("숙소 삭제 되었습니다.")
      $(".room1").remove();
   }else{
      alert("취소하셨습니다.")
   }
   }

   function roomDisable(){

   var result = confirm("비공개 하시겠습니까?");

   if(result){
      
      $(".room1").css({"background-color":"lightgray"});

      $(".roomModifyBtnPublic").css({"background-color":"lightgreen"});
      $(".roomModifyBtnPrivate").css({"background-color":"rgba(0,0,0,0.1)"});

      $(".roomModifyBtnPrivate").attr("disabled",true);
      $(".roomModifyBtnPublic").attr("disabled",false);

      alert("숙소 비공개 되었습니다.")
   }else{
      alert("취소하셨습니다.")
   }

   
}

function roomAble(){
   var result = confirm("공개 하시겠습니까?");
if(result){
   $(".room1").css({"background-color":"white"});

   $(".roomModifyBtnPublic").css({"background-color":"rgba(0,0,0,0.1)"});
   $(".roomModifyBtnPrivate").css({"background-color":"lightgreen"});

   $(".roomModifyBtnPrivate").attr("disabled",false);
   $(".roomModifyBtnPublic").attr("disabled",true);

   alert("숙소 공개 되었습니다.")
}else{
   alert("취소하셨습니다.")

}
}
</script>
</div>
</div>
<br><br><br><br><br><br>
<br><br><br><br><br><br>
<br><br><br><br><br><br>
<!--footer-->
<div class="footer-bottom">
   <div class="container">
      <div class="col-md-4 footer-logo">
         <h2><a href="index.html">Bonggeuda</a></h2>
      </div>
      <div class="col-md-8 footer-class">
         <p >© 2021 Bonggeuda SUKBAKSUKBAK. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">Bonggeuda</a> </p>
      </div>
   <div class="clearfix"> </div>
    </div>
</div>
</div>
<!--//footer-->
</body>
</html>