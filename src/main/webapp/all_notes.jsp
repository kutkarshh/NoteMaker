<%@page import="com.helper.Date2String"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_js_css.jsp"%>
<link rel="stylesheet" href="CSS/style2.css" />
<meta charset="UTF-8">
<title>NoteMaker : All Notes</title>
</head>
<body class="bg">
	<div>
		<%@include file="navbar.jsp"%>
		<br>
		<div class="container">
			<section class="hero py-5">
				<div class="container">
					<h1 class="display-4">Explore Your Notes with NoteMaker</h1>
					<b class="lead">Efficient note-taking made simple and
						organized.</b>
				</div>
			</section>

			<div class="row">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query<Note> q = s.createQuery("from Note", Note.class);
				List<Note> list = q.getResultList();

				for (Note note : list) {
				%>
				<div class="col-md-6 mb-4">
					<div class="card card-h">
						<div class="media">
							<div class="mr-3">
								<img class="card-img-top" style="max-width: 70px;"
									src="images/note_png.png" alt="card image cap">
							</div>
							<div class="media-body mt-4">
								<h5 class="card-text">
									#<%=note.getId()%></h5>
							</div>
						</div>
						<div class="card-body px-4">
							<h5 class="card-title"><%=note.getTitle()%></h5>
							<h6 class="card-subtitle mb-2 text-muted"><%=Date2String.formatTimeDifference(note.getAddedDate())%></h6>
							<p class="card-text"><%=note.getDesc()%></p>
							<div class="card-buttons text-center py-2">
								<a href="edit.jsp?note_id=<%=note.getId()%>"
									class="btn btn-primary">Edit</a> <a
									href="DeleteServlet?note_id=<%=note.getId()%>"
									class="btn btn-danger">Delete</a>
							</div>
						</div>
					</div>
				</div>
				<%
				}
				s.close();
				%>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<div>
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>