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
<div class="hero-slider">
	<div class="slider-item th-fullpage hero-area" style="background-image: url(../resources/images/slider/slider1.png);">
		<div class="container">
		</div>
	</div>
	<div class="slider-item th-fullpage hero-area" style="background-image: url(../resources/images/slider/slider2.png);">
		<div class="container">
		</div>
	</div>
</div>

<div id="content-wrap">
<!-- main section -->
	<section class="main section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title text-center">
						<div class="wrap_newemoticon"> <!-- 메인 신규이모티콘 시작 -->
							<h2 class="tit_section">
							<a class="link_menu" href="/shop/newpage">
							<h3>신규 이모티콘
							<svg xmlns="http://www.w3.org/2000/svg" width="25" height="16" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
							<path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
							</svg>
							</h3>
							</a>
							</h2>
							<div class="area_listproduct">
								<div class="list_product">
								<c:forEach items="${plist}" var="product">
								<div class="list_unit">
									<a class="link_emot" href="/shop/detailpage?p_no=${product.p_no}">
										<span class="inner_emot">
											<img src="../resources/preview/<c:out value='${product.p_image}'/>" class="img_emot img_default"
											width="140px" height="140px" alt=""/>
										</span>
										<h2 class="tit_product"><c:out value="${product.p_name}"/></h2>
									</a>
								</div>
								</c:forEach>
								</div>
							</div>
						</div><!-- 메인 신규이모티콘 끝 -->
						
						<!-- 메인 인기이모티콘 시작 -->
						<div class="wrap_hottab">
							<h2 class="tit_section">
								<a class="link_menu" href="/shop/poppage">
								<br><br><br><br><br><br>
								<h3>인기 이모티콘
								<svg xmlns="http://www.w3.org/2000/svg" width="25" height="16" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
							<path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
							</svg>
								</h3>
								</a>
							</h2>
							<div class="area_hot">
								<ol class="list_double"><!-- 첫번째 이모티콘 세로 라인 시작 -->
									<c:forEach items="${deslist}" var="product" varStatus="status">
										<li class="testli"><!-- 1위 이모티콘 시작 -->
										 <span class="txt_num num_highlight"><c:out value="${status.count}"/></span>
										 <div class="double_tit">
										  <a class="link_double" href="/shop/detailpage?p_no=${product.p_no}">
										  	<div class="area_tit">
										  		<strong class="tit_product">
										  			<span class="area_icons"></span>
										  			<span class="txt_tit"><c:out value="${product.p_name}"/></span>
										  		</strong>
										  		<p class="txt_tit"><c:out value="${product.p_creator}"/></p>
										  	</div>
										  </a>
										 </div>
										 <a class="link_double double_img" href="/shop/detailpage?p_no=${product.p_no}">
										 	<div class="area_doubleemoticon">
										 		<img src="../resources/preview/<c:out value='${product.p_image}'/>" class="img_emo img_default"
										 		width="100px" height="100px" alt="popEmoticon">
										 	</div>
										 </a>
										 </li><!-- 1위 이모티콘 끝 -->
									</c:forEach>
								</ol><!-- 두번째 이모티콘 세로 라인 끝 -->
							</div>
						</div>
						<!-- 메인 인기이모티콘 끝 -->
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
