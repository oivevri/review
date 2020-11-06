<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlTestView</title>
</head>
<body>
<h1>Map 으로 넘기기</h1>
	이름 : ${ requestScope.map.name }  <br>
	첫번째 취미 : ${ requestScope.map.hobby[0] }  <br>
	전체취미 : <c:forEach items="${ requestScope.map.hobby }" var="hb">${ hb } </c:forEach> <br>

<h1>Vo 로 넘기기</h1>
	회원 이름 : ${ requestScope.member.name }<br>
	회원 아이디 : ${ requestScope.member.getId() }<br>

<h1>List 로 넘기기</h1>
	첫번째 회원 이름 : ${ requestScope.memberList[0].name }<br>
	전체 회원 이름 : <c:forEach items="${ requestScope.memberList }" var="mem">${ mem.name } </c:forEach> <br>
	items에는 배열 그 자체가 들어가야한다 뒤에 더 뭐 적지말구.. 속성명 그대로 적고, 출력할때 필드명을 적어줘야함

<h1>세션에 담는다면?</h1>
	세션의 회원 이름 : ${ sessionScope.member.name }<br>

<h1>파라미터 param</h1>
	role이라는 파라미터 값을 주소를 통해 역으로 찾아보자 : ${ param.role }<br>
	http://localhost/review/JstlTestServ?role=admin <br>

<h1>모든 헤더 정보 읽어내기</h1>
	요청 이전 페이지 : <%= request.getHeader("Referer")%> = ${ header["Referer"] }<br>
	브라우저 : ${ header["User-Agent"] }<br>
	
<h1>쿠키객체 popupYn에서 쿠키 추출</h1>
	쿠키 이름 : ${ cookie.popupYn.name }<br>
	값을 읽어내자 : ${ cookie.popupYn.value }<br>
	유지시간 : ${ cookie.popupYn.maxAge }<br>
	
<%-- 	<h3>쿠키 값이 n이 아니면 알림창을 띄워보자</h3>
		<c:if test="${cookie.popupYn.value ne 'n'}">
			<script type="text/javascript">alert("광고입니다")</script>
		</c:if> --%>
		
	<h3>스크립트 안에서 쿠키를 읽어내서 알림창을 띄우고싶다</h3>
		<script type="text/javascript">
			function getCookie(cname) {
			  var name = cname + "=";
			  var decodedCookie = decodeURIComponent(document.cookie);
			  var ca = decodedCookie.split(';');
			  for(var i = 0; i <ca.length; i++) {
			    var c = ca[i];
			    while (c.charAt(0) == ' ') {
			      c = c.substring(1);
			    }
			    if (c.indexOf(name) == 0) {
			      return c.substring(name.length, c.length);
			    }
			  }
			  return "";
			}
			if (getCookie('popupYn') != 'y') {
				alert("광고입니다")
			}
		</script>
	<br>
<h1>배열 goods를 출력해보자</h1>
	Set을 통해 합계를 먼저 설정해보자 <c:set var="sum" value="0"/> <br>
	상품가격을 forEach를 통해 출력해보자 : <br>
	<c:forEach items="${ goods }" var="price"> ${ price } </c:forEach>
	<h3>c:if 로 출력해보자</h3><br>
	<c:forEach items="${ goods }" var="price">
		<c:if test="${price>200}"> price가 200보다 크면 "^" 기호 출력 : ${price} ^ <br>
		</c:if>
	</c:forEach>
	
	<h3>c:choose 로 출력해보자</h3><br>
	<c:forEach items="${ goods }" var="price">
		<c:choose>
		 	<c:when test="${price>=300}">${price} : A <br></c:when>
		 	<c:when test="${price>=200}">${price} : B <br></c:when>
		 	<c:otherwise>${price} : C <br></c:otherwise>
		</c:choose>
		<c:set var="sum" value="${sum+price}"/>
	</c:forEach>
	
	상품 합계 : ${ sum } <br>

<h1>vo의 어떠한 속성의 객체의 값을 바꿔보자</h1>
	<c:set target="${ member }" property="id" value="idUpdate"></c:set><br>

<h1>map에 배열이아닌 String으로 값을 넣은걸 ,를 기준으로 잘라서 출력해보자</h1>
	job list :
	<c:forTokens items="${map.job}" delims="," var="job">${job} </c:forTokens>
</body>
</html>