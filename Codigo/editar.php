<?php
$conexion = mysqli_connect('localhost', 'root', '', 'tpvdatabase');

if (isset($_POST['update'])) {
    $cod_empleado = $_POST['cod_empleado'];
    $nombre = $_POST['nombre'];
    $apellidos = $_POST['apellidos'];
    $correo = $_POST['correo'];
    $direccion = $_POST['direccion'];

    // Realiza la operación de actualización del campo en la base de datos
    $updateQuery = "UPDATE empleado SET nombre = ?, apellidos = ?, correo = ?, direccion = ? WHERE cod_empleado = ?";
    $stmt = $conexion->prepare($updateQuery);
    $stmt->bind_param("ssssi", $nombre, $apellidos, $correo, $direccion, $cod_empleado);
    $stmt->execute();

    // Redirecciona a la página de empleados.php después de la actualización
    header("Location: empleados.php");
    exit();
}

if (isset($_POST['cod_empleado'])) {
    $cod_empleado = $_POST['cod_empleado'];

    // Obtiene los datos del empleado a modificar
    $selectQuery = "SELECT cod_empleado, nombre, apellidos, correo, direccion FROM empleado WHERE cod_empleado = ?";
    $stmt = $conexion->prepare($selectQuery);
    $stmt->bind_param("i", $cod_empleado);
    $stmt->execute();
    $result = $stmt->get_result();
    $mostrar = mysqli_fetch_array($result);
}
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
    <title>Modificar Empleado</title>
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
            <div class="col-12">
                <div class="container-fluid d-flex justify-content-center editar">
                    <form method="POST" action="editar.php">
                        <input type="hidden" name="cod_empleado" value="<?php echo $mostrar['cod_empleado']; ?>">
                        <div class="mb-3">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" value="<?php echo $mostrar['nombre']; ?>" required>
                        </div>
                        <div class="mb-3">
                            <label for="apellidos" class="form-label">Apellidos</label>
                            <input type="text" class="form-control" id="apellidos" name="apellidos" value="<?php echo $mostrar['apellidos']; ?>" required>
                        </div>
                        <div class="mb-3">
                            <label for="correo" class="form-label">Correo</label>
                            <input type="email" class="form-control" id="correo" name="correo" value="<?php echo $mostrar['correo']; ?>" required>
                        </div>
                        <div class="mb-3">
                            <label for="direccion" class="form-label">Dirección</label>
                            <input type="text" class="form-control" id="direccion" name="direccion" value="<?php echo $mostrar['direccion']; ?>" required>
                        </div>
                        <button type="submit" name="update" class="btn btn-dark">Actualizar</button>
                    </form>
                </div>
            </div>
        </div>
    </main>

    <script src="./Assets/js/index.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>

</html>

