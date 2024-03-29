<?php
if (session_status() !== PHP_SESSION_ACTIVE) session_start();
require_once __DIR__ . "/php/autoloader.php";
$security = new Security();
//para comprobar si estas logeado
$security->checkLoggedIn();

$category = isset($_SESSION["categoria"]) ? $_SESSION["categoria"] : "Cafes";
$mesa = isset($_SESSION["mesa"]) ? $_SESSION["mesa"] : "";
$idTicket = isset($_SESSION["idTicket"]) ? $_SESSION["idTicket"] : 0;
$proRepository = new productRepository;
$tickRepository = new TicketRepository;

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
						<a class="navbar-brand log-out" href="destroySession.php">
							<img src="./Assets/imgs/log-out.png" alt="Logo" width="40" height="40">
						</a>
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
				<div class="col-2 bg-dark lateral2 lateral text-center">
					<ul>
						<li style="margin-top: 30px;"><a href="/categoria.php?categoria=Combos">Ofertas y Combos</a></li>
						<li style="margin-top: 30px;"><a href="/categoria.php?categoria=Cafes">Cafes e Infusiones</a></li>
						<li style="margin-top: 30px;"><a href="/categoria.php?categoria=Cervezas">Cervezas</a></li>
						<li style="margin-top: 30px;"><a href="/categoria.php?categoria=Refrescos">Refrescos</a></li>
						<li style="margin-top: 30px;"><a href="/categoria.php?categoria=Licores">Licores</a></li>
						<li style="margin-top: 30px;"><a href="/categoria.php?categoria=Bolleria">Bolleria</a></li>
						<li style="margin-top: 30px;"><a href="/categoria.php?categoria=Tostadas">Tostadas</a></li>
						<li style="margin-top: 30px;"><a href="/categoria.php?categoria=Bocadillos">Bocadillos </a></li>
						<li style="margin-top: 30px;"><a href="/categoria.php?categoria=Tapas">Tapas</a></li>
					</ul>
				</div>
				<!-- CENTRO -->
				<div class="col-xxl-8 col-lg-10" style="border-right:2px solid black;">
					<div class="container text-center">
						<div class="row text-center ">
							<?php
							if ($mesa == "") {

								print "<h1> Selecciona un numero de Mesa</h1>";
							} else {
								print "<h2>MESA $mesa</h2>";
								print $proRepository->drawProductCard($proRepository->getAllCategoryProduct($category));
							}

							?>
						</div>
					</div>
				</div>
				<!-- ASIDE -->
				<div class="col-xxl-2 col-lg-12 text-center">

					<div class="row">
						<div class="col-12 text-center titulo2 bg-dark">
							<p> Mesas </p>
						</div>
						<div class="col-2 offset-2 mesa">
							<a href="/mesa.php?mesa=1T"> <img src="./Assets/imgs/mesas/1.png" alt="mesa 1T"> </a>
						</div>
						<div class="col-2 mesa">
							<a href="/mesa.php?mesa=3T"> <img src="./Assets/imgs/mesas/3.png" alt="mesa 3T"> </a>
						</div>
						<div class="col-2 mesa">
							<a href="/mesa.php?mesa=5T"> <img src="./Assets/imgs/mesas/5.png" alt="mesa 5T"> </a>
						</div>
						<div class="col-2 mesa">
							<a href="/mesa.php?mesa=7T"> <img src="./Assets/imgs/mesas/7.png" alt="mesa 7T"> </a>
						</div>
						<div class="col-2 mesa">
							<a href="/mesa.php?mesa=9T"> <img src="./Assets/imgs/mesas/9.png" alt="mesa 9T"> </a>
						</div>
					</div>
					<div class="row">
						<div class="col-2 offset-2 mesa">
							<a href="/mesa.php?mesa=2T"> <img src="./Assets/imgs/mesas/2.png" alt="mesa 2T"> </a>
						</div>
						<div class="col-2 mesa">
							<a href="/mesa.php?mesa=4T"> <img src="./Assets/imgs/mesas/4.png" alt="mesa 4T"> </a>
						</div>
						<div class="col-2 mesa">
							<a href="/mesa.php?mesa=6T"> <img src="./Assets/imgs/mesas/6.png" alt="mesa 6T"> </a>
						</div>
						<div class="col-2 mesa">
							<a href="/mesa.php?mesa=8T"> <img src="./Assets/imgs/mesas/8.png" alt="mesa 8T"> </a>
						</div>
						<div class="col-2 mesa">
							<a href="/mesa.php?mesa=10T"> <img src="./Assets/imgs/mesas/10.png" alt="mesa 10T"> </a>
						</div>
					</div>
					<div class="row">
						<div class="col-2 offset-2 mesa">
							<a href="/mesa.php?mesa=1"> <img src="./Assets/imgs/mesas/1.png" alt="mesa 1"> </a>
						</div>
						<div class="col-2 mesa">
							<a href="/mesa.php?mesa=2"> <img src="./Assets/imgs/mesas/2.png" alt="mesa 2"> </a>
						</div>
						<div class="col-2 mesa">
							<a href="/mesa.php?mesa=3"> <img src="./Assets/imgs/mesas/3.png" alt="mesa 3"> </a>
						</div>
						<div class="col-2 mesa">
							<a href="/mesa.php?mesa=4"> <img src="./Assets/imgs/mesas/4.png" alt="mesa 4"> </a>
						</div>
						<div class="col-2 mesa">
							<a href="/mesa.php?mesa=5"> <img src="./Assets/imgs/mesas/5.png" alt="mesa 5"> </a>
						</div>
					</div>
					<div class="row">
						<div class="col-2 offset-8 mesa">
							<a href="/mesa.php?mesa=6"> <img src="./Assets/imgs/mesas/6.png" alt="mesa 6"> </a>
						</div>
						<div class="col-2 mesa">
							<a href="/mesa.php?mesa=7"> <img src="./Assets/imgs/mesas/7.png" alt="mesa 7"> </a>
						</div>
						<div class="col-2 offset-8 mesa">
							<a href="/mesa.php?mesa=8"> <img src="./Assets/imgs/mesas/8.png" alt="mesa 8"> </a>
						</div>
						<div class="col-2 mesa">
							<a href="/mesa.php?mesa=9"> <img src="./Assets/imgs/mesas/9.png" alt="mesa 9"> </a>
						</div>
						<div class="col-2 offset-8 mesa">
							<a href="/mesa.php?mesa=10"> <img src="./Assets/imgs/mesas/10.png" alt="mesa 10"> </a>
						</div>
						<div class="col-2 mesa">
							<a href="/mesa.php?mesa=11"> <img src="./Assets/imgs/mesas/11.png" alt="mesa 11"> </a>
						</div>
					</div>
					<!-- Ticket -->
					<div class="row">
						<div class="col-12 text-center titulo2 bg-dark">
							<p>Ticket<?php print "   $idTicket" ?></p>
						</div>
						<div class="row ticket">
							<?php print $tickRepository->drawPreticket($idTicket) ?>


							<button class="btn btn-dark bticket" id="open-popup">Detalles del ticket</button>
							<div class="popup-overlay"></div>
							<div class="popup">
								<button id="close-popup" style="float:right;margin-bottom:20px;">X</button>
								<h2><?= "TICKET" . "\n" . $mesa ?></h2>
								<p>
									<?= $tickRepository->drawTicket($idTicket) ?>
								</p>
								<br>
								<a href="cerradoTicket.php?id=<?php echo $idTicket; ?>"><button class="btn btn-dark">Enviar</button></a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
	</main>
	<script src="./Assets/js/index.js"></script>
	<script src="./Assets/js/PopUp.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>

</html>