<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="../includes/shop-header.jsp" %>    
<script>
	function loginCheck(){
		alert("로그인 후 구매 가능합니다.")
	}
</script>

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

<div id="content-wrap">
<!-- main section -->
	<section class="main section">
		<div class="container">
			<div class="row">
				<div class="detail_mainwrap">
					<img alt="이모티콘" class="" src="../resources/preview/<c:out value='${product.p_image}'/>" width="150px" height="150px">
				</div>
				<div class="detail_main">
					<h1 class="detail_h3"><c:out value="${product.p_name}"/></h1>
					<div class="detail_pb">
					<dl class="detail_price">
						<dt>판매가격</dt>
						<dd>
							<em class="num_g"><c:out value="${product.p_price }"/></em>&nbsp;원
						</dd>
					</dl>
					<c:choose>
						<c:when test="${member == null }">
						<a class="approve_btn"><button type="button" onclick="loginCheck();" class="detail_buy">구매하기</button> </a>
						</c:when>
						<c:otherwise>
						<a class="approve_btn" href="/buy/approvepage?p_no=${product.p_no}&m_id=${member.m_id}"><button type="button" class="detail_buy">구매하기</button></a>
						</c:otherwise>
					</c:choose>
					<input type="hidden" name="m_id" value="${member.m_id}">
					<input type="hidden" name="p_no" value="${product.p_no}"> 
					</div>
				</div>
			</div>
			<ul class="list_img">
				<c:forEach items="${flist}" var="file">
				<li class="">
					<a class="link_emoticon" href="$">
						<img src="../resources/emoticons/<c:out value='${product.p_name}'/>/<c:out value='${file.i_name}'/>" class="img_emoticon" alt="이모티콘">
					</a>
				</li>
				</c:forEach>
			</ul>
		</div>
	</section>
</div>
<%@include file="../includes/shop-footer.jsp" %>