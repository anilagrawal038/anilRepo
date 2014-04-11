<%@ page import="com.test.UserDomain" %>



<div class="fieldcontain ${hasErrors(bean: userDomainInstance, field: 'firstName', 'error')} ">
    <label for="firstName">
        <g:message code="userDomain.firstName.label" default="First Name"/>

    </label>
    <g:textField name="firstName" value="${userDomainInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userDomainInstance, field: 'lastName', 'error')} ">
    <label for="lastName">
        <g:message code="userDomain.lastName.label" default="Last Name"/>

    </label>
    <g:textField name="lastName" value="${userDomainInstance?.lastName}"/>

</div>

