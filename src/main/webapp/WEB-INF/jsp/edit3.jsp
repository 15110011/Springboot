<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="//cdn.ckeditor.com/4.6.2/full/ckeditor.js"></script>
<link rel="stylesheet" 	type="text/css" href="/resources/css/app.css"/>
</head>
<body>
	<div class="container">
		<h1 class="centerize">Update Tin Tuc</h1>
		
		<form:form action="/editpage" method="post" modelAttribute="nd">
			<div class="form-group">
				<label for="tieude">Tieu De:</label>
				<form:input type="text" path="TieuDe" class="form-control" id="tieude" value="${tt.getTieuDe()}"/> 
			</div>
			
			<div class="form-group">
				<label for="mota">Link1:</label>
				 <form:input type="text" path="Link1" class='form-control' id="mota" value="${tt.getLink1()}"/>
			</div> 
			<div class="form-group">
				<label for="mota">Link2:</label>
				 <form:input type="text" path="Link2" class='form-control' id="mota" value="${tt.getLink2()}"/>
			</div> 
			<div class="form-group">
				<label for="mota">Link3:</label>
				 <form:input type="text" path="Link3" class='form-control' id="mota" value="${tt.getLink3()}"/>
			</div> 
			<div class="form-group">
				<label for="mota">Link4:</label>
				 <form:input type="text" path="Link4" class='form-control' id="mota" value="${tt.getLink4()}"/>
			</div> 
			
			
			 
			

			<form:textarea cols="20" rows="20" id="editor" path="NoiDung"/>
			<div class="centerize">
				<input type="submit" value="Submit" class ="btn btn-primary"/> 
			</div>
			
		</form:form>
		
	</div>
		
	<script>
	
	
	CKEDITOR.replace("editor");
	
	
	
	
	</script>
</body>

</html>