<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
</head>
<body>
<jsp:include page="../menu/mainMenu.jsp"></jsp:include>
<hr>
<div align="center">
	<div><h1>회원가입</h1></div>
	<div>
		<form id="frm" name="frm" action="memberInsert.do" method="post">
			<table border="1" style="border-collapse: collapse; text-align: center;">
				<tr>
					<th width="150" style="background-color: lightblue;">아 이 디</th>
					<td width="300"><input type="text" id="id" name="id"></td>
				</tr>
			
				<tr>
					<th width="150" style="background-color: lightblue;">이미지</th>
					<td width="300"><input type="text" id="img" name="img"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="회원가입">&nbsp;&nbsp;
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</form>
	</div>
</div>

</body>
</html>