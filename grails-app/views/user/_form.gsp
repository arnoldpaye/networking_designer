<%@ page import="com.alicanto.networking_designer.User" %>




<div class="form-group">
	<label class="col-sm-2 control-label" for="userName">
		Usuario
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField name="userName" required="" value="${userInstance?.userName}" class="form-control" placeholder="ej. jperez"/>
	</div>
</div>

<div class="form-group">
	<label class="col-sm-2 control-label" for="password">
		Password
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:passwordField name="password" required="" value="${userInstance?.password}" class="form-control" placeholder="Password"/>
	</div>
</div>

<div class="form-group">
	<label class="col-sm-2 control-label" for="name">
		Nombre
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField name="name" required="" value="${userInstance?.name}" class="form-control" placeholder="ej. Juan"/>
	</div>
</div>

<div class="form-group">
	<label class="col-sm-2 control-label" for="lastName">
		Apellido Paterno
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField name="lastName" required="" value="${userInstance?.lastName}" class="form-control" placeholder="ej. Perez"/>
	</div>
</div>

<div class="form-group">
	<label class="col-sm-2 control-label" for="identityNumber">
		CI
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField name="identityNumber" required="" value="${userInstance?.identityNumber}" class="form-control" placeholder="ej. 1234567"/>
	</div>
</div>

<div class="form-group">
	<label class="col-sm-2 control-label" for="role">
		Rol
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:select id="role" name="role.id" from="${com.alicanto.networking_designer.Role.list()}" optionKey="id" optionValue="name" required="" value="${userInstance?.role?.id}" class="form-control"/>
	</div>
</div>

<div class="form-group">
	<label class="col-sm-2 control-label" for="status">
		Status
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:checkBox name="status" value="${userInstance?.status}" class="form-control" />
	</div>
</div>
