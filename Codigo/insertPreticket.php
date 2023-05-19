<?php

$precio = isset($_GET["precio"])? $_GET["precio"] : null;
$id = $_GET["id"];


if ($precio == 1) {
    $stmt = $this->conn->prepare("INSERT INTO producto_servido VALUES (?,?,?)");
    $stmt->bindParam(1, );
}
