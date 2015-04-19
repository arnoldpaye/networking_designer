
<%@ page import="com.alicanto.networking_designer.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="user.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:link controller="user" action="show" id="${userInstance?.createdBy?.id}">${userInstance?.createdBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="user.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${userInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.identityNumbre}">
				<li class="fieldcontain">
					<span id="identityNumbre-label" class="property-label"><g:message code="user.identityNumbre.label" default="Identity Numbre" /></span>
					
						<span class="property-value" aria-labelledby="identityNumbre-label"><g:fieldValue bean="${userInstance}" field="identityNumbre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.lastAccessDate}">
				<li class="fieldcontain">
					<span id="lastAccessDate-label" class="property-label"><g:message code="user.lastAccessDate.label" default="Last Access Date" /></span>
					
						<span class="property-value" aria-labelledby="lastAccessDate-label"><g:formatDate date="${userInstance?.lastAccessDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="user.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${userInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="user.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${userInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="user.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${userInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="user.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:link controller="role" action="show" id="${userInstance?.role?.id}">${userInstance?.role?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="user.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:formatBoolean boolean="${userInstance?.status}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="user.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:link controller="user" action="show" id="${userInstance?.updatedBy?.id}">${userInstance?.updatedBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="user.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${userInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.userName}">
				<li class="fieldcontain">
					<span id="userName-label" class="property-label"><g:message code="user.userName.label" default="User Name" /></span>
					
						<span class="property-value" aria-labelledby="userName-label"><g:fieldValue bean="${userInstance}" field="userName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
