<?php

class Product {

    private int $cod_producto;
    private string $nombre;
    private string $precio;
    private string $categoria;

    public function __construct(int $cod_producto, string $nombre,string $precio, string $categoria)
    {
        $this->cod_producto = $cod_producto;
        $this->nombre = $nombre;
        $this->precio = $precio;
        $this->categoria = $categoria;
    }
    
}