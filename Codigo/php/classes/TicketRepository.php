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
            $result[] = new Ticket($row['cod_ticket'], $row['hora'], $row['fecha'], $row['num_mesa'], $row['cod_empleado']);
        }
        return $result;
    }



    public function drawTickets(array $list): string
    {
        $output = "";
        foreach ($list as $detalles) {
            $cod_ticket = is_null($detalles->getCod_ticket()) ? "Unknown" : $detalles->getHora();
            $hora = is_null($detalles->getHora()) ? "-.--" : $detalles->getHora();
            $fecha = is_null($detalles->getFecha()) ? "-.--" : ($detalles->getfecha());
            $output .= "<tr>";
            $output .= "    <td><strong>" . $detalles->get() . "</strong>, " . $hora . "<br>" . $fecha . ".</td>";
            $output .= "</tr>";
        }
        return $output;
    }

    public function insertTicket(string $mesa): Ticket
    {
        $stmt = $this->conn->prepare("INSERT INTO ticket (hora,fecha, num_mesa) VALUES (:hora, :fecha, :num_mesa)");
        $fecha = date("Y-m-d");
        $hora = date("H:i");
        $stmt->bindParam(':fecha', $fecha);
        $stmt->bindParam(':num_mesa', $mesa);
        $stmt->bindParam(':hora', $hora);
        $stmt->execute();

        $ticketId = $this->conn->lastInsertId();  // Obtener el ID del ticket insertado

        // Crear un nuevo objeto ticket con los datos necesarios y devolverlo
        $ticket = new Ticket($ticketId, $hora, $fecha, $mesa, 1);
        return $ticket;
    }
}
