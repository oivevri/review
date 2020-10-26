<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jquerySelector.jsp</title>
<style type="text/css">
	.back {
		font-size: 1.2em;
		background-color: yellow;
	}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript">
	$(function() {
		$("td").bind("click", function() {
			var tds = $(this).parent().children();
			
	// for 문		
			var str = "";
			
			for(i=0; i<tds.length; i++) {
			// 제이쿼리 객체 
				// tds.item(0);
				str += $(tds[i]).text(); // tds가 배열이니까 배열모양으로 해도 됨
			}
			alert(str);
	// each 문		
			str = "";
			tds.each(function(index){
				str += $(this).text();
			});
			alert(str);
	// $.each 문		
			str = "";
			$.each(tds, function(index) {
				str += $(this).text();
			})
			alert(str);
		})		
	});

</script>
</head>
<body>
	<div>탐색 선택자</div>
	<table border="1">
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>4</td>
			<td>5</td>
			<td>6</td>
		</tr>
		<tr>
			<td>7</td>
			<td>8</td>
			<td>9</td>
		</tr>
	</table>
</body>
</html>