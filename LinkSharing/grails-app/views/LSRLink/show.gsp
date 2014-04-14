
<%@ page import="linksharing.LSRLink" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'LSRLink.label', default: 'LSRLink')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-LSRLink" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-LSRLink" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list LSRLink">
			
				<g:if test="${LSRLinkInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="LSRLink.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${LSRLinkInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSRLinkInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="LSRLink.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${LSRLinkInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSRLinkInstance?.resourceType}">
				<li class="fieldcontain">
					<span id="resourceType-label" class="property-label"><g:message code="LSRLink.resourceType.label" default="Resource Type" /></span>
					
						<span class="property-value" aria-labelledby="resourceType-label"><g:fieldValue bean="${LSRLinkInstance}" field="resourceType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSRLinkInstance?.topic}">
				<li class="fieldcontain">
					<span id="topic-label" class="property-label"><g:message code="LSRLink.topic.label" default="Topic" /></span>
					
						<span class="property-value" aria-labelledby="topic-label"><g:link controller="LSTopic" action="show" id="${LSRLinkInstance?.topic?.id}">${LSRLinkInstance?.topic?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSRLinkInstance?.owner}">
				<li class="fieldcontain">
					<span id="owner-label" class="property-label"><g:message code="LSRLink.owner.label" default="Owner" /></span>
					
						<span class="property-value" aria-labelledby="owner-label"><g:link controller="LSUser" action="show" id="${LSRLinkInstance?.owner?.id}">${LSRLinkInstance?.owner?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSRLinkInstance?.reference}">
				<li class="fieldcontain">
					<span id="reference-label" class="property-label"><g:message code="LSRLink.reference.label" default="Reference" /></span>
					
						<span class="property-value" aria-labelledby="reference-label"><g:link controller="LSResource" action="show" id="${LSRLinkInstance?.reference?.id}">${LSRLinkInstance?.reference?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSRLinkInstance?.linkPath}">
				<li class="fieldcontain">
					<span id="linkPath-label" class="property-label"><g:message code="LSRLink.linkPath.label" default="Link Path" /></span>
					
						<span class="property-value" aria-labelledby="linkPath-label"><g:fieldValue bean="${LSRLinkInstance}" field="linkPath"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:LSRLinkInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${LSRLinkInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
