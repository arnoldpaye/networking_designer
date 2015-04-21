
<%@ page import="com.alicanto.networking_designer.Role" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<h3 class="page-header">
			Roles
			<g:link class="btn btn-primary pull-right" action="create">
				<i class="fa fa-user-plus fa-lg"></i> Nuevo rol</a>
			</g:link>
			<div class="col-md-4 pull-right">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Buscar...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button"><i class="fa fa-search fa-lg"></i></button>
					</span>
				</div><!-- /input-group -->
			</div>
		</h3>
		<div class="table-responsive">
		<table class="table table-hover table-striped">
			<thead>
				<tr>
					<th>Rol</th>
					<th>Descripcion</th>
					<th>Status</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<g:each in="${roleInstanceList}" status="i" var="roleInstance">
					<tr>
						<td>${fieldValue(bean: roleInstance, field: "name")}</td>
						<td>${fieldValue(bean: roleInstance, field: "description")}</td>
						<td>${fieldValue(bean: roleInstance, field: "status")}</td>
						<td><g:link action="show" id="${roleInstance.id}" class="btn btn-link"><i class="fa fa-edit fa-lg"></i></g:link></td>
					</tr>
				</g:each>
			</tbody>
		</table>
		</div>
		<nav>
			<ul class="pagination">
				<li>
					<a href="#" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
					</a>
				</li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li>
					<a href="#" aria-label="Next">
						<span aria-hidden="true">&raquo;</span>
					</a>
				</li>
			</ul>
		</nav>
	</body>
</html>
