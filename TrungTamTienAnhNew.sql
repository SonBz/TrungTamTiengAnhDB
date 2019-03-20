CREATE DATABASE  IF NOT EXISTS `trungtamtienganh` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `trungtamtienganh`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trungtamtienganh
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `chungchi`
--

DROP TABLE IF EXISTS `chungchi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chungchi` (
  `MaCC` varchar(10) NOT NULL,
  `TenCC` varchar(50) DEFAULT NULL,
  `MaHv` varchar(10) DEFAULT NULL,
  `NgayCap` date DEFAULT NULL,
  PRIMARY KEY (`MaCC`),
  KEY `FK_MaHV_ChungChi` (`MaHv`),
  CONSTRAINT `FK_MaHV_ChungChi` FOREIGN KEY (`MaHv`) REFERENCES `hocvien` (`MaHV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chungchi`
--

LOCK TABLES `chungchi` WRITE;
/*!40000 ALTER TABLE `chungchi` DISABLE KEYS */;
/*!40000 ALTER TABLE `chungchi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diemthi`
--

DROP TABLE IF EXISTS `diemthi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diemthi` (
  `MaDiem` varchar(10) NOT NULL,
  `MaHV` varchar(10) NOT NULL,
  `DiemNghe` float DEFAULT NULL,
  `DiemNoi` float DEFAULT NULL,
  `DiemDoc` float DEFAULT NULL,
  `DiemViet` float DEFAULT NULL,
  `DTB` float DEFAULT NULL,
  `XepLoai` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`MaDiem`,`MaHV`),
  KEY `FK_MaHV_DiemThi` (`MaHV`),
  CONSTRAINT `FK_MaHV_DiemThi` FOREIGN KEY (`MaHV`) REFERENCES `hocvien` (`MaHV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diemthi`
--

LOCK TABLES `diemthi` WRITE;
/*!40000 ALTER TABLE `diemthi` DISABLE KEYS */;
/*!40000 ALTER TABLE `diemthi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dkthi`
--

DROP TABLE IF EXISTS `dkthi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dkthi` (
  `MaThi` varchar(10) NOT NULL,
  `MaHV` varchar(10) DEFAULT NULL,
  `NgayThi` date DEFAULT NULL,
  `MaLop` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MaThi`),
  KEY `FK_MaHV_DKThi` (`MaHV`),
  KEY `FK_MaLop_DKThi` (`MaLop`),
  CONSTRAINT `FK_MaHV_DKThi` FOREIGN KEY (`MaHV`) REFERENCES `hocvien` (`MaHV`),
  CONSTRAINT `FK_MaLop_DKThi` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dkthi`
--

LOCK TABLES `dkthi` WRITE;
/*!40000 ALTER TABLE `dkthi` DISABLE KEYS */;
/*!40000 ALTER TABLE `dkthi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giaovien`
--

DROP TABLE IF EXISTS `giaovien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giaovien` (
  `MaGv` varchar(10) NOT NULL,
  `TenGv` varchar(50) DEFAULT NULL,
  `GioiTinh` varchar(5) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DiaChi` varchar(50) DEFAULT NULL,
  `Sdt` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MaGv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giaovien`
--

LOCK TABLES `giaovien` WRITE;
/*!40000 ALTER TABLE `giaovien` DISABLE KEYS */;
INSERT INTO `giaovien` VALUES ('GV001','Nguyễn Văn A','Nam','1991-02-12','Hà Nội','987654321'),('GV003','Trần Thị H','Nữ','1992-10-02','Vĩnh Phúc','339457621'),('GV004','Đào Thị D','Nữ','1990-12-17','Thái Nguyên','987213456'),('GV005','Phan Xuân G','Nam','1989-06-05','Hà Nội','912837645'),('GV006','Ngô Mạnh C','Nữ','1998-09-10','Hà Nội','123654789');
/*!40000 ALTER TABLE `giaovien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hoadon` (
  `MaHD` varchar(10) NOT NULL,
  `NgayLap` date DEFAULT NULL,
  `MaND` varchar(10) DEFAULT NULL,
  `MaHV` varchar(10) DEFAULT NULL,
  `MaLop` varchar(10) DEFAULT NULL,
  `TienHP` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaHD`),
  KEY `FK_MaND_HoaDon` (`MaND`),
  KEY `FK_MaHV_HoaDon` (`MaHV`),
  KEY `FK_MaLop_HoaDon` (`MaLop`),
  CONSTRAINT `FK_MaHV_HoaDon` FOREIGN KEY (`MaHV`) REFERENCES `hocvien` (`MaHV`),
  CONSTRAINT `FK_MaLop_HoaDon` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`),
  CONSTRAINT `FK_MaND_HoaDon` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hocvien`
--

DROP TABLE IF EXISTS `hocvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hocvien` (
  `MaHV` varchar(10) NOT NULL,
  `TenHV` varchar(50) DEFAULT NULL,
  `GioiTinh` varchar(5) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DiaChi` varchar(50) DEFAULT NULL,
  `SDT` varchar(10) DEFAULT NULL,
  `MaLoaiLop` varchar(10) DEFAULT NULL,
  `MaLop` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MaHV`),
  KEY `FK_MaLop_HocVien` (`MaLop`),
  KEY `FK_MaLoaiLop_HocVien` (`MaLoaiLop`),
  CONSTRAINT `FK_MaLoaiLop_HocVien` FOREIGN KEY (`MaLoaiLop`) REFERENCES `loailop` (`MaLoaiLop`),
  CONSTRAINT `FK_MaLop_HocVien` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hocvien`
--

LOCK TABLES `hocvien` WRITE;
/*!40000 ALTER TABLE `hocvien` DISABLE KEYS */;
INSERT INTO `hocvien` VALUES ('HV001','Nguyễn Tạ Sơn','Nam','1998-02-13','Hà Nội','339821837','TOEIC-700','TAC-1'),('HV002','Trần Trọng Nghĩa','Nam','1998-05-15','Tây Nguyên','912873645','TOEIC-780','TAS-2'),('HV003','Phạm Tuấn vũ','Nam','1998-09-05','Hà nội','912873654','TOEIC-900','TAS-1'),('HV004','Ngô Mạnh Cường','Nam','1998-02-20','Phú Thọ','339218734','TOEIC-990','TAS-3'),('HV005','Phùng Văn Tuấn','Nam','1996-12-12','Phú Thọ','912873462','TOEIC-700','TAS-2'),('HV006','Chẩu Quang Huy','Nam','1998-10-28','Hà Nội','912735482','TOEIC-900','TAC-1');
/*!40000 ALTER TABLE `hocvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loailop`
--

DROP TABLE IF EXISTS `loailop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loailop` (
  `MaLoaiLop` varchar(10) NOT NULL,
  `TenLoaiLop` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MaLoaiLop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loailop`
--

LOCK TABLES `loailop` WRITE;
/*!40000 ALTER TABLE `loailop` DISABLE KEYS */;
INSERT INTO `loailop` VALUES ('IELTS-3.5','beginner'),('IELTS-4.5','intermediate'),('TOEIC-400','High Beginner'),('TOEIC-600','Low Intermediate'),('TOEIC-700','Intermediate'),('TOEIC-780','High Intermediate'),('TOEIC-900','Low Advanced'),('TOEIC-990','Advanced');
/*!40000 ALTER TABLE `loailop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lop`
--

DROP TABLE IF EXISTS `lop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lop` (
  `MaLop` varchar(10) NOT NULL,
  `TenLop` varchar(50) DEFAULT NULL,
  `SiSo` int(11) DEFAULT NULL,
  `NgayBatDau` date DEFAULT NULL,
  `GioHoc` varchar(20) DEFAULT NULL,
  `phong` varchar(10) DEFAULT NULL,
  `MaLoaiLop` varchar(10) DEFAULT NULL,
  `TienHP` int(11) DEFAULT NULL,
  `MaGV` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MaLop`),
  KEY `FK_MGV_Lop` (`MaGV`),
  CONSTRAINT `FK_MGV_Lop` FOREIGN KEY (`MaGV`) REFERENCES `giaovien` (`MaGv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lop`
--

LOCK TABLES `lop` WRITE;
/*!40000 ALTER TABLE `lop` DISABLE KEYS */;
INSERT INTO `lop` VALUES ('TAC-1','T-900',20,'2019-01-10','14:00-15:30','201','TOEIC-900',2500,'GV003'),('TAC-2','T-990',20,'2019-01-10','16:00-17:30','102','TOEIC-990',2500,'GV005'),('TAC-4','I-3.5',10,'0007-09-09','14:00-15:30','203','IELTS-3.5',3000,'GV006'),('TAS-1','T-700',15,'2018-07-12','8:00-9:30','102','TOEIC-700',2000,'GV003'),('TAS-2','T-700',15,'2018-07-12','8:00-9:30','103','TOEIC-700',2000,'GV001'),('TAS-3','T-780',15,'2018-02-02','10:00-11:30','202','TOEIC-780',2500,'GV005');
/*!40000 ALTER TABLE `lop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nguoidung` (
  `MaND` varchar(10) NOT NULL,
  `TenTk` varchar(50) DEFAULT NULL,
  `MatKhau` varchar(10) DEFAULT NULL,
  `TenND` varchar(50) DEFAULT NULL,
  `GioiTinh` varchar(10) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DiaChi` varchar(50) DEFAULT NULL,
  `Sdt` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MaND`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidung`
--

LOCK TABLES `nguoidung` WRITE;
/*!40000 ALTER TABLE `nguoidung` DISABLE KEYS */;
INSERT INTO `nguoidung` VALUES ('AT','admin','admin',NULL,NULL,NULL,NULL,NULL),('at13','cuong','1234qwer','cuong','Nam','1998-01-10','my','123456789'),('AT130544','sonbz','1234','nguyễn sơn','Nam','1998-01-13','hà nội','337370033'),('AT130545','cuongngo','124','cường','Nam','1998-01-13','lào cai','987654321'),('MH001','tuan','123','Sơn','Nam','1998-01-13','hà nội','912345678');
/*!40000 ALTER TABLE `nguoidung` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-07 12:27:21
