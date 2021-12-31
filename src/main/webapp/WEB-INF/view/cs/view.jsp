<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
    
</head>
<body>
    <div class="wrap">
        <%@ include file="/WEB-INF/view/include/header.jsp" %>
        <div class="sub">
            <div class="size">
                <h3 class="sub_title">공지사항</h3>
                <div class="bbs">
                    <div class="view">
                        <div class="title">
                            <dl>
                                <dt>${data.title}</dt>
                                <dd class="date">작성일 : ${data.regdate } </dd>
                            </dl>
                        </div>
                        <div class="cont"><p>${data.content } </p> </div>
                                    
                        <div class="btnSet clear">
                            <div class="fl_l">
                           		<a href="notice.do" class="btn">목록으로</a>
                           		<a href="" class="btn">수정</a>
	                            <a href="" class="btn">삭제</a>
	                            
                            </div>
                        </div>
                
                    </div>
            
            	</div>
       		 </div>
		</div>
        <%@ include file="/WEB-INF/view/include/footer.jsp" %>
    </div>
</body>
</html>