DROP DATABASE IF EXISTS tpvdatabase;
CREATE DATABASE tpvdatabase;
use tpvdatabase;

CREATE TABLE producto (
    cod_producto INT PRIMARY KEY,
    nombre CHAR(20) NOT NULL,
    precio FLOAT (10,2) NOT NULL,
    categoria CHAR(255) NOT NULL
);

CREATE TABLE empleado (
    cod_empleado INT PRIMARY KEY NOT NULL,
    nombre CHAR(20) NOT NULL,
    apellidos CHAR(20) NOT NULL,
    root BOOL NOT NULL,
    correo CHAR(255) NOT NULL,
    direccion CHAR(40),
    contrasenya CHAR(20) NOT NULL,
    foto VARCHAR(9999)
);

CREATE TABLE ticket(
    cod_ticket INT PRIMARY KEY NOT NULL,
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

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (1, 'Café solo', 1.20, "Cafes");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (2, 'Cortado', 1.30, "Cafes");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (3, 'Americano', 1.40, "Cafes");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (4, 'Bombon', 1.50, "Cafes");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (5, 'Café con leche', 1.60, "Cafes");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (6, 'Carajillo Marie brizard,terry, negrita', 1.60, "Cafes");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (7, 'Carajillo de Cutty Sark,JB,Baileys', 1.80, "Cafes");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (8, 'Cremaet', 2.00, "Cafes");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (9, 'Capuchino', 2.00, "Cafes");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (10, 'Cola Cao', 1.60, "Cafes");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (11, 'Té Natural', 1.50, "Cafes");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (12, 'Chocolate a la taza', 2.00, "Cafes");

# Productos - "Licores"

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (13, 'Cazalla Tenis', 1.10, "Licores");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (14, 'Barrejat (cazalla y mistela)', 1.20, "Licores");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (15, 'Chupito Licor de hierbas, Arroz ó Negrita', 1.30, "Licores");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (16, 'Chupito de Cutty Shark ó J&B', 1.70, "Licores");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (17, 'Chupito de Jack D. ó Johnnie W. Red Label', 2.50, "Licores");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (18, 'Copa de Terry ó Ron Negrita', 1.70, "Licores");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (19, 'Copa Pacharán Zoco ó Ponche Caballero', 1.70, "Licores");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (20, 'Copa Licor de Hierbas o Licor de Arroz', 1.70, "Licores");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (21, 'Copa Cutty, J&B Ó Bourbon Four Roses', 2.80, "Licores");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (22, 'Copa de Baileys, Tia Maria ó Frangelico', 2.80, "Licores");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (23, 'Copa de Martini Blanco o Rosso', 2.80, "Licores");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (24, 'Gin Tonic o Cubata', 5.50, "Licores");

# Productos - "Bebidas"

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (25,'Agua Fontvella 50cl', 1.20, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (26,'Agua Fontvella 1,5L', 1.60, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (27,'Agua con Gas Malavella', 1.70, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (28,'Zumo de Naranja Nat Peq', 1.70, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (29,'Zumo de Naranja Nat Max', 2.20, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (30,'Zumo Granini Piña', 1.90, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (31,'Zumo Granini Melocoton', 1.90, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (32,'Cholec Vainilla', 1.90, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (33,'Cholec Chocolate', 1.90, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (34,'Cocacola', 2.00, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (35,'Cocacola Zero', 2.00, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (36,'Cocacola Zero Zero', 2.00, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (37,'Acuarius Naranja', 2.00, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (38,'Acuarius Limon', 2.00, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (39,'Fanta Naranja', 2.00, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (40,'Fanta Limon', 2.00, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (41,'Trina de Naranja', 2.00, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (42,'Tonica Schweppes', 2.00, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (43,'Bitter Kas', 2.00, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (44,'Tinto La Casera', 2.00, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (45,'Bote Refrescos', 1.20, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (46,'Copa Vino "De la casa"', 1.50, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (47,'Copa de vino "Selección"', 2.50, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (48,'Cruzcampo (Caña)', 1.40, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (49,'Cruzcampo (Doble)', 1.90, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (50,'Cruzcampo (Tanque)', 2.90, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (51,'San Miguel', 1.80, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (52,'San Miguel 0,0', 2.00, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (53,'Radler Cruzcampo', 2.00, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (54,'Estrella Galicia', 2.00, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (55,'Heineken 0,0', 2.00, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (56,'Turia', 2.00, "Bebidas");
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (57,'Alambra Reserva 1925', 2.20, "Bebidas");


#Productos
#"Bocadillos"
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (58, 'Peq_Tortilla de Patata',4.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (59, 'Gran_Tortilla de Patata',5.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (60, 'Peq_Revuelto del Huerto (Champiñon con Ajos Tiernos)',4.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (61, 'Gran_Revuelto del Huerto (Champiñon con Ajos Tiernos)',5.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (62, 'Peq_Sobrasada con Queso y cebolla Caramelizada',4.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (63, 'Gran_Sobrasada con Queso y cebolla Caramelizada',5.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (64, 'Peq_Jamon con Tomate',4.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (65, 'Gran_Jamon con Tomate',5.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (66, 'Peq_Francesa con Jamon',4.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (67, 'Gran_Francesa con Jamon',5.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (68, 'Peq_Francesa con Sobrasada',4.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (69, 'Gran_Francesa con Sobrasada',5.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (70, 'Peq_Atun con Olivas',4.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (71, 'Gran_Atun con Olivas',5.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (72, 'Peq_Esgarraet',4.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (73, 'Gran_Esgarraet',5.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (74, 'Peq_Chistorra con patatas y huevo',4.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (75, 'Gran_Chistorra con patatas y huevo',5.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (76, 'Peq_Jamon Y Queso con Tomate',4.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (77, 'Gran_Jamon Y Queso con Tomate',5.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (78, 'Peq_Queso Fresco, Anchoas y Tomate',4.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (79, 'Gran_Queso Fresco, Anchoas y Tomate',5.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (80, 'Peq_Albondigas de "La abuela"',4.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (81, 'Gran_Albondigas de "La abuela"',5.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (82, 'Peq_Tortilla de Atún y Queso',4.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (83, 'Gran_Tortilla de Atún y Queso',5.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (84, 'Peq_Pechuga con Pimientos',4.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (85, 'Gran_Pechuga con Pimientos',5.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (86, 'Peq_Francesa con Embutido',4.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (87, 'Gran_Francesa con Embutido',5.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (88, 'Peq_Bacon o Lomo con Queso',4.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (89, 'Gran_Bacon o Lomo con Queso',5.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (90, 'Peq_Vegetal',4.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (91, 'Gran_Vegetal',5.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (92, 'Peq_Habitas y Ajitos con Embutido',5.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (93, 'Gran_Habitas y Ajitos con Embutido',6.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (94, 'Peq_Chivito',5.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (95, 'Gran_Chivito',6.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (96, 'Peq_Brascada',5.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (97, 'Gran_Brascada',6.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (98, 'Peq_Calamares o Chipirones',5.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (99, 'Gran_Calamares o Chipirones',7.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (100, 'Peq_Carrillada "La Vaquita"',5.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (101, 'Gran_Carrillada "La Vaquita"',7.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (102, 'Peq_Carne de Caballo con Ajitos Tiernos',5.50,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (103, 'Gran_Carne de Caballo con Ajitos Tiernos',7.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (104, 'Peq_Sandwich de York y Queso',3.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (105, 'Gran_Sandwich de Sobrasada y Queso',3.00,"Bocadillos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (106, 'Peq_Sandwich Vegetal',3.50,"Bocadillos");
#"Tapas"
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (107, 'Pincho de Tortilla',3.50,"Tapas");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (108, 'Habas Picantonas',3.50,"Tapas");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (109, 'Mollejitas Morunas',3.50,"Tapas");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (110, 'Esgarraet o Ajoarriero',3.50,"Tapas");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (111, 'Bravas',3.50,"Tapas");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (112, 'Morro',3.50,"Tapas");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (113, 'Oreja Adobada',3.50,"Tapas");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (114, 'Ensaladilla Rusa',3.50,"Tapas");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (115, 'Albondigas de "La abuela"',3.50,"Tapas");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (116, 'Croquetas Variadas 6u',3.50,"Tapas");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (117, 'Mejillones o Tellinas',3.50,"Tapas");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (118, 'Calamares o Chipirones',3.50,"Tapas");
#"Montaditos"
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (119, 'Tortilla de Patata con Jamon',1.20,"Montaditos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (120, 'Ajo Arriero o Atun con Tomate',1.30,"Montaditos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (121, 'Esgarraet o Sobrasada con Queso',1.40,"Montaditos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (122, 'Tomate, Queso Fresco y Anchoas',1.60,"Montaditos");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (123, 'Mojama con Philadelphia',1.80,"Montaditos");


#"Bocadillos" Combo

INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (135, 'Peq_Tortilla de Patata',4.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (136, 'Gran_Tortilla de Patata',5.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (137, 'Peq_Revuelto del Huerto (Champiñon con Ajos Tiernos)',4.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (138, 'Gran_Revuelto del Huerto (Champiñon con Ajos Tiernos)',5.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (139, 'Peq_Sobrasada con Queso y cebolla Caramelizada',4.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (140, 'Gran_Sobrasada con Queso y cebolla Caramelizada',5.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (141, 'Peq_Jamon con Tomate',4.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (142, 'Gran_Jamon con Tomate',5.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (143, 'Peq_Francesa con Jamon',4.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (144, 'Gran_Francesa con Jamon',5.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (145, 'Peq_Francesa con Sobrasada',4.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (146, 'Gran_Francesa con Sobrasada',5.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (147, 'Peq_Atun con Olivas',4.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (148, 'Gran_Atun con Olivas',5.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (149, 'Peq_Esgarraet',4.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (150, 'Gran_Esgarraet',5.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (151, 'Peq_Chistorra con patatas y huevo',5.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (152, 'Gran_Chistorra con patatas y huevo',6.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (153, 'Peq_Jamon Y Queso con Tomate',5.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (154, 'Gran_Jamon Y Queso con Tomate',6.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (155, 'Peq_Queso Fresco, Anchoas y Tomate',5.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (156, 'Gran_Queso Fresco, Anchoas y Tomate',6.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (157, 'Peq_Albondigas de "La abuela"',5.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (158, 'Gran_Albondigas de "La abuela"',6.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (159, 'Peq_Tortilla de Atún y Queso',5.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (160, 'Gran_Tortilla de Atún y Queso',6.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (161, 'Peq_Pechuga con Pimientos',5.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (162, 'Gran_Pechuga con Pimientos',6.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (163, 'Peq_Francesa con Embutido',5.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (164, 'Gran_Francesa con Embutido',6.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (165, 'Peq_Bacon o Lomo con Queso',5.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (166, 'Gran_Bacon o Lomo con Queso',6.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (167, 'Peq_Vegetal',5.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (168, 'Gran_Vegetal',6.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (169, 'Peq_Habitas y Ajitos con Embutido',6.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (170, 'Gran_Habitas y Ajitos con Embutido',7.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (171, 'Peq_Chivito',6.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (172, 'Gran_Chivito',7.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (173, 'Peq_Brascada',6.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (174, 'Gran_Brascada',6.00,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (175, 'Peq_Calamares o Chipirones',6.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (176, 'Gran_Calamares o Chipirones',7.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (177, 'Peq_Carrillada "La Vaquita"',6.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (178, 'Gran_Carrillada "La Vaquita"',7.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (179, 'Peq_Carne de Caballo con Ajitos Tiernos',6.50,"BocadillosCombo");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (180, 'Gran_Carne de Caballo con Ajitos Tiernos',7.50,"BocadillosCombo");

# Infusiones

INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (181, 'MANZANILLA PIRAMIDE ',1.60,"Infusiones");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (182, 'MENTA-POLEO PIRAMIDE  ',1.60,"Infusiones");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (183, 'TE VERDE GUNPOWDER  ',1.60,"Infusiones");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (184, 'TE VERDE MORUNO PIRAMIDE ',1.60,"Infusiones");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (185, 'TE VERDE JENGIBRE LIMON  ',1.60,"Infusiones");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (186, 'TE VERDE FRESAS NATA  ',1.60,"Infusiones");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (187, 'TE ROJO YUNNAN  ',1.60,"Infusiones");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (188, 'TE NEGRO EARL GREY  ',1.60,"Infusiones");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (189, 'TE NEGRO CANELA  ',1.60,"Infusiones");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (190, 'TE NEGRO SUEÑOS DE SENA ',1.60,"Infusiones");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (191, 'TE BLANCO  ',1.60,"Infusiones");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (192, 'TE AZUL  ',1.60,"Infusiones");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (193, 'TE FRUTAS DEL BOSQUE   ',1.60,"Infusiones");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (194, 'TE MARACUYA CON NARANJA   ',1.60,"Infusiones");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (195, 'TE ROOIBOS TIRAMISU   ',1.60,"Infusiones");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (196, 'TE ROIBOS CLASICO  ',1.60,"Infusiones");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (197, 'TE CAFÉ VERDE INFUSION   ',1.60,"Infusiones");
INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`,`categoria`) VALUES (198, 'TE INFUSION CEREZA ',1.60,"Infusiones");

# Empleados

INSERT INTO `empleado` (`cod_empleado`, `nombre`, `apellidos`,`contrasenya`,`root`,`correo`,`direccion`,`foto`) VALUES (1, 'Homero','Chino',123456,TRUE,"HomeroChino42@hotmail.com","Avd Rambleta,11",'https://files.liveworksheets.com/def_files/2022/5/20/205201759393906516/205201759393906516001.jpg');
INSERT INTO `empleado` (`cod_empleado`, `nombre`, `apellidos`,`contrasenya`,`root`,`correo`,`direccion`,`foto`) VALUES (2, 'Andrés','Alguacil',654321,FALSE,"LilBokeron88@gmail.com","Plaza España,15",'https://pbs.twimg.com/media/EHXWE-HWwAA4PN4.jpg');