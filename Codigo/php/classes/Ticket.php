<?php
class  ticket extends Connection{

private int $cod_ticket;
private string $hora;
private string $fecha;
private string $num_mesa;
private int $cod_empleado;

public function __construct(int $cod_ticket, string $hora,string $fecha, string $num_mesa,int $cod_empleado)
{
    $this->cod_ticket = $cod_ticket;
    $this->hora = $hora;
    $this->fecha = $fecha;
    $this->num_mesa = $num_mesa;
    $this->cod_empleado = $cod_empleado;
}


public function getCod_ticket()
{
return $this->cod_ticket;
}


public function setCod_ticket($cod_ticket)
{
$this->cod_ticket = $cod_ticket;

return $this;
}


public function getHora()
{
return $this->hora;
}


public function setHora($hora)
{
$this->hora = $hora;

return $this;
}


public function getFecha()
{
return $this->fecha;
}


public function setFecha($fecha)
{
$this->fecha = $fecha;

return $this;
}


public function getNum_mesa()
{
return $this->num_mesa;
}


public function setNum_mesa($num_mesa)
{
$this->num_mesa = $num_mesa;

return $this;
}


public function getCod_empleado()
{
return $this->cod_empleado;
}


public function setCod_empleado($cod_empleado)
{
$this->cod_empleado = $cod_empleado;

return $this;
}
}