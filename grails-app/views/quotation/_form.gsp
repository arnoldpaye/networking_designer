<%@ page import="com.alicanto.networking_designer.Quotation" %>



<div class="fieldcontain ${hasErrors(bean: quotationInstance, field: 'createdBy', 'error')} required">
	<label for="createdBy">
		<g:message code="quotation.createdBy.label" default="Created By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="createdBy" name="createdBy.id" from="${com.alicanto.networking_designer.User.list()}" optionKey="id" required="" value="${quotationInstance?.createdBy?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quotationInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="quotation.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${quotationInstance?.createdDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: quotationInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="quotation.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${quotationInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: quotationInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="quotation.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${quotationInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quotationInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="quotation.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${quotationInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quotationInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="quotation.status.label" default="Status" />
		
	</label>
	<g:checkBox name="status" value="${quotationInstance?.status}" />

</div>

<div class="fieldcontain ${hasErrors(bean: quotationInstance, field: 'supplier', 'error')} required">
	<label for="supplier">
		<g:message code="quotation.supplier.label" default="Supplier" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="supplier" name="supplier.id" from="${com.alicanto.networking_designer.Supplier.list()}" optionKey="id" required="" value="${quotationInstance?.supplier?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quotationInstance, field: 'updatedBy', 'error')} required">
	<label for="updatedBy">
		<g:message code="quotation.updatedBy.label" default="Updated By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="updatedBy" name="updatedBy.id" from="${com.alicanto.networking_designer.User.list()}" optionKey="id" required="" value="${quotationInstance?.updatedBy?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quotationInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="quotation.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${quotationInstance?.updatedDate}"  />

</div>

