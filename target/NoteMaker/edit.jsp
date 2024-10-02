<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- All CSS and JS Encoding Link and scripts -->
<%@include file="all_js_css.jsp"%>
<link rel="stylesheet" href="CSS/style3.css" />
<title>Edit Note</title>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<br>
	<div class="bg mb-5">
		<div class="card">
			<h1>Notes Edit Form</h1>
			<%
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			// first get the Object from Database by ID
			Note note = s.get(Note.class, noteId);
			%>

			<form action="UpdateServlet" method="post">
				<input type="hidden" name="note_Id" value="<%=note.getId()%>" />
				<div class="form-group">
					<label for="id">Note Id</label> <input type="number"
						class="form-control" aria-describedby="idMsg" id="id"
						value="<%=note.getId()%>" disabled="disabled" /> <small
						id="idMsg" class="form-text text-muted">ID field is
						immutable and cannot be modified.</small>
				</div>
				<div class="form-group">
					<label for="title">Title</label> <input type="text"
						class="form-control" name="title" id="title"
						value="<%=note.getTitle()%>" aria-describedby="titleHelp"
						placeholder="Enter Note Title" required /> <small id="titleHelp"
						class="form-text text-muted"> Write meaningful, precise
						and accurate title for your Note </small>
				</div>
				<div class="form-group">
					<label for="desc">Description</label>
					<textarea class="form-control" name="desc" id="desc"
						placeholder="Add your Note Description" style="height: 300px"
						required><%=note.getDesc()%></textarea>
				</div>
				<div>
					<button type="submit" class="btn btn-success  btn-block">Update</button>
				</div>
			</form>
		</div>
	</div>
	<!-- Footer -->
	<div class="footer">
		<%@include file="footer.jsp"%>
	</div>
</body>
</html>