<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="header">
	<div class="size">
	    <div class="logo"><a href="/TProject/index.do"><img src="/TProject/img/logo.png"></div>
	    <div class="searchform">
	        <div class="search_form">
	            <select name="s_site" id="s_search_top">
	                <option value="all">전체</option>
	                <option value="japan" >일본</option>
	                <option value="usa" >미국</option>
	            </select>
	            <select name="s_type" id="s_search_top_sub">
	                <option value="title">상품명</option>
	                <option value="title">상품코드</option>
	            </select>
	            <span class="placeholder" onmousedown ="$('#tags').focus();">
		            <input type="text" name="q" id="tags" value="" placeholder="검색어를 입력해주세요." />
		            <input button type="submit" value="검색" ></button>
		        </span>
		    </div>
		</div>
		<div class="login">
            <c:if test="${empty memberInfo }">
	            <a href="/TProject/user/login.do">로그인</a> | 
	            <a href="/TProject/user/regist.do">회원가입</a> |
            </c:if>
            <c:if test="${!empty memberInfo }">
	            <a href="/TProject/user/logout.do">로그아웃</a> | 
	            <a href="/TProject/user/mypage.do">마이페이지</a> |
            </c:if>
            <a href="/TProject/cs/cs_center.do">고객센터</a> |
            <a href="/TProject/user/cart.do">장바구니</a> 
        </div>
    </div>
    <div class="autoKeyword">
        <ul class="keywordList"></ul>
    </div>
    <div class="hotKeyword">
        <strong><img style="margin-top:-3px;" src="//static.bidbuy.co.kr/v6/common/images/search.png" alt="HOT" />인기검색어</strong>
        <a href="/search?s_site=all&s_type=title&q=Cb0120">Cb0120</a>
        <a href="/search?s_site=all&s_type=title&q=wackomaria">wackomaria</a>
        <a href="/search?s_site=all&s_type=title&q=fanuc">fanuc</a>
        <a href="/search?s_site=all&s_type=title&q=mama%20chapp%20toy">mama chapp toy</a>
        <a href="/search?s_site=all&s_type=title&q=Amano%20Takeru">Amano Takeru</a>
        <a href="/search?s_site=all&s_type=title&q=gabor">gabor</a>
    </div>
</div>
<div class="menu">
    <ul class="depth1">
        <li>
            <a href="">고객센터</a>
            <ul class="depth2">
                <li><a href="">1:1질문</a></li>
                <li><a href="">자주하는 질문</a></li>
                <li><a href="">고객 후기</a></li>
                <li><a href="">환율 보도자료</a></li>
            </ul>
        </li>
        <li>
            <a href="">사이트 소개</a>
            <ul class="depth2">
                <li><a href="">공지사항</a></li>
                <li><a href="">배송 및 통관 안내</a></li>
                <li><a href="">경매방식 설명</a></li>
            </ul>
        </li>
        <li>
            <a href="">이벤트</a>
            <ul class="depth2">
                <li><a href="">진행중인 이벤트</a></li>
                <li><a href="">종료된 이벤트</a></li>
            </ul>
        </li>
        <li>
            <a href="/TProject/product/index.do">경매하기</a>
            <ul class="depth2">
                <li><a href="">일본</a></li>
                <li><a href="">미주</a></li>
            </ul>
        </li>
        <li>
            <a href="">마이페이지</a>
            <ul class="depth2">
                <li><a href="">출석체크</a></li>
                <li><a href="">구매내역</a></li>
                <li><a href="">정보수정</a></li>
            </ul>
        </li>
        <li>
            <a href="">로그인</a>
        </li>
        
    </ul>
</div>
