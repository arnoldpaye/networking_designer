<%@ page import="com.alicanto.networking_designer.Supplier" %>



<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="supplier.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${supplierInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'createdBy', 'error')} required">
	<label for="createdBy">
		<g:message code="supplier.createdBy.label" default="Created By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="createdBy" name="createdBy.id" from="${com.alicanto.networking_designer.User.list()}" optionKey="id" required="" value="${supplierInstance?.createdBy?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="supplier.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${supplierInstance?.createdDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="supplier.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${supplierInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="supplier.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${supplierInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="supplier.status.label" default="Status" />
		
	</label>
	<g:checkBox name="status" value="${supplierInstance?.status}" />

</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'updatedBy', 'error')} required">
	<label for="updatedBy">
		<g:message code="supplier.updatedBy.label" default="Updated By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="updatedBy" name="updatedBy.id" from="${com.alicanto.networking_designer.User.list()}" optionKey="id" required="" value="${supplierInstance?.updatedBy?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: supplierInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="supplier.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${supplierInstance?.updatedDate}"  />

</div>

