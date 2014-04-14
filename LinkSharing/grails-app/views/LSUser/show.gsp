
<%@ page import="linksharing.LSUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'LSUser.label', default: 'LSUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-LSUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-LSUser" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list LSUser">
			
				<g:if test="${LSUserInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="LSUser.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${LSUserInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSUserInstance?.emailId}">
				<li class="fieldcontain">
					<span id="emailId-label" class="property-label"><g:message code="LSUser.emailId.label" default="Email Id" /></span>
					
						<span class="property-value" aria-labelledby="emailId-label"><g:fieldValue bean="${LSUserInstance}" field="emailId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSUserInstance?.userName}">
				<li class="fieldcontain">
					<span id="userName-label" class="property-label"><g:message code="LSUser.userName.label" default="User Name" /></span>
					
						<span class="property-value" aria-labelledby="userName-label"><g:fieldValue bean="${LSUserInstance}" field="userName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSUserInstance?.userType}">
				<li class="fieldcontain">
					<span id="userType-label" class="property-label"><g:message code="LSUser.userType.label" default="User Type" /></span>
					
						<span class="property-value" aria-labelledby="userType-label"><g:fieldValue bean="${LSUserInstance}" field="userType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSUserInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="LSUser.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${LSUserInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSUserInstance?.topic}">
				<li class="fieldcontain">
					<span id="topic-label" class="property-label"><g:message code="LSUser.topic.label" default="Topic" /></span>
					
						<g:each in="${LSUserInstance.topic}" var="t">
						<span class="property-value" aria-labelledby="topic-label"><g:link controller="LSTopic" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:LSUserInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${LSUserInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
