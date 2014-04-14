
<%@ page import="linksharing.LSSubscription" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'LSSubscription.label', default: 'LSSubscription')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-LSSubscription" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-LSSubscription" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="LSSubscription.user.label" default="User" /></th>
					
						<th><g:message code="LSSubscription.topic.label" default="Topic" /></th>
					
						<g:sortableColumn property="interestLevel" title="${message(code: 'LSSubscription.interestLevel.label', default: 'Interest Level')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${LSSubscriptionInstanceList}" status="i" var="LSSubscriptionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${LSSubscriptionInstance.id}">${fieldValue(bean: LSSubscriptionInstance, field: "user")}</g:link></td>
					
						<td>${fieldValue(bean: LSSubscriptionInstance, field: "topic")}</td>
					
						<td>${fieldValue(bean: LSSubscriptionInstance, field: "interestLevel")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${LSSubscriptionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
