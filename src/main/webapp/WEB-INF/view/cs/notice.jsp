<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
	<link rel = "stylesheet" href = "/TProject/css/bootstrap.min.css">
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<link rel="stylesheet" href="/TProject/css/reset.css"/>
	<link rel="stylesheet" href="/TProject/css/contents.css">
	<link rel="stylesheet" href="/TProject/css/common.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
	<script src="/TProject/js/common.js"></script>
    <script src="/TProject/js/main.js"></script>
    <script type="text/javascript" src="/TProject/smarteditor/js/HuskyEZCreator.js"></script>
</head>
<body>
	<div class="wrap">
		<%@ include file="/WEB-INF/view/include/header.jsp" %>
		<div class="cs_body">
			<div id="snb">
	            <h2>
	                고객센터
	            </h2>
	            
	            <ul class="nav">
	                <li class="active"><a href="/TProject/cs/notice.do">공지사항</a></li>
	                <li class=""><a href="">자주하는질문</a></li>
	                <li class=""><a href="">1:1 문의하기</a></li>
	                <li class=""><a href="">배송·통관·관세</a></li>
	                <li class=""><a href="">취소·반품·환불·교환</a></li>
	                <li class=""><a href="">파손·분실 보상안내</a></li>
	            </ul>
	        </div> <!-- snb// -->
	        <div class="notice_body">
	            <div class="top">
	                <div class="title" style="font-size: 23px;font-weight:bold; color:#333;">
	                    공지 사항
	                </div>
	                <div class="Search">
	                    <form method="get" name="searchForm" id="searchForm" action="">
	                        <span class="srchSelect">
	                            <select id="stype" name="searchType" class="dSelect" title="검색분류 선택">
	                                <option value="">전체</option>
	                                <option value="title">제목</option>
	                                <option value="contents">내용</option>
	                            </select>
	                        </span>
	                        <span class="searchWord">
	                            <input type="text" id="sval" name="searchWord" value=""  title="검색어 입력">
	                            <input type="button" id="searchbtn" value="검색" title="검색">
	                        </span>
	                    </form>
	                </div>
	            </div>
	            <div class="bbs">
	                <table class="list">
	                    <colgroup>
	                        <col width="80px" />
	                        <col width="*" />
	                        <col width="100px" />
	                        <col width="100px" />
	                    </colgroup>
	                    <thead>
	                        <tr>
	                            <th>번호</th>
	                            <th>제목</th>
	                            <th>글쓴이</th>
	                            <th>작성일</th>
	                        </tr>
	                    </thead>
	                    <tbody>
							<c:if test="${empty list }">
                            <tr>
                                <td class="first" colspan="4">등록된 글이 없습니다.</td>
                            </tr>
							</c:if>
	                        <c:if test="${!empty list }">    
	                        <c:forEach var="vo" items="${list}" varStatus="status">   
	                        <tr <c:if test="${vo.note == 1 }">class="notice"</c:if>>
	                            <td>
	                            	<c:if test="${vo.note == 1 }">
	                                <em class="type">공지</em>
	                                </c:if>
	                                <c:if test="${vo.note != 1 }">
	                                <em class="type">${(totCount-status.index) - ((noticeVo.page-1)*10)}</em>
	                                </c:if>
	                            </td> 
	                            <td class="subject" style="text-align:left;">
	                                <a href="view.do?noticeno=${vo.noticeno}">${vo.title }</a>
	                            </td>
	                            <td class="writer">
	                                관리자
	                            </td>
	                            <td class="date"><fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/></td>
	                        </tr>
	                        </c:forEach>
	                   
	                        </c:if>
	                    </tbody>
	                </table>
	                <% /*
	                <div class="btnSet"  style="text-align:right;">
	                    <a class="btn" href="write.do">글작성 </a>
	                </div>
	                */%>
	                <div class="pagenate clear">
	                    <ul class='paging'>
	                    	<c:forEach var="rp" begin="1" end="${totPage}">
                            <li><a href='javascript:;' <c:if test="${rp==noticeVo.page}">class='current'</c:if>>1</a></li>
                        </c:forEach>
	                    </ul> 
	                </div>
	            </div>
	        </div><!-- notice_body// -->
        </div>
        <%@ include file="/WEB-INF/view/include/footer.jsp" %>
	</div>

</body>
</html>