<%@ page import="linksharing.LSResourceAccessibility" %>



<div class="fieldcontain ${hasErrors(bean: LSResourceAccessibilityInstance, field: 'resource', 'error')} required">
	<label for="resource">
		<g:message code="LSResourceAccessibility.resource.label" default="Resource" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="resource" name="resource.id" from="${linksharing.LSResource.list()}" optionKey="id" required="" value="${LSResourceAccessibilityInstance?.resource?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSResourceAccessibilityInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="LSResourceAccessibility.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${linksharing.LSUser.list()}" optionKey="id" required="" value="${LSResourceAccessibilityInstance?.user?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSResourceAccessibilityInstance, field: 'isRead', 'error')} ">
	<label for="isRead">
		<g:message code="LSResourceAccessibility.isRead.label" default="Is Read" />
		
	</label>
	<g:checkBox name="isRead" value="${LSResourceAccessibilityInstance?.isRead}" />

</div>

