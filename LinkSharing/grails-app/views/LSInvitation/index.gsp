
<%@ page import="linksharing.LSInvitation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'LSInvitation.label', default: 'LSInvitation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-LSInvitation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-LSInvitation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="LSInvitation.fromUser.label" default="From User" /></th>
					
						<th><g:message code="LSInvitation.topic.label" default="Topic" /></th>
					
						<g:sortableColumn property="message" title="${message(code: 'LSInvitation.message.label', default: 'Message')}" />
					
						<g:sortableColumn property="isAcceptedMap" title="${message(code: 'LSInvitation.isAcceptedMap.label', default: 'Is Accepted Map')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${LSInvitationInstanceList}" status="i" var="LSInvitationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${LSInvitationInstance.id}">${fieldValue(bean: LSInvitationInstance, field: "fromUser")}</g:link></td>
					
						<td>${fieldValue(bean: LSInvitationInstance, field: "topic")}</td>
					
						<td>${fieldValue(bean: LSInvitationInstance, field: "message")}</td>
					
						<td>${fieldValue(bean: LSInvitationInstance, field: "isAcceptedMap")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${LSInvitationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
