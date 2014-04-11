
<%@ page import="linksharing.LSInvitation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'LSInvitation.label', default: 'LSInvitation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-LSInvitation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-LSInvitation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list LSInvitation">
			
				<g:if test="${LSInvitationInstance?.fromUser}">
				<li class="fieldcontain">
					<span id="fromUser-label" class="property-label"><g:message code="LSInvitation.fromUser.label" default="From User" /></span>
					
						<span class="property-value" aria-labelledby="fromUser-label"><g:link controller="LSUser" action="show" id="${LSInvitationInstance?.fromUser?.id}">${LSInvitationInstance?.fromUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSInvitationInstance?.isAcceptedMap}">
				<li class="fieldcontain">
					<span id="isAcceptedMap-label" class="property-label"><g:message code="LSInvitation.isAcceptedMap.label" default="Is Accepted Map" /></span>
					
						<span class="property-value" aria-labelledby="isAcceptedMap-label"><g:fieldValue bean="${LSInvitationInstance}" field="isAcceptedMap"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSInvitationInstance?.message}">
				<li class="fieldcontain">
					<span id="message-label" class="property-label"><g:message code="LSInvitation.message.label" default="Message" /></span>
					
						<span class="property-value" aria-labelledby="message-label"><g:fieldValue bean="${LSInvitationInstance}" field="message"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSInvitationInstance?.topic}">
				<li class="fieldcontain">
					<span id="topic-label" class="property-label"><g:message code="LSInvitation.topic.label" default="Topic" /></span>
					
						<span class="property-value" aria-labelledby="topic-label"><g:link controller="LSTopic" action="show" id="${LSInvitationInstance?.topic?.id}">${LSInvitationInstance?.topic?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:LSInvitationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${LSInvitationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
