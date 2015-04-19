<%@ page import="com.alicanto.networking_designer.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'createdBy', 'error')} required">
	<label for="createdBy">
		<g:message code="user.createdBy.label" default="Created By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="createdBy" name="createdBy.id" from="${com.alicanto.networking_designer.User.list()}" optionKey="id" required="" value="${userInstance?.createdBy?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="user.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${userInstance?.createdDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'identityNumbre', 'error')} required">
	<label for="identityNumbre">
		<g:message code="user.identityNumbre.label" default="Identity Numbre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="identityNumbre" required="" value="${userInstance?.identityNumbre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastAccessDate', 'error')} required">
	<label for="lastAccessDate">
		<g:message code="user.lastAccessDate.label" default="Last Access Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastAccessDate" precision="day"  value="${userInstance?.lastAccessDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="user.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${userInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${userInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="user.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="role" name="role.id" from="${com.alicanto.networking_designer.Role.list()}" optionKey="id" required="" value="${userInstance?.role?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="user.status.label" default="Status" />
		
	</label>
	<g:checkBox name="status" value="${userInstance?.status}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'updatedBy', 'error')} required">
	<label for="updatedBy">
		<g:message code="user.updatedBy.label" default="Updated By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="updatedBy" name="updatedBy.id" from="${com.alicanto.networking_designer.User.list()}" optionKey="id" required="" value="${userInstance?.updatedBy?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="user.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${userInstance?.updatedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="user.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" required="" value="${userInstance?.userName}"/>

</div>

