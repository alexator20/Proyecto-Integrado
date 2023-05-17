<?php
require_once __DIR__ . "/php/autoloader.php";
$security = new Security();
//para comprobar si estas logeado
$security->checkLoggedIn();
$empleado = new Empleado();

$conexion=mysqli_connect('localhost','root','','tpvdatabase');

// Comprobar si se ha enviado el formulario de agregar empleado
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Obtener los datos del formulario
    $nombre = $_POST['nombre'];
    $apellidos = $_POST['apellidos'];
    $correo = $_POST['correo'];
    $direccion = $_POST['direccion'];

    // Insertar el empleado en la base de datos
    $sql = "INSERT INTO empleado (nombre, apellidos, correo, direccion) VALUES ('$nombre', '$apellidos', '$correo', '$direccion')";
    mysqli_query($conexion, $sql);


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
							<a class="nav-link active" aria-current="page" href="index.php">INICIO</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="empleados.php">EMPLEADOS</a>
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
			<div class="col-12">
			<div class="container-fluid d-flex justify-content-center">
				<table>
					<tr class="headerTabla">
						<td>Nombre</td>
						<td>Apellidos</td>
						<td>Correo</td>
						<td>Direccion</td>
						<td>Foto</td>
					</tr>

					<?php foreach ($empleados as $empleado) { ?>
                                <tr>
                                    <td><?php echo $empleado['nombre'] ?></td>
                                    <td><?php echo $empleado['apellidos'] ?></td>
                                    <td><?php echo $empleado['correo'] ?></td>
                                    <td><?php echo $empleado['direccion'] ?></td>
                                    <td><?php echo $empleado['foto'] ?></td>
                                </tr>
                    <?php 
						} 
					?>
				</table>
				</div>
				<!-- Formulario para agregar empleados -->
				<div class="container">
                        <h3>Agregar Empleado</h3>
                <form method="post">
                        <div class="mb-3">
                                <label for="nombre" class="form-label">Nombre</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" required>
                        </div>
                        <div class="mb-3">
                                <label for="apellidos" class="form-label">Apellidos</label>
                                <input type="text" class="form-control" id="apellidos" name="apellidos" required>
                        </div>
                        <div class="mb-3">
                                <label for="correo" class="form-label">Correo</label>
                                <input type="email" class="form-control" id="correo" name="correo" required>
                            </div>
                            <div class="mb-3">
                                <label for="direccion" class="form-label">Dirección</label>
                                <input type="text" class="form-control" id="direccion" name="direccion" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Agregar</button>
                </form>				
			</div>
		</div>
	</div>
</main>

	<script src="./Assets/js/index.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
