<?php

class Empleado extends Connection{

    public function __construct()
    {
        $this->connect();
    }

    public function insert(array $data): void
    {
        $name = $data["name"];
        $lastname = $data["lastname"];
        $email = $data["email"];
        $address = $data["address"];
        $password = $data["password"];

        $sql = "INSERT INTO empleado
        (nombre,apellidos,correo,direccion,contrasenya) 
        VALUES ('$name','$lastname','$email','$address','$password')";
        /* echo $sql;
        die; */

        $this->conn->query($sql);
    }

    public function getAllEmpleados(): array{
        /* $sql = "SELECT * FROM empleado";
        $result = $this->conn->query($sql); */
        $stmt = $this->conn->query("SELECT * FROM empleado");
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $data[] = $row;
        }
        return $data;
    }

}