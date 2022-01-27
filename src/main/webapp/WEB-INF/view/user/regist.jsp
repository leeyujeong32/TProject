<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="/TProject/css/reset.css"/>
    <link rel="stylesheet" href="/TProject/css/common.css"/>
    <link rel="stylesheet" href="/TProject/css/contents.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
    <script src="/TProject/js/common.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
	<script>
		$(function(){
			$("#idCheckBtn").click(function(){
				if($("#userid").val().trim() == ''){
					alert('아이디를 입력해 주세요');
					$("#userid").focus();
				}else{
					$.ajax({
						url : 'idCheck.do',
						data : {
							userid : $("#userid").val()
						},
						async:false,
						success:function(res){//요청받은 url이 응답이되면 실행
							//url의 결과에 따라 ㅁ매개변수가 달라짐
							if(res.trim() == '1'){//function(res)=익명함수
								alert('중복된 아이디입니다. 다른 아이디을 입력해 주세요');
								$("#userid").val("");
								$("#userid").focus();
							}else{
								alert("사용가능한 아이디입니다.");
							}
						}
					})
				}
			});
			
		})
	</script>
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
	    function goSave(){
	    	if($("#userid").val().trim() == ""){
	    		alert('아이디를 입력해 주세요');
	    		$("#userid").focus();
	    		return;
	    	}
	    	var con = true;
	    	$.ajax({
				url : 'idCheck.do',
				data : {
					userid : $("#userid").val()//?
				},
				async:false,//비동기
				success:function(res){//요청받은 url이 응답이되면 실행
					//url의 결과에 따라 ㅁ매개변수가 달라짐
					if(res.trim() == '1'){//function(res)=익명함수
						alert('중복된 아이디입니다. 다른 아이디를 입력해 주세요');
						$("#userid").val("");
						$("#userid").focus();
						con = false;
					}
				}
			})
			if (con == false) return;
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
	    	if($("#pw").val() != $("#pw_check").val()){
	    		alert("비밀번호가 일치하지 않습니다.");
	    		return;
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
	    	$("#frm").submit();
	    }
	</script>
</head>
<body>
    <div class="wrap">
        <%@ include file="/WEB-INF/view/include/header.jsp" %>
        <div class="sub">
            <div class="size">
                <h3 class="sub_title">회원가입</h3>
                <form name="frm" id="frm" action="insert.do" method="post">
                <table class="board_write">
                    <caption>회원가입</caption>
                    <colgroup>
                        <col width="20%" />
                        <col width="*" />
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>*아이디</th>
                            <td>
                                <input type="text" name="userid" id="userid" class="inNextBtn" style="float:left;">
                                <span class="id_check"><a href="javascript:;" id="idCheckBtn" class="btn bgGray" style="float:left; width:auto; clear:none;">중복확인</a></span>
                            </td>
                        </tr>
                        <tr>
                            <th>*비밀번호</th>
                            <td><input type="password" name="pw" id="pw" style="float:left;"> <span class="ptxt">비밀번호는 숫자, 영문 조합으로 8자 이상으로 입력해주세요.</span> </td>
                        </tr>
                        <tr>
                            <th>*비밀번호<span>확인</span></th>
                            <td><input type="password" name="pw_check" id="pw_check" style="float:left;"></td>
                        </tr>
                        <tr>
                            <th>*이름</th>
                            <td><input type="text" name="name" id="name" style="float:left;"> </td>
                        </tr>
                        <tr>
                            <th>*이메일</th>
                            <td>
                                <input type="text" name="email" id="email" style="float:left;">

                            </td>
                        </tr>
                  
                        <tr>
                            <th>*휴대폰 번호</th>
                            <td>
                                <input type="text" name="tel" id="tel" value=""  maxlength="15" style="float:left;">
                            </td>
                        </tr>
                        <tr>
                        	<th rowspan="3">주소</th>
                        	<td>
                        		<input type="text" name="zipcode" id="zipcode" class="inNextBtn" style="float:left;">
                                <span class="id_check"><a href="javascript:zipcode();" class="btn bgGray" style="float:left; width:auto; clear:none;">우편번호</a></span>
                        	</td>
                        </tr>
                        <tr>
                        	<td>
                        		<input type="text" name="addr1" id="addr1" style="float:left;width:500px">
                        	</td>
                        </tr>
                        <tr>
                        	<td>
                        		<input type="text" name="addr2" id="addr2" style="float:left;width:500px">
                        	</td>
                        </tr>
                    </tbody>
                </table>
                        <input type="hidden" name="cmd" value="write.do"/>
                        <input type="hidden" name="checkId" id="checkId" value="0"/>
                </form>
                <!-- //write--->
                <div class="btnSet clear">
                    <div><a href="javascript:;" class="btn" onclick="goSave();">가입</a> <a href="javascript:;" class="btn" onclick="history.back();">취소</a></div>
                </div>
            </div>
        </div>
        <%@ include file="/WEB-INF/view/include/footer.jsp" %>
    </div>
</body>
</html>