<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery.jsp</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		// j쿼리 객체		
		var $btn = $("#btn1");
		$btn.css("backgroundColor", "blue");
		
// 클릭이벤트
		$("#btn1").on("click", function(){
			$("#result").html("jQuery 변경")
		})
		
		// dom 객체
//		var dom =  = document.getElementById("btn1")	
// // 돔 객체 내용물을 변경하기
//		btn.addEventListener("click", function(){
//			var result = document.getElementById("result")
//			result.innerHTML="dom변경됨"
//		})
//		dom.style.backgoundColor = "red";
// 	// 일반 dom 객체를 j쿼리 객체로 바꾸고싶다면 그냥 $()로 감싸면 됨
// 		$(btn).html("")
	
// // j쿼리 객체를 변경 -> 셋다 같은 결과
// 		$("#btn1").html("jqueyr 변경");
// 		#btn.html("어쩌고");
// 		#(btn).html("저쩌고");
	})
</script>
</head>
<body>
	<button type="button" id="btn1">내용변경</button>
	<div id="result"></div>
</body>
</html>