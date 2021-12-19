$(function(){
    $(".depth1 > li").mouseover(function(){
        //console.log($(this));
        $(this).find(".depth2").stop().slideDown();
    }).mouseleave(function(){
        $(this).find(".depth2").stop().slideUp();
    });

    // 퀵메뉴
    var quick_left = $(".menu > ul:first-child").position().left + 1200;
    var quick_top = $(".menu > ul:first-child").position().top + 40;
    //console.log(quick_left);
    $(".quickMenu").css({
        top : quick_top,
        left : quick_left
    });
    // 스크롤이벤트 좌표 변경
    $(window).scroll(function(){
        var newTop = $(window).scrollTop() + quick_top +"px";
        //$(".quickMenu").css("top",newTop);
        $(".quickMenu").stop().animate({
            "top":newTop
        }, 500);
    });
    // goTop클릭하면 맨위로 이동
    $(".goTop").click(function(){
        $("html").animate({scrollTop:0},300);
    });

});
function selectDate(name){
	$.datepicker.setDefaults({
				  dateFormat: 'yy-mm-dd',
				  prevText: '이전 달',
				  nextText: '다음 달',
				  monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
				  monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
				  dayNames: ['일', '월', '화', '수', '목', '금', '토'],
				  dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
				  dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
				  showMonthAfterYear: true,
				  yearSuffix: '년'
				});
			$( "#"+name ).datepicker();
}
function popupCookie(name){
	var today = new Date();
	today.setDate(today.getDate()+1);//현재날짜에 하루를 더하기
	document.cookie = "mainPopup=popup;path=/;expires="+today.toGMTString()+";";
	$("."+name).hide();
}