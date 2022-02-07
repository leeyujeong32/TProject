<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호확인</title>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="/TProject/css/reset.css"/>
    <link rel="stylesheet" href="/TProject/css/common.css"/>
    <link rel="stylesheet" href="/TProject/css/contents.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <script src="/TProject/js/common.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
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
        .checkbody {
        	position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%,-50%);
        }
        .checkbody > .check_one {
            padding: 0px 0px 12px 12px;
            border-bottom: 1px solid #e7e7e7;
            width: 100%;
        }
        .check_two {
            margin: 0px 0px 10px 0px;
            width: 100%;
        }

        .checkbody >.checkform {

            padding: 0px 0px 10px 12px;
            width: 100%;

        }

        td{
        	height: 50px;
        }
        .th {
            border: 1px solid #e7e7e7;
            border-collapse: collapse;
        }
        .th_two {
            border: 1px solid #e7e7e7;
            border-collapse: collapse;
        }
    </style>
    <script>
	    function checkPw(){
	    	
	    	if($("#pw").val().trim() == ''){
	    		alert('비밀번호를 입력해 주세요');
	    		$("#pw").focus();
	    		return;
	    	}
	    	
	    	$("#checkform").submit();
	    }
	</script>
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
                    <li>회원정보수정</li>
                    <li>회원탈퇴신청</li>
                </ul>
                <hX>고객상담</hX>
                <ul>
                    <li>1:1문의하기</li>
                </ul>
            </div>
            <div class="checkbody">
            	<div class="check_one">
                    <h3>비밀번호 확인</h3>
                </div>
                <div class="check_two">
                    <form name="checkform" id="checkform" action="checkpwd.do" method="post">
                    	<table>
                    		<tr>
                    			<td class="th">비밀번호</td>
                    			<td class="th_two"><input type="password" name="pw" id="pw" maxlength="50"></td>
                    		</tr>
                    	</table>
                    	<br>
                    	<div class="btnSet clear">
                    		<div><a href="javascript:;" class="btn" onclick="checkPw();">확인</a> <a href="javascript:;" class="btn" onclick="history.back();">취소</a></div>
                		</div>
                    </form>
                </div>
            </div>
        </div>
		<%@ include file="/WEB-INF/view/include/footer.jsp" %>
	</div>
</body>
</html>