-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 24, 2024 at 02:28 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_disposisi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_surat_masuk`
--

DROP TABLE IF EXISTS `tb_surat_masuk`;
CREATE TABLE IF NOT EXISTS `tb_surat_masuk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `no_surat` varchar(100) NOT NULL,
  `tgl_surat` date NOT NULL,
  `surat_from` varchar(100) NOT NULL,
  `surat_to` varchar(100) NOT NULL,
  `tgl_terima` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `perihal` text NOT NULL,
  `keterangan` text NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no_image.jpg',
  `status` varchar(30) NOT NULL,
  `user_id` int NOT NULL,
  `is_active` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_surat_masuk`
--

INSERT INTO `tb_surat_masuk` (`id`, `no_surat`, `tgl_surat`, `surat_from`, `surat_to`, `tgl_terima`, `perihal`, `keterangan`, `image`, `status`, `user_id`, `is_active`) VALUES
(21, '1223', '2024-01-02', 'PT. Hasnur', 'Poliban', '2023-12-31 16:00:00', 'Kerjasama', 'Ayuja', '1223.png', '', 0, 1),
(22, '781/UNISKA/KM/2024', '2024-01-17', 'FTI Uniska', 'Mahasiswa', '2024-01-16 16:00:00', 'Permohonan Izin', 'Izin     ', '781UNISKAKM2024.png', '', 0, 1),
(23, '6786868', '2024-01-16', 'Badan Pemeriksa Keuangan', 'Badan Riset dan Inovasi Nasional', '2024-01-15 16:00:00', 'Audit', 'ggjhgjghj     ', '6786868.png', '', 0, 1),
(24, '111', '2024-01-22', 'Kemendikbud', 'Poliban', '2024-01-10 13:35:07', 'Hibah Penelitian', '7678', '111.png', '', 2, 1),
(25, '656', '2024-01-24', 'Kejaksaan Agung', 'Badan Kepegawaian Negara', '2024-01-17 13:45:00', 'Permohonan Pengadaan CASN', 'coba aja dulu    ', '123345.png', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_template_surat`
--

DROP TABLE IF EXISTS `tb_template_surat`;
CREATE TABLE IF NOT EXISTS `tb_template_surat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(60) NOT NULL,
  `tujuan_surat` varchar(60) NOT NULL,
  `tgl_kirim` datetime NOT NULL,
  `perihal` varchar(150) NOT NULL,
  `keterangan` text NOT NULL,
  `is_active` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_template_surat`
--

INSERT INTO `tb_template_surat` (`id`, `nama`, `tujuan_surat`, `tgl_kirim`, `perihal`, `keterangan`, `is_active`) VALUES
(1, 'Muhammad Ansari Muslim', 'Uniska', '2024-01-22 12:51:57', 'Permohonan Proposal', 'Permohonan Proposal Kegiatan', 1),
(2, 'Muslim', 'Poliban', '2024-01-10 02:00:00', 'SP1', 'Kenaikan Gaji', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE IF NOT EXISTS `tb_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role` enum('admin','sekretaris') DEFAULT 'admin',
  `last_login` timestamp NULL DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `email`, `full_name`, `phone`, `role`, `last_login`, `is_active`) VALUES
(1, 'muslim_brb', '$2y$10$Rj8o4enSPuVGG9kQCIEnmOGL7GXabzj1ltxzXpy9.hBdarT2GzXFC', 'muslim@gmail.com', 'Muhammad Ansari Muslim', '085246149107', 'admin', '2024-01-24 14:25:39', 1),
(2, 'muslim_bjm', '$2y$10$x0/oyw2T6PrgTJkTAXBi5uaQ4S2MYkyhhEdWnAsREdOaBf9GcJ/l6', 'muslim@me', 'I\'m Muslim', '085246149107', 'sekretaris', '2024-01-24 14:18:52', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
