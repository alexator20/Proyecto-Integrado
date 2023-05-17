<?php
if(session_status() !== PHP_SESSION_ACTIVE) session_start();

$_SESSION["mesa"] = $_GET["mesa"];
$_SESSION["categoria"] = "Cafes";
header("location: index.php");
