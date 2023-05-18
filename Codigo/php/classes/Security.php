<?php
require_once(__DIR__ . "/../autoloader.php");

class Security extends Connection
{
    private $loginPage = "/register.php";
    private $homePage = "/index.php";

    public function __construct()
    {
        if (session_status() === PHP_SESSION_NONE) {
            session_start();
        }
        parent::__construct();
    }
    

    public function checkLoggedIn()
    {
        if (!isset($_SESSION["loggedIn"]) || !$_SESSION["loggedIn"]) {
            header("Location: " . $this->loginPage);
        }
    }

    public function doLogin()
    {
        if (count($_POST) > 0) {
            $user = $this->getUser($_POST["email"]);
            $_SESSION["loggedIn"] = $this->checkUser($user, $_POST["password"]) ? $user : false;
            if ($_SESSION["loggedIn"]) {
                header("Location: " . $this->homePage);
            } else {
                return "Incorrect User Name or Password";
            }
        } else {
            return null;
        }
    }

    public function getUserData()
    {
        if (isset($_SESSION["loggedIn"]) && $_SESSION["loggedIn"]) {
            return $_SESSION["loggedIn"];
        }
    }

    private function checkUser($user, $userPassword)
    {
        if ($user) {
            return $this->checkPassword($user["contrasenya"], $userPassword);
        } else {
            return false;
        }
    }

    private function checkPassword($securePassword, $userPassword)
    {
        // return password_verify($userPassword, $securePassword);
        return ($userPassword === $securePassword);
    }

    private function getUser($userName)
    {
        $sql = "SELECT * FROM empleado WHERE correo = '$userName'";
        $result = $this->conn->query($sql);
        if ($result && $row = $result->fetch(PDO::FETCH_ASSOC)) {
            return $row;
        } else {
            return false;
        }
    }

    public function forgotPassword($email, $new_password)
    {
        // Crear una consulta SQL para buscar el usuario por su dirección de correo electrónico
        $sql = "SELECT * FROM empleado WHERE correo='$email'";

        // Ejecutar la consulta y almacenar el resultado en una variable
        $result = $this->conn->query($sql);

        // Comprobar si se encontró un usuario con ese correo electrónico
        if ($result->rowCount() > 0) {
            // Crear una consulta SQL para actualizar la contraseña del usuario
            $sql = "UPDATE empleado SET contrasenya='$new_password' WHERE correo='$email'";

            // Ejecutar la consulta
            if ($this->conn->query($sql) === TRUE) {
                echo "Contraseña actualizada correctamente";
            } else {
                $errorInfo = $this->conn->errorInfo();
                echo "Error al actualizar la contraseña: " . $errorInfo[2];
            }
        } else {
            echo "No se encontró ningún usuario con ese correo electrónico";
        }
    }
}

$security = new Security();
$security->checkLoggedIn();

?>
