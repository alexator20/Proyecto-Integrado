<?php
if (session_status() !== PHP_SESSION_ACTIVE) session_start();
require_once __DIR__ . "/php/autoloader.php";
$repository = new TicketRepository;

$idTicket = (int) $_GET["id"];
$repository->closeTicket($idTicket);

header("location: index.php");