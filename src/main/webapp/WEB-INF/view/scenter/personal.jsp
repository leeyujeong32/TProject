<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

        .body {
            margin: 20px auto 50px auto;
            width: 1200px;
            height: 1200px;
        }

        .body > .sidebar {
            border: thin solid grey;
            float: left;
            width: 16.6%;
            height: 90%;
            padding: 25px 80px 25px 20px;
        }

        .sidebar > h4 {
            color: steelblue;
            font-weight: bolder;
        }

        .sidebar > h6 {
            color: steelblue;
            line-height: 20px;
            font-size: x-small;
        }

        .sidebar > hX {
            font-weight: bold;
            line-height: 50px;
        }

        .sidebar > ul > li {
            line-height: 27px;
        }

        /* 위 아래 내용부터 수정본 */
        
        .body > .my_data {
            margin-bottom: 100px;
            margin-left: 25px;
            margin-right: 5px;
            float: right;
            width: 78%;
            height: 100%;
        }


        .consultQna {
            color: steelblue;
            border-bottom: solid steelblue;
            height: 70px;
            line-height: 70px;
            display: inline-block;
            width: 100%;
            margin-top: 0px;
        }

        .almost_over, .consult {
            color: steelblue;
            border-bottom: solid steelblue;
            height: 70px;
            line-height: 70px;
            display: inline-block;
            width: 100%;
            margin-top: 20px;
        }

        .alert {
            color: steelblue;
            border-bottom: solid steelblue;
            height: 90px;
            line-height: 70px;
            display: inline-block;
            width: 100%;
        }

        .title {
            width: 50%;
            float:left;
            font-weight: bold;
            margin-top: 5px;
        }

        button {
            font-size: 11px;
            line-height: 15px;
            margin-top: 33px;
            float: right;
            color: white;
            font-weight: lighter;
            background-color: steelblue;
            margin-right: 5px;
        }

        .content {
            height: 90px;
            line-height: 35px;
            text-align: center;
            font-size: 13px;
            vertical-align: middle;
            border-bottom: thin solid gray;
            padding-top: 25px;
        }
        

        .alert > .title {
            left: -10px;
        }

        .alert > button {
            position: relative;
            right: -18px;
           
        }

        .second_td > li {
            display: inline;
            margin: 10px;
            position: relative;
        
        }

        .first_tr {
            height: 50px;
            text-align: center;

        }

        .first_td {
            vertical-align: middle;
        }
        
        .td2 > li {
            display: inline;
            margin: 10px;
            position: relative; 
        }

        .tr1 {
            height: 50px;
            text-align: center;
        }

        .td1 {
            vertical-align: middle;
        }

        .select, .selecttitle, .select1 {
            vertical-align: center;
        }

        .select1 > input {
            margin-bottom: 28px;
        }

        /* 여기까지 */

        * {
            margin:0;
            padding:0;
            box-sizing: border-box;
        }
        .wrap {
            width:100%;
            margin : 0 auto;
            display: block;
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
            border: 1px solid #61666D;}

                        
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
            float: left;
            position: relative;
            bottom: 20px;
            
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
        <!-- 추후 수정요망 nav 고객센터 메뉴입니다.-->
        <div class="body">
            <div class="sidebar">
                <h4>고객센터</h4>
                <h6>C/S CENTER</h6>
                <hX>고객센터메뉴1</hX>
                <ul>
                    <li>세부메뉴</li>
                    <li>세부메뉴</li>
                    <li>세부메뉴</li>
                </ul>
                <hX>고객센터메뉴2</hX>
                <ul>
                    <li>세부메뉴</li>
                    <li>세부메뉴</li>
                    <li>세부메뉴</li>
                </ul>
            </div>               
        <!-- 여기서부터 1:1문의 소스-->
        <div class="my_data">
            <div class="consultQna">
                <div class="title">&nbsp&nbsp&nbsp1:1문의 하기</div>
                <button>나의 상담내역 보기</button>
                <button>자주 하는 질문</button>
            </div>
            <div id="contBody">   
                <div class="article_wrap">
                    <table class="table_basic row" style="border-top:1px solid #ddd">
                        <colgroup>
                            <col style="width:140px" />
                            <col />
                        </colgroup>
                        <tbody>
                            <tr class="first_tr">
                                <td class="first_td">질문유형</td>
                                    <td class="second_td">
                                        <li>
                                            <a href="#" data-section="B">입찰해제</a>
                                        </li>
                                        <li>
                                            <a href="#" data-section="1">회원문의</a>
                                        </li>
                                        <li>
                                            <a href="#" data-section="2">경매문의</a>
                                        </li>
                                        <li>
                                            <a href="#" data-section="3">구매문의</a>
                                        </li>
                                        <li>
                                            <a href="#" data-section="4">결제문의</a>
                                        </li>
                                        <li>
                                            <a href="#" data-section="5">배송문의</a>
                                        </li>
                                        <li>
                                            <a href="#" data-section="6">반품환불문의</a>
                                        </li>
                                        <li>
                                            <a href="#" data-section="7">기타문의</a>
                                        </li>
                                    </td>
                            </tr>
                            <tr class="tr1">
                                <td class="td1" style="text-align:center;">국가 선택</td>
                                    <td class="td2">
                                        <li>
                                            <a href="#" data-country="3">한국</a>
                                        </li>
                                        <li>
                                            <a href="#" data-country="1">일본</a>
                                        </li>
                                        <li>
                                            <a href="#" data-country="2">미국</a>
                                        </li>
                                        <li>
                                            <a href="#" data-country="6">영국</a>
                                        </li>
                                    </td>
                            </tr>       
                        
                            <tr class="select">
                                <td class="selecttitle" style="text-align:center;">상품선택</td>
                                <td class="select1">
                                    <input type="text" name="itemId" value="" style="width: 500px;" title="상품선택" readonly />
                                    <button style="float: inherit; width: 80px;">검색</button>
                                </td>
                            </tr>
                            <tr>
                                <td class="th" style="text-align:center;">제목</td>
                                <td>
                                    <input type="text" name="subject" value="" style="width:100%;" title="제목" />
                                </td>
                            </tr>
                            <tr>
                                <td class="th" style="text-align:center;">내용</td>
                                <td>
                                    <textarea name="content" id="content" rows="100" cols="100" style="width:100%;height:180px;padding:5px;" title="내용"></textarea>
                                </td>
                            </tr>
                            <tr style="margin-top: 10px;">
                                <td class="th" style="text-align:center;">파일첨부</td>
                                <td class="fileattach">
                                    <span id="idAttachment_check" style="display:none;"></span>      
                                    <input type="file" accept="image/jpg,image/gif" style= "width: 200x; background-color: steelblue; color: #fff;">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="btn_wrap">
                    <button type="submit">문의하기</button> </div>
                </div>
            </div>
        <div class="sns_area">
            <a href=""><img src="/TProject/img/facebook_ico.png"></a>
            <a href=""><img src="/TProject/img/insta_ico.png"></a>
            <a href=""><img src="/TProject/img/blog_ico.png"></a>
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