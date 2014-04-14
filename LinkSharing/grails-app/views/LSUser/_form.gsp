<%@ page import="linksharing.LSUser" %>



<div class="fieldcontain ${hasErrors(bean: LSUserInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="LSUser.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${LSUserInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSUserInstance, field: 'emailId', 'error')} ">
	<label for="emailId">
		<g:message code="LSUser.emailId.label" default="Email Id" />
		
	</label>
	<g:textField name="emailId" value="${LSUserInstance?.emailId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSUserInstance, field: 'userName', 'error')} ">
	<label for="userName">
		<g:message code="LSUser.userName.label" default="User Name" />
		
	</label>
	<g:textField name="userName" value="${LSUserInstance?.userName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSUserInstance, field: 'userType', 'error')} required">
	<label for="userType">
		<g:message code="LSUser.userType.label" default="User Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="userType" from="${linksharing.UserType?.values()}" keys="${linksharing.UserType.values()*.name()}" required="" value="${LSUserInstance?.userType?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: LSUserInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="LSUser.password.label" default="Password" />
		
	</label>
	<g:field type="password" name="password" value="${LSUserInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSUserInstance, field: 'confirmPassword', 'error')} ">
    <label for="confirmPassword">
        <g:message code="LSUser.confirmPassword.label" default="Confirm Password" />

    </label>
    <g:field type="password" name="confirmPassword" value="${LSUserInstance?.confirmPassword}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: LSUserInstance, field: 'topic', 'error')} ">
	<label for="topic">
		<g:message code="LSUser.topic.label" default="Topic" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${LSUserInstance?.topic?}" var="t">
    <li><g:link controller="LSTopic" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="LSTopic" action="create" params="['LSUser.id': LSUserInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'LSTopic.label', default: 'LSTopic')])}</g:link>
</li>
</ul>


</div>

