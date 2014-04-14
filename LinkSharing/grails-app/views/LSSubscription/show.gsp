
<%@ page import="linksharing.LSSubscription" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'LSSubscription.label', default: 'LSSubscription')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-LSSubscription" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-LSSubscription" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list LSSubscription">
			
				<g:if test="${LSSubscriptionInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="LSSubscription.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="LSUser" action="show" id="${LSSubscriptionInstance?.user?.id}">${LSSubscriptionInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSSubscriptionInstance?.topic}">
				<li class="fieldcontain">
					<span id="topic-label" class="property-label"><g:message code="LSSubscription.topic.label" default="Topic" /></span>
					
						<span class="property-value" aria-labelledby="topic-label"><g:link controller="LSTopic" action="show" id="${LSSubscriptionInstance?.topic?.id}">${LSSubscriptionInstance?.topic?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSSubscriptionInstance?.interestLevel}">
				<li class="fieldcontain">
					<span id="interestLevel-label" class="property-label"><g:message code="LSSubscription.interestLevel.label" default="Interest Level" /></span>
					
						<span class="property-value" aria-labelledby="interestLevel-label"><g:fieldValue bean="${LSSubscriptionInstance}" field="interestLevel"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:LSSubscriptionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${LSSubscriptionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
