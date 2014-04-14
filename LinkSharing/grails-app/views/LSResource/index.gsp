
<%@ page import="linksharing.LSResource" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'LSResource.label', default: 'LSResource')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-LSResource" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-LSResource" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'LSResource.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'LSResource.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="resourceType" title="${message(code: 'LSResource.resourceType.label', default: 'Resource Type')}" />
					
						<th><g:message code="LSResource.topic.label" default="Topic" /></th>
					
						<th><g:message code="LSResource.owner.label" default="Owner" /></th>
					
						<th><g:message code="LSResource.reference.label" default="Reference" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${LSResourceInstanceList}" status="i" var="LSResourceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${LSResourceInstance.id}">${fieldValue(bean: LSResourceInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: LSResourceInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: LSResourceInstance, field: "resourceType")}</td>
					
						<td>${fieldValue(bean: LSResourceInstance, field: "topic")}</td>
					
						<td>${fieldValue(bean: LSResourceInstance, field: "owner")}</td>
					
						<td>${fieldValue(bean: LSResourceInstance, field: "reference")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${LSResourceInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
