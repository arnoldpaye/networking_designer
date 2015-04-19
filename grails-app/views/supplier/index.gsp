
<%@ page import="com.alicanto.networking_designer.Supplier" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'supplier.label', default: 'Supplier')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-supplier" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-supplier" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="address" title="${message(code: 'supplier.address.label', default: 'Address')}" />
					
						<th><g:message code="supplier.createdBy.label" default="Created By" /></th>
					
						<g:sortableColumn property="createdDate" title="${message(code: 'supplier.createdDate.label', default: 'Created Date')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'supplier.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'supplier.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'supplier.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${supplierInstanceList}" status="i" var="supplierInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${supplierInstance.id}">${fieldValue(bean: supplierInstance, field: "address")}</g:link></td>
					
						<td>${fieldValue(bean: supplierInstance, field: "createdBy")}</td>
					
						<td><g:formatDate date="${supplierInstance.createdDate}" /></td>
					
						<td>${fieldValue(bean: supplierInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: supplierInstance, field: "name")}</td>
					
						<td><g:formatBoolean boolean="${supplierInstance.status}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${supplierInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
