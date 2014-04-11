
<%@ page import="linksharing.LSUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'LSUser.label', default: 'LSUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-LSUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-LSUser" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="emailId" title="${message(code: 'LSUser.emailId.label', default: 'Email Id')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'LSUser.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'LSUser.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="userName" title="${message(code: 'LSUser.userName.label', default: 'User Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${LSUserInstanceList}" status="i" var="LSUserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${LSUserInstance.id}">${fieldValue(bean: LSUserInstance, field: "emailId")}</g:link></td>
					
						<td>${fieldValue(bean: LSUserInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: LSUserInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: LSUserInstance, field: "userName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${LSUserInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
