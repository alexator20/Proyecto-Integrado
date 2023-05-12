DROP DATABASE IF EXISTS tpvdatabase;
CREATE DATABASE tpvdatabase;
use tpvdatabase;

CREATE TABLE producto (
    cod_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre CHAR(20) NOT NULL,
    precio FLOAT (10,2) NOT NULL,
    categoria CHAR(50) NOT NULL,
    imagen varchar(50) NOT NULL
);

CREATE TABLE empleado (
    cod_empleado INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombre CHAR(20) NOT NULL,
    apellidos CHAR(20) NOT NULL,
    root BOOL NOT NULL,
    correo CHAR(255) NOT NULL,
    direccion CHAR(40),
    contrasenya CHAR(20) NOT NULL,
    foto VARCHAR(9999)
);

CREATE TABLE ticket(
    cod_ticket INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    hora INT NOT NULL, 
    fecha DATE NOT NULL,
    num_mesa INT NOT NULL,
    cod_empleado INT,
    FOREIGN KEY (cod_empleado) REFERENCES empleado(cod_empleado)
);

CREATE TABLE producto_servido (
	cantidad INT NOT NULL,
	cod_producto INT NOT NULL,
    cod_ticket INT NOT NULL,
    PRIMARY KEY (cod_producto,cod_ticket),
    FOREIGN KEY (cod_producto) REFERENCES producto(cod_producto),
    FOREIGN KEY (cod_ticket) REFERENCES ticket(cod_ticket)
);

# Productos - "Cafes"

INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Café solo', 1.20, "Cafes","cafe.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cortado', 1.30, "Cafes","cortado.jpeg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Americano', 1.40, "Cafes","americano.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Bombon', 1.50, "Cafes","bombon.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Café con leche', 1.60, "Cafes","cafeleche.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Carajillo Marie brizard,terry, negrita', 1.60, "Cafes","carajillomarie.jpeg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Carajillo de Cutty Sark,JB,Baileys', 1.80, "Cafes","carajillocutty.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cremaet', 2.00, "Cafes","cremaet.png");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Capuchino', 2.00, "Cafes","capuchino.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cola Cao', 1.60, "Cafes","colacao.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Té Natural', 1.50, "Cafes","tenatural.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Chocolate a la taza', 2.00, "Cafes","chocolate.jpg");

# Productos - "Licores"

INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Cazalla Tenis', 1.10, "Licores","cazalla.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Barrejat (cazalla y mistela)', 1.20, "Licores","barrejat.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Chupito Licor de hierbas, Arroz ó Negrita', 1.30, "Licores","licorhierbas.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Chupito de Cutty Shark ó J&B', 1.70, "Licores","cuttyshark.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Chupito de Jack D. ó Johnnie W. Red Label', 2.50, "Licores","redlabel.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Copa de Terry ó Ron Negrita', 1.70, "Licores","copaterry.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Copa Pacharán Zoco ó Ponche Caballero', 1.70, "Licores","copapacharan.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Copa Licor de Hierbas o Licor de Arroz', 1.70, "Licores","copalicorhierbas.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Copa Cutty, J&B Ó Bourbon Four Roses', 2.80, "Licores","copacutty.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Copa de Baileys, Tia Maria ó Frangelico', 2.80, "Licores","copabaileys.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Copa de Martini Blanco o Rosso', 2.80, "Licores","copamartini.png");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Gin Tonic o Cubata', 5.50, "Licores","gintonic.jpg");

# Productos - "Bebidas"

INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Agua Fontvella 50cl', 1.20, "fontvellapequena.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Agua Fontvella 1,5L', 1.60, "fontvellagrande.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Agua con Gas Malavella', 1.70, "aguagas.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Zumo de Naranja Nat Peq', 1.70, "naranjapequena.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Zumo de Naranja Nat Max', 2.20, "naranjagrande.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Zumo Granini Piña', 1.90, "zumopina.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Zumo Granini Melocoton', 1.90, "zumomelocoton.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cholec Vainilla', 1.90, "cholecvainilla.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cholec Chocolate', 1.90, "cholecchoco.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cocacola', 2.00, "cola.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cocacola Zero', 2.00, "cocazero.png");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cocacola Zero Zero', 2.00, "cocazerozero.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Acuarius Naranja', 2.00, "acuariusnaranja.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Acuarius Limon', 2.00, "acuariuslimon.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Fanta Naranja', 2.00, "fantalimon.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Fanta Limon', 2.00, "fantanaranja.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Trina de Naranja', 2.00, "trinanaranja.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Tonica Schweppes', 2.00, "tonica.png");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Bitter Kas', 2.00, "kas.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Tinto La Casera', 2.00, "lacasera.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Bote Refrescos', 1.20, "refrescos.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Copa Vino "De la casa"', 1.50, "vinocasa.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Copa de vino "Selección"', 2.50, "vinoseleccion.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cruzcampo (Caña)', 1.40, "cana.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cruzcampo (Doble)', 1.90, "doble.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cruzcampo (Tanque)', 2.90, "tanque.png");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('San Miguel', 1.80, "sanmiguel.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('San Miguel 0,0', 2.00, "sanmiguel00.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Radler Cruzcampo', 2.00, "radler.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Estrella Galicia', 2.00, "galicia.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Heineken 0,0', 2.00, "heineken00.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Turia', 2.00, "turia.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Alambra Reserva 1925', 2.20, "alambrareserva.jpg");


#Productos
#"Bocadillos"
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Tortilla de Patata',4.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Tortilla de Patata',5.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Revuelto del Huerto (Champiñon con Ajos Tiernos)',4.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Revuelto del Huerto (Champiñon con Ajos Tiernos)',5.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Sobrasada con Queso y cebolla Caramelizada',4.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Sobrasada con Queso y cebolla Caramelizada',5.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Jamon con Tomate',4.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Jamon con Tomate',5.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Francesa con Jamon',4.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Francesa con Jamon',5.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Francesa con Sobrasada',4.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Francesa con Sobrasada',5.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Atun con Olivas',4.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Atun con Olivas',5.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Esgarraet',4.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Esgarraet',5.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Chistorra con patatas y huevo',4.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Chistorra con patatas y huevo',5.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Jamon Y Queso con Tomate',4.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Jamon Y Queso con Tomate',5.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Queso Fresco, Anchoas y Tomate',4.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Queso Fresco, Anchoas y Tomate',5.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Albondigas de "La abuela"',4.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Albondigas de "La abuela"',5.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Tortilla de Atún y Queso',4.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Tortilla de Atún y Queso',5.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Pechuga con Pimientos',4.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Pechuga con Pimientos',5.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Francesa con Embutido',4.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Francesa con Embutido',5.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Bacon o Lomo con Queso',4.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Bacon o Lomo con Queso',5.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Vegetal',4.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Vegetal',5.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Habitas y Ajitos con Embutido',5.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Habitas y Ajitos con Embutido',6.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Chivito',5.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Chivito',6.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Brascada',5.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Brascada',6.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Calamares o Chipirones',5.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Calamares o Chipirones',7.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Peq_Carrillada "La Vaquita"',5.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Gran_Carrillada "La Vaquita"',7.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Peq_Carne de Caballo con Ajitos Tiernos',5.50,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Gran_Carne de Caballo con Ajitos Tiernos',7.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Peq_Sandwich de York y Queso',3.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Gran_Sandwich de Sobrasada y Queso',3.00,"Bocadillos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Peq_Sandwich Vegetal',3.50,"Bocadillos");
#"Tapas"
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Pincho de Tortilla',3.50,"Tapas");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Habas Picantonas',3.50,"Tapas");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Mollejitas Morunas',3.50,"Tapas");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Esgarraet o Ajoarriero',3.50,"Tapas");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Bravas',3.50,"Tapas");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Morro',3.50,"Tapas");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Oreja Adobada',3.50,"Tapas");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Ensaladilla Rusa',3.50,"Tapas");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Albondigas de "La abuela"',3.50,"Tapas");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Croquetas Variadas 6u',3.50,"Tapas");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Mejillones o Tellinas',3.50,"Tapas");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Calamares o Chipirones',3.50,"Tapas");
#"Montaditos"
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Tortilla de Patata con Jamon',1.20,"Montaditos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Ajo Arriero o Atun con Tomate',1.30,"Montaditos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Esgarraet o Sobrasada con Queso',1.40,"Montaditos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Tomate, Queso Fresco y Anchoas',1.60,"Montaditos");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'Mojama con Philadelphia',1.80,"Montaditos");


#"Bocadillos" Combo

INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Tortilla de Patata',4.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Tortilla de Patata',5.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Revuelto del Huerto (Champiñon con Ajos Tiernos)',4.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Revuelto del Huerto (Champiñon con Ajos Tiernos)',5.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Sobrasada con Queso y cebolla Caramelizada',4.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Sobrasada con Queso y cebolla Caramelizada',5.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Jamon con Tomate',4.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Jamon con Tomate',5.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Francesa con Jamon',4.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Francesa con Jamon',5.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Francesa con Sobrasada',4.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Francesa con Sobrasada',5.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Atun con Olivas',4.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Atun con Olivas',5.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Esgarraet',4.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Esgarraet',5.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Chistorra con patatas y huevo',5.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Chistorra con patatas y huevo',6.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Jamon Y Queso con Tomate',5.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Jamon Y Queso con Tomate',6.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Queso Fresco, Anchoas y Tomate',5.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Queso Fresco, Anchoas y Tomate',6.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Albondigas de "La abuela"',5.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Albondigas de "La abuela"',6.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Tortilla de Atún y Queso',5.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Tortilla de Atún y Queso',6.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Pechuga con Pimientos',5.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Pechuga con Pimientos',6.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Francesa con Embutido',5.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Francesa con Embutido',6.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Bacon o Lomo con Queso',5.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Bacon o Lomo con Queso',6.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Vegetal',5.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Vegetal',6.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Habitas y Ajitos con Embutido',6.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Habitas y Ajitos con Embutido',7.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Chivito',6.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Chivito',7.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Brascada',6.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Brascada',6.00,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Calamares o Chipirones',6.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Calamares o Chipirones',7.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Carrillada "La Vaquita"',6.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Carrillada "La Vaquita"',7.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Peq_Carne de Caballo con Ajitos Tiernos',6.50,"BocadillosCombo");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ('Gran_Carne de Caballo con Ajitos Tiernos',7.50,"BocadillosCombo");

# Infusiones

INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'MANZANILLA PIRAMIDE',1.60,"Cafes","manzanillapiramide.jpg");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'MENTA-POLEO PIRAMIDE',1.60,"Cafes","mentapiramicd");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'TE VERDE GUNPOWDER',1.60,"Cafes","teverdegunpowder.jpg");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'TE VERDE MORUNO PIRAMIDE',1.60,"Cafes","teverdemoruno.jpg");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'TE VERDE JENGIBRE LIMON',1.60,"Cafes","teverdejengibre.jpg");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'TE VERDE FRESAS NATA',1.60,"Cafes","teverdefresasnata.jpg");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'TE ROJO YUNNAN',1.60,"Cafes","terojo.jpg");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'TE NEGRO EARL GREY',1.60,"Cafes","tenegroearlgrey.jpg");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'TE NEGRO CANELA',1.60,"Cafes","tenegrocanela.jpg");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'TE NEGRO SUEÑOS DE SENA ',1.60,"Cafes","tenegrosena.jpg");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'TE BLANCO',1.60,"Cafes","teblanco.jpg");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'TE AZUL',1.60,"Cafes","teazul.jpg");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'TE FRUTAS DEL BOSQUE',1.60,"Cafes","tefrutasbosque.jpg");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'TE MARACUYA CON NARANJA',1.60,"Cafes","temaracuya.jpg");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'TE ROOIBOS TIRAMISU',1.60,"Cafes","terooibostiramisu.jpg");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'TE ROIBOS CLASICO',1.60,"Cafes","terooibosclasico.jpg");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'TE CAFÉ VERDE INFUSION',1.60,"Cafes","tecafeverde.jpg");
INSERT INTO `producto` ( `nombre`, `precio`,`categoria`,`imagen`) VALUES ( 'TE INFUSION CEREZA',1.60,"Cafes","tecereza.jpg");

# Empleados

INSERT INTO `empleado` ( `nombre`, `apellidos`,`contrasenya`,`root`,`correo`,`direccion`,`foto`) VALUES ( 'David','Chirivella',123456,TRUE,"Dechiri224@hotmail.com","Avd Rambleta,11",'chirivella.jpg');
INSERT INTO `empleado` ( `nombre`, `apellidos`,`contrasenya`,`root`,`correo`,`direccion`,`foto`) VALUES ( 'Andrés','Alguacil',654321,FALSE,"LilBokeron88@gmail.com","Plaza España,15",'andres.jpg');
