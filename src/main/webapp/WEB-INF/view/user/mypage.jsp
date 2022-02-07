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
    <link rel="stylesheet" href="/TProject/css/reset.css"/>
    <link rel="stylesheet" href="/TProject/css/common.css"/>
    <link rel="stylesheet" href="/TProject/css/contents.css"/>
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
		 <%@ include file="/WEB-INF/view/include/header.jsp" %>
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
                    <li><a href="checkpw.do">회원정보수정</a></li>
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
        <%@ include file="/WEB-INF/view/include/footer.jsp" %>
    </div>
</body>
</html>