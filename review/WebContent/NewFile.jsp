<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 등록</title>
</head>
<body>
<form action="UploadServ" method="post" enctype="multipart/form-data">
<!-- enctype="multipart" 이부분이 파일첨부를 뜻한다 -->
파일: <input type="file" name="file" multiple="multiple" /><br/>
설명: <input type="text" name="description" /><br/>
<input type="submit" value="업로드" />
</form>
</body>
</html>