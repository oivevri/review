<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart2</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	// 체크한 상품의 수량과 단가의 곱의 전체 합계를 출력하시오.
	$(function() {
		// 아!! 버튼 클릭하면 돌아가는 이벤트였음 ㅠㅠ 어떻게 이런 실수를 하노..
		$("#btn").bind("click", function() {
		var num = 0;
		var cost = 0;
		var sum = 0;
		var chk = $('input[type="checkbox"]:checked');

		/* $(":checkbox:checked").each(function(){
			num = $(chk[0]).parent().parent().children().eq(2).text();
			cost = $(chk[0]).parent().parent().children().eq(3).text();
			console.log(num);
		
		}); */

/* 		$('input[type="checkbox"]:checked').each(function() {
			var tr = $('input[type="checkbox"]:checked').parent().parent().eq(i);
			// 이게 tr에 내가 클릭한 것의 부모(td)의 부모(tr)의 클릭한 i번째 값을 넣은거고
			var td = tr.children();
			// td에 그 i번째 tr의 첫번째 자식(td)를 넣은거고
			
			num = td.eq(2).text();
			// num에 첫번째 td의 옆옆.. 그니까 왼쪽에서 3번째.. 인덱스 2번
			cost = td.last().text();
			// 얘는 마지막..
			console.log("num:" + num);
			sum += num * cost;
		}); 
		
		여전히 안되네.. for문 가본다 */
		for (var i=0; i<chk.length; i++ ){ // 음 근데 길이를 선택한 그 길이로 햇어도
			var tr = chk.parent().parent().eq(i); // 
			var td = tr.children();
			num = td.eq(2).text();
			cost = td.last().text();
			console.log(num); // 아니.. 왜 콘솔도 안찍히지??ㅜㅜ... 클린한 것의 부모의 부모가 tr이고.. 그거의 자식이 td고.. 그거의 text값 가져오는거 아니냐구..왜지..
			
			sum += num * cost;
		};
		

		$("#total").append(sum);
		});
	});
</script>
</head>
<body>
	<h3>장바구니</h3>
	<button id="btn">계산</button>
	<table border="1">
		<thead>
			<tr>
				<td>선택</td>
				<td>상품</td>
				<td>수량</td>
				<td>단가</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="checkbox"></td>
				<td>볼펜</td>
				<td>2</td>
				<td>100</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td>사표</td>
				<td>1</td>
				<td>200</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td>지우개</td>
				<td>5</td>
				<td>50</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td>노트</td>
				<td>10</td>
				<td>200</td>
			</tr>
		</tbody>
	</table>
	<div>
		합계<span id="total"></span>
	</div>
</body>
</html>