
<%@ page import="com.alicanto.networking_designer.Supplier" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'supplier.label', default: 'Supplier')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-supplier" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-supplier" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list supplier">
			
				<g:if test="${supplierInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="supplier.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${supplierInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="supplier.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:link controller="user" action="show" id="${supplierInstance?.createdBy?.id}">${supplierInstance?.createdBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="supplier.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${supplierInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="supplier.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${supplierInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="supplier.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${supplierInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="supplier.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:formatBoolean boolean="${supplierInstance?.status}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="supplier.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:link controller="user" action="show" id="${supplierInstance?.updatedBy?.id}">${supplierInstance?.updatedBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${supplierInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="supplier.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${supplierInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:supplierInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${supplierInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
