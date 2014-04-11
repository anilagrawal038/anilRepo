<%@ page import="linksharing.LSRLink" %>



<div class="fieldcontain ${hasErrors(bean: LSRLinkInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="LSRLink.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${LSRLinkInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSRLinkInstance, field: 'linkPath', 'error')} ">
	<label for="linkPath">
		<g:message code="LSRLink.linkPath.label" default="Link Path" />
		
	</label>
	<g:textField name="linkPath" value="${LSRLinkInstance?.linkPath}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSRLinkInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="LSRLink.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${LSRLinkInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSRLinkInstance, field: 'owner', 'error')} ">
	<label for="owner">
		<g:message code="LSRLink.owner.label" default="Owner" />
		
	</label>
	<g:textField name="owner" value="${LSRLinkInstance?.owner}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSRLinkInstance, field: 'reference', 'error')} ">
	<label for="reference">
		<g:message code="LSRLink.reference.label" default="Reference" />
		
	</label>
	<g:textField name="reference" value="${LSRLinkInstance?.reference}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSRLinkInstance, field: 'resourceType', 'error')} ">
	<label for="resourceType">
		<g:message code="LSRLink.resourceType.label" default="Resource Type" />
		
	</label>
	<g:textField name="resourceType" value="${LSRLinkInstance?.resourceType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSRLinkInstance, field: 'topic', 'error')} required">
	<label for="topic">
		<g:message code="LSRLink.topic.label" default="Topic" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="topic" name="topic.id" from="${linksharing.LSTopic.list()}" optionKey="id" required="" value="${LSRLinkInstance?.topic?.id}" class="many-to-one"/>

</div>

