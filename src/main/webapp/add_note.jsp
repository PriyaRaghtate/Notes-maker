<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<link href="css/style.css" rel="stylesheet"/>
    <title>Add-Notes</title>
</head>
<body>
	<div class="container-fluid p-0 m-0">
    <%@include file="nav-bar.jsp"%>
    <br>
    <h1>Add your Notes</h1>
    <!-- this is add task form -->
    <form action="saveser" class="addtask" method="post">
  <div class="mb-3">
    <label for="titile" 
    class="form-label">Task Title</label>
    <input type="text"
    name="title" 
    class="form-control" id="title" 
    placeholder="Enter your task title" 
    required>
  </div>
  <div class="mb-3">
    <label for="content" 
    class="form-label">Content</label>
   <textarea id="content" 
   name="content"
   placeholder="enter your content here" required
   class="form-control" style="height:300px"></textarea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Add</button>
	</div>
</form>
    </div>
</body>
</html>