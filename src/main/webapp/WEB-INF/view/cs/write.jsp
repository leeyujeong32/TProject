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
    <script type="text/javascript" src="/TProject/smarteditor/js/HuskyEZCreator.js"></script>
    <script>
	    var oEditors;
	    $(function(){
	    	oEditors = setEditor("content");
	    });
	    
    	function goSave(){
    		if ($("#title").val() == ''){
    			alert("제목을 입력하세요");
    			$("#title").focus();
    			return;
    		}
    		if($("#note").prop("checked")){
    	    	$("#note").val(1);
    	    }else{
    	    	$("#note").val(0);
    	    }
    		oEditors.getById['content'].exec("UPDATE_CONTENTS_FIELD",[]);
    		console.log($("#note").val());
    		
    		$("#frm").submit();
    	}
    	
    </script>
</head>
<body>
    <div class="wrap">
        <%@ include file="/WEB-INF/view/include/header.jsp" %>
        <div class="sub">
            <div class="size">
                <h3 class="sub_title">게시판</h3>
    
                <div class="bbs">
                <form method="post" name="frm" id="frm" action="insert.do" enctype="multipart/form-data" >
                    <table class="board_write">
                        <tbody>
                        <tr>
                            <th>제목</th>
                            <td>
                                <input type="text" name="title" id="title" class="wid100" value=""/>
                            </td>
                        </tr>
                        <tr>
                        	<th>공지 여부</th>
                        	<td>
                        		<input type="checkbox" name="note" id="note">
                        	</td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td>
                                <textarea name="content" id="content" style="width:1000px;"></textarea>
                            </td>
                        </tr>
                
                        </tbody>
                    </table>
                    <div class="btnSet"  style="text-align:right;">
                        <a class="btn" href="javascript:goSave();">저장 </a>
                    </div>
                    </form>
                </div>
            </div>
        </div>
        <%@ include file="/WEB-INF/view/include/footer.jsp" %>
    </div>
</body>
</html>