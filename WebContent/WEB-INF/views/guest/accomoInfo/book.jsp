<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Real Home A Real Estate Category Flat Bootstarp Resposive Website Template | Buy :: w3layouts</title>
<link href="bonggeuda/resources/guest/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="bonggeuda/resources/guest/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--menu-->
<script src="bonggeuda/resources/guest/js/scripts.js"></script>
<link href="bonggeuda/resources/guest/css/styles.css" rel="stylesheet">
<!--//menu-->

<!-- theme-style -->
<link href="bonggeuda/resources/guest/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<!-- <link href="css/common.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/product.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all" /> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Real Home Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<style>
.container h3{
	display: block; 
	font-size: 18px; 
	color: rgba(0,0,0,0.87);
}

.list_wrap button{
	width: 180px;
	height: 30px;
	padding: 1px 5px 1px 5px;
}
.detailList{
    width: 1000px; height: 300px; margin-bottom: 15px; padding: 20px 20px 20px 20px;border: 1px solid rgba(0, 0, 0, 0.08);  display: flex;
}

.detailImg{
    width:45%; height:100%;  margin-right: 20px; 
}

.detailInfo{
   width: 53%; display: block;
}
.detail_btn{
	width: 90%;
	height: 30px;
	border: 0;
	outline: 0;
	color: white;
	background-color: #6eceda;
	border-radius: 10px;
	box-shadow: 0 3px 0 #0e8c73;
}
.info_btn{
	width: 100%;
	height: 30px;
	border: 0;
	outline: 0;
	background-color: white;
}

.accomoInfo{
	width:400px; 
	height: 470px; display: block; margin-left: 50px;
}
.accomoInfo h2, h4{
	text-align: left;
}
.accomoInfo h2{
	font-weight: bold;
	font-size: 28px;
}
.accomoInfo h3{
	text-align: left; 
	display: flex; 
	font-size: 23px;
}
.accomoInfo h3>p{
	background: #6eceda; 
	border-radius: 10px; 
	color:white;
	padding: 5px; 
	font-size: 20px; 
	margin-right: 10px;
}
.accomoInfo{
	text-align: left;
}
.ownerComment{
	background-color: rgba(0, 0, 0, 0.08);  
	padding: 20px 20px 20px 20px;
}

.ownerComment p{
	text-align: left;
}
.selectType{
	width:85%; 
	height:30px; 
	display: flex;
}
.selectType>button{
	background: none;
	border-style: none;
	padding: 0 20px 0 20px;
	height: 50px;
}
.selectType>button:hover{
	color: #6eceda;
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
  width: 600px;
  padding: 20px;
  max-width: 600px;
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

.popup:target {
  visibility: visible;
  opacity: 1;
  /* cancel visibility transition delay */
  -webkit-transition-delay: 0s;
  transition-delay: 0s;
}

.popup-close {
  position: absolute;
  padding: 10px;
  max-width: 600px;
  border-radius: 10px;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background: rgba(255, 255, 255, .9);
}

.popup .close {
  position: absolute;
  right: 5px;
  top: 5px;
  padding: 5px;
  color: #000;
  transition: color .3s;
  font-size: 2em;
  line-height: .6em;
  font-weight: bold;
}

.popup .close:hover {
  color: #6eceda;
}

.popup strong{
	font-weight: bold;
	font-size : 17px;
	text-align: left;
}

.popup hr{
	background-color: black;
}

.popup li{
	font-size: 13px;
	text-align: left;
}

.popup b{
	color : red
}
.popup p{
	text-align: left;
	margin-bottom: 5px;
}
.check{
	margin-top: 10px;
	font-size: 15px;
	color : rgba(0, 0, 0, 0.6)
}
.check>div{
	width : 50%;
}
.date{
	text-align: right;
	margin-left: 50px;
}

.payAgree{
	background-color: #6eceda;
	color: white;
	border: 2px solid #6eceda;
}
popup>li{
	list-style: square;
}
.accordion {
    font-family:Arial, Helvetica, sans-serif; 
    margin:0 auto;
    font-size:14px;
    border-radius:10px;
    padding:10px;
    background:#fff;
	text-align: left;
}
.accordion ul {
    list-style:none;
    margin:0;
    padding:0;    
}
.accordion li {
    margin:0;
    padding:0;
}
.accordion [type=radio], .accordion [type=checkbox] {
    display:none;
}
.accordion label {
    display:block;
    font-size:16px;
    line-height:16px;
    cursor:pointer;
    -webkit-transition: all .2s ease-out;
    -moz-transition: all .2s ease-out;
	font-weight: normal;
}
.accordion ul li label:hover, .accordion [type=radio]:checked ~ label, .accordion [type=checkbox]:checked ~ label {
    /* background:#C02942; */
    color:#6eceda;
}
.accordion .content {
	margin-top: 5px;
    padding:0 10px;
    overflow:hidden;
	background: rgb(250, 250, 250);
    border:1px solid #fff; /* Make the border match the background so it fades in nicely */
    -webkit-transition: all .5s ease-out;
    -moz-transition: all .5s ease-out;
}

.accordion p {
    color:#333;
    margin:10px 10px 0px 20px;
	text-align: left;
}
.accordion h3 {
    text-align: left;
	font-size: 20px;
    padding:0;
    margin:30px 10px 0 10px;
}


/* Vertical */
.vertical ul li {
    overflow:hidden;
    margin:0 0 1px;
}

.vertical [type=radio]:checked ~ label, .vertical [type=checkbox]:checked ~ label {
    border-bottom:0;
}

.vertical ul li .content {
    height:0px;
    border-top:0;
}
.vertical [type=radio]:checked ~ label ~ .content, .vertical [type=checkbox]:checked ~ label ~ .content {
    min-height:800px;
	
}

.accordion .content2 {
	margin-top: 5px;
    padding:0 10px;
    overflow:hidden;
	background: rgb(250, 250, 250);
    border:1px solid #fff; /* Make the border match the background so it fades in nicely */
    -webkit-transition: all .5s ease-out;
    -moz-transition: all .5s ease-out;
}
.vertical ul li .content2 {
    height:0px;
    border-top:0;
}
.vertical [type=radio]:checked ~ label ~ .content2, .vertical [type=checkbox]:checked ~ label ~ .content2 {
    min-height:50px;
	
}
.reviewWrap li{
    margin-top: 50px;
    /* margin-bottom: 13px; */
}

.reviewWrap div{
    text-align: left;
    margin-bottom: 13px;
}


.hostAnswer{
    background-color: rgba(0, 0, 0, 0.08);
    margin: 10px 10px 10px 10px;
    padding: 10px 10px 10px 10px;
}

.reviewStar{
    clear: both;
    width: 120px;
    height: 24px;
    background: url(../userWebFront/images/reviewStar.png) 0 0 no-repeat;
    background-size: 120px auto;
    background-position: 0 -24px;
    text-align: right;
    
}

.reviewTitle{
    display: flex;
}

.like{
    width: 30px;
    height: 20px;
    margin-left: 13px;
    background: url(../userWebFront/images/like.png) 0 0 no-repeat;
    background-size: 20px 20px;
    
}

.topReview{
    border: 1px solid;
    width: 100px;
    background: #6eceda;
    color: white;
    border-radius: 5px;
}
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
		<!-- 상단메뉴바 -->
		<div class="top-nav">
			<ul class="right-icons" >
				<li><span ><a  href="index.html">메인페이지</a></span></li>
				<li><a  href="more_notice.html">더보기</a></li>
				<li><a  href="blog.html">내주변</a></li>
				<li><a  href="mypage_point.html">마이페이지</a></li>
				<li><a  href="login.html"><i class="glyphicon glyphicon-user"> </i>로그인</a></li>
			</ul>
			<!-- //상단메뉴바 -->
				
			</div>
				
				
		<div class="clearfix"> </div>
			
				
		</div>
		<div class="clearfix" > </div>
    </div>	
    
    <!--//-->	
    <!-- 숙소상세정보 -->
    <center>

        <div style="width: 1170px; margin-top: 30px; padding: 10px 35px 10px 35px;">
            <!-- 숙소사진, 이름 -->
            <div style=" width : 1100px; height : 500px; padding:10px 10px 10px 0px;display: flex; flex-direction: row;">
                <!-- 숙소사진 -->
                <div style=" width : 600px; height: 470px; display: block;background: url(../userWebFront/images/ga2.jpg) no-repeat; background-size: 600px 470px;">
                    
                </div>
                <!-- 숙소이름 -->
                <div class="accomoInfo">
                    <div><h2>더조은컴퓨터아카데미</h2></div>
                    <br>
                    <div><h3><p>평점</p>0점 / 5점</h3></div>
                    <br>
                    <div><h4>주소 : 강남구 강남동</h4></div>
                    <br><br>
                    <div class="ownerComment">
                        <h4 style="text-align: left;"><b>사장님 한마디</b></h4>
                        <br>
                        <p>제주도 최고의 호텔!!<br>여기로오세요~</p>
                    </div>
                </div>
            </div>

            <br><br>
            <!-- 안내/예약, 정보, 리뷰 -->
            <div style="display: flex; width: 100%;">
				<div class="selectType">
					<button class="tab_button" id="book" type="button" style="color: #6eceda; border-bottom: 3px solid #6eceda;" onclick="tabChange(this);">
						<span>객실안내 / 예약</span>
					</button>
					<button class="tab_button" id="info" type="button" onclick="tabChange(this);" >
						<span>숙소정보</span>
					</button>
					<button class="tab_button3" id="review" type="button" onclick="tabChange(this);">
						 <span>리뷰</span>
					</button>
				</div>
				<div style="text-align: right; display: flex; ">
					<button style="padding:5px;background: red; color: white; border-radius: 10px; box-shadow: 0 3px 0 orange; border-style: none;"onclick="location.href='report.html';">신고하기</button>
					<div style="margin-left:5px; width: 30px; height: 30px; background: url(../userWebFront/images/신고.jpg) no-repeat; background-size: 30px 30px;"></div>
				</div>
			</div>
            <script>
				function tabChange(tc){
					
					document.getElementById(tc.id).style.color="#6eceda";
					document.getElementById(tc.id).style.borderBottom="3px solid #6eceda";

					if(tc.id=="book"){
						document.getElementById("btn1_content").style.display="block";
						document.getElementById("btn2_content").style.display="none";
						document.getElementById("btn3_content").style.display="none";
						document.getElementById("info").style.color="black";
						document.getElementById("info").style.borderBottomStyle="none";
						document.getElementById("review").style.color="black";
						document.getElementById("review").style.borderBottomStyle="none";

					}
					if(tc.id =="info"){
						document.getElementById("btn1_content").style.display="none";
						document.getElementById("btn3_content").style.display="none";
						document.getElementById("btn2_content").style.display="block";
						document.getElementById("book").style.color="black";
						document.getElementById("book").style.borderBottomStyle="none";
						document.getElementById("review").style.color="black";
						document.getElementById("review").style.borderBottomStyle="none";
						
					} 
					if(tc.id=="review"){
						document.getElementById("btn1_content").style.display="none";
						document.getElementById("btn2_content").style.display="none";
						document.getElementById("btn3_content").style.display="block";
						document.getElementById("book").style.color="black";
						document.getElementById("book").style.borderBottomStyle="none";
						document.getElementById("info").style.color="black";
						document.getElementById("info").style.borderBottomStyle="none";
					
					}
				}
			</script>
            
            <form>
			<br>
			<br>
			<!-- <객실안내/예약 탭> -->
			<div id="btn1_content">
				<div style="width: 1100px; height: 60px; padding:5px 10px 5px 10px;display: flex;justify-content: space-around; background-color: white;">
					<!-- 예약일자 입력 -->
					<div style="display: flex; ">
						<h4 style="margin: 15px;">입실일</h4>
						<input type="date">
					</div>
					<div style="display: flex; ">
						<h4 style="margin: 15px;">퇴실일</h4>
						<input type="date">
					</div>
					<div style="display: flex;">
						<h4 style="margin : 15px;">체크인 </h4>
						<input type="time">
					</div>
					<div style="text-align: left;">
						<p>체크인 가능시간</p>
						<p>11:00 이후</p>
					</div>
				<!-- //예약일자 입력 -->
				</div>
				</form>
				<hr>
				<center>
					<!-- 객실정보 -->
					<div class="detailList" > 
						<div class="detailImg" style="background: url(../userWebFront/images/pc1.jpg) no-repeat; background-size: 100%;" ></div>
						<div class="detailInfo" >
							<div><h3>더조은컴퓨터아카데미 강남점</h3></div>
							<br><br>
							<div style="display: flex;">
								<div style="width: 40%;">가격</div>
								<div style="margin-left: 40px; width: 50%;">10000원 / 1박</div>
							</div>
							<hr>
							<div style="display: flex;"onclick="location.href='#pop01';">
								<button class="info_btn" >객실이용안내 ></button>
							</div>
							<hr>
							<div >
								<button class="detail_btn" onclick="location.href='payment.html';">예약하기</button>
							</div>
						</div>
					</div>
					<div class="detailList" > 
						<div class="detailImg" style="background: url(../userWebFront/images/pc2.jpg) no-repeat; background-size: 100%;" ></div>
						<div class="detailInfo" >
							<div><h3>더조은컴퓨터아카데미 강남별관</h3></div>
							<br><br>
							<div style="display: flex;">
								<div style="width: 40%;">가격</div>
								<div style="margin-left: 40px; width: 50%;">25000원 / 1박</div>
							</div>
							<hr>
							<div>
								<button class="info_btn" onclick="location.href='#pop01'" >객실이용안내 ></button>
							</div>
							<hr>
							<div onclick="location.href='payment.html';">
								<button class="detail_btn">예약하기</button>
							</div>
						</div>
					</div>
					<!--// 객실정보 -->
				</center>
			</div>
			<!-- 숙소상세정보 -->
			<div id="btn2_content"class="accordion vertical" style="display: none;">
				<ul>
					<li>
						<input type="checkbox" id="checkbox-1" name="checkbox-accordion" />
						<label for="checkbox-1">기본정보</label>
						<div class="content">
							<h3>주변정보</h3>
							<p>- 두물머리 부근</p>
							<h3>공지사항</h3>
							<p>- 성수기 : 7월 15일 ~ 9월21일</p>
							<p>- 전객실 금연(적발 시 퇴실조치, 환불 불가)</p>
							<h3>기본정보</h3>
							<p>- 입실 : 15:00 | 퇴실 : 11:00</p>
							<p>- 무료 Wi-Fi</p>
							<h3>객실정보</h3>
							<p>- 흠..?</p>
							<h3>취소 및 환불 규정</h3>
							<p>- 숙박일 기준 10일전 : 100% 환불</p>
							<p>- 숙박일 기준 5일전 : 50% 환불</p>
							<p>- 숙박일 기준 1일전 ~ 당일 및 No-show : 환불불가</p>
							<p>- 취소, 환불 시 수수료가 발생할 수 있습니다.</p>
							<h3>확인사항 및 기타</h3>
							<p>- 최대 인원 초과시 입실이 불가합니다.</p>
							<p>- 보호자 동반업ㅅ는 미성년자는 이용하실 수 없습니다.</p>
							<p>- 해당 이미지는 실제와 상이 할 수 있습니다.</p>
							<p>- 위의 정보는 펜션의 사정에 따라 변경될 수 있습니다.</p>
							<p>- 성수기 기간동안 일부 객실의 경우 요금변동이 있을 수 있습니다.</p>
						</div>
					</li>
					<hr>
					<li>
						<input type="checkbox" id="checkbox-2" name="checkbox-accordion" />
						<label for="checkbox-2">편의시설 및 서비스</label>
						<div class="content2">
							<p>수영장 / 와이파이 / 픽업가능 / BBQ / TV / 욕실용품</p>
						</div>
					</li>
					
				</ul>
			</div>
			<hr>
            <!-- //숙소상세정보 -->

			<!-- 리뷰 -->
			<div id="btn3_content" style="display: none;">
                <div style="margin: 0 auto;">
                    <br>
                    <h3>만족해요</h3>
                    <br>
                        <div style="display: flex; width: 180px; margin: 0 auto;">
                            <div class="reviewStar" ></div>
                            <div  style="margin: 0 auto; width: 50px"><h3>8.7</h3></div>
                            
                        </div>
                    <br>
                     <p>
                        전체리뷰  :  100개 | 제휴점 답변  :  99개
                    </p>
                </div>
                <hr>   
                <ul class = reviewWrap>
                    <li>
                        <div class="guestReview">
                            <div class="topReview" style="text-align: center;">베스트리뷰</div>
                            <div class="reviewTitle">
                                <div>
                                    <h4><strong>여기만한 곳은 어디에도 없을거에요.</strong></h4>
                                </div>
                                <div class="like" onclick="alert('이게 최선일까? 색깔도 바꿀예정');"></div>
                                <div><p>160</p></div>
                            </div>
                            <div class="reviewScore">
                                <h5>별표시가 들어갈 거에요</h5>
                            </div>
                            <div class="suksoName" >
                                <b>[조식 1+1 패키지] 슈페리어 트윈 객실 이용 · 햇살02</b>
                            </div>
                            <div class=reviewContext>
                                <p>여기 너무 좋았어요 <br>다음에 또 오고 싶어요!!<br>최고링</p>
                            </div>
                            <div class=reviewPicture>
                                사진첨부예정
                            </div>
                        </div>
                        <!-- <div class="hostAnswer">
                            <div class="hostAnswerTitle">
                                <Strong>답변 제목입니다</Strong>
                            </div> 
                            <div class="hostAnswerContext">
                                <p>답변 내용입니다.<br>다음에 또 이용해주세요~ <br> 감사합니다~</p>
                            </div>
                        </div> -->
                        
                    </li>
                    <hr>
                    <li>
                        <div class="guestReview">
                            <div class="reviewTitle">
                                <div>
                                    <h4><strong>일반리뷰</strong></h4>
                                </div>
                                <div class="like"></div>
                                <div><p>7</p></div>
                            </div>
                            <div class="reviewScore">
                                <h5>별표시가 들어갈 거에요</h5>
                            </div>
                            <div class="suksoName" >
                                <b>객실타입 :슈페리어 트리플 객실 이용 · 햇살02</b>
                            </div>
                            <div class=reviewContext>
                                <p>여기 너무 좋았어요 <br>다음에 또 오고 싶어요!!<br>최고링</p>
                            </div>
                        </div>
                        <!-- <div class="hostAnswer">
                            <div class="hostAnswerTitle">
                                <Strong>두번쨰 답변 제목입니다</Strong>
                            </div> 
                            <div class="hostAnswerContext">
                                <p>두번쨰 답변 내용입니다.<br>다음에 또 이용해주세요~ <br> 감사합니다~</p>
                            </div>
                        </div> -->
                    </li>
    
                </ul>
                <hr>
                <!-- //리뷰내용 -->
            </div>
			<!-- //리뷰 -->
        </center>
		<div id="pop01" class="overlay">
			<div class="popup">
				<a href="#none" class="close">&times;</a>
				<strong style="text-align: center;">객실 이용 안내</strong>
				<br>
				<section>
					<p>기본정보</p>
					<ul>
						<li>2인 기준 최대 2인</li>
						<li>객실 + 욕실 / 7.56평</li>
					</ul>
				</section>
				<hr>
				<section>
					<p>편의시설</p>
					<ul>
						<li>TV,개인금고,냉장고,미니바,욕실용품</li>
					</ul>
				</section>
				<hr>
				<section>
					<p>선택날짜</p>
					<ul>
						<li>05월 07일 ~ 05월 08일</li>
					</ul>
				</section>
				
			</div>
		</div>
    </div>
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