<?php

class productRepository extends Connection{

    public function __construct()
    {
        $this->connect();
    }

    public function getAllProduct():array 
    {
        $stmt = $this->conn->query("SELECT * FROM producto ORDER BY cod_producto DESC");
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $data[] = new Product(...$row);
        }
        return $data;
    }

    public function getProduct(int $id): Product
    {
        $stmt = $this->conn->query("SELECT * FROM producto WHERE cod_producto = $id");
        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        return new Product(...$row);
    }

    public function getAllCategoryProduct(string $category):array 
    {
        $stmt = $this->conn->query("SELECT * FROM producto WHERE categoria = $category ORDER BY cod_producto DESC");
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $data[] = new Product(...$row);
        }
        return $data;
    }

    






}