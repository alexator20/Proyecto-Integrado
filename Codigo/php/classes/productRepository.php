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

    /* public function getAllCategoryProduct(string $categoria):array 
    {
        $stmt = $this->conn->query("SELECT * FROM producto WHERE categoria = $categoria ORDER BY cod_producto DESC");
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $data[] = new Product(...$row);
        }
        return $data;
    } */

    public function getAllCategoryProduct(string $category): array 
    {
    $data = [];
    $stmt = $this->conn->prepare("SELECT * FROM producto WHERE categoria = :category ORDER BY cod_producto ASC");
    $stmt->bindParam(':category', $category);
    $stmt->execute();
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $data[] = new Product(...$row);

    }
    return $data;
    }


    public function drawProductCard(array $data):string {

        $output = "";
        //bucle
        foreach ($data as $key) {
            $output .= "<div class='col tarjetas text-center'>";
            $output .= "<div class='card' style='width: 14rem; height: 17rem;'>";
            $output .= "<img src='./Assets/imgs/Imagenes_productos_TPV/".$key->getCategoria()."/".$key->getImagen()."' class='card-img-top' alt='".$key->getNombre()."'>";
            $output .= "<div class='card-body'>";
            $output .= "<h6 class='card-title'>".$key->getNombre()."</h6>";
            $output .= "<a href='/Codigo/index.php?categoria=".$key->getPrecio()."' class='btn btn-dark'>Mini</a>";
            
            if ($key->getCategoria() == "Bocadillos") {

                $output .= "<a href='/Codigo/index.php?categoria=".($key->getPrecio()+1)."' class='btn btn-dark'>Maxi</a>";
            }
            $output .= "</div></div></div>";
        }

        return $output;
    }
}