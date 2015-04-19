<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="bootstrap.min.css"/>
  		<asset:stylesheet src="fileinput.css"/>
  		<asset:stylesheet src="font-awesome.css"/>
  		<asset:stylesheet src="style.css"/>
		<asset:javascript src="bootstrap.min.js"/>
		<asset:javascript src="fileinput.js"/>
		<asset:javascript src="jquery.js"/>
		<g:layoutHead/>
	</head>
	<body>
		<div id="wrapper">
			<!-- Navigation -->
			<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html"><asset:image src="logo.png" alt="logo"/></a>
					<ul class="nav navbar-right top-nav">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<asset:image src="user.jpg" alt="user" class="img-circle"/>
								<label>John Smith</label><b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li>
									<a href="#"><i class="fa fa-fw fa-user"></i> Perfil</a>
								</li>
								<li>
									<a href="#"><i class="fa fa-fw fa-power-off"></i> Salir</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				<!-- Top Menu Items -->
				<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
				<div class="collapse navbar-collapse navbar-ex1-collapse">
					<ul class="nav navbar-nav side-nav">
						<li >
							<a href="index.html"><i class="fa fa-code-fork fa-lg"></i> Analisis</a>
						</li>
						<li class="active">
							<a href="user-list.html"><i class="fa fa-user fa-lg"></i> Usuarios</a>
						</li>
						<li>
							<a href="role-list.html"><i class="fa fa-sitemap fa-lg"></i> Roles</a>
						</li>
						<li>
							<a href="proveedor-list.html"><i class="fa fa-user-secret fa-lg"></i> Proveedores</a>
						</li>
						<li>
							<a href="cootization-list.html"><i class="fa fa-money fa-lg"></i> Cotizaciones</a>
						</li>
					</ul>
				</div>
			<!-- /.navbar-collapse -->
			</nav>
			<div id="page-wrapper">
				<div class="container-fluid">
					<!-- Page Heading -->
					<div class="row">
						<div class="col-lg-12">
							<g:layoutBody/>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /#page-wrapper -->
		</div>
		<!-- /#wrapper -->
	</body>
</html>
