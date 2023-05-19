<?php
if (session_status() !== PHP_SESSION_ACTIVE) session_start();
require_once __DIR__ . "/php/autoloader.php";

$_SESSION["mesa"] = $_GET["mesa"];
$_SESSION["categoria"] = "Cafes";

$id = 1;
if ($id == 1) {
    $repository = new TicketRepository;
    $ticket = $repository->insertTicket($_SESSION["mesa"]);
}
    

$_SESSION["idTicket"] = $ticket->getCod_ticket();
header("location: index.php");
