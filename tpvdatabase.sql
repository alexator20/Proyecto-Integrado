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
    hora VARCHAR(20) NOT NULL, 
    fecha DATE NOT NULL,
    num_mesa VARCHAR(20) NOT NULL,
    cod_empleado INT,
    estado INT,
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

# OFERTAS Y COMBOS

INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ( 'Tostada + cafe/zumo',2.50,"Combos","tostadacafe.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ( 'Curasan + cafe/zumo',2.50,"Combos","curasancafe.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ( 'Tostada Especial + cafe/zumo',2.50,"Combos","tostadaespecial.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ( 'Tostada + cafe + zumo',3.50,"Combos","tostadacafezumo.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ( 'Gofre/Creppe + Cafe',3.50,"Combos","gofre.jpg");

# CAFES E INFUSIONES

INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cafe solo', 1.20, "Cafes","cafe.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cortado', 1.30, "Cafes","cortado.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Americano', 1.40, "Cafes","americano.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Bombon', 1.50, "Cafes","bombon.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cafe con leche', 1.60, "Cafes","cafeleche.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Carajillo Marie brizard,terry, negrita', 1.60, "Cafes","carajillomarie.jpg");
INSERT INTO producto (nombre, precio,categoria,imagen) VALUES ( 'MANZANILLA PIRAMIDE ',1.60,"Cafes","manzanillapiramide.jpg");
INSERT INTO producto (nombre, precio,categoria,imagen) VALUES ( 'MENTA-POLEO PIRAMIDE  ',1.60,"Cafes","mentapiramide.jpg");
INSERT INTO producto (nombre, precio,categoria,imagen) VALUES ( 'TE VERDE GUNPOWDER  ',1.60,"Cafes","teverdegunpowder.jpg");

# CERVEZAS

INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cruzcampo (Cana)', 1.40,"Cervezas", "cana.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cruzcampo (Doble)', 1.90,"Cervezas","doble.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Alhambra Verde', 2.90,"Cervezas", "Alhambraverde.png");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('San Miguel', 1.80,"Cervezas", "sanmiguel.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('San Miguel 0,0', 2.00,"Cervezas", "sanmiguel00.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Radler Cruzcampo', 2.00,"Cervezas", "radler.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Estrella Galicia', 2.00,"Cervezas", "galicia.png");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Heineken 0,0', 2.00,"Cervezas", "heineken00.png");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Turia', 2.00,"Cervezas", "turia.jpg");

# REFRESCOS

INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cocacola', 2.00,"Refrescos", "cola.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cocacola Zero', 2.00,"Refrescos", "colazero.png");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Cocacola Zero Zero', 2.00,"Refrescos", "colazerozero.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Acuarius Naranja', 2.00,"Refrescos", "acuariusnaranja.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Acuarius Limon', 2.00,"Refrescos", "acuariuslimon.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Fanta Naranja', 2.00,"Refrescos", "fantalimon.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Fanta Limon', 2.00,"Refrescos", "fantanaranja.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Trina de Naranja', 2.00,"Refrescos", "trinanaranja.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Tonica Schweppes', 2.00,"Refrescos", "tonica.png");

#LICORES

INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Cazalla Tenis', 1.10, "Licores","cazalla.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Barrejat (cazalla y mistela)', 1.20, "Licores","barrejat.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Chupito Licor de hierbas, Arroz o Negrita', 1.30, "Licores","licorhierbas.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Chupito de Cutty Shark o J&B', 1.70, "Licores","cuttyshark.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Chupito de Jack D. o Johnnie W. Red Label', 2.50, "Licores","chupitojack.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Copa de Terry o Ron Negrita', 1.70, "Licores","copaterry.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Copa Pacharán Zoco o Ponche Caballero', 1.70, "Licores","copapacharan.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Copa Licor de Hierbas o Licor de Arroz', 1.70, "Licores","copalicorhierbas.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ( 'Copa Cutty, J&B o Bourbon Four Roses', 2.80, "Licores","copajyb.jpg");


# BOLLERIA 

INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Curasan Mini', 0.60, "Bolleria","curasanmini.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Curasan Mini Choco', 0.60, "Bolleria","minichoco.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Curasan Grande', 1.50, "Bolleria","curasangrande.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Napolitana York Queso', 1.60, "Bolleria","napolitanayork.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Napolitana Chocolate', 1.60, "Bolleria","napolitanachocolate.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Pisto', 1.60, "Bolleria","pisto.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Magdalena', 1.00, "Bolleria","magdalena.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Enseimada', 1.00, "Bolleria","enseimada.jpg");
INSERT INTO producto (nombre,precio,categoria,imagen) VALUES ('Rosquilletas', 1.20, "Bolleria","rosquilletas.jpg");

#TOSTADAS

INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ('Tostada Aceite',2.50,"Tostadas","tostadaaceite.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ('Tostada Mantequilla',2.50,"Tostadas","tostadamantequilla.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ('Tostada Tomate',2.50,"Tostadas","tostadatomate.png");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ('Tostada Tomate y Queso Fresco',3.50,"Tostadas","tostadatomatequeso.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ('Tostada Tomate y Jamon',3.50,"Tostadas","tostadajamon.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ('Tostada Sobrasada y Queso',3.50,"Tostadas","tostadasobrasada.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ('Tostada de Pavo',3.50,"Tostadas","tostadapavo.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ('Tostada Atun Olivas',3.50,"Tostadas","photo5.jpg");

#BOCADILLOS

INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ('Tortilla de Patata',4.00,"Bocadillos","tortillapatata.jpeg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ('Revuelto del Huerto (Champinon con Ajos Tiernos)',4.00,"Bocadillos","NULL");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ('Sobrasada con Queso y cebolla Caramelizada',4.00,"Bocadillos","sobrasada con queso y cebolla.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ('Jamon con Tomate',4.00,"Bocadillos","NULL");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ('Francesa con Jamon',4.00,"Bocadillos","NULL");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ('Francesa con Sobrasada',4.00,"Bocadillos","francesa con sobrasada.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ('Atun con Olivas',4.00,"Bocadillos","atunconolivas.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ('Pechuga y Queso',4.00,"Bocadillos","pechuga y queso.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ('Chistorra con patatas y huevo',4.50,"Bocadillos","chistorrapatata.jpg");

#TAPAS 

INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ( 'Pincho de Tortilla',3.50,"Tapas","pinchotortilla.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ( 'Habas Picantonas',3.50,"Tapas","habas.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ( 'Mollejitas Morunas',3.50,"Tapas","mollejas.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ( 'Esgarraet o Ajoarriero',3.50,"Tapas","esgarraet.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ( 'Bravas',3.50,"Tapas","bravas.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ( 'Morro',3.50,"Tapas","morro.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ( 'Oreja Adobada',3.50,"Tapas","orejacerdo.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ( 'Ensaladilla Rusa',3.50,"Tapas","ensaladillarusa.jpg");
INSERT INTO producto ( nombre, precio,categoria,imagen) VALUES ( 'Albondigas de "La abuela"',3.50,"Tapas","albondigas.jpg");



# Empleados

INSERT INTO empleado ( nombre, apellidos,contrasenya,root,correo,direccion,foto) VALUES ( 'David','Chirivella',123456,TRUE,"Dechiri224@hotmail.com","Avd Rambleta,11",'chirivella.jpg');
INSERT INTO empleado ( nombre, apellidos,contrasenya,root,correo,direccion,foto) VALUES ( 'Andres','Alguacil',654321,FALSE,"LilBokeron88@gmail.com","Plaza Espana,15",'andres.jpg');
INSERT INTO empleado ( nombre, apellidos,contrasenya,root,correo,direccion,foto) VALUES ( 'Pepe','Gutierrez',774321,FALSE,"pepepalomo@gmail.com","Carrer Colom 20",'pepe.jpg');
INSERT INTO empleado ( nombre, apellidos,contrasenya,root,correo,direccion,foto) VALUES ( 'Emilio','Herrera',664321,FALSE,"Emiliogherra@gmail.com","San vicente 24",'emilio.jpg');
