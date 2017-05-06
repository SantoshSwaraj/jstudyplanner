<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href='<s:url value="/staff/home" />'>jStudyPlanner</a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="visible-xs"><a href='<s:url value="/staff/home" />'>Home</a></li>
				<li class="visible-xs"><a href='<s:url value="/staff/termlist" />'>Terms</a></li>
				<li class="visible-xs"><a href='<s:url value="/staff/programlist" />'>Programs</a></li>
				<li class="visible-xs"><a href='<s:url value="/staff/majorlist" />'>Majors</a></li>
				<li class="visible-xs"><a href='<s:url value="/staff/courselist" />'>Courses</a></li>
				<li class="visible-xs"><a href='<s:url value="/staff/studentlist" />'>Students</a></li>
				<li class="visible-xs"><a href='<s:url value="/staff/calist" />'>Schedule</a></li>
				
				<li class="divider">&nbsp;</li>
				
				<security:authorize access="isAnonymous()">
		    		<li><a href="#" data-toggle="modal" data-target="#loginForm">Login</a></li>
				</security:authorize>
				<security:authorize access="isAuthenticated()">
					<li><a href='<c:url value="/logout" />'>Logout</a></li>
				</security:authorize>
			</ul>
		</div>
	</div>
</div>