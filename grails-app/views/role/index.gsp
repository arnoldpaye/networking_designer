
<%@ page import="com.alicanto.networking_designer.Role" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-role" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-role" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="role.createdBy.label" default="Created By" /></th>
					
						<g:sortableColumn property="createdDate" title="${message(code: 'role.createdDate.label', default: 'Created Date')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'role.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'role.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'role.status.label', default: 'Status')}" />
					
						<th><g:message code="role.updatedBy.label" default="Updated By" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${roleInstanceList}" status="i" var="roleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${roleInstance.id}">${fieldValue(bean: roleInstance, field: "createdBy")}</g:link></td>
					
						<td><g:formatDate date="${roleInstance.createdDate}" /></td>
					
						<td>${fieldValue(bean: roleInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: roleInstance, field: "name")}</td>
					
						<td><g:formatBoolean boolean="${roleInstance.status}" /></td>
					
						<td>${fieldValue(bean: roleInstance, field: "updatedBy")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${roleInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
