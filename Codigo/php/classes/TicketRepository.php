<?php
class TicketRepository extends Connection
{

    public function __construct()
    {
        $this->connect();
    }


    public function getTicket(int $id): Ticket
    {
        $stmt = $this->conn->query("SELECT * FROM ticket WHERE cod_ticket = $id");
        $row = $stmt->fetch(PDO::FETCH_ASSOC);

        return new Ticket(...$row);
    }


    public function findBy(int $cod_ticket): array
    {
        $result = [];
        $stmt = $this->conn->query("SELECT * FROM ticket WHERE cod_ticket= $cod_ticket");
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $result[] = new Ticket($row['cod_ticket'], $row['hora'], $row['fecha'], $row['num_mesa'], $row['cod_empleado'], $row['estado']);
        }
        return $result;
    }


    public function insertTicket(string $mesa): Ticket
    {
        $stmt = $this->conn->prepare("INSERT INTO ticket (hora,fecha, num_mesa, estado,cod_empleado) VALUES (:hora, :fecha, :num_mesa, :estado, :cod_empleado)");
        $fecha = date("Y-m-d");
        $hora = date("H:i");
        $stmt->bindParam(':fecha', $fecha);
        $stmt->bindParam(':num_mesa', $mesa);
        $stmt->bindParam(':hora', $hora);
        $stmt->bindValue(':estado', 1);
        $stmt->bindValue(':cod_empleado', 1);
        $stmt->execute();

        $ticketId = $this->conn->lastInsertId();  // Obtener el ID del ticket insertado

        // Crear un nuevo objeto ticket con los datos necesarios y devolverlo
        $ticket = new Ticket($ticketId, $hora, $fecha, $mesa, 1, 1);
        return $ticket;
    }

    public function insertPreticket(int $cod_producto, int $cod_ticket)
    {
        $sql = "SELECT cod_producto, cod_ticket FROM producto_servido WHERE cod_producto = $cod_producto AND cod_ticket = $cod_ticket";

        $query = $this->conn->query($sql);

        if ($query->rowCount() == 0) {
            $stmt = $this->conn->prepare("INSERT INTO producto_servido(cod_producto,cod_ticket,cantidad) VALUES (:cod_producto, :cod_ticket, :cantidad)");
            $stmt->bindParam(':cod_producto', $cod_producto);
            $stmt->bindParam(':cod_ticket', $cod_ticket);
            $stmt->bindValue(':cantidad', 1);
            $stmt->execute();
        } else {
            $stmt = $this->conn->query("UPDATE producto_servido SET cantidad = cantidad + 1 WHERE cod_producto = $cod_producto AND cod_ticket = $cod_ticket;");
        }
    }


    public function drawPreticket(int $idTicket):string
    {
        $output = "";
        $sql = "SELECT producto.nombre, producto_servido.cantidad, producto_servido.cod_ticket FROM producto JOIN producto_servido ON producto.cod_producto = producto_servido.cod_producto;";
        $query = $this->conn->query($sql);
        while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
            if ($idTicket == $row["cod_ticket"]) {
                $output .= '<div class="row">';
                $output .= '<div class="col-md-10">' . $row["nombre"] . '</div>';
                $output .= '<div class="col-md-2"> ' . $row["cantidad"] . '</div>';
                $output .= '</div>';
            }
        }
        return $output;
    }

    public function testTicket(string $mesa)
    {
        $sql = "SELECT * FROM ticket WHERE num_mesa = '$mesa' AND estado = 1";
        $result = $this->conn->query($sql);
        return $result;
    }

    public function lastIdTable(string $mesa) {

        $sql = "SELECT MAX(cod_ticket) as cod_ticket FROM ticket WHERE num_mesa = '$mesa'";
        $query = $this->conn->query($sql);
        $row = $query->fetch(PDO::FETCH_ASSOC);
        return $row;
    }


    
    public function drawTicket(int $idTicket):string
    {
        
        $output = "";   
        $total = 0; // Variable para almacenar el total de los precios
        $sql = "SELECT producto.nombre,producto.precio, producto_servido.cantidad, producto_servido.cod_ticket FROM producto JOIN producto_servido ON producto.cod_producto = producto_servido.cod_producto;";
        $query = $this->conn->query($sql);
        while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
            if ($idTicket == $row["cod_ticket"]) {
                $output .= "";
                $output .= "<p>" . $row["nombre"] . " -- " . $row["cantidad"] . $row["precio"]."€". "</p>";
                $subtotal = $row["cantidad"] * $row["precio"];
            $total += $subtotal; // Agrega el subtotal al total
            
            }
            
        } 
        $output .= "<p><strong>Total: " . $total . "€</strong></p>";
        return $output;
       
    }

    public function closeTicket(int $idTicket) {

        $sql = "SELECT estado FROM ticket WHERE cod_ticket = $idTicket";
        $query = $this->conn->query($sql);
        $row = $query->fetch(PDO::FETCH_ASSOC);
        if ($row["estado"] == 1) {
            $sql = "UPDATE ticket SET estado = 0 WHERE cod_ticket = $idTicket";
            $result = $this->conn->query($sql);
        }
    }
}



