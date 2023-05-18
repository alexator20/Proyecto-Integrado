<?php

class Product {

    private int $cod_producto;
    private string $nombre;
    private float $precio;
    private string $categoria;
    private ?string $imagen;

    public function __construct(int $cod_producto, string $nombre,string $precio, string $categoria,?string $imagen)
    {
        $this->cod_producto = $cod_producto;
        $this->nombre = $nombre;
        $this->precio = $precio;
        $this->categoria = $categoria;
        $this->imagen = $imagen;
    }

    
    /**
     * Get the value of Imagen
     */
    public function getImagen(): string | null
    {
        return $this->imagen;
    }


    /**
     * Get the value of nombre
     */
    public function getNombre(): string
    {
        return $this->nombre;
    }

    /**
     * Get the value of precio
     */
    public function getPrecio(): float
    {
        return $this->precio;
    }

    /**
     * Get the value of categoria
     */
    public function getCategoria(): string
    {
        return $this->categoria;
    }

    /**
     * Get the value of cod_producto
     */
    public function getCodProducto(): int
    {
        return $this->cod_producto;
    }
}