<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 성공</title>
</head>
<body>
   <jsp:include page="../menu/mainMenu.jsp" />
   <hr>
   <div align="center">
      <div>
         <!-- 서버가 만든 request 객체를 그대로 사용하겠다. : param -->
         <h1>${param.id}님회원가입을축하드립니다.</h1>
      </div>
      <div>
         <table border="1" style="border-collapse: collapse;">
            <tr>
               <th width="150" style="background-color: lightblue;">아이디</th>
               <td width="200" align="center">${param.id}</td>
            </tr>
            <tr>
               <th width="150" style="background-color: lightblue;">이름</th>
               <td width="200" align="center">${param.name}</td>
            </tr>
            <tr>
               <th width="150" style="background-color: lightblue;">주소</th>
               <td width="200" align="center">${param.address}</td>
            </tr>
            <tr>
               <th width="150" style="background-color: lightblue;">전화번호</th>
               <td width="200" align="center">${param.tel}</td>
            </tr>
            <tr>
               <th width="150" style="background-color: lightblue;">가입일</th>
               <td width="200" align="center">${param.enterdate}</td>
            </tr>
         </table>
      </div>
   </div>
</body>
</html>