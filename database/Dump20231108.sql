-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: website_sammishop
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL,
  `category_status` tinyint NOT NULL,
  `content` varchar(255) NOT NULL,
  `hotcategory` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (16,' TRANG ĐIỂM - MAKEUP','1615569860-dress.png',1,1,'<p>&nbsp;TRANG ĐIỂM - MAKEUP phụ nữ</p>\r\n',1,'2021-03-12 17:24:20','2021-06-29 08:18:27'),(17,'CHĂM SÓC DA - SKINCARE','1615569923-polo.png',1,1,'<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://sammishop.com/collections/skin-care\">CHĂM S&Oacute;C DA - SKINCARE</a></p>\r\n\r\n<p><a href=\"https://sammishop.com/collections/skin-care\">CHĂM S&Oacute;C DA - SKINCARE</a></p>\r\n',0,'2021-03-12 17:25:23',NULL),(18,' CHĂM SÓC TÓC - HAIR','1615570611-necklace.png',1,1,'<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://sammishop.com/collections/cham-soc-toc-hair\">&nbsp;CHĂM S&Oacute;C T&Oacute;C - HAIR</a></p>\r\n\r\n<p><a href=\"https://sammishop.com/collections/cham-soc-toc-hair\">&nbsp;CHĂM S&Oacute;C T&Oacute;C - HAIR</a></p>\r\n',1,'2021-03-12 17:36:51',NULL),(19,'CHĂM SÓC CƠ THỂ ','1615570642-shoe.png',1,1,'<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://sammishop.com/collections/cham-soc-co-the\">CHĂM S&Oacute;C CƠ THỂ - BATH &amp; BODY</a></p>\r\n',0,'2021-03-12 17:37:22','2021-03-14 02:05:02'),(20,' TOOLS - BRUSHES','1615570805-necklace.png',1,1,'<p><a href=\"https://sammishop.com/collections/tools-brushes\">&nbsp;TOOLS - BRUSHES</a></p>\r\n',0,'2021-03-12 17:40:05',NULL),(21,'SẢN PHẨM KHÁC - OTHERS','1615570830-sunglasses.png',1,1,'<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://sammishop.com/collections/san-pham-khac-others\">SẢN PHẨM KH&Aacute;C - OTHERS</a></p>\r\n',1,'2021-03-12 17:40:30',NULL),(22,'Blog - Beauty Tips/Review','1615570865-watch.png',1,0,'<ol>\r\n	<li>Blog - Beauty Tips/Review</li>\r\n</ol>\r\n',1,'2021-03-12 17:41:05','2021-06-29 08:18:52'),(23,' SET QUÀ TẶNG - GIFT','1615653389-polo.png',1,1,'<p><a href=\"https://sammishop.com/collections/set-qua-tang-gift\">&nbsp;SET QU&Agrave; TẶNG - GIFT</a></p>\r\n',0,'2021-03-13 06:11:33','2021-03-13 23:36:29'),(24,'tin tức khuyến mãi','',1,0,'',1,'2021-05-06 10:23:47',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `content` text NOT NULL,
  `status` tinyint NOT NULL,
  `hotnews` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,22,0,' Top 5 loại kem chống nắng body nhất định phải có','1615715336-la-roche-posay.jpg','<p>Top 5 loại kem chống nắng body nhất định phải c&oacute;111111111111</p>\r\n','<p>&nbsp;</p>\r\n\r\n<p>Top 5 loại kem chống nắng body nhất định phải c&oacute;1111111111111</p>\r\n',1,1,'2021-03-14 09:31:32','2021-03-14 18:58:11'),(4,22,0,'Thẩm mỹ Quốc tế Khaan áp dụng công nghệ giảm béo nổi bật','1619164766-cach-ke-long-may-dep-1.jpg','<p>Thẩm mỹ Quốc tế Khaan &aacute;p dụng c&ocirc;ng nghệ giảm b&eacute;o nổi bật</p>\r\n','<p>Thẩm mỹ Quốc tế Khaan &aacute;p dụng c&ocirc;ng nghệ giảm b&eacute;o nổi bật</p>\r\n',1,1,'2021-03-14 10:52:40','2021-04-23 14:59:26'),(5,22,0,'Bí kíp chọn kem lót cho mọi loại da','1615719213-mat-na-ngu-duong-da-2-trong-1-klairs-90ml-04.jpg','<p>Thẩm mỹ Quốc tế Khaan &aacute;p dụng c&ocirc;ng nghệ giảm b&eacute;o nổi bật</p>\r\n','<p>Thẩm mỹ Quốc tế Khaan &aacute;p dụng c&ocirc;ng nghệ giảm b&eacute;o nổi bật</p>\r\n',1,1,'2021-03-14 10:53:33','2021-03-14 19:16:22'),(6,22,0,'Bí quyết cho đôi lông mày tự nhiên cùng chì kẻ Karadium siêu mềm','1615724152-chi-ke-may-2-dau-karadium.jpg','<p><strong>Theo nh&acirc;n tướng học từ xa xưa của người &Aacute; Đ&ocirc;ng, bộ ch&acirc;n m&agrave;y c&oacute; ảnh hưởng &iacute;t nhiều đến vận tr&igrave;nh cuộc đời của mỗi người. V&agrave; theo nh&acirc;n tướng học, h&agrave;ng l&ocirc;ng m&agrave;y l&agrave; một trong những ngũ quan ảnh hưởng đến vận mệnh con người. Đường n&eacute;t l&ocirc;ng m&agrave;y phần n&agrave;o biểu thị cho vận tr&igrave;nh cuộc sống. Bởi lẽ đ&oacute;, sở hữu đ&ocirc;i l&ocirc;ng m&agrave;y đẹp v&agrave; hợp tướng mạo l&agrave; điều ai cũng mong muốn. Coco shop giới thiệu đến n&agrave;ng những điều n&ecirc;n lưu &yacute; v&agrave; đầy đủ c&aacute;c bước hướng dẫn c&aacute;ch kẻ l&ocirc;ng m&agrave;y.</strong></p>\r\n','<p>Theo nh&acirc;n tướng học từ xa xưa của người &Aacute; Đ&ocirc;ng, bộ ch&acirc;n m&agrave;y c&oacute; ảnh hưởng &iacute;t nhiều đến vận tr&igrave;nh cuộc đời của mỗi người. V&agrave; theo nh&acirc;n tướng học, h&agrave;ng l&ocirc;ng m&agrave;y l&agrave; một trong những ngũ quan ảnh hưởng đến vận mệnh con người. Đường n&eacute;t l&ocirc;ng m&agrave;y đ&atilde; phần n&agrave;o n&oacute;i l&ecirc;n vận tr&igrave;nh cuộc sống. Bởi lẽ đ&oacute;, sở hữu đ&ocirc;i l&ocirc;ng m&agrave;y đẹp v&agrave; hợp tướng mạo l&agrave; điều ai cũng mong muốn.&nbsp;<a href=\"https://cocoshop.vn/\">Coco shop</a>&nbsp;giới thiệu đến n&agrave;ng những điều n&ecirc;n lưu &yacute; v&agrave; đầy đủ c&aacute;c bước hướng dẫn c&aacute;ch kẻ l&ocirc;ng m&agrave;y.<br />\r\n<br />\r\nNhững d&aacute;ng l&ocirc;ng m&agrave;y thường gặp<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"cach ke long may dep 1\" src=\"https://cocoshop.vn/uploads/news/2020_02/cach-ke-long-may-dep-1.jpg\" style=\"height:660px; width:564px\" /></p>\r\n\r\n<p><br />\r\n<br />\r\nĐể c&oacute; được một đ&ocirc;i ch&acirc;n m&agrave;y đẹp v&agrave; hợp phong thủy mang lại vận kh&iacute; tốt cho chủ nh&acirc;n th&igrave; bạn cần chọn d&aacute;ng m&agrave;y ph&ugrave; hợp với khung xương mặt. Đ&acirc;y kh&ocirc;ng chỉ l&agrave; nh&acirc;n tướng học m&agrave; trước hết n&oacute; mang t&iacute;nh thẩm mỹ rất l&agrave; cao. Kh&ocirc;ng chỉ l&agrave; d&aacute;ng m&agrave;y m&agrave; bạn c&ograve;n phải để &yacute; đến n&agrave;u của ch&acirc;n m&agrave;y c&oacute; ph&ugrave; hợp với m&agrave;u da của bạn chưa. Nếu n&agrave;ng c&oacute; nước da sậm sẽ kh&ocirc;ng th&iacute;ch hợp với cặp l&ocirc;ng m&agrave;y mảnh, nhạt. Ngược lại, nếu sở hữu l&agrave;n da trắng, s&aacute;ng, n&agrave;ng cũng chẳng cần t&ocirc; vẽ cho m&agrave;i ng&agrave;i qu&aacute; đậm. Ch&acirc;n m&agrave;y qu&aacute; đỗi nhạt nh&ograve;a sẽ ảnh hưởng đến vận kh&iacute;, l&agrave;m gương mặt thất thần, v&ocirc; hồn v&agrave; kh&ocirc;ng tạo được thiện cảm với người xunh quanh. Để đơn giản h&oacute;a, m&agrave;u l&ocirc;ng m&agrave;y chỉ cần chọn theo c&ocirc;ng thức: T&oacute;c đen-m&agrave;y đen/n&acirc;u đậm, t&oacute;c n&acirc;u-m&agrave;y n&acirc;u gỗ đậm, t&oacute;c v&agrave;ng đỏ-m&agrave;y n&acirc;u bạc xỉu&hellip; chỉ cần m&agrave;u l&ocirc;ng m&agrave;y tr&ugrave;ng hay s&aacute;ng hơn m&agrave;u t&oacute;c một t&ocirc;ng l&agrave; được.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"cach ke long may dep 3 1024x536\" src=\"https://cocoshop.vn/uploads/news/2020_02/cach-ke-long-may-dep-3-1024x536.jpg\" style=\"height:314px; width:600px\" /></p>\r\n\r\n<p><br />\r\n<br />\r\nC&oacute; rất nhiều c&aacute;ch để c&oacute; đ&ocirc;i l&ocirc;ng m&agrave;y ưng &yacute; như phun, th&ecirc;u, rồi d&ugrave;ng b&uacute;t dạ, d&ugrave;ng phấn bột nhưng c&oacute; lẽ d&ugrave;ng&nbsp;<a href=\"https://cocoshop.vn/ke-may-eyebrown/\">ch&igrave; kẻ</a>&nbsp;vẫn mang lại n&eacute;t tự nhi&ecirc;n mềm mại v&agrave; chị em c&oacute; thể thoả sức s&aacute;ng tạo với nhiều d&aacute;ng l&ocirc;ng m&agrave;y mới<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"chi ke may 2 dau karadium 3 1\" src=\"https://cocoshop.vn/uploads/news/2020_02/chi-ke-may-2-dau-karadium-3_1.png\" style=\"height:831px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://cocoshop.vn/ke-may-eyebrown/chi-ke-may-2-dau-karadium-01-black-brown.html\">Ch&igrave; kẻ m&agrave;y 2 đầu Karadium</a>&nbsp;n&agrave;y c&oacute; thiết kế 2 đầu tiện lợi gồm 1 đầu ch&igrave;, 1 đầu chổi, gi&uacute;p t&aacute;n m&agrave;u l&ocirc;ng m&agrave;y tự nhi&ecirc;n v&agrave; đều nhất</li>\r\n	<li>Th&agrave;nh phần ho&agrave;n to&agrave;n l&agrave;nh t&iacute;nh, kh&ocirc;ng g&acirc;y độc hại cho da, đạt ti&ecirc;u chuẩn kiểm định chất lượng quốc tế.</li>\r\n	<li>Chống nước, mồ h&ocirc;i si&ecirc;u tốt, gi&uacute;p giữ đường kẻ m&agrave;y kh&ocirc;ng tr&ocirc;i, kh&ocirc;ng x&ecirc; dịch</li>\r\n	<li>Đầu ch&igrave; nhỏ chỉ 2mm dễ d&agrave;ng vẩy sợi hay tạo d&aacute;ng m&agrave;y</li>\r\n</ul>\r\n\r\n<p><br />\r\nCoco Shop c&oacute; đủ 5 tone m&agrave;u tha hồ cho c&aacute;c bạn chọn lựa để ph&ugrave; hợp với m&agrave;u da v&agrave; m&agrave;u t&oacute;c của mỗi bạn:</p>\r\n\r\n<ul>\r\n	<li>01: Black Brown</li>\r\n	<li>02: Dark Brown</li>\r\n	<li>03: Real Brown</li>\r\n	<li>04: Gray Brown</li>\r\n	<li>05: Light Brown</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"chi ke may 2 dau karadium 6\" src=\"https://cocoshop.vn/uploads/news/2020_02/chi-ke-may-2-dau-karadium-6.jpeg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><br />\r\nSau khi đ&atilde; chọn được d&aacute;ng l&ocirc;ng m&agrave;y v&agrave; m&agrave;u l&ocirc;ng m&agrave;y ph&ugrave; hợp với m&agrave;u da của m&igrave;nh bạn cần tiến h&agrave;nh vẽ ch&acirc;n m&agrave;y th&ocirc;i.<br />\r\n<br />\r\n<strong>Bước 1: X&aacute;c định c&aacute;ch điểm để tạo khu&ocirc;n</strong><br />\r\nĐầu ch&acirc;n m&agrave;y được x&aacute;c định bằng c&aacute;ch đặt một đường thẳng dọc theo c&aacute;ch mũi v&agrave; đầu mắt, điểm giao với ch&acirc;n m&agrave;y ở đ&acirc;u th&igrave; đ&oacute; l&agrave; đầu ch&acirc;n m&agrave;y (bạn c&oacute; thể d&ugrave;ng lu&ocirc;n c&acirc;y b&uacute;t kẻ m&agrave;y để x&aacute;c định c&aacute;c điểm).<br />\r\nTiếp theo để x&aacute;c định điểm đu&ocirc;i l&ocirc;ng m&agrave;y, n&agrave;ng tạo đường thẳng giả định từ c&aacute;nh mũi đi qua đu&ocirc;i mắt đến điểm giao ở ch&acirc;n m&agrave;y.<br />\r\nCuối c&ugrave;ng đỉnh ch&acirc;n m&agrave;y c&oacute; thể x&aacute;c định bằng đường thẳng từ c&aacute;nh mũi qua con ngươi hoặc sẽ bằng 2/3 chiều d&agrave;i ch&acirc;n m&agrave;y t&iacute;nh từ đầu m&agrave;y.<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"cach ke long may dep 4 1024x682\" src=\"https://cocoshop.vn/uploads/news/2020_02/cach-ke-long-may-dep-4-1024x682.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p><br />\r\n<br />\r\n<strong>Bước 2: Tạo khu&ocirc;n ch&acirc;n m&agrave;y</strong><br />\r\nSau khi đ&atilde; c&oacute; ba điểm quan trọng nhất, n&agrave;ng tiến h&agrave;nh đến thao t&aacute;c định h&igrave;nh khu&ocirc;n l&ocirc;ng m&agrave;y bằng c&aacute;ch nối ba điểm để tạo đường kẻ tr&ecirc;n. Tiếp đến x&aacute;c định độ rộng giữa hai đường l&ocirc;ng m&agrave;y để kẻ đường kẻ dưới. B&iacute; quyết cho khu&ocirc;n ch&acirc;n m&agrave;y sắc n&eacute;t nhất l&agrave; n&agrave;ng n&ecirc;n sử dụng ch&igrave; c&oacute; đầu mảnh hoặc s&aacute;p kẻ ngang.<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"cach ke long may dep 8\" src=\"https://cocoshop.vn/uploads/news/2020_02/cach-ke-long-may-dep-8.jpg\" style=\"height:750px; width:600px\" /></p>\r\n\r\n<p><br />\r\n<br />\r\n<strong>Bước 3: T&ocirc; m&agrave;u ch&acirc;n m&agrave;y</strong><br />\r\nD&ugrave;ng ch&igrave; vẽ l&ocirc;ng m&agrave;y bắt đầu t&ocirc; v&agrave;o trong phần khu&ocirc;n sẵn c&oacute;. N&agrave;ng h&atilde;y t&ocirc; nhẹ nh&agrave;ng cho m&agrave;u được đều v&agrave; tự nhi&ecirc;n, nhưng nơi nhạt m&agrave;u, thưa l&ocirc;ng th&igrave; cần được dặm đậm hơn. B&iacute; quyết để h&agrave;ng l&ocirc;ng m&agrave;y đẹp, đều m&agrave;u một c&aacute;ch ho&agrave;n hảo ch&iacute;nh l&agrave; d&ugrave;ng phấn bột ch&acirc;n m&agrave;y c&ugrave;ng m&agrave;u t&ocirc; đ&egrave; l&ecirc;n phần ch&igrave; đ&atilde; t&ocirc; trước đ&oacute;. Sau đ&oacute; d&ugrave;ng cọ chải lại cho những sợi l&ocirc;ng &ldquo;ngay h&agrave;ng thẳng lối&rdquo; v&agrave; đều m&agrave;u. Cuối c&ugrave;ng sử dụng mascara ch&acirc;n m&agrave;y &ldquo;nhuộm&rdquo; m&agrave;u những sợi l&ocirc;ng cho tr&ugrave;ng m&agrave;u vẽ b&ecirc;n dưới. Th&ecirc;m một chi tiết cho đ&ocirc;i l&ocirc;ng m&agrave;y tự nhi&ecirc;n nhất l&agrave; phần đầu n&ecirc;n nhạt m&agrave;u hơn phần đu&ocirc;i, sự chuyển m&agrave;u của ch&acirc;n m&agrave;u tương tự phong c&aacute;ch ombr&eacute;.<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"cach ke long may dep 9 1024x534\" src=\"https://cocoshop.vn/uploads/news/2020_02/cach-ke-long-may-dep-9-1024x534.jpg\" style=\"height:313px; width:600px\" /></p>\r\n\r\n<p><br />\r\n<br />\r\n<strong>Bước 4: Điều chỉnh</strong><br />\r\nĐể đ&ocirc;i l&ocirc;ng m&agrave;y th&ecirc;m sắc sảo, sắc n&eacute;t n&agrave;ng h&atilde;y d&ugrave;ng tăm b&ocirc;ng loại bỏ phần bột thừa hay n&eacute;t vẽ bị lem. Sau đ&oacute; th&ecirc;m ch&uacute;t phấn s&aacute;ng hoặc kem che khuyết điểm để l&agrave;m nổi bật h&agrave;ng l&ocirc;ng m&agrave;y.<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"cach ke long may dep 10 1024x576\" src=\"https://cocoshop.vn/uploads/news/2020_02/cach-ke-long-may-dep-10-1024x576.jpg\" style=\"height:338px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n',1,1,'2021-03-14 12:15:52',NULL),(7,24,0,'Bí kíp chọn 4 món Skincare cơ bản dành cho nàng mới tập tành','1620296718-2_d1766699fe6545358953cdb4094e3350_grande (1).jpg','<p>Bắt đầu cho c&ocirc;ng cuộc chăm s&oacute;c l&agrave;n da với nhiều loại sản phẩm c&ugrave;ng những chức năng kh&aacute;c nhau đ&ocirc;i khi khiến bạn kh&ocirc;ng biết lựa chọn như thế n&agrave;o cho ph&ugrave; hợp. L&agrave;m sao để khi sử dụng, hợp &yacute; với da v&agrave; kh&ocirc;ng g&acirc;y k&iacute;ch ứng đ&oacute; l&agrave; một trong những vấn đề v&ocirc; c&ugrave;ng quan trọng.</p>\r\n\r\n<p>D&agrave;nh cho những bạn mới tập t&agrave;nh skincare, nh&agrave; Sam h&ocirc;m nay sẽ đưa đến cho bạn 4 m&oacute;n bảo bối cũng như b&iacute; k&iacute;p gi&uacute;p cho bạn mới &ldquo;bước ch&acirc;n v&agrave;o nghề&rdquo; chọn được c&aacute;c sản phẩm l&agrave;nh t&iacute;nh cũng như an to&agrave;n nhất cho mọi loại da sử dụng.</p>\r\n','<p><strong>1.&nbsp;Chọn tẩy trang an to&agrave;n sạch s&acirc;u</strong></p>\r\n\r\n<p>Dẫu bạn kh&ocirc;ng trang điểm cũng n&ecirc;n tẩy trang để da mặt được l&agrave;m sạch &ldquo;tối đa&rdquo; c&ograve;n nếu đ&atilde; makeup th&igrave; c&agrave;ng cần tẩy trang kĩ hơn nữa n&egrave; v&igrave; lớp makeup tồn tr&ecirc;n da sẽ khiến da dễ sinh mụn. Nước tẩy trang nhẹ dịu v&agrave; kh&ocirc;ng l&agrave;m mất đi c&acirc;n bằng độ ẩm l&agrave; chai tẩy trang l&iacute; tưởng nhất cho bạn vừa mới bắt đầu skincare.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000246282/file/2_d1766699fe6545358953cdb4094e3350_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SẢN PHẨM:<br />\r\nLOREAL MICELLAR WATER 3-IN-1 REFRESHING EVEN FOR SENSITIVE SKIN 400ML<br />\r\nC&oacute; t&aacute;c dụng l&agrave;m sạch, giữ ẩm v&agrave; dưỡng mềm da đồng thời chỉ trong một sản phẩm. Sản phẩm gi&uacute;p lấy đi sạch cặn trang điểm nhưng kh&ocirc;ng l&agrave;m kh&ocirc; da. Hơn thế, th&agrave;nh phần an to&agrave;n, kh&ocirc;ng chứa cồn v&agrave; c&ocirc;ng nghệ ti&ecirc;n tiến gi&uacute;p da giữ nước, th&ocirc;ng tho&aacute;ng, mềm mượt chỉ trong một bước.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2.&nbsp;Chọn sữa rửa mặt nhẹ dịu</strong><br />\r\nRửa mặt 2 lần/ ng&agrave;y kh&ocirc;ng bao giờ ch&uacute;ng ta c&oacute; thể bỏ qua bước n&agrave;y được. Da mặt được l&agrave;m sạch cuốn tr&ocirc;i đi bụi bẩn bả nhờn l&agrave;m da th&ocirc;ng tho&aacute;ng hơn hẳn. Vẫn l&agrave; một em nhẹ dịu ngăn ngừa mụn v&agrave; an to&agrave;n cho da nhạy cảm sử dụng để bạn c&oacute; thể chọn lựa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000246282/file/3_f003036cc11440a58b87a3ca35d01909_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SẢN PHẨM:<br />\r\nSỮA RỬA MẶT SENKA PERFECT WHIP ACNES CARE 100G<br />\r\nChiết xuất hoa C&uacute;c từ v&ugrave;ng Kyoto Nhật Bản: một trong những dược liệu cổ truyền của người Nhật với t&aacute;c dụng chống vi khuẩn, kh&aacute;ng vi&ecirc;m.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3.&nbsp;Chọn toner cho da th&ecirc;m ẩm mịn</strong><br />\r\nSau c&aacute;c bước l&agrave;m da sạch, th&igrave; đ&acirc;y ch&iacute;nh l&agrave; l&uacute;c cấp ẩm cho da. Đồng thời toner c&ograve;n hỗ trợ kh&aacute;ng khuẩn v&agrave; ngừa vi&ecirc;m, c&acirc;n bằng độ Ph cho da vừa khỏe vừa xinh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000246282/file/4_70aa13b35f0748c8b48281aeb3d73c99_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SẢN PHẨM:<br />\r\nKLAIRS SUPPLE PREPARATION UNSCENTED TONER 180ML<br />\r\nTh&agrave;nh phần chiết xuất từ thực vật gi&uacute;p c&acirc;n bằng độ pH của da. Gi&uacute;p se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng.<br />\r\nHỗ trợ cải thiện hiệu quả chăm s&oacute;c da ở c&aacute;c bước tiếp theo, gi&uacute;p l&agrave;n da của bạn hấp thụ serum hay kem dưỡng tốt hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4.&nbsp;Chọn kem dưỡng l&agrave;nh t&iacute;nh nhưng nhiều dưỡng chất</strong><br />\r\nTh&ecirc;m dưỡng chất th&ecirc;m năng lượng, kem dưỡng ẩm kh&ocirc;ng thể thiếu v&agrave; l&agrave; một trong những &ldquo;vật bất li th&acirc;n&rdquo; với nhiều c&ocirc; n&agrave;ng. Gi&uacute;p giảm k&iacute;ch ứng, giảm ửng đỏ cũng như l&agrave;m ẩm mịn da hơn, ngăn ngừa t&igrave;nh trạng &ldquo;da thiếu nước&rdquo; kh&ocirc; hanh bong tr&oacute;c. B&ecirc;n cạnh đ&oacute; kem dưỡng c&ograve;n cung cấp c&aacute;c dưỡng chất cần thiết kh&aacute;c nu&ocirc;i da khỏe mạnh v&agrave; s&aacute;ng mịn hơn mỗi ng&agrave;y tr&ocirc;ng&nbsp;thấy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000246282/file/5_286ec86b69c4423f9023f4cd8f5523d9_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SẢN PHẨM:<br />\r\nSKIN1004 MADAGASCAR CENTELLA CREAM 75ML<br />\r\nVới th&agrave;nh phần ch&iacute;nh l&agrave; rau m&aacute; từ v&ugrave;ng Madagascar l&agrave;m giảm t&igrave;nh trạng mụn, hỗ trợ kh&aacute;ng vi&ecirc;m, l&agrave;m dịu, t&aacute;i tạo da, dưỡng ẩm, tăng độ đ&agrave;n hồi cho da v&agrave; l&agrave;m dịu l&agrave;n da mụn, t&aacute;i tạo da mang lại l&agrave;n da tươi mới.</p>\r\n\r\n<p>&nbsp;</p>\r\n',1,1,'2021-05-06 10:25:18',NULL);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quality` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,74,21,4),(2,74,23,1),(3,75,21,1),(4,76,28,1),(5,77,22,9),(6,77,27,3),(7,78,27,3),(8,79,27,3),(9,80,27,3),(10,80,21,3),(11,81,23,4),(12,82,29,1),(13,82,31,10),(14,82,19,4),(15,83,30,3),(16,84,29,1),(17,84,20,3),(18,85,29,1),(19,85,31,4),(20,86,29,2),(21,87,29,4),(22,88,29,3),(23,88,31,1),(24,88,34,3);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL COMMENT 'Id của user trong trường hợp đã login và đặt hàng, là khóa ngoại liên kết với bảng users',
  `fullname` varchar(255) DEFAULT NULL COMMENT 'Tên khách hàng',
  `address` varchar(255) DEFAULT NULL COMMENT 'Địa chỉ khách hàng',
  `phone` varchar(255) DEFAULT NULL COMMENT 'SĐT khách hàng',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email khách hàng',
  `note` text COMMENT 'Ghi chú từ khách hàng',
  `price_total` int DEFAULT NULL COMMENT 'Tổng giá trị đơn hàng',
  `payment_status` tinyint DEFAULT NULL COMMENT 'Trạng thái đơn hàng: 0 - Chưa thành toán, 1 - Đã thành toán',
  `status` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày tạo đơn',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày cập nhật cuối',
  `delivery_user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (74,1,'Phạm Thị Thảo','Triều Khúc-Thanh xuân-Hà Nội','03956793339','phamthithao@gmail.com','',4264000,1,4,'2021-04-23 07:40:24','2021-05-06 17:51:07',NULL),(75,4,'Thảo NĐ','Nam Định','0395679339','phamthithao78912@gmail.com','',351000,1,1,'2021-04-23 08:01:50','2021-05-06 17:37:34',NULL),(76,4,'Phan Anh Đức','Nam Định','0395679339','phamthithao78912@gmail.com','',128000,0,1,'2021-04-23 08:05:21','2021-05-06 17:51:07',NULL),(77,4,'Toàn','Hà Đông - Hà Nội','0395679339','phamthithao78912@gmail.com','',4425000,1,1,'2021-05-06 04:50:33','2021-05-06 17:37:34',NULL),(78,4,'Toàn','Nam Định','0395679339','phamthithao78912@gmail.com','',1698000,0,1,'2021-05-06 04:54:20','2021-05-06 17:37:34',NULL),(79,4,'Toàn','Nam Định','0395679339','phamthithao78912@gmail.com','',1698000,1,1,'2021-05-06 04:55:35','2021-05-06 17:37:34',NULL),(80,4,'Toàn','Nam Định','0395679339','phamthithao78912@gmail.com','',1698000,0,1,'2021-05-06 04:56:21','2021-05-06 17:37:34',NULL),(81,6,'Hoàng Mạnh Tú','Triều Khúc-Thanh Trì -Hà Nội','0963873812','hoangmanhtu@gmail.com','',11440000,1,3,'2021-05-06 10:42:45','2021-05-06 17:49:52',NULL),(82,5,'Phan Anh Đức','Hà Đông','0392831499','phananhduc@gmail.com','',2314200,0,0,'2021-05-06 11:26:10',NULL,NULL),(83,0,'Tú','Hà Nội','03956793339','binkoy0809@gmail.com','',1074600,0,1,'2021-05-06 11:29:16','2021-06-29 08:16:11',NULL),(84,1,'Phạm Thị Thảo','Triều Khúc-Thanh xuân-Hà Nội','03956793339','phamthithao@gmail.com','',288000,0,3,'2021-05-06 11:37:06',NULL,NULL),(85,7,'Nguyễn Thị Biên','Khối 2, Thị trấn Mường Xén, Huyện Kỳ Sơn','0846842287','phamthithao789@gmail.com','',397920,0,0,'2021-05-06 13:43:54',NULL,NULL),(86,7,'Nguyễn Thị Biên','Khối 2, Thị trấn Mường Xén, Huyện Kỳ Sơn','0846842287','phamthithao789@gmail.com','',168000,0,3,'2021-05-06 14:05:34',NULL,NULL),(87,8,'Phạm Thị Thảo','Nhà 88, Ấp Hiệp Sậy Niếu B, Xã Phụng Hiệp, Huyện Phụng Hiệp','0846842288','Binkoy070809@gmail.com','',336000,1,1,'2021-06-24 10:31:42','2021-06-29 08:16:32',NULL),(88,0,'Nguyễn Văn Dân (chồng), Nguyễn Thị Hằng (vợ)','Nhà 88, Ấp Hiệp Sậy Niếu B, Xã Phụng Hiệp, Huyện Phụng Hiệp','0376457912','phamthithao78912@gmail.com','gọi điện trước khi ship 15p b nhé!',630480,0,1,'2021-06-29 04:56:46','2023-11-07 21:58:19',10);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producers`
--

DROP TABLE IF EXISTS `producers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `hotproducer` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producers`
--

LOCK TABLES `producers` WRITE;
/*!40000 ALTER TABLE `producers` DISABLE KEYS */;
INSERT INTO `producers` VALUES (1,'Loreal','1615647600-thumb_8.png',1,1,'2021-03-13 14:47:43','2021-03-13 23:47:37'),(2,'Clinique','1615647626-thumb_6.png',1,1,'2021-03-13 15:00:26','2021-03-13 23:47:40'),(3,'Mac','1615647666-thumb_5.png',1,1,'2021-03-13 15:01:06','2021-03-13 23:47:59'),(4,'Maybelline','1615647688-thumb_3.png',1,1,'2021-03-13 15:01:28',NULL),(5,'Shu Uemura','1615647711-thumb_4.png',1,1,'2021-03-13 15:01:51','2021-03-13 23:48:04'),(6,' Estee Lauder','1615647766-thumb_2.png',1,1,'2021-03-13 15:02:46','2021-03-13 23:47:46');
/*!40000 ALTER TABLE `producers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `avatar` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (89,20,'1615621993-d8f20211de563bef58cb162a95b88291.jpg'),(90,20,'1615621993-nuoc-tay-trang-cho-da-thuong-va-da-kho-biore-perfect-cleansing-water-soften-up-90ml-sieu-thi-nhat-ban-japana-3.jpeg'),(91,21,'1615624936-tay-da-chet-bioderma.jpg'),(92,21,'1615624936-tay-da-chet-bioderma-3.jpg'),(93,21,'1615624936-tay-da-chet-bioderma-4.jpg'),(94,22,'1615625023-son-burberry.jpg'),(95,22,'1615625023-son-burberry-1.jpg'),(96,22,'1615625023-son-burberry-2.jpg'),(97,22,'1615625023-son-burberry-4.jpg'),(98,22,'1615625023-son-burberry-5.jpg'),(99,23,'1615625456-751d3395-c9ee-470a-af53-6462bc2ed45f_1_big.png'),(100,23,'1615625456-db5cf42f4980afe600f685a914999774.jpg'),(101,23,'1615625456-marc-jacobs-daisy-love-eau-de-toilette-100ml.jpg'),(102,24,'1615625758-ff064ddadb7893b5fd4c5dccdde7cb69.jpg'),(103,24,'1615625758-marc-jacobs-daisy-love-eau-de-toilette-100ml.jpg'),(104,24,'1615625758-mat-na-ngu-duong-da-2-trong-1-klairs-90ml-01.jpg'),(105,25,'1615628016-kem-u-tresemme-keratin-smooth-vao-nep-muot-ma-180ml-1.jpg'),(106,25,'1615628016-kem-u-tresemme-keratin-smooth-vao-nep-muot-ma-180ml-3 (1).jpg'),(107,26,'1615628503-dau-xa-tresemme-keratin-smooth-tinh-dau-argan-va-keratin-1.jpg'),(108,26,'1615628503-dau-xa-tresemme-keratin-smooth-tinh-dau-argan-va-keratin-3.jpg'),(109,26,'1615628503-dau-xa-tresemme-keratin-smooth-tinh-dau-argan-va-keratin-4.jpg'),(110,27,'1615628631-co-trang-diem-lime-1.jpg'),(111,27,'1615628631-co-trang-diem-lime-2.png'),(112,27,'1615628631-co-trang-diem-lime-3.jpg'),(113,28,'1615628707-mat-na-ngu-duong-da-2-trong-1-klairs-90ml-06.jpg'),(114,28,'1615628707-mi-gia-1.jpg'),(115,28,'1615628707-mi-gia-dahlia-3d-17.jpg'),(116,29,'1615652725-x1.jpg'),(117,29,'1615652725-x3.jpg'),(118,29,'1615652725-x4.jpg'),(119,30,'1615797162-tay-da-chet-bioderma.jpg'),(120,30,'1615797162-tay-da-chet-bioderma-3.jpg'),(121,30,'1615797162-tay-da-chet-bioderma-4.jpg'),(122,19,'1619164790-cach-ke-long-may-dep-1.jpg'),(123,19,'1619164790-chi-ke-may-2-dau-karadium.jpg'),(124,31,'1620300024-181600728_5647425038631489_6035670320133101425_n.jpg'),(125,31,'1620300024-2_d1766699fe6545358953cdb4094e3350_grande (1).jpg'),(131,33,'1624931270-100b (2).png'),(132,33,'1624931270-100d.png'),(133,33,'1624931270-104c.png'),(134,32,'1624931329-100d.png'),(135,32,'1624931329-104a.png'),(136,32,'1624931329-104b.jpg'),(137,34,'1624942172-100d.png'),(138,34,'1624942172-104a.png'),(139,34,'1624942172-104b.jpg'),(140,35,'1699364073-004_1_0010.png'),(141,36,'1699364261-004_1_0007.png');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `producer_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quality` int DEFAULT NULL,
  `summary` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `discount` int NOT NULL DEFAULT '0',
  `hotproduct` tinyint NOT NULL,
  `total_number_rating` int NOT NULL,
  `total_rating` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (19,17,3,'Klairs Freshly Juiced Vitamin E Mask 90ml','1619164790-chi-ke-may-2-dau-karadium.jpg',495000,0,'<p>KLAIRS FRESHLY JUICED VITAMIN E MASK 90ML</p>\r\n','<p>KLAIRS FRESHLY JUICED VITAMIN E MASK 90ML</p>\r\n',1,27,1,0,0,'2021-03-13 07:51:54','2021-04-23 14:59:50',NULL),(20,17,5,'Nước tẩy trang dưỡng ẩm Biore Perfect Cleansing Water Soften Up 90ml (IP01)','1615621993-d8f20211de563bef58cb162a95b88291.jpg',68000,4,'<p>NƯỚC TẨY TRANG DƯỠNG ẨM BIORE PERFECT CLEANSING WATER SOFTEN UP 90ML (IP01)</p>\r\n','<p>NƯỚC TẨY TRANG DƯỠNG ẨM BIORE PERFECT CLEANSING WATER SOFTEN UP 90ML (IP01)</p>\r\n',1,0,1,0,0,'2021-03-13 07:53:13','2021-03-13 23:15:56',NULL),(21,17,6,'Tẩy Da Chết Bioderma Sebium Gel Gommant 100ml','1615624936-tay-da-chet-bioderma.jpg',390000,197,'<p>Tẩy Da Chết Bioderma Sebium Gel Gommant 100ml</p>\r\n','<p>Tẩy Da Chết Bioderma Sebium Gel Gommant 100ml</p>\r\n',1,10,1,0,0,'2021-03-13 08:42:16','2021-03-13 23:15:50',NULL),(22,18,1,'Son Burberry Kisses Burberry Kisses màu 105 -109','1615625023-son-burberry-1.jpg',700000,50,'<p>Son Burberry Kisses</p>\r\n','<pre>\r\nSon Burberry Kisses</pre>\r\n',1,40,1,0,0,'2021-03-13 08:43:43','2021-03-13 23:17:16',NULL),(23,19,5,'Nước Hoa Marc Jacobs Daisy Love EDT 100ml','1615625456-download-3 (1).jpg',2860000,46,'<p>Nước Hoa Marc Jacobs Daisy Love EDT 100ml</p>\r\n','<p>Nước Hoa Marc Jacobs Daisy Love EDT 100ml</p>\r\n',1,0,1,0,0,'2021-03-13 08:50:56','2021-03-13 23:15:39',NULL),(24,19,3,'MJ EAU SO DECADENCE EDT 100ml','1615625758-ff064ddadb7893b5fd4c5dccdde7cb69.jpg',3420000,50,'<p>Ho&agrave;n hảo cho ban ng&agrave;y v&agrave; cả ban đ&ecirc;m, Marc Jacobs Decadence Eau So Decadent mang đến một phong c&aacute;ch mới cho c&aacute;c bạn g&aacute;i, đầy nữ t&iacute;nh, vui vẻ nhưng vẫn kh&ocirc;ng k&eacute;m phần sang trọng, quyến r','<p>Ho&agrave;n hảo cho ban ng&agrave;y v&agrave; cả ban đ&ecirc;m, Marc Jacobs Decadence Eau So Decadent mang đến một phong c&aacute;ch mới cho c&aacute;c bạn g&aacute;i, đầy nữ t&iacute;nh, vui vẻ nhưng vẫn kh&ocirc;ng k&eacute;m phần sang trọng, quyến rũ.</p>\r\n',1,0,0,0,0,'2021-03-13 08:55:58','2021-03-13 23:15:33',NULL),(25,18,2,'Kem Ủ Tresemmé Keratin Smooth Vào Nếp Mượt Mà - 180ml','1615628016-kem-u-tresemme-keratin-smooth-vao-nep-muot-ma-180ml-3.jpg',180000,1000,'<p>Kem Ủ Tresemm&eacute; Keratin Smooth V&agrave;o Nếp Mượt M&agrave; - 180ml</p>\r\n','<p>Kem Ủ Tresemm&eacute; Keratin Smooth V&agrave;o Nếp Mượt M&agrave; - 180ml</p>\r\n',1,5,0,0,0,'2021-03-13 09:33:36','2021-03-13 23:15:22',NULL),(26,18,4,'Dầu Xả Tresemmé Keratin Smooth Tinh Dầu Argan Và Keratin 620g','1615628503-dau-xa-tresemme-keratin-smooth-tinh-dau-argan-va-keratin-1.jpg',185000,200,'<p>Dầu Xả Tresemm&eacute; Keratin Smooth Tinh Dầu Argan V&agrave; Keratin 620g</p>\r\n','<p>Dầu Xả Tresemm&eacute; Keratin Smooth Tinh Dầu Argan V&agrave; Keratin 620g</p>\r\n',1,0,0,0,0,'2021-03-13 09:41:43','2021-03-13 23:15:12',NULL),(27,20,6,'Cọ trang điểm Lime 202 Cọ trang điểm mắt tạo điểm nhấn','1615628631-co-trang-diem-lime-1.jpg',215000,0,'<p>Cọ trang điểm Lime 202 Cọ trang điểm mắt tạo điểm nhấn</p>\r\n','<p>Cọ trang điểm Lime 202 Cọ trang điểm mắt tạo điểm nhấn</p>\r\n',1,0,0,0,0,'2021-03-13 09:43:51','2021-03-13 23:16:28',NULL),(28,17,2,'Mi giả Dahlia (3D-17) v Dahlia (3D-17)','1615628707-mi-gia-dahlia-3d-17.jpg',128000,30,'<p>Mi giả Dahlia (3D-17)</p>\r\n','<p>Mi giả Dahlia (3D-17)</p>\r\n',1,0,0,0,0,'2021-03-13 09:45:07','2021-03-14 01:27:57',NULL),(29,21,1,'Sữa Rửa Mặt trà xanh Innisfree Green Tea Cleansing Foam','1615652725-x1.jpg',140000,88,'<p>Sữa Rửa Mặt tr&agrave; xanh Innisfree Green Tea Cleansing Foam</p>\r\n','<p>Sữa Rửa Mặt tr&agrave; xanh Innisfree Green Tea Cleansing Foam</p>\r\n',1,40,1,0,0,'2021-03-13 16:25:25',NULL,NULL),(30,16,5,'Kem dưỡng Sebium Hydra Bioderma','1615797162-tay-da-chet-bioderma.jpg',398000,197,'<p>Kem Dưỡng Ẩm Bioderma Sebium Hydra 40ml với chất kem m&aacute;t mịn, thẩm thấu nhanh gi&uacute;p cung cấp c&aacute;c hoạt chất dưỡng ẩm chuy&ecirc;n s&acirc;u cho l&agrave;n da mềm mại, mịn m&agrave;ng. Sản phẩm gi&uacute;p lấy lại sự c&acirc;n bằng về','<p>Kem Dưỡng Ẩm&nbsp;<a href=\"https://cocoshop.vn/group/bioderma/\">Bioderma&nbsp;</a>Sebium Hydra 40ml với chất kem m&aacute;t mịn, thẩm thấu nhanh gi&uacute;p cung cấp c&aacute;c hoạt chất dưỡng ẩm chuy&ecirc;n s&acirc;u cho l&agrave;n da mềm mại, mịn m&agrave;ng. Sản phẩm gi&uacute;p lấy lại sự c&acirc;n bằng về độ ẩm cho da theo phương ph&aacute;p sinh học. Đồng thời c&aacute;c v&ugrave;ng da bị ửng đỏ, kh&ocirc; r&aacute;t được l&agrave;m dịu nhanh ch&oacute;ng, mang lại cảm gi&aacute;c thư th&aacute;i khi sử dụng. Đặc biệt, d&ograve;ng kem dưỡng được sản xuất với D.A.F (Dermatological Advanced Formulation - C&ocirc;ng thức Chăm s&oacute;c da Cao cấp) đ&atilde; được chứng nhận gi&uacute;p tăng cường độ dung nạp của l&agrave;n da. Ph&ugrave; hợp với mọi loại da.</p>\r\n\r\n<h3><strong>Th&agrave;nh phần</strong></h3>\r\n\r\n<p>Aqua/​Water/​Eau, Glycerin, Paraffinum Liquidum/​Mineral Oil/​Huile Minerale, Ethylhexyl Palmitate, Dipropylene Glycol, Xylitol, Bis-PEG/​PPG-16/​16 PEG/​PPG-16/​16 Dimethicone, Sodium Acrylate/​Sodium Acryloyldimethyl Taurate Copolymer, Isohexadecane, Caprylic/​Capric Triglyceride, Glycyrrhetinic Acid, Tocopheryl Acetate, Polysorbate 80, Disodium EDTA, Allantoin, Fructooligosaccharides, Mannitol, Propylene Glycol, Cetrimonium Bromide, Ceramide 3, Rhamnose, Ginkgo Biloba Leaf Extract, Dodecyl Gallate, Laminaria Ochroleuca Extract, Fragrance (Parfum).<br />\r\n<strong>C&Ocirc;NG DỤNG</strong><br />\r\n-<a href=\"https://cocoshop.vn/kem-duong/\">Kem dưỡng ẩm</a>&nbsp;Bioderma S&eacute;bium Hydra d&agrave;nh cho l&agrave;n da kh&ocirc; đang c&oacute; mụn.<br />\r\n-Sản phẩm gi&uacute;p si&ecirc;u dưỡng ẩm cho da v&agrave; đồng thời kh&oacute;a ẩm.<br />\r\n-Giảm ngay cảm gi&aacute;c kh&ocirc; nứt tr&ecirc;n da.<br />\r\n-Giảm triệu chứng mẩn đỏ tức th&igrave;.<br />\r\n-Sử dụng được cho mọi loại da. An to&agrave;n đặc biệt kh&ocirc;ng g&acirc;y k&iacute;ch ứng</p>\r\n\r\n<blockquote>\r\n<p><img alt=\"2\" src=\"https://cocoshop.vn/uploads/shops/2020_12/2.png\" style=\"height:600px; width:600px\" /></p>\r\n</blockquote>\r\n\r\n<p><br />\r\n<br />\r\n<strong>C&Aacute;CH D&Ugrave;NG&nbsp;</strong><br />\r\nSử dụng ng&agrave;y 2 lần s&aacute;ng v&agrave; tối.<br />\r\nSử dụng như bước kem dưỡng cuối c&ugrave;ng trong quy tr&igrave;nh chăm s&oacute;c da.<br />\r\nLấy một lượng vừa đủ, thoa v&agrave; massage nhẹ nh&agrave;ng cho kem thẩm thấu.<br />\r\nHiệu quả sử dụng tốt hơn khi d&ugrave;ng trọn bộ.<img alt=\"Kem dưỡng Sebium Hydra Bioderma 3\" src=\"https://cocoshop.vn/uploads/shops/2020_12/kem-duong-sebium-hydra-bioderma-3.jpg\" style=\"height:600px; width:600px\" /><br />\r\n<strong>DUNG T&Iacute;CH</strong>&nbsp;: 40ml<br />\r\n<strong>THƯƠNG HIỆU</strong>&nbsp;: Bioderma<br />\r\n<strong>XUẤT XỨ</strong>&nbsp;: Ph&aacute;p&nbsp;</p>\r\n',1,10,1,0,0,'2021-03-15 08:32:42','2021-03-15 15:44:36',NULL),(31,17,3,'TẨY TRANG BYPHASSE 500ML (IP01)','1620300024-181600728_5647425038631489_6035670320133101425_n.jpg',109000,1,'<p>Nước tẩy trang Byphasse Solution Micellaire l&agrave; một trong những loại nước tẩy trang b&igrave;nh d&acirc;n được ưa chuộng nhất hiện nay. Với c&ocirc;ng nghệ Micellar Water, Byphasse&nbsp;sẽ lấy đi tất cả cặn bẩn, lớp&nbsp;trang&nbsp;điểm m&agrave;','<h3>Nước Tẩy trang Byphasse 500ml</h3>\r\n\r\n<p>Nước tẩy trang Byphasse Solution Micellaire l&agrave; một trong những loại nước tẩy trang b&igrave;nh d&acirc;n được ưa chuộng nhất hiện nay. Với c&ocirc;ng nghệ Micellar Water, Byphasse&nbsp;sẽ lấy đi tất cả cặn bẩn, lớp&nbsp;trang&nbsp;điểm m&agrave; kh&ocirc;ng hề để lại cảm gi&aacute;c b&oacute;ng dầu, nhờn d&iacute;nh tr&ecirc;n da.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:</strong></p>\r\n\r\n<p>- Byphasse gi&uacute;p tẩy sạch hiệu quả c&aacute;c chất bẩn v&agrave; b&atilde; nhờn s&acirc;u trong lỗ ch&acirc;n l&ocirc;ng c&ugrave;ng với lớp trang điểm tr&ecirc;n da</p>\r\n\r\n<p>- L&agrave;m sạch c&aacute;c lớp trang điểm đậm, kể cả những sản phẩm l&acirc;u tr&ocirc;i như son l&igrave;, mascara waterproof</p>\r\n\r\n<p>- Chứa c&aacute;c hạt dầu cực nhỏ gi&uacute;p l&agrave;m sạch hiệu quả v&agrave; kh&ocirc;ng g&acirc;y cảm gi&aacute;c bết d&iacute;nh sau khi sử dụng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&agrave;nh phần:</strong></p>\r\n\r\n<p>Aqua, Glycerin, PEG-6 Caprylic/Capric Glycerides, Propylene Glycol, Disodium Cocoamphodiacetate, Polyaminopropyl Biguanide, Panthenol, Disodium EDTA, Decyl Glucoside, Parfum, Citric Acid, Bisabolol, Sodium Hydroxide.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Có thể là hình ảnh về 1 người, mỹ phẩm và văn bản\" src=\"https://scontent.fhan4-1.fna.fbcdn.net/v/t1.6435-9/181600728_5647425038631489_6035670320133101425_n.jpg?_nc_cat=104&amp;ccb=1-3&amp;_nc_sid=730e14&amp;_nc_ohc=0_pTFCg75xUAX8-XUYl&amp;_nc_ht=scontent.fhan4-1.fna&amp;oh=573479004a8b4c9d280308b6317a0c8f&amp;oe=60B74117\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong></p>\r\n\r\n<p>- Cho một lượng vừa đủ sản phẩm v&agrave;o b&ocirc;ng cotton rồi lau đều khắp mặt cho đến khi thật sạch.</p>\r\n\r\n<p>- Rửa lại với nước hoặc sữa rửa mặt v&agrave; bắt đầu c&aacute;c bước dưỡng da sau đ&oacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n',1,28,1,0,0,'2021-05-06 11:20:24','2021-06-29 12:03:12',NULL),(32,16,1,'EGLIPS BLUR POWDER PACT','1624930820-100b.png',159000,10,'<p>Eglips Blur Powder Pact l&agrave; một trong những d&ograve;ng phấn phủ b&igrave;nh d&acirc;n được y&ecirc;u th&iacute;ch nhất tại H&agrave;n Quốc. L&agrave; favorite item của &quot;ph&ugrave; thuỷ&quot; Ponymakeup c&ugrave;ng nhiều beauty guru đ&igrave','<p><strong>C&ocirc;ng dụng:&nbsp;</strong></p>\r\n\r\n<p><em>&quot;Theo Pony, mặc d&ugrave; độ che phủ kh&ocirc;ng cao nhưng phấn phủ Eglips Blur Powder Pact vẫn c&oacute; thể l&agrave;m mờ khuyết điểm rất tốt đặc biệt l&agrave; c&aacute;c v&ugrave;ng lỗ ch&acirc;n l&ocirc;ng to hay v&ugrave;ng quầng th&acirc;m dưới mắt. Kết cấu phấn nhẹ t&ecirc;nh như c&aacute;c loại phấn phủ bột v&agrave; cho lớp nền kh&ocirc;ng qu&aacute; l&igrave;.&quot;</em>&nbsp;</p>\r\n\r\n<p>- Thiết kế hộp phấn h&igrave;nh tr&ograve;n với t&ocirc;ng m&agrave;u đen chủ đạo c&ugrave;ng logo Eglips m&agrave;u trắng nổi bật.&nbsp;</p>\r\n\r\n<p>- Nhỏ gọn, tiện lợi cầm vừa đủ trong l&ograve;ng b&agrave;n tay&nbsp;</p>\r\n\r\n<p>- Phấn phủ Eglips Blur Powder Pact&nbsp;c&oacute; khả năng Blur (l&agrave;m mờ) tuyệt vời như ch&iacute;nh t&ecirc;n sản phẩm, che phủ ho&agrave;n hảo lỗ ch&acirc;n l&ocirc;ng, c&aacute;c v&ugrave;ng da kh&ocirc;ng đều m&agrave;u.</p>\r\n\r\n<p>- Tăng khả năng che phủ cho những khuyết điểm tr&ecirc;n da m&agrave; kh&ocirc;ng l&agrave;m d&agrave;y lớp trang điểm.</p>\r\n\r\n<p>-&nbsp;C&oacute; khả năng đ&aacute;nh chồng nhiều lớp m&agrave; da vẫn mịn v&agrave; kh&ocirc;ng l&agrave;m da bị cakey (mốc).</p>\r\n\r\n<p>-&nbsp;Khi d&ugrave;ng sản phẩm tr&ecirc;n da rất mịn, s&aacute;ng da, cảm gi&aacute;c nhẹ nh&agrave;ng v&agrave; ẩm m&aacute;t cả ng&agrave;y.</p>\r\n\r\n<p>- Hộp phấn nhỏ gọn tiện lợi để mang đi bất k&igrave; đ&acirc;u, k&egrave;m theo đ&oacute; l&agrave; thiết kế b&ocirc;ng phấn cao cấp si&ecirc;u mềm gi&uacute;p lớp phủ b&aacute;m d&iacute;nh ho&agrave;n hảo v&agrave; đều m&agrave;u.</p>\r\n\r\n<p>- Chứa c&aacute;c th&agrave;nh phần ewel powder, Pearl powder: bột thạch anh t&iacute;m v&agrave; bột ngọc trai, c&oacute; t&aacute;c dụng phản xạ &aacute;nh s&aacute;ng gi&uacute;p da rạng rỡ, tươi tắn.</p>\r\n\r\n<p>- Chiết xuất từ 8 loại thực vật gi&uacute;p l&agrave;m dịu nhẹ cho da:&nbsp;hoa oải hương, hương thảo,&nbsp; h&uacute;ng t&acirc;y, l&aacute; bạc h&agrave;, l&aacute; x&ocirc; thơm, hoa nh&agrave;i, lưu ly, c&uacute;c La M&atilde;.</p>\r\n\r\n<p>- Phấn phủ vượt trội với những hạt phấn si&ecirc;u mịn sẽ lấp đầy những mảng da kh&ocirc;ng đều m&agrave;u v&agrave; lỗ ch&acirc;n l&ocirc;ng&nbsp;</p>\r\n\r\n<p>- Mang lại cho bạn l&agrave;n da mịn m&agrave;ng tự nhi&ecirc;n v&agrave; tr&agrave;n đầy sức sống.</p>\r\n',1,26,0,0,0,'2021-05-06 14:09:52','2021-06-29 08:49:58',NULL),(33,16,4,'PHẤN NƯỚC LIME REAL COVER PINK CUSHION','1624931039-1000c.png',439000,10,'<p>Phấn nước Lime Real Cover Pink Cushion với chiết xuất từ rễ hoa mẫu đơn, hoa anh đ&agrave;o v&agrave; tro n&uacute;i lửa thổi bừng l&ecirc;n sức sống của l&agrave;n da qua đ&oacute; mang đến cho n&agrave;ng một lớp nền rạng rỡ, che phủ tuyệt đối m&agra','<p><strong>Ưu điểm nổi bật</strong></p>\r\n\r\n<p>- Mang lại độ che phủ kh&aacute; ấn tượng v&igrave; c&oacute; thể che được hầu hết c&aacute;c nốt mụn đỏ, quầng th&acirc;m v&agrave; v&ugrave;ng da kh&ocirc;ng đều m&agrave;u. Lớp nền b&oacute;ng lo&aacute;ng đ&uacute;ng kiểu H&agrave;n, tạo cảm gi&aacute;c như da mặt vừa được phủ sương v&agrave; tr&agrave;n đầy sức sống.</p>\r\n\r\n<p>-&nbsp;Chỉ số chống nắng cao UV 50+ PA +++ gi&uacute;p bảo vệ da trước t&aacute;c hại của cả tia UVA v&agrave; UVB kh&ocirc;ng thua g&igrave; kem chống nắng.&nbsp;V&agrave; đặc biệt, cung cấp khả năng kiềm dầu cực tốt, ph&ugrave; hợp với cả c&ocirc; n&agrave;ng da dầu.</p>\r\n\r\n<p>- T&aacute;i tạo l&agrave;n da từ b&ecirc;n trong, khả năng che phủ ho&agrave;n hảo c&aacute;c lỗ ch&acirc;n l&ocirc;ng, vết th&acirc;m, t&agrave;n nhang v&agrave; kể cả mụn sưng đỏ, c&oacute; thể đ&aacute;nh chồng nhiều lớp m&agrave; vẫn tự nhi&ecirc;n kh&ocirc;ng bị d&agrave;y phấn.</p>\r\n\r\n<p>- Khả năng chống thấm nước tuyệt đối.</p>\r\n',1,25,1,0,0,'2021-06-29 01:43:59','2021-06-29 08:48:28',NULL),(34,16,1,'COMBO NƯỚC BÍ ĐAO CÂN BẰNG DA COCOON 310ML + MẶT NẠ BÍ ĐAO 30ML (IP02)','1624942171-100d.png',200000,3,'<p><em><strong>Combo sạch mụn v&agrave; kiểm so&aacute;t dầu từ b&iacute; đao gồm Mặt nạ b&iacute; đao 30ml v&agrave; Nước b&iacute; đao c&acirc;n bằng da 310ml</strong></em>. Th&agrave;nh phần từ b&iacute; đao, rau m&aacute;, tr&agrave;m tr&agrave;, comb','<p><em><strong>Combo sạch mụn v&agrave; kiểm so&aacute;t dầu từ b&iacute; đao gồm Mặt nạ b&iacute; đao 30ml v&agrave; Nước b&iacute; đao c&acirc;n bằng da 310ml</strong></em>. Th&agrave;nh phần từ b&iacute; đao, rau m&aacute;, tr&agrave;m tr&agrave;, combo mang đến 2 bước l&agrave;m sạch - c&acirc;n bằng hiệu quả cho l&agrave;n da dầu mụn, gi&uacute;p giảm nhờn,l&agrave;m th&ocirc;ng tho&aacute;ng lỗ ch&acirc;n l&ocirc;ng, đồng thời c&acirc;n bằng pH tr&ecirc;n da, cải thiện nhanh t&igrave;nh trạng mụn, l&agrave;m dịu vết đỏ, mang lại l&agrave;n da sạch mụn v&agrave; mịn m&agrave;ng. C&ocirc;ng thức kh&ocirc;ng chứa cồn th&acirc;n thiện với l&agrave;n da nhạy cảm.</p>\r\n',1,50,1,0,0,'2021-06-29 04:49:31',NULL,NULL),(35,16,2,'Sản phẩm test','1699364073-004_1_0030_1_j.png',100000,8,'<p>Sản phẩm 01</p>\r\n','<p>sản phẩm 01</p>\r\n',1,1000000,0,0,0,'2023-11-07 13:34:33',NULL,'2023-11-08'),(36,16,2,'sssssad','1699364261-004_0001.png',10000,10,'<p>ss</p>\r\n','<p>ss</p>\r\n',1,10,0,0,0,'2023-11-07 13:37:41',NULL,'2023-11-30');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'Toàn','phamthithao78912@gmail.com','0395679339','Nam Định','e10adc3949ba59abbe56e057f20f883e',1,'2021-04-23 08:01:19',NULL),(5,'Pham Thị Thảo','phamthithao@gmail.com','0846842286','Nam Định','e10adc3949ba59abbe56e057f20f883e',1,'2021-05-06 07:10:49',NULL),(6,'Hoàng Mạnh Tú','hoangmanhtu@gmail.com','0963873812','Triều Khúc-Thanh Trì -Hà Nội','e10adc3949ba59abbe56e057f20f883e',0,'2021-05-06 10:42:15',NULL),(7,'Nguyễn Thị Biên','phamthithao789@gmail.com','0846842287','Khối 2, Thị trấn Mường Xén, Huyện Kỳ Sơn','e10adc3949ba59abbe56e057f20f883e',0,'2021-05-06 13:16:50',NULL),(8,'Trần Hải Nam','binkoy070809@gmail.com','0846842288','Nhà 88, Ấp Hiệp Sậy Niếu B, Xã Phụng Hiệp, Huyện Phụng Hiệp','e10adc3949ba59abbe56e057f20f883e',2,'2021-06-24 10:30:25',NULL),(10,'Giao hàng 1','giaohang@gmail.com','0897287832','Nhà bè','e10adc3949ba59abbe56e057f20f883e',2,'2021-06-24 10:30:25',NULL);
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

-- Dump completed on 2023-11-08  2:20:29
