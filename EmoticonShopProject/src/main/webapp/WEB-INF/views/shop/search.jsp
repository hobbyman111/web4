<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/shop-header.jsp"%>
<div class="detail_mainwrap">
</div>
<c:forEach items="${product }" var="product">
<div class="detail_main">
<img alt="이모티콘" class=""
		src="../resources/preview/<c:out value='${product.p_image}'/>"
		width="150px" height="150px">
	<h1 class="detail_h3">
		<c:out value="${product.p_name}" />
	</h1>
	<div class="detail_pb">
		<dl class="detail_price">
			<dt>판매가격</dt>
			<dd>
				<em class="num_g"><c:out value="${product.p_price }" /></em>&nbsp;원
			</dd>
		</dl>
		<a class="link_new" href="/shop/detailpage?p_no=${product.p_no}">자세히보기</a>
		<input type="hidden" name="p_no" value="${product.p_no}">
	</div>
</div>
<br><br>
</c:forEach>
<%@include file="../includes/shop-footer.jsp"%>