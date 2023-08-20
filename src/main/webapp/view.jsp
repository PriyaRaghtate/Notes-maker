<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.Factoryprovider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View notes</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<link href="css/style.css" rel="stylesheet"/>
</head>
<body>
<body>
    <div class="container-fluid p-0 m-0">
    <%@include file="nav-bar.jsp"%>
    <br>
    <h1 class="text-uppercase" style="text-align: center;"> All notes</h1>
    
    <div class="row">
    <div class="col-12">
   
    <%
    	Session s=Factoryprovider.getsf().openSession();
    		Query q=s.createQuery("from Note");
    		List<Note> l=q.list();
    		for(Note n:l){
    			
    		%>
    		
    		<div class="card m-3" >
    		<img class="card-img-top m-4 mx-auto" style="max-width:100px" src="img/notes.png" alt="card image cap" >
 			  <div class="card-body px-5">
    			<h6 class="card-title mb-3 text-muted">Title:<%=n.getTitle()%></h6>
    			<p class="card-text"><%=n.getContent()%></p>
    			<p class="card-text">Date:<%=n.getAdddate()%></p>
    			<div class="cantainer text-center mt-2">
    			<a href="update.jsp?note_id=<%=n.getId()%>" class="btn btn-primary ml-2">Update Notes</a>
    			<a href="delserv?note_id=<%=n.getId() %>" class="btn btn-danger">Delete Note</a>
    			</div>
  			 </div>
		  </div>
    		
    		<% 
    		}
    	s.close();
    	    %>
    </div>
    </div>
</body>
</html>