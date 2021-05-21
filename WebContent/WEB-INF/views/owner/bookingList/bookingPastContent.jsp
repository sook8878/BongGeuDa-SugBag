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
<title>봉그다 숙박숙박 :: 예약 관리</title>
<link href="${pageContext.servletContext.contextPath }/resources/owner/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<script src="${pageContext.servletContext.contextPath }/resources/owner/js/jquery.min.js"></script>

<script src="${pageContext.servletContext.contextPath }/resources/owner/js/scripts.js"></script>
<script src="${pageContext.servletContext.contextPath }/resources/owner/js/event.js"></script>
<link href="${pageContext.servletContext.contextPath }/resources/owner/css/styles.css" rel="stylesheet">

<link href="${pageContext.servletContext.contextPath }/resources/owner/css/style.css" rel="stylesheet" type="text/css" media="all" />	

<script src="${pageContext.servletContext.contextPath }/resources/owner/js/responsiveslides.min.js"></script>


	<meta charset="UTF-8" />

	<link rel="shortcut icon" href="../favicon.ico"> 
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath }/resources/owner/css/default.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath }/resources/owner/css/component.css" />
	<script src="${pageContext.servletContext.contextPath }/resources/owner/js/modernizr.custom.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<style>
	div.tab, div.tab-content {
		  margin-left: 20%;
		  margin-right: 4.8%;
	}
	.table tbody tr th{
		background: white;
	}
	table.table tr th{
		text-align: center;
		padding: 5px;
		line-height: 2.5;
		font-weight: 500;
		width: auto;
	}
	th a:hover{
		color: #6eceda !important;
	}

	.overlay {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(0, 0, 0, 0.7);
  transition: opacity 500ms;
  visibility: hidden;
  opacity: 0;
  z-index: 900;
}

.overlay:target {
  visibility: visible;
  opacity: 1;
}

.popup {
  position: fixed;
  width: 60%;
  padding: 10px;
  max-width: 500px;
  border-radius: 10px;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background: rgba(255, 255, 255, .9);
  /* "delay" the visibility transition */
  -webkit-transition: opacity .5s, visibility 0s linear .5s;
  transition: opacity .5s, visibility 0s linear .5s;
  z-index: 1;
}

.h4{
	text-align: center;
	font-size: 2em;
}
 </style>
</head>
<body>
<!--header-->
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
<!--//-->	
<div class=" banner-booking"> <!--상단 메뉴바-->
	<div class=" container">
		<h3>예약 관리</h3> 
	<!---->
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
<!--//header-->
<br><br>
<div class="blog">
	<div class="container">
		<div class="blog-list">
			<nav>
			<div class="col-md-3 blog-sidebar">
			<ul>
				<li class="blog-list"><a href="/bonggeuda/owner/bookingList">실시간 예약 현황</a></li>
				<li class="blog-list"  style=" font-size: 1.3em; font-weight: 600;"><a href="/bonggeuda/owner/bookingPastList" style="color: #6eceda;">지난 예약</a></li>
				<li class="blog-list"><a href="booking_QnA.html">고객 문의</a></li>
				<li class="blog-list"><a href="booking_sales.html">매출 내역</a></li>
			</ul>
			</nav>

		</div>
		<table class="type09">
			<thead>
				<tr>
					<th scope="cols" colspan="4"></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">예약번호</th>
					<td><c:out value="${ requestScope.bookContentDTO.bookNo }"/></td>
					<th scope="row">예약일시</th>
					<td><c:out value="${ requestScope.bookContentDTO.bookRequestDate }"/></td>
				</tr>
				<tr>
					<th scope="row">숙소명</th>
					<td><c:out value="${ requestScope.bookContentDTO.accomoName }"/></td>
					<th scope="row">객실명</th>
					<td><c:out value="${ requestScope.bookContentDTO.roomName }"/></td>
				</tr>
				<tr>
					<th scope="row">예약자</th>
					<td><c:out value="${ requestScope.bookContentDTO.bookUserName }"/></td>
					<th scope="row">인원</th>
					<td><c:out value="${ requestScope.bookContentDTO.bookPersonnel }"/></td>
				</tr>
				<tr>
					<th scope="row">연락처</th>
					<td><c:out value="${ requestScope.bookContentDTO.userPhone }"/></td>
					<th scope="row">이메일</th>
					<td><c:out value="${ requestScope.bookContentDTO.email }"/></td>
				</tr>
				<tr>
					<th scope="row">체크인</th>
					<td><c:out value="${ requestScope.bookContentDTO.bookCheckDate }"/> / <c:out value="${ requestScope.bookContentDTO.bookCheckIn }"/></td>
					<th scope="row">체크아웃</th>
					<td><c:out value="${ requestScope.bookContentDTO.bookCheckoutDate }"/> / 11:00 </td>
				</tr>
				<tr>
					<th scope="row">결제금액</th>
					<td><c:out value="${ requestScope.bookContentDTO.paymentFee }"/></td>
					<th scope="row">결제수단</th>
					<td><c:out value="${ requestScope.bookContentDTO.paymentMethod }"/></td>
				</tr>
				<tr>
					<th scope="row">요청사항</th>
					<td colspan="3"><c:out value="${ requestScope.bookContentDTO.request }"/></td>
				</tr>
			</tbody>
		</table>
		<table class="type09">
			<thead>
				<tr>
					<th scope="cols"></th>
					<th scope="cols"></th>
				</tr>
			</thead>
		</table>
		


	</div>
</div>
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