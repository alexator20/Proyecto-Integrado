<?php

require_once __DIR__ . "/php/autoloader.php";
if (count($_POST) > 0) {

    try {
        $repository = new Empleado;

        $data = [
            'name' => $_POST["name"],
            'lastname' => $_POST["lastname"],
            'email' => $_POST["email"],
            'address' => $_POST["address"],
            'password' => $_POST["password"]
        ];

        $rowsAffected = $repository->insert($data);

        echo "Filas afectadas: " . $rowsAffected . "</br>";

        /* echo "<pre>";
        var_dump($result);
        echo "</pre>"; */

    } catch (PDOException $e) {
        echo "<br>Se ha producido un fallo, inténtelo más tarde. ";
    }
}
