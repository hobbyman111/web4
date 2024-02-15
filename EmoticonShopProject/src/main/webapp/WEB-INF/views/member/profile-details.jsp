<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이모티콘샵</title>
<!-- Mobile specific Metas -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Construction Html5 Template">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
<meta name="author" content="Themefisher">
<meta name="generator" content="Themefisher Constra HTML Template v1.0">

<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
<link rel="shortcut icon" type="image/x-icon" href="../resources/images/favicon.png"/>
<link rel="stylesheet" href="../resources/plugins/themefisher-font/style.css">
<link rel="stylesheet" href="../resources/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/plugins/animate/animate.css">
<link rel="stylesheet" href="../resources/plugins/slick/slick.css">
<link rel="stylesheet" href="../resources/plugins/slick/slick-theme.css">
<link rel="stylesheet" href="../resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
	$(document).ready(function(){
		$("#logoutBtn").on("click", function(){
			location.href="/member/logout";
		})
		$("#registerBtn").on("click", function(){
			location.href="/member/register";
		})
		$("#memberUpdateBtn").on("click", function(){
			location.href="/member/member-update-view";
		})
		$("#memberDeleteBtn").on("click", function(){
			location.href="/member/member-delete-view";
		})
	})
</script>
<style>
.custom-btn{
	width: 90px;
	height: 40px; 
	color:  #fff;
	border-radius: 5px;
	padding: 10px 25px;
	font-family: 'Lato', sans-serif;
	font-weight: 500;
	background: transparent;
	cursor: pointer;
	transition: all 0.3s ease;
	position: relative;
	display: inline-block;
	box-shadow: inset 2px 2px 2px 0px rgba(255,255,255,.5),
	7px 7px 20px 0px rgba(0,0,0,.1),
	4px 4px 5px 0px rgba(0,0,0,.1);
	outline: none;
	left : 10px;
}
/* 4 */
.btn-4 {
	background-color: #4dccc6;
	background-image: linear-gradient(315deg, #4dccc6 0%, #96e4df 74%);
	line-height: 42px;
	padding: 0;
	border: none;
}
.btn-4:hover {
	background-color: #89d8d3;
	background-image: linear-gradient(315deg, #89d8d3 0%, #03c8a8 74%);
}
.btn-4 span {
	position: relative;
	display: block;
	width: 100%;
	height: 100%;
}
.btn-4:before,
.btn-4:after {
	position: absolute;
	content: "";
	right: 0;
	top: 0;
	box-shadow: 4px 4px 6px 0 rgba(255,255,255,.9),
	-4px -4px 6px 0 rgba(116,125,136,.2),
	inset -4px -4px 6px 0 rgba(255,255,255,.9),
	inset 4px 4px 6px 0 rgba(116,125,136,.3);
	transition : all 0.3s ease;
}
.btn-4:before {
	height: 0%;
	width: .1px;
}
.btn-4:after{
	width: 0%;
	height: .1px;
}
.btn-4:hover:before{
	height: 100%;
}
.btn-4:hover:after{
	width: 100%;
}
.btn-4 span:before,
.btn-4 span:after {
	position: absolute;
	content: "";
	left: 0;
	bottom: 0;
	box-shadow: 4px 4px 6px 0 rgba(255,255,255,.9),
	-4px -4px 6px 0 rgba(116,125,136,.2),
	inset -4px -4px 6px 0 rgba(255,255,255,.9),
	inset 4px 4px 6px 0 rgba(116,125,136,.3);
	transition : all 0.3s ease;
}
.btn-4 span:before {
	width: .1px;
	height: 0%;
}
.btn-4 span:after {
	width: 0%;
	height: .1px;
}
.btn-4 span:hover:before {
	height: 100%;
}
.btn-4 span:hover:after{
	width: 100%
}
</style>
</head>
<body id="body">
<!-- Start Top Header Bar -->
<section>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-xs-12 col-sm-4"></div>
			<div class="col-md-4 col-xs-12 col-sm-4">
				<!-- Site Logo -->
				<div class="logo text-center">
					<a href="/shop/">
						<!-- replace logo here -->
						<svg width="210px" height="30px" viewBox="0 0 300 30" version="1.1" xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink">
						<g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" font-size="41"
						font-family="AustinBold, Austin" font-weight="bold">
						<g id="Group" transform="translate(-108.000000, -297.000000)" fill="#000000">
						<text id="AVIATO">
						<tspan x="108.94" y="325">Emoticon<tspan font-weight="500">Shop</tspan></tspan>
						</text>
						</g>
						</g>
						</svg>
					</a>
				</div>
			</div>
			<div class="col-md-4 col-xs-12 col-sm-4">
				<!-- Cart -->
				<ul class="top-menu text-right list-inline">
				<c:if test="${member.m_access == 1 }">
					<!-- Admin -->
					<li>
						<a href="/admin/">Admin</a>
					</li><!-- /Admin -->
				</c:if>
				<!-- Search -->
				<li class="dropdown search dropdown-slide">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" style="font-size: medium;">
					<i class="tf-ion-ios-search-strong"></i>&nbsp;Search</a>
					<ul class="dropdown-menu search-dropdown">
						<li>
							<form action="post"><input type="search" class="form-control" placeholder="이모티콘 검색"></form>
						</li>
					</ul>
				</li><!-- Search -->
				<!-- My -->
				<!-- session null일 경우 login page로 이동 -->
				<li class="dropdown profile-nav dropdown-slide">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" style="font-size: medium;">
					<i class="tf-ion-android-person"></i>&nbsp;</a>
				<div class="dropdown-menu profile-dropdown">
				<!-- info -->
				<div class="media">
					<div class="media-body">
						<c:if test="${member == null }">
						<p>로그인해주세요</p>
						<ul class="text-center profile-buttons">
						<li><a href="/member/login">로그인</a></li>
						</ul>
						</c:if>
						<c:if test="${member != null }">
							<div class="profile">
							&nbsp;<h4>${member.m_id}님</h4>
							</div>&nbsp;&nbsp;
							<h5>${member.m_email }</h5>
							<ul class="text-center profile-buttons">
								<li><button id="logoutBtn" type="button" class="btn btn-small" style="font-size: small; margin-bottom: 20px">로그아웃</button></li>
								<li><a href="/member/profile-details?m_id=${member.m_id}" class="btn btn-small" style="font-size: small;">마이페이지</a></li>
							</ul>
						</c:if>
					</div>
				</div><!-- /info -->
				<ul class="text-center profile-buttons">
				</ul>
				</div>
				</li><!-- /My -->
				</ul><!-- /.nav .navbar-nav .navbar-right -->
			</div>
		</div>
	</div>
</section> <!-- End Top Header Bar -->

<!-- Main Menu Section -->
<section class="menu">
	<nav class="navbar navigation">
		<div class="container">
			<div class="navbar-header">
				<h2 class="menu-title">Main Menu</h2>
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
				aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div><!-- /.navbar-header -->
			
			<!-- Navbar Links -->
			<div id="navbar" class="navbar-collapse collapse text-center">
				<ul class="nav navbar-nav">
					<!-- Home -->
					<li class="home-tab">
						<a href="/shop/" style="font-size: large; text-decoration: underline;
						text-underline-offset: 8px;text-decoration-thickness: 2px;">홈</a>
					</li><!-- Home -->
					<!-- 신규 -->
					<li class="new-tab">
					<a href="/shop/newpage" id="new" data-delay="350" style="font-size: large;color: gray;">신규</a>
					</li><!-- /신규 -->
					<!-- 인기 -->
					<li class="popular-tab">
					<a href="/shop/poppage" id="pop"  data-delay="350" style="font-size: large;color: gray;">인기</a>
					</li><!-- /인기 -->
				</ul><!-- /.nav .navbar-nav -->
			</div>
				<!-- .navbar-collapse -->
		</div><!-- /.container -->
	</nav>
</section>

<section class="page-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="content">
					<h1 class="page-name">MyPage</h1>
					<ol class="breadcrumb">
						<li><a href="index">Home</a></li>
						<li class="active">my account</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="user-dashboard page-wrapper">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<ul class="list-inline dashboard-menu text-center">
					<li><a href="/member/order?m_no=<c:out value='${my.m_no}'/>">Orders</a></li>
					<li><a class="active" href="/member/profile-details?m_id=${member.m_id}">Profile Details</a></li>
				</ul>
				<div class="dashboard-wrapper dashboard-user-profile">
					<div class="media">
						<div class="pull-left text-center" href="#!">
						&nbsp;<img class="media-object user-img" src="../resources/images/profile-img.png" alt="Image">
						</div>
						<c:if test="${member != null }">
						<div class="media-body">
							<ul class="user-profile-list">
								<li><span>ID:</span>${member.m_id}</li>
								<li><span>Full Name:</span>${member.m_name}</li>
								<li><span>Email:</span>${member.m_email}</li>
								<li><span>Point:</span>${member.m_point}</li>
							</ul>
						</div>
						</c:if>
						<button class="custom-btn btn-4" id="memberUpdateBtn" type="button">회원정보수정</button>
						<button class="custom-btn btn-4" id="memberDeleteBtn"><span>회원탈퇴</span></button>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="../includes/shop-footer.jsp" %>
</body>
</html>