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
    <script>
    	function searchId(){
    		if ($("#userid").val() == ''){
    			alert('아이디를 입력하세요');
    			$("#userid").focus();
    			return false;
    		}
    		if ($("#email").val() == ''){
    			alert('이메일을 입력하세요');
    			$("#email").focus();
    			return false;
    		}
    		$.ajax({
    			url:"searchPwd.do",
    			method:"post",
    			data:{
    				userid:$("#userid").val(),
    				email:$("#email").val()
    			},
    			success:function(res) {
    				if(res.trim() == 'ok'){
    					alert("임시비밀번호를 이메일로 발송하였습니다. 이메일을 확인하세요")
 
    				}
    				else{
    					alert("이메일/이름이 올바르지 않습니다.")
    				}
    			}
    		});
    		return false;
    	}
    </script>
</head>
<body>
    <div class="wrap">
        <%@ include file="/WEB-INF/view/include/header.jsp" %>
        <form action="login.do" method="post" id="board1" name="board1" onsubmit="return searchId();"><!-- header에서 id="board"이미 사용중이라서 board2로 함 -->
            <div class="sub">
                <div class="size">
                    <h3 class="sub_title">비밀번호 찾기</h3>
                    
                    <div class="member">
                        <div class="box">
                            <fieldset class="login_form">
                                <ul>
                                    <li><input type="text" id="userid" name="userid" placeholder="아이디"></li>
                                    <li><input type="text" id="email" name="email" placeholder="이메일"></li>
                                    <li id="idArea"></li>
                                </ul>
                                <div class="login_btn"><input type="submit" value="비밀번호찾기" alt="비밀번호찾기" /></div>
                            </fieldset>
                            <div class="btnSet clear">
                                <div>
                                    <a href="login.do" class="btn">로그인</a> 
                                    <a href="searchId.do" class="btn">아이디 찾기</a>
                                </div>
                            </div>
                        </div>
                    </div>
        
                </div>
            </div>
        </form>
        <%@ include file="/WEB-INF/view/include/footer.jsp" %>
    </div>
</body>
</html>