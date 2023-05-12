<?php

class Connection
{
    protected ?PDO $conn;

    public function __construct()
    {
        $this->connect();
    }
    
    protected function connect()
    {
        $config = json_decode(file_get_contents(__DIR__ . "/../../Assets/js/dba.json"), true);
        try {
            $this->conn = new PDO(
                "mysql:host=" . $config["host"] . ";dbname=" . $config["dbname"] . ";port=" . $config["port"],
                $config["user"],
                $config["password"]
            );
        } catch (PDOException $exception) {
            echo "ha fallado la conexión. Error: " . $exception->getMessage();
        }
    }

    public function __destruct()
    {
        if (isset($this->conn))  $this->conn = null;
    }
}
