<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Please fill your Details</h1>

		<!-- This is Add Form -->

		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> 
				<input required type="text"
				name="title"
					class="form-control" id="title" aria-describedby="emailHelp"
					placeholder="Enter Title">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea required class="form-control"
				name="content"
				 style="height: 300px;" id="content"
					placeholder="Enter your content here"></textarea>
			</div>
			<div class="container">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>
	</div>
</body>
</html>