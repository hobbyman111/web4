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
</head>
<script>
	$(document).ready(function(){
		//취소
		$(".cencle").on("click", function(){
			location.href="/";
		})
		$("#submit").on("click", function(){
			if($("#m_id").val()==""){
				alert("아이디를 입력해주세요.");
				$("#m_id").focus();
				return false;
			}
			if($("#m_pw").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#m_pw").focus();
				return false;
			}
			if($("#m_pw2").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#m_pw2").focus();
				return false;
			}
			if($("#m_name").val()==""){
				alert("성명을 입력해주세요.");
				$("#m_name").focus();
				return false;
			}
			var idChkVal = $("#idChk").val();
			if(idChkVal == "N"){
				alert("중복확인 버튼을 눌러주세요.");
			} else if(idChkVal == "Y"){
				$("#regForm").submit();
			}
		})
	})
	
	function fn_idChk(){
		$.ajax({
			url : "/member/idChk",
			type : "post",
			dataType : "json",
			data : {"m_id" : $("#m_id").val()},
			success : function(data){
				if(data == 1){
					alert("중복된 아이디입니다.");
				} else if(data == 0){
					$("#idChk").attr("value", "Y");
					alert("사용가능한 아이디입니다.");
				}
			}
		})
	}
	
	$(function(){
		$("#alert-success").hide();
		$("#alert-danger").hide();
		$("input").keyup(function(){
			var m_pw = $("#m_pw").val();
			var m_pw2 = $("#m_pw2").val();
			if(m_pw != "" || m_pw != ""){
				if(m_pw == m_pw2){
					$("#alert-success").show();
					$("#alert-danger").hide();
					$("#submit").removeAttr("disabled");
				} else {
					$("#alert-success").hide();
					$("#alert-danger").show();
					$("#submit").attr("disabled", "disabled");
				}
			}
		})
	})
</script>
<style>
.idChk{
	color: #fff;
	background-color: gray;
	border-color: white;
	margin-left: 390px;
	margin-top: 10px;
	width: 100px;
}
</style>
<body>

<section class="signin-page account">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="block text-center">
					<a class="logo" href="/shop/">
					</a>
					<h2 class="text-center">Create Your Account</h2>
					<form action="/member/register" method="post" id="regForm">
						<div class="form-group">
							<input type="text" class="form-control" id="m_id" name="m_id" placeholder="ID">
							<button class="idChk" type="button" id="idChk" onclick="fn_idChk();" value="N">중복확인</button>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="m_pw" name="m_pw" placeholder="Password" required="required">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="m_pw2" name="m_pw2" placeholder="Confirm Password" required="required">
							<div class="form-group">
							<div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
							<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>
							</div>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="m_name" name="m_name" placeholder="Username">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="m_email" name="m_email" placeholder="Email">
						</div>
						
						<div class="text-center">
							<button class="btn btn-success" type="submit" id="submit">회원가입</button>
							<button class="cencle btn btn-danger" type="button">취소</button>
						</div>
					
					</form> 
					
					<p class="mt-20">이미 계정이 존재합니까?<a href="login"> Login</a></p>
				</div>
			</div>
		</div>
	</div>
</section>
</body>
</html>