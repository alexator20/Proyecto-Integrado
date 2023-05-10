<?php

class Empleado extends Connection{

    public function __construct()
    {
        $this->connect();
    }

    public function insert(array $data): void
    {
        $name = $data["name"];
        $surname = $data["surname"];
        $email = $data["email"];
        $address = $data["address"];
        $password = $data["password"];

        $sql = "INSERT INTO empleado
        (nombre,apellidos,correo,direccion,contrasenya) 
        VALUES ($name,$surname,$email,$address,$password)";

        $this->conn->query($sql);
    }
}