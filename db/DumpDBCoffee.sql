CREATE DATABASE  IF NOT EXISTS `products` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `products`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: products
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (3,'Bebida caliente'),(2,'Bebida fr√≠a'),(6,'Caf√©s molidos'),(5,'Cafeteras'),(8,'C√°psulas'),(7,'Combos'),(1,'Comida'),(4,'Tazas');
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` binary(16) NOT NULL DEFAULT (unhex(replace(uuid(),_utf8mb3'-',_utf8mb4''))),
  `name` varchar(60) NOT NULL,
  `picture` text,
  `price` int NOT NULL,
  `descript` text,
  PRIMARY KEY (`id`),
  KEY `idx_products_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (_binary 'Or;\„yπ\Óá[h˜(8\·','chocolate','https://i.pinimg.com/564x/f4/03/3e/f4033e8bb60f4f6ee3eee53f32418816.jpg',1300,'Un mundo de sensaciones formadas a partir de: Un shot de caf√©, media taza de leche y chocolate puro derretido a ba√±o maria. ¬°Plus! Crema batida por arriba, chocolate por las paredes y bordes del vaso.'),(_binary 'OrG\Óyπ\Óá[h˜(8\·','caramelo','https://i.pinimg.com/564x/23/9c/32/239c327b4a736b093a089444b2a584c1.jpg',1300,'Este para√≠so de Caramelo est√° formado por: Un shot de caf√©, media taza de leche y en el fondo, en los costados y por arriba, tiras y tiras de caramelo artesanal. ¬°Plus! Siempre ofreceremos crema batida por arriba.'),(_binary 'OrJyπ\Óá[h˜(8\·','affogato','https://i.pinimg.com/564x/2f/cd/96/2fcd965ed7c98ac5516516a94ec8f41e.jpg',1500,'Este caf√© italiano que ofrecemos es, literalmente, una bocha de helado ahogada en caf√©. ¬øC√≥mo lo preparamos? En una copa, ponemos de una a dos bochas de helado de vainilla o crema americana y por encima, servimos una taza y media de caf√© expresso.'),(_binary 'OrK\∆yπ\Óá[h˜(8\·','expresso','https://i.pinimg.com/564x/e3/3d/e7/e33de723fc5938abf4fa91b4bbfd5fde.jpg',600,' Ideal para los amantes del caf√© de especialidad. Nuestro caf√© expresso contiene los mejores granos de Etiop√≠a, que vendemos nosotros mismos. Su sabor es totalmente puro y usted puede endulzarlo a su preferencia.'),(_binary 'OrSyπ\Óá[h˜(8\·','cortado','https://i.pinimg.com/564x/a0/76/6e/a0766ef5750aa2d8950940083811b085.jpg',650,'Junto a nuestro caf√© expresso, echemos una peque√±a cantidad de leche caliente para as√≠, armar nuestro cortado. Ideal para alguien que disfruta el caf√© semi-amargo.'),(_binary 'Ord$yπ\Óá[h˜(8\·','l√°grima','https://i.pinimg.com/564x/ea/5c/13/ea5c13893b625e2e95f5fc75944d78c7.jpg',600,'Su base es nuestro caf√© expresso, al cu√°l le agregamos unas peque√±as gotas de leche caliente. Es ideal ya que a√∫n conserva el sabor original del caf√©.'),(_binary 'OreÙyπ\Óá[h˜(8\·','mokaccino','https://i.pinimg.com/564x/88/d7/0c/88d70c00de7af88b5bb24109fc31df0a.jpg',750,'Para nuestro favorito, el Mokaccino, lo preparamos con: una taza de caf√© expresso, media taza de leche caliente y 30 gramos de cacao en polvo. Revolvemos bien y usted puede disfrutar de un exquisito caf√© al instante.'),(_binary 'Orgmyπ\Óá[h˜(8\·','latte art','https://i.pinimg.com/564x/d2/32/b1/d232b1084d6b2b3dfbb2ad81aa63c972.jpg',850,'Si es fan√°tico de las formas en los caf√©s, nuestro Latte est√° dedicado √∫nicamente al arte. Contiene un shot de caf√© y una taza de leche caliente, levemente batida, en la cu√°l se hace el dibujo que usted prefiera.'),(_binary 'Orhãyπ\Óá[h˜(8\·','medialunas de manteca','https://i.pinimg.com/564x/ce/b7/e3/ceb7e32885d9d5281f13199daba35574.jpg',450,'Estas deliciosas medialunas son un cl√°sico de la pasteler√≠a, conocidas por su sabor dulce y mantecoso. Las preparamos todos los d√≠as en nuestra cocina, as√≠ que podemos asegurar su calidad.'),(_binary 'Ori†yπ\Óá[h˜(8\·','medialunas de grasa','https://i.pinimg.com/564x/84/e6/85/84e685a36451f01322ac5150daf52fa1.jpg',450,'Estas medialunas tienen una textura m√°s densa y un sabor caracter√≠stico debido a la grasa utilizada en su preparaci√≥n, que les otorga un toque especial y una suavidad incomparable.'),(_binary 'Orj\Ÿyπ\Óá[h˜(8\·','brownie','https://i.pinimg.com/564x/2b/aa/eb/2baaebb69cde7bf443cb0d4cd297ae91.jpg',1800,'La torta brownie es un postre irresistible para los amantes del chocolate. Su interior se encuentra tierno y h√∫medo, esta torta es perfecta para satisfacer los antojos de cacao. Est√° en su preferencia si quiere tan solo la torta brownie con su merengue italiano o con una bola de helado.'),(_binary 'OrlOyπ\Óá[h˜(8\·','donas','https://i.pinimg.com/564x/23/ea/10/23ea108a60e0d3e7f83af6e605ba54c7.jpg',850,'Est√°n disponibles en una variedad de sabores, desde las tradicionales con glaseado de az√∫car hasta las rellenas de crema o mermelada de frutilla, dulce de leche, frutos rojos, etc. Son ideales para acompa√±ar un caf√© latte.'),(_binary 'Orm\›yπ\Óá[h˜(8\·','tostado','https://i.pinimg.com/564x/14/81/f1/1481f1dd45fc2f96b736eb44fe259e38.jpg',700,'Los tostados de jam√≥n y queso son una opci√≥n de desayuno o almuerzo satisfactoria. Consisten en rebanadas de pan tostado rellenas con jam√≥n y queso derretido, lo que les proporciona un sabor salado gracias a su pan √°rabe.'),(_binary 'Oro\‹yπ\Óá[h˜(8\·','combo tetera, jarra y filtro','https://i.pinimg.com/564x/29/77/99/2977990dad3a0d1416b16b00f5c92093.jpg',15500,'Una magn√≠fica combinaci√≥n para iniciar en el mundo del caf√©. Nuestra tetera Negra matte contiene un 1,25litros, con un dise√±o espec√≠fico para poder servir el agua caliente sobre el caf√© en tal manera que no se vuelque. La jarra para el caf√© es de doble vidrio, por lo que no debe preocuparse de alg√∫n accidente, mientras que el filtro es de acr√≠lico, con la tela exclusivamente en la parte de abajo, todo para ayudar al usuario.'),(_binary 'Orqπyπ\Óá[h˜(8\·','combo taza, jarra y filtro','https://i.pinimg.com/564x/ff/b5/11/ffb511805e4a1220026d87cf660f99b1.jpg',13500,'Este maravilloso filtro dorado de acr√≠lico tiene su propio soporte, as√≠ usted no debe preocuparse sobre incidentes. Su jarra contiene hasta 1 litro y es de doble vidrio para mayor seguridad. La taza es de acr√≠lico, con doble esmalte, as√≠ se consigui√≥ su efecto craquelado.'),(_binary 'Orsyπ\Óá[h˜(8\·','prensa francesa','https://i.pinimg.com/564x/5e/6a/ab/5e6aab8596be6ab4dbc7285fbedc8fef.jpg',8500,'Esta hermosa cafetera, sirve c√≥mo prensa manual. Usted coloca el caf√© primero y luego el agua caliente y, con la manija de la prensa, baja hasta el nivel del agua y tapa entre unos 10 a 15 minutos. Luego, baja la prensa hasta el caf√©, asi dejando el agua perfecta para tomar.'),(_binary 'Oru\Èyπ\Óá[h˜(8\·','cafetera italiana','https://i.pinimg.com/564x/2c/c4/65/2cc4650b7ed25903158c18f145afe15b.jpg',12000,'Ideal para los aficionados al caf√©. Esta cafetera italiana es perfecta para aquellos amantes del caf√© refinado. ¬°Se necesita caf√© molido y listo! En el compartimiento del medio se depositan dos cucharas de caf√© molido, se llena el compartimiento de abajo con agua hasta la v√°lvula de seguridad y se cierran bien todas sus partes. Esta cafetera es ideal para el fuego, as√≠ que, depositarla sobre √©l con su tapa abierta y fuego al m√°ximo, pero, al momento de comenzar a salir el caf√©, bajar la tapa y el fuego a m√≠nimo. ¬°Listo! Tiene un perfecto caf√© en 10 minutos.'),(_binary 'Orw∏yπ\Óá[h˜(8\·','cafetera nespresso (c√°psulas)','https://i.pinimg.com/564x/c3/aa/1f/c3aa1fe2035f0153c9a02ee1d72cbef5.jpg',91999,'Perfecta para una persona individual. Esta cafetera tiene una capacidad de 0,7 litros, su sencillo e intuitivo dise√±o es muy c√≥modo, adem√°s de que su bandeja es removible para permitir una mejor limpieza. '),(_binary 'Orx˝yπ\Óá[h˜(8\·','cafetera nespresso','https://i.pinimg.com/564x/78/cc/9a/78cc9aff0a2422060ef22e1fe9ea82f8.jpg',199999,'Esta maravillosa cafetera, cuenta con un dise√±o minimalista y adaptable a cualquier cocina. Tiene una capacidad de 1litro de agua y 200Ml de leche, su capacidad de c√°psulas usadas es de 8 y cuenta con un sistema One touch (esto se refiere a poder preparar bebidas complejas con tan solo tocar un bot√≥n). Cuenta con un sistema de auto limpieza y apagado autom√°tico a los 2 minutos.'),(_binary 'Orz.yπ\Óá[h˜(8\·','cafetera express swan','https://i.pinimg.com/564x/ec/17/f2/ec17f2d337a14ea697089dab74f2113d.jpg',89999,'Esta cafetera se acerca mucho m√°s a un nivel profesional si es lo que usted prefiere. Puede contener una capacidad 1,5litros y una boquilla lateral de vapor para espumar a su gusto, la leche. Es semiautom√°tica, por lo que funciona con caf√© molido, con un filtro para servir dos tazas al mismo tiempo.'),(_binary 'Or{ayπ\Óá[h˜(8\·','cafetera phillips','https://i.pinimg.com/564x/e8/67/6c/e8676c55a834412d58cd972430558fdc.jpg',999999,'Una perfecta cafetera para los aficionados del caf√©, en modo autom√°tico. Gracias a su molinillo de cer√°mica interior, sus granos de caf√© ser√°n totalmente a su preferencia, ya que cuenta con 12 modos, desde ultrafino sin polvo hasta moliendas gruesas. Una pantalla t√°ctil totalmente intuitiva, asi poder personalizar el sabor del caf√©.'),(_binary 'Or|syπ\Óá[h˜(8\·','caf√© molido importado ethiopia','https://i.pinimg.com/564x/74/68/0c/74680c8f9ec1b2931e77d29ba4dcbe48.jpg',4500,'Sum√©rgete en el mundo ex√≥tico y arom√°tico del Caf√© Molido de Ethiopia. Proveniente del lugar de nacimiento del caf√©, esta joya de origen √∫nico es conocida por su brillante acidez y matices florales. Tostado a un nivel medio-ligero, ofrece un perfil √∫nico y afrutado, siendo una excelente elecci√≥n para aquellos que aprecian una experiencia de caf√© compleja y vibrante.'),(_binary 'Or\≈yπ\Óá[h˜(8\·','caf√© molido importado rwanda','https://i.pinimg.com/564x/62/a7/7c/62a77c94ea792cb0d1d5897db0eaa2aa.jpg',4500,'Experimenta el sabor rico y cuerpo completo de nuestro Caf√© Molido. Proveniente de Rwanda, este caf√© presume de un sabor suave y equilibrado con notas sutiles de dulzura a nuez. Tostado a la perfecci√≥n, ofrece una taza de caf√© deliciosa que es perfecta en cualquier momento del d√≠a.'),(_binary 'OrÅyπ\Óá[h˜(8\·','caf√© molido importado guatemala','https://i.pinimg.com/564x/23/65/d1/2365d1d736c179c009aade905d75710b.jpg',6500,'Ind√∫lgate en el atractivo audaz y ahumado de nuestro Caf√© Molido proveniente de Guatemala. Esta mezcla de tueste oscuro est√° cuidadosamente elaborada para resaltar sabores intensos con un aroma profundo y humeante. Disfrutar√°s del sabor robusto y agridulce con toques de az√∫car caramelizado. Es la elecci√≥n ideal para quienes prefieren una taza de caf√© fuerte y vigorizante.'),(_binary 'OrÇ yπ\Óá[h˜(8\·','caf√© molido importado nicaragua','https://i.pinimg.com/564x/54/91/6e/54916e0e0b935ebeeb90184ae4cc7660.jpg',4500,'Descubre nuevos sabores en cada taza de nuestro Caf√© Molido. Elaborado con granos seleccionados de las mejores regiones cafetaleras, este caf√© ofrece una experiencia vigorizante y llena de energ√≠a. Nuestro tostado experto resalta su car√°cter robusto y su sabor intenso, con un toque de avellana tostada y un regusto persistente.'),(_binary 'OrÉ#yπ\Óá[h˜(8\·','combo 4 paquetes de caf√© molido','https://i.pinimg.com/564x/20/83/61/2083616bf35f89dcc065aabf55efa8e4.jpg',13000,'¬°No pierdas la oportunidad de disfrutar de una amplia gama de sabores en un solo paquete! Haz tu pedido hoy y comienza a disfrutar de una experiencia de caf√© excepcional con nuestro Paquete de Variedades de Caf√© Molido.'),(_binary 'OrÑÄyπ\Óá[h˜(8\·','starbucks 12 c√°psulas macchiato','https://i.pinimg.com/564x/e9/ea/e4/e9eae44db68c3464026f3de877f83ba5.jpg',7000,'description 28'),(_binary 'OrÜ(yπ\Óá[h˜(8\·','nescaf√© 25 c√°psulas expresso','https://i.pinimg.com/564x/76/5f/a1/765fa19f2bb804f934d4082713b2d442.jpg',8500,'description 29'),(_binary 'Orà*yπ\Óá[h˜(8\·','combo nespresso 50 c√°psulas','https://i.pinimg.com/564x/4f/25/aa/4f25aaad88914dd9fff2e9eb13362582.jpg',28500,'description 30'),(_binary 'Orâøyπ\Óá[h˜(8\·','combo 2 tazas de doble vidrio','https://i.pinimg.com/564x/2a/87/eb/2a87eb06d29117d0749b9813e97a68e7.jpg',11999,'description 31'),(_binary 'OrãGyπ\Óá[h˜(8\·','combo 4 tazas de cer√°mica','https://i.pinimg.com/564x/68/fa/27/68fa276b2a2713d33dd2cc2b2f0af45d.jpg',11000,'description 32'),(_binary 'Orå\Áyπ\Óá[h˜(8\·','combo 4 tazas de cer√°mica con dibujos','https://i.pinimg.com/564x/dc/0c/b8/dc0cb8b049e6d10e4126735b42339391.jpg',9999,'description 33'),(_binary 'Ù¥fy∂\Óá[h˜(8\·','dulce de leche','https://i.pinimg.com/564x/47/ae/97/47ae974ab22e9e0fa38c42336771349f.jpg',1300,'Una bomba de sabores formados a partir de: Un shot de caf√©, media taza de leche y dulce de leche derretido. ¬°Plus! Crema batida por encima y dulce de leche en las paredes del vaso');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_catalog`
--

DROP TABLE IF EXISTS `products_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_catalog` (
  `products_id` binary(16) NOT NULL,
  `catalog_id` int NOT NULL,
  PRIMARY KEY (`products_id`,`catalog_id`),
  KEY `catalog_id` (`catalog_id`),
  CONSTRAINT `products_catalog_ibfk_1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_catalog_ibfk_2` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_catalog`
--

LOCK TABLES `products_catalog` WRITE;
/*!40000 ALTER TABLE `products_catalog` DISABLE KEYS */;
INSERT INTO `products_catalog` VALUES (_binary 'Orhãyπ\Óá[h˜(8\·',1),(_binary 'Ori†yπ\Óá[h˜(8\·',1),(_binary 'Orj\Ÿyπ\Óá[h˜(8\·',1),(_binary 'OrlOyπ\Óá[h˜(8\·',1),(_binary 'Orm\›yπ\Óá[h˜(8\·',1),(_binary 'Or;\„yπ\Óá[h˜(8\·',2),(_binary 'OrG\Óyπ\Óá[h˜(8\·',2),(_binary 'OrJyπ\Óá[h˜(8\·',2),(_binary 'Ù¥fy∂\Óá[h˜(8\·',2),(_binary 'OrK\∆yπ\Óá[h˜(8\·',3),(_binary 'OrSyπ\Óá[h˜(8\·',3),(_binary 'Ord$yπ\Óá[h˜(8\·',3),(_binary 'OreÙyπ\Óá[h˜(8\·',3),(_binary 'Orgmyπ\Óá[h˜(8\·',3),(_binary 'Orâøyπ\Óá[h˜(8\·',4),(_binary 'OrãGyπ\Óá[h˜(8\·',4),(_binary 'Orå\Áyπ\Óá[h˜(8\·',4),(_binary 'Orsyπ\Óá[h˜(8\·',5),(_binary 'Oru\Èyπ\Óá[h˜(8\·',5),(_binary 'Orw∏yπ\Óá[h˜(8\·',5),(_binary 'Orx˝yπ\Óá[h˜(8\·',5),(_binary 'Orz.yπ\Óá[h˜(8\·',5),(_binary 'Or{ayπ\Óá[h˜(8\·',5),(_binary 'OrÉ#yπ\Óá[h˜(8\·',5),(_binary 'Or|syπ\Óá[h˜(8\·',6),(_binary 'Or\≈yπ\Óá[h˜(8\·',6),(_binary 'OrÅyπ\Óá[h˜(8\·',6),(_binary 'OrÇ yπ\Óá[h˜(8\·',6),(_binary 'OrÉ#yπ\Óá[h˜(8\·',7),(_binary 'Orà*yπ\Óá[h˜(8\·',7),(_binary 'Orâøyπ\Óá[h˜(8\·',7),(_binary 'OrãGyπ\Óá[h˜(8\·',7),(_binary 'Orå\Áyπ\Óá[h˜(8\·',7),(_binary 'OrÑÄyπ\Óá[h˜(8\·',8),(_binary 'OrÜ(yπ\Óá[h˜(8\·',8),(_binary 'Orà*yπ\Óá[h˜(8\·',8);
/*!40000 ALTER TABLE `products_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(150) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mancillaariadna@gmail.com','Ariadna Mancilla',NULL,'$2b$10$UIlb8ACy.GnK1AYEi4f3TOTTPAMEF/hjLW4rry8RS6AgOMBb/K/iC');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 19:28:08
