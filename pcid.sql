-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 02, 2021 at 04:33 AM
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
-- Database: `pcid`
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
  `printer1` varchar(25) DEFAULT NULL,
  `printer2` varchar(25) DEFAULT NULL,
  `scanner` varchar(25) DEFAULT NULL,
  `ip0` int(25) NOT NULL,
  `ip1` int(25) NOT NULL,
  `ip2` varchar(25) NOT NULL,
  `lain_lain` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pcid`
--

INSERT INTO `pcid` (`id`, `no_pc`, `divisi`, `nama_user`, `set_pc`, `printer1`, `printer2`, `scanner`, `ip0`, `ip1`, `ip2`, `lain_lain`) VALUES
(1, 'PC-0001', 'HRD', 'Anonymous', 'OK', NULL, NULL, NULL, 126, 126, '0', ''),
(2, 'PC-0002', 'HRD', 'Dewi Fajriani', 'OK', 'Epson L310 (001)', NULL, 'Canon Lide120 (001)', 137, 137, '0', ''),
(3, 'PC-0003', 'HRD', 'Alda', 'OK', NULL, NULL, NULL, 138, 138, '0', ''),
(4, 'PC-0004', 'HRD', 'Nabila', 'OK', NULL, NULL, NULL, 40, 40, '0', ''),
(5, 'PC-0005', 'HRD', 'Sri', 'OK', NULL, NULL, NULL, 42, 42, '0', ''),
(7, 'PC-0006', 'OPERATOR', 'Operator', 'OK', NULL, NULL, NULL, 0, 216, '0', 'Lt.6'),
(8, 'PC-0007', 'DESIGN', 'Pak Engkus', 'OK', NULL, NULL, 'Plustek Opticslim', 0, 59, '0', 'Wifi Desnet'),
(9, 'PC-00049', 'DESIGN', 'Pak Engkus', 'OK', NULL, NULL, NULL, 0, 0, '0', 'Untuk di mess'),
(10, 'PC-0008', 'DESIGN', 'Anonymous', 'OK', NULL, NULL, NULL, 0, 57, '0', 'Wifi Desnet'),
(11, 'PC-0009', 'DESIGN', 'Pak Djaya', 'OK', 'Epson L1110 (002)', NULL, 'Canon Lide120 (002)', 0, 47, '0', 'Mutasi ke GP'),
(12, 'PC-0010', 'DESIGN', 'Iqbal', 'OK', NULL, NULL, NULL, 0, 25, '0', 'Mutasi ke GP'),
(13, 'PC-0011', 'EXIM & PRINTING', 'Mba Eni', 'OK', 'Epson L1110 (003)', NULL, NULL, 114, 114, '0', ''),
(14, 'PC-0012', 'EXIM & PRINTING', 'Jimmy', 'OK', 'Epson Lx-310 (021)', 'Epson L1110', NULL, 130, 130, '0', ''),
(15, 'PC-0013', 'EXIM & PRINTING', 'Hendi', 'OK', NULL, NULL, NULL, 131, 131, '0', ''),
(16, 'PC-0014', 'EXIM & PRINTING', 'Herlina', 'OK', NULL, NULL, NULL, 119, 119, '0', ''),
(17, 'PC-0015', 'EXIM & PRINTING', 'Mba Ika', 'OK', NULL, NULL, 'CD-D240 (003)', 118, 118, '0', ''),
(19, 'PC-0017', 'STOK LT.4', 'Ce Mimi', 'OK', 'Epson L1110 (004)', NULL, NULL, 43, 43, '0', ''),
(20, 'PC-0018', 'STOK LT.4', 'Mba Tri', 'OK', NULL, NULL, NULL, 219, 219, '0', ''),
(21, 'PC-0019', 'STOK LT.4', 'Veli', 'OK', NULL, NULL, NULL, 153, 153, '0', ''),
(22, 'PC-0020', 'STOK LT.4', 'Mba Indah', 'OK', NULL, NULL, NULL, 177, 177, '0', ''),
(23, 'PC-0021', 'STOK LT.4', 'Ce Lina', 'OK', NULL, NULL, NULL, 252, 252, '0', ''),
(24, 'PC-0022', 'STOK LT.4', 'Mba Rani', 'OK', 'HP LaserJet (005)', NULL, NULL, 62, 62, '0', ''),
(25, 'PC-0023', 'STOK LT.4', 'Anonymous', 'OK', NULL, NULL, NULL, 174, 174, '0', ''),
(26, 'PC-0024', 'STOK LT.4', 'Alvin', 'OK', NULL, NULL, NULL, 129, 129, '0', ''),
(27, 'PC-0025', 'LAW', 'Koh Athat', 'OK', 'Canon G1010', NULL, NULL, 0, 0, '0', 'USB Wifi'),
(28, 'PC-0026', 'LAW', 'Anonymous', 'OK', NULL, NULL, NULL, 0, 0, '0', ''),
(29, 'PC-0027', 'SJ', 'Tia/Dewi', 'OK', 'Epson Lx-310 (007)', NULL, NULL, 26, 26, '0', ''),
(30, 'PC-0028', 'SJ', 'Shella', 'OK', NULL, NULL, NULL, 22, 22, '0', ''),
(31, 'PC-0029', 'SJ', 'May', 'OK', NULL, NULL, NULL, 35, 35, '0', ''),
(32, 'PC-0030', 'SJ', 'Ningsih', 'OK', 'Epson Lx-310 (008)', NULL, NULL, 36, 36, '0', ''),
(33, 'PC-0031', 'SJ', 'Agung', 'OK', 'Epson Lx-310 (009)', NULL, NULL, 37, 37, '0', ''),
(34, 'PC-0032', 'PRODUKSI', 'Apni', 'OK', NULL, NULL, NULL, 72, 72, '0', ''),
(35, 'PC-0033', 'PRODUKSI', 'Anonymous', 'OK', NULL, NULL, NULL, 73, 73, '0', ''),
(36, 'PC-0034', 'PRODUKSI', 'Erna', 'OK', 'Canon LBP6030 (010)', 'Epson Lx-310 (011)', NULL, 74, 74, '0', '-'),
(37, 'PC-0035', 'PRODUKSI', 'Yanti', 'OK', NULL, NULL, NULL, 75, 75, '0', ''),
(38, 'PC-0036', 'PRODUKSI', 'Eka', 'OK', NULL, NULL, NULL, 76, 76, '0', ''),
(39, 'PC-0037', 'PRODUKSI', 'Anonymous', 'OK', NULL, NULL, 'Canon Lide120 (004)', 77, 77, '0', ''),
(40, 'PC-0038', 'PRODUKSI', 'Mba Hana', 'OK', NULL, NULL, NULL, 78, 78, '0', ''),
(41, 'PC-0039', 'PRODUKSI', 'Ita', 'OK', NULL, NULL, NULL, 117, 117, '0', ''),
(42, 'PC-0040', 'PRODUKSI', 'Koh Alan', 'OK', NULL, NULL, NULL, 245, 181, '0', ''),
(43, 'PC-0041', 'PRODUKSI', 'Ce Eva', 'OK', NULL, NULL, NULL, 120, 120, '0', ''),
(44, 'PC-0042', 'PRODUKSI', 'Anonymous', 'OK', NULL, NULL, NULL, 121, 121, '0', ''),
(45, 'PC-0043', 'PURCHASING', 'Anonymous', 'OK', NULL, NULL, NULL, 215, 215, '0', ''),
(46, 'PC-0044', 'PURCHASING', 'Mba Nur', 'Ok', 'Epson L1110 (012)', NULL, NULL, 192, 192, '0', ''),
(47, 'PC-0045', 'PURCHASING', 'Mba Yuyun', 'OK', 'Epson Lx-310 (013)', NULL, NULL, 158, 158, '0', ''),
(48, 'PC-0046', 'PURCHASING', 'Dinar', 'OK', NULL, NULL, NULL, 136, 136, '0', ''),
(49, 'PC-0047', 'PURCHASING', 'Mba Emi', 'OK', 'Epson L310 (014)', NULL, NULL, 209, 209, '0', ''),
(50, 'PC-0048', 'PURCHASING', 'Mba Lilik', 'OK', 'Epson Lx-310 (015)', NULL, NULL, 206, 206, '0', ''),
(53, 'PC-0050', 'GUDANG', 'Septy', 'OK', NULL, NULL, NULL, 50, 50, '0', ''),
(54, 'PC-0051', 'GUDANG', 'Umi', 'OK', 'HP LaserJet (016)', 'Epson Lx-310 (017)', NULL, 51, 51, '0', '-'),
(55, 'PC-0052', 'GUDANG', 'Uka', 'OK', NULL, NULL, NULL, 52, 52, '0', ''),
(56, 'PC-0053', 'AUDIT', 'Mba Sumi', 'OK', 'Epson L120 (018)', NULL, NULL, 92, 92, '0', ''),
(57, 'PC-0054', 'AUDIT', 'Vira', 'OK', 'Brother DCP-T310 (019)', NULL, NULL, 93, 93, '0', ''),
(58, 'PC-0055', 'AUDIT', 'Azizah', 'OK', NULL, NULL, NULL, 94, 94, '0', ''),
(59, 'PC-0056', 'AUDIT', 'Mba Ana', 'OK', 'Epson L1110 (020)', NULL, NULL, 97, 97, '0', ''),
(60, 'PC-0057', 'AUDIT', 'Rini', 'OK', NULL, NULL, NULL, 91, 91, '0', ''),
(62, 'PC-0061', 'PURCHASING', 'Pak Yosua', 'OK', 'Epson L310 (022)', NULL, NULL, 56, 56, '0', ''),
(63, 'PC-0062', 'MANAGER', 'Prof. Andri', 'OK', NULL, NULL, NULL, 57, 57, '0', 'Spiker Robot'),
(64, 'PC-0063', 'TEKNIK', 'Kevin S.', 'OK', NULL, NULL, NULL, 69, 0, '69', ''),
(65, 'PC-0064', 'TEKNIK', 'Nursalim', 'OK', 'Epson L805(023)', NULL, NULL, 181, 0, '0', ''),
(66, 'PC-0065', 'TEKNIK', 'Angga', 'OK', NULL, NULL, NULL, 100, 0, '0', ''),
(67, 'PC-0066', 'TEKNIK', 'Reza', 'OK', NULL, NULL, NULL, 251, 4, '0', ''),
(68, 'PC-0067', 'A/R', 'Bu Rose', 'OK', 'Brother DCP T520-W', NULL, NULL, 110, 110, '0', ''),
(69, 'PC-0068', 'A/R', 'Anonymous', 'OK', NULL, NULL, NULL, 200, 200, '0', ''),
(70, 'PC-0069', 'A/R', 'Irah', 'OK', NULL, NULL, NULL, 155, 173, '155', ''),
(71, 'PC-0070', 'A/R', 'Merilyn', 'OK', 'HP Laserjet (024)', NULL, NULL, 165, 165, '0', ''),
(72, 'PC-0071', 'A/R', 'Buna', 'OK', NULL, NULL, 'Canon Lide 110 (005)', 111, 112, '0', ''),
(73, 'PC-0072', 'A/R', 'Fanny', 'OK', 'Epson Lx-310 (025)', NULL, NULL, 70, 70, '70', ''),
(74, 'PC-0073', 'A/R', 'Ria', 'OK', NULL, NULL, NULL, 66, 66, '0', ''),
(75, 'PC-0074', 'A/R', 'Yeni', 'OK', 'Brother HL-1200', NULL, NULL, 64, 64, '0', ''),
(76, 'PC-0075', 'A/R', 'Nada', 'OK', NULL, NULL, NULL, 65, 65, '0', ''),
(77, 'PC-0076', 'A/R', 'Colline', 'OK', NULL, NULL, NULL, 71, 71, '0', ''),
(78, 'PC-0077', 'PURCHASING', 'Mba Tintin', 'OK', NULL, NULL, NULL, 134, 134, '0', ''),
(82, 'PC-0078', 'FAKTURING', 'Zulfa', 'OK', 'Epson Lx-310', NULL, NULL, 141, 141, '0', ''),
(83, 'PC-0079', 'FAKTURING', 'Nure', 'OK', 'Epson Lx-310', 'HP Laserjet p1102', NULL, 80, 80, '0', ''),
(84, 'PC-0080', 'FAKTURING', 'Ria', 'OK', 'Epson Lx-310', NULL, NULL, 96, 96, '0', 'NT'),
(85, 'PC-0081', 'FAKTURING', 'Ria', 'OK', NULL, NULL, NULL, 81, 81, '0', ''),
(105, 'PC-0082', 'AKUNTING', 'Ce Santi', 'OK', 'Brother DCP-T310', NULL, NULL, 223, 223, '0', ''),
(106, 'PC-0083', 'AKUNTING', 'Mba Ani', 'OK', 'Epson L310', NULL, NULL, 144, 144, '0', ''),
(107, 'PC-0084', 'AKUNTING', 'Heti', 'OK', NULL, NULL, 'Canon DR-C240', 127, 127, '42.127', ''),
(108, 'PC-0085', 'AKUNTING', 'Desi', 'OK', NULL, NULL, NULL, 98, 98, '0', ''),
(109, 'PC-0086', 'AKUNTING', 'Salwa', 'OK', 'Epson L1110', NULL, NULL, 239, 239, '0', ''),
(110, 'PC-0087', 'AKUNTING', 'Mba Kiki', 'OK', 'HP LaserJet P1102', NULL, NULL, 109, 109, '0', ''),
(111, 'PC-0088', 'AKUNTING', 'Lia', 'OK', NULL, NULL, NULL, 126, 126, '0', ''),
(112, 'PC-0089', 'AUDIT', 'Mba Ana', '-', NULL, NULL, NULL, 195, 0, '11.195', 'Laptop'),
(113, 'PC-0090', 'MARKETING', 'Ce Achui', 'OK', NULL, NULL, NULL, 121, 121, '0', ''),
(114, 'PC-0091', 'MARKETING', 'Pak Yusup S.', 'OK', NULL, NULL, NULL, 99, 99, '0', ''),
(115, 'PC-0092', 'MARKETING', 'Ce Nani', 'OK', NULL, NULL, NULL, 148, 148, '0', ''),
(116, 'PC-0093', 'MARKETING', 'Amah', 'OK', 'Epson L1110', NULL, NULL, 228, 228, '0', ''),
(117, 'PC-0094', 'MARKETING', 'Ce Yasinta', 'OK', 'Epson L310', NULL, NULL, 87, 87, '0', ''),
(118, 'PC-0095', 'MARKETING', 'Ce Catherine', 'OK', NULL, NULL, NULL, 142, 142, '0', ''),
(119, 'PC-0096', 'MARKETING', 'Ce Alang', '-', NULL, NULL, NULL, 0, 0, '0', ''),
(120, 'PC-0097', 'MARKETING', 'Mba Win', 'OK', NULL, NULL, NULL, 139, 139, '0', ''),
(121, 'PC-0098', 'MARKETING', 'Anonymous', 'OK', NULL, NULL, NULL, 86, 86, '11.86', 'SPN'),
(122, 'PC-0099', 'MARKETING', 'Jevica', 'Ok', NULL, NULL, NULL, 146, 146, '0', ''),
(123, 'PC-0100', 'MARKETING', 'Mba Ika', 'OK', NULL, NULL, NULL, 152, 152, '0', ''),
(124, 'PC-0101', 'MARKETING', 'Mba Sofi', 'OK', NULL, NULL, NULL, 82, 82, '0', ''),
(125, 'PC-0102', 'MARKETING', 'Ce Theresia', 'OK', NULL, NULL, NULL, 149, 149, '0', ''),
(126, 'PC-0103', 'MARKETING', 'Ce Lili', 'OK', NULL, NULL, NULL, 44, 44, '0', ''),
(127, 'PC-0104', 'MARKETING', 'Mba Yani', 'OK', NULL, NULL, NULL, 161, 161, '0', ''),
(128, 'PC-0105', 'MARKETING', 'Ce Mina', 'Ok', NULL, NULL, NULL, 67, 67, '0', ''),
(129, 'PC-0106', 'OPERATOR', 'Monik', 'OK', 'Epson Lx-310', 'Epson Lx-310', NULL, 176, 176, '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(25) NOT NULL,
  `nama_user` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama_user`, `username`, `password`) VALUES
(1, 'Kevin Septyan', 'kevin', 'kevin123'),
(2, 'Admin', 'admin', 'admin123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pcid`
--
ALTER TABLE `pcid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pcid`
--
ALTER TABLE `pcid`
  MODIFY `id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
