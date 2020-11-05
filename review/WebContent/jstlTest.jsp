<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlTest.jsp</title>
</head>
<body>
<h1>속성명이 fruit 인 배열</h1>
<br>
<h3>core</h3>
<% 
	ArrayList<String> list =  new ArrayList<>();
	list.add("딸기");
	list.add("사과");
	list.add("복숭아");
	list.add("오렌지");
	request.setAttribute("fruit", list);
	pageContext.setAttribute("color", "lightblue");
%>
${ fruit[0] } 이걸 for문을 돌리고싶어 <br>
루트변수를 변수(var)에 넣어준다 ?? 몰라.. <br>
<c:forEach items="${ fruit }" var="f" varStatus="s">
	${ f } <br>
</c:forEach>
varStatus 는 상태값을 저장하는 변수 <br>
count 는 갯수 <br>
<c:forEach items="${ fruit }" var="f" varStatus="s">
	${ s.count } : ${ f } <br>
</c:forEach>
index 는 인덱스번호 <br>
<c:forEach items="${ fruit }" var="f" varStatus="s">
	${ s.index } : ${ f } <br>
</c:forEach>
<br>

<hr>

<h3>function</h3>
총 과일 수를 출력하고싶다 <br>
${ fn:length(fruit) } <br>
<p/>
<h5>index 따라 배경색 바뀌게 다 따로 해줘봄</h5>
<c:forEach items="${ fruit }" var="f" varStatus="s">
	<c:set var="color" value="cyan" />
	<c:if test="${ s.index%2 == 0 }" >
		<c:set var="color" value="yellow" />
	</c:if>
	<div style="background-color: ${ color }" >
		${ s.index } : ${ f }
	</div>
</c:forEach>
</body>
</html>