
<%@ page import="linksharing.LSRDocument" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'LSRDocument.label', default: 'LSRDocument')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-LSRDocument" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-LSRDocument" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'LSRDocument.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'LSRDocument.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="resourceType" title="${message(code: 'LSRDocument.resourceType.label', default: 'Resource Type')}" />
					
						<th><g:message code="LSRDocument.topic.label" default="Topic" /></th>
					
						<th><g:message code="LSRDocument.owner.label" default="Owner" /></th>
					
						<th><g:message code="LSRDocument.reference.label" default="Reference" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${LSRDocumentInstanceList}" status="i" var="LSRDocumentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${LSRDocumentInstance.id}">${fieldValue(bean: LSRDocumentInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: LSRDocumentInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: LSRDocumentInstance, field: "resourceType")}</td>
					
						<td>${fieldValue(bean: LSRDocumentInstance, field: "topic")}</td>
					
						<td>${fieldValue(bean: LSRDocumentInstance, field: "owner")}</td>
					
						<td>${fieldValue(bean: LSRDocumentInstance, field: "reference")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${LSRDocumentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
