<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>debugTest</title>
<script type="text/javascript">
var yn = localStorage.getItem("popyn");
if (yn != "n") {
	alert("팝업");
}
function checkPopup() {
	localStorage.setItem("popyn", "n");
}
function sum() {
	var a = 10;
	var b = 10;
	var c = subSum(a,b);
	console.log(c);
}
function subSum(x,y) {
	return x+y;
}
</script>
</head>
<body>
디버그 테스트
<button type="button" onclick="sum()">합계</button>
<button type="button" onclick="checkPopup()">오늘은 더이상 열지않기</button>
</body>
</html>

