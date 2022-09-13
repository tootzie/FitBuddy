-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2022 at 02:40 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyek`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_exercise`
--

CREATE TABLE `detail_exercise` (
  `id_detail_exercise` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_exercise` int(11) NOT NULL,
  `time` double NOT NULL,
  `cal_burned` double NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_exercise`
--

INSERT INTO `detail_exercise` (`id_detail_exercise`, `id_user`, `id_exercise`, `time`, `cal_burned`, `tanggal`) VALUES
(1, 5, 3, 10, 66, '2020-06-01'),
(3, 5, 2, 5, 54, '2020-06-01'),
(4, 5, 19, 5, 19.5, '2020-05-31'),
(5, 5, 23, 30, 300, '2020-05-31'),
(6, 1, 2, 5, 54, '2020-06-01'),
(7, 1, 1, 30, 93, '2020-06-01'),
(8, 1, 18, 45, 252, '2020-05-31'),
(9, 5, 1, 5, 15.5, '2020-05-30'),
(10, 5, 19, 10, 39, '2020-06-02'),
(15, 7, 19, 10, 39, '2020-06-11'),
(16, 10, 2, 60, 648, '2020-06-20'),
(17, 11, 11, 10, 80, '2020-06-25'),
(19, 5, 23, 20, 200, '2020-06-26'),
(20, 5, 13, 5, 22.75, '2020-06-26'),
(21, 1, 1, 10, 31, '2020-06-26'),
(22, 1, 1, 20, 62, '2020-06-26'),
(23, 5, 1, 45, 139.5, '2020-10-30'),
(24, 5, 14, 5, 24.5, '2020-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `detail_makanan`
--

CREATE TABLE `detail_makanan` (
  `id_detail_makanan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_makanan` int(11) NOT NULL,
  `jumlah_porsi` double NOT NULL,
  `total_kal` double NOT NULL,
  `total_karb` double NOT NULL,
  `total_lemak` double NOT NULL,
  `total_prot` double NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_makanan`
--

INSERT INTO `detail_makanan` (`id_detail_makanan`, `id_user`, `id_makanan`, `jumlah_porsi`, `total_kal`, `total_karb`, `total_lemak`, `total_prot`, `tanggal`) VALUES
(1, 5, 1, 1, 129, 27, 0.28, 2.66, '2020-05-31'),
(2, 5, 22, 1, 354, 6, 25, 29, '2020-05-31'),
(3, 1, 20, 1, 50, 8, 2, 2, '2020-05-31'),
(4, 5, 13, 2, 528, 98, 6.4, 18, '2020-05-30'),
(5, 5, 5, 3, 240, 2.4, 14.1, 32.7, '2020-05-31'),
(6, 5, 2, 1, 556, 58, 21.5, 31.1, '2020-05-30'),
(7, 1, 19, 0.5, 60, 0, 6.5, 10, '2020-05-31'),
(9, 5, 15, 1, 125, 0, 549, 1748, '2020-05-31'),
(10, 5, 23, 2, 78, 10, 4, 2, '2020-06-01'),
(11, 5, 8, 2, 300, 2, 20, 25, '2020-06-01'),
(12, 5, 25, 1, 11, 2, 0, 2, '2020-06-01'),
(14, 5, 2, 2, 1112, 116, 43, 62.2, '2020-05-29'),
(15, 5, 11, 1, 164, 0, 3.6, 31, '2020-05-28'),
(16, 5, 5, 1, 80, 0.8, 4.7, 10.9, '2020-05-29'),
(17, 5, 13, 2, 528, 98, 6.4, 18, '2020-05-28'),
(18, 1, 17, 1, 200, 30, 5, 9, '2020-05-31'),
(19, 6, 1, 2, 258, 55.8, 0.56, 5.32, '2020-06-01'),
(20, 6, 5, 2, 160, 1.6, 9.4, 21.8, '2020-06-01'),
(21, 6, 15, 1, 125, 0, 549, 1748, '2020-06-01'),
(23, 1, 1, 1, 129, 27.9, 0.28, 2.66, '2020-06-01'),
(24, 1, 11, 2, 328, 0, 7.2, 62, '2020-06-01'),
(25, 5, 15, 2, 250, 0, 1098, 3496, '2020-06-02'),
(26, 5, 7, 1, 150, 9, 7.7, 14, '2020-06-06'),
(27, 5, 5, 1, 80, 0.8, 4.7, 10.9, '2020-06-02'),
(30, 7, 2, 1, 556, 58, 21.5, 31.1, '2020-06-06'),
(32, 7, 7, 10, 1500, 90, 77, 140, '2020-06-06'),
(33, 7, 20, 10, 500, 80, 20, 20, '2020-06-06'),
(35, 7, 1, 2, 258, 55.8, 0.56, 5.32, '2020-06-06'),
(36, 7, 5, 1, 80, 0.8, 4.7, 10.9, '2020-06-01'),
(37, 7, 8, 2, 300, 2, 20, 25, '2020-06-11'),
(38, 7, 5, 1, 80, 0.8, 4.7, 10.9, '2020-06-11'),
(39, 7, 8, 4, 600, 4, 40, 50, '2020-06-01'),
(40, 10, 1, 1, 129, 27.9, 0.28, 2.66, '2020-06-20'),
(41, 10, 5, 5, 400, 4, 23.5, 54.5, '2020-06-20'),
(42, 10, 7, 2, 300, 18, 15.4, 28, '2020-06-20'),
(43, 11, 1, 2, 258, 55.8, 0.56, 5.32, '2020-06-25'),
(44, 11, 5, 5, 400, 4, 23.5, 54.5, '2020-06-25'),
(45, 5, 1, 1, 129, 27.9, 0.28, 2.66, '2020-06-26'),
(47, 5, 5, 5, 400, 4, 23.5, 54.5, '2020-06-26'),
(49, 5, 19, 1, 120, 0, 13, 20, '2020-06-26'),
(52, 1, 1, 2, 258, 55.8, 0.56, 5.32, '2020-06-26'),
(53, 1, 5, 5, 400, 4, 23.5, 54.5, '2020-06-26'),
(54, 1, 1, 10, 1290, 279, 2.8, 26.6, '2020-06-26'),
(55, 1, 1, 1, 129, 27.9, 0.28, 2.66, '2020-09-23'),
(57, 5, 5, 0.5, 40, 0.4, 2.35, 5.45, '2020-10-30'),
(59, 5, 8, 2, 300, 2, 20, 25, '2020-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id`, `id_user`, `id_transaksi`, `nama`, `jumlah`, `harga`) VALUES
(1, 1, 1, 'Whey protein GOLD STANDARD', 1, 50000),
(2, 1, 1, 'Whey protein GOLD STANDARD', 1, 50000),
(3, 1, 5, 'Citruline POLYHIDRATE', 1, 399000),
(4, 1, 5, 'PAKET WHEY PROTEIN GOLD STANDARD', 1, 200000),
(5, 5, 34, 'Citruline POLYHIDRATE', 2, 399000),
(6, 5, 34, 'FIT BAR protein XL', 1, 600000),
(7, 11, 35, 'PAKET WHEY PROTEIN GOLD STANDARD', 1, 200000),
(8, 11, 35, 'Citruline POLYHIDRATE', 1, 399000),
(9, 11, 35, 'PAKET WHEY PROTEIN GOLD STANDARD', 1, 200000),
(10, 11, 35, 'Citruline POLYHIDRATE', 1, 399000),
(11, 11, 37, 'PAKET WHEY PROTEIN GOLD STANDARD', 1, 200000),
(12, 11, 37, 'Citruline POLYHIDRATE', 1, 399000),
(13, 8, 38, 'Citruline POLYHIDRATE', 1, 399000),
(14, 8, 39, 'Citruline POLYHIDRATE', 1, 399000),
(15, 1, 40, 'Citruline POLYHIDRATE', 1, 399000);

-- --------------------------------------------------------

--
-- Table structure for table `exercise`
--

CREATE TABLE `exercise` (
  `id` int(11) NOT NULL,
  `nama_exercise` varchar(255) NOT NULL,
  `cal_burned` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exercise`
--

INSERT INTO `exercise` (`id`, `nama_exercise`, `cal_burned`) VALUES
(1, 'Walking 1 minute', 3.1),
(2, 'Running 1 minute', 10.8),
(3, 'Aerobic dance 1 minute', 6.6),
(4, 'Jumping jacks 1 minute', 8),
(5, 'Jumping rope 1 minute', 7.6),
(6, 'High-knee running 1 minute', 8),
(7, 'Butt kicks 1 minute', 8),
(8, 'Mountain climbers 1 mintue', 8),
(9, 'Swimming 1 minute', 6.6),
(10, 'Stationary bicycling 1 minute', 7),
(11, 'Sprints 1 minute', 8),
(12, 'Burpees 1 minute', 9.1),
(13, 'Climbing stairs 1 minute', 4.55),
(14, 'Sits-up 1 minute', 4.9),
(15, 'Hiking 1 minute', 6.8),
(16, 'Squats 1 minute', 5.6),
(17, 'Yoga 1 minute', 4.55),
(18, 'The elliptical 1 minute', 5.6),
(19, 'Lifting weights 1 minute', 3.9),
(20, 'Surfing 1 minute', 3.5),
(21, 'Basketball 1 minute', 10),
(22, 'Moderate dancing 1 minute', 10),
(23, 'Cycling 1 minute', 10);

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE `makanan` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `kalori` int(11) NOT NULL,
  `lemak` double NOT NULL,
  `protein` double NOT NULL,
  `karbohidrat` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`id`, `nama`, `kalori`, `lemak`, `protein`, `karbohidrat`) VALUES
(1, 'Nasi Putih 100gr', 129, 0.28, 2.66, 27.9),
(2, 'Hoka Hoka Bento Paket A', 556, 21.5, 31.1, 58),
(5, 'Tahu 100gr', 80, 4.7, 10.9, 0.8),
(7, 'Tempe 100gr', 150, 7.7, 14, 9),
(8, 'Telur 80gr', 150, 10, 12.5, 1),
(11, 'Dada ayam 100gr', 164, 3.6, 31, 0),
(12, 'Daging sapi 100gr', 250, 15, 26, 0),
(13, 'Roti tawar 100gr', 264, 3.2, 9, 49),
(14, 'Kentang 15gr', 70, 3, 8, 53),
(15, 'Gurame goreng 100gr', 125, 549, 1748, 0),
(16, 'Sosis sapi 100gr', 325, 29, 11, 4),
(17, 'Martabak telur 100gr', 200, 5, 9, 30),
(18, 'Lemon generic 36gr', 17, 0, 1, 5),
(19, 'Salmon 100gr', 120, 13, 20, 0),
(20, 'Yogurt cup 60gr', 50, 2, 2, 8),
(21, 'Martabak manis (terang bulan) 100gr', 265, 0, 0, 0),
(22, 'Bebek goreng 118gr', 354, 25, 29, 6),
(23, 'Kopi torabika 8gr', 39, 2, 1, 5),
(24, 'Hershey almond 1 bar', 210, 14, 4, 21),
(25, 'Selada rebus 57gr', 11, 0, 2, 2),
(26, 'Brokoli 100gr', 24, 0, 3, 2),
(27, 'Semangka 180gr', 50, 0, 0, 12),
(28, 'Coca cola 330ml', 240, 0, 0, 65),
(29, 'Tomat merah 100gr', 18, 0, 1, 4),
(30, 'Avocado 100gr', 234, 21, 3, 12),
(31, 'Dada ayam 100gr', 164, 3.6, 31, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nutrisi`
--

CREATE TABLE `nutrisi` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kalori` int(11) NOT NULL,
  `exercise` int(11) NOT NULL,
  `karbohidrat` int(11) NOT NULL,
  `lemak` int(11) NOT NULL,
  `protein` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nutrisi`
--

INSERT INTO `nutrisi` (`id`, `id_user`, `tanggal`, `kalori`, `exercise`, `karbohidrat`, `lemak`, `protein`) VALUES
(1, 1, '2020-05-23', 1800, 300, 50, 30, 60);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `diskon` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `total`, `tanggal`, `alamat`, `diskon`) VALUES
(1, 90000, '2000-10-26', 'swk permai 1 no.A6', '20%'),
(5, 479200, '2020-06-06', 'padnan sari', '20%'),
(6, 479200, '2020-06-06', 'padnan sari', '20%'),
(7, 599000, '2020-06-06', 'padnan sari', '0%'),
(8, 599000, '2020-06-06', 'padnan sari', '0%'),
(9, 599000, '2020-06-06', 'padnan sari', '0%'),
(10, 599000, '2020-06-06', 'padnan sari', '0%'),
(11, 599000, '2020-06-06', 'padnan sari', '0%'),
(12, 599000, '2020-06-06', 'padnan sari', '0%'),
(13, 599000, '2020-06-06', 'padnan sari', '0%'),
(14, 599000, '2020-06-06', 'padnan sari', '0%'),
(15, 599000, '2020-06-06', 'padnan sari', '0%'),
(16, 599000, '2020-06-06', 'padnan sari', '0%'),
(17, 599000, '2020-06-06', 'padnan sari', '0%'),
(18, 599000, '2020-06-06', 'padnan sari', '0%'),
(19, 599000, '2020-06-06', 'padnan sari', '0%'),
(20, 479200, '2020-06-06', 'padnan sari', '20%'),
(21, 479200, '2020-06-06', 'padnan sari', '20%'),
(22, 479200, '2020-06-06', 'padnan sari', '20%'),
(23, 479200, '2020-06-06', 'padnan sari', '20%'),
(24, 479200, '2020-06-06', 'padnan sari', '20%'),
(25, 479200, '2020-06-06', 'padnan sari', '20%'),
(26, 479200, '2020-06-06', 'padnan sari', '20%'),
(27, 479200, '2020-06-06', 'padnan sari', '20%'),
(28, 479200, '2020-06-06', 'padnan sari', '20%'),
(29, 479200, '2020-06-06', 'padnan sari', '20%'),
(30, 479200, '2020-06-06', 'padnan sari', '20%'),
(31, 479200, '2020-06-06', 'padnan sari', '20%'),
(32, 479200, '2020-06-06', 'padnan sari', '20%'),
(33, 479200, '2020-06-06', 'padnan sari', '20%'),
(34, 999000, '2020-06-06', 'Jl.Virgo 21', '0%'),
(35, 479200, '2020-06-25', '1234 Main St', '20%'),
(36, 479200, '2020-06-25', '1234 Main St', '20%'),
(37, 479200, '2020-06-25', 'asdad', '20%'),
(38, 399000, '2020-06-25', '', '0%'),
(39, 399000, '2020-06-25', '1234 Main St', '0%'),
(40, 319200, '2020-06-26', '1234 Main St', '20%');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `country` varchar(40) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `tinggi` int(11) NOT NULL,
  `goal_kalori` int(11) NOT NULL,
  `goal_weight` varchar(255) NOT NULL,
  `activity_spec` varchar(255) NOT NULL,
  `password` varchar(40) NOT NULL,
  `member` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `tgl_lahir`, `country`, `gender`, `berat`, `tinggi`, `goal_kalori`, `goal_weight`, `activity_spec`, `password`, `member`) VALUES
(1, 'Aheng', 'c14180104@john.petra.ac.id', '2000-10-26', 'ID', 'Male', 55, 168, 1324, 'Lose weight', 'Not very active', '27b8549af995c04715472f602aac2d77', 'Y'),
(5, 'Jessica Clarensia', 'c14180106@john.petra.ac.id', '2000-10-11', 'ID', 'Female', 55, 160, 1144, 'Lose weight', 'Not very active', 'aae039d6aa239cfc121357a825210fa3', 'Y'),
(6, 'budi', 'budi@gmail.com', '2020-05-07', 'ID', 'Male', 68, 170, 2491, 'Maintain weight', 'Lightly active', '7815696ecbf1c96e6894b779456d330e', 'N'),
(7, 'Maxwell Nicholas', 'maxwell123@yahoo.com', '1997-11-20', 'FR', 'Male', 76, 170, 2781, 'Maintain weight', 'Active', '8601f6e1028a8e8a966f6c33fcd9aec4', 'Y'),
(8, 'Mathius Bryant', 'mathiusB@gmail.com', '2000-07-19', 'ID', 'Male', 70, 170, 0, 'Maintain weight', 'Very active', '4b9fdbf7e9c0761681bb90b211e78fdf', 'N'),
(9, 'Jeremi Tety', 'teti_jeremy@yahoo.com', '1976-02-11', 'ID', 'Male', 0, 0, 0, '', '', 'ee5bf3c471288eda453ff4dd65ccd10a', 'N'),
(10, 'John Apple Seed', 'johnappleseed@gmail.com', '2020-06-20', 'CA', 'Male', 75, 170, 2742, 'Maintain weight', 'Active', '527bd5b5d689e2c32ae974c6229ff785', 'N'),
(11, 'Test Account', 'test_account@gmail.com', '2020-06-25', 'ID', 'Female', 90, 180, 2848, 'Maintain weight', 'Active', '098f6bcd4621d373cade4e832627b4f6', 'Y'),
(13, 'Jessica', 'test123@gmail.com', '2020-06-09', 'ID', 'Female', 0, 0, 0, '', '', '7815696ecbf1c96e6894b779456d330e', 'N');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_exercise`
--
ALTER TABLE `detail_exercise`
  ADD PRIMARY KEY (`id_detail_exercise`);

--
-- Indexes for table `detail_makanan`
--
ALTER TABLE `detail_makanan`
  ADD PRIMARY KEY (`id_detail_makanan`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercise`
--
ALTER TABLE `exercise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nutrisi`
--
ALTER TABLE `nutrisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
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
-- AUTO_INCREMENT for table `detail_exercise`
--
ALTER TABLE `detail_exercise`
  MODIFY `id_detail_exercise` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `detail_makanan`
--
ALTER TABLE `detail_makanan`
  MODIFY `id_detail_makanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `exercise`
--
ALTER TABLE `exercise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `makanan`
--
ALTER TABLE `makanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `nutrisi`
--
ALTER TABLE `nutrisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
