<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
$(() => {
	var num = $("td:nth-child(2):gt(0)");
	var cost = $("td:nth-child(3):gt(0)");
	
	$("td:nth-child(2):gt(0)").css("color","red");
	$("td:nth-child(3):gt(0)").css("color","blue");
	
	var sum = 0;
	
	for (i=0; i<num.length; i++){
			sum += $(num[i]).text() * $(cost[i]).text();
	}
	
	$("#total").append(sum);
});
</script>
</head>
<body>
<h3>장바구니</h3>
<table border="1">
<thead>
	<tr><td>상품</td><td>수량</td><td>단가</td></tr>
</thead>
<tbody>	
	<tr><td>볼펜</td><td>2</td><td>100</td></tr>
	<tr><td>사표</td><td>1</td><td>200</td></tr>
	<tr><td>지우개</td><td>5</td><td>50</td></tr>
</tbody>	
</table>
<div>합계<span id="total"></span></div>
</body>
</html>