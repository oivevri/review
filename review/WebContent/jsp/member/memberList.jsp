<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원리스트</title>
</head>
<body>
<jsp:include page="../menu/mainMenu.jsp"></jsp:include>
<hr>
<div align="center">
	<div><h1>회원목록 정보</h1></div>
	<div>
		<table border="1" style="border-collapse: collapse; text-align: center;">
		<!-- 칼럼명 적어주고 -->
			<tr style="background-color: lightblue;">
				<th width="100">아이디</th>
				<th width="100">이미지</th>
			</tr>
		<!-- 데이터가 몇개일지 모르니까 forEach 돌려서 행 만들어준다 -->	
			<c:forEach var="member" items="${ members }">
				<tr>
					<td>${ member.id }</td>
					<td><img src="${pageContext.request.contextPath}/images/${ member.img }"></td>
				</tr>			
			</c:forEach>
		</table>
	</div>
</div>
</body>
</html>