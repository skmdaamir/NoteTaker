<%@page import="org.hibernate.Transaction"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Notes : Note Taker</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container-fluid">
		<%@include file="navbar.jsp"%>
		<h1>Edit Your Note</h1>
		<br>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());

		Session s = FactoryProvider.getFactory().openSession();

		Note note = (Note) s.get(Note.class, noteId);
		%>

		<form action="UpdateServlet" method="post">

			<input value="<%=note.getId()%>" name="noteId" type="hidden" />
			<div class="form-group">
				<label for="title">Note Title</label> <input required type="text"
					name="title" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Title"
					value="<%=note.getTitle()%>">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea required class="form-control" name="content"
					style="height: 300px;" id="content"
					placeholder="Enter your content here">
					<%=note.getContent()%></textarea>
			</div>
			<div class="container">
				<button type="submit" class="btn btn-success">Update</button>
			</div>
		</form>

	</div>
</body>
</html>