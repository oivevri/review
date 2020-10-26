<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아작스 다시보기-아이디검색</title>
<script type="text/javascript">
	//펑션내용은 w3에서 가져온것		
	function findUsername() {
// 1. XHR 객체를 생성
		var xhttp = new XMLHttpRequest();
// 2. 콜백함수 정해줌. 서버로부터 응답이 왔을때 처리할 함수.
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4) {
				if (this.status == 200) {
				var obj = JSON.parse(this.responseText); // 결과값 받아오는걸 obj에 담아서
				document.getElementById("result").innerHTML += obj.name; // obj의 name 필드만 가져오자
				} else { 
					document.getElementById("result").innerHTML = "error: " + this.status;
				}
			} else {
				document.getElementById("result").innerHTML = "로딩중";
			}
		};
// 3. 서버 연결준비	 open 이라는 함수이용해서 (연결방식, 서버 연결할 페이지???, 디폴트값 true라 생략가능)
		var param = "userid=" + userid.value; // jsp 페이지로 이동할때 쓸 파라미터 만듦
		xhttp.open("POST", "server/findName.jsp?", true);
		xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
// 4. 요청시작
		xhttp.send(param);
		console.log("요청시작"); // 지금은 비동기라서 이게 2초뒤에 뜨는게 아니라 바로 뜬다
	}
</script>
</head>
<body>
	<input id="userid">
	<button type="button" id="btnFind" onclick="findUsername()">검색</button>
	<div id="result">결과</div>
</body>
</html>