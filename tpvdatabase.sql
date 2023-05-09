CREATE DATABASE tpvdatabase;
use tpvdatabase;

CREATE TABLE producto (
    cod_producto INT PRIMARY KEY,
    nombre CHAR(20) NOT NULL,
    precio FLOAT (10,2) NOT NULL,
    categoria CHAR(255) NOT NULL
);

CREATE TABLE ticket(
    cod_ticket INT PRIMARY KEY NOT NULL,
    hora INT NOT NULL, 
    fecha DATE NOT NULL,
    num_mesa INT NOT NULL
);

CREATE TABLE producto_servido (
	cantidad INT NOT NULL,
	cod_producto INT NOT NULL,
    cod_ticket INT NOT NULL,
    PRIMARY KEY (cod_producto,cod_ticket),
    FOREIGN KEY (cod_producto) REFERENCES producto(cod_producto),
    FOREIGN KEY (cod_ticket) REFERENCES ticket(cod_ticket)
);

CREATE TABLE empleado (
    cod_empleado INT PRIMARY KEY NOT NULL,
    nombre CHAR(20) NOT NULL,
    apellidos CHAR(20) NOT NULL,
    contrasenya CHAR(20) NOT NULL,
    root BOOL NOT NULL,
    correo CHAR(255) NOT NULL,
    direccion CHAR(20),
    foto VARCHAR(9999),
	cod_ticket INT NOT NULL,
    FOREIGN KEY (cod_ticket) REFERENCES ticket(cod_ticket)
);

# Productos - Cafes

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (1, 'Café solo', 1.20, Cafes);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (2, 'Cortado', 1.30, Cafes);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (3, 'Americano', 1.40, Cafes);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (4, 'Bombon', 1.50, Cafes);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (5, 'Café con leche', 1.60, Cafes);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (6, 'Carajillo Marie brizard,terry, negrita', 1.60, Cafes);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (7, 'Carajillo de Cutty Sark,JB,Baileys', 1.80, Cafes);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (8, 'Cremaet', 2.00, Cafes);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (9, 'Capuchino', 2.00, Cafes);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (10, 'Cola Cao', 1.60, Cafes);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (11, 'Té Natural', 1.50, Cafes);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (12, 'Chocolate a la taza', 2.00, Cafes);

# Productos - Licores

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (13, 'Cazalla Tenis', 1.10, Licores);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (14, 'Barrejat (cazalla y mistela)', 1.20, Licores);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (15, 'Chupito Licor de hierbas, Arroz ó Negrita', 1.30, Licores);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (16, 'Chupito de Cutty Shark ó J&B', 1.70, Licores);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (17, 'Chupito de Jack D. ó Johnnie W. Red Label', 2.50, Licores);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (18, 'Copa de Terry ó Ron Negrita', 1.70, Licores);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (19, 'Copa Pacharán Zoco ó Ponche Caballero', 1.70, Licores);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (20, 'Copa Licor de Hierbas o Licor de Arroz', 1.70, Licores);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (21, 'Copa Cutty, J&B Ó Bourbon Four Roses', 2.80, Licores);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (22, 'Copa de Baileys, Tia Maria ó Frangelico', 2.80, Licores);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (23, 'Copa de Martini Blanco o Rosso', 2.80, Licores);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (24, 'Gin Tonic o Cubata', 5.50, Licores);

# Productos - Bebidas

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (25,'Agua Fontvella 50cl', 1.20, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (26,'Agua Fontvella 1,5L', 1.60, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (27,'Agua con Gas Malavella', 1.70, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (28,'Zumo de Naranja Nat Peq', 1.70, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (29,'Zumo de Naranja Nat Max', 2.20, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (30,'Zumo Granini Piña', 1.90, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (31,'Zumo Granini Melocoton', 1.90, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (32,'Cholec Vainilla', 1.90, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (33,'Cholec Chocolate', 1.90, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (34,'Cocacola', 2.00, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (35,'Cocacola Zero', 2.00, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (36,'Cocacola Zero Zero', 2.00, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (37,'Acuarius Naranja', 2.00, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (38,'Acuarius Limon', 2.00, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (39,'Fanta Naranja', 2.00, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (40,'Fanta Limon', 2.00, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (41,'Trina de Naranja', 2.00, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (42,'Tonica Schweppes', 2.00, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (43,'Bitter Kas', 2.00, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (44,'Tinto La Casera', 2.00, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (45,'Bote Refrescos', 1.20, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (46,'Copa Vino "De la casa"', 1.50, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (47,'Copa de vino "Selección"', 2.50, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (48,'Cruzcampo (Caña)', 1.40, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (49,'Cruzcampo (Doble)', 1.90, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (50,'Cruzcampo (Tanque)', 2.90, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (51,'San Miguel', 1.80, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (52,'San Miguel 0,0', 2.00, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (53,'Radler Cruzcampo', 2.00, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (54,'Estrella Galicia', 2.00, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (55,'Heineken 0,0', 2.00, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (56,'Turia', 2.00, Bebidas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (57,'Alambra Reserva 1925', 2.20, Bebidas);

#Productos - Bocadillos

INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (58, 'Min_Tortilla de Patata',4.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (59, 'Max_Tortilla de Patata',5.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (60, 'Min_Revuelto del Huerto (Champiñon con Ajos Tiernos)',4.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (61, 'Max_Revuelto del Huerto (Champiñon con Ajos Tiernos)',5.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (62, 'Min_Sobrasada con Queso y cebolla Caramelizada',4.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (63, 'Max_Sobrasada con Queso y cebolla Caramelizada',5.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (64, 'Min_Jamon con Tomate',4.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (65, 'Max_Jamon con Tomate',5.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (66, 'Min_Francesa con Jamon',4.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (67, 'Max_Francesa con Jamon',5.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (68, 'Min_Francesa con Sobrasada',4.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (69, 'Max_Francesa con Sobrasada',5.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (70, 'Min_Atun con Olivas',4.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (71, 'Max_Atun con Olivas',5.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (72, 'Min_Esgarraet',4.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (73, 'Max_Esgarraet',5.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (74, 'Min_Chistorra con patatas y huevo',4.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (75, 'Max_Chistorra con patatas y huevo',5.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (76, 'Min_Jamon Y Queso con Tomate',4.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (77, 'Max_Jamon Y Queso con Tomate',5.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (78, 'Min_Queso Fresco, Anchoas y Tomate',4.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (79, 'Max_Queso Fresco, Anchoas y Tomate',5.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (80, 'Min_Albondigas de "La abuela"',4.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (81, 'Max_Albondigas de "La abuela"',5.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (82, 'Min_Tortilla de Atún y Queso',4.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (83, 'Max_Tortilla de Atún y Queso',5.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (84, 'Min_Pechuga con Pimientos',4.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (85, 'Max_Pechuga con Pimientos',5.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (86, 'Min_Francesa con Embutido',4.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (87, 'Max_Francesa con Embutido',5.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (88, 'Min_Bacon o Lomo con Queso',4.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (89, 'Max_Bacon o Lomo con Queso',5.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (90, 'Min_Vegetal',4.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (91, 'Max_Vegetal',5.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (92, 'Min_Habitas y Ajitos con Embutido',5.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (93, 'Max_Habitas y Ajitos con Embutido',6.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (94, 'Min_Chivito',5.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (95, 'Max_Chivito',6.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (96, 'Min_Brascada',5.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (97, 'Max_Brascada',6.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (98, 'Min_Calamares o Chipirones',5.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (99, 'Max_Calamares o Chipirones',7.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (100, 'Min_Carrillada "La Vaquita"',5.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (101, 'Max_Carrillada "La Vaquita"',7.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (102, 'Min_Carne de Caballo con Ajitos Tiernos',5.50,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (103, 'Max_Carne de Caballo con Ajitos Tiernos',7.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (104, 'Min_Sandwich de York y Queso',3.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (105, 'Max_Sandwich de Sobrasada y Queso',3.00,Bocadillos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (106, 'Min_Sandwich Vegetal',3.50,Bocadillos);

#Productos - Tapas

INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (107, 'Pincho de Tortilla',3.50,Tapas);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (108, 'Habas Picantonas',3.50,Tapas);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (109, 'Mollejitas Morunas',3.50,Tapas);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (110, 'Esgarraet o Ajoarriero',3.50,Tapas);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (111, 'Bravas',3.50,Tapas);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (112, 'Morro',3.50,Tapas);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (113, 'Oreja Adobada',3.50,Tapas);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (114, 'Ensaladilla Rusa',3.50,Tapas);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (115, 'Albondigas de "La abuela"',3.50,Tapas);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (116, 'Croquetas Variadas 6u',3.50,Tapas);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (117, 'Mejillones o Tellinas',3.50,Tapas);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (118, 'Calamares o Chipirones',3.50,Tapas);

#Productos - Montaditos

INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (119, 'Tortilla de Patata con Jamon',1,20,Montaditos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (120, 'Ajo Arriero o Atun con Tomate',1,30,Montaditos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (121, 'Esgarraet o Sobrasada con Queso',1,40,Montaditos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (122, 'Tomate, Queso Fresco y Anchoas',1,60,Montaditos);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (123, 'Mojama con Philadelphia',1,80,Montaditos);

# Ofertas Y combos - Desayunos

# Popular

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (124,'Tostada Aceite + cafe o Zumo Naranja', 2.50, Desayunos);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (125,'Tostada Mantequilla + cafe o Zumo Naranja', 2.50, Desayunos);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (126,'Tostada Tomate + cafe o Zumo Naranja', 2.50, Desayunos);

# Goloso

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (127,'Curasan + cafe o Zumo de naranja', 2.70, Desayunos);

# Especial

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (128,'Tostada Tomate y Queso Fresco + cafe o Zumo Naranja', 3.50, Desayunos);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (129,'Tostada Tomate y Jamon + cafe o Zumo Naranja', 3.50, Desayunos);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (130,'Tostada Sobrasada y Queso + cafe o Zumo Naranja', 3.50, Desayunos);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (131,'Tostada Tomate, Aguacate y Queso Fresco + cafe o Zumo Naranja', 3.50, Desayunos);

# Continental

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (132,'Tostada Popular o Curasán + Café + Zumo de Naranja', 3.50, Desayunos);

# Meriendas

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (133,'Gofre o Crepe de Chocolate + Cafe', 3.50, Meriendas);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (134,'Tarta + Cafe', 3.50, Meriendas);

#Bocadillos Combo

INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (135, 'Min_Tortilla de Patata',4.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (136, 'Max_Tortilla de Patata',5.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (137, 'Min_Revuelto del Huerto (Champiñon con Ajos Tiernos)',4.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (138, 'Max_Revuelto del Huerto (Champiñon con Ajos Tiernos)',5.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (139, 'Min_Sobrasada con Queso y cebolla Caramelizada',4.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (140, 'Max_Sobrasada con Queso y cebolla Caramelizada',5.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (141, 'Min_Jamon con Tomate',4.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (142, 'Max_Jamon con Tomate',5.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (143, 'Min_Francesa con Jamon',4.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (144, 'Max_Francesa con Jamon',5.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (145, 'Min_Francesa con Sobrasada',4.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (146, 'Max_Francesa con Sobrasada',5.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (147, 'Min_Atun con Olivas',4.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (148, 'Max_Atun con Olivas',5.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (149, 'Min_Esgarraet',4.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (150, 'Max_Esgarraet',5.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (151, 'Min_Chistorra con patatas y huevo',5.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (152, 'Max_Chistorra con patatas y huevo',6.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (153, 'Min_Jamon Y Queso con Tomate',5.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (154, 'Max_Jamon Y Queso con Tomate',6.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (155, 'Min_Queso Fresco, Anchoas y Tomate',5.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (156, 'Max_Queso Fresco, Anchoas y Tomate',6.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (157, 'Min_Albondigas de "La abuela"',5.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (158, 'Max_Albondigas de "La abuela"',6.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (159, 'Min_Tortilla de Atún y Queso',5.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (160, 'Max_Tortilla de Atún y Queso',6.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (161, 'Min_Pechuga con Pimientos',5.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (162, 'Max_Pechuga con Pimientos',6.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (163, 'Min_Francesa con Embutido',5.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (164, 'Max_Francesa con Embutido',6.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (165, 'Min_Bacon o Lomo con Queso',5.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (166, 'Max_Bacon o Lomo con Queso',6.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (167, 'Min_Vegetal',5.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (168, 'Max_Vegetal',6.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (169, 'Min_Habitas y Ajitos con Embutido',6.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (170, 'Max_Habitas y Ajitos con Embutido',7.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (171, 'Min_Chivito',6.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (172, 'Max_Chivito',7.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (173, 'Min_Brascada',6.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (174, 'Max_Brascada',6.00,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (175, 'Min_Calamares o Chipirones',6.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (176, 'Max_Calamares o Chipirones',7.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (177, 'Min_Carrillada "La Vaquita"',6.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (178, 'Max_Carrillada "La Vaquita"',7.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (179, 'Min_Carne de Caballo con Ajitos Tiernos',6.50,BocadillosCombo);
INSERT INTO producto (cod_producto, nombre, precio,categoria) VALUES (180, 'Max_Carne de Caballo con Ajitos Tiernos',7.50,BocadillosCombo);

# Bolleria - Curasan

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (181,'Mini', 0.60, Bolleria);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (182,'Mini Choco', 0.60, Bolleria);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (183,'Grande', 1.50, Bolleria);

# Bolleria - Enseimada

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (184,'Enseimada', 0.80, Bolleria);

# Bolleria - Napolitana

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (185,'Napolitana York + Queso', 1.60, Bolleria);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (186,'Napolitana Chocolate', 1.60, Bolleria);

# Bolleria - Empanadilla

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (187,'Pisto', 1.60, Bolleria);

# Bolleria - Magdalena

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (188,'Magdalena', 1.00, Bolleria);

# Bolleria - Donut

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (189,'Donut', 1.10, Bolleria);

# Bolleria - Rosquilletas

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (190,'Rosquilletas', 1.20, Bolleria);

# Bolleria - Kinder Bueno

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (191,'Kinder Bueno', 1.60, Bolleria);

# Bolleria - Huevo Kinder

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (192,'Huevo Kinder', 1.60, Bolleria);

# Bolleria - Oreo

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (193,'Oreo', 1.60, Bolleria);

# Bolsa de Papas

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (194,'Bolsa de Papas', 1.10, Bolleria);

# Chupachup

INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (195,'Chupachup', 0.30, Bolleria);

# Helados
	
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (196,'Horchata Granizada 10L', 2.20, Bolleria);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (197,'Limon Granizado 10L', 2.20, Bolleria);
INSERT INTO producto (cod_producto,nombre,precio,categoria) VALUES (198,'Café Granizado', 2.20, Bolleria);

#Empleados 

INSERT INTO empleado (cod_empleado, nombre, apellidos,contrasenya,root,direccion,foto) VALUES (1, 'Homero','Chino', 123456, TRUE, "Avd Rambleta,11" ,'https://files.liveworksheets.com/def_files/2022/5/20/205201759393906516/205201759393906516001.jpg' );
INSERT INTO empleado (cod_empleado, nombre, apellidos,contrasenya,root,direccion,foto) VALUES (2, 'Andrés', 'Alguacil' , 654321 , FALSE , "Plaza España,15", 'https://pbs.twimg.com/media/EHXWE-HWwAA4PN4.jpg' );
