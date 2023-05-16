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

    public function drawProductCard(int $id, array $arr) {

        $output = "";
        //bucle
        foreach ($arr as $key) {
            $output .= "<div class='col tarjetas text-center'>";
            $output .= "<div class='card' style='width: 14rem;'>";
            $output .= "<img src='./Assets/imgs/productos/'".$key->getCategoria()."'/'".$key->getImagen()."'' class='card-img-top' alt='...'>";
            $output .= "<div class='card-body'>";
            $output .= "<h6 class='card-title'>".$key->getNombre()."</h6>";
            $output .= "<a href='#/'".$key->getPrecio()."'' class='btn btn-dark'>Mini</a>";
            $output .= "<a href='#/'".($key->getPrecio() + 1)."'' class='btn btn-dark'>Maxi</a>";
            $output .= "</div></div></div>";
        }
    }
}