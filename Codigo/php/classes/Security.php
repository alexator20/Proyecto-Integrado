<?php
/* <?php
require_once "autoloader.php";
$security = new Security();
$security->checkLoggedIn();
?> */
class Security extends Connection
{
    private $loginPage = "/register.php";
    private $homePage = "/index.php";
    public function __construct()
    {
        parent::__construct();
        if (session_status() !== PHP_SESSION_ACTIVE) session_start();
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
            //return $this->checkPassword($user["securePassword"], $userPassword);
        } else {
            return false;
        }
    }

    private function checkPassword($securePassword, $userPassword)
    {
        //return password_verify($userPassword, $securePassword);
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

    public function updateWorker(string $data) {

        if (isset($_POST[$data])) {
            $nombre = $_POST['nombre'];
            $apellidos = $_POST['apellidos'];
            $correo = $_POST['correo'];
            $direccion = $_POST['direccion'];
        
            // Realiza la operación de actualización del campo en la base de datos
            $sql = "UPDATE empleado SET nombre = ?, apellidos = ?, correo = ?, direccion = ? WHERE direccion = ?";
            $stmt = $this->conn->prepare($sql);
            $stmt->bindParam(1,$nombre);
            $stmt->bindParam(2,$apellidos);
            $stmt->bindParam(3,$correo);
            $stmt->bindParam(4,$direccion);
            $stmt->bindParam(5,$direccion);
            $stmt->execute();

        
            // Redirecciona a la página de empleados.php después de la actualización
            header("Location: empleados.php");
            exit();
        }

    }
}


