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
		<h1 class="centerize">Quan Ly Tin Tuc</h1>
		
		<form:form action="/edit" method="post" modelAttribute="nd">
			<div class="form-group">
				<label for="tieude">Tieu De:</label>
				<form:input type="text" path="TieuDe" class="form-control" id="tieude"/> 
			</div>
			
			<div class="form-group">
				<label for="mota">Mo ta:</label>
				 <form:input type="text" path="MoTa" class='form-control' id="mota"/>
			</div> 
			
			<div class="form-group">
				<label for="tacgia">Tac Gia:</label>
				 <form:input type="text" path="TacGia" class="form-control" id="tacgia"/> 
			</div>
			<form:textarea cols="20" rows="20" id="editor" path="NoiDung"></form:textarea>
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