
<%@ page import="linksharing.LSTopic" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'LSTopic.label', default: 'LSTopic')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-LSTopic" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-LSTopic" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list LSTopic">
			
				<g:if test="${LSTopicInstance?.accessType}">
				<li class="fieldcontain">
					<span id="accessType-label" class="property-label"><g:message code="LSTopic.accessType.label" default="Access Type" /></span>
					
						<span class="property-value" aria-labelledby="accessType-label"><g:fieldValue bean="${LSTopicInstance}" field="accessType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSTopicInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="LSTopic.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${LSTopicInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSTopicInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="LSTopic.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${LSTopicInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSTopicInstance?.lastUpdate}">
				<li class="fieldcontain">
					<span id="lastUpdate-label" class="property-label"><g:message code="LSTopic.lastUpdate.label" default="Last Update" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdate-label"><g:formatDate date="${LSTopicInstance?.lastUpdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSTopicInstance?.owner}">
				<li class="fieldcontain">
					<span id="owner-label" class="property-label"><g:message code="LSTopic.owner.label" default="Owner" /></span>
					
						<span class="property-value" aria-labelledby="owner-label"><g:fieldValue bean="${LSTopicInstance}" field="owner"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSTopicInstance?.topicName}">
				<li class="fieldcontain">
					<span id="topicName-label" class="property-label"><g:message code="LSTopic.topicName.label" default="Topic Name" /></span>
					
						<span class="property-value" aria-labelledby="topicName-label"><g:fieldValue bean="${LSTopicInstance}" field="topicName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSTopicInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="LSTopic.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="LSUser" action="show" id="${LSTopicInstance?.user?.id}">${LSTopicInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:LSTopicInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${LSTopicInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
