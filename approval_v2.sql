-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2020 at 03:54 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `approval`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_approved`
--

CREATE TABLE `tb_approved` (
  `kode_A` int(10) NOT NULL,
  `kode_U` varchar(10) NOT NULL,
  `kode_S` varchar(10) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_spesifikasi`
--

CREATE TABLE `tb_detail_spesifikasi` (
  `kode_DS` int(10) NOT NULL,
  `kode_S` varchar(10) NOT NULL,
  `kode_IS` int(5) NOT NULL,
  `kode_mt` varchar(30) NOT NULL,
  `qty` decimal(20,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_detail_spesifikasi`
--

INSERT INTO `tb_detail_spesifikasi` (`kode_DS`, `kode_S`, `kode_IS`, `kode_mt`, `qty`) VALUES
(1, 'SP12BS01', 3, 'ACAA', '12'),
(2, 'SP12BS01', 3, 'ACAA', '12'),
(3, 'SP12BS01', 2, 'ACAA', '35');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ing_class`
--

CREATE TABLE `tb_ing_class` (
  `kode_IS` int(5) NOT NULL,
  `name_IS` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ing_class`
--

INSERT INTO `tb_ing_class` (`kode_IS`, `name_IS`) VALUES
(1, 'Rubber'),
(2, 'Powder'),
(3, 'Filler'),
(4, 'Oil');

-- --------------------------------------------------------

--
-- Table structure for table `tb_material`
--

CREATE TABLE `tb_material` (
  `kode_mt` varchar(6) NOT NULL,
  `deskripsi` varchar(30) NOT NULL,
  `tanggal_input` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_material`
--

INSERT INTO `tb_material` (`kode_mt`, `deskripsi`, `tanggal_input`) VALUES
('', '', '2020-02-08'),
('1T987', 'COMPOUND TREAD', '2020-02-02'),
('5586', 'Ko Gimana', '2020-02-06'),
('a', 'a', '2020-02-01'),
('ACAA', 'ZINC OXIDE', '2020-02-04'),
('ADAA', 'HIKAMI', '2020-02-01'),
('ALGE', 'SEMEN', '0000-00-00'),
('d', 'd', '0000-00-00'),
('k', 'L', '2020-02-01'),
('SA', 'GTR', '0000-00-00'),
('SAM', 'GF', '0000-00-00'),
('TRA', 'GTG', '2020-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mesin`
--

CREATE TABLE `tb_mesin` (
  `kode_M` varchar(6) NOT NULL,
  `lokasi` varchar(30) NOT NULL,
  `kapasitas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mesin`
--

INSERT INTO `tb_mesin` (`kode_M`, `lokasi`, `kapasitas`) VALUES
('MCA1', 'MCA GT', '410L'),
('MCA2', 'MCA GT', '255L'),
('MCA3', 'MCA GT', '410L');

-- --------------------------------------------------------

--
-- Table structure for table `tb_proses`
--

CREATE TABLE `tb_proses` (
  `kode_p` varchar(6) NOT NULL,
  `kode_s` varchar(6) NOT NULL,
  `kode_m` varchar(6) NOT NULL,
  `step_1` varchar(20) NOT NULL,
  `step_2` varchar(20) NOT NULL,
  `step_3` varchar(20) NOT NULL,
  `step_4` varchar(20) NOT NULL,
  `step_5` varchar(20) NOT NULL,
  `step_6` varchar(20) NOT NULL,
  `step_7` varchar(20) NOT NULL,
  `step_8` varchar(20) NOT NULL,
  `step_9` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_spesifikasi`
--

CREATE TABLE `tb_spesifikasi` (
  `kode_S` varchar(10) NOT NULL,
  `spec` varchar(40) NOT NULL,
  `tanggal_spec` date NOT NULL,
  `revisi` varchar(30) NOT NULL,
  `kode_M` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_spesifikasi`
--

INSERT INTO `tb_spesifikasi` (`kode_S`, `spec`, `tanggal_spec`, `revisi`, `kode_M`) VALUES
('SP12BS01', 'busi', '2020-02-22', '', 'MCA1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `kode_U` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `plant` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`kode_U`, `username`, `password`, `jabatan`, `grade`, `dept`, `plant`) VALUES
('', '', 'aaaa', 'Staff', '4', 'MTD', 'Mixing'),
('001', 'Adi', '1234', 'Staffs', '4', 'MTD', 'Mixing'),
('002', 'Yasin', '123', 'section head', '6', 'MTD', 'Mixing'),
('003', 'Gufron', '123', 'Ass.Dept.Head', '9', 'MTD', 'Mixing'),
('004', 'Fadli', '1234', 'Dept. Head', '13', 'MTD', 'Mixing'),
('005', 'Ari', '123', 'Staff', '4', 'MTD', 'Mixing'),
('006', 'Wenang', '123', 'Staff', '5', 'MTD', 'Mixing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_approved`
--
ALTER TABLE `tb_approved`
  ADD PRIMARY KEY (`kode_A`),
  ADD KEY `kode_S` (`kode_S`),
  ADD KEY `kode_U` (`kode_U`);

--
-- Indexes for table `tb_detail_spesifikasi`
--
ALTER TABLE `tb_detail_spesifikasi`
  ADD PRIMARY KEY (`kode_DS`),
  ADD KEY `kode_S` (`kode_S`),
  ADD KEY `kode_IS` (`kode_IS`);

--
-- Indexes for table `tb_ing_class`
--
ALTER TABLE `tb_ing_class`
  ADD PRIMARY KEY (`kode_IS`);

--
-- Indexes for table `tb_material`
--
ALTER TABLE `tb_material`
  ADD PRIMARY KEY (`kode_mt`);

--
-- Indexes for table `tb_mesin`
--
ALTER TABLE `tb_mesin`
  ADD PRIMARY KEY (`kode_M`);

--
-- Indexes for table `tb_proses`
--
ALTER TABLE `tb_proses`
  ADD PRIMARY KEY (`kode_p`);

--
-- Indexes for table `tb_spesifikasi`
--
ALTER TABLE `tb_spesifikasi`
  ADD PRIMARY KEY (`kode_S`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`kode_U`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_approved`
--
ALTER TABLE `tb_approved`
  MODIFY `kode_A` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_detail_spesifikasi`
--
ALTER TABLE `tb_detail_spesifikasi`
  MODIFY `kode_DS` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_ing_class`
--
ALTER TABLE `tb_ing_class`
  MODIFY `kode_IS` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_approved`
--
ALTER TABLE `tb_approved`
  ADD CONSTRAINT `tb_approved_ibfk_1` FOREIGN KEY (`kode_S`) REFERENCES `tb_spesifikasi` (`kode_S`),
  ADD CONSTRAINT `tb_approved_ibfk_2` FOREIGN KEY (`kode_U`) REFERENCES `tb_user` (`kode_U`);

--
-- Constraints for table `tb_detail_spesifikasi`
--
ALTER TABLE `tb_detail_spesifikasi`
  ADD CONSTRAINT `tb_detail_spesifikasi_ibfk_1` FOREIGN KEY (`kode_S`) REFERENCES `tb_spesifikasi` (`kode_S`),
  ADD CONSTRAINT `tb_detail_spesifikasi_ibfk_2` FOREIGN KEY (`kode_IS`) REFERENCES `tb_ing_class` (`kode_IS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
