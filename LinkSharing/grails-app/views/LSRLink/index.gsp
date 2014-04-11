
<%@ page import="linksharing.LSRLink" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'LSRLink.label', default: 'LSRLink')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-LSRLink" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-LSRLink" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'LSRLink.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="linkPath" title="${message(code: 'LSRLink.linkPath.label', default: 'Link Path')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'LSRLink.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="owner" title="${message(code: 'LSRLink.owner.label', default: 'Owner')}" />
					
						<g:sortableColumn property="reference" title="${message(code: 'LSRLink.reference.label', default: 'Reference')}" />
					
						<g:sortableColumn property="resourceType" title="${message(code: 'LSRLink.resourceType.label', default: 'Resource Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${LSRLinkInstanceList}" status="i" var="LSRLinkInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${LSRLinkInstance.id}">${fieldValue(bean: LSRLinkInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: LSRLinkInstance, field: "linkPath")}</td>
					
						<td>${fieldValue(bean: LSRLinkInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: LSRLinkInstance, field: "owner")}</td>
					
						<td>${fieldValue(bean: LSRLinkInstance, field: "reference")}</td>
					
						<td>${fieldValue(bean: LSRLinkInstance, field: "resourceType")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${LSRLinkInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
