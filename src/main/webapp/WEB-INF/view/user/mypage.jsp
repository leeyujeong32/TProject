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

        .body > .my_data {
            margin-bottom: 100px;
            margin-left: 25px;
            margin-right: 5px;
            float: right;
            width: 78%;
            height: 100%;
        }

        .my_data > .data_detail {
            height: 150px;
            width: 100%;
        }

        .data_detail > .me {
            background-color: #7DBF61;
            height: 50%;
            width: 100%;
            padding: 45px 30px 45px 30px;
        }

        .me > ul > .name {
            width: 80%;
            display: inline-block;
            text-align: left;
            color: white;
            font-size: 20px;
            position: relative;
            top: -10px;
        }

        .me > ul > .rank_info {
            width: 19%;
            display: inline-block;
            text-align: right;
            color: white;
            font-size: 11px;
            top: -10px;
        }

        .name > span {
            color: white;
            font-weight: bolder;
        }

        .data_detail > .my_info {
            height: 50%;
        }

        .my_info > div  {
            border: thin solid grey;
            border-right: none;
            list-style: none;
            display: inline-block;
            width: 20%;
            height: 100%;
            text-align: center;
            padding-top: 15px;
            font-size: 13px;
        }

        .my_info > div > h4 {
            font-weight: bold;
            
        }
        
        .my_info > .border {
            border-right: thin solid grey;
        }

        .shipping_status {
            height: 270px;
            position: relative;
            top: 20px;
        }

        .shipping_status > .now {
            width: 100%;
            height: 70px;
            border-bottom: solid 2px steelblue;
            padding: 30px 0 13px 13px;
            color: steelblue;
            font-weight: bold;
        }

        .shipping_status > .status {
            height: 150px;
        }

        .shipping_status > .status > .number {
            height: 50%;
            padding: 20px 60px 20px 60px;
            color: steelblue;
            font-weight: bold;
            font-size: 25px;
            width: 100%;
            display: flex;
            justify-content: space-between;
        }
        
        .status > .number > div {
            text-align: center;
        }

        .status > .process > div {
            text-align: center;
        }

        .symbol {
            color: grey;
        }

        .shipping_status > .status > .process {
            height: 50%;
            padding: 12px;
            font-weight: bold;
            width: 100%;
            display: flex;
            justify-content: space-between;
        }

        .process > .one {
            text-align: right;
            margin-left: 10px;
            position: relative;
            right: -5px;
        }

        .process > .two, .three, .four {
            position: relative;
            left: -6px;
        }

        .process > .five {
            position: relative;
            left: -20px;
        }

        .process > .six {
            position: relative;
            left: -25px;
        }

        .product_status {
            text-align: center;
            vertical-align: text-bottom;
            border: thin solid grey;
            display: inline-block;
            width: 100%;
            height: 70px;
            border-left: none;
            border-right: none;
            background-color: whitesmoke;
        }

        .product_status > div {
            height: 100%;
            line-height: 70px;
        }

        .product_status > .one {
            float: left;
            width: 33%;
            position: relative;
            border-right: thin solid grey;
            vertical-align: bottom;
        }

        .product_status > .two {
            float: left;
            width: 33%;
            border-right: thin solid grey;
        }

        .product_status > .three {
            float: right;
            width: 33%;
        }

        .product_status > div > span {
            font-weight: bold;
            text-decoration: underline;
        }

        .unpaid {
            color: steelblue;
            border-bottom: solid steelblue;
            height: 70px;
            line-height: 70px;
            display: inline-block;
            width: 100%;
            margin-top: 50px;
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
            font-size: 10px;
            line-height: 15px;
            margin-top: 33px;
            float: right;
            color: gray;
            font-weight: lighter;
            background-color: white;
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
        
        .content2 {
            height: 80px;
            line-height: 35px;
            text-align: center;
            font-size: 13px;
            vertical-align: middle;
            border-bottom: thin solid gray;
            padding-top: 15px;
        }

        .alert > .title {
            left: -10px;
        }

        .alert > button {
            position: relative;
            right: -18px;
           
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
        <div class="body">
            <div class="sidebar">
                <h4>마이페이지</h4>
                <h6>MY PAGE</h6>
                <hX>경매대행</hX>
                <ul>
                    <li>관심물품 목록</li>
                    <li>경매 입찰/유찰목록</li>
                    <li>낙찰목록</li>
                </ul>
                <hX>구매대행</hX>
                <ul>
                    <li>장바구니</li>
                    <li>신청목록</li>
                    <li>주문목록</li>
                </ul>
                <hX>배송관리</hX>
                <ul>
                    <li>묶음배송 관리</li>
                    <li>배송지 관리</li>
                </ul>
                <hX>관심항목관리</hX>
                <ul>
                    <li>관심키워드</li>
                    <li>관심판매자</li>
                    <li>바로가기</li>
                </ul>
                <hX>나의 계좌관리</hX>
                <ul>
                    <li>예치금 관리</li>
                    <li>보증금 관리</li>
                    <li>정액권 관리</li>
                    <li>쿠폰내역</li>
                    <li>환불신청</li>
                    <li>회원정보수정</li>
                    <li>회원탈퇴신청</li>
                </ul>
                <hX>고객상담</hX>
                <ul>
                    <li>1:1문의하기</li>
                </ul>
            </div>
            <div class="my_data">
                <div class="data_detail">
                    <div class="me">
                        <ul>
                            <li class="name">신규 <span>이세은</span>님</li>
                            <li class="rank_info">등급혜택/쿠폰다운></li>
                        </ul>
                    </div>
                    <div class="my_info">
                        <div>등급포인트<h4>0점</h4>
                        </div><div>쿠폰<h4>1장</h4>
                        </div><div>예치금<h4>0원</h4>
                        </div><div>야후 보증금<h4>0원</h4>
                        </div><div class="border">이베이 보증금<h4>0원</h4>
                        </div>
                    </div>
                </div>
                <div class="shipping_status">
                    <div class="now">
                        주문/배송 현황
                    </div>
                    <div class="status">
                        <div class="number">
                            <div>0</div><div class="symbol">></div><div>0</div><div class="symbol">></div><div>0</div><div class="symbol">></div><div>0</div><div class="symbol">></div><div>0</div><div class="symbol">></div><div>0</div>
                        </div>
                        <div class="process">
                            <div class="one">1차 결제대기<br><span>[ 0원 ]</span></div>
                            <div class="two">1차 결제완료<br></div>
                            <div class="three">현지도착<br></div>
                            <div class="four">2차 결제대기<br><span>[ 0원 ]</span></div>
                            <div class="five">2차 결제완료<br></div>
                            <div class="six">국제배송<br></div>
                        </div>
                    </div>
                    <div class="product_status">
                        <div class="one">진행중인 거래 <span>0</span></div>
                        <div class="two">거래완료 <span>0</span></div>
                        <div class="three">취소/반품 <span>0</span></div>
                    </div>
                </div>
                <div class="unpaid">
                    <div class="title">&nbsp&nbsp&nbsp결제 대기 물품 목록</div>
                    <button>+ 더보기</button>
                </div>
                <div class="content">결제대기 상품이 없습니다.</div>
                <div class="almost_over">
                    <div class="title">&nbsp&nbsp&nbsp종료 임박 물품 목록</div>
                    <button>+ 더보기</button>
                </div>
                <div class="content">입찰 중인 상품이 없습니다.</div>
                <div class="consult">
                    <div class="title">&nbsp&nbsp&nbsp1:1 문의하기</div>
                    <button>+ 더보기</button>
                </div>
                <div class="content">최근 1개월 이내 1:1 고객상담 내역이 없습니다.</div>
                <div class="alert">
                    <div class="title">사용자 메모 알림 서비스</div>
                    <button>+ 더보기</button>
                </div>
                <div class="content2">최근 등록하신 사용자메모 내용이 없습니다.</div>
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
    </div>
</body>
</html>