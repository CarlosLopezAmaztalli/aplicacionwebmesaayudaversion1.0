-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: mesaayuda
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_asignacion`
--

DROP TABLE IF EXISTS `t_asignacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_asignacion` (
  `id_asignacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_persona` int(11) NOT NULL,
  `id_sistema` int(11) NOT NULL,
  `aplicacion` varchar(245) DEFAULT NULL,
  `funcion` varchar(245) DEFAULT NULL,
  `direccion` varchar(245) DEFAULT NULL,
  `descripcion` varchar(245) DEFAULT NULL,
  `nombre` varchar(245) DEFAULT NULL,
  `protocolo` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id_asignacion`),
  KEY `fksistemaAsignacion_idx` (`id_sistema`),
  CONSTRAINT `fksistemaAsignacion` FOREIGN KEY (`id_sistema`) REFERENCES `t_cat_sistema` (`id_sistema`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_asignacion`
--

LOCK TABLES `t_asignacion` WRITE;
/*!40000 ALTER TABLE `t_asignacion` DISABLE KEYS */;
INSERT INTO `t_asignacion` VALUES (6,1,1,'jhyjktyuj','0o\'0ikopi','opioip','poipoi','poiopi','opipoiopi'),(8,3,2,'09\'0','09i09i09','09i9','09i9iu9hjuuu','uyghuy','uyhgyu');
/*!40000 ALTER TABLE `t_asignacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cat_roles`
--

DROP TABLE IF EXISTS `t_cat_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cat_roles` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(245) NOT NULL,
  `descripcion` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cat_roles`
--

LOCK TABLES `t_cat_roles` WRITE;
/*!40000 ALTER TABLE `t_cat_roles` DISABLE KEYS */;
INSERT INTO `t_cat_roles` VALUES (1,'cliente','Es un cliente'),(2,'admin','Es Admin');
/*!40000 ALTER TABLE `t_cat_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cat_sistema`
--

DROP TABLE IF EXISTS `t_cat_sistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cat_sistema` (
  `id_sistema` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(245) NOT NULL,
  `descripcion` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id_sistema`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cat_sistema`
--

LOCK TABLES `t_cat_sistema` WRITE;
/*!40000 ALTER TABLE `t_cat_sistema` DISABLE KEYS */;
INSERT INTO `t_cat_sistema` VALUES (1,'mesa de ayuda',NULL),(2,'pagina web ','fa-solid fa-blog'),(3,'computo 12 pagina web',NULL);
/*!40000 ALTER TABLE `t_cat_sistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_persona`
--

DROP TABLE IF EXISTS `t_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_persona` (
  `id_persona` int(11) NOT NULL AUTO_INCREMENT,
  `paterno` varchar(245) NOT NULL,
  `materno` varchar(245) DEFAULT NULL,
  `nombre` varchar(245) NOT NULL,
  `fecha_nacimiento` varchar(245) NOT NULL,
  `genero` varchar(2) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(245) DEFAULT NULL,
  `fechaInsert` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_persona`
--

LOCK TABLES `t_persona` WRITE;
/*!40000 ALTER TABLE `t_persona` DISABLE KEYS */;
INSERT INTO `t_persona` VALUES (1,'guetui','perez','jose','2023-08-15','M','92123121','joseroberto@computo12.mx','2023-08-25 08:10:27'),(2,'Lopez','Amaztalli','Carlos Antonio','2015-08-05','M','9212237070','zs@estudiantres.mx','2023-08-25 02:31:12'),(3,'perez','gutierrrez','tom','2023-09-01','M','9342342342','ewqwpeqw','2023-09-04 21:50:14');
/*!40000 ALTER TABLE `t_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_reportes`
--

DROP TABLE IF EXISTS `t_reportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_reportes` (
  `id_reporte` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_sistema` int(11) NOT NULL,
  `id_usuario_tecnico` int(11) DEFAULT NULL,
  `descripcion_problema` text NOT NULL,
  `solucion_problema` text DEFAULT NULL,
  `estatus` int(11) NOT NULL DEFAULT 1,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_reporte`),
  KEY `fkUsuarioReporte_idx` (`id_usuario`),
  KEY `fkSistemaReporte_idx` (`id_sistema`),
  CONSTRAINT `fkSistemaReporte` FOREIGN KEY (`id_sistema`) REFERENCES `t_cat_sistema` (`id_sistema`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkUsuarioReporte` FOREIGN KEY (`id_usuario`) REFERENCES `t_usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_reportes`
--

LOCK TABLES `t_reportes` WRITE;
/*!40000 ALTER TABLE `t_reportes` DISABLE KEYS */;
INSERT INTO `t_reportes` VALUES (1,1,2,2,'tengo problema mi pagina web esta caida y marca error','vamos a checar el codigo de la pagina, se actualizo la pagina web al cliente y se modidfico',0,'2023-08-29 15:20:08'),(2,1,2,NULL,'esta caida help me',NULL,1,'2023-08-29 15:29:33'),(7,1,2,2,'necesita ser ferificada','liylklyoi',0,'2023-09-04 21:46:44');
/*!40000 ALTER TABLE `t_reportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_usuarios`
--

DROP TABLE IF EXISTS `t_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_rol` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `usuario` varchar(245) NOT NULL,
  `password` varchar(245) NOT NULL,
  `ubicacion` text DEFAULT NULL,
  `activo` int(11) NOT NULL DEFAULT 1,
  `fecha_insert` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_usuario`),
  KEY `fkPersona_idx` (`id_persona`),
  KEY `fkRoles_idx` (`id_rol`),
  CONSTRAINT `fkPersona` FOREIGN KEY (`id_persona`) REFERENCES `t_persona` (`id_persona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fkRoles` FOREIGN KEY (`id_rol`) REFERENCES `t_cat_roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_usuarios`
--

LOCK TABLES `t_usuarios` WRITE;
/*!40000 ALTER TABLE `t_usuarios` DISABLE KEYS */;
INSERT INTO `t_usuarios` VALUES (1,1,1,'cliente','bd1128d201b5a0622859c4282fd30c2cf6b73b84','Modulo 1',1,'0000-00-00 00:00:00'),(2,2,1,'admin','d033e22ae348aeb5660fc2140aec35850c4da997','Modulo 2',1,'0000-00-00 00:00:00'),(9,1,3,'tomgut','96835dd8bfa718bd6447ccc87af89ae1675daeca','rthrth',1,'2023-09-04 21:50:15');
/*!40000 ALTER TABLE `t_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-04 22:06:40
