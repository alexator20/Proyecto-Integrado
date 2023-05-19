<?php
if (session_status() !== PHP_SESSION_ACTIVE) session_start();
require_once __DIR__ . "/php/autoloader.php";

$_SESSION["mesa"] = $_GET["mesa"];
$_SESSION["categoria"] = "Cafes";


$repository = new TicketRepository;
if ($ticket->getEstado() == 0) {
    $ticket = $repository->insertTicket($_SESSION["mesa"]);
}



$_SESSION["idTicket"] = $ticket->getCod_ticket();
header("location: index.php");
