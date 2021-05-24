<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<style>
	div.mmiddle {
    margin-left: 25%;
    margin-right: 25%;
	}
	.pointcursor{
		cursor: pointer;
	}
	</style>
<title>봉그다 숙박숙박</title>
<link href="${pageContext.servletContext.contextPath}/resources/guest/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.servletContext.contextPath}/resources/guest/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--menu-->
<script src="${pageContext.servletContext.contextPath}/resources/guest/js/scripts.js"></script>
<link href="${pageContext.servletContext.contextPath}/resources/guest/css/styles.css" rel="stylesheet">
<!--//menu-->
<!--theme-style-->
<link href="${pageContext.servletContext.contextPath}/resources/guest/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Real Home Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</head>
<body>
<!--header-->
<div class="header">
	<div class="container">
		<!--logo-->
		<div class="logo">
			<h1><a href="index.jsp">Bonggeuda</a></h1>
		</div>
		<!--//logo-->
		<div class="top-nav">
			<ul class="right-icons">

				<li><span ><a  href="index.html">메인페이지</a></span></li>
				<li><a  href="more_notice.html">더보기</a></li>
				<!-- <li><a  href="blog.html">내주변</a></li> -->
				<li><a  href="mypage_point.html">마이페이지</a></li>
            	<li><a  href="login.html"><i class="glyphicon glyphicon-user"> </i>로그인</a></li>

			</ul>
		</div>
			
		<div class="clearfix"> </div>
		<div class="clearfix"> </div>
	</div>	
</div>
<!--//-->	
<div class=" banner-buying">
	<div class=" container">
	<h3><span>마이페이지</span></h3> 

	<div class="clearfix"> </div>      		
	</div>
</div>
<!--//header-->
<!--blog-->
<div class="blog">
<div class="container">
	<h3></h3>
	<div class="blog-list">
		<nav>
		<div class="col-md-3 blog-sidebar">
		<ul style="padding-top: 70px;">
			<li class="blog-list"><a href="point.jsp">포인트</a></li>
			<li class="blog-list"><a href="coupon.jsp">쿠폰함</a></li>
			<li class="blog-list" style=" font-size: 1.3em; font-weight: 600;"><a href="reservation.jsp" style="color: #6eceda;">예약 내역</a></li>
			<li class="blog-list"><a href="myInformation.jsp">내 정보 관리</a></li>
			<li class="blog-list"><a href="warningList.jsp">신고내역</a></li>
		</ul>
		</div>
		</nav>
	</div>


	<div class="mmiddle">
	<div class="tab">
		<span class="tab_btn active">예약 내역</span>
	</div>

	<div id="cont_area" style="padding-top: 30px;"><!-- 본문 콘텐츠-->
		<div class="cont_inner" id="policy_page" style="min-height: 435px; text-align: left; float: left; width: 100%;">

			<!-- 예약내역 -->
			<div style="padding-bottom: 50px; text-align: left; float: left; width: 100%;">
				<b style="font-size: 20px;">예약내역</b>
				<c:forEach var="arr" items="${ booklist }" varStatus="st">
				<div class="pointcursor" onclick="location.href='reservationList.jsp';">
					<table border="1px" width="70%">
						<tr>
							<td height="200px">
								<img src="${pageContext.servletContext.contextPath}/${ arr.bookImg }" style="width: 100%; height: 100%;">
							</td>
						</tr>
						<tr>
							<td height="100px">
							<c:if test="${ arr.bookApproveYn eq 'N' }">
								<div style="margin: auto; font-size: 10px; border: 1px solid; width: 70px; background: yellow; color: darkgray; border-style: none; border-radius: 5px">예약 대기</div>
							</c:if>
							<c:if test="${ arr.bookApproveYn eq 'Y' }">
								<div style="margin: auto; font-size: 10px; border: 1px solid; width: 70px; background: #6eceda; color: white; border-radius: 5px;">예약 확정</div>
							</c:if>
								<div><c:out value="${ arr.accomoName }"/>&nbsp&nbsp<c:out value="${ arr.roomName }"/></div>
								<div>체크인 <c:out value="${ arr.bookCheckIn }"/> <c:out value="${ arr.day }"/>박</div>
							</td>
						</tr>
					</table>
					<br>
				</div>
				</c:forEach>
			</div>
			<br>
			<!-- 이용내역 -->
			<div style="padding-bottom: 50px; text-align: left; float: left; width: 100%;">
				<b style="font-size: 20px;">이용내역</b>
				<c:forEach var="arr" items="${ completeBooklist }" varStatus="st">
				<div class="pointcursor" onclick="location.href='${ pageContext.servletContext.contextPath }/usercompletecontent/select?bookNo=${ arr.bookNo }';">
					<table border="1px" width="70%">
						<tr>
							<td height="200px">
								<img src="${pageContext.servletContext.contextPath}/${ arr.bookImg }" style="width: 100%; height: 100%;">
							</td>
						</tr>
						<tr>
							<td height="100px">
								<div style="margin: auto; font-size: 10px; border: 1px solid; width: 70px; background: #d3d3d3; border-style: none; border-radius: 5px;">이용 완료</div>
								<div><c:out value="${ arr.accomoName }"/>&nbsp&nbsp<c:out value="${ arr.roomName }"/></div>
								<div>체크인 <c:out value="${ arr.bookCheckIn }"/> <c:out value="${ arr.day }"/>박</div>
							</td>
						</tr>
					</table>
					<br>
				</div>
				</c:forEach>
			</div>
			<!-- 취소내역 -->
			<div style="padding-bottom: 100px; text-align: left; float: left; width: 100%;">
				<b style="font-size: 20px;">취소내역</b>
				<c:forEach var="arr" items="${ cancleBooklist }" varStatus="st">
				<div class="pointcursor" onclick="location.href='${ pageContext.servletContext.contextPath }/usercanclecontent/select?bookNo=${ arr.bookNo }';">
					<table border="1px" width="70%">
						<tr>
							<td height="200px">
								<img src="${pageContext.servletContext.contextPath}/${ arr.bookImg }" style="width: 100%; height: 100%;">
							</td>
						</tr>
						<tr>
							<td height="100px">
								<div style="margin: auto; font-size: 10px; border: 1px solid; width: 70px; background: red; color: white; border-style: none; border-radius: 5px;">예약 취소</div>
								<div><c:out value="${ arr.accomoName }"/>&nbsp&nbsp<c:out value="${ arr.roomName }"/></div>
								<div>체크인 <c:out value="${ arr.bookCheckIn }"/> <c:out value="${ arr.day }"/>박</div>
							</td>
						</tr>
					</table>
					<br>
				</div>
				</c:forEach>
			</div>

		</div>
	</div>

	<div class="clearfix"> </div>
	<br><br><br>
</div>

</div>
<!--//blog-->
<!--footer-->
<div class="footer">
	<div class="container">
		<div class="footer-top-at">
			<div class="col-md-3 amet-sed">
				<h4>Our Company</h4>
				<ul class="nav-bottom">
					<li><a href="about.html">About Us</a></li>
					<li><a href="blog.html">For Sale By Owner Blog</a></li>
					<li><a href="mobile_app.html">Mobile</a></li>
					<li><a href="terms.html">Terms & Conditions</a></li>
					<li><a href="privacy.html">Privacy Policy</a></li>	
					<li><a href="blog.html">Blog</a></li>
					
				</ul>	
			</div>
			<div class="col-md-3 amet-sed ">
				<h4>Work With Us</h4>
					<ul class="nav-bottom">
						<li><a href="single.html">Real Estate Brokers</a></li>
						<li><a href="single.html">Business Development</a></li>
						<li><a href="single.html">Affiliate Programs</a></li>
						<li><a href="contact.html">Sitemap</a></li>
						<li><a href="career.html">Careers</a></li>
						<li><a href="feedback.html">Feedback</a></li>	
					</ul>	
			</div>
			<div class="col-md-3 amet-sed">
				<h4>Customer Support</h4>
				<p>Mon-Fri, 7AM-7PM </p>
				<p>Sat-Sun, 8AM-5PM </p>
				<p>177-869-6559</p>
					<ul class="nav-bottom">
						<li><a href="#">Live Chat</a></li>
						<li><a href="faqs.html">Frequently Asked Questions</a></li>
						<li><a href="suggestion.html">Make a Suggestion</a></li>
					</ul>	
			</div>
			<div class="col-md-3 amet-sed ">
				<h4>Property Services</h4>
				   <ul class="nav-bottom">
						<li><a href="single.html">Residential Property</a></li>
						<li><a href="single.html">Commercial Property</a></li>
						<li><a href="login.html">Login</a></li>
						<li><a href="register.html">Register</a></li>
						<li><a href="typo.html">Short Codes</a></li>	
					</ul>	
					<ul class="social">
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i class="gmail"> </i></a></li>
						<li><a href="#"><i class="twitter"> </i></a></li>
						<li><a href="#"><i class="camera"> </i></a></li>
						<li><a href="#"><i class="dribble"> </i></a></li>
					</ul>
			</div>
		<div class="clearfix"> </div>
		</div>
	</div>
	<div class="footer-bottom">
		<div class="container">
			<div class="col-md-4 footer-logo">
				<h2><a href="index.html">REAL HOME</a></h2>
			</div>
			<div class="col-md-8 footer-class">
				<p >© 2015 Real Home. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
			</div>
		<div class="clearfix"> </div>
	 	</div>
	</div>
</div>
<!--//footer-->
</body>
</html>