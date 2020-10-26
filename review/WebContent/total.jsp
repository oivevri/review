<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>total</title>
</head>
<body>
<div id="score">
	<div>100</div>
	<div>200</div>
	<div>300</div>
	<div>400</div>
</div>
<div>
	합계<span id="result"></span>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
// div 합을 계산해서 result 위치에 출력. 이때 each() 함수를 쓸 것

	var num = $("#score").children();
	var sum = 0;
	num.each(function(index) {
		sum += parseInt($(this).text());
	});
	
	$("#result").append(sum);
</script>
</body>
</html>