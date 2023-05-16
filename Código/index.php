<!-- <?php
require_once __DIR__ . "/php/autoloader.php";
/* $security = new Security();
//para comprobar si estas logeado
$security->checkLoggedIn(); */

$category = isset($_GET["categoria"])? $_GET["categoria"] : "Bebidas"  ;

$repository = new productRepository;
?> -->
<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
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
					<img src="./Assets/imgs/mesas/logo2.png" alt="Logo" width="60" height="60"
						class="d-inline-block align-text-top">
				</div>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
					data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
					aria-expanded="false" aria-label="Toggle navigation">
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
		<div class="container-fluid ">
			<div class="row text-center vh-100">
				<!-- LATERAL -->
				<div class="col-2 mesa bg-dark lateral2 lateral text-center">
					<ul>
						<li style="margin-top: 30px;"><a href="./ofertas.html">Ofertas y Combos</a></li>
						<li style="margin-top: 30px;"><a href="./cafes.html">Cafes e Infusiones</a></li>
						<li style="margin-top: 30px;"><a href="./cervezas.html">Cervezas</a></li>
						<li style="margin-top: 30px;"><a href="./refrescos.html">Refrescos</a></li>
						<li style="margin-top: 30px;"><a href="./licores.html">Licores</a></li>
						<li style="margin-top: 30px;"><a href="./bolleria.html">Bolleria</a></li>
						<li style="margin-top: 30px;"><a href="./tostadas.html">Tostadas</a></li>
						<li style="margin-top: 30px;"><a href="./bocadillos.html">Bocadillos </a></li>
						<li style="margin-top: 30px;"><a href="./tapas.html">Tapas</a></li>
					</ul>
				</div>
				<!-- CENTRO -->
				<div class="col-xxl-8 col-lg-10" style="border-right:2px solid black;">
					<div class="container text-center">
						<div class="row text-center">
							<?php print $repository->drawProductCard($repository->getAllCategoryProduct($category)) ?>
						</div>

						<!-------paginado------->

						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-end">
								<li class="page-item disabled">
									<a class="page-link">Anterior</a>
								</li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item">
									<a class="page-link" href="#">Siguiente</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>



				<!-- ASIDE -->
				<div class="col-xxl-2 col-lg-12 aside text-center">

					<div class="row">
						<div class="col-12 text-center titulo2 bg-dark">
							<p> Mesas </p>
						</div>
						<div class="col-2 offset-2 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/1.png" alt="mesa 1"> </a>
						</div>
						<div class="col-2 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/3.png" alt="mesa 3"> </a>
						</div>
						<div class="col-2 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/5.png" alt="mesa 5"> </a>
						</div>
						<div class="col-2 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/7.png" alt="mesa 47"> </a>
						</div>
						<div class="col-2 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/9.png" alt="mesa 9"> </a>
						</div>
					</div>
					<div class="row">
						<div class="col-2 offset-2 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/2.png" alt="mesa 2"> </a>
						</div>
						<div class="col-2 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/4.png" alt="mesa 4"> </a>
						</div>
						<div class="col-2 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/6.png" alt="mesa 6"> </a>
						</div>
						<div class="col-2 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/8.png" alt="mesa 8"> </a>
						</div>
						<div class="col-2 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/10.png" alt="mesa 10"> </a>
						</div>
					</div>
					<div class="row">
						<div class="col-2 offset-2 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/1.png" alt="mesa 1"> </a>
						</div>
						<div class="col-2 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/2.png" alt="mesa 2"> </a>
						</div>
						<div class="col-2 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/3.png" alt="mesa 3"> </a>
						</div>
						<div class="col-2 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/4.png" alt="mesa 4"> </a>
						</div>
						<div class="col-2 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/5.png" alt="mesa 5"> </a>
						</div>
					</div>
					<div class="row">
						<div class="col-2 offset-8 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/6.png" alt="mesa 6"> </a>
						</div>
						<div class="col-2 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/7.png" alt="mesa 7"> </a>
						</div>
						<div class="col-2 offset-8 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/8.png" alt="mesa 8"> </a>
						</div>
						<div class="col-2 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/9.png" alt="mesa 9"> </a>
						</div>
						<div class="col-2 offset-8 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/10.png" alt="mesa 10"> </a>
						</div>
						<div class="col-2 mesa">
							<a href=""> <img src="./Assets/imgs/mesas/11.png" alt="mesa 11"> </a>
						</div>
					</div>
					<!-- Ticket -->
					<div class="row">
						<div class="col-12 text-center titulo2 bg-dark">
							<p> Ticket </p>
						</div>
						<div class="">
							<p>Mesa 1</p>
						</div>					
					</div>
					<!-- Calculadora -->
					<div class="row calculadora text-center" style="padding-top: 15px;">
						<div class="col-2 text-center titulo2 bg-dark">
							<p> Calculadora </p>
						</div>

						<div class="calculator">
							<input type="text" class="result" readonly>
							<div class="keypad">
								<button class="key" onclick="appendToResult('7')">7</button>
								<button class="key" onclick="appendToResult('8')">8</button>
								<button class="key" onclick="appendToResult('9')">9</button>
								<button class="key operator" onclick="appendToResult('/')">/</button>
								<button class="key" onclick="appendToResult('4')">4</button>
								<button class="key" onclick="appendToResult('5')">5</button>
								<button class="key" onclick="appendToResult('6')">6</button>
								<button class="key operator" onclick="appendToResult('*')">x</button>
								<button class="key" onclick="appendToResult('1')">1</button>
								<button class="key" onclick="appendToResult('2')">2</button>
								<button class="key" onclick="appendToResult('3')">3</button>
								<button class="key operator" onclick="appendToResult('-')">-</button>
								<button class="key zero" onclick="appendToResult('0')">0</button>
								<button class="key" onclick="appendToResult('.')">.</button>
								<button class="key c" id="clear">C</button>
								<button class="key operator" onclick="appendToResult('+')">+</button>
								<button class="key equal" onclick="calculate()"> =</button>
							</div>
						</div>
					</div>
				</div>
	</main>
	<script src="./Assets/js/index.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
</body>
