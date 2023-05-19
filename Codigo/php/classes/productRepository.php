<?php

class productRepository extends Connection
{

    public function __construct()
    {
        $this->connect();
    }

    public function getAllProduct(): array
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


    public function drawProductCard(array $data): string
    {

        $output = "";
        //bucle
        foreach ($data as $key) {
            $output .= "<div class='col tarjetas text-center'>";
            $output .= "<div class='card' style='width: 14rem; height: 17rem;'>";
            $output .= "<img src='Assets/imgs/Imagenes_Productos/" . $key->getCategoria() . "/" . $key->getImagen() . "' class='card-img-top' alt='" . $key->getNombre() . "'>";
            $output .= "<div class='card-body'>";
            $output .= "<h6 class='card-title'>" . $key->getNombre() . "</h6>";

            if ($key->getCategoria() == "Bocadillos") {
                
                $output .= "<a href='/insertPreticket.php?id=" . $key->getCodProducto() . "' class='btn btn-dark'>Mini</a>";
                $output .= "<a href='/insertPreticket.php?precio=1 & id=" . $key->getCodProducto() . "' class='btn btn-dark'>Max</a>";
            } else {
                $output .= "<a href='/insertPreticket.php?id=" . $key->getCodProducto() . "' class='btn btn-dark'>Añadir</a>";
            }
            $output .= "</div></div></div>";
        }

        return $output;
    }
}