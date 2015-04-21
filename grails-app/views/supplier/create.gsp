<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'supplier.label', default: 'Supplier')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<h3 class="page-header">
			Nuevo proveedor
			<g:link class="btn btn-primary pull-right" action="index">
				<i class="fa fa-angle-left fa-lg"></i> Volver
			</g:link>
		</h3>
		<div id="create-supplier" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${supplierInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${supplierInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:supplierInstance, action:'save']" >
				<fieldset class="col-lg-8 form-horizontal">
					<g:render template="form"/>
				</fieldset>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<g:submitButton name="Guardar" class="btn btn-primary">
						</g:submitButton>
						<g:link class="btn btn-default" action="index">
							<i class="fa fa-close fa-lg"></i> Cancelar
						</g:link>
					</div>
				</div>
			</g:form>
		</div>
	</body>
</html>
