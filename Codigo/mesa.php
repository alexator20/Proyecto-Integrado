<?php
if (session_status() !== PHP_SESSION_ACTIVE) session_start();
require_once __DIR__ . "/php/autoloader.php";

$_SESSION["mesa"] = $_GET["mesa"];
$_SESSION["categoria"] = "Cafes";

$repository = new TicketRepository;

$checkTicket = $repository->testTicket($_SESSION["idTicket"]);
if (!isset($_SESSION["idTicket"])) {

    $ticket = $repository->insertTicket($_SESSION["mesa"]);
} elseif (isset($_SESSION["idTicket"]) && $checkTicket == 0) {

    $ticket = $repository->insertTicket($_SESSION["mesa"]);
}else {
    $ticket = $repository->getTicket($_SESSION["idTicket"]);
}





$_SESSION["idTicket"] = $ticket->getCod_ticket();
header("location: index.php");
