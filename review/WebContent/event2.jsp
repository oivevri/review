<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event2</title>
</head>
<body>
<input id="txtFruit"><button id="btn">추가</button>
<div id="result">
	<p class="pf">사과</p>
	<p class="pf">바나나</p>
	<p class="pf">오렌지</p>
</div>
<script type="text/javascript">
	result.addEventListener("click", mouseHandler); // 부모태그인 div에 이벤트를 걸었다
	
	function mouseHandler() {
		console.log(this);
		console.log(event.target);
		
		// 클릭한 애들만 색이 바뀌게
		event.target.style.color = "lightblue";
	}
	
	// 버튼클릭이벤트
	btn.addEventListener("click", function() {
		result.innerHTML += '<p class="pf">' + txtFruit.value + '</p>'; 
	});
</script>
</body>
</html>