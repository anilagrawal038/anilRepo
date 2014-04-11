
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
			
				<g:if test="${LSRDocumentInstance?.docContent}">
				<li class="fieldcontain">
					<span id="docContent-label" class="property-label"><g:message code="LSRDocument.docContent.label" default="Doc Content" /></span>
					
						<span class="property-value" aria-labelledby="docContent-label"><g:fieldValue bean="${LSRDocumentInstance}" field="docContent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${LSRDocumentInstance?.docPath}">
				<li class="fieldcontain">
					<span id="docPath-label" class="property-label"><g:message code="LSRDocument.docPath.label" default="Doc Path" /></span>
					
						<span class="property-value" aria-labelledby="docPath-label"><g:fieldValue bean="${LSRDocumentInstance}" field="docPath"/></span>
					
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
