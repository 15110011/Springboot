<%@tag description="Overall Page Template" pageEncoding="UTF-8" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>

	<div id="pageHeader">
	<jsp:invoke fragment="header"/>
	</div>
	<div id="body">
	<jsp:doBody/>
	</div>
	<div id="pageFooter">	
	<jsp:invoke fragment="footer"/>
	</div>
