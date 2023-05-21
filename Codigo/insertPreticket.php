<?php

if (session_status() !== PHP_SESSION_ACTIVE) session_start();
require_once __DIR__ . "/php/autoloader.php";

$id_product = (int) $_GET["id"];
$id_ticket = (int) $_SESSION["idTicket"];
$repository = new TicketRepository;
$repository->insertPreticket($id_product,$id_ticket);


