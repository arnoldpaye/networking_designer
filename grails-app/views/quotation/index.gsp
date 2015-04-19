
<%@ page import="com.alicanto.networking_designer.Quotation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'quotation.label', default: 'Quotation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-quotation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-quotation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="quotation.createdBy.label" default="Created By" /></th>
					
						<g:sortableColumn property="createdDate" title="${message(code: 'quotation.createdDate.label', default: 'Created Date')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'quotation.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'quotation.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'quotation.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'quotation.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${quotationInstanceList}" status="i" var="quotationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${quotationInstance.id}">${fieldValue(bean: quotationInstance, field: "createdBy")}</g:link></td>
					
						<td><g:formatDate date="${quotationInstance.createdDate}" /></td>
					
						<td><g:formatDate date="${quotationInstance.date}" /></td>
					
						<td>${fieldValue(bean: quotationInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: quotationInstance, field: "name")}</td>
					
						<td><g:formatBoolean boolean="${quotationInstance.status}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${quotationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
