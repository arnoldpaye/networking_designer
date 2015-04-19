
<%@ page import="com.alicanto.networking_designer.Role" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-role" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-role" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list role">
			
				<g:if test="${roleInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="role.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:link controller="user" action="show" id="${roleInstance?.createdBy?.id}">${roleInstance?.createdBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${roleInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="role.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${roleInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${roleInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="role.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${roleInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roleInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="role.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${roleInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roleInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="role.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:formatBoolean boolean="${roleInstance?.status}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${roleInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="role.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:link controller="user" action="show" id="${roleInstance?.updatedBy?.id}">${roleInstance?.updatedBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${roleInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="role.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${roleInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:roleInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${roleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
