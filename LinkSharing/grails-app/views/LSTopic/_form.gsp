<%@ page import="linksharing.LSTopic" %>



<div class="fieldcontain ${hasErrors(bean: LSTopicInstance, field: 'topicName', 'error')} ">
	<label for="topicName">
		<g:message code="LSTopic.topicName.label" default="Topic Name" />
		
	</label>
	<g:textField name="topicName" value="${LSTopicInstance?.topicName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSTopicInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="LSTopic.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${LSTopicInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSTopicInstance, field: 'accessType', 'error')} required">
	<label for="accessType">
		<g:message code="LSTopic.accessType.label" default="Access Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="accessType" from="${linksharing.TopicType?.values()}" keys="${linksharing.TopicType.values()*.name()}" required="" value="${LSTopicInstance?.accessType?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: LSTopicInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="LSTopic.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${linksharing.LSUser.list()}" optionKey="id" required="" value="${LSTopicInstance?.user?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSTopicInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="LSTopic.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${linksharing.LSUser.list()}" optionKey="id" required="" value="${LSTopicInstance?.owner?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSTopicInstance, field: 'lastUpdate', 'error')} required">
	<label for="lastUpdate">
		<g:message code="LSTopic.lastUpdate.label" default="Last Update" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastUpdate" precision="day"  value="${LSTopicInstance?.lastUpdate}"  />

</div>

