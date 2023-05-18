<?php

class Empleado extends Connection{

    private int $cod_empleado;
    private string $nombre;
    private string $apellido;
    private string $correo;
    private string $direccion;
    private string $contrasenya;
    private string $foto;

    public function __construct(int $cod_empleado, string $nombre, string $apellido, string $correo, string $direccion, string $contrasenya, string $foto)
{
    $this->cod_empleado = $cod_empleado;
    $this->nombre = $nombre;
    $this->apellido = $apellido;
    $this->correo = $correo;
    $this->direccion = $direccion;
    $this->contrasenya = $contrasenya;
    $this->foto = $foto;
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

    /**
     * Get the value of cod_empleado
     */
    public function getCodEmpleado(): int
    {
        return $this->cod_empleado;
    }
}