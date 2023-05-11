<?php

class productRepository extends Connection{

    public function __construct()
    {
        $this->connect();
    }

    public function getAllProduct():array 
    {
        $stmt = $this->conn->query("SELECT * FROM movement ORDER BY cod_producto DESC");
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $data[] = new Product(...$row);
        }
        return $data;
    }

    


}