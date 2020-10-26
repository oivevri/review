<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>idFind jQuery 버전</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	function findUsername() {
		var param = "userid=" + userid.value;

		$.ajax({
			url : "server/findName.jsp",
			data : param,
			dataType : "json",
			method : "get" // 아작스는 여기서 끝내고
		}).done(function(d){ // 성공
			result.innerHTML += d.name;
		})
		.fail(function(xhr, status){ // 실패
			result.innerHTML += status;
		})
		.always(function(){
			result.innerHTML += "무조건 실행";
		});

		console.log("요청시작");
		
	}
</script>
</head>
<body>
	<input id="userid">
	<button type="button" id="btnFind" onclick="findUsername()">검색</button>
	<div id="result">결과</div>
</body>
</html>