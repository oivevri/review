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
	<!-- Button trigger modal -->
	<table>
		<tr>
			<td><button type="button" class="btn btn-primary"
					data-toggle="modal" data-target="#exampleModal">0</button></td>
			<td>1</td>
		</tr>
		<tr>
			<td><button type="button" class="btn btn-primary"
					data-toggle="modal" data-target="#exampleModal">1</button></td>
			<td>2</td>
		</tr>
		<tr>
			<td><button type="button" class="btn btn-primary"
					data-toggle="modal" data-target="#exampleModal">2</button></td>
			<td>3</td>
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
					<div class="card" style="width: 18rem;">
						<img src="..." class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Card title</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<a href="#" class="btn btn-primary">Go somewhere</a>
						</div>
					</div>
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
			$('#exampleModal').on('show.bs.modal', function(event) {
				var button = $(event.relatedTarget) // 모달 일으킨 버튼
				var recipient = button.data('whatever') // Extract info from data-* attributes
				var modal = $(this) // this 는 이 모달 팝업

				// ajax
				$.ajax({
					url : "getData?no="+button.text(),
					dataType : "json",
					success : function(result) {
						modal.find('.card-title').text(result.title)
						modal.find('.card-text').text(result.content)
					}
				});
			})
		})
	</script>
</body>
</html>