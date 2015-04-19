<%@ page import="com.alicanto.networking_designer.Role" %>



<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'createdBy', 'error')} required">
	<label for="createdBy">
		<g:message code="role.createdBy.label" default="Created By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="createdBy" name="createdBy.id" from="${com.alicanto.networking_designer.User.list()}" optionKey="id" required="" value="${roleInstance?.createdBy?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="role.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${roleInstance?.createdDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="role.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${roleInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="role.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${roleInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="role.status.label" default="Status" />
		
	</label>
	<g:checkBox name="status" value="${roleInstance?.status}" />

</div>

<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'updatedBy', 'error')} required">
	<label for="updatedBy">
		<g:message code="role.updatedBy.label" default="Updated By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="updatedBy" name="updatedBy.id" from="${com.alicanto.networking_designer.User.list()}" optionKey="id" required="" value="${roleInstance?.updatedBy?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="role.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${roleInstance?.updatedDate}"  />

</div>

