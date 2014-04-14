
<%@ page import="linksharing.LSRDocument" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'LSRDocument.label', default: 'LSRDocument')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-LSRDocument" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-LSRDocument" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list LSRDocument">
			
				<g:if test="${LSRDocumentInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="LSRDocument.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${LSRDocumentInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSRDocumentInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="LSRDocument.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${LSRDocumentInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSRDocumentInstance?.resourceType}">
				<li class="fieldcontain">
					<span id="resourceType-label" class="property-label"><g:message code="LSRDocument.resourceType.label" default="Resource Type" /></span>
					
						<span class="property-value" aria-labelledby="resourceType-label"><g:fieldValue bean="${LSRDocumentInstance}" field="resourceType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSRDocumentInstance?.topic}">
				<li class="fieldcontain">
					<span id="topic-label" class="property-label"><g:message code="LSRDocument.topic.label" default="Topic" /></span>
					
						<span class="property-value" aria-labelledby="topic-label"><g:link controller="LSTopic" action="show" id="${LSRDocumentInstance?.topic?.id}">${LSRDocumentInstance?.topic?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSRDocumentInstance?.owner}">
				<li class="fieldcontain">
					<span id="owner-label" class="property-label"><g:message code="LSRDocument.owner.label" default="Owner" /></span>
					
						<span class="property-value" aria-labelledby="owner-label"><g:link controller="LSUser" action="show" id="${LSRDocumentInstance?.owner?.id}">${LSRDocumentInstance?.owner?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSRDocumentInstance?.reference}">
				<li class="fieldcontain">
					<span id="reference-label" class="property-label"><g:message code="LSRDocument.reference.label" default="Reference" /></span>
					
						<span class="property-value" aria-labelledby="reference-label"><g:link controller="LSResource" action="show" id="${LSRDocumentInstance?.reference?.id}">${LSRDocumentInstance?.reference?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSRDocumentInstance?.docPath}">
				<li class="fieldcontain">
					<span id="docPath-label" class="property-label"><g:message code="LSRDocument.docPath.label" default="Doc Path" /></span>
					
						<span class="property-value" aria-labelledby="docPath-label"><g:fieldValue bean="${LSRDocumentInstance}" field="docPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSRDocumentInstance?.docContent}">
				<li class="fieldcontain">
					<span id="docContent-label" class="property-label"><g:message code="LSRDocument.docContent.label" default="Doc Content" /></span>
					
						<span class="property-value" aria-labelledby="docContent-label"><g:fieldValue bean="${LSRDocumentInstance}" field="docContent"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:LSRDocumentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${LSRDocumentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
