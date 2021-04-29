-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 29, 2021 at 03:27 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba_pcid`
--

-- --------------------------------------------------------

--
-- Table structure for table `pcid`
--

CREATE TABLE `pcid` (
  `id` bigint(50) NOT NULL,
  `no_pc` varchar(25) NOT NULL,
  `divisi` varchar(25) NOT NULL,
  `nama_user` varchar(25) NOT NULL,
  `set_pc` varchar(25) NOT NULL,
  `printer1` varchar(25) NOT NULL,
  `printer2` varchar(25) NOT NULL,
  `scanner` varchar(25) NOT NULL,
  `ip0` int(25) NOT NULL,
  `ip1` int(25) NOT NULL,
  `ip2` int(25) NOT NULL,
  `lain_lain` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pcid`
--

INSERT INTO `pcid` (`id`, `no_pc`, `divisi`, `nama_user`, `set_pc`, `printer1`, `printer2`, `scanner`, `ip0`, `ip1`, `ip2`, `lain_lain`) VALUES
(1, 'PC-0001', 'HRD', 'Anonymous', 'OK', '-', '-', '-', 126, 126, 0, '-'),
(2, 'PC-0002', 'HRD', 'Dewi Fajriani', 'OK', 'Epson L310 (001)', '-', 'Canon Lide120 (001)', 137, 137, 0, '-'),
(3, 'PC-0003', 'HRD', 'Alda', 'OK', '-', '-', '-', 41, 41, 0, '-'),
(4, 'PC-0004', 'HRD', 'Nabila', 'OK', '-', '-', '-', 40, 40, 0, '-'),
(5, 'PC-0005', 'HRD', 'Sri', 'OK', '-', '-', '-', 42, 42, 0, '-'),
(6, 'PC-00058', 'HRD', 'Dewanto', 'OK', '-', '-', '-', 44, 44, 0, '-'),
(7, 'PC-0006', 'Operator Lt.6', 'Operator', 'OK', '-', '-', '-', 0, 216, 0, '-'),
(8, 'PC-0007', 'DESIGN', 'Pak Engkus', 'OK', '-', '-', 'Plustek Opticslim', 0, 59, 0, 'Wifi Desnet'),
(9, 'PC-00049', 'DESIGN', 'Pak Engkus', 'OK', '-', '-', '-', 0, 0, 0, 'Untuk di mess'),
(10, 'PC-0008', 'DESIGN', 'Anonymous', 'OK', '-', '-', '-', 0, 57, 0, 'Wifi Desnet'),
(11, 'PC-0009', 'DESIGN', 'Pak Djaya', 'OK', 'Epson L1110 (002)', '-', 'Canon Lide120 (002)', 0, 47, 0, 'Wifi Desnet'),
(12, 'PC-0010', 'DESIGN', 'Iqbal', 'OK', '-', '-', '-', 0, 25, 0, '-'),
(13, 'PC-0011', 'EXIM & PRINTING', 'Mba Eni', 'OK', 'Epson L1110 (003)', '-', '-', 114, 114, 0, '-'),
(14, 'PC-0012', 'EXIM & PRINTING', 'Jimmy', 'OK', 'Epson Lx-310 (021)', '-', '-', 130, 130, 0, '-'),
(15, 'PC-0013', 'EXIM & PRINTING', 'Hendi', 'OK', '-', '-', '-', 131, 131, 0, '-'),
(16, 'PC-0014', 'EXIM & PRINTING', 'Fanny', 'OK', '-', '-', '-', 119, 119, 0, '-'),
(17, 'PC-0015', 'EXIM & PRINTING', 'Mba Ika', 'OK', '-', '-', 'CD-D240 (003)', 118, 118, 0, '-'),
(18, 'PC-0016', 'EXIM & PRINTING', 'Herlina', 'OK', '-', '-', '-', 132, 132, 0, '-'),
(19, 'PC-0017', 'STOK LT.4', 'Ce Mimi', 'OK', 'Epson L1110 (004)', '-', '-', 43, 43, 0, '-'),
(20, 'PC-0018', 'STOK LT.4', 'Mba Tri', 'OK', '-', '-', '-', 219, 219, 0, '-'),
(21, 'PC-0019', 'STOK LT.4', 'Veli', 'OK', '-', '-', '-', 153, 153, 0, '-'),
(22, 'PC-0020', 'STOK LT.4', 'Mba Indah', 'OK', '-', '-', '-', 177, 177, 0, '-'),
(23, 'PC-0021', 'STOK LT.4', 'Ce Lina', 'OK', '-', '-', '-', 252, 252, 0, '-'),
(24, 'PC-0022', 'STOK LT.4', 'Mba Rani', 'OK', 'HP LaserJet (005)', '-', '-', 62, 62, 0, '-'),
(25, 'PC-0023', 'STOK LT.4', 'Anonymous', 'OK', '-', '-', '-', 174, 174, 0, '-'),
(26, 'PC-0024', 'STOK LT.4', 'Alvin', 'OK', '-', '-', '-', 129, 129, 0, '-'),
(27, 'PC-0025', 'LAW', 'Koh Athat', 'OK', 'Epson L1110 (006)', '-', '-', 0, 0, 0, 'USB Wifi'),
(28, 'PC-0026', 'LAW', 'Anonymous', 'OK', '-', '-', '-', 0, 0, 0, '-'),
(29, 'PC-0027', 'SJ', 'Tia', 'OK', 'Epson Lx-310 (007)', '-', '-', 26, 26, 0, '-'),
(30, 'PC-0028', 'SJ', 'Shella', 'OK', '-', '-', '-', 22, 22, 0, '-'),
(31, 'PC-0029', 'SJ', 'May', 'OK', '-', '-', '-', 35, 35, 0, '-'),
(32, 'PC-0030', 'SJ', 'Ningsih', 'OK', 'Epson Lx-310 (008)', '-', '-', 36, 36, 0, '-'),
(33, 'PC-0031', 'SJ', 'Agung', 'OK', 'Epson Lx-310 (009)', '-', '-', 37, 37, 0, '-'),
(34, 'PC-0032', 'PRODUKSI', 'Apni', 'OK', '-', '-', '-', 72, 72, 0, '-'),
(35, 'PC-0033', 'PRODUKSI', 'Anonymous', 'OK', '-', '-', '-', 73, 73, 0, '-'),
(36, 'PC-0034', 'PRODUKSI', 'Erna', 'OK', 'Canon LBP6030 (010)', 'Epson Lx-310 (011)', '-', 74, 74, 0, '-'),
(37, 'PC-0035', 'PRODUKSI', 'Yanti', 'OK', '-', '-', '-', 75, 75, 0, '-'),
(38, 'PC-0036', 'PRODUKSI', 'Nita', 'OK', '-', '-', '-', 76, 76, 0, '-'),
(39, 'PC-0037', 'PRODUKSI', 'Anonymous', 'OK', '-', '-', 'Canon Lide120 (004)', 77, 77, 0, '-'),
(40, 'PC-0038', 'PRODUKSI', 'Mba Hana', 'OK', '-', '-', '-', 78, 78, 0, '-'),
(41, 'PC-0039', 'PRODUKSI', 'Ita', 'OK', '-', '-', '-', 117, 117, 0, '-'),
(42, 'PC-0040', 'PRODUKSI', 'Koh Alan', 'OK', '-', '-', '-', 245, 181, 0, '-'),
(43, 'PC-0041', 'PRODUKSI', 'Ce Eva', 'OK', '-', '-', '-', 120, 120, 0, '-'),
(44, 'PC-0042', 'PRODUKSI', 'Anonymous', 'OK', '-', '-', '-', 121, 121, 0, '-'),
(45, 'PC-0043', 'PURCHASING', 'Pak Agus', 'OK', '-', '-', '-', 215, 215, 0, '-'),
(46, 'PC-0044', 'PURCHASING', 'Mba Nur', 'Ok', 'Epson L1110 (012)', '-', '-', 192, 192, 0, '-'),
(47, 'PC-0045', 'PURCHASING', 'Mba Yuyun', 'OK', 'Epson Lx-310 (013)', '-', '-', 158, 158, 0, '-'),
(48, 'PC-0046', 'PURCHASING', 'Dinar', 'OK', '-', '-', '-', 136, 136, 0, '-'),
(49, 'PC-0047', 'PURCHASING', 'Mba Emi', 'OK', 'Epson L310 (014)', '-', '-', 209, 209, 0, '-'),
(50, 'PC-0048', 'PURCHASING', 'Mba Lilik', 'OK', 'Epson Lx-310 (015)', '-', '-', 206, 206, 0, '-'),
(51, 'PC-0059', 'MARKETING', 'Licen', 'OK', '-', '-', '-', 0, 0, 0, '-'),
(52, 'PC-0060', 'PURCHASING', 'Isti', 'OK', '-', '-', '-', 168, 168, 0, '-'),
(53, 'PC-0050', 'GUDANG', 'Septy', 'OK', '-', '-', '-', 50, 50, 0, '-'),
(54, 'PC-0051', 'GUDANG', 'Umi', 'OK', 'HP LaserJet (016)', 'Epson Lx-310 (017)', '-', 51, 51, 0, '-'),
(55, 'PC-0052', 'GUDANG', 'Uka', 'OK', '-', '-', '-', 52, 52, 0, '-'),
(56, 'PC-0053', 'AUDIT', 'Mba Sumi', 'OK', 'Epson L120 (018)', '-', '-', 92, 92, 0, '-'),
(57, 'PC-0054', 'AUDIT', 'Vira', 'OK', 'Brother DCP-T310 (019)', '-', '-', 93, 93, 0, '-'),
(58, 'PC-0055', 'AUDIT', 'Azizah', 'OK', '-', '-', '-', 94, 94, 0, '-'),
(59, 'PC-0056', 'AUDIT', 'Mba Ana', 'OK', 'Epson L1110 (020)', '-', '-', 97, 97, 0, '-'),
(60, 'PC-0057', 'AUDIT', 'Rini', 'OK', '-', '-', '-', 91, 91, 0, '-'),
(62, 'PC-0061', 'MARKETING MANAGER', 'Pak Yosua', 'OK', 'Epson L120(022)', '-', '-', 56, 56, 0, '-'),
(63, 'PC-0062', 'MANAGER', 'Prof. Andri', 'OK', '-', '-', '-', 57, 57, 0, 'Spiker Robot'),
(64, 'PC-0063', 'IT', 'Kevin S.', 'OK', '-', '-', '-', 69, 0, 69, '-'),
(65, 'PC-0064', 'IT', 'Nursalim', 'OK', 'Epson L805(023)', '-', '-', 181, 0, 0, '-'),
(66, 'PC-0065', 'IT', 'Angga', 'OK', '-', '-', '-', 100, 0, 0, '-'),
(67, 'PC-0066', 'IT', 'Reza', 'OK', '-', '-', '-', 251, 4, 0, '-'),
(68, 'PC-0067', 'A/R', 'Bu Rose', 'OK', 'Epson L120 (023)', '-', '-', 110, 110, 0, '-'),
(69, 'PC-0068', 'A/R', 'Gina', 'OK', '-', '-', '-', 200, 200, 0, '-'),
(70, 'PC-0069', 'A/R', 'Felisa', 'OK', '-', '-', '-', 155, 173, 155, '-'),
(71, 'PC-0070', 'A/R', 'Merilyn', 'OK', 'HP Laserjet (024)', '-', '-', 165, 165, 0, '-'),
(72, 'PC-0071', 'A/R', 'Buna', 'OK', '-', '-', 'Canon Lide 110 (005)', 111, 112, 0, '-'),
(73, 'PC-0072', 'A/R', 'Fiah', 'OK', 'Epson Lx-310 (025)', '-', '-', 70, 70, 70, '-'),
(74, 'PC-0073', 'A/R', 'Ria', 'OK', '-', '-', '-', 66, 66, 0, '-'),
(75, 'PC-0074', 'A/R', 'Yeni', 'OK', 'HP Laserjet (026)', '-', '-', 64, 64, 0, '-'),
(76, 'PC-0075', 'A/R', 'Asri', 'OK', '-', '-', '-', 65, 65, 0, '-'),
(77, 'PC-0076', 'A/R', 'Indah', 'OK', '-', '-', '-', 71, 71, 0, '-'),
(78, 'PC-0077', 'PURCHASING', 'Mba Tintin', 'OK', '-', '-', '-', 134, 134, 0, '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pcid`
--
ALTER TABLE `pcid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pcid`
--
ALTER TABLE `pcid`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
