
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
					
						<g:sortableColumn property="docContent" title="${message(code: 'LSRDocument.docContent.label', default: 'Doc Content')}" />
					
						<g:sortableColumn property="docPath" title="${message(code: 'LSRDocument.docPath.label', default: 'Doc Path')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${LSRDocumentInstanceList}" status="i" var="LSRDocumentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${LSRDocumentInstance.id}">${fieldValue(bean: LSRDocumentInstance, field: "docContent")}</g:link></td>
					
						<td>${fieldValue(bean: LSRDocumentInstance, field: "docPath")}</td>
					
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
