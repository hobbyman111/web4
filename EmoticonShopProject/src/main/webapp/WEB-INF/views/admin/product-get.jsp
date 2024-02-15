<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<%@include file="../includes/admin-header.jsp" %>
	<main id="main" class="main">
		<div class="mt-3 px-5 pagetitle">
			<h4>상품 상세</h4>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">판매 관리</a></li>
					<li class="breadcrumb-item">상품 조회</li>
					<li class="breadcrumb-item active">상품 상세</li>
				</ol>
			</nav>
		</div><!-- End Page Title -->
		
		<section class="section">
			<div class="row">
				<div class="px-5 col-lg-12">
				
					<div class="px-3 card"> 
						<div class="card-body">
							<h5 class="py-4 card-title">Emoticon Info</h5>
							<!-- General Form Elements -->
							<form>
								<div class="row mb-5">
									<label for="profileImage" class="py-4 col-md-4 col-lg-3 col-form-label">대표이미지 </label>
									<div class="col-md-8 col-lg-9">
										<img src="../resources/preview/<c:out value="${product.p_image}"/>" alt="Profile" width="150px" height="150px">
									</div>
								</div>
								<div class="row mb-4">
									<label for="regdate" class="col-md-4 col-lg-3 col-form-label">상품 등록일</label>
									<label for="regdate" class="col-md-4 col-lg-3 col-form-label">
									<c:out value="${product.p_regdate }"/></label>
								</div>
								<div class="row mb-4">
									<label for="title" class="col-md-4 col-lg-3 col-form-label">상품명</label>
									<label for="title" class="col-md-4 col-lg-3 col-form-label">
									<c:out value="${product.p_name }"/></label>
								</div>
								<div class="row mb-4">
									<label for="price" class="col-md-4 col-lg-3 col-form-label">상품가격(KRW)</label>
									<label for="price" class="col-md-4 col-lg-3 col-form-label">
									<c:out value="${product.p_price }"/></label>
								</div>
								<div class="row mb-4">
									<label for="creator" class="col-md-4 col-lg-3 col-form-label">제작자</label>
									<label for="creator" class="col-md-4 col-lg-3 col-form-label">
									<c:out value="${product.p_creator }"/></label>
								</div>
								<div class="row mb-4">
									<label for="about" class="col-md-4 col-lg-3 col-form-label">기타사항</label>
									<div class="col-md-8 col-lg-9">
										<textarea name="about" class="form-control" id="about"
										 style="height: 100px;text-align:left;vertical-align: top"
										 readonly="readonly"><c:out value="${product.p_etc}"/></textarea>
									</div>
								</div>
								
								<div class="text-center py-3">
								<!-- 수정 버튼 -->
									<a href="product-modify?p_no=${product.p_no }" class="px-4 btn btn-success">Edit</a>&nbsp;
								<!-- 삭제 버튼 -->
									<a href="product-remove?p_no=${product.p_no }" class="px-3 btn btn-secondary">Delete</a>
								</div>
							</form><!-- End General Form Elements -->
						</div>
					</div>
				
				</div>
			</div>
		</section>
	</main><!-- End #main -->
<%@include file="../includes/admin-footer.jsp" %>
</body>
</html>