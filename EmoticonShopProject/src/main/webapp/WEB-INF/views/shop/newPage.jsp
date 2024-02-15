<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="../includes/shop-header.jsp" %>

<!-- Main Menu Section -->
<section class="menu">
	<nav class="navbar navigation">
		<div class="container">
			<div class="navbar-header">
				<h2 class="menu-title">메인 메뉴</h2>
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
				aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>	
					<span class="icon-bar"></span>	
					<span class="icon-bar"></span>	
				</button>
			
			</div><!-- / .navbar-header -->
			
			<!-- Navbar Links -->
			<div id="navbar" class="navbar-collapse collapse text-center">
				<ul class="nav navbar-nav">
					<!-- Home -->
					<li class="home-tab">
					<a href="/shop/" id="home" style="font-size: large;text-decoration: underline;
					text-underlinde-offset: 8px;text-decoration-thickness: 2px;">홈</a>
					</li><!-- /Home -->
					<!-- 신규 -->
					<li class="new-tab">
					<a href="/shop/newpage" id="new" data-delay="350" style="font-size: large;color: gray;">신규</a>
					</li><!-- 신규 -->
					<!-- 인기 -->
					<li class="popular-tab">
					<a href="/shop/poppage" id="pop" data-delay="350" style="font-size: large;color: gray;">인기</a>
					</li><!-- /인기 -->
				</ul><!-- .nav .navbar-nav -->
			</div>
			<!-- navbar-collapse -->
		</div><!-- /.container -->
	</nav>
</section>

<!-- banner -->
<div class="new-banner">
	<img src="../resources/images/newbanner.png" width="100%" height="auto"/>
</div>

<div id="content-wrap">
<!-- main section -->
<section class="main section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="title text-center">
					<ul class="list_new">
					<c:forEach items="${list}" var="product">
						<li class="">
							<div class="link_new new_tit">
								<a class="link_new" href="/shop/detailpage?p_no=${product.p_no}">
									<div class="area_tit">
										<strong class="tit_product">
											<span class="txt_tit">
												<c:out value="${product.p_name}"/>
											</span>
										</strong>
										<p><c:out value="${product.p_creator}"/></p>
									</div>
								</a>
							</div>
							<a class="link_new new_img" aria-label="이모티콘" href="/shop/detailpage?p_no=${product.p_no}">
								<ul class="area_newemoticon">
									<li>
										<img src="../resources/preview/<c:out value='${product.p_image}'/>" width="140px" height="140px"/>
									</li>
								</ul>
							</a>
							</li>
					</c:forEach>
					</ul>
				</div>
			</div>
			<div class="col-md-6">
				<div class="category-box category-box-2">
				</div>
			</div>
		</div>
	</div>
</section>
</div>
<%@include file="../includes/shop-footer.jsp" %>