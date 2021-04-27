-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2021 at 02:30 AM
-- Server version: 10.1.47-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_datasiswa`
--

CREATE TABLE `tbl_datasiswa` (
  `id_datasiswa` int(11) NOT NULL,
  `id_kelas` varchar(60) NOT NULL,
  `nis` varchar(60) NOT NULL,
  `id_jurusan` varchar(60) NOT NULL,
  `tgl_tambah` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_datasiswa`
--

INSERT INTO `tbl_datasiswa` (`id_datasiswa`, `id_kelas`, `nis`, `id_jurusan`, `tgl_tambah`) VALUES
(1, 'X2021', '342334365', 'RPL', '2021-04-26 06:18:50'),
(2, 'X2021', '342343435', 'MM', '2021-04-26 05:34:36'),
(3, 'X2021', '441211233', 'MM', '2021-04-26 06:01:46'),
(4, 'X2021', '443453554', 'RPL', '2021-04-26 05:35:59'),
(5, 'X2021', '565334579', 'RPL', '2021-04-26 06:21:15'),
(6, 'XI2019', '565634579', 'RPL', '2021-04-26 06:21:24'),
(7, 'XI2019', '566566544', 'RPL', '2021-04-26 05:37:14'),
(8, 'XI2019', '666567544', 'MM', '2021-04-26 05:38:26'),
(9, 'XI2019', '667593943', 'RPL', '2021-04-26 06:21:49'),
(10, 'XI2019', '786767556', 'RPL', '2021-04-26 05:39:05'),
(11, 'XII2018', '839129831', 'MM', '2021-04-26 05:40:03'),
(12, 'XII2018', '886595444', 'MM', '2021-04-26 06:08:48'),
(13, 'XII2018', '893348458', 'RPL', '2021-04-26 06:09:46'),
(14, 'XII2018', '990878777', 'RPL', '2021-04-26 06:09:53'),
(15, 'XII2018', '887788956', 'RPL', '2021-04-26 06:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id_guru` varchar(60) NOT NULL,
  `nama_guru` text,
  `nip` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id_guru`, `nama_guru`, `nip`) VALUES
('DG-0001', 'Irwansyah Saputra, S.Kom', '89234982739'),
('DG-0002', 'Surya Herdiansyah, S.Kom', '2834892334'),
('DG-0003', 'Wahyudi, S.T', '33232321122'),
('DG-0004', 'kalingga Putra, S.Kom', '28349293488'),
('DG-0005', 'Reni Setiansyah, S.Kom', '23423423434');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `id_jurusan` varchar(60) NOT NULL,
  `jurusan` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`id_jurusan`, `jurusan`) VALUES
('MM', 'Multimedia'),
('RPL', 'Rekayasa Perangkat Lunak');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id_kelas` varchar(60) NOT NULL,
  `kelas` text,
  `id_guru` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id_kelas`, `kelas`, `id_guru`) VALUES
('X2021', 'Kelas X Angkatan 2021/2022', 'DG-0001'),
('XI2019', 'Kelas XI Angkatan 2019/2020', 'DG-0005'),
('XII2018', 'Kelas XII Angkatan 2018/2019', 'DG-0003');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nis` varchar(60) NOT NULL,
  `nama_siswa` text,
  `jenis_kelamin` text,
  `alamat` text,
  `no_telp` text,
  `email` text,
  `tgl_terdaftar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nis`, `nama_siswa`, `jenis_kelamin`, `alamat`, `no_telp`, `email`, `tgl_terdaftar`) VALUES
('342334365', 'Wawan Handoyo', 'Laki-laki', 'Cikarang, Bekasi', '081xxxxxxxxx', 'rendi@gmail.com', '2021-04-26 04:43:49'),
('342343435', 'Putra Aryanto', 'Laki-laki', 'Cikarang, Bekasi', '081xxxxxxxxx', 'putra@gmail.com', '2021-04-26 04:43:49'),
('441211233', 'Lukman', 'Laki-laki', 'Cikarang, Bekasi', '081xxxxxxxxx', 'lookman@gmail.com', '2021-04-26 04:43:49'),
('443453554', 'Hendi Afrandi', 'Laki-laki', 'Cikarang, Bekasi', '081xxxxxxxxx', 'hendi@gmail.com', '2021-04-26 04:43:49'),
('565334579', 'Suci Pudjiastuti', 'Perempuan', 'Cikarang, Bekasi', '081xxxxxxxxx', 'suci@gmail.com', '2021-04-26 04:43:49'),
('565634579', 'Lita Bianka', 'Perempuan', 'Cikarang, Bekasi', '081xxxxxxxxx', 'lita@gmail.com', '2021-04-26 04:43:49'),
('566566544', 'Ghina Syifa', 'Perempuan', 'Babatan, Banten', '081xxxxxxxxx', 'ghina@gmail.com', '2021-04-26 04:43:49'),
('666567544', 'Wisnu Farnandi', 'Laki-laki', 'Cikarang, Bekasi', '081xxxxxxxxx', 'wisnu@gmail.com', '2021-04-26 04:43:49'),
('667593943', 'Setya Budi Rahman', 'Laki-laki', 'Cikarang, Bekasi', '081xxxxxxxxx', 'setya@gmail.com', '2021-04-26 04:43:49'),
('786767556', 'Rendra Adijaya', 'Laki-laki', 'Cibitung, Bekasi', '081xxxxxxxxx', 'rendra@gmail.com', '2021-04-26 04:43:49'),
('839129831', 'Rendi Afriansyah', 'Laki-laki', 'Cikarang, Bekasi', '081xxxxxxxxx', 'rendi@gmail.com', '2021-04-26 04:43:49'),
('886595444', 'Winda Ayuningtias', 'Perempuan', 'Cikeas, Bogor', '081xxxxxxxxx', 'winda@gmail.com', '2021-04-26 04:43:49'),
('887788956', 'Wahyu Saputra', 'Laki-laki', 'Pandeglang, Banten', '081xxxxxxxxx', 'wahyu@gmail.com', '2021-04-26 04:43:49'),
('893348458', 'Sufyan Iantara', 'Laki-laki', 'Cikarang, Bekasi', '081xxxxxxxxx', 'sufyan@gmail.com', '2021-04-26 04:43:49'),
('990878777', 'Wayana Irham', 'Laki-laki', 'Balumbung, Bali', '081xxxxxxxxx', 'wayan@gmail.com', '2021-04-26 04:43:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_datasiswa`
--
ALTER TABLE `tbl_datasiswa`
  ADD PRIMARY KEY (`id_datasiswa`,`id_kelas`,`nis`,`id_jurusan`),
  ADD KEY `fk_jur2datasiswa` (`id_jurusan`),
  ADD KEY `fk_kls2datasiswa` (`id_kelas`),
  ADD KEY `fk_ssw2datasiswa` (`nis`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id_kelas`,`id_guru`),
  ADD KEY `fk_gr2kelas` (`id_guru`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_datasiswa`
--
ALTER TABLE `tbl_datasiswa`
  MODIFY `id_datasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_datasiswa`
--
ALTER TABLE `tbl_datasiswa`
  ADD CONSTRAINT `fk_jur2datasiswa` FOREIGN KEY (`id_jurusan`) REFERENCES `tbl_jurusan` (`id_jurusan`),
  ADD CONSTRAINT `fk_kls2datasiswa` FOREIGN KEY (`id_kelas`) REFERENCES `tbl_kelas` (`id_kelas`),
  ADD CONSTRAINT `fk_ssw2datasiswa` FOREIGN KEY (`nis`) REFERENCES `tbl_siswa` (`nis`);

--
-- Constraints for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD CONSTRAINT `fk_gr2kelas` FOREIGN KEY (`id_guru`) REFERENCES `tbl_guru` (`id_guru`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
