<%@ page import="com.alicanto.networking_designer.Supplier" %>



<div class="form-group">
	<label class="col-sm-2 control-label" for="name">
		Nombre
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField name="name" required="" value="${supplierInstance?.name}" class="form-control"/>
	</div>
</div>

<div class="form-group">
	<label class="col-sm-2 control-label" for="description">
		Descripcion
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField name="description" required="" value="${supplierInstance?.description}" class="form-control"/>
	</div>
</div>

<div class="form-group">
	<label class="col-sm-2 control-label" for="address">
		Direccion
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField name="address" required="" value="${supplierInstance?.address}" class="form-control"/>
	</div>
</div>

<div class="form-group">
	<label class="col-sm-2 control-label" for="status">
		Status
	</label>
	<div class="col-sm-10">
		<g:checkBox name="status" value="${supplierInstance?.status}" class="form-control" />
	</div>
</div>
