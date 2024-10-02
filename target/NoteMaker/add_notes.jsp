<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- All CSS and JS Encoding Link and scripts -->
<%@include file="all_js_css.jsp"%>
<link rel="stylesheet" href="CSS/style3.css" />
<title>Add Notes</title>
</head>
<body>
	<div><%@include file="navbar.jsp"%></div>
	<section class="bg">
		<div class="container">
			<div class="card mx-auto">
				<div class="card-body">
					<h1 class="card-title">Write Your Note</h1>
					<!-- Form Component -->
					<form action="SaveNoteServlet" method="post">
						<div class="form-group">
							<label for="title">Note Title</label> <input type="text"
								class="form-control" name="title" id="title"
								aria-describedby="titleHelp" placeholder="Enter Note Title"
								required /> <small id="titleHelp" class="form-text text-muted">Write
								meaningful, precise and accurate title for your Note</small>
						</div>
						<div class="form-group">
							<label for="desc">Description</label>
							<textarea class="form-control" name="desc" id="desc"
								placeholder="Add your Note Description" style="height: 200px"
								required></textarea>
						</div>
						<div>
							<button type="submit" class="btn btn-primary">Add Note</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer -->
	<div class="footer">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>