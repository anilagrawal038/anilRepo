<%@ page import="linksharing.LSResource" %>



<div class="fieldcontain ${hasErrors(bean: LSResourceInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="LSResource.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${LSResourceInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSResourceInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="LSResource.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${LSResourceInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSResourceInstance, field: 'resourceType', 'error')} ">
	<label for="resourceType">
		<g:message code="LSResource.resourceType.label" default="Resource Type" />
		
	</label>
	<g:textField name="resourceType" value="${LSResourceInstance?.resourceType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSResourceInstance, field: 'topic', 'error')} required">
	<label for="topic">
		<g:message code="LSResource.topic.label" default="Topic" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="topic" name="topic.id" from="${linksharing.LSTopic.list()}" optionKey="id" required="" value="${LSResourceInstance?.topic?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSResourceInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="LSResource.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${linksharing.LSUser.list()}" optionKey="id" required="" value="${LSResourceInstance?.owner?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSResourceInstance, field: 'reference', 'error')} ">
	<label for="reference">
		<g:message code="LSResource.reference.label" default="Reference" />
		
	</label>
	<g:select id="reference" name="reference.id" from="${linksharing.LSResource.list()}" optionKey="id" value="${LSResourceInstance?.reference?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

