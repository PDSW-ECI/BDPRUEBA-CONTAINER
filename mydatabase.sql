-- bdprueba.AIRLINE definition

CREATE TABLE `AIRLINE` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `web_page` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `pais` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 
COLLATE=utf8_spanish_ci;


-- bdprueba.AUTHOR definition

CREATE TABLE `AUTHOR` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `citizenship` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `birthdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 
COLLATE=utf8_spanish_ci;


-- bdprueba.BLOG_USUARIO definition

CREATE TABLE `BLOG_USUARIO` (
  `login` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- bdprueba.DECANATURA definition

CREATE TABLE `DECANATURA` (
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `decano` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `pagina_web` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `id` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- bdprueba.ELEMENTOS definition

CREATE TABLE `ELEMENTOS` (
  `id` int(5) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `funcional` tinyint(1) NOT NULL,
  `EQUIPO_id` int(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- bdprueba.EQUIPOS definition

CREATE TABLE `EQUIPOS` (
  `id` int(5) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `LABORATORIO_id` int(5) DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- bdprueba.LABORATORIOS definition

CREATE TABLE `LABORATORIOS` (
  `id` int(5) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad_equipos` int(5) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_cierre` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- bdprueba.LABORATORY definition

CREATE TABLE `LABORATORY` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `activo` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 
COLLATE=utf8_spanish_ci;


-- bdprueba.MATERIA definition

CREATE TABLE `MATERIA` (
  `mnemonico` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `programa_id` int(5) NOT NULL,
  `nucleo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `creditos` int(1) NOT NULL,
  `semestre` int(2) NOT NULL,
  PRIMARY KEY (`mnemonico`),
  KEY `MATERIA_CARRERA_FK` (`programa_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- bdprueba.NOVEDADES definition

CREATE TABLE `NOVEDADES` (
  `id` int(5) NOT NULL,
  `titulo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `detalle` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `EQUIPO_id` int(5) DEFAULT NULL,
  `ELEMENTO_id` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- bdprueba.ORD_PEDIDOS definition

CREATE TABLE `ORD_PEDIDOS` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_radicacion` datetime NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 
COLLATE=utf8_spanish_ci;


-- bdprueba.ORD_PRODUCTOS definition

CREATE TABLE `ORD_PRODUCTOS` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `precio` int(11) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=2100645959 DEFAULT CHARSET=utf8 
COLLATE=utf8_spanish_ci;


-- bdprueba.PACIENTES definition

CREATE TABLE `PACIENTES` (
  `id` int(11) NOT NULL,
  `tipo_id` varchar(2) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  PRIMARY KEY (`id`,`tipo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- bdprueba.VI_CLIENTES definition

CREATE TABLE `VI_CLIENTES` (
  `documento` bigint(20) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `vetado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`documento`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- bdprueba.VI_TIPOITEM definition

CREATE TABLE `VI_TIPOITEM` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `descripcion` (`descripcion`)
) ENGINE=MyISAM AUTO_INCREMENT=2143448 DEFAULT CHARSET=utf8 
COLLATE=utf8_spanish_ci;


-- bdprueba.rol definition

CREATE TABLE `rol` (
  `admi` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estudiante` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- bdprueba.users definition

CREATE TABLE `users` (
  `firstSurname` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `secondSurname` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `firstName` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `otherName` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `documentType` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `documentNumber` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `area` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `registrationDate` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `modificationDate` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- bdprueba.BLOG definition

CREATE TABLE `BLOG` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE 
CURRENT_TIMESTAMP,
  `author` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT 
NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT 
NULL,
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT 
NULL,
  PRIMARY KEY (`id`),
  KEY `BLOG_BLOG_USUARIO_FK` (`author`),
  CONSTRAINT `BLOG_BLOG_USUARIO_FK` FOREIGN KEY (`author`) REFERENCES 
`BLOG_USUARIO` (`login`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 
COLLATE=latin1_general_ci;


-- bdprueba.BLOG_COMMENT definition

CREATE TABLE `BLOG_COMMENT` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE 
CURRENT_TIMESTAMP,
  `author` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `blog_id` int(11) NOT NULL,
  `content` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BLOG_COMMENT_BLOG_USUARIO_FK` (`author`),
  KEY `BLOG_COMMENT_BLOG_FK` (`blog_id`),
  CONSTRAINT `BLOG_COMMENT_BLOG_FK` FOREIGN KEY (`blog_id`) REFERENCES 
`BLOG` (`id`),
  CONSTRAINT `BLOG_COMMENT_BLOG_USUARIO_FK` FOREIGN KEY (`author`) 
REFERENCES `BLOG_USUARIO` (`login`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 
COLLATE=utf8_spanish_ci;


-- bdprueba.BOOK definition

CREATE TABLE `BOOK` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `format` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `language` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `publicationdate` date NOT NULL,
  `rating` smallint(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BOOK_FK` (`author_id`),
  CONSTRAINT `BOOK_FK` FOREIGN KEY (`author_id`) REFERENCES `AUTHOR` 
(`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 
COLLATE=utf8_spanish_ci;


-- bdprueba.COMPUTER definition

CREATE TABLE `COMPUTER` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `activo` bit(1) NOT NULL,
  `laboratory_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `COMPUTER_FK` (`laboratory_fk`),
  CONSTRAINT `COMPUTER_FK` FOREIGN KEY (`laboratory_fk`) REFERENCES 
`LABORATORY` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 
COLLATE=utf8_spanish_ci;


-- bdprueba.CONSULTAS definition

CREATE TABLE `CONSULTAS` (
  `idCONSULTAS` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_y_hora` datetime NOT NULL,
  `resumen` text COLLATE utf8_spanish_ci NOT NULL,
  `PACIENTES_id` int(11) NOT NULL DEFAULT '0',
  `PACIENTES_tipo_id` varchar(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idCONSULTAS`),
  KEY `fk_CONSULTAS_PACIENTES1` (`PACIENTES_id`,`PACIENTES_tipo_id`),
  CONSTRAINT `fk_CONSULTAS_PACIENTES1` FOREIGN KEY (`PACIENTES_id`, 
`PACIENTES_tipo_id`) REFERENCES `PACIENTES` (`id`, `tipo_id`) ON DELETE NO 
ACTION ON UPDATE NO ACTION
) ENGINE=MyISAM AUTO_INCREMENT=1262219 DEFAULT CHARSET=utf8 
COLLATE=utf8_spanish_ci;


-- bdprueba.`ELEMENT` definition

CREATE TABLE `ELEMENT` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_serie` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `marca` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `activo` bit(1) NOT NULL,
  `computer_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ELEMENT_FK` (`computer_fk`),
  CONSTRAINT `ELEMENT_FK` FOREIGN KEY (`computer_fk`) REFERENCES 
`COMPUTER` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 
COLLATE=utf8_spanish_ci;


-- bdprueba.FLIGTH definition

CREATE TABLE `FLIGTH` (
  `codigo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `airline` int(11) NOT NULL,
  `origen` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `destino` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `duracion` int(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FLIGTH_AIRLINE_FK` (`airline`),
  CONSTRAINT `FLIGTH_AIRLINE_FK` FOREIGN KEY (`airline`) REFERENCES 
`AIRLINE` (`Codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- bdprueba.ORD_DETALLE_PEDIDO definition

CREATE TABLE `ORD_DETALLE_PEDIDO` (
  `pedido_fk` int(11) NOT NULL,
  `producto_fk` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`pedido_fk`,`producto_fk`),
  KEY `ORD_DETALLE_PEDIDO_ORD_PRODUCTOS_FK` (`producto_fk`),
  CONSTRAINT `ORD_DETALLE_PEDIDO_ORD_PEDIDOS_FK` FOREIGN KEY (`pedido_fk`) 
REFERENCES `ORD_PEDIDOS` (`codigo`),
  CONSTRAINT `ORD_DETALLE_PEDIDO_ORD_PRODUCTOS_FK` FOREIGN KEY 
(`producto_fk`) REFERENCES `ORD_PRODUCTOS` (`codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- bdprueba.PASSENGER definition

CREATE TABLE `PASSENGER` (
  `tipo_id` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `no_id` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `flight` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`tipo_id`,`no_id`),
  KEY `PASSENGER_FLIGTH_FK` (`flight`),
  CONSTRAINT `PASSENGER_FLIGTH_FK` FOREIGN KEY (`flight`) REFERENCES 
`FLIGTH` (`codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- bdprueba.PROGRAMA definition

CREATE TABLE `PROGRAMA` (
  `id` int(5) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `pagina_web` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `nivel` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `decanatura_id` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `PROGRAMA_DECANATURA_FK` (`decanatura_id`),
  CONSTRAINT `PROGRAMA_DECANATURA_FK` FOREIGN KEY (`decanatura_id`) 
REFERENCES `DECANATURA` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- bdprueba.REVIEW definition

CREATE TABLE `REVIEW` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `date` date NOT NULL,
  `comment` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `rating` smallint(6) NOT NULL,
  `book_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `REVIEW_FK` (`book_id`),
  CONSTRAINT `REVIEW_FK` FOREIGN KEY (`book_id`) REFERENCES `BOOK` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 
COLLATE=utf8_spanish_ci;


-- bdprueba.VI_ITEMS definition

CREATE TABLE `VI_ITEMS` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `fechalanzamiento` date NOT NULL,
  `tarifaxdia` bigint(20) NOT NULL,
  `formatorenta` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `genero` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `TIPOITEM_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `VI_ITEMS_VI_TIPOITEM_FK` (`TIPOITEM_id`),
  CONSTRAINT `VI_ITEMS_VI_TIPOITEM_FK` FOREIGN KEY (`TIPOITEM_id`) 
REFERENCES `VI_TIPOITEM` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


-- bdprueba.VI_ITEMRENTADO definition

CREATE TABLE `VI_ITEMRENTADO` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CLIENTES_documento` bigint(20) NOT NULL,
  `ITEMS_id` int(11) NOT NULL,
  `fechainiciorenta` date NOT NULL,
  `fechafinrenta` date NOT NULL,
  `test` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `VI_ITEMRENTADO_VI_CLIENTES_FK` (`CLIENTES_documento`),
  KEY `VI_ITEMRENTADO_VI_ITEMS_FK` (`ITEMS_id`),
  CONSTRAINT `VI_ITEMRENTADO_VI_CLIENTES_FK` FOREIGN KEY 
(`CLIENTES_documento`) REFERENCES `VI_CLIENTES` (`documento`),
  CONSTRAINT `VI_ITEMRENTADO_VI_ITEMS_FK` FOREIGN KEY (`ITEMS_id`) 
REFERENCES `VI_ITEMS` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2159133 DEFAULT CHARSET=utf8 
COLLATE=utf8_spanish_ci;


INSERT INTO bdprueba.AIRLINE (nombre,web_page,pais) VALUES
   ('Avianca','www.avianca.com','Colombia'),
   ('Latam','www.latam.com','Colombia');
INSERT INTO bdprueba.AUTHOR (name,citizenship,birthdate) VALUES
   ('Dan Brown','estadounidense','1964-06-22'),
   ('Fernando Trujillo Sanz','Espa�ol','1980-07-24'),
   ('Robert Kiyosaki','estadounidense','1947-04-08');
INSERT INTO bdprueba.BLOG (creation_date,author,title,content) VALUES
   ('2019-10-10 07:50:15','foo','lorem','lorem ipsum dolor sit amet, consectetur ad'),
   ('2019-10-10 07:50:15','lola','lorem ipsum','ma'),
   ('2019-10-10 07:50:15','foo','boris nisi ut aliquip ex ea commodo con','dolor sit amet');
INSERT INTO bdprueba.BLOG_COMMENT (creation_date,author,blog_id,content) VALUES
   ('1979-06-07 17:55:56','pepe',1,'ua. Ut enim ad minim veniam, quis nostrud ex'),
   ('2019-10-10 08:52:31','lola',1,'Ese comentario es muy Tonto'),
   ('2012-11-23 13:06:46','foo',2,'consequat. Duis aute irure dolor in reprehenderi'),
   ('2020-03-27 16:22:31','pepe',1,'esto es tonto.'),
   ('2019-10-10 08:52:26','lola',2,'Qu� burro, pongale 0'),
   ('2020-10-08 08:28:21','foo',1,'Muy buena pelicula');
INSERT INTO bdprueba.BLOG_USUARIO (login,name,lastname) VALUES
   ('foo','Foo','Bar'),
   ('lola','Lola','Lopez'),
   ('pepe','Pepe','Perez'),
   ('user10','!!!!!!!!!!','!!!!!{/Y!.!4*2,''s^&%i~7(0;Rnj(t03'),
   ('user11','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!!!!8-%U"8BC'),
   ('user12','!!!!!!!!!!','!!!!!{/Y!.!4*2,''s^%%i~7(0;R#j(t03'),
   ('user123','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!'),
   ('user124','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!'),
   ('user126','!!!!!!!!!!','!!!!!!!!!!'),
   ('user13','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!!!!8-%U"88C');
INSERT INTO bdprueba.BLOG_USUARIO (login,name,lastname) VALUES
   ('user15','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!!!!8-%U"84C'),
   ('user16','!!!!!!!!!!','!!!!!{/Y!.!+*'),
   ('user18','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!!!!8-%%"84C'),
   ('user2','!!!!!!!!!!','!!!!!{/Y"C%f*2,''x^=%i~7(0;Rnj8t0K'),
   ('user20','!!!!!!!!!!','!!!!!{/4!.!+*'),
   ('user21','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!!!!"-%%"84C'),
   ('user23','!!!!!!!!!!','!!!!!{/,!.!+*'),
   ('user24','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!!!!"-%""84C'),
   ('user26','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!!!!"!%""84C'),
   ('user27','!!!!!!!!!!','!!!!!_*,!.!)*');
INSERT INTO bdprueba.BLOG_USUARIO (login,name,lastname) VALUES
   ('user29','!!!!!!!!!!','!!!!!Y*,!.!)*'),
   ('user3','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!!!&E-%Uy]BC'),
   ('user32','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!!!!"!%""'),
   ('user33','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!!!'),
   ('user34','!!!!!!!!!!','!!!!!Y)&!.!)*'),
   ('user35','!!!!!!!!!!','!!!!!S)&!.!)*'),
   ('user36','!!!!!!!!!!','!!!!!S)&!.!"*'),
   ('user37','!!!!!!!!!!','!!!!!S)&!(!"*'),
   ('user38','!!!!!!!!!!','!!!!!S)&!%!"*'),
   ('user39','!!!!!!!!!!','!!!!!S%&!%!"*');
INSERT INTO bdprueba.BLOG_USUARIO (login,name,lastname) VALUES
   ('user4','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!!!!E-%Uy]BC'),
   ('user40','!!!!!!!!!!','!!!!!S%"!%!"*'),
   ('user43','!!!!!!!!!!','!!!!!S%"!"!""'),
   ('user44','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!!'),
   ('user47','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!'),
   ('user48','!!!!!!!!!!','!!!!!S%!!"!""'),
   ('user49','!!!!!!!!!!','!!!!!!!!!!!!!'),
   ('user5','!!!!!!!!!!','!!!!!{/Y".%f*2,''s^=%i~7(0;Rnj8t03'),
   ('user50','!!!!!!!!!!','!!!!!S#!!"!!"'),
   ('user51','!!!!!!!!!!','!!!!!S"!!"!!"');
INSERT INTO bdprueba.BLOG_USUARIO (login,name,lastname) VALUES
   ('user52','!!!!!!!!!!','!!!!!3"!!"!!"'),
   ('user53','!!!!!!!!!!','!!!!!!!!!!'),
   ('user55','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!!!!"!%!!'),
   ('user57','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!!!!"!#!!'),
   ('user6','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'),
   ('user60','!!!!!!!!!!','!!!!!*"!!"!!"'),
   ('user63','!!!!!!!!!!','!!!!!*"!!"!!!'),
   ('user64','!!!!!!!!!!','!!!!!)"!!"!!!'),
   ('user66','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!!!'),
   ('user67','!!!!!!!!!!','!!!!!)"!!!!!!');
INSERT INTO bdprueba.BLOG_USUARIO (login,name,lastname) VALUES
   ('user69','!!!!!!!!!!','!!!!!!"!!!!!!'),
   ('user7','!!!!!!!!!!','!!!!!{/Y".!4*2,''s^=%i~7(0;Rnj8t03'),
   ('user70','!!!!!!!!!!','!!!!!!"!!!'),
   ('user71','!!!!!!!!!!','!!!!!!!!!!!!!!'),
   ('user8','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!!!!8-%U>8BC'),
   ('user80','!!!!!!!!!!','!!!!!!!!!!'),
   ('user86','!!!!!!!!!!','!!!!!!!!!!!'),
   ('user87','!!!!!!!!!!','!!!!!!!!!!'),
   ('user89','!!!!!!!!!!','!!!!!!!!!!!!!!!!!!!!!!'),
   ('user9','!!!!!!!!!!','!!!!!{/Y!.!4*2,''s^=%i~7(0;Rnj(t03');
INSERT INTO bdprueba.BOOK (name,price,format,`language`,publicationdate,rating,author_id) VALUES
   ('Fortaleza Digital',50000,'F�sico','Espa�ol','2007-04-01',5,1),
   ('Origen',70000,'Ebook','Ingles','2017-10-03',4,1),
   ('La blibia de los Caidos',30000,'F�sico','Espa�ol','2011-05-06',4,2),
   ('La Guerra de los cielos',45000,'Ebook','Espa�ol','2012-06-16',3,2),
   ('Padre rico y padre pobre',60000,'F�sico','Espa�ol','1997-10-20',4,3);
INSERT INTO bdprueba.COMPUTER (nombre,activo,laboratory_fk) VALUES
   ('Sistemas1',1,1),
   ('Sistemas2',1,1),
   ('Sistemas3',1,1),
   ('Sistemas4',0,1),
   ('Sistemas11',1,2),
   ('Sistemas12',1,2),
   ('Sistemas13',0,2),
   ('Sistemas14',1,2),
   ('Sistemas21',1,3),
   ('Sistemas22',1,3);
INSERT INTO bdprueba.COMPUTER (nombre,activo,laboratory_fk) VALUES
   ('Sistemas23',1,3),
   ('Sistemas24',0,3);
INSERT INTO bdprueba.CONSULTAS (fecha_y_hora,resumen,PACIENTES_id,PACIENTES_tipo_id) VALUES
   ('2022-11-16 14:07:44','hepatitis',9876,'TI'),
   ('2022-10-16 14:07:40','varicela',9877,'CC'),
   ('2022-11-16 14:07:44','varicela',9879,'TI'),
   ('2022-12-16 14:07:45','hepatitis',9875,'TI'),
   ('2001-01-01 00:00:00','Gracias',9878,'TI');
INSERT INTO bdprueba.DECANATURA (nombre,decano,pagina_web,id) VALUES
   ('Civil','H�ctor Matamoros','https://www.escuelaing.edu.co/es/programas/pregrado/Ingenier%C3%ADa+Civil+',1),
   ('Electr�nica','Javier Chaparro','https://www.escuelaing.edu.co/es/programas/pregrado/Ingenier%C3%ADa+Electr%C3%B3nica+',2),
   ('Sistemas','Oswaldo Castillo','https://www.escuelaing.edu.co/es/programas/pregrado/Ingenier%C3%ADa+de+Sistemas',3);
INSERT INTO bdprueba.`ELEMENT` (no_serie,tipo,marca,activo,computer_fk) VALUES
   ('ASDFG-12345','SCREEN','HP',1,1),
   ('QWERT-975651','MOUSE','HP',1,1),
   ('ZXCVBN-456951','KEYBOARD','HP',1,1),
   ('QWSXC-96301','CPU','HP',1,1),
   ('MNBJHG-9451','SCREEN','LENOVO',1,6),
   ('ERTFC-951752','MOUSE','LENOVO',1,6),
   ('POPOK-986512','KEYBOARD','LENOVO',1,6),
   ('WSSDF-45841','CPU','LENOVO',1,6),
   ('QWSDFG-8845','CPU','MAC',1,9),
   ('EKFJSA-65941','SCREEN','MAC',1,9);
INSERT INTO bdprueba.`ELEMENT` (no_serie,tipo,marca,activo,computer_fk) VALUES
   ('EDDFG-6584','MOUSE','MAC',0,9),
   ('PKPKPJ-54954','KEYBOARD','MAC',0,9),
   ('OEWOREIE-45954','SCREEN','HP',1,2),
   ('PERWEIR-9494','MOUSE','HP',1,2),
   ('NVMDN-6548465','CPU','HP',1,2);
INSERT INTO bdprueba.ELEMENTOS (id,nombre,tipo,funcional,EQUIPO_id) VALUES
   (1,'samsung','Pantalla',1,4),
   (2,'acer','Mouse',1,2),
   (3,'HyperX','Teclado',1,4),
   (4,'Janus','Torre',0,NULL),
   (5,'asus','Mouse',1,423423),
   (555454,'5445454','Pantalla',1,NULL),
   (2622,'ECI Torre','Torre',1,4),
   (4234444,'ECI Screen','Pantalla',1,NULL),
   (4232444,'TheBoys Keyboard','Teclado',1,NULL),
   (5,'Logitech','Mouse',1,423423);
INSERT INTO bdprueba.ELEMENTOS (id,nombre,tipo,funcional,EQUIPO_id) VALUES
   (8,'ECI mouse','Mouse',1,4),
   (9,'ECI screen #2','Pantalla',1,5),
   (10,'ECI Torre #2','Torre',1,2),
   (11,'ECI Keyboard','Teclado',1,2),
   (12,'213123','Pantalla',1,423423),
   (213312,'5435','Torre',1,423423),
   (543543,'322323','Teclado',1,423423),
   (13,'aaaa','Torre',1,5),
   (14,'14','Teclado',1,5),
   (15,'15','Mouse',1,5);
INSERT INTO bdprueba.ELEMENTOS (id,nombre,tipo,funcional,EQUIPO_id) VALUES
   (16,'16','Torre',1,6),
   (17,'17','Pantalla',1,6),
   (18,'18','Mouse',1,6),
   (19,'19','Teclado',1,6),
   (20,'CVDS Torre','Torre',1,7),
   (21,'CVDS Pantalla','Pantalla',1,7),
   (22,'CVDS Mouse','Mouse',1,7),
   (24,'CVDS Teclado','Teclado',1,7),
   (4532253,'523523','Torre',1,1006),
   (1001,'Samsung','Pantalla',1,1006);
INSERT INTO bdprueba.ELEMENTOS (id,nombre,tipo,funcional,EQUIPO_id) VALUES
   (1002,'Mouse','Mouse',1,1006),
   (1003,'Teclado','Teclado',1,1006),
   (1004,'samsung2','Pantalla',1,2),
   (1005,'LG007','Pantalla',1,7878),
   (1006,'Janus2','Torre',1,7878),
   (1007,'Logi','Mouse',1,7878),
   (1008,'Genius','Teclado',1,7878);
INSERT INTO bdprueba.EQUIPOS (id,estado,LABORATORIO_id,nombre) VALUES
   (1,0,NULL,'Equipo 1'),
   (2,0,NULL,'PC de Juan Camilo'),
   (3,0,NULL,'Pc de redes'),
   (4,0,NULL,'Redes #21'),
   (423423,0,NULL,'34444'),
   (5,0,NULL,'5'),
   (6,0,NULL,'6'),
   (7,0,NULL,'CVDS #01'),
   (1006,0,NULL,'Equipo1006'),
   (7878,0,NULL,'8787');
INSERT INTO bdprueba.FLIGTH (codigo,airline,origen,destino,duracion) VALUES
   ('VL-01',1,'Bogot�','Medellin',1),
   ('VL-02',1,'Cali','Bogot�',1),
   ('VL-03',2,'Bogot�','Medellin',1),
   ('VL-04',1,'Miami','Bogot�',3);
INSERT INTO bdprueba.LABORATORIOS (id,nombre,cantidad_equipos,estado,fecha_creacion,fecha_cierre) VALUES
   (1,'Redes de computadores',0,1,'2022-11-15',NULL),
   (2,'Plataformas',0,1,'2022-11-15',NULL),
   (3,'Interactiva',0,1,'2022-11-18',NULL);
INSERT INTO bdprueba.LABORATORY (nombre,activo) VALUES
   ('ISW',1),
   ('REDES',1),
   ('PLATAFORMAS',1);
INSERT INTO bdprueba.MATERIA (mnemonico,nombre,programa_id,nucleo,creditos,semestre) VALUES
   ('CVDS','Ciclos de vida del desarrollo de software',1,'Basico',4,7),
   ('ACSO','Arquitectura Computacional y Sitemas Operativos',1,'Basico',4,7),
   ('ARSW','Arquitecturas de Software',1,'Basico',4,7),
   ('TEST','Materia 1',2,'Basico',4,7),
   ('TST2','Materia 1',3,'Basico',4,7),
   ('TST3','Materia 1',4,'Basico',4,7);
INSERT INTO bdprueba.NOVEDADES (id,titulo,detalle,fecha,EQUIPO_id,ELEMENTO_id) VALUES
   (1,'novedad1','detalle1','2022-11-02',1,1),
   (2,'novedad2','se dañó el cable','2022-11-03',NULL,2),
   (2,'novedad2','se dañó la torre','2022-11-03',1,4),
   (6,'Titulo6','detalle6','2022-11-03',1,1),
   (3,'novedad3','SADFASDF','2022-11-05',1,4),
   (4,'novedad4','SADFASDF','2022-11-04',1,4),
   (5,'novedad5','SADFASDF','2022-11-01',1,4),
   (2,'Novedad de prueba','detalle ','2022-11-04',3,4),
   (1,'novedad1','detalle1','2022-11-05',1,1),
   (1,'novedad1','detalle1','2022-11-05',1,1);
INSERT INTO bdprueba.NOVEDADES (id,titulo,detalle,fecha,EQUIPO_id,ELEMENTO_id) VALUES
   (333,'333','123213','2022-11-07',4,1),
   (6,'6','6','2022-11-07',423423,12),
   (6,'6','6','2022-11-07',6,17),
   (7,'Novedad CVDS','CVDS','2022-11-08',7,24),
   (1010,'titulo1010','detalle','2022-11-09',0,1),
   (1010,'titulo1010','detalle','2022-11-09',0,13),
   (1010,'titulo1010','detalle','2022-11-09',1006,4),
   (1011,'titulo1011','detalle','2022-11-09',0,3),
   (88,'88','88','2022-11-09',4,3),
   (78,'Hola','Holaaaa','2022-11-15',0,4232444);
INSERT INTO bdprueba.NOVEDADES (id,titulo,detalle,fecha,EQUIPO_id,ELEMENTO_id) VALUES
   (66,'Nueva asociaci�n','Se asoci� el elemento al equipo','2022-11-15',2,1004),
   (66,'Cambio asociaci�n','Se elimin� asociaci�n con PC de Juan Camilo','2022-11-15',NULL,4234444),
   (66,'Nueva asociaci�n','Se asoci� el elemento al equipo','2022-11-15',2,4234444),
   (66,'Cambio asociaci�n','Se elimin� asociaci�n con PC de Juan Camilo','2022-11-12',NULL,4234444),
   (66,'Nueva asociaci�n','Se asoci� el elemento al equipo','2022-11-12',2,1004),
   (66,'Cambio asociaci�n','Se elimin� asociaci�n con PC de Juan Camilo','2022-11-15',NULL,1004),
   (67,'Elemento dado de baj','No prende','2022-11-16',NULL,4),
   (1000,'Equipo dado de baja','','2022-11-17',NULL,423423),
   (1000,'Equipo dado de baja','','2022-11-17',NULL,4);
INSERT INTO bdprueba.ORD_DETALLE_PEDIDO (pedido_fk,producto_fk,cantidad) VALUES
   (1,1,1),
   (1,4,4),
   (2,2,1),
   (2,3,10);
INSERT INTO bdprueba.ORD_PEDIDOS (fecha_radicacion) VALUES
   ('2018-03-01 00:00:00'),
   ('2018-03-08 00:00:00');
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('PC',1000000),
   ('TV',2500000),
   ('Papas',1200),
   ('Leche',1500),
   ('SU NOMBRE',99999999),
   ('SU NOMBRE',99999999),
   ('SU NOMBRE',99999999),
   ('Daniel',1998),
   ('nicolas',1000),
   ('w',10);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('we',10),
   ('mesa',2),
   ('nicolas prueba',1000),
   ('Pineros',1000),
   ('Andrew',99999999),
   ('PC con Leche',3999990),
   ('Condones',10000),
   ('PRODUCTO 1',1),
   ('Salchipapa',5400),
   ('yesid',45);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('Marcel�n',4),
   ('Carlos Sorza',99999999),
   ('PC Sustentaci�n',1599990),
   ('Dr Malito',15000),
   ('Maleta',50000),
   ('David leon',20000),
   ('LVJD 4472',1),
   ('Viagra',12000),
   ('SU NOMBRE',99999999),
   ('Dudu',98000);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('hola',541),
   ('EduardJ',9971),
   ('EduardJ',9971),
   ('product',99999999),
   ('LVJD 33983',1),
   ('jugo de aguacate',3000),
   ('LVJD 46266',1),
   ('LVJD 54126',1),
   ('Empanada del cementerio',2300),
   ('LVJD 61350',1);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('LVJD 63504',1),
   ('nicolas',1000),
   ('LVJD 91614',1),
   ('LVJD 99133',1),
   ('SU NOMBRE',99999999),
   ('natalia',99999999),
   ('yeison',99999999),
   ('natalia',99999999),
   ('Nathalia Garcia',99999999),
   ('Yeison Barreto',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('Nathalia Garcia',99999999),
   ('Yeison Barreto',99999999),
   ('Alejo',1),
   ('EduardJ',9971),
   ('SU_NOMBRE',99999999),
   ('Carlos Sorza',99999999),
   ('David leon',20000),
   ('El Rolo',45300),
   ('Santiago Rubiano',1234567890),
   ('Arepa mixta del K1',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('The best product',99999999),
   ('Johann ENP',2709870),
   ('Andr�s Pico',99999999),
   ('RED BULL',99999999),
   ('miguel',999888),
   ('Sujeto2',11545441),
   ('SU NOMBRE',99999999),
   ('Juan Camilo Ortiz',99999999),
   ('PRUEBA',99999999),
   ('JuanCamilo',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('Juan Camilo Ortiz',99999999),
   ('JuanCamilo',99999999),
   ('JuanCamilo',99999999),
   ('JuanCamilo',99999999),
   ('SU NOMBRE',99999999),
   ('J. Eduardo Arias',888888),
   ('Laura Bernal',999999999),
   ('Eduardo',1000000),
   ('Carlos Sorza',999999),
   ('SANTIAGO',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('OSPINA-JARAMILLO',99999999),
   ('SU NOMBRE2',99999999),
   ('SU NOMBRE',99999999),
   ('SU NOMBRE',99999999),
   ('SU NOMBRE',99999999),
   ('SU NOMBRE',99999999),
   ('SU NOMBRE',99999999),
   ('SU NOMBRE',99999999),
   ('Juan Sebastian Caceres Leon',99999999),
   ('BMT',777);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('BM',777),
   ('Mateo Gonzalez',999999999),
   ('Fabian Ramirez',2),
   ('Diego',5000000),
   ('Sebastian',99999998),
   ('SU NOMBRE',99999999),
   ('Eduard Arias',27500),
   ('Juan Cortes',666666),
   ('LINAaaaa',99999999),
   ('Daniel',1998);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('Nicolas Torres',99999999),
   ('Lorenzo marquez',99999999),
   ('Nicolas Torres',99999999),
   ('Lorenzo marquez',99999999),
   ('Gonzalez',99999999),
   ('CamilaF',99999999),
   ('Paula Guevara',10000),
   ('Santiago Rubiano',1234567890),
   ('Borracho AFK',99999999),
   ('JULIAN',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('Federico Barrios',99999999),
   ('Jose Castro',99999999),
   ('Johann Cepeda',1000),
   ('Johann Cepeda',1000),
   ('Johann Cepeda',1000),
   ('Johann Cepeda',1000),
   ('Coronado',99999999),
   ('SU NOMBRE',99999999),
   ('SU NOMBRE',99999999),
   ('LINAaaaa',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('Juan Frasica',45),
   ('Juan Galeano',45),
   ('Sebastian',99999998),
   ('Verbo',99999999),
   ('Arepa mixta del K1',99999999),
   ('David leon',155500),
   ('Alejandro',99999999),
   ('Ana Salazar',99999999),
   ('Julian Pe�a',99999999),
   ('Juanor',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('LINA',99999999),
   ('Andres Rocha',100000),
   ('Andres Rocha',100000),
   ('Nicolas',99999999),
   ('Jose',15),
   ('Natalia',99999999),
   ('The best product',99999999),
   ('product',99999999),
   ('David Vargas',1234),
   ('SU NOMBRE',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('SU NOMBRE',99999999),
   ('Rojas',99999999),
   ('Simono',99999999),
   ('Costalito',99999999),
   ('Johann ENP',2709870),
   ('Felipe',9999999),
   ('Felipe',9999999),
   ('Hi',99999999),
   ('prueba 2',21500),
   ('SU NOMBRE',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('eldealla',99999999),
   ('xbox',20500),
   ('johan rueda',99999999),
   ('Mateo Mejia',88888888),
   ('Carro',2000),
   ('davor',99999999),
   ('Natalia Orjuela',99999999),
   ('joel carvajal',99999999),
   ('Juan Posso',1000),
   ('Ricardo',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('CristhianTorres',77710),
   ('Julian',99999999),
   ('Ang�lica',5000000),
   ('David leon',155500),
   ('Johan Guerrero',9999),
   ('prueba',99999999),
   ('Johann Bogota',100),
   ('SU NOMBRE',99999999),
   ('Richard Urrea',99999999),
   ('Yarit',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('Miguel fuquene',99999999),
   ('Jorgito Guayaco',1),
   ('Nikolas Bernal',5000),
   ('Nikolas Bernajj',5054150),
   ('SU NOMBRE',99999999),
   ('SU NOMBRE',99999999),
   ('Andr�s Pico',99999999),
   ('Andr�s Pico',99999999),
   ('Ivan Camilo Rincon',99999999),
   ('Juan Carlos A',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('Leonardo.',99999999),
   ('Angie Medina',99999999),
   ('Miguel',99999999),
   ('Juan Gil',99999999),
   ('Javier L�pez',99999999),
   ('Javier L�pez',99999999),
   ('SU NOMBRE',99999999),
   ('SU NOMBRE',99999999),
   ('Deivid',10000),
   ('JP AMAYA',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('Jose Perez',99999999),
   ('Juan Pablo S�nchez Berm�dez',99999999),
   ('aRePa RiKa',49900),
   ('JP AMAYA',99999999),
   ('Ospina',20000),
   ('Jos� Gamboa',1545154),
   ('CRISTIAN',99999999),
   ('Zuly Vargas',19999999),
   ('kristhian',666),
   ('nicolas',1000);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('Enrique Gonzales',99999999),
   ('Enrique Gonzales',99999999),
   ('Pineros',9573452),
   ('Pineros',16),
   ('Pineros',99595612),
   ('Andr�s',999999969),
   ('Sebastian Ospina',1000),
   ('Yesid',99999999),
   ('Gabriela',1000000),
   ('Juan Rojas',180000);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('Juan Becerra',16900),
   ('Sergio Otero',99999999),
   ('Sergio Rozo',35000),
   ('arepa rik',3500),
   ('SU NOMBRE',99999999),
   ('Iphone 13 pro maxxxxxxxxxxxxx ',351465465),
   ('SU NOMBRE',99999999),
   ('Esteban Cristancho',99999999),
   ('Santiago',99999999),
   ('Juan Felipe Aguas Pulido',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('Edwar',99999999),
   ('Chontaduro',200),
   ('CRISTIAN',99999999),
   ('CARDENAS-FONSECA',99999999),
   ('YORKS KEVIN GOMEZ LOPEZ',99999999),
   ('SU NOMBRE',99999999),
   ('David leon',20000),
   ('Carlos Sorza',99999999),
   ('Juan Carlos',999999999),
   ('SU NOMBRE',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('SU_NOMBRE',99999999),
   ('SU NOMBRE',99999999),
   ('Carlos Julian Gomez',99999999),
   ('Andr�s Pico',99999999),
   ('Carlos',5000000),
   ('EY',101),
   ('EY',101),
   ('jony',45),
   ('SU NOMBRE',99999999),
   ('Andres Rocha',100000);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('Julian',99999999),
   ('hi x2',1000),
   ('SU NOMBRE',99999999),
   ('SU NOMBRE',99999999),
   ('SU NOMBRE',99999999),
   ('SU NOMBRE',99999999),
   ('NB',99999999),
   ('NB',99999999),
   ('Diego Murcia',1000000),
   ('SU NOMBRE',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('nicolas',1000),
   ('Juanpis',45),
   ('Andres Rocha',100000),
   ('product',99999999),
   ('Simono',99999999),
   ('Miguel Castellanos',99999999),
   ('prueba 2',21500),
   ('hamburguesa',20500),
   ('zapatos',22500),
   ('camisa',21500);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('prueba 2',21500),
   ('Ricardo',99999999),
   ('Julian',99999999),
   ('Julian',99999999),
   ('Carlos Sorza',999999),
   ('AlejoToro',99999999),
   ('JOTARO',1921),
   ('prueba lab 31',30000),
   ('SU NOMBRE',99999999),
   ('perico',20000);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('tv',300000),
   ('Empanada del cementerio',2300),
   ('Empanada del cementerio',2300),
   ('LINAaaaa',99999999),
   ('deivid',25000),
   ('Eduard Arias',27500),
   ('CESAR VASQUEZ',5000000),
   ('Miguel Castellanos',99999999),
   ('hi x2',1000),
   ('SU NOMBRE',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('Juanpis',45),
   ('SU NOMBRE',99999999),
   ('Norbey',99999999),
   ('nicolas',1000),
   ('Eduardo',1000000),
   ('Juan Sebastian Caceres Leon',99999999),
   ('SU NOMBRE',99999999),
   ('PASTA',40000),
   ('Hi',99999999),
   ('Rojas',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('Felipe',9999999),
   ('Juan Carlos A@2',99999999),
   ('SU NOMBRE',99999999),
   ('YORKS GOMEZ',99999999),
   ('jony',45),
   ('Juanpis',45),
   ('SU NOMBRE',99999999),
   ('SU NOMBRE',99999999),
   ('Norbey',2162363),
   ('SU NOMBRE',99999999);
INSERT INTO bdprueba.ORD_PRODUCTOS (nombre,precio) VALUES
   ('HOLAXD',99999999),
   ('bareta',5000),
   ('w',10),
   ('SU NOMBRE',99999999),
   ('test',100),
   ('SU NOMBRE',99999999),
   ('nicolas',1000);
INSERT INTO bdprueba.PACIENTES (id,tipo_id,nombre,fecha_nacimiento) VALUES
   (9875,'TI','Juan Pablo','2019-09-25'),
   (9876,'TI','Carmenza','2009-05-12'),
   (9877,'CC','Carlos','2010-05-16'),
   (9878,'TI','Carmenzo','1995-07-10'),
   (9879,'TI','Alfonso','2010-05-06');
INSERT INTO bdprueba.PASSENGER (tipo_id,no_id,nombre,apellido,telefono,flight) VALUES
   ('CC','123456','Pepe','Perez','123456','VL-01'),
   ('CC','343456','Andrea','Acosta','87654','VL-01'),
   ('CC','5724398','Pacho','Pelaez','4358734','VL-04'),
   ('CC','98876','Paco','Perilla','434567','VL-02');
INSERT INTO bdprueba.PROGRAMA (id,nombre,pagina_web,descripcion,nivel,decanatura_id) VALUES
   (1,'Ingenier�a de Sistemas','https://www.escuelaing.edu.co/es/interna/sintesis_del_programa/3960?color=%23009933','Formar ingenieros id�neos que, adem�s de dise�ar software con efectividad...','PREGRADO',3),
   (2,'Ingenier�a Civil','https://www.escuelaing.edu.co/es/programas/pregrado/Ingenier%C3%ADa+Civil/objetivos','Crear en el alumno, a trav�s del estudio de las ciencias f�sicas y matem�ticas ...','PREGRADO',1),
   (3,'Ingenier�a Electr�nica','https://www.escuelaing.edu.co/es/programas/pregrado/Ingenier%C3%ADa+Electr%C3%B3nica/objetivos','El Programa de Ingenier�a Electr�nica, en coherencia con la misi�n de la Escuela ...','PREGRADO',2),
   (4,'Gesti�n de la Informaci�n','https://www.escuelaing.edu.co/escuela/maestria/gestion-informacion/index.html','Fue creada con motivaci�n de formar ejecutivos de diferentes disciplina ...','MAESTRIA',3),
   (5,'Ingenier�a Civil','https://www.escuelaing.edu.co/escuela/maestria/civil/index.html','La escuela presenta su programa de Maestr�a en Ingenier�a Civil con los siguientes �nfasis:','MAESTRIA',1),
   (6,'Ingenier�a Electr�nica','https://www.escuelaing.edu.co/escuela/maestria/electronica/index.html','La escuela presenta su programa de Maestr�a en Ingenier�a Electr�nica con los siguientes �nfasis:','MAESTRIA',2),
   (7,'Estructuras','https://www.escuelaing.edu.co/escuela/especializacion/estructuras/index.html','La Especializaci�n en Estructuras est� dise�ada para proporcionar conceptos fundamentales ...','ESPECIALIZACION',1);
INSERT INTO bdprueba.REVIEW (title,`date`,comment,rating,book_id) VALUES
   ('Excelente','2021-01-01','No es que Dan Brown necesite cr�ticas para aumentar sus ventas, pero aunque s�lo he visto las pel�culas de sus otros libros populares (vicio de leerlos), un amigo me prest� su copia de este libro hace a�os insistiendo en que me gustar�a porque ten�a una hero�na femenina. Confi� en mi amigo, no por lo de la hero�na femenina, sino porque me conoc�a bien... me alegro mucho de haberlo hecho. En serio, s�lo me gusta leer cuando voy a aprender algo o con un prop�sito, pero no realmente por entretenimiento. Hac�a tanto tiempo que no le�a un libro para entretenerme que mi hijo adolescente de entonces (hace a�os) se qued� tan sorprendido al verme leer, que asumi� que deb�a estar dormida ya que estaba absorta en este libro. No pude dejar este libro... de principio a fin. ',5,1),
   ('Malo','2020-10-01','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',1,1),
   ('Regular','2020-10-11','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',3,1),
   ('Esperaba m�s','2021-01-10','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',4,1),
   ('Me encant�','2020-12-24','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',5,1),
   ('No me gust�','2020-03-08','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',2,2);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (-8452451654654645685,'s','32','12','12',0),
   (-8452451654654645684,'holiiiiiiiiii','14842456','cra12','holafweg',NULL),
   (-7899871234564,'zxdf','asdsa','asdas','asdad',0),
   (-1874919427,'Alejandro Toro','3002145198','cll 105A #53-29','alejandro.toro@mail.escuelaing.edu.co',0),
   (-1874919426,'qw','qw','qwwq','qw',0),
   (-1874919425,'Pepe','asas','asas','asas',0),
   (-1874919424,'joh','23456','sad','sdkjfbgdfg',0),
   (-999999999,'pruebalab1','315742879','pruebalab1','prueba@cvds.com',0),
   (-131564564,'berni2','wddwd','wqdwd','wdwq',0),
   (-123456789,'hola','te ves igual','como estas','te ves igual',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (-9999999,'prueba1','123456789','sadasfgasdg','kjsadhjksadjhkasd@mail.com',0),
   (-9999998,'sdfhgjf,.','123456789','645as8d','asdasgsfda@gmail.com',0),
   (-9999997,'123','12312312321','123213213213','1232131',0),
   (-9999992,'asd','adfgasdfg','adsf','adfs',0),
   (-9999991,'dsa','12345678','sadfgdsa','fsgd',0),
   (-2166131,'carlosyvalentina','3209392929','gfug+','holis@holis.com',NULL),
   (-999999,'el pepe','este sech','memeland','dasdasasd',0),
   (-999996,'prueba3','564123','ADGF','AG',0),
   (-132145,'Santiago2','315486544198','XXXX','XZXXX',0),
   (-132144,'Santiago','34567890','12345676','santiago@gmail.com',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (-132143,'test','1','1','4@1.com',0),
   (-132142,'test','1','1','3@1.com',0),
   (-132141,'test','1','1','2@1.com',0),
   (-132140,'test4','1','1','1@1.com',0),
   (-132139,'test','1','1','asdsad4@gmail.com',0),
   (-132138,'test4','1','1','asdsad3@gmail.com',0),
   (-132137,'test3','1','sdasd','asdsad2@gmail.com',0),
   (-132136,'test2','1','1','asdsad@gmail.com',0),
   (-132135,'test','321321321','sdasd','asdsad',0),
   (-132134,'Papapapapapapa','asdfsdfas','asdasd','werfasdfasdf',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (-132133,'Pepo','115484','calle -200','lkjdfngioungieiie',0),
   (-132132,'Berni ','sadasdas','fsfsafsa','sfafasf',0),
   (-30002,'asdsad','adsads','asdasd','asdd',0),
   (-30001,'Dddd','1561651','sdasd','sadfsadf',0),
   (-23879,'juan','231879','sfhdkahsf','jskdhfsk',0),
   (-3003,'aaaaa','werwfwe','asdfasv','hmngytntn',0),
   (-3002,'Jejeje','123456789','calasdasd','asdfgv',1),
   (-3000,'lol','12345','lakaaj','najaj',0),
   (-2002,'GGizi','sdsad','sdasdas','dasdasd',0),
   (-2001,'lalito','dsafsdg','sdsaf','safasf',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (-2000,'lula','lalal','lalal','lalal',0),
   (-1010,'Miguel','8079373','saldskls','aksjhfkjsf',0),
   (-1006,'el bicho','234567','cvcbvn','asd',0),
   (-1005,'Jeisson','54654654','toca','jeisson@jeisson.com',0),
   (-1004,'Wilson2','54321','asdasdasd2','a@b.cc',0),
   (-1003,'Wilson','54321','asdasdasd','a@b.c',1),
   (-1002,'nn','123','sdasfasfkasf','fskmfsakfaslfkm',0),
   (-1001,'Santiago ','381','Hola','asaaoao',0),
   (-1000,'Santiago ','381','Hola','sajsasasa',0),
   (-800,'pepe','13431','fewer','sdff',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (-781,'pepe','ds','s','pepeSierra1@gmail.com',0),
   (-780,'pepe','13212346','pepe sierra','pepeSierra@gmail.com',0),
   (-779,'sdsad','asdasdd','dsadsda','asdasd',0),
   (-778,'Papucho','8978979','sadsd','spdapd',0),
   (-777,'ersocaut','32132132','jkljlkjlkjklj','54',0),
   (-776,'asd','234','aksldja','kjkdasld',0),
   (-706,'aaaa','aaaa','aaaa','aaaa',0),
   (-705,'qwertyyuio','128643','calle 345','sus.kil',0),
   (-704,'wer','234563','calle34r','wer.los',0),
   (-703,'Edwinrata','1535675','calle 321','edwin.escuela',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (-702,'rew','1234','calle popo','ser.nada',0),
   (-701,'hen','1345344','123f','hola@hola.com',0),
   (-700,'edwin','525275','hola','r.escuela',0),
   (-456,'henry','5555555','calle falsa 123','hola@gg.com',0),
   (-99,'csac','dssds','ddsd','sdsd',0),
   (-33,'jeronimo','234567','calle w','jero@mail.com',0),
   (-30,'andrea','56789','calle134#121-12','paula4567@gmail.com',0),
   (-22,'aaaaaa','678','calle134#121-12','and@mail.es',0),
   (-11,'AAA','56789','calle 1','ANAAA@MAIL.VOM',0),
   (-9,'natalia','34567','5fghjk','fghjk',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (-7,'andres','2678','andres','andres.escuela',0),
   (-6,'Ana','1123123','1524 78th street apt 2','dfvdfvdfv',0),
   (-5,'Juanito','3472103673','1524 78th street apt 2','ervdfbvfdbv',0),
   (-4,'Anita','13123','1524 78th street apt 2','andvfera',0),
   (-3,'Ani','3472103673','1524 78th street apt 2','dvavevff',0),
   (-2,'Ana','13123','cll falsa 456','drsfvadvg',0),
   (-1,'Nikolas','777','miHouse','nikolas@mail.com',0),
   (0,'','','','',0),
   (1,'CVDS@','3122','Calle 1','AAA@@HH.com',1),
   (2,'elma','','','elma@mail.com',1);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (3,'cvds','311','AK 99','cv.ds@mail.com',0),
   (4,'Eduardo','123sss456','Aqu8i','emailsk@email.com',0),
   (5,'client','018000','CLL 205','client@mail.com',0),
   (6,'elkin','89787676','colombia','elkin@patarrollo.co',0),
   (7,'benitocamelas','3042435','','benito@mail.com',0),
   (8,'Carlos','132141','','carlos@mail.com',0),
   (9,'alan brito','2312412','1241212','fasasca',0),
   (10,'diez','jkhfa89s','uihfa89sh','h89ass',0),
   (11,'natalita duran','21408991','toberin','41sffsa',0),
   (12,'julian gutierritos','72918724','Bosita PTE','fjkhas7h',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (13,'ricardito','723812','perdomo','fs89y98',0),
   (14,'fsdafdas','5346546','fdafsdsd','sdsdfafdsaf',0),
   (15,'Add','783738','Add.add@add','Add@add.add',0),
   (16,'lalolanda','219837','87921y6h','78268y721',0),
   (17,'guillermito','1234567','enrique segoviano','cecilio-cuba@yahoo.es',0),
   (18,'UsuariodePrueba','asaasas','asasasas','asasasas',0),
   (19,'Usuario2','hola','asasasa','asasasa',0),
   (20,'gabo','876764746','aracataca - mexico','gabriel@garcia.co',0),
   (21,'Pruebin','123123','enrique segoviano','sadasdas',0),
   (22,'otraVezO.o','123123','1231231','12312',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (23,'Ana','','1524 78th street apt 2','jfve@erjnv.waefc',0),
   (24,'santiago','1233','calle 100','preba@',0),
   (25,'asdasd','13132','Adasd','asdas@asdasd',0),
   (26,'testtest','213','gg','gg@gg',0),
   (27,'pruebaprueba','prueba','prueba','prueba@prueba',0),
   (28,'pruebaTest','pruebaTest','pruebaTest','pruebaTest',0),
   (29,'testtest','3174','Calle','gg@test',0),
   (30,'Ana','123121','cll 62 ','wvhneivjbn',0),
   (31,'Davila','321201230','calle 13','aqui la tengo para que..',0),
   (32,'Oscar Alba','6788952','KRA 109#34-C30','32correo@correo.com',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (33,'larfg2','larfg1','larfg1','larfg2',0),
   (34,'Ana','3472103673','1524 78th street apt 2','ana@mail.com',1),
   (35,'Daniel','6788952','KRA 109 #34 - C30','daniel@protonmail.com',0),
   (36,'prueburris','123','calle 123','123@mail.com',0),
   (50,'miguel','7736476756','espa�a','miguel.cervantes@lit.co',0),
   (68,'Spiderman','85662326','Queens','NoMeKieroIrSrStark@mail.com',0),
   (69,'ironman','31234564','torre star','ironman69@mail.us',0),
   (70,'gabo','84785787','cr 7 n 27','gabo@gaster.co',0),
   (88,'larfg1','larfg1','larfg1','larfg1',0),
   (90,'alan','87676','eeuu','alan@turing.com',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (91,'admin','admin','admin','admin',0),
   (92,'quenguan','123456','lksdfjalkfj','asdfgh',0),
   (100,'German','321371','calle','german.ospina',1),
   (101,'tbvrceds','gfbv','narnia','ghgbn@ayu',1),
   (102,'JAJAJAJA','PELOTUDO','LA CONCHA','DE LA LORA',0),
   (121,'dasda','121','121','asdas',0),
   (123,'Alguien','78945','Lado','a@a.com',0),
   (134,'tbvrceds','311111','narnia','gfghgbn@ayu',1),
   (190,'carlos','315551','carrera','car@acar',0),
   (200,'asdfgh','zxcvba','asdfgh','asdfgh@gmail.com',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (890,'nicolas','988748758','cr nula','nick@nicolas',0),
   (900,'carlos','carlos@carlos','carlos@carlos','carlos@cart',0),
   (901,'joseluis','5435435667','cr nula','joseluis@luisj',0),
   (998,'holi','30045435','','holi@mail.com',0),
   (999,'homero','300456787','','homero@mail.com',0),
   (1000,'carlos','53556357','calle er','er.mail@test',0),
   (1002,'ddd','fff','dsa','dds',0),
   (1003,'wqxwqsxz','wxws','wdxw','wxws',0),
   (1004,'','dsas','asffsa','asfsa',0),
   (1005,'dwsa','4312','rsasa','fdsaf',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (1007,'te amo marcelo','318','Carrera 14','marcelo@hotmail.com',0),
   (1111,'vjhvvhu','123','gigue','bkhbkjb',0),
   (1122,'CCCC','1111','QQQ','QQQQQ',0),
   (1212,'wwwwww','123123123','121ee3f2','edfwrfer',0),
   (1234,'edwin','tu outa madre','tu puta madre','sapo@sapo.com',0),
   (1515,'Amo a Walteros','4489489','csdnsj','sandan@kaka.com',0),
   (2222,'','','22','333',0),
   (3423,'fdgfdfd','324323','dfsdgd','sfdsdgfds',0),
   (5498,'Maxo','6556','calle 1','m@mail.co',0),
   (5555,'bebesita','21321','mam�','bebe.mail',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (5556,'crsitian','7897456456','cerquita a la u','crsitian@mail',0),
   (5664,'FDR','546464','calle 127','fdr@mail.com',0),
   (8588,'Eduardo','123456','Aqui','emails@email.com',0),
   (9485,'Carlos','234234','242234','fsdds',0),
   (10000,'Pruebastian','99999','0000','aaa@mail.com',1),
   (10002,'Pruebastian2','1111','1111','aaa11@mail.com',0),
   (10003,'Pruebastian2','1111','1111','aaa11l@mail.com',0),
   (10004,'lllll','safs','csasc','fascsa',0),
   (10005,'fkjassa','fasas','asacs','sadasd',0),
   (10202,'CXZV','41028421','FSASA','GASF',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (10909,'adn','57757982','av vandb','adn@cart.co',0),
   (12131,'dsadad','saxa','asxsax','xsx',0),
   (12323,'sdasd','wrwr','fdfsfsf','sdfdf',0),
   (12345,'natalia','54321','cll','n@gmail.com',0),
   (18484,'Harry','556','hog 144','har@mail.com',0),
   (21345,'quevivaelp','2349099','mevaallevarhastasucasa?','juanormejia@gmail.com',0),
   (23145,'Black tepest','2338900','Cr1#22a44','Dracula@quek.com',0),
   (31451,'goig','4535642','rastrga','rtauta',0),
   (34545,'eretre','4543453','gdgd','gfhfgg',0),
   (35354,'Ghxhc','35676','Chch','Xgcjx',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (40121,'Gon','11111111','','gon.friks@mail.com',0),
   (43443,'rewe','wewe','ewrrwe','weewew',0),
   (44444,'Alguien2','44444','44444','44444',0),
   (53453,'dfgdf','43654','gfdgdf','fdgdff',0),
   (54321,'Miguelin Pimpom','010101','P.Sherman,calle Wallaby,42,Sydney','bebeleanBrrr@hotmail.com',0),
   (54645,'eretre','4543453','gdgd','dfgd',0),
   (55445,'Nicolas','45545','rerr','rerr@gmail.com',0),
   (56155,'david','5454','cll 34','cQgmail.com',0),
   (65423,'JAJAJAJA','6523','PELOTUDO','LACONCHA',0),
   (85555,'J. Eduardo','7897545','Aqui','miemai@maiil.com',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (89327,'ekl=d','456767676','caelle 123','123@ma.co',0),
   (89797,'Maradona','867867643','avenida 53','diego10@gmail.com',0),
   (98347,'Bill Clinton','5436753','la casa blanca','leguinskyBJ@mail.com',0),
   (98765,'el pala','9999999999999','la monda','pala@mail.com',0),
   (100100,'Saladoman','453322','Cr1#22a43','vlok@quek.com',1),
   (100665,'gonzalo','65695','sadsad','adas',0),
   (101050,'Andres','3145914224','calle siempre viva','homero@simpson.fox',0),
   (101430,'ElBichoCr7','22501458','champions','elbicho@gmail.com',NULL),
   (102431,'David nadal','32323','tu casa','david@gmail.migente',0),
   (111111,'alv','6666','Doritos',' Doritos',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (123321,'Julian','235556','cll 777','julian@gmail.com',0),
   (123322,'Julian','235556','cll 777','juliansito@gmail.com',0),
   (123456,'testName','894981','testDir','test@mail.com',0),
   (123699,'Alex','14777','cll 1478852','al@mail.com',0),
   (123789,'CapAmerica','654897','calleBronx','Cap@escuela.co',0),
   (147852,'Ted','12365','cll 12233','ted@edu.co',0),
   (167889,'Juan','7899000','cll 64 #70','juan@yahoo.com',0),
   (223423,'Nicolas','42342342323','fdgsg','gsdggdfgfdfd',0),
   (233333,'andrea','333331','casa','andrea@mail.com',0),
   (266240,'Andres Davila','3197118807','Calle 54 #24A-30 13-201','flash@gmail.com',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (311867,'juan','31099','cr 1e 1f-98','juan@juan.co',0),
   (321817,'Rigoberto Uran','2338900','Cr1#22a44','RigoUran@Uran.com',0),
   (321987,'cdvs','556644','ak 45','cdvs@mail.com',0),
   (326453,'carla','123123','cra 1','sadfasd@a.com',0),
   (346774,'Nicolas ','347261','Ghjfhh','Hhngy',0),
   (456564,'prueba','5641238946512','asdasdasd','asdasfgdgfd@gmail.com',0),
   (456789,'Cristiano','43534643','cll 4353','cr7bicho@gmail.com',0),
   (468489,'amo a marcelo','','Colombia','msdms@gmf.com',0),
   (534534,'fssd','546456','gdsfgdh','gfhfdhf',0),
   (654321,'Dudu','101010','742 Evergreen Terrace','brrrrrrrrrAnuel@hotmail.com',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (672375,'Pepito Perez','32222','narnia3','pepitoperez@yahoo',0),
   (696969,'Daniel','326547','donde no roban','daniel@mail',0),
   (789102,'Paula','3452361','calle134#121-12','paula@gmail.com',0),
   (948894,'JuanitoCR7','938489','camiloalcah','camilo',0),
   (1000052,'fffa','safas','sxas','sfaasasx',0),
   (1000990,'adsadsads','dsadsa','safdsdf','fdsfdsdsfs',0),
   (1004119,'Miguel','8079373','saldskf�ls','aksjhfkjsdhf',0),
   (1012431,'David nadal','32323','tu casa','david12@gmail.migente',0),
   (1015484,'Nicop','301236','Av7cll127','onpc@mail.com',0),
   (1110111,'Indiana','312312312','calle 100','Indi@gmail.com',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (1110112,'Indiana','312312312','calle 100','Indiana@gmail.com',0),
   (1110113,'Indiana','312312312','calle 100','Indiss@gmail.com',0),
   (1110114,'Gaby','311234567','calle 200','bela@gmail.com',0),
   (1110119,'Lola','311234567','calle 200','loa5@gmail.com',0),
   (1213123,'sasaAA','12312312','DVVCDFVE','1EVERVERV',0),
   (1233333,'CVDS@','3122','Calle 1','AA@@HH.com',0),
   (1233456,'nicolas','3333333','coronavirus','coronavirus@gmail.com',1),
   (1234556,'Camilito','4675673','cll 32423','camilito@gmail.com',0),
   (1234567,'Harry','6543221','Cr 7','mag@mail.com',0),
   (1236969,'pupito','1236969','cra 123','pupito@gmail.com',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (1281928,'-1002','asasas','asasasas','qiwoqwioqw',0),
   (1445564,'Andres Davila','3197118807','el conjunto residencial ','llamame bebe',0),
   (1477744,'Eduardo','1111','cll 12 cr 27','pp@mai.com',0),
   (1478521,'Max','12365','cll 1478','mx@mail.com',0),
   (1478523,'Andrea','14774','calle 12','and@gmail.com',0),
   (1478822,'Thomas','3211','cll 9633','th@mail.com',0),
   (2107356,'tupapa','123456','aqui y alla','hola@mail.com',0),
   (2132121,'fafa','3290239','safa','972198',0),
   (2133213,'sdsdad','dsadasd','daddas','dads',0),
   (2137885,'Andres Gonzalez','3142486873','cll 145 # 48 - 06','anfegoca98@gmail.com',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (2147503,'German','321331','calle','germanOspina',1),
   (2148825,'Natalia','4521477','cll 163','nd@gmail.com',1),
   (2154421,'james','3208876511','calle24','jame@123',1),
   (2154422,'laura','3208876511','calle12','laura@123',0),
   (2157329,'johann','312097','calle wualavy','conavius.com',0),
   (2157333,'johan','312097','calle wualavy','coronavirus.com',0),
   (2157338,'johan','312097','calle wualavy','coronavius.com',0),
   (2158119,'Lola','311234567','calle 200','lila@gmail.com',1),
   (2159096,'Diego','11111111','miCasa','diego@mail.com',0),
   (2159820,'Camilin','3213214414','sffafsafasf','sfasfasfafssaf',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (2160176,'Prueba','Prueba','Prueba','Prueba',0),
   (2160666,'Javier L�pez','+57 1234','All�','hola2sa@mail.com',0),
   (2165711,'judibeC','judibeC','judibeC','judibeC',0),
   (2165713,'QWERTY','QWERTY','QWERTY','QWERTY',0),
   (2165720,'ASDF','ASDF','ASDF','ASDF',0),
   (2165780,'queseice','queseice','queseice','queseice',0),
   (2165781,'rozo','1','1','1',0),
   (2222225,'carlitos','2222222','2','22',0),
   (2313534,'Daniel','3032132132','calle falsa','daniel@asdfasfd',0),
   (2418907,'Alejandro','3156854826','cra 54 16','correo@gmail.com',NULL);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (3146879,'Camilo Rincon','8527415963','direccion','email2',1),
   (3158119,'Lola','311234567','calle 200','loop@gmail.com',0),
   (3158200,'Lola','311234567','calle 200','looping@gmail.com',0),
   (3243243,'eretre','2342343','feasfsdf','sfddfaf',0),
   (3418107,'Alejandro','3156854826','cra 54 16','loquese@gmail.com',NULL),
   (3418108,'Alejandro','3156854826','cra 54 16','loquesea@gmail.com',NULL),
   (3698521,'Lucas','12456','cll 2147','l@gmail.com',0),
   (5498498,'Maxo','444548','cll 345 cr 122','max@mail.com',0),
   (6444898,'Federico','49849489','cll 123','fede@mail.com',0),
   (9819381,'Santiago','320925','Kr 111A','am@sasas',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (10089010,'luis','1929288','cr 1 f','lui@lui.es',0),
   (10145555,'Camilito','1234555','defe','defe@gmail.com',0),
   (10254862,'Jose','1852832','No sea sapo','goku@gmail.com',0),
   (12345566,'fiona','cl 3343 56','456789','xherk@gmail.com',0),
   (12345678,'Peter','87654321','cll 9876','pet@gmail.com',0),
   (12346666,'Felipe M','323243534','Cra #14a','felipeM@gmail.com',0),
   (13131313,'perreo','169','54545454','asjasss',0),
   (13214654,'juan','13241654','prueba','prueba@',0),
   (13691369,'bambaromon','sapo','y rana, y este','pa slivana',0),
   (14141414,'Pedro el escamoso','5436753','la olla','pirulin@mail.com',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (14788552,'Constantine','9874125','Cr 34','con@mail.com',0),
   (21377885,'Andres Gonzalez','3142486873','cll 145 # 40 -06','anfegoca@gmail.com',0),
   (22222223,'sadsd','2222','22','2',0),
   (22342323,'Juan','wqeqwq','dfksdfm','nicola@gmail.com',0),
   (23423423,'edwin','12345678','eferfdf 123','dafsd@sdfsdf.com',0),
   (23568522,'H. P. Lovecraft','4484312','EEUU','Cthulhu@mail.com',0),
   (43533443,'ssdffsd','dsfsd','sddfsd','sdfdsds',0),
   (45363456,'pala','7777','calle','daed@gom.co',0),
   (55555556,'Otro Gatao','55555556','5555556','555555556',0),
   (85274153,'Camilo Rincon','8527415963','direccion','email',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (90182912,'-1002','asasas','asasasas','nuaosnqo',0),
   (100090000,'Felipe Jimenez','3109807894','Cra #14','felipe@gmail.com',0),
   (102465867,'Andres','43214354','calle 878 #856-45','andres@mail.com',0),
   (107568983,'laura','32111433','adcfafa','cdrr',0),
   (123456789,'Talos','6662945','svgndr 69','talos@mail.com',0),
   (145522144,'pedro','44445554','calle 1','pepe@hotmail.com',0),
   (147885222,'Pedro','23336','av 1448484','p@mail.com',0),
   (201033333,'edward2910','123123','123','1123@gmail.com',0),
   (215298801,'Name','30000','Calle','mail@email.co',NULL),
   (215298802,'Name','30000','Calle','mail2@email.co',NULL);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (215298803,'Name','30000','Calle','mail3@email.co',NULL),
   (447744114,'Roberto','321456','cll 123 cr 54','rob@mail.com',0),
   (515616515,'valentina alvarado','51561561561','lkhbiubuy bv','laura@knmvoimnoin',NULL),
   (756756756,'ssdffsd','dsfsd','sddfsd','gfdgsggdf',0),
   (890239804,'pala','3792634','calle 123','elcorreo@gmail.com',0),
   (987654321,'Yarit Miguel Fuquene Bambaro','3207101690','Cr 19','bambaro@gmail.com',0),
   (1000575071,'Miguel Fuquene','3207101690','villas','jorgito@gmail.com',0),
   (1000596941,'Daniel','000000000','ejemplo','ejemplo@ejemplo.com',0),
   (1000713817,'larfg','larfg','larfg','larfg',0),
   (1003815214,'carlos','3124778482','calle 35 #4a-34','carlos.orduz@mail.escuelaing.edu.co',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (1004123456,'prueba','5641238946512','asdasdasd','asdasd@gmail.com',0),
   (1004823074,'Ivan Camilo R','231321231','scascascc','papucho@gmail.com',0),
   (1007380209,'Juan','','kskd','jsdijsa@idjs.com',0),
   (1010021087,'Mina','3232058304','Calle 123 # 45 - 06','juan.mina@mail.escuelaing.edu.co',0),
   (1010101010,'a','1','a','a',0),
   (1010127129,'Santiago','320925','Kr 111A','santiago@martinez.com',0),
   (1014297320,'Eduard Arias','123456789','Av. siempre_viva # 123','eduard@mail.com',0),
   (1014308590,'Nicolas','13444','dfksdfm','nicolas@gmail.com',0),
   (1014308690,'Nicolas','wqeqwq','ewewe','ewwewe@gmail.com',0),
   (1019139154,'Daniel','3059231873','Carrera 123','d.mejia98@gmail.com',1);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (1019151395,'Andres','3174414419','cacacacacaca','andres.calderon-o',0),
   (1020831979,'Johann','3108868329','Usaquen','profiledx16@hotmail.com',0),
   (1026585664,'Oscar Alba','6788952','KRA 109#34-C30','oscar@hotmail.com',0),
   (1075686806,'Jonathan Paez','3228536540','Cra6#3-54','jfpazto@hotmail.com',0),
   (1121212121,'fefef','1','32323','feefe@fefe.com',0),
   (1234567765,'Jejeje','123456789','calasdasd','qweorurewgy',1),
   (1234567890,'Luis Amaya','6431589','calle 1 # 2 - 3','luis.amaya@mail.escuelaing.edu.co',0),
   (1234567899,'Camila','123456','Calle 456','cami@gmail.com',0),
   (1561123156,'dios esta aqui','300000000','jerusalen','dios@gmial.com',0),
   (2342348974,'Orlando','2342343','Calle','orlando.gelves',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (4420592789,'Edwin pirobo','5465465','Calle popo ','henry@pirobo.com',0),
   (5648618561,'6128561456156148651','395686546528484956','�lnvolikewkjvbiuegbiuyfv','nose@mail.com',NULL),
   (9876543210,'Fuquene','Solo trabajo','Cr 16 A # 23 - 58 SF','fuquene@gmail.com',0),
   (10191391541,'Daniel','123345','Calle 12','daniel@hotmail.com',0),
   (10191391542,'Daniel2','1234','Calle 14','daniel2@hotmail.com',0),
   (10999900096,'Rafael','101991929190','None','Rafael.pombo@lit',0),
   (10999900099,'William','101991929190','None','William.shakespiare@uk',0),
   (12337548347,'djkdfhjkdfsdfsjhdj','39842983232489','dkjdsfjdfsjksdf','jdjdsfhkds',0),
   (34444444444,'aquiestoy','sadsadsad','sadadasda','asdasdasdsa',0),
   (65456465465,'DAAAAAAAAAA','465456','HDFLKJHWKL','LSAKDJALKF',0);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (66666666666,'Loooooooooool','8888888','77','7',0),
   (99999899998,'Funcionaequisdeequisde','hee heee','holi','asdasda',0),
   (100000000011,'pruebaaaaa','321323223123','pruebabababa','dsdffdsfdfsdfds',0),
   (117117117771,'123','117117117771','assdkjljhj','jlkhjkgfgdfsdas',0),
   (123456633333,'Jaime Duque','12','ggg','gggg',0),
   (123654789987,'prueba3','123654789987','123654789987','123654789987',0),
   (222222222222,'alguito','2222222222','22222222','2222222',0),
   (234234234234,'werwerwer','2342534562345','dd f egergery wertert','qweqwe@adasd.com',0),
   (981479832174,'hola','321','143r','142@131',0),
   (2170558876875,'Valalvarado','12564185615618564','knvoiwnv noiufniubfliuewb','knoicnoiuh983y98yh8nhvbiub@',NULL);
INSERT INTO bdprueba.VI_CLIENTES (documento,nombre,telefono,direccion,email,vetado) VALUES
   (3333333333333,'ESOOOO','asdsadsad','asdasdsad','asdasdads',0),
   (7777777777777,'veggeta777','ehh veggeta','eres el mejor','youtuber',0),
   (1111111111111111,'Pepito Perez','1111111','jsdsjd','skopk@gmail.com',0),
   (111111111111111111,'32131','12312','312321','312312',0),
   (111111111111111112,'pel�n','999','69','kjhjk',0),
   (111111111111111113,'AAaaaaa ','55','BBBBBBBBB','sapotruchay@estepasu.ch',0);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (3,3,'2020-10-20','2020-12-25',NULL),
   (3,3,'2020-10-20','2020-12-25',NULL),
   (3,3,'2020-10-20','2020-12-25',NULL),
   (3,3,'2020-10-20','2020-12-25',NULL),
   (0,1,'2020-02-20','2021-02-21',NULL),
   (54321,489212,'2012-10-10','2017-12-12','prueba'),
   (3,3,'2010-12-25','2010-12-25',NULL),
   (-33,2,'3999-01-11','4090-01-30',NULL),
   (-33,2,'3999-01-11','4090-01-30',NULL),
   (-33,2,'3999-01-11','4090-01-30',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (-33,2,'3999-01-11','4090-01-30',NULL),
   (998,2,'2020-03-11','2020-03-12',NULL),
   (998,2,'2020-03-11','2020-03-12',NULL),
   (998,2,'2020-03-11','2020-03-12',NULL),
   (998,2,'2020-03-11','2020-03-12',NULL),
   (998,2,'2020-03-11','2020-03-12',NULL),
   (6,2,'2020-03-12','2020-05-12',NULL),
   (6,3,'2020-03-12','2020-05-12',NULL),
   (6,3,'2020-03-12','2020-05-12',NULL),
   (6,3,'2020-03-12','2020-05-12',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (6,3,'2020-03-12','2020-05-12',NULL),
   (6,3,'2020-03-12','2020-05-12',NULL),
   (6,3,'2020-03-12','2020-05-12',NULL),
   (6,3,'2020-03-12','2020-05-12',NULL),
   (5,1,'2019-03-12','2019-04-12',NULL),
   (5,1,'2019-03-12','2019-04-12',NULL),
   (21377885,4,'2020-03-13','2020-04-13',NULL),
   (4,2,'2019-09-28','2019-10-28',NULL),
   (101430,1,'3999-01-11','4000-01-30',NULL),
   (101430,1,'3999-01-11','4000-01-30',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (101430,1,'3999-01-11','4000-01-30',NULL),
   (101430,1,'3999-01-11','4000-01-30',NULL),
   (101430,1,'3999-01-11','4000-01-30',NULL),
   (101430,1,'3999-01-11','4000-01-30',NULL),
   (101430,1,'3999-01-11','4000-01-30',NULL),
   (-33,2,'3999-01-11','4090-01-30',NULL),
   (-33,2,'3999-01-11','4090-01-30',NULL),
   (-33,2,'3999-01-11','4090-01-30',NULL),
   (-33,2,'3999-01-11','4090-01-30',NULL),
   (-33,2,'3999-01-11','4090-01-30',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (-33,2,'3999-01-11','4090-01-30',NULL),
   (-33,2,'3999-01-11','4090-01-30',NULL),
   (-33,2,'3999-01-11','4090-01-30',NULL),
   (-33,2,'3999-01-11','4090-01-30',NULL),
   (-33,2,'3999-01-11','4090-01-30',NULL),
   (9,3,'2019-09-28','2019-11-08',NULL),
   (9,3,'2019-09-28','2019-11-08',NULL),
   (-33,2,'1998-12-31','1999-12-31',NULL),
   (-33,2,'3999-01-11','4090-01-30',NULL),
   (-33,2,'3999-01-11','4090-01-30',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (-33,2,'3999-01-11','4090-01-30',NULL),
   (2157329,99,'2020-03-20','2020-03-25',NULL),
   (2,1,'2020-09-28','2020-09-28',NULL),
   (2,1,'2020-09-28','2020-09-28',NULL),
   (2,1,'2020-09-28','2020-09-28',NULL),
   (2,1,'2020-09-28','2020-09-28',NULL),
   (2,1,'2020-09-28','2020-09-28',NULL),
   (2,1,'2020-09-28','2020-09-28',NULL),
   (2,1,'2020-09-28','2020-09-28',NULL),
   (4,2,'2019-09-28','2019-10-28',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (4,2,'2019-09-28','2019-10-28',NULL),
   (4,2,'2019-09-28','2019-10-28',NULL),
   (4,2,'2019-09-28','2019-10-28',NULL),
   (6,2,'2019-09-28','2019-10-28',NULL),
   (6,2,'2019-09-28','2019-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2019-09-28','2019-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (6,2,'2019-09-28','2019-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2019-09-28','2019-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2019-09-28','2019-10-28',NULL),
   (6,2,'2019-09-28','2019-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2019-09-28','2019-10-28',NULL),
   (6,2,'2019-09-28','2019-10-28',NULL),
   (6,2,'2019-09-28','2019-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2021-09-28','2021-10-28',NULL),
   (6,2,'2019-09-28','2019-10-28',NULL),
   (6,2,'2022-09-28','2022-10-28',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (2137885,111111,'2020-03-23','2020-04-07',NULL),
   (10999900099,1,'2020-03-23','2020-03-28',NULL),
   (34444444444,1,'2020-03-23','2020-04-02',NULL),
   (-456,1,'2020-03-23','2020-03-28',NULL),
   (99999899998,1,'2020-03-23','2022-12-18',NULL),
   (6,2,'2020-03-23','2020-03-26',NULL),
   (6,2,'2020-03-23','2020-04-02',NULL),
   (6,1,'2020-03-23','2020-03-24',NULL),
   (981479832174,1,'2020-03-23','2020-04-02',NULL),
   (2137885,8,'2020-03-23','2020-05-12',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (111111111111111111,1,'2020-03-23','2020-03-28',NULL),
   (2137885,2137885,'2020-03-23','2020-03-28',NULL),
   (100000000011,234567,'2020-03-23','2020-03-27',NULL),
   (2137885,100,'2020-03-23','2020-04-22',NULL),
   (6,3,'2020-03-12','2020-05-12',NULL),
   (12337548347,7,'2020-03-24','2020-03-29',NULL),
   (6,3,'2020-03-12','2020-05-12',NULL),
   (2157329,99,'2020-03-27','2020-04-01',NULL),
   (2157333,99,'2020-03-27','2020-04-01',NULL),
   (2157333,99,'2020-03-27','2020-04-01',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (2157333,99,'2020-03-27','2020-04-01',NULL),
   (2157333,99,'2020-03-27','2020-04-01',NULL),
   (2157333,99,'2020-03-27','2020-04-01',NULL),
   (2157333,99,'2020-03-27','2020-04-01',NULL),
   (2157333,99,'2020-03-27','2020-04-01',NULL),
   (2,6,'3920-04-27','3920-04-28',NULL),
   (2,6,'1969-12-31','1969-12-31',NULL),
   (2,6,'1969-12-31','1969-12-31',NULL),
   (2,6,'2020-03-27','2020-03-28',NULL),
   (2,6,'3920-04-27','3920-04-28',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (2,6,'3920-04-27','3920-04-28',NULL),
   (2157333,99,'2020-03-27','2020-04-01',NULL),
   (2157333,99,'2020-03-27','2020-04-01',NULL),
   (2157333,99,'2020-03-27','2020-04-01',NULL),
   (2157333,99,'2020-03-27','2020-04-01',NULL),
   (2157333,99,'2020-03-27','2020-04-01',NULL),
   (2157333,99,'2020-03-27','2020-04-01',NULL),
   (2157333,99,'2020-03-27','2020-04-01',NULL),
   (2157333,99,'2020-03-27','2020-04-01',NULL),
   (2157333,99,'2020-03-27','2020-04-01',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (2157333,99,'2020-03-27','2020-04-01',NULL),
   (2157333,99,'2020-03-27','2020-04-01',NULL),
   (55555556,1,'2020-03-27','2020-04-01',NULL),
   (55555556,1,'2020-03-27','2020-04-01',NULL),
   (101430,1,'3999-01-11','4000-01-30',NULL),
   (101430,1,'3999-01-11','4000-01-30',NULL),
   (101430,1,'3999-01-11','4000-01-30',NULL),
   (101430,1,'3999-01-11','4000-01-30',NULL),
   (14141414,5,'2020-04-25','2020-04-25',NULL),
   (1478521,4,'2020-09-24','2020-09-25',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (1478521,3,'2020-09-24','2020-09-25',NULL),
   (1478521,3,'2020-09-24','2020-09-25',NULL),
   (1478521,3,'2020-09-24','2020-09-25',NULL),
   (1478521,3,'2020-09-24','2020-09-25',NULL),
   (1478521,3,'2020-09-24','2020-09-25',NULL),
   (1478521,3,'2020-09-24','2020-09-25',NULL),
   (1478521,3,'2020-09-24','2020-09-25',NULL),
   (1478521,3,'2020-09-24','2020-09-25',NULL),
   (1478521,4,'2020-09-24','2020-09-25',NULL),
   (1478521,4,'2020-09-24','2020-09-25',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (1478521,4,'2020-09-24','2020-09-25',NULL),
   (1478521,4,'2020-09-24','2020-09-25',NULL),
   (1478521,4,'2020-09-24','2020-09-25',NULL),
   (1478521,4,'2020-09-24','2020-09-25',NULL),
   (1478521,4,'2020-09-24','2020-09-25',NULL),
   (1478521,4,'2020-09-24','2020-09-25',NULL),
   (1478521,4,'2020-09-24','2020-09-25',NULL),
   (1478521,4,'2020-09-24','2020-09-25',NULL),
   (1478521,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-705,4,'2020-09-24','2020-09-25',NULL),
   (-703,4,'2020-09-24','2020-09-25',NULL),
   (-703,4,'2020-09-25','2020-09-26',NULL),
   (-703,4,'2020-09-25','2020-09-26',NULL),
   (-700,4,'2020-09-25','2020-09-26',NULL),
   (-700,99,'2020-09-26','2021-09-26',NULL),
   (-703,99,'2020-09-26','2021-09-26',NULL),
   (1478521,3,'2020-09-24','2020-09-25',NULL),
   (1478521,3,'2020-09-24','2020-09-25',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (1478521,3,'2020-09-24','2020-09-25',NULL),
   (1478521,3,'2020-09-24','2020-09-25',NULL),
   (1478521,3,'2020-09-24','2020-09-25',NULL),
   (6,1,'2020-09-18','2020-10-29',NULL),
   (4,2,'2020-08-10','2020-09-10',NULL),
   (4,2,'2020-08-10','2020-09-10',NULL),
   (4,2,'2020-11-10','2020-12-10',NULL),
   (4,2,'2020-11-10','2020-12-10',NULL),
   (4,2,'2020-11-10','2020-12-10',NULL),
   (4,2,'2020-11-10','2020-12-10',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (4,2,'2020-11-10','2020-12-10',NULL),
   (4,2,'2020-11-10','2020-12-10',NULL),
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (1,2,'2022-09-28','2022-10-28',NULL),
   (1,2,'2022-09-28','2022-10-28',NULL),
   (5,2,'1998-05-05','2000-06-05',NULL),
   (1,2,'2022-09-28','2022-10-28',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (5,2,'1998-05-05','2000-06-05',NULL),
   (1,2,'2022-09-28','2022-10-28',NULL),
   (1,2,'2022-09-28','2022-10-28',NULL),
   (1,2,'2022-09-28','2022-10-28',NULL),
   (1,2,'2022-09-28','2022-10-28',NULL),
   (1,2,'2022-09-28','2022-10-28',NULL),
   (5,2,'1998-05-05','2000-06-05',NULL),
   (5,2,'1998-05-05','2000-06-05',NULL),
   (5,2,'1998-05-05','2000-06-05',NULL),
   (1,2,'2022-09-28','2022-10-28',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (1,2,'2022-09-28','2022-10-28',NULL),
   (1014297320,102,'2020-09-28','2020-10-28',NULL),
   (4,2,'2020-11-10','2020-12-10',NULL),
   (-700,4,'2020-09-25','2020-09-26',NULL),
   (69,4,'3914-09-22','3914-09-22',NULL),
   (69,4,'3914-09-22','3914-09-22',NULL),
   (15,111111,'2019-12-24','2019-12-25',NULL),
   (15,111111,'2020-12-24','2020-12-25',NULL),
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (-706,4,'2013-05-05','2013-06-05',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (2154421,93,'2020-12-24','2020-12-25',NULL),
   (2154422,92,'2020-12-24','2020-12-25',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (4,5,'2019-10-04','2019-10-11',NULL),
   (4,1,'2019-03-12','2019-04-12',NULL),
   (3,3,'2020-10-20','2020-12-25',NULL),
   (1,2,'2022-09-28','2022-10-28',NULL),
   (1,2,'2022-09-28','2022-10-28',NULL),
   (1,2,'2022-09-28','2022-10-28',NULL),
   (2160666,4,'2020-10-02','2020-10-03',NULL),
   (2160666,4,'2020-10-02','2020-10-03',NULL),
   (4,5,'2019-10-04','2019-10-11',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (5,1,'2019-03-12','2019-04-12',NULL),
   (3,2,'2020-09-20','2021-08-26',NULL),
   (3,2,'2020-09-20','2021-08-26',NULL),
   (3,2,'2020-09-20','2021-08-26',NULL),
   (1,1,'2020-10-03','2020-10-03',NULL),
   (1,1,'2020-10-03','2020-10-03',NULL),
   (1,1,'2020-10-03','2020-10-03',NULL),
   (5,2,'1998-05-05','2000-06-05',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (5,2,'1998-05-05','2000-06-05',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (6,1,'2020-09-18','2020-10-29',NULL),
   (6,1,'2020-09-18','2020-10-29',NULL),
   (6,1,'2020-09-18','2020-10-29',NULL),
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (1,1,'2020-10-05','2020-10-05',NULL),
   (1,1,'2020-10-05','2020-10-05',NULL),
   (1,2,'2022-09-28','2022-10-28',NULL),
   (5,2,'1998-05-05','2000-06-05',NULL),
   (1014297320,102,'2020-09-28','2020-10-28',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (4,2,'2020-11-10','2020-12-10',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (5,1,'2019-03-12','2019-04-12',NULL),
   (5,1,'2019-03-12','2019-04-12',NULL),
   (5,1,'2019-03-12','2019-04-12',NULL),
   (5,1,'2019-03-12','2019-04-12',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (5,1,'2019-03-12','2019-04-12',NULL),
   (5,1,'2019-03-12','2019-04-12',NULL),
   (5,1,'2019-03-12','2019-04-12',NULL),
   (5,1,'2019-03-12','2019-04-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-11',NULL),
   (1,1,'2020-10-07','2020-10-11',NULL),
   (1,1,'2020-10-07','2020-10-11',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (-1000,4,'2020-10-07','2020-12-12',NULL),
   (-1000,2,'2020-10-07','2020-12-12',NULL),
   (-1001,4,'2020-10-07','2020-10-12',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (-1001,6,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (-1001,4,'2020-10-07','2020-10-26',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (-1004,5,'2020-10-20','2020-12-25',NULL),
   (-1004,4,'3920-11-27','3921-01-27',NULL),
   (-1004,6,'2020-10-20','2020-12-26',NULL),
   (10,9,'2020-09-04','2020-10-04',NULL),
   (5,1,'2020-10-04','2020-11-04',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (2158119,10,'2020-10-09','2020-10-14',NULL),
   (2158119,7,'2020-10-10','2020-10-20',NULL),
   (2158119,8,'2020-10-10','2020-10-20',NULL),
   (2158119,9,'2020-10-10','2020-10-20',NULL),
   (2158119,15,'2020-10-11','2020-10-26',NULL),
   (5,1,'2019-03-12','2019-04-12',NULL),
   (2158119,11,'2020-10-10','2020-10-20',NULL),
   (2158119,12,'2020-10-10','2020-10-20',NULL),
   (2158119,13,'2020-10-10','2020-10-20',NULL),
   (2158119,14,'2020-10-10','2020-10-20',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (5,1,'2019-03-12','2019-04-12',NULL),
   (5,1,'2019-03-12','2019-04-12',NULL),
   (5,1,'2019-03-12','2019-04-12',NULL),
   (5,1,'2019-03-12','2019-04-12',NULL),
   (2158119,100,'2020-10-10','2020-10-20',NULL),
   (2158119,10,'2020-10-09','2020-10-14',NULL),
   (2158119,101,'2020-10-10','2020-10-20',NULL),
   (2158119,103,'2020-10-10','2020-10-20',NULL),
   (2158119,346,'2020-10-10','2020-10-20',NULL),
   (2158119,366,'2020-10-10','2020-10-20',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (2158119,1001,'2020-10-10','2020-10-20',NULL),
   (2158119,1010,'2020-10-10','2020-10-20',NULL),
   (2158119,1234,'2020-10-10','2020-10-20',NULL),
   (2158119,1444,'2020-10-10','2020-10-20',NULL),
   (5,1,'2019-03-12','2019-04-12',NULL),
   (5,1,'2019-03-12','2019-04-12',NULL),
   (5,1,'2019-03-12','2019-04-12',NULL),
   (2158119,2020,'2020-10-10','2020-10-20',NULL),
   (2158119,2022,'2020-10-10','2020-10-20',NULL),
   (2158119,2023,'2020-10-10','2020-10-20',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (2158119,2025,'2020-10-10','2020-10-20',NULL),
   (2158119,2026,'2020-10-10','2020-10-20',NULL),
   (2158119,2027,'2020-10-10','2020-10-20',NULL),
   (2158119,2121,'2020-10-10','2020-10-20',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (2158119,2122,'2020-10-10','2020-10-20',NULL),
   (2158119,10,'2020-10-09','2020-10-14',NULL),
   (1,2155,'2020-10-09','2020-10-19',NULL),
   (987654321,3000,'2020-10-09','2020-10-11',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (13691369,20000,'2020-10-09','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (1445564,12345,'2020-10-10','2020-10-13',NULL),
   (2154421,1,'2020-10-10','2020-10-20',NULL),
   (2154421,1,'2020-10-10','2020-10-20',NULL),
   (2154421,1,'2020-10-10','2020-10-20',NULL),
   (2154421,1,'2020-10-10','2020-10-20',NULL),
   (2154421,1,'2020-10-10','2020-10-20',NULL),
   (2154421,1,'2020-10-10','2020-10-20',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (1004823074,102,'2020-10-10','2020-10-26',NULL),
   (1004823074,4,'2020-10-07','2020-10-08',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (1004823074,4,'2020-10-07','2020-10-09',NULL),
   (1004823074,4,'2020-10-06','2020-10-07',NULL),
   (1004823074,5,'2020-10-06','2020-10-07',NULL),
   (1004823074,1,'2020-10-05','2020-10-06',NULL),
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (1,1,'2020-10-07','2020-10-12',NULL),
   (-706,4,'2013-05-05','2013-06-05',NULL),
   (2,2,'2020-10-11','2020-10-13',NULL),
   (2,3,'2020-10-11','2020-10-09',NULL),
   (1004823074,101,'2020-10-11','2020-10-17',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (2,2,'2020-10-11','2020-10-09',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (1,2,'2020-10-11','2020-09-21',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (1,3,'2020-10-11','2020-09-20',NULL),
   (1,4,'2020-10-11','2020-09-19',NULL),
   (1,5,'2020-10-11','2020-09-16',NULL),
   (-30001,1,'2020-10-11','2020-09-21',NULL),
   (-30002,1,'2020-10-11','2020-10-06',NULL),
   (-30001,2,'2020-10-11','2020-08-22',NULL),
   (-30001,3,'2020-10-11','2020-10-10',NULL),
   (-132133,3,'2020-10-11','2020-09-16',NULL),
   (-3003,1,'2020-10-11','2020-10-09',NULL),
   (-3003,2,'2020-10-11','2020-10-06',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (-2001,2,'2020-10-11','2021-04-29',NULL),
   (-2000,1,'2020-10-11','2020-10-06',NULL),
   (-30001,4,'2020-10-11','2020-09-15',NULL),
   (-800,2,'2020-10-11','2020-09-16',NULL),
   (-3000,12,'2020-10-11','2019-05-30',NULL),
   (-3000,15,'2020-10-11','2020-10-14',NULL),
   (-3000,15,'2020-10-11','2020-10-19',NULL),
   (-3000,2,'2020-10-11','2020-11-30',NULL),
   (-30002,5,'2020-10-11','2020-11-05',NULL),
   (-30001,15,'2020-10-11','2020-11-16',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (1004823074,102,'2020-10-11','2021-01-20',NULL),
   (1004823074,102,'2020-10-11','2021-01-30',NULL),
   (-132134,2,'2020-10-11','2020-10-26',NULL),
   (2160666,102,'2020-10-11','2020-10-31',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (1004823074,102,'2020-10-12','2020-10-27',NULL),
   (-706,4,'2013-05-05','2013-06-05',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (1,12,'2020-09-02','2020-10-29',NULL),
   (1,1,'2020-10-13','2020-10-13',NULL),
   (-3003,3,'2020-10-15','2020-10-19',NULL),
   (-3003,3,'2020-10-15','2020-10-19',NULL),
   (2158119,16,'2020-10-11','2020-10-26',NULL),
   (2158119,3000,'2020-10-10','2020-10-20',NULL),
   (2158119,16,'2020-10-11','2020-10-26',NULL),
   (2158119,9999,'2020-10-10','2020-10-20',NULL),
   (-3003,3,'2020-10-15','2020-10-20',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (1,1,'2020-10-07','2020-10-12',NULL),
   (1004823074,100,'2020-10-15','2020-10-30',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (-1874919424,12,'2020-10-15','2020-10-17',NULL),
   (-123456789,12,'2020-10-15','2020-10-17',NULL),
   (-1874919424,3,'2020-10-15','2020-10-23',NULL),
   (-1010,1,'2020-10-15','2020-10-25',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (-999999,1234,'2020-10-15','2020-10-17',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (1561123156,23456,'2020-10-22','2020-10-27',NULL),
   (2158119,16,'2020-10-11','2020-10-26',NULL),
   (2158119,7,'2020-10-10','2020-10-20',NULL),
   (24,1,'2020-10-22','2020-10-25',NULL),
   (2158119,16,'2020-10-11','2020-10-26',NULL),
   (2158119,7,'2020-10-10','2020-10-20',NULL),
   (2158119,16,'2020-10-11','2020-10-26',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (2158119,7,'2020-10-10','2020-10-20',NULL),
   (-132144,1,'2020-10-22','2020-11-01',NULL),
   (5,1,'2020-03-12','2020-04-12',NULL),
   (5,1,'2020-03-12','2020-04-12',NULL),
   (5,1,'2020-03-12','2020-04-12',NULL),
   (5,1,'2020-03-12','2020-04-12',NULL),
   (5,1,'2020-03-12','2020-04-12',NULL),
   (5,1,'2020-03-12','2020-04-12',NULL),
   (5,1,'2020-03-12','2020-04-12',NULL),
   (1004823074,103,'2020-10-23','2020-11-08',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (1004823074,100,'2020-11-11','2020-11-26',NULL),
   (-1874919427,3,'2020-11-18','2020-11-20',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (1478521,4,'2020-09-24','2020-09-25',NULL),
   (1478521,4,'2020-09-24','2020-09-25',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (1478521,4,'2020-09-24','2020-09-25',NULL),
   (321817,4,'2020-09-24','2020-09-25',NULL),
   (321817,4,'2020-09-24','2020-09-25',NULL),
   (321817,4,'2021-03-14','2021-03-28',NULL),
   (321817,4,'2021-03-14','2021-03-28',NULL),
   (4,2,'2021-03-15','2021-03-17',NULL),
   (4,2,'2021-03-15','2021-03-17',NULL),
   (9819381,4,'2021-03-15','2021-03-18',NULL),
   (346774,1,'2021-03-15','2021-03-18',NULL),
   (4,2,'2021-03-15','2021-03-17',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (4,2,'2021-03-15','2021-03-17',NULL),
   (4,2,'2021-03-15','2021-03-17',NULL),
   (4,2,'2021-03-15','2021-03-17',NULL),
   (4,2,'2021-03-15','2021-03-17',NULL),
   (321817,4,'2021-03-14','2021-03-28',NULL),
   (4,2,'2021-03-17','2021-04-17',NULL),
   (4,2,'2021-03-17','2021-04-17',NULL),
   (4,2,'2021-03-15','2021-03-17',NULL),
   (4,2,'2021-03-15','2021-03-17',NULL),
   (4,2,'2021-03-15','2021-03-17',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (4,2,'2021-03-15','2021-03-17',NULL),
   (4,2,'2021-03-15','2021-03-17',NULL),
   (4,2,'2021-03-15','2021-03-17',NULL),
   (4,2,'2021-03-15','2021-03-17',NULL),
   (4,5,'2019-10-04','2019-10-11',NULL),
   (98347,2143369,'2021-03-19','2021-03-19',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (1019139154,18,'2021-03-23','2021-04-02',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (1019139154,1,'2021-03-24','2021-03-29',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (1019139154,1,'2021-03-24','2021-03-29',NULL),
   (1019139154,1,'2021-03-24','2021-03-29',NULL),
   (1234567765,17,'2021-03-26','2021-03-30',NULL),
   (98347,2143369,'2021-03-26','2021-03-26',NULL),
   (4,2,'2021-03-17','2021-04-17',NULL),
   (4,2,'2021-03-17','2021-04-17',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (4,2,'2021-03-17','2021-04-17',NULL),
   (4,2,'2021-03-17','2021-04-17',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (4,2,'2021-03-17','2021-04-17',NULL),
   (4,2,'2021-03-17','2021-04-17',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (1019139154,1,'2021-03-28','2021-04-02',NULL),
   (1019139154,1,'2021-03-28','2021-04-02',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (-132143,12,'2021-03-28','2054-12-12',NULL),
   (-132143,12,'2021-03-28','2054-12-12',NULL),
   (-132143,12,'2021-03-28','2054-12-12',NULL),
   (-132143,1,'2021-03-28','2021-03-29',NULL),
   (-132143,1,'2021-03-28','2021-03-29',NULL),
   (-132143,12,'2021-03-28','2021-04-09',NULL),
   (-132143,12,'2021-03-28','2021-04-10',NULL),
   (-999999,1,'2021-03-28','2021-04-09',NULL),
   (-999999,1,'2021-03-28','2021-04-09',NULL),
   (-999999,1,'2021-03-28','2021-04-09',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (-132143,2,'2021-03-28','2021-04-10',NULL),
   (-132143,2,'2021-03-28','2021-04-10',NULL),
   (-132143,12,'2021-03-28','2021-04-10',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2020-10-07','2020-10-12',NULL),
   (-1874919426,12,'2021-03-28','2021-04-18',NULL),
   (-1874919426,12,'2021-03-28','2021-04-18',NULL),
   (-132143,12,'2021-03-28','2021-04-09',NULL),
   (-132143,12,'2021-03-28','2021-04-09',NULL),
   (-132143,15,'2021-03-28','2024-04-12',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (-132143,15,'2021-03-28','2024-04-12',NULL),
   (-132143,1,'2021-03-28','2054-12-12',NULL),
   (-999999,1,'2021-03-28','2021-03-29',NULL),
   (-999999,1,'2021-03-28','2021-03-29',NULL),
   (-999999,1,'2021-03-28','2024-10-30',NULL),
   (-999999,1,'2021-03-28','2024-10-30',NULL),
   (-999999,1,'2021-03-28','2380-06-26',NULL),
   (-999999,1,'2021-03-28','2380-06-26',NULL),
   (-132144,12,'2021-03-28','2021-04-09',NULL),
   (1019139154,1,'2021-03-28','2021-04-02',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (1019139154,1,'2021-03-28','2021-04-02',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (999,102,'2019-02-01','2019-02-06',NULL),
   (1,1,'2021-02-07','2021-02-12',NULL),
   (-123456789,4,'2021-04-06','2021-04-11',NULL),
   (-123456789,4,'2021-04-06','2021-04-11',NULL),
   (-1874919426,4,'2021-04-06','2021-04-11',NULL),
   (123654789987,4,'2021-04-06','2021-04-11',NULL),
   (-9999991,4,'2021-04-08','2021-04-11',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (-1874919427,4,'2021-04-08','2021-04-13',NULL),
   (1019139154,1,'2021-04-08','2021-04-13',NULL),
   (321817,4,'2021-03-14','2021-03-28',NULL),
   (-999999,4,'2021-04-08','2024-08-21',NULL),
   (-999999,5,'2021-04-08','2024-08-21',NULL),
   (4,1,'2021-05-10','2021-05-15',NULL),
   (4,1,'2021-05-10','2021-05-15',NULL),
   (4,1,'2021-05-10','2021-05-15',NULL),
   (13214654,2143369,'2021-10-04','2021-10-04',NULL),
   (1478822,92,'2021-10-06','2021-10-06',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (998,4,'3921-11-03','3921-11-05',NULL),
   (998,4,'3921-11-03','3921-11-05',NULL),
   (998,4,'3921-11-03','3921-11-05',NULL),
   (998,4,'3921-11-03','3921-11-05',NULL),
   (998,4,'3921-11-03','3921-11-05',NULL),
   (98347,555369,'2021-10-06','2021-10-06',NULL),
   (56155,1,'2021-09-05','2020-10-05',NULL),
   (56155,1,'2021-09-05','2020-10-05',NULL),
   (1,4,'2020-09-25','2020-09-26',NULL),
   (98347,555656,'2021-10-06','2021-10-06',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (98347,2165335,'2021-10-06','2021-10-06',NULL),
   (56155,1,'2021-09-05','2020-10-05',NULL),
   (98347,22222,'2021-10-06','2021-10-06',NULL),
   (56155,1,'2021-09-05','2020-10-05',NULL),
   (56155,1,'2021-09-05','2020-10-05',NULL),
   (6,2,'2020-09-12','2020-10-15',NULL),
   (3,2,'2020-09-12','2020-10-15',NULL),
   (98347,3467287,'2021-10-12','2021-10-12',NULL),
   (98347,3467287,'2021-10-12','2021-10-12',NULL),
   (68,18,'3921-11-02','3922-01-05',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (68,18,'3921-11-03','3922-01-06',NULL),
   (68,18,'2021-10-24','2021-10-24',NULL),
   (6,3,'2022-03-12','2022-03-20',NULL),
   (6,3,'2022-03-12','2022-03-20',NULL),
   (6,3,'2022-03-12','2022-03-20',NULL),
   (6,3,'2022-03-12','2022-03-20',NULL),
   (6,3,'2022-03-12','2022-03-20',NULL),
   (6,3,'2022-03-12','2022-03-20',NULL),
   (6,3,'2022-03-12','2022-03-20',NULL),
   (6,3,'2022-03-12','2022-03-20',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (98347,2165877,'2022-03-14','2022-03-14',NULL),
   (346774,1,'2022-01-20','2022-01-23',NULL),
   (6,3,'2022-03-12','2022-03-20',NULL),
   (6,3,'2022-03-12','2022-03-20',NULL),
   (6,3,'2022-03-12','2022-03-20',NULL),
   (6,3,'2022-03-12','2022-03-20',NULL),
   (6,3,'2022-03-12','2022-03-20',NULL),
   (6,3,'2022-03-12','2022-03-20',NULL),
   (6,3,'2022-03-12','2022-03-20',NULL),
   (6,3,'2022-03-12','2022-03-20',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (6,3,'2022-03-12','2022-03-20',NULL),
   (6,3,'2022-03-12','2022-03-20',NULL),
   (6,3,'2022-01-20','2022-02-20',NULL),
   (9,20,'2022-01-20','2022-02-20',NULL),
   (9,20,'2022-01-20','2022-02-20',NULL),
   (9,20,'2022-01-20','2022-02-20',NULL),
   (9,20,'2022-01-20','2022-02-20',NULL),
   (9,20,'2022-01-20','2022-02-20',NULL),
   (98347,216363,'2022-03-16','2022-03-16',NULL),
   (98347,21658770,'2022-03-16','2022-03-16',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (1234567899,5,'2022-03-16','2022-03-20',NULL),
   (1010101010,5,'2022-03-16','2022-03-20',NULL),
   (1121212121,1,'2022-03-16','2022-03-20',NULL),
   (311867,2,'2022-01-16','2022-01-16',NULL),
   (9,20,'2022-01-20','2022-02-20',NULL),
   (9,20,'2022-01-20','2022-02-20',NULL),
   (9,20,'2000-01-01','2001-01-01',NULL),
   (9,20,'2000-01-01','2001-01-01',NULL),
   (9,20,'2000-01-01','2001-01-01',NULL),
   (9,20,'2000-01-01','2001-01-01',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (9,20,'2000-01-01','2001-01-01',NULL),
   (9,20,'2000-01-01','2001-01-01',NULL),
   (9,20,'2000-01-01','2001-01-01',NULL),
   (9,20,'2000-01-01','2001-01-01',NULL),
   (9,20,'2000-01-01','2001-01-01',NULL),
   (9,20,'2022-01-20','2022-02-20',NULL),
   (9,20,'2022-01-20','2025-02-20',NULL),
   (9,20,'2000-01-01','2001-01-01',NULL),
   (98347,216587700,'2022-03-21','2022-03-21',NULL),
   (98347,21658000,'2022-03-21','2022-03-21',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (98347,216580,'2022-03-21','2022-03-21',NULL),
   (9,20,'2000-01-01','2001-01-01',NULL),
   (9,20,'2000-01-01','2001-01-01',NULL),
   (9,20,'2000-01-01','2001-01-01',NULL),
   (9,20,'2022-01-20','2022-02-20',NULL),
   (1010101010,10,'2022-10-04','2022-10-08',NULL),
   (1121212121,1,'2022-03-16','2022-03-20',NULL),
   (1,21677088,'2022-03-26','2022-03-26',NULL),
   (-7899871234564,10,'2022-03-26','2022-04-07',NULL),
   (-7899871234564,10,'2022-03-26','2022-04-07',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (-7899871234564,10,'1920-03-20','1920-04-01',NULL),
   (-7899871234564,10,'2022-03-26','2022-04-07',NULL),
   (1010101010,10,'2022-10-04','2022-10-08',NULL),
   (1010101010,10,'2022-10-04','2022-10-08',NULL),
   (-1874919426,545343,'2022-03-26','2022-03-28',NULL),
   (1121212121,1,'2022-03-16','2022-03-20',NULL),
   (1121212121,1,'2022-03-16','2022-03-20',NULL),
   (1121212121,1,'2022-03-16','2022-03-20',NULL),
   (1121212121,1,'2022-03-16','2022-03-20',NULL),
   (1121212121,1,'2022-03-16','2022-03-20',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (1121212121,1,'2022-03-16','2022-03-20',NULL),
   (6,2,'2022-09-28','2022-10-28',NULL),
   (6,2,'2022-09-28','2022-10-28',NULL),
   (6,2,'2022-09-28','2022-10-28',NULL),
   (5,1,'2020-03-12','2020-04-12',NULL),
   (6,2,'2022-09-28','2022-10-28',NULL),
   (4,3,'3922-11-02','3922-11-06',NULL),
   (3,3,'3922-11-02','3922-11-06',NULL),
   (7,8,'3922-11-02','3922-11-13',NULL),
   (3,3,'2022-10-02','2022-10-05',NULL);
INSERT INTO bdprueba.VI_ITEMRENTADO (CLIENTES_documento,ITEMS_id,fechainiciorenta,fechafinrenta,test) VALUES
   (7,8,'2021-11-10','2022-11-10',NULL),
   (13,5,'1969-12-31','1969-12-31',NULL),
   (890239804,99,'2022-09-10','2022-12-31',NULL),
   (2154421,93,'2022-10-15','2022-10-15',NULL),
   (2154421,93,'2022-10-15','2022-10-15',NULL),
   (1236969,639,'2022-10-18','2022-10-20',NULL),
   (-2000,5,'2022-10-18','2022-12-17',NULL),
   (4,4,'2022-10-26','2022-10-29',NULL),
   (-2000,2,'2022-10-29','2022-12-28',NULL),
   (2154421,93,'2022-10-31','2022-10-31',NULL);
INSERT INTO bdprueba.VI_ITEMS (id,nombre,descripcion,fechalanzamiento,tarifaxdia,formatorenta,genero,TIPOITEM_id) VALUES
   (1,'BichoMilk','La leche de los ganadores','2013-02-11',500,'hola','bichos',2),
   (2,'Carne','comidita','2013-02-11',5000,'hola','comida',2),
   (3,'Pollo','comidita','2013-02-11',10,'hola','comida',2),
   (4,'COVID-19','comidita','2013-02-11',30000,'hola','comida',4),
   (5,'H1N1','comidita','2013-02-11',10,'hola','comida',4),
   (6,'SIDA','comidita','2013-02-11',10,'hola','comida',4),
   (7,'CANCER','comidita','2013-02-11',10,'hola','comida',4),
   (8,'SER INGENIERO','comidita','2013-02-11',10,'hola','comida',4),
   (9,'Producto W','Descripci�n W','2020-10-03',1998,'Formato W','G�nero W',1),
   (10,'Indiana','ruinas','2019-12-24',1000,'Funciona','m',2);
INSERT INTO bdprueba.VI_ITEMS (id,nombre,descripcion,fechalanzamiento,tarifaxdia,formatorenta,genero,TIPOITEM_id) VALUES
   (11,'Funcionna','oki','2019-12-24',2222,'ssssssi','m',2),
   (12,'Producto W','Descripci�n W','2020-10-03',2500,'Formato W','G�nero W',1),
   (13,'Producto W','Descripci�n W','2020-10-05',1998,'Formato W','G�nero W',1),
   (14,'The pacific','serie','2020-12-25',140,'dvd','Belico',91),
   (15,'The pacific','serie','2020-12-25',140,'dvd','Belico',91),
   (16,'Juego','Descripci�n W','2020-10-14',14,'Formato W','G�nero W',1),
   (17,'Pollo','Papas de Pollo','2021-03-15',5000,'asasdas','objeto',2),
   (18,'Consola','Videojuegos','2021-03-23',1000,'hola','cosa',2),
   (19,'Jugo','Naranja','2021-03-24',2000,'Hola','Bebida',2),
   (20,'Ox�geno','Pel�cula Oxigeno 2021 - Netflix','2021-05-12',5000,'DVD','Ciencia ficci�n',3);
INSERT INTO bdprueba.VI_ITEMS (id,nombre,descripcion,fechalanzamiento,tarifaxdia,formatorenta,genero,TIPOITEM_id) VALUES
   (22,'Celular','Equipo tecnologico','2021-11-15',1545545744,'abduzcan','tecnologia',70),
   (23,'GarciaCadavid','hols','2014-07-15',349,'fr','fvdf',1),
   (24,'GarciaCadavid','hols','2014-07-15',349,'fr','fvdf',1),
   (52,'star wars','pelicula','2022-10-15',3000,'dvd','ficcion',2),
   (54,'star wars','pelicula','2022-10-15',3000,'dvd','ficcion',2),
   (55,'star wars','pelicula','2022-10-15',3000,'dvd','ficcion',2),
   (57,'star wars','pelicula','2022-10-15',3000,'dvd','ficcion',2),
   (60,'star wars','pelicula','2022-10-31',3000,'dvd','ficcion',2),
   (92,'Indiana Jones','Pelicula','2020-12-24',120,'dvd','Aventura',90),
   (93,'The pacific','serie','2020-12-25',140,'dvd','Belico',91);
INSERT INTO bdprueba.VI_ITEMS (id,nombre,descripcion,fechalanzamiento,tarifaxdia,formatorenta,genero,TIPOITEM_id) VALUES
   (99,'item99','item99','2019-09-28',99,'Digital','99',1),
   (100,'palo de escalar','es un palo que sirve para escalar','2019-01-01',100,'Digital','escalada',2),
   (101,'sdasd','sdad','2020-12-25',32432,'adas','sdada',2),
   (102,'Computador','algo','2020-03-27',15,'Bien','Terror',4),
   (103,'Computador','algoNuevo','2020-03-27',15,'Bien','Terror',4),
   (188,'Kristhian','Solo millos','2021-10-26',1000000,'formatoRenta','undefined',1),
   (346,'La patada del mocho 4','mas mocho que nunca','2007-08-07',30,'Semanal','Ciencia ficcion',12),
   (359,'papayas africanas','pues papayas africanas pri','1969-12-31',500000,'','M',4),
   (360,'papayas africanas','pues papayas africanas pri','1969-12-31',500000,'','M',4),
   (366,'La patada del mocho 4','mas mocho que nunca','2007-08-07',30,'Semanal','Ciencia ficcion',12);
INSERT INTO bdprueba.VI_ITEMS (id,nombre,descripcion,fechalanzamiento,tarifaxdia,formatorenta,genero,TIPOITEM_id) VALUES
   (432,'Hikari','Album','2019-10-10',20000,'Musica','Metalcore',2),
   (638,'Pupito','Pupito','2022-10-02',639639,'Pupito','Pupito',2),
   (639,'Pupito','Pupito','2022-10-02',639639,'Pupito','Pupito',2),
   (740,'REM','LOSING','2022-10-06',639639,'MY','RELIGION',2),
   (777,'luis','Estudiante','2022-01-20',7000,'renta','Bichota',2),
   (778,'luis','Estudiante','2022-01-20',7000,'renta','Bichota',2),
   (779,'luis','Estudiante','2022-01-20',7000,'renta','Bichota',2),
   (780,'luis','Estudiante','2022-01-20',7000,'renta','Bichota',2),
   (781,'luis','Estudiante','2022-01-20',7000,'renta','Bichota',2),
   (782,'luis','Estudiante','2022-01-20',7000,'renta','Bichota',2);
INSERT INTO bdprueba.VI_ITEMS (id,nombre,descripcion,fechalanzamiento,tarifaxdia,formatorenta,genero,TIPOITEM_id) VALUES
   (785,'luis','Estudiante','2022-01-20',7000,'renta','Bichota',2),
   (787,'luis','Estudiante','2022-01-20',7000,'renta','Bichota',2),
   (789,'GarciaMurillo','Item GarciaMurillo','2021-10-04',125000,'El mejor','Drama',1),
   (799,'luis','Estudiante','2022-01-20',7000,'renta','Bichota',2),
   (888,'LM10>>cr7','100%','2021-02-01',9999,'formatoComun','terror',1),
   (987,'Como dijo Vladimir, wa mirmir','descripcion','2021-03-14',2313,'renta','accion',2),
   (1001,'Elemento:X','Sustancia radioactiva','2020-09-28',99,'Peligroso','99',1),
   (1010,'Tipo de item CVDS','Prueba Calderon_Castro','2019-12-30',70,'Renta-2','accion',2),
   (1234,'NuevoItem','Item creado por fonso','2020-03-03',1543,'format','genero',3),
   (1444,'item99','item99','2019-09-28',99,'Digital','99',1);
INSERT INTO bdprueba.VI_ITEMS (id,nombre,descripcion,fechalanzamiento,tarifaxdia,formatorenta,genero,TIPOITEM_id) VALUES
   (2020,'Tipo de item CVDS','Prueba Calderon_Castro','2019-12-30',70,'Renta-2','accion',2),
   (2022,'Tipo de item CVDS','Prueba Calderon_Castro','2019-12-30',70,'Renta-2','accion',2),
   (2023,'Tipo de item CVDS','Prueba Calderon_Castro','2019-12-30',70,'Renta-2','accion',2),
   (2025,'Cr7','Historia de Cristiano Ronaldo','2024-07-25',5000,'Compra','Deportivo',2),
   (2026,'Cr8','Historia del chavo del 8','2023-08-25',6000,'Compra','Entretenimiento',2),
   (2027,'Si decido quedarme','Historia de amor','2026-07-25',5000,'Compra','Romance',90),
   (2121,'Bicicleta','es un medio de transporte','2016-07-06',100,'Diario','Accion',2),
   (2122,'BicicletaNo2','es un medio de transporte','2016-07-06',100,'Diario','Accion',2),
   (2155,'prueba','item de prueba','2020-03-11',8,'diario','prueba',2),
   (3000,'Juego','Descripci�n W','2020-10-05',1998,'Formato W','G�nero W',1);
INSERT INTO bdprueba.VI_ITEMS (id,nombre,descripcion,fechalanzamiento,tarifaxdia,formatorenta,genero,TIPOITEM_id) VALUES
   (6392,'Pupito2','Pupito','2022-10-02',639639,'Pupito','Pupito',2),
   (9999,'NuevoItemxDv4_0','Este es el nuevo Item de Marcelo v4_0','2019-03-12',1234,'formatoxD4_0','genero4_0 final',3),
   (12345,'funar o ser funado CR','descripcion','2020-09-25',2313,'formato renta','accion',2),
   (16723,'nombre','descrip','2021-03-16',20000,'formato','genero',10),
   (20000,'Elemento:X','Pegatina','2020-09-28',99,'Peligroso','99',1),
   (22222,'Sebastian','Dhupapi','2021-10-06',23330000,'formatoRenta','undefined',1),
   (23456,'sfdg','fdg','3920-04-05',2345,'dws','ad',2),
   (97878,'Batman cvds','batman prueba','2020-10-01',80,'cvd','accion',1),
   (98777,'ItemRV cvds','RV prueba','2020-11-01',80,'cvd','acc',1),
   (98778,'Batman cvds','batman prueba','2020-10-01',80,'cvd','accion',1);
INSERT INTO bdprueba.VI_ITEMS (id,nombre,descripcion,fechalanzamiento,tarifaxdia,formatorenta,genero,TIPOITEM_id) VALUES
   (111111,'Tapabocas','Prevenir esparcimiento de particulas','1998-12-31',10,'prueba','aseo',2),
   (111112,'Tapabocas','Prevenir esparcimiento de particulas','1998-12-31',10,'prueba','aseo',2),
   (123456,'fdshdgh','hytjgm','2022-03-20',50000,'kiyuil','kukyk',3),
   (167238,'Nulla','feugiat','2021-03-16',20000,'euismod','facilisis',10),
   (212244,'BicicletaNo344','es un medio de transporte','2016-07-06',100,'Diario','Accion',2),
   (216363,'Sebastian','Molina','2022-03-16',7426527,'test','uknown',1),
   (216580,'Juan','Estudiante','2022-03-21',10000,'formatoRenta','undefined',1),
   (234567,'sfdg','fdg','3920-04-05',2345,'dws','ad',2),
   (452612,'Batman cvds','batman prueba','2020-10-01',80,'cvd','accion',1),
   (489212,'Celular Samsung','Se llama y se chatea baby','2010-11-12',350000,'Tecnologia','Celuco1',8899);
INSERT INTO bdprueba.VI_ITEMS (id,nombre,descripcion,fechalanzamiento,tarifaxdia,formatorenta,genero,TIPOITEM_id) VALUES
   (545343,'Nullq','feugia','2021-03-16',20000,'euismo','facilisi',3),
   (555369,'Jorgito','Jorgito el guayaco','2021-10-06',50000,'formatoRenta','undefined',1),
   (555656,'diego','diego el paisa','2021-10-06',50000,'formatoRenta','undefined',1),
   (639123,'Pupito222','Pupito','2022-10-02',639639,'Pupito','Pupito',2),
   (804578,'Batman cvds','batman prueba','2020-10-01',80,'cvd','accion',1),
   (987777,'Como dijo Vladimir, wa mirmir','descripcion','2021-03-14',2313,'renta','accion',2),
   (1000000,'aaaa','aaaaaaaaaaa','2020-09-26',44444,'a','aaaaaaa',4),
   (1000001,'aaa','aaaaaaaaaaa','2020-09-26',44444,'a','aaaaaaa',4),
   (1269345,'Tipo de item CVDS','Prueba Alvarado_Castro','2019-12-30',70,'Renta-2','accion',2),
   (1289345,'Tipo de item CVDS','Prueba Alvarado_Castro','2019-12-30',70,'Renta-2','accion',2);
INSERT INTO bdprueba.VI_ITEMS (id,nombre,descripcion,fechalanzamiento,tarifaxdia,formatorenta,genero,TIPOITEM_id) VALUES
   (1299345,'Tipo de item CVDS','Prueba Alvarado_Castro','2019-12-30',70,'Renta-2','accion',1),
   (1444265,'NuevoItem','Este es el nuevo Item ','2019-03-12',9999,'formatoxD4_0','genero4_0 final',3),
   (2133951,'Lab CVDS','Como resolver el lab','3920-04-10',985674,'Fromato','Programacion',3),
   (2137885,'Celular','Celular pro','2020-03-13',100,'credito','sda',2137885),
   (2143369,'Jorgito','Jorgito el guayaco','2021-03-19',50000,'formatoRenta','undefined',1),
   (2143370,'Jorgito','Jorgito el guayaco','2021-03-26',50000,'formatoRenta','undefined',1),
   (2159518,'prueba','descripcion prueba','2020-11-17',9000,'prueba','prueba',2),
   (2159965,'prueba','descripcion prueba','2020-11-17',8999,'prueba','prueba',2),
   (2159966,'prueba','descripcion prueba','2020-11-17',9000,'prueba','prueba',2),
   (2160666,'Jorgito','Es un gigol�','2020-12-25',1000,'prueba','+18',4);
INSERT INTO bdprueba.VI_ITEMS (id,nombre,descripcion,fechalanzamiento,tarifaxdia,formatorenta,genero,TIPOITEM_id) VALUES
   (2160802,'test','description','2021-03-17',9000,'test','test',4),
   (2165335,'Sebastian','Dhupapi','2021-10-06',23330000,'formatoRenta','undefined',1),
   (2165877,'Juan','Estudiante','2022-03-14',10000,'formatoRenta','undefined',1),
   (2189719,'prueba','descripcion prueba','2020-11-17',9000,'prueba','prueba',2),
   (3467287,'Majito','Solo millos','2021-10-12',50000,'formatoRenta','undefined',1),
   (3467289,'Kristhian','xd','2021-10-12',50000,'formatoRenta','undefined',1),
   (9877778,'Como dijo Vladimir, wa mirmir','descripcion','2021-03-14',2313,'renta','accion',2),
   (21658000,'Juan','Estudiante','2022-03-21',10000,'formatoRenta','undefined',1),
   (21658770,'Juan','Estudiante','2022-03-16',10000,'formatoRenta','undefined',1),
   (21677088,'CR7','SIUUUUU','2022-03-26',99999,'FORMATORENTA','GOAT',2143447);
INSERT INTO bdprueba.VI_ITEMS (id,nombre,descripcion,fechalanzamiento,tarifaxdia,formatorenta,genero,TIPOITEM_id) VALUES
   (39621635,'NuevoItemxxx','Este es el nuevo Item xxxx','2020-03-12',9999,'hola','pop',73),
   (39621645,'NuevoItemxxx','Este es el nuevo Item xxxx','2020-03-12',9999,'hola','pop',73),
   (42325235,'Como dijo Vladimir, wa mirmir','descripcion','2021-03-14',2313,'renta','accion',2),
   (48989456,'Sergio','Messi','2001-01-01',1,'a','HELICOPTERO',4),
   (51901614,'NuevoItemxxx','Este es el nuevo Item xxxx','2020-03-12',9999,'hola','pop',73),
   (58754785,'Tipo de item CVDS','Prueba Alvarado_Castro','2019-12-30',70,'Renta-2','accion',2),
   (79274334,'Tipo de item CVDS','Prueba Alvarado_Castro','2019-12-30',70,'Renta-2','accion',2),
   (79369972,'NuevoItemxxx','Este es el nuevo Item xxxx','2020-03-12',9999,'formatoxD4_0','genero4_0 final',73),
   (97804578,'Batman cvds','batman prueba','2020-10-01',80,'cvd','accion',1),
   (98777780,'Como dijo Vladimir, wa mirmir','descripcion','2021-03-14',2313,'renta','accion',2);
INSERT INTO bdprueba.VI_ITEMS (id,nombre,descripcion,fechalanzamiento,tarifaxdia,formatorenta,genero,TIPOITEM_id) VALUES
   (216587700,'Juan','Estudiante','2022-03-21',10000,'formatoRenta','undefined',1),
   (465435465,'La patada del mocho 4','mas mocho que nunca','2007-08-07',30,'Semanal','Ciencia ficcion',12),
   (545343000,'Nullq','hpla','2022-01-21',184000,'palabra','hola',4),
   (615645561,'Sergio','Messi','2001-01-01',1,'a','HELICOPTERO',4),
   (1001169364,'NuevoItem','Este es el nuevo Item ','2019-03-12',9999,'formatoxD4_0','genero4_0 final',3),
   (1001169369,'NuevoItemxxx','Este es el nuevo Item xxxx','2020-03-12',9999,'formatoxD4_0','genero4_0 final',3),
   (1022367709,'NuevoItemxxx','Este es el nuevo Item xxxx','2020-03-12',9999,'hola','pop',75),
   (1121212121,'fdshdgh','hytjgm','2022-03-20',50000,'kiyuil','kukyk',3),
   (2122222222,'Bla','prueba bla ','2020-09-02',465641,'formato','genero',12);
INSERT INTO bdprueba.VI_TIPOITEM (descripcion) VALUES
   ('Accion'),
   ('Aventura'),
   ('Avion'),
   ('Belico'),
   ('Bogota'),
   ('Celuco'),
   ('Celuco1'),
   ('coronavirus'),
   ('covid'),
   ('covid19');
INSERT INTO bdprueba.VI_TIPOITEM (descripcion) VALUES
   ('gu'),
   ('guerra'),
   ('guhh'),
   ('Hola dieg'),
   ('Hola Juan carlos'),
   ('Hola Juan carlos cp'),
   ('hola mundo'),
   ('Jorgito guayac'),
   ('Jorgito Guayaco'),
   ('Jorgito Guayaco0o');
INSERT INTO bdprueba.VI_TIPOITEM (descripcion) VALUES
   ('Juan carlos'),
   ('Kristhian'),
   ('La Lechona Mecanica'),
   ('Majito'),
   ('N + N <3'),
   ('nicolas prueba'),
   ('papucho'),
   ('peli'),
   ('Peliculas'),
   ('Pineros le gusta la azafata');
INSERT INTO bdprueba.VI_TIPOITEM (descripcion) VALUES
   ('Prueba'),
   ('quiero 5'),
   ('quiero 55 r'),
   ('sfg'),
   ('tecnologia'),
   ('Videojuego'),
   ('virus');
