<?php
if (session_status() !== PHP_SESSION_ACTIVE) session_start();
require_once __DIR__ . "/php/autoloader.php";


$_SESSION["mesa"] = (string) $_GET["mesa"];
$_SESSION["categoria"] = "Cafes";

$repository = new TicketRepository;


$result = $repository->testTicket($_SESSION["mesa"]);

if ($result->rowCount() == 0) {
    
    $ticket = $repository->insertTicket($_SESSION["mesa"]);
}else {
    $arr = $repository->lastIdTable($_SESSION["mesa"]);
    $ticket = $repository->getTicket($arr["cod_ticket"]);
}



    $_SESSION["idTicket"] = $ticket->getCod_ticket();


header("location: index.php");
