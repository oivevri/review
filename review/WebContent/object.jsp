<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>object</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
<div>a</div>
<div>b</div>
<div>c</div>
<!-- 페이지 로드 굳이안쓰고 하기위해서 body 끝나기 바로위에 스크립트 짠다 -->
<script type="text/javascript">
	var div = document.getElementsByTagName("div"); // 이때 변수 div 는 DOM 객체임
	// div[0].style.color = "green"; 를 제이쿼리 객체로 바꿔보자
	$(div[0]).css("color", "red"); // 여기서 div는 변수라서 따옴표 붙이면 안됨~~!! 돔객체를 j쿼리객체로 바꾸려면 $로 감싸면 됨
	// $(dom객체)
	
	var $div = $("div"); // 태그가 div인 애들을 찾아서 변수 $div에 넣자! 변수이름에 _랑 $는 쓸수있음
	$div[1].style.color = "blue"; // 이때 div는 dom객체가 됨 !
	$div.item(2).style.backgroundColor = "yellow";
	// jquery -> dom : get(), item(), [] ..
</script>
</body>
</html>