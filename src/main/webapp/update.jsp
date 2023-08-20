<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.Factoryprovider"%>
<%@page import="com.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update - Notes</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">	
	<link href="css/style.css" rel="stylesheet"/>
</head>
<body>
<%@include file="nav-bar.jsp"%>
<div class="cantainer text-center">
<h1>Update page</h1>
<%
int nId=Integer.parseInt(request.getParameter("note_id").trim());
Session s=Factoryprovider.getsf().openSession();
Transaction ts=s.beginTransaction();
Note n=s.get(Note.class, nId);
s.close();
%>
    <!-- this is add task form -->
    <form action="updateserv" method="post">
    <input value="<%=n.getId()%>" name="id" type="hidden"/>
  <div class="mb-3">
    <label for="titile" 
    class="form-label">Task Title</label>
    <input type="text"
    name="title" 
    class="form-control" id="title" 
    placeholder="Enter your task title" 
    required
    value="<%=n.getTitle() %>"
    />
  </div>
  <div class="mb-3">
    <label for="content" 
    class="form-label">Content</label>
   <textarea id="content" 
   name="content"
   placeholder="enter your content here" required
   class="form-control" style="height:300px">
   <%=n.getContent()%>
</textarea>

  </div>
 </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-success">Save</button>
</form>
</div>
</body>
</html>