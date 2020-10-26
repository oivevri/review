<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jquerySelector2</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
$(() => {
	$("li:first-child").css("color","blue"); // 모든 li 태그중 첫번째
	$("li:first").css("color","red"); // 첫번째 하나만 선택
	$("li:nth-child(2)").css("backgroundColor","yellow");// 두번째 li들
});
</script>
</head>
<body>
<h3>필터링</h3>
<ul>
	<li>자바
	<li>JSP
	<li>자바
	<li>JSP
</ul>
<ul>
	<li>스프링
	<li>egov
	<li>스프링
	<li>egov
</ul>
</body>
</html>