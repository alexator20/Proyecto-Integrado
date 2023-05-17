<!-- $security = new Security();
//para comprobar si estas logeado
$security->checkLoggedIn(); -->

<?php
require_once __DIR__ . "/php/autoloader.php";
$empleado = new Empleado();

$conexion=mysqli_connect('localhost','root','','tpvdatabase')


?>
<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	<link href="./Assets/css/index.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
	<title>La vaquita</title>
</head>

<body class="vh-100">
	<header>
		<!-- nav -->
		<nav class="navbar navbar-expand-lg bg-dark lateral" data-bs-theme="dark">
			<div class="container-fluid">
				<div class="navbar-brand" style="padding-left: 25px;" href="#">
					<img src="./Assets/imgs/mesas/logo2.png" alt="Logo" width="60" height="60" class="d-inline-block align-text-top">
				</div>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
						<li class="nav-item">
							<a class="nav-link active" aria-current="page" href="index.html">INICIO</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="empleados.html">EMPLEADOS</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="register.php">LOGIN</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="editar.html">EDITAR</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="caja.html">CAJA</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<!-- MAIN -->
	<main class="vh-100">
	<div class="container-fluid">
		<div class="row text-center vh-100">
			<!-- LATERAL -->
			<div class="col-2 mesa bg-dark lateral2 lateral text-center">
				<ul>
					<li style="margin-top: 30px;"><a href="">Ofertas y Combos</a></li>
					<li style="margin-top: 30px;"><a href="">Cafes e Infusiones</a></li>
					<li style="margin-top: 30px;"><a href="">Cervezas</a></li>
					<li style="margin-top: 30px;"><a href="">Refrescos</a></li>
					<li style="margin-top: 30px;"><a href="">Licores</a></li>
					<li style="margin-top: 30px;"><a href="">Bolleria</a></li>
					<li style="margin-top: 30px;"><a href="">Tostadas</a></li>
					<li style="margin-top: 30px;"><a href="">Bocadillos</a></li>
					<li style="margin-top: 30px;"><a href="">Tapas</a></li>
				</ul>
			</div>
			<!-- CENTRO -->
			
			<div class="col-10">
			<div class="container-fluid d-flex justify-content-center">
				<table class="text-center">
					<tr class="cabeceraTabla">
						<td>Nombre</td>
						<td>Apellidos</td>
						<td>Correo</td>
						<td>Direccion</td>
						<td>Foto</td>
					</tr>

					<?php
					$sql = "SELECT nombre, apellidos, correo, direccion, foto FROM empleado";
					$result = mysqli_query($conexion, $sql);

					while ($mostrar = mysqli_fetch_array($result)) {
						?>
						<tr>
							<td><?php echo $mostrar['nombre'] ?></td>
							<td><?php echo $mostrar['apellidos'] ?></td>
							<td><?php echo $mostrar['correo'] ?></td>
							<td><?php echo $mostrar['direccion'] ?></td>
							<td><?php echo $mostrar['foto'] ?></td>
						</tr>
					<?php
					}
					?>
				</table>

				</div>				
			</div>
		</div>
	</div>
</main>

	<script src="./Assets/js/index.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>

</html>