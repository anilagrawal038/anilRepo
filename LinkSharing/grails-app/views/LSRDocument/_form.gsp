<%@ page import="linksharing.LSRDocument" %>



<div class="fieldcontain ${hasErrors(bean: LSRDocumentInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="LSRDocument.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${LSRDocumentInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSRDocumentInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="LSRDocument.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${LSRDocumentInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSRDocumentInstance, field: 'resourceType', 'error')} ">
	<label for="resourceType">
		<g:message code="LSRDocument.resourceType.label" default="Resource Type" />
		
	</label>
	<g:textField name="resourceType" value="${LSRDocumentInstance?.resourceType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSRDocumentInstance, field: 'topic', 'error')} required">
	<label for="topic">
		<g:message code="LSRDocument.topic.label" default="Topic" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="topic" name="topic.id" from="${linksharing.LSTopic.list()}" optionKey="id" required="" value="${LSRDocumentInstance?.topic?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSRDocumentInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="LSRDocument.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${linksharing.LSUser.list()}" optionKey="id" required="" value="${LSRDocumentInstance?.owner?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSRDocumentInstance, field: 'reference', 'error')} ">
	<label for="reference">
		<g:message code="LSRDocument.reference.label" default="Reference" />
		
	</label>
	<g:select id="reference" name="reference.id" from="${linksharing.LSResource.list()}" optionKey="id" value="${LSRDocumentInstance?.reference?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSRDocumentInstance, field: 'docPath', 'error')} ">
	<label for="docPath">
		<g:message code="LSRDocument.docPath.label" default="Doc Path" />
		
	</label>
	<g:textField name="docPath" value="${LSRDocumentInstance?.docPath}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSRDocumentInstance, field: 'docContent', 'error')} ">
	<label for="docContent">
		<g:message code="LSRDocument.docContent.label" default="Doc Content" />
		
	</label>
	<g:textField name="docContent" value="${LSRDocumentInstance?.docContent}"/>

</div>

