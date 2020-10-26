<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event</title>

<body>
<button type="button" id="btn1">이벤트처리</button><p id="info">상세소개</p>
<button type="button" id="btn2">이벤트처리</button><p id="info2">상세소개2</p>
<button type="button">이벤트처리</button><p id="info3">상세소개3</p>

<script type="text/javascript">
	// 이벤트 핸들러
	btn1.addEventListener("click", btnHandler);
	btn2.addEventListener("click", btnHandler);
	document.body.addEventListener("click",function(){alert("전파");})
// 버튼1,2 어디를 누르든간에 바디에 있는 이벤트도 실행됨
	
	function btnHandler(){ 
		event.target.nextSibling.style.display="none";
	}
</script>
</head>
</body>
</html>