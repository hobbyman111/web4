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

<link rel="shortcut icon" type="image/x-icon" href="../resources/images/favicon.png"/>
<link rel="stylesheet" href="../resources/plugins/themefisher-font/style.css">
<link rel="stylesheet" href="../resources/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/plugins/animate/animate.css">
<link rel="stylesheet" href="../resources/plugins/slick/slick.css">
<link rel="stylesheet" href="../resources/plugins/slick/slick-theme.css">
<link rel="stylesheet" href="../resources/css/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		$("#logoutBtn").on("click", function(){
			location.href="member/logout";
		})
		$("#registerBtn").on("click", function(){
			location.href="register";
		})
		$("#memberUpdateBtn").on("click", function(){
			location.href="memberUpdateView";
		})
		$("memberDeleteBtn").on("click", function(){
			location.href="memberDeleteView";
		})
	})
</script>
<style>
.regcss{
	color: #fff;
	background-color: gray;
	border-color: white;
	width: 100px;
	height: 300px;
}
.newLine{
	margin-top: -30px;
	margin-bottom: 20px;
}
</style>
<body>
<form name="homeForm" method="post" action="/member/login">

<section class="signin-page account">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="block text-center">
					<a class="logo" href="index.html">
						<img src="../resources/images/logo.png" alt="">
					</a>
					<div class="newLine">
					<h2 class="text-center">Welcome Back</h2>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="ID" id="m_id" name="m_id">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="Password" id="m_pw" name="m_pw">
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-main text-center" id="submint">Login</button>
					</div>
					<div>
						<c:if test="${msg == false}">
							<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
						</c:if>
					</div>
					<p class="mt-20">회원가입 하시겠습니까 ? &nbsp;<button id="registerBtn" class="regcss" type="button">Sign up</button></p>
				</div>
			</div>
		</div>
	</div>

</section>
</form>
</body>
</html>