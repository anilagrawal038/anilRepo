<%@ page import="linksharing.LSInvitation" %>



<div class="fieldcontain ${hasErrors(bean: LSInvitationInstance, field: 'fromUser', 'error')} required">
	<label for="fromUser">
		<g:message code="LSInvitation.fromUser.label" default="From User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fromUser" name="fromUser.id" from="${linksharing.LSUser.list()}" optionKey="id" required="" value="${LSInvitationInstance?.fromUser?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSInvitationInstance, field: 'isAcceptedMap', 'error')} ">
	<label for="isAcceptedMap">
		<g:message code="LSInvitation.isAcceptedMap.label" default="Is Accepted Map" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: LSInvitationInstance, field: 'message', 'error')} ">
	<label for="message">
		<g:message code="LSInvitation.message.label" default="Message" />
		
	</label>
	<g:textField name="message" value="${LSInvitationInstance?.message}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSInvitationInstance, field: 'topic', 'error')} required">
	<label for="topic">
		<g:message code="LSInvitation.topic.label" default="Topic" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="topic" name="topic.id" from="${linksharing.LSTopic.list()}" optionKey="id" required="" value="${LSInvitationInstance?.topic?.id}" class="many-to-one"/>

</div>

