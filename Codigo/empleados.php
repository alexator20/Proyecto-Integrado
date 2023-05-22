<?php
$security = new Security();
//para comprobar si estas logeado
$security->checkLoggedIn();
$conexion = mysqli_connect('localhost', 'root', '', 'tpvdatabase');

if (isset($_GET['delete_id'])) {
    $id = $_GET['delete_id'];

    // Realiza la operación de eliminación del campo en la base de datos
    $deleteQuery = "DELETE FROM empleado WHERE cod_empleado = ?";
    $stmt = $conexion->prepare($deleteQuery);
    $stmt->bind_param("i", $id);
    $stmt->execute();

    // Redirecciona a la página actual para actualizar la tabla después de la eliminación
    header("Location: {$_SERVER['PHP_SELF']}");
    exit();
}

$sql = "SELECT cod_empleado, nombre, apellidos, correo, direccion, foto FROM empleado";
$result = mysqli_query($conexion, $sql);
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
<nav class="navbar navbar-expand-lg bg-dark lateral" data-bs-theme="dark">
			<div class="container-fluid">
				<div class="navbar-brand" href="#">
					<img src="./Assets/imgs/mesas/logo2.png" alt="Logo" width="55" height="55" style="margin-left:10px">
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
							<a class="nav-link" href="caja.php" onclick="return false;">CAJA</a>
						</li>
						<a class="navbar-brand log-out" href="register.php">
							<img src="./Assets/imgs/log-out.png" alt="Logo" width="40" height="40">
						</a>
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
                            <td>Acciones</td>
                        </tr>

                        <?php
                        while ($mostrar = mysqli_fetch_array($result)) {
                            ?>
                            <tr>
                                <td><?php echo $mostrar['nombre'] ?></td>
                                <td><?php echo $mostrar['apellidos'] ?></td>
                                <td><?php echo $mostrar['correo'] ?></td>
                                <td><?php echo $mostrar['direccion'] ?></td>
                                <td>
                                    <form method="POST" action="editar.php">
                                        <input type="hidden" name="cod_empleado" value="<?php echo $mostrar['cod_empleado']; ?>">
                                        <button type="submit" class="btn btn-dark btn-sm buttonEmpl">
                                            <i class="fas fa-edit"></i> Modificar
                                        </button>
                                    </form>
                                    <form method="POST" action="?delete_id=<?php echo $mostrar['cod_empleado']; ?>">
                                        <button type="submit" class="btn borrar btn-sm buttonEmpl">
                                            <i class="fas fa-trash"></i> Borrar
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        <?php
                        }
                        ?>
                    </table>

                </div>
            </div>
        </div>
    </main>

    <script src="./Assets/js/index.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>

</html>