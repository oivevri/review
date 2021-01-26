<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>

</head>
<body>
	<!-- trigger modal -->
	<table style="border: 1px solid black">
		<tr>
			<td>0</td>
			<td class="boardInfo" data-no="0">1</td>
		</tr>
		<tr>
			<td>1</td>
			<td class="boardInfo" data-no="1">2</td>
		</tr>
		<tr>
			<td>2</td>
			<td class="boardInfo" data-no="2">3</td>
		</tr>
	</table>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					...
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			$('.boardInfo').on("click", function(event) {
				var modal = $("#exampleModal") //
				var no = $(event.target).data("no"); // 이때 data("no")는 td에 걸어둔 data-no="1"
				// ajax
				$.ajax({
					url : "getData3?no="+no,
					dataType : "html", // html은 굳이 안적어줘도됨
					success : function(result) {
						modal.find('.modal-body').html(result); // 리절트 내용물을 통째로
						modal.modal("show"); // 모달 보여라는 옵션(show). 실컷 만들어놓고 화면에 안보이면 안되니까
					}
				});
			})
		})
	</script>
</body>
</html>