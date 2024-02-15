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
<script>
	$(document).ready(function(){
		//취소
		$(".cencle").on("click", function(){
			location.href="/";
		})
		
		$("#submit").on("click", function(){
			if($("#m_pw").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#m_pw").focus();
				return false;
			}
			if($("#m_name").val()==""){
				alert("성명을 입력해주세요.")
				$("#m_name").focus();
				return false;
			}
		});
		
		$("#cancel").on("click", function(){
			location.href="/member/profile-details?m_id=${member.m_id}"
		})
	})
</script>
<script>
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
		$("#memberDeleteBtn").on("click", function(){
			location.href="memberDeleteView";
		})
	})
</script>
<style>
.new-line{
margin-bottom: 40px;
}
</style>
<body id="body">
<section class="signin-page account">
<form action="/member/memberUpdate" method="post">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="block text-center">
					<a class="logo" href="/shop/">
					<img src="" alt="">
					<h1>Emoticon SHop</h1>
					</a>
					<div class="new-line">
					<h2 class="text-center">Membership modification</h2>
					</div>
					
					<form action="/member/memberUpdate" method="post">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="ID" id="m_id" name="m_id" value="${member.m_id}" readonly="readonly">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="Password" id="m_pw" name="m_pw" value="${member.m_pw}" readonly="readonly">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Username" id="m_name" name="m_name" value="${member.m_name}">
						</div>
						<div class="text-center">
							<button class="btn btn-success" type="submit" id="submit">회원정보수정</button>
							<button class="cencle btn btn-danger" type="button" id="cancel">취소</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	</form>
</section>
<script src="../resources/plugins/jquery/dist/jquery.min.js"></script>
<script src="../resources/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="../resources/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
<script src="../resources/plugins/instafeed/instafeed.min.js"></script>
<script src="../resources/plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
<script src="../resources/plugins/syo-timer/build/jquery.syotimer.min.js"></script>
<script src="../resources/plugins/slick/slick.min.js"></script>
<script src="../resources/plugins/slick/slick-animation.min.js"></script>
<script src="../resources/plugins/google-map/gmap.js"></script>
<script src="../resources/js/script.js"></script>
</body>
</html>