<%@page import="org.springframework.web.context.annotation.SessionScope"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" 	type="text/css" href="/resources/css/app.css"/>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>
<body>

<div class="container">
	<h1>Login</h1>
	<form:form action="/abc" modelAttribute="tk" method="post" >
	
	<div class="form-group">
				<label for="name">User name:</label>
				<form:input path="name" type="text" id="name" class="form-control"/> 
	</div>
	
	<div class="form-group">
				<label for="pass">Pass:</label>
				<form:input path="pass" type="password" id="pass" class="form-control"/> 
	</div>
	
	<div class='centerize'>
		<input type="submit" value="Submit" class="btn btn-primary btn-sm" /> 
	</div>

</form:form>
</div>
<%  System.out.println(session.getAttribute("login"));
	 
	 %>	
	 <% 
	 session.setAttribute("login", false);
	 out.print(session.getAttribute("login")); 
	   %>
	 
	 

</body>
</html>