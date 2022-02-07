<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보수정</title>
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

        .body > .my_data {
            margin-bottom: 100px;
            margin-left: 25px;
            margin-right: 5px;
            float: right;
            width: 78%;
            height: 100%;
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

        .my_data {
            height: 3000px;
            margin-top:20px;
        }
        .my_data > .my_data_one {
            padding: 0px 0px 12px 12px;
            border-bottom: 1px solid #e7e7e7;
            width: 100%;
        }

        .my_data_one h3 {
            font-weight: bold;
            font-size: 25px;
        }

        .my_data_two {
            margin: 0px 0px 10px 0px;
            width: 100%;
        }

        .my_data_necessary::before {
            content: "*";
            color: red;
            display: inline-block;
            vertical-align: middle;
            position: relative;
            top: -1px;
        }

        .my_data >.frmMyinfo {

            padding: 0px 0px 10px 12px;
            width: 100%;

        }

        .ico_require::before {
            content: "*";
            color: red;
            display: inline-block;
            position: relative;
            vertical-align: middle;
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


    </style>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    function zipcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    addr += extraAddr;
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    //document.getElementById("sample6_extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("sample6_extraAddress").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('zipcode').value = data.zonecode;
	                document.getElementById("addr1").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("addr2").focus();
	            }
	        }).open();
	    }
	    function goEdit(){
	    	
	    	if($("#pw").val().trim() == ''){
	    		alert('비밀번호를 입력해 주세요');
	    		$("#pw").focus();
	    		return;
	    	}
	    	var reg = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
	    	if(!reg.test($("#pw").val())){
	    		alert("비밀번호는 문자+숫자 조합으로 8자이상 입력해주세요.");
	    		$("#pw").focus();
	    		return false; //중지됨
	    	}
	    	if($("#name").val().trim() == ''){
	    		alert('이름을 입력해 주세요');
	    		$("#name").focus();
	    		return;
	    	}
	    	if($("#email").val().trim() == ''){
	    		alert('이메일을 입력해 주세요');
	    		$("#email").focus();
	    		return;
	    	}
	    	if($("#tel").val().trim() == ''){
	    		alert('휴대폰번호를 입력해 주세요');
	    		$("#tel").focus();
	    		return;
	    	}
	    	$("#editForm").submit();
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
            <div class="my_data">
                <div class="my_data_one">
                    <h3>회원정보수정</h3>
                </div>
                <div class="my_data_two">
                    <span class="my_data_necessary">는 필수 입력사항입니다. 해당 항목은 반드시 입력하여 주시기 바랍니다.</span>
                </div>
                <form class="editForm" id="editForm" method="post" action="update.do">
                    <input type="hidden" name="userid" id="userid" value="${user.userid}"/>
                    <table class="dtable row">
                        <colgroup>
                            <col style="width:170px;">
                            <col>
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="th">
                                <span class="ico_require"> 아이디</span>
                            </td>
                            <td class="th_two">
                                ${user.userid }
                            </td>
                        </tr>
                        <tr>
                            <td class="th">
                                <span class="ico_require">비밀번호</span> 
                            </td>
                            <td class="th_two">
                                <input type="password" title="비밀번호" name="pw" style="width:250px;" id="pw" maxlength="20">&nbsp;<span class="t_point">*패스워드 변경시 ID와 중복되지 않는, 6~16자의 영문대소문자, 숫자 및 특수문자만 가능</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="th">
                                <span class="ico_require">이름</span> 
                            </td>
                            <td class="th_two">
                                <input type="text" title="이름" style="width:270px;" name="name" id="name" value="${user.name }" readonly="readonly">
                            </td>
                        </tr>
                        <tr>
                            <td class="th">
                                <span class="ico_require">이메일</span> 
                            </td>
                            <td class="th_two">
                                <input type="text" title="이메일 아이디" style="width:160px;" name="email" id="email" value="${user.email}">
                            </td>
                        </tr>
                        <tr>
                            <td class="th">
                                <span class="ico_require">휴대전화</span> 
                            </td>
                            <td class="th_two">
                                <input type="text" name="tel" id="tel" value="${user.tel}"  maxlength="15" style="float:left;">
                            </td>
                        </tr>
                        
                        <tr>
                        	<td rowspan="3" class="th">주소</td>
                        	<td class="th_two">
                        		<input type="text" name="zipcode" id="zipcode" value="${user.zipcode }"class="inNextBtn" style="float:left;">
                                <span class="id_check"><a href="javascript:zipcode();" class="btn bgGray" style="float:left; width:auto; clear:none;">우편번호</a></span>
                        	</td>
                        </tr>
                        <tr>
                        	<td class="th_two">
                        		<input type="text" name="addr1" id="addr1" value=" ${user.addr1 }" style="float:left;width:500px">
                        	</td>
                        </tr>
                        <tr>
                        	<td class="th_two">
                        		<input type="text" name="addr2" id="addr2" value=" ${user.addr2 }" style="float:left;width:500px">
                        	</td>
                        </tr>
                        </tbody>
                    </table>
        			</form>
                    <div class="btnSet clear">
                    	<div><a href="javascript:;" class="btn" onclick="goEdit();">확인</a> <a href="javascript:;" class="btn" onclick="location.href='checkpw.do'">취소</a></div>
                	</div>
            </div>
		</div>
       	<%@ include file="/WEB-INF/view/include/footer.jsp" %>
	</div>
</body>
</html>