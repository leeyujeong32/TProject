<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="/TProject/css/reset.css"/>
    <link rel="stylesheet" href="/TProject/css/common.css"/>
    <link rel="stylesheet" href="/TProject/css/contents.css"/>
     <link rel="stylesheet" href="/TProject/css/product/main.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="wrap">
		<div class="header">
            <div class="size">
                <div class="logo"><img src="/TProject/img/logo.png"></div>
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
                    <a href="/TProject/user/login.do">로그인</a> | 
                    <a href="/TProject/user/join.do">회원가입</a>
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
        </div><!--  -->
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
                    <a href="">경매하기</a>
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
        <div class="body_wrap">
            <ul class="big_sub">
                <li><img src=""></li>
                <li> > <a href="">쇼핑몰</a>
                <li> > <a href="">${category}</a>
                <li> > <a href="">중 종류</a>
                <li> > <a href="">소 종류</a>
                <li><img src=""></li>
            </ul>
            <div class="choose_prod">
                <div class="type_display">
                    <ul class="mid_sub">
                        <li><a href="index.do?">Art</a></li>
                        <li><a href="">종류2</a></li>
                        <li><a href="">종류3</a></li>
                        <li><a href="">종류4</a></li>
                        <li><a href="">종류5</a></li>
                        <li><a href="">종류6</a></li>
                        <li><a href="">종류7</a></li>
                        <li><a href="">종류8</a></li>
                        <li><a href="">종류9</a></li>
                        <li><a href="">종류10</a></li>
                        <li><a href="">종류11</a></li>
                        <li><a href="">종류12</a></li>
                        <li><a href="">종류13</a></li>
                        <li><a href="">종류14</a></li>
                        <li><a href="">종류15</a></li>
                        <li><a href="">종류16</a></li>
                        <li><a href="">종류17</a></li>
                        <li><a href="">종류18</a></li>
                        <li><a href="">종류19</a></li>
                        <li><a href="">종류20</a></li>
                    </ul>      
                </div>
                <div class="options">
                    <div class="basic_info">
                        <div class="condition-seller">
                            <div class="condition">
                                <img src=""> 상태 &nbsp;&nbsp;&nbsp;
                                <input type="radio" name="condition" value="all">전체 &nbsp;
                                <input type="radio" name="condition" value="new">신품  &nbsp;
                                <input type="radio" name="condition" value="used">중고
                            </div>
                            <div class="seller">
                                <img src=""> 출품자 &nbsp;
                                <input type="radio" name="seller" value="all">전체 &nbsp;
                                <input type="radio" name="seller" value="store">스토어 &nbsp;
                                <input type="radio" name="seller" value="private_seller">개인
                            </div>
                        </div>
                        <div class="shipping">
                            <img src=""> 무료배송 &nbsp;&nbsp;
                            <input type="radio" name="shipping" value="all">전체&nbsp;
                            <input type="radio" name="shipping" value="free">무료배송
                        </div>
                    </div>
                    <div class="price">
                        <div class="price_options">
                            <img src=""> 금액 &nbsp;&nbsp;
                            <input type="radio" name="price" value="current">현재가&nbsp;
                            <input type="radio" name="price" value="bet">즉시낙찰가
                        </div>
                        <div class="price_range">
                            <input type="range" value="0" min="0" max="200,000" oninput="this.nextElementSibling.value = this.value">
                            <output>0</output>
                            <input id="price_button" type="button" value="검색">
                        </div>
                    </div>
                </div>  
            </div>
            <div class="selected_prod">
                <div class="category_selected">
                    <img src=""><p><h3><c:if test="${empty mainCategory}">All Items</c:if>${mainCategory}<h3>&nbsp;<h4>(Cars, Motorcycles & Vehicles)</h4></p>
                </div>
                <div class="search_within">
                    <span class="sw_category" onmousedown ="$('#tags').focus();">
                        <input type="text" name="sw_categ" id="tags" value="" placeholder="현재카테고리에서 검색" />
                        <input button type="submit" value="검색" ></button>
                    </span>
                </div>
            </div>
            <div class="selections">
                <div class="selection_left">
                    <div class="prod_selections">
                        <input class="buttons" id="button_selected" type="button" value="전체상품">&nbsp;
                        <input class="buttons" type="button" value="즉시낙찰">&nbsp;
                        <input class="buttons" type="button" value="흥정하기">
                    </div>
                    <div class="total_prod">
                        <h6>검색결과 (전체 <span>${totCount}</span>개)</h6>
                    </div>
                </div>
                <div class="selection_right">
                    <div class="view">
                        <img src=""><a href=""></a>
                        <img src=""><a href=""></a>
                        <input class="buttons" id="translate_button" type="button" value="내용번역">
                    </div>
                    <div class="align_options"><!-- 클릭시 span태그 -->
                        <h6>
                        
                        	<a href="index.do?primary_category=${middleCategory}&orderCond=watchcount_desc" <c:if test="${param.orderCond == 'watchcount_desc' }">style="color: steelblue;"</c:if>>인기상품순</a> | 
                        	<a href="index.do?primary_category=${middleCategory}&orderCond=endtime_asc" <c:if test="${param.orderCond == 'endtime_asc'}">style="color: steelblue;"</c:if>>마감임박순</a>| 
                        	<a href="index.do?primary_category=${middleCategory}&orderCond=price_asc" <c:if test="${param.orderCond == 'price_asc'}">style="color: steelblue;"</c:if>>낮은가격순</a> | 
                        	<a href="index.do?primary_category=${middleCategory}&orderCond=price_desc" <c:if test="${param.orderCond == 'price_desc'}">style="color: steelblue;"</c:if>>높은가격순</a> | 
                        	<a href="">입찰수높은순</a> | 
                        	<a href="">입찰수낮은순</a> | 
                        	<a href="index.do?primary_category=${middleCategory}&orderCond=start_time_desc" <c:if test="${param.orderCond == 'start_time_desc'}">style="color: steelblue;"</c:if>>신상품순</a>
                        </h6>
                    </div>
                </div>
            </div>
            <div class="product_page">
                <div class="row">
                	<c:forEach var="vo" items="${list}">
                    <div class="product">
                        <div class="product_div">
                        	<div class="main_img">
                        		<img src=${vo.thumbnail }>
                        	</div>
                            <div class="info">
                            	<div class="buttons">
                            		<a href=""><img src="/TProject/img/see_detail.png"/></a>
                            		<a href="detail/detailPage.do?productid=${vo.itemid }"><img src="/TProject/img/newtab.png"/></a>
                            		<a href=${vo.url }><img src="/TProject/img/to_url.png"/></a>
                            		<a href=""><img src="/TProject/img/saved.png"/></a>
                            	</div>
                                <h6>${vo.title }</h6><br>
                                <h4>$${vo.price }</h4><h6>(즉시낙찰 <span>$${vo.price }</span>)</h6>
                                <h6 id="date">${vo.endtime } (${vo.timeleft_str })</h6>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
            ${pageArea}
        </div>
        
	</div>
	<%@ include file="/WEB-INF/view/include/footer.jsp" %>
</body>
</html>