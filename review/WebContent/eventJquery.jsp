<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eventJquery</title>
</head>
<body>
<input id="txtFruit"><button id="btn">추가</button>
<div id="result">
	<p class="pf">사과</p>
	<p class="pf">바나나</p>
	<p class="pf">오렌지</p>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$("#result").on("click", ".pf", mouseHandler);
	
	$("#btn").bind("click", function() {
		$("#result").append('<p class="pf">' + txtFruit.value + '</p>'); 
	}); // 아직 추가한 p태그에는 이벤트 안걸림
	
	function mouseHandler() {
		// 클릭한 애들만 색이 바뀌게
		$(event.target).css("color", "lightblue");
	}
</script>
</body>
</html>