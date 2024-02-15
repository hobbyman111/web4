<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jstl 포맷라이브러리 추가 -->
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="../includes/shop-header.jsp" %>

<script type="text/javascript">
	$(document).ready(function(){
		$("#logoutBtn").on("click", function(){
			location.href="/member/logout";
		})
		$("#registerBtn").on("click", function(){
			location.href="/member/register";
		})
		$("#memberUpdateBtn").on("click", function(){
			location.href="/member/member-update-view"
		})
		$("memberDeleteBtn").on("click", function(){
			location.href="/member/member-delete-view"
		})
	})
	
	function pointCheck(){
		var span_point = document.getElementById("m_point").innerText;
		var span_price = document.getElementById("p_price").innerText;
		var point = Number(span_point);
		var price = Number(span_price);
		var afterPoint = (point-price);
		var testPoint = afterPoint.toString();
		var x = document.getElementsByClassName("afterpoint")[0];
		x.innerText = testPoint;
	}
	
	function notApprove(){
		alert("포인트 잔액이 부족합니다.");
	}
	
	function isChecked(){
		var checkBox = document.getElementById('approve_agree1');
		var is_checked = checkbox.checked;
		
		if(!is_checked){
			alert("구매 동의에 체크해주세요.");
			event.preventDefault();
		}
	}
	
</script>

<div id="content-wrap">
	<!-- main section -->
	<section class="main section">
		<div class="container">
			<div class="row">
				<div class="approve-wrap">
					<form method="post" action="/buy/approve">
					 <div class="approve_body">
					  <div class="inner_body">
					   <div class="approve_left">
					    <div class="approve_thumb">
					     <div class="approve_tit">
					      <strong class="approve_tit_product">
					       <br><br><p class="txt_tit"><c:out value="${product.p_name}"/></p>
					      </strong>
					     </div>
					     <dl>
					      <dd class="screen_out" >가격</dd>
					      <dt class="item_price">
					       <em class="txt_price"><c:out value="${product.p_price}"/></em> 원
					      </dt>
					     </dl>
					    </div>
					    <div class="approve_img">
					     <img src="../resources/preview/<c:out value='${product.p_image}'/>" class="approve_emoticon" alt="이모티콘">
					    </div>
					   </div>
					   <div class="approve">
					 	<strong class="approve_order">결제금액	</strong>
					 	<div class="approve_price approve_price1">
					 	 <strong class="approve_tit_price">&nbsp;&nbsp;&nbsp;보유포인트&nbsp;</strong>
					 	 <span class="approve_txt_price" id="m_point">${member.m_point}<span class="approve_txt_unit"></span></span>원
					 	</div>
					 	<div class="approve_price approve_price12">
					 	 <strong class="approve_tit_price">&nbsp;최종 결제금액&nbsp;</strong>
					 	 <span class="approve_txt_price" id="p_price">${product.p_price}<span class="approve_txt_unit"></span></span>원
					 	</div>
					 	= <span style="font-size: 14px;">&nbsp;구매 후 잔여 포인트&nbsp;&nbsp;<span class="afterpoint">0</span></span><span style="font-size: 14px;">원</span>
					   </div>
					  </div>
					  <input type="hidden" name="m_no" value='<c:out value="${member.m_no}"/>'>
					  <input type="hidden" name="m_point" value='<c:out value="${member.m_point}"/>'>
					  <input type="hidden" name="p_no" value='<c:out value="${product.p_no}"/>'>
					  <input type="hidden" name="p_name" value='<c:out value="${product.p_name}"/>'>
					  <input type="hidden" name="p_price" value='<c:out value="${product.p_price}"/>'>
					  <input type="hidden" name="p_image" value='<c:out value="${product.p_image}"/>'>
					  
					  <div class="approve_agree">
					   <div class="chk_agree">
					    <input type="checkbox" id="approve_agree1" name="agree" class="approve_check">
					    <label for="approve_agree1" class="lab_agree">
					     <span class="ico_comm ico_orderagree"></span>상품을 구매 하시겠습니까?
					    </label>
					   </div>
					   <br>
					   <c:set var="price" value="${product.p_price}"/>
					   <c:set var="point" value="${member.m_point}"/>
					   <fmt:parseNumber var="point" type="number" value="${point}"/>
					   <fmt:parseNumber var="price" type="number" value="${price}"/>
					   
					   <c:choose>
					   	<c:when test="${point < price}">
					   		<button type="button" onclick="notApprove();" class="approve_buy">구매하기</button>
					   	</c:when>
					   	<c:otherwise>
					   		<button type="submit" onclick="isChecked();" class="approve_buy">구매하기</button>
					   	</c:otherwise>
					   </c:choose>
					  </div>
					 </div>
					</form>
				</div>
			</div>
			<div class="col-md-1">
				<div class="category-box">
				</div>
			</div>
		</div>
	</section>
</div>
<%@include file="../includes/shop-footer.jsp"%>