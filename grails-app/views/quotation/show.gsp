
<%@ page import="com.alicanto.networking_designer.Quotation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'quotation.label', default: 'Quotation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-quotation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-quotation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list quotation">
			
				<g:if test="${quotationInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="quotation.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:link controller="user" action="show" id="${quotationInstance?.createdBy?.id}">${quotationInstance?.createdBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${quotationInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="quotation.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${quotationInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${quotationInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="quotation.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${quotationInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${quotationInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="quotation.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${quotationInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quotationInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="quotation.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${quotationInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quotationInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="quotation.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:formatBoolean boolean="${quotationInstance?.status}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${quotationInstance?.supplier}">
				<li class="fieldcontain">
					<span id="supplier-label" class="property-label"><g:message code="quotation.supplier.label" default="Supplier" /></span>
					
						<span class="property-value" aria-labelledby="supplier-label"><g:link controller="supplier" action="show" id="${quotationInstance?.supplier?.id}">${quotationInstance?.supplier?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${quotationInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="quotation.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:link controller="user" action="show" id="${quotationInstance?.updatedBy?.id}">${quotationInstance?.updatedBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${quotationInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="quotation.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${quotationInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:quotationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${quotationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
