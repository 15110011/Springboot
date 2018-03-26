<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="//cdn.ckeditor.com/4.6.2/full/ckeditor.js"></script>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>User Registration Form</title>
</head>

<body>
	<div class="well lead">EDIT PAGE </div>
	<form:form method="POST" modelAttribute="tk" 
		class="form-horizontal">
			<form:input type="hidden" path="page_id" id="id"/>
		<label class="col-md-3 control-lable" for="description">Description</label>
		<form:input type="text" path="description" id="description"
			class="form-control input-sm" />
</br>
		<label class="col-md-3 control-lable" for="content">Content</label>
		</br>
			
		<form:textarea path="content" id="txtnoidung"/>

		<input type="submit" value="Submit" class="btn btn-primary btn-sm" /> or <a
			href="<c:url value='/${webInfo.page_id}' />">Cancel</a>
	</form:form>

<script type="text/javascript" language="javascript">
	CKEDITOR.replace('txtnoidung');
	
	window.onload = function() { // Our hawaiian greeting is displayed as soon as the page loads,
		var $toolbar = document.getElementById('cke_1_top');
		if ($toolbar != null)
			$toolbar.style.width = "100%";
	};
</script>  
</body>