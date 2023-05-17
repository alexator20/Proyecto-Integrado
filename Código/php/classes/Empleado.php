<?php

class Empleado extends Connection{
    
    private int $cod_empleado;
    private string $nombre;
    private string $apellidos;
    private int $root;
    private string $correo;
    private string $direccion;
    private string $contrasenya;
    private string $foto;

    public function __construct(int $cod_empleado, string $nombre, string $apellidos, int $root, string $correo, string $direccion, string $contrasenya,string $foto)
    {
        $this->cod_empleado = $cod_empleado;
        $this->nombre = $nombre;
        $this->apellidos = $apellidos;
        $this->root = $root;
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

    public function getAllEmpleados():array 
    {
        $stmt = $this->conn->query("SELECT * FROM empleados");
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $data[] = new Empleado(...$row);
        }
        return $data;
    }
}