<%@ page import="linksharing.LSRDocument" %>



<div class="fieldcontain ${hasErrors(bean: LSRDocumentInstance, field: 'docContent', 'error')} ">
	<label for="docContent">
		<g:message code="LSRDocument.docContent.label" default="Doc Content" />
		
	</label>
	<g:textField name="docContent" value="${LSRDocumentInstance?.docContent}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSRDocumentInstance, field: 'docPath', 'error')} ">
	<label for="docPath">
		<g:message code="LSRDocument.docPath.label" default="Doc Path" />
		
	</label>
	<g:textField name="docPath" value="${LSRDocumentInstance?.docPath}"/>

</div>

