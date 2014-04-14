<%@ page import="linksharing.LSSubscription" %>



<div class="fieldcontain ${hasErrors(bean: LSSubscriptionInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="LSSubscription.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${linksharing.LSUser.list()}" optionKey="id" required="" value="${LSSubscriptionInstance?.user?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSSubscriptionInstance, field: 'topic', 'error')} required">
	<label for="topic">
		<g:message code="LSSubscription.topic.label" default="Topic" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="topic" name="topic.id" from="${linksharing.LSTopic.list()}" optionKey="id" required="" value="${LSSubscriptionInstance?.topic?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSSubscriptionInstance, field: 'interestLevel', 'error')} ">
	<label for="interestLevel">
		<g:message code="LSSubscription.interestLevel.label" default="Interest Level" />
		
	</label>
	<g:textField name="interestLevel" value="${LSSubscriptionInstance?.interestLevel}"/>

</div>

