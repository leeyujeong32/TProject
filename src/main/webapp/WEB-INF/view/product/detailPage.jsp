<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/TProject/css/reset.css"/>
    <link rel="stylesheet" href="/TProject/css/common.css"/>
    <link rel="stylesheet" href="/TProject/css/contents.css"/>
    <link rel="stylesheet" href="/TProject/css/detailPage.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
	<script>
	function checknum(num){
		var number = Number(num.value);
		var maxNum = Number(num.dataset.limit);
		if(number > maxNum){
			number=0;
		}
		num.value=number;
	}
	function autoTotal(){
		var price=$('input[name=price]').val();
		var price2=$('input[name=price2]').val();
//		console.log(price);
		var n = $('input[name=num]').val();
		var n2 = $('input[name=num2]').val();
		console.log(typeof(n));
		var bid_price=price * n;
		var total2=price2 * n2;
		console.log(bid_price);
		console.log(total2);
		$('input[name=bid_price]').val(bid_price);
		$('input[name=total2]').val(total2);
	}
	function login(){
		alert('로그인후 사용가능합니다');
		location.href='/TProject/user/login.do';
	}
	function nowBid(){
    	if($("#num").val().trim() == ''){
    		alert('수량을 입력해 주세요');
    		$("#num").focus();
    		return;
    	}
    	$("#nowbid").submit();
    }
	</script>
</head>
<body>
	<div class="wrap">
        <%@ include file="/WEB-INF/view/include/header.jsp" %>
        <div class="section_1">
            <h2 class="title">${data.title}</h2>
        </div>
        <div class="section_2">
            <div class="content_1" style="border: 1px solid #000;">
                <img src="${data.thumbnail}" width="300px" height="300px">
            </div>
            <div class="content_2" style="border: 1px solid #000;">
                <div class="directbid_price">
                    즉시 낙찰가 (${data.price})
                </div>
                <div class="infoBox">
                    <table class="info">
                        <tr>
                            <td class="th">상품 번호</td>
                            <td>${data.itemid}</td>
                        </tr>
                        <tr>
                            <td class="th">상품 상태</td>
                            <td>${data.conditions}</td>
                        </tr>
                        <tr>
                            <td class="th">종료 날짜</td>
                            <td><fmt:formatDate value="${data.endtime}" pattern="yyyy-MM-dd"/></td>
                        </tr>
                        <tr>
                            <td class="th">남은 수량</td>
                            <td>${data.quantity }</td>
                        </tr>
                    </table>
                </div>
                <div class="priceBox">
                	<form name="nowbid" id="nowbid" action="../bidder.do" method="post">
                	<input type="hidden" name="itemid" id="itemid" value="${data.itemid}"/>
                    <table class="price" style="width: 270px;">
                        <tr>
                            <td class="th">즉시 낙찰가</td>
                            <td><input type="text" name="price" value="${data.price}" style="width: 70px; text-align:right;"readonly="readonly"></td>
                        </tr>
                        <tr>
                            <td class="th">수량</td>
                            <td><input type="text" name="num" id="num" value="1" data-limit="${data.quantity}" onkeyup="checknum(this);autoTotal();" style="width: 70px; text-align:right;"></td>
                        </tr>
                        <tr>
                            <td class="th">총 금액</td>
                            <td><input type="text" name="bid_price" id="bid_price" value="${data.price*1}" readonly="readonly" style="width: 70px; text-align:right;"></td>
                        </tr>
                    </table>
                    <c:if test="${!empty memberInfo }">
                        	<input type="button" class="btn" onclick="nowBid();" style="width: 250px;" value="즉시 낙찰">
                    </c:if>
                    <c:if test="${empty memberInfo }">
                   	 	<input type="button" class="btn" onclick="login();" style="width: 250px;" value="즉시 낙찰">
                    </c:if>
                </form>
                </div>
            </div>
            <div class="content_3" style="border: 1px solid #000;">
                <div class="endtime">
                    남은 종료 시간
                </div>
                <div class="productBox">
                    <table class="price">
                        <tr>
                            <td class="th">현재 가격</td>
                            <td><input type="text" name="price2" value="${data.price}" style="width: 70px; text-align:right;"readonly="readonly"></td>
                        </tr>
                        <tr>
                            <td class="th">수량</td>
                            <td><input type="text" name="num2" value="1" onkeyup="autoTotal();" style="width: 70px; text-align:right;"></td>
                        </tr>
                        <tr>
                            <td class="th">총 금액</td>
                            <td><input type="text" name="total2" value="${data.price*1}" readonly="readonly" style="width: 70px; text-align:right; "></td>
                        </tr>
                    </table>
                    <input type="button" class="btn" style="width: 250px;" value="일반 낙찰">
                </div>
            </div>
            
        </div>
        <div class="section_3">
            <div class="content_1" style="border: 1px solid #000;">
                <jsp:include page="detail/${data.itemid}.jsp"/>
            </div>
        </div>
        <%@ include file="/WEB-INF/view/include/footer.jsp" %>
    </div>
</body>
</html>