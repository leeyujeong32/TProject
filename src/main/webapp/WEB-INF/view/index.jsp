<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
	<link rel = "stylesheet" href = "/myproject/css/bootstrap.min.css">
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="/TProject/css/common.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <script src="/TProject/js/common.js"></script>
    <script src="/TProject/js/main.js"></script>
</head>
<body>
	<div class="wrap">
		<%@ include file="/WEB-INF/view/include/header.jsp" %>
		<div class="section_1">
            <div class="content_1">
                <div class="now_auction">
                    <div class="best_title on">조회수 순</div>
                    <div class="best_title">판매율 순</div>
                    <div class="best_title">최신 입찰순</div>
                    <div class="best_title">입찰 가격순</div>
                    <div class="best_title">낙찰 입찰순</div>
                    <div class="best_title">입찰 중인 경매</div>
                    <div class="now_action_area" id="best_view">
                        <ul>
                            <li>조회수 순입니다.<span>2021-12-09</span></li>
                            <li>공지사항입니다.<span>2021-12-09</span></li>
                            <li>공지사항입니다.<span>2021-12-09</span></li>
                            <li>공지사항입니다.<span>2021-12-09</span></li>
                            <li>공지사항입니다.<span>2021-12-09</span></li>
                            <li>공지사항입니다.<span>2021-12-09</span></li>
                            <li>공지사항입니다.<span>2021-12-09</span></li>
                            <li>공지사항입니다.<span>2021-12-09</span></li>
                        </ul>
                    </div>
                    <div class="now_action_area" id="best_sales">
                        <ul>
                            <li>판매율 순입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                        </ul>
                    </div>
                    <div class="now_action_area" id="best_recent">
                        <ul>
                            <li>최신 입찰순입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                        </ul>
                    </div>
                    <div class="now_action_area" id="best_price">
                        <ul>
                            <li>입찰 가격순입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                        </ul>
                    </div>
                    <div class="now_action_area" id="best_success">
                        <ul>
                            <li>낙찰 입찰순입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                        </ul>
                    </div>
                    <div class="now_action_area" id="best_ing">
                        <ul>
                            <li>입찰 중인 경매입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                            <li>자료실입니다.<span>2021-12-09</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <div class="content_2">
                <div class="my_info">
                    나의 정보
                    <div class="login_info">
                        <div class="login_regist">
                            <div class="login">
                                <button type="button" class="btn btn-info">로그인</button>
                            </div>
                            <div class="regist">
                                <button type="button" class="btn btn-success">회원가입</button>
                            </div>
                        </div>
                        <br>
                        <a href="" id="find">아이디 찾기 / 비밀번호 찾기</a>
                    </div>
                    <div class="notice_info"><!--content-->
                        <div class="notice_area"><!--board_area-->
                            <div class="notice_title">공지사항</div><!--board_title-->
                            <div class="notice_content" id="board_notice"><!--board_content-->
                                <ul>
                                    <li>공지사항입니다.<span>2021-12-09</span></li>
                                    <li>공지사항입니다.<span>2021-12-09</span></li>
                                    <li>공지사항입니다.<span>2021-12-09</span></li>
                                    <li>공지사항입니다.<span>2021-12-09</span></li>
                                 
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
        	</div>
        </div>
        
        <div class="section_2">
            <h2 class="sub_title"><img src="/TProject/img/logo.png" alt="" />추천카테고리</h2>
            <div class="container">
                <div class = "size"> <!--size감싸놓으면 편한게 컨테이너에 패딩주면 size가 통쨰로 드러옴-->
                    <div class ="section"> <!--section 만든이유는 section이미지 컨트롤 -->
                        <img src ="/TProject/img/section1_1.png" style = "cursor:pointer;">
                    </div>
                    <div class ="section"> <!--section 만든이유는 section이미지 컨트롤 -->
                        <img src ="/TProject/img/section1_2.png" style = "cursor:pointer;">
                    </div>
                    <div class ="section"> <!--section 만든이유는 section이미지 컨트롤 -->
                        <img src ="/TProject/img/section1_3.png" style = "cursor:pointer;"> 
                    </div>
                    <div class ="section"> <!--section 만든이유는 section이미지 컨트롤 -->
                        <img src ="/TProject/img/section1_4.png" style = "cursor:pointer;">
                    </div>
                    <div class ="section"> <!--section 만든이유는 section이미지 컨트롤 -->
                        <img src ="/TProject/img/section1_5.png" style = "cursor:pointer;">
                    </div> 
                    <div class ="section"> <!--section 만든이유는 section이미지 컨트롤 -->
                        <img src ="/TProject/img/section1_6.png" style = "cursor:pointer;">
                    </div>
                </div>
            </div>                         
        
		</div>
		<%@ include file="/WEB-INF/view/include/footer.jsp" %>
	</div>
</body>
</html>