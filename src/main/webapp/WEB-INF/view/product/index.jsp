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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <title>Document</title>
    <style>
        .body_wrap {
            margin: 0 auto;
            width: 1200px;
        }
        .big_sub > li {
            display: inline;
            list-style: none;
        }
        .choose_prod {
            height: 225px;
            border-style: solid;
            border-width: thin;
        }
        .type_display { 
            height: 150px;
            padding: 5px 30px 5px 30px;
            border-bottom: solid thin;
        }
        .type_display > .mid_sub {
            display: grid;
            grid-template-rows: repeat(5, min-content);
            grid-auto-flow: column;
        }

        .type_display > .mid_sub > li {
            line-height: 2;
            list-style: square;
        }
        
        .choose_prod > .options {
            height: 75px;
            padding: 5px;
        }

        .options > .basic_info {
            width: 50%;
            float: left;
        }

        .options > .basic_info > .condition-seller {
            width: 50%;
            float: left;
            display: flex;
            flex-direction: column;
            height: 65px;
        }

        .condition, .seller {
            height: 50%;
        }

        .price {
            height: 65px;
            display: flex;
            flex-direction: row;
            padding-right: 5px;
            float: right;
        }

        .price_options {
            float: left;
            padding-right: 15px;
        }

        .price_range {
            float: right;
        }
         
        #price_button {
            position:relative;
            left: 100px;
            bottom: 20px;
        }
        
        .selected_prod {
            height: 100px;
            border-style: solid;
            border-width: thin;
            margin-top: 15px;
            padding: 5px 30px 5px 30px;
        }
        
        .selected_prod > .category_selected, .search_within {
            width: 50%;
            float: left;
        }

        .selected_prod > .category_selected > h3, h4 {
            display: inline;
        }

        .selected_prod > .search_within {
            padding-top: 25px;
        }

        .sw_category {float: right;}

        .selections {
            height: 100px;
            padding-top: 20px;
            border-bottom: solid steelblue;
        }

        .selections > .selection_left {
            width: 50%;
            float: left;
        }

        .selection_left, .selection_right {
            display:flex;
            flex-direction: column;
        }

        .prod_selections, .view {
            height: 50px;
        }

        .view {
            display: inline;
            text-align: right;
        }

        .buttons {
            padding: 2px 5px 2px 5px;
            background-color: steelblue;
            color: white;
        }

        .prod_selections #button_selected, #translate_button {
            background-color: black;
        }

        span {
            color: steelblue;
        }

        .total_prod, .align_options {
            vertical-align: bottom;
            font-size: larger;
        }

        .align_options {
            text-align: right;
        }

        .product_page {
            width: 1200px;
            height: 1700px;
            float: left;
        }
        .product_page > .row {
            padding-left: 15px;
            width: 100%;
            height: 400px;
            margin-left: 0;
            margin-top: 10px;
        }

        .product_page > .row > .product {
            width: 19.5%;
            height: 95%;
            display: inline-block;
            border: 1px solid grey;
            vertical-align: top;
        }

        .product > .product_div {
            padding: 5px;
            width: 100%;
            height: 100%;
        }

        .product > .product_div > img {
            object-fit: contain;
            height: 200px;
            max-width: 100%;
        }

        .product > .product_div > .info {
            vertical-align: bottom;
            width: 95%;
            max-height: 200px;
        }

        .info > span {
            font-style: bold;
        }

        .info > #date {
            line-height: 4;
        }

        .pagination {
            margin-left: 370px;
            margin-bottom: 50px;
        }

        * {
            margin:0;
            padding:0;
            box-sizing: border-box;
        }
        .wrap {
            width:100%;
            margin : 0 auto;
        }
        .logo{
            float : left;
        }
        .header {
            width:1200px;
            margin:0 auto;
            text-align: center;
            padding:10px 20px;
        }
        .size {position: relative;}
        .header > .size > .login {
            position:absolute;
            top:0;
            right:0;
        }
        .search_form {
            border-style: solid;
            border-width: 900px;
            border-radius: 25px;
            padding: 4px 15px;
            float: auto;
        }
        .search_form {
                float: middle;
                display: inline-flex;
                background: #FFFFFF;
                border: 1px solid #61666D;

                        }
        .placeholder {
                padding-left: -5px;
                float: middle;
                display: inline-flex;
        }
        .autoKeyword {
            padding-bottom: 10px;
        }
        .menu {
            width:1200px;
            margin:0 auto;
            height:40px;
        }
        .menu > ul > li {
            list-style: none;
            border:1px solid #000000;
            background-color: #fff;
            color:#000000;
            text-align: center;
            float:left;
            width: 16.6%;
            height:40px;
            line-height: 40px;
        }
        .menu > ul > li > a:hover {
            background-color: #999;
            color:#fff;
        }
        ul, li {
            list-style: none;
            position:relative;
        }
        .depth2 {
            width:100%;
            z-index:10;
            background-color: #fff;
            display: none;
        }
        .depth1 > li > a {
            display:block;
        }
        .depth2 > li > a {
            display:block;
        }
        a {
            text-decoration: none;
        }
        .section_1 {
            width:1200px;
            margin:0 auto;
        }
        .section_1 > .content_1 {
            width:60%;
            float:left;
            padding:20px 20px;
        }
        .section_1 > .content_2 {
            width:40%;
            float:left;
            padding:20px 20px;
        }
        .section_1 > .content_1 > .now_auction {
            width:100%;
            height:350px;
            border:1px solid #999;
            padding:20px;
        }
        .section_1 > .content_1 > .now_auction > .best_title {
            font-size:10px;
            line-height: 50px;
            float:left;
            cursor:pointer;
            width:95px;
            text-align: center;
        }
        .section_1 > .content_1 > .now_auction > .best_title.on {
            color:#fff;
            background-color: #d3d3d3;
        }
        .section_1 > .content_1 > .now_auction > .now_auction > ul {
            clear:both;
        }
        .now_action_area > ul > li{
            font-size: 15px;
            line-height: 30px;
            border-bottom: 1px solid #d3d3d3;
            list-style: none;
        }
        .now_action_area > ul:first-child{
            padding-top: 50px;
            border-top:1px solid #d3d3d3;
        } /*첫번째 자식*/
        .now_action_area > ul > li > span {
            float :right;
        }
        #best_sales {display: none;}
        #best_recent {display: none;}
        #best_price {display: none;}
        #best_success {display: none;}
        #best_ing {display: none;}

        .section_1 > .content_2 > .my_info {
            width:100%;
            height:350px;
            border:1px solid #999;
            padding:20px 20px;
        }
        .section_1 > .content_2 > .my_info >.login_info {
            font-size: 20px;
            padding:20px;
            
        }
        .login_info{
            padding: 50px 20px;
        }
        .login_info > .login_regist > .login {
            width:50%;
            float:right;
        }
        .login_info > .login_regist > .regist {
            width:50%;
            float:left;
        }
        .info > .content > .notice_area {
            width:100%;
            height:400px;
            border:1px solid #999;
            padding:10px;
        }
        .info > .content > .notice_area > .notice_title {
            font-size:25px;
            line-height: 50px;
            float:left;
            width:100px;
            text-align: center;
        }
        .info > .content > .notice_area > .notice_content > ul {
            clear:both;
        }
        .notice_content > ul > li{
            font-size: 10px;
            line-height: 40px;
            border-bottom: 1px solid #d3d3d3;
        }
        .notice_content > ul:first-child{border-top:1px solid #d3d3d3;} /*첫번째 자식*/
        .notice_content > ul > li > span {
            float :right;
        }
        #find{
            font-size: 15px;
            text-align: right;
        }
        .section_2 {
            width:1200px;
            margin:0 auto;
            height: auto;
            
        }
        .section_2 > .container{
            overflow: hidden;
            height:auto;
        }
        .section_2 > .container > .size{
            text-align: center; /*가운데정렬*/            
        } 
        .section_2 > .container > .size > .section{
            float:left; /*왼쪽으로 붙임*/
            width:31.3333333%; /*컨테이너 이미지 3개씩정렬*/
            margin:1%;/*마진에서 1퍼주면 width에서 1%빼면*/
        }
        .footer {
            width:1200px;
            margin:0 auto;
            background-color: #221f1f;
            color:#999;
            clear:both;
            
        }
        .footer > .size > .info > p {
            line-height: 17px;
        }

    </style>
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
                <li> > <a href="">큰 종류</a>
                <li> > <a href="">중 종류</a>
                <li> > <a href="">소 종류</a>
                <li><img src=""></li>
            </ul>
            <div class="choose_prod">
                <div class="type_display">
                    <ul class="mid_sub">
                        <li><a href="">종류1</a></li>
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
                    <img src=""><p><h3>Cars, Motorcycles & Vehicles<h3>&nbsp;<h4>(Cars, Motorcycles & Vehicles)</h4></p>
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
                        <h6>검색결과 (전체 <span>723,456</span>개)</h6>
                    </div>
                </div>
                <div class="selection_right">
                    <div class="view">
                        <img src=""><a href=""></a>
                        <img src=""><a href=""></a>
                        <input class="buttons" id="translate_button" type="button" value="내용번역">
                    </div>
                    <div class="align_options">
                        <h6><span>인기상품순</span> | 마감임박순 | 낮은가격순 | 높은가격순 | 입찰수높은순 | 입찰수낮은순 | 신상품순</h6>
                    </div>
                </div>
            </div>
            <div class="product_page">
                <div class="row">
                    <div class="product">
                        <div class="product_div">
                            <img src="https://blog.kakaocdn.net/dn/kYpqs/btqBvtsvIFu/QCeVs7wSnPKFGxrgllL4Yk/img.png">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div class="product_div">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkKXW0vCk5lRXNnHlhiez_j1TBtJmlQxVklg&usqp=CAU">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div class="product_div">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF7rrCQuB-DVqA_ZRR7UFYFj1odAb3yx-oYw&usqp=CAU">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div class="product_div">
                            <img src="https://blog.kakaocdn.net/dn/bBvQJk/btq7DRJC9nY/qkACdU3KVpF6gwEtRrXxJ0/img.jpg">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div class="product_div">
                            <img src="https://cdn.mos.cms.futurecdn.net/JCBQyBmDc62E8xWfF88ZGP.jpg">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="product">
                        <div class="product_div">
                            <img src="https://blog.kakaocdn.net/dn/kYpqs/btqBvtsvIFu/QCeVs7wSnPKFGxrgllL4Yk/img.png">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div class="product_div">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkKXW0vCk5lRXNnHlhiez_j1TBtJmlQxVklg&usqp=CAU">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div class="product_div">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF7rrCQuB-DVqA_ZRR7UFYFj1odAb3yx-oYw&usqp=CAU">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div class="product_div">
                            <img src="https://blog.kakaocdn.net/dn/bBvQJk/btq7DRJC9nY/qkACdU3KVpF6gwEtRrXxJ0/img.jpg">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div class="product_div">
                            <img src="https://cdn.mos.cms.futurecdn.net/JCBQyBmDc62E8xWfF88ZGP.jpg">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="product">
                        <div class="product_div">
                            <img src="https://blog.kakaocdn.net/dn/kYpqs/btqBvtsvIFu/QCeVs7wSnPKFGxrgllL4Yk/img.png">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div class="product_div">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkKXW0vCk5lRXNnHlhiez_j1TBtJmlQxVklg&usqp=CAU">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div class="product_div">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF7rrCQuB-DVqA_ZRR7UFYFj1odAb3yx-oYw&usqp=CAU">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div class="product_div">
                            <img src="https://blog.kakaocdn.net/dn/bBvQJk/btq7DRJC9nY/qkACdU3KVpF6gwEtRrXxJ0/img.jpg">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div class="product_div">
                            <img src="https://cdn.mos.cms.futurecdn.net/JCBQyBmDc62E8xWfF88ZGP.jpg">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="product">
                        <div class="product_div">
                            <img src="https://blog.kakaocdn.net/dn/kYpqs/btqBvtsvIFu/QCeVs7wSnPKFGxrgllL4Yk/img.png">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div class="product_div">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkKXW0vCk5lRXNnHlhiez_j1TBtJmlQxVklg&usqp=CAU">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div class="product_div">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF7rrCQuB-DVqA_ZRR7UFYFj1odAb3yx-oYw&usqp=CAU">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div class="product_div">
                            <img src="https://blog.kakaocdn.net/dn/bBvQJk/btq7DRJC9nY/qkACdU3KVpF6gwEtRrXxJ0/img.jpg">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                    <div class="product">
                        <div class="product_div">
                            <img src="https://cdn.mos.cms.futurecdn.net/JCBQyBmDc62E8xWfF88ZGP.jpg">
                            <div class="info">
                                <h6>[언제든지 즉시 대응, 연년 정규 보증] Microsoft Office 2019 Professional Plus 정품 인증 보증 제</h6><br>
                                <h4>212엔</h4><h6>(즉시낙찰 <span>498엔</span>)</h6>
                                <h6 id="date">2021.12.21 20:15 (3시간)</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <ul class="pagination"> 
                    <li><a href="#">&laquo;</a></li> 
                    <li class="active"><a href="#">1</a></li> 
                    <li><a href="#">2</a></li> 
                    <li><a href="#">3</a></li> 
                    <li><a href="#">4</a></li> 
                    <li><a href="#">5</a></li> 
                    <li><a href="#">6</a></li> 
                    <li><a href="#">7</a></li> 
                    <li><a href="#">8</a></li> 
                    <li><a href="#">9</a></li> 
                    <li><a href="#">10</a></li> 
                    <li><a href="#">&raquo;</a></li> 
                </ul> 
            </div>
        </div>
            <div class="footer">
                <div class="size">
                    <div class="info">
                        <p>경매 사이트는 해외경매/해외구매 상품의 입찰 및 구매를 중개/대행하는 서비스를 제공하며 그 상품 및 등록내용에 대해서는 일체의 책임을 지지 않습니다 </p>
                        <p>개인정보취급방침</p>
                        <p>이용약관</p>
                        <p>서울특별시 종로구 디팰리스아파트 19층 </p>
                        <p>02-738-5001 | 02-738-5001</p>
                        <p>대표자 나현주 | 개인정보책임자 홍길동</p>
                        <p>사업자번호 111-00-22222</p>
                    </div>
                    <div class="sns_area">
                        <a href=""><img src="/TProject/img/facebook_ico.png"></a>
                        <a href=""><img src="/TProject/img/insta_ico.png"></a>
                        <a href=""><img src="/TProject/img/blog_ico.png"></a>
                    </div>
                </div>
            </div>
</body>
</html>