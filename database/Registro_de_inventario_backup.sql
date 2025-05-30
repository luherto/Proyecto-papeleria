/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Registro_de_inventario
-- ------------------------------------------------------
-- Server version	10.11.8-MariaDB-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Registro`
--

DROP TABLE IF EXISTS `Registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Registro` (
  `ID` int(11) NOT NULL,
  `Tipo` varchar(50) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Descripcion` varchar(50) DEFAULT NULL,
  `Cantidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Registro`
--

LOCK TABLES `Registro` WRITE;
/*!40000 ALTER TABLE `Registro` DISABLE KEYS */;
INSERT INTO `Registro` VALUES
(1,'Lápiz','Amarillo','Con goma de borrar','150'),
(2,'Bolígrafo','Azul','Punta media 1.0 mm','200'),
(3,'Cuaderno','Verde','Cosido 100 hojas rayadas','50'),
(4,'Resaltador','Rosa','Fluorescente punta gruesa','30'),
(5,'Marcador','Negro','Permanente punta fina','40'),
(6,'Goma de borrar','Blanco','Para lápiz y tinta','80'),
(7,'Sacapuntas','Plateado','Metálico doble orificio','25'),
(8,'Regla','Transparente','30 cm con escala','35'),
(9,'Compás','Plata','Con adaptador para lápiz','15'),
(10,'Transportador','Azul','180 grados semirrígido','20'),
(11,'Calculadora','Blanco','Básica 8 dígitos','18'),
(12,'Tijeras','Rojo','Punta redonda escolar','22'),
(13,'Pegamento','Blanco','Barra adhesiva 40g','45'),
(14,'Cinta adhesiva','Transparente','Rollo 48mm x 50m','12'),
(15,'Corrector','Líquido blanco','Punta brush','30'),
(16,'Carpeta','Azul','Con gancho de 2 anillos','60'),
(17,'Separadores','Multicolor','Paquete de 12 unidades','25'),
(18,'Post-it','Amarillo','Bloc 100 hojas 76x76mm','40'),
(19,'Portaminas','Negro','Grafito 0.5mm','35'),
(20,'Minas','Gris','Paquete de 12 minas 0.5mm','51'),
(21,'Estuche','Negro','Con cremallera 3 compartimentos','15'),
(22,'Mochila','Rojo','Con ruedas y asa extensible','10'),
(23,'Pizarra','Blanco','Magnética 60x90cm','5'),
(24,'Rotulador','Verde','Punta biselada para pizarra','8'),
(25,'Clips','Plateado','Caja de 100 unidades','200'),
(26,'Grapas','Plateado','Caja de 1000 unidades','30'),
(27,'Grapadora','Negro','Pequeña 20 hojas capacidad','18'),
(28,'Perforador','Blanco','2 orificios ajustable','12'),
(29,'Sobre','Blanco','Tamaño carta 50 unidades','100'),
(30,'Tarjeta índice','Blanco','Paquete de 100 fichas','40'),
(31,'Archivador','Rojo','Abrazadera de palanca','20'),
(32,'Organizador','Transparente','5 compartimentos','15'),
(33,'Calendario','Multicolor','Mensual tamaño A3','10'),
(34,'Agenda','Negro','Semanal 2024 con cierre','25'),
(35,'Dossier','Amarillo','40 fundas A4','30'),
(36,'Block de notas','Blanco','200 hojas rayadas','50'),
(37,'Libro de contabilidad','Verde','100 hojas cuadriculadas','12'),
(38,'Etiquetas','Blanco','Paquete de 100 autoadhesivas','80'),
(39,'Plumón','Azul','Punta gruesa para pósteres','25'),
(40,'Papel kraft','Marrón','Rollo 50cm x 10m','8'),
(41,'Acuarelas','Multicolor','Estuche de 12 colores','15'),
(42,'Pincel','Negro','Cerdas sintéticas nº6','20'),
(43,'Lápices de colores','Multicolor','Estuche de 24 unidades','30'),
(44,'Témpera','Blanco','Bote 500ml','10'),
(45,'Plastilina','Multicolor','Paquete de 12 barras','18'),
(46,'Cartulina','Blanco','Paquete de 100 hojas A4','40'),
(47,'Foami','Multicolor','Paquete de 10 hojas 40x60cm','25'),
(48,'Glitter','Dorado','Frasco 50ml','15'),
(49,'Cutter','Plateado','Con seguro retráctil','20'),
(50,'Regla curva','Transparente','Para diseño gráfico','12'),
(51,'Papel milimetrado','Verde','Hoja A4 1mm cuadrícula','30'),
(52,'Papel calco','Blanco','Paquete de 50 hojas','20'),
(53,'Planificador semanal','Rosa','2024 espiralado','15'),
(54,'Stickers','Multicolor','Paquete temático animales','50'),
(55,'Sello','Azul','Fecha automática ajustable','8'),
(56,'Tinta para sello','Negro','Recambio 50ml','12'),
(57,'Cartapacio','Azul','Con elástico y separadores','25'),
(58,'Papel fotográfico','Blanco','10 hojas brillo A4','15'),
(59,'Portadocumentos','Negro','Con asa y cremallera','10'),
(60,'Pizarra magnética','Blanca','30x40cm con imanes','5'),
(61,'Geoplanos','Multicolor','Tablero de 15x15cm','20'),
(62,'Ábaco','Madera natural','10 filas de cuentas','8'),
(63,'Letras magnéticas','Multicolor','Set de 100 piezas','15'),
(64,'Mapa mundial','Azul','Laminado tamaño A1','10'),
(65,'Globo terráqueo','Azul','Con base plástico','5'),
(66,'Microfibra','Azul','Para pizarras blancas','30'),
(67,'Borrador para pizarra','Negro','Imán incluido','15'),
(68,'Papel decorativo','Multicolor','Set de 10 diseños','20'),
(69,'Cordón para credencial','Rojo','1 metro ajustable','50'),
(70,'Engrapadora eléctrica','Negro','Para alta capacidad','3'),
(71,'Guillotina','Plateado','Corte hasta 15 hojas','5'),
(72,'Espirales','Plateado','Paquete de 10 unidades','40'),
(73,'Encendedor de libros','Blanco','Para encuadernación','8'),
(74,'Cosido japonés','Hilo rojo','50 metros','12'),
(75,'Cartón pluma','Blanco','5mm grosor A3','15'),
(76,'Papel de regalo','Multicolor','Rollo 70cm x 2m','20'),
(77,'Marcadores permanentes','Multicolor','Set de 8','25'),
(78,'Pegamento en spray','Transparente','100ml','10'),
(79,'Cinta washi','Multicolor','Set de 5 rollos','30'),
(80,'Organizador de escritorio','Blanco','4 compartimentos','12'),
(81,'Portalápices','Madera','6 huecos estilo vintage','15'),
(82,'Pizarra de corcho','Natural','60x90cm con marco','8'),
(83,'Alfileres','Plateado','Caja de 100 unidades','50'),
(84,'Punta de flecha','Plástico rojo','Paquete de 50','30'),
(85,'Base magnética','Blanco','Para notas adhesivas','20'),
(86,'Soporte para tablet','Negro','Ajustable 360°','15'),
(87,'Protector de hojas','Transparente','100 unidades','40'),
(88,'Separador de libros','Plástico azul','10 unidades','60'),
(89,'Caja de archivo','Cartón gris','Para documentos A4','25'),
(90,'Clipboard','Blanco','Con sujetador de metal','30'),
(91,'Libro de firmas','Blanco','200 páginas con cubierta','10'),
(92,'Diario personal','Verde','Cierre con candado','15'),
(93,'Recetario','Blanco','Organizado por categorías','12'),
(94,'Plantilla de letras','Plástico negro','Serif y sans-serif','20'),
(95,'Numerales adhesivos','Blanco','Set del 0 al 9','30'),
(96,'Código de barras vacío','Blanco','100 etiquetas','50'),
(97,'Portatarjetas','Acrílico transparente','Vertical','15'),
(98,'Soporte para libros','Madera','Ajustable a 3 alturas','10'),
(99,'Organizador de cables','Negro','Con 5 bandas elásticas','20'),
(100,'Kit de oficina','Multicolor','Incluye 20 artículos','5'),
(101,'Libreta','Verde','Libreta de cuadro grande','6'),
(102,'Estuchera','Rosa','Estuchera color rosa pequenia','5');
/*!40000 ALTER TABLE `Registro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT current_timestamp(),
  `ultimo_acceso` timestamp NULL DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES
(1,'luisva','fOykG90sxNh1UlEAO887oAd2aoVGajjNudjAN22KAHU=','KJ0u6DUUZOKfmto2eGpzRw==','2025-05-29 23:57:25',NULL,1),
(2,'luis','ceGlllsyvh+1JEBET0qlw9yM4m4VetMO3NvMeIV4Hrg=','kyEtpwhfXgmfXuoMmVaGeA==','2025-05-30 00:17:22',NULL,1);
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-29 21:29:11
