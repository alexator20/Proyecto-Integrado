<?php
if (session_status() !== PHP_SESSION_ACTIVE) session_start();

$_SESSION["categoria"] = $_GET["categoria"];
header("location: index.php");
