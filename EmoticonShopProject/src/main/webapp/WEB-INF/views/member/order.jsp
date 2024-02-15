<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
			</div><!-- /.navbar-header -->
			
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
						<li><a href="index">Home</a>
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
					<li><a class="active" href="/member/order">Orders</a></li>
					<li><a href="/member/profile-details?m_id=${member.m_id}">Profile Details</a></li>
				</ul>
				<div class="dashboard-wrapper user-dashboard">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>Order Id</th>
									<th>Date</th>
									<th>Items</th>
									<th>Total Price</th>
									<th>Status</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${morder}" var="order">
								<tr>
									<td><c:out value="${order.b_no}"/></td>
									<td><c:out value="${order.b_regdate}"/></td>
									<td><a href="/shop/detailpage?p_no=${order.p_no}"><c:out value="${order.p_name}"/></a></td>
									<td><c:out value="${order.p_price}"/></td>
									<td><span class="label label-primary">Completed</span></td>
									<td><a href="/shop/detailpage?p_no=${order.p_no}" class="btn btn-default">View</a></td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="../includes/shop-footer.jsp" %>