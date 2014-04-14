
<%@ page import="linksharing.LSTopic" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'LSTopic.label', default: 'LSTopic')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-LSTopic" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-LSTopic" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="topicName" title="${message(code: 'LSTopic.topicName.label', default: 'Topic Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'LSTopic.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="accessType" title="${message(code: 'LSTopic.accessType.label', default: 'Access Type')}" />
					
						<th><g:message code="LSTopic.user.label" default="User" /></th>
					
						<th><g:message code="LSTopic.owner.label" default="Owner" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'LSTopic.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${LSTopicInstanceList}" status="i" var="LSTopicInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${LSTopicInstance.id}">${fieldValue(bean: LSTopicInstance, field: "topicName")}</g:link></td>
					
						<td>${fieldValue(bean: LSTopicInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: LSTopicInstance, field: "accessType")}</td>
					
						<td>${fieldValue(bean: LSTopicInstance, field: "user")}</td>
					
						<td>${fieldValue(bean: LSTopicInstance, field: "owner")}</td>
					
						<td><g:formatDate date="${LSTopicInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${LSTopicInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
