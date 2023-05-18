<?php
class  ticket{

private int $cod_ticket;
private int $hora;
private string $fecha;
private int $num_mesa;
private int $cod_empleado;

public function __construct(int $cod_ticket, string $hora,string $fecha, int $num_mesa,int $cod_empleado)
{
    $this->cod_ticket = $cod_ticket;
    $this->hora = $hora;
    $this->fecha = $fecha;
    $this->num_mesa = $num_mesa;
    $this->cod_empleado = $cod_empleado;
}


/**
 * Get the value of cod_ticket
 */ 
public function getCod_ticket()
{
return $this->cod_ticket;
}

/**
 * Set the value of cod_ticket
 *
 * @return  self
 */ 
public function setCod_ticket($cod_ticket)
{
$this->cod_ticket = $cod_ticket;

return $this;
}

/**
 * Get the value of hora
 */ 
public function getHora()
{
return $this->hora;
}

/**
 * Set the value of hora
 *
 * @return  self
 */ 
public function setHora($hora)
{
$this->hora = $hora;

return $this;
}

/**
 * Get the value of fecha
 */ 
public function getFecha()
{
return $this->fecha;
}

/**
 * Set the value of fecha
 *
 * @return  self
 */ 
public function setFecha($fecha)
{
$this->fecha = $fecha;

return $this;
}

/**
 * Get the value of num_mesa
 */ 
public function getNum_mesa()
{
return $this->num_mesa;
}

/**
 * Set the value of num_mesa
 *
 * @return  self
 */ 
public function setNum_mesa($num_mesa)
{
$this->num_mesa = $num_mesa;

return $this;
}

/**
 * Get the value of cod_empleado
 */ 
public function getCod_empleado()
{
return $this->cod_empleado;
}

/**
 * Set the value of cod_empleado
 *
 * @return  self
 */ 
public function setCod_empleado($cod_empleado)
{
$this->cod_empleado = $cod_empleado;

return $this;
}
}