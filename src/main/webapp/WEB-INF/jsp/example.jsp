<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<t:templetepage>
	<jsp:attribute name="header">     
    </jsp:attribute>
	<jsp:attribute name="footer">
    </jsp:attribute>
	<jsp:body>


		    	</br>
		    	</br>
		    	<table class="table table-hover">
					<tr>
						<th>Id</th>
						<th>Description</th>
						<th>Options</th>
					<c:forEach items="${webpages}" var="web">
					
				<tbody>
							<td>${web.page_id}</td>
							
							<td>${web.description}</td>
					
							<td><a href="<c:url value='/delete-page-${web.page_id}' />"
							class="btn btn-danger custom-width">delete</a><a
							href="<c:url value='/edit-webpage-${web.page_id}' />"
							class="btn btn-info custom-width"> edit </a>
							<%-- <a
							href="<c:url value='/add-document-${web.page_id}-${"example"}' />"
							class="btn btn-info custom-width"> edit </a></td> --%>
							
						
			</tr>
					</c:forEach>
					
		    		</tbody>
				</table>
				<a href="<c:url value='/new-webpage' />"
				class="btn btn-primary ">new </a>
		 


	
           </jsp:body>
</t:templetepage>