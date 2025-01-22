-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2025 at 06:20 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asis`
--

-- --------------------------------------------------------

--
-- Table structure for table `kalender_akademik`
--

CREATE TABLE `kalender_akademik` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kalender_akademik`
--

INSERT INTO `kalender_akademik` (`id`, `tanggal`, `keterangan`) VALUES
(1, '2023-01-01', 'Tahun Baru Masehi'),
(2, '2023-02-01', 'Tahun Baru Imlek'),
(3, '2023-03-21', 'Hari Raya Nyepi'),
(4, '2023-05-01', 'Hari Buruh Internasional'),
(5, '2023-05-07', 'Hari Raya Waisak'),
(6, '2023-05-21', 'Hari Kebangkitan Nasional'),
(7, '2023-05-25', 'Hari Raya Idul Fitri'),
(8, '2023-05-26', 'Hari Raya Idul Fitri'),
(9, '2023-06-01', 'Hari Lahir Pancasila'),
(10, '2023-07-09', 'Hari Lebaran Haji'),
(11, '2023-08-17', 'Hari Kemerdekaan RI'),
(12, '2023-08-19', 'Hari Raya Idul Adha'),
(13, '2023-09-01', 'Tahun Baru Islam (Hijriyah)'),
(14, '2023-11-07', 'Maulid Nabi Muhammad SAW'),
(15, '2023-12-25', 'Hari Raya Natal'),
(16, '2023-08-21', 'Hari Peringatan Proklamasi Kemerdekaan RI'),
(17, '2023-10-01', 'Hari Kesaktian Pancasila'),
(18, '2023-11-25', 'Hari Guru Nasional'),
(19, '2023-12-22', 'Hari Ibu Nasional'),
(20, '2023-04-22', 'Hari Bumi'),
(21, '2023-06-25', 'Hari Raya Idul Fitri (cuti bersama)'),
(22, '2023-11-01', 'Hari Sumpah Pemuda'),
(23, '2023-08-07', 'Unggah Jadwal di WiraAkademik'),
(24, '2023-08-14', 'Pengisian FRS dan Registrasi Keuangan'),
(25, '2023-08-21', 'Pekan Penasehatan'),
(26, '2023-09-11', 'Awal Perkuliahan Semester Ganjil'),
(27, '2023-10-30', 'Ujian Tengah Semester (UTS)'),
(28, '2023-12-01', 'Minggu Tenang'),
(29, '2024-01-08', 'Ujian Akhir Semester (UAS)'),
(30, '2023-12-11', 'Registrasi Keuangan'),
(31, '2024-01-25', 'Pengumuman Kartu Hasil Studi (KHS)');

-- --------------------------------------------------------

--
-- Table structure for table `penggunaan_ruangan`
--

CREATE TABLE `penggunaan_ruangan` (
  `no` int(11) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam_ke` varchar(11) NOT NULL,
  `ruangan` varchar(50) NOT NULL,
  `digunakan` varchar(50) NOT NULL,
  `matkul` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penggunaan_ruangan`
--

INSERT INTO `penggunaan_ruangan` (`no`, `hari`, `jam_ke`, `ruangan`, `digunakan`, `matkul`) VALUES
(1, 'Senin', '1-3', '203', 'Dewi Nurmalitasari M.Si', 'Aljabar'),
(2, 'Senin', '4-6', '104', 'Dewi Nurmalitasari M.Si', 'Aljabar'),
(3, 'Senin', '1-4', '102', 'Praminto M.Pd', 'PGRI'),
(4, 'Senin', '1-6', 'Lab Kom lama', 'Lanidita Farosanti M.Kom', 'Data Mining'),
(5, 'Senin', '1-3', '104', 'Dimas Rega H. M.Kom', 'Rekayasa Perangkat Lunak'),
(6, 'Senin', '4-6', '204', 'Dimas Rega H. M.Kom', 'Rekayasa Perangkat Lunak'),
(7, 'Senin', '1-6', 'Lab Komputer Baru', 'Puji Utami M.Kom', 'Visualisasi Data'),
(8, 'Selasa', '1-8', 'Lab Komputer Baru', 'Rizdania M.Kom', 'Pemrograman Dasar'),
(9, 'Selasa', '1-3', '203', 'Dewi Nurmalitasari M.Si', 'Kalkulus'),
(10, 'Selasa', '4-6', '203', 'Dr Maya Rayungsari M.Si', 'Kalkulus'),
(11, 'Selasa', '9-10', 'Lab Komputer Baru', 'Rizdania M.Kom', 'Pengenalan Pola'),
(12, 'Selasa', '1-8', 'Lab Kom Lama', 'Lanidita Farosanti M.Kom', 'Basis Data'),
(13, 'Selasa', '1-6', 'Gedung Timur 004', 'Dimas Rega H.M.Kom', 'Keamanan Jaringan'),
(14, 'Rabu', '1-6', '18', 'Yuniar Mujiwati M.Pd', 'Pancasila'),
(15, 'Rabu', '1-6', 'Lab Kom Lama', 'Sapto Hadi Riono M.Kom', 'Sistem Digital'),
(16, 'Rabu', '7-12', 'Lab Komputer Baru', 'Dr M. Taufik M.Pd', 'Statistika'),
(17, 'Rabu', '1-4', '306', 'Innayatul Laili M.Pd', 'Kewarganegaraan'),
(18, 'Rabu', '1-4', 'Gedung Timur 004', 'Dr Nunuk Indarati M.M', 'Kewirausahaan'),
(19, 'Rabu', '1-6', 'Lab Komputer Baru', 'Dr Maya Rayungsari M.Si', 'Metode Numerik'),
(20, 'Rabu', '1-6', '203', 'Lanidita Farosanti M.Kom', 'Sistem Pendukung Keputusan'),
(21, 'Kamis', '1-6', 'Lab Komputer Baru', 'Puji Utami R M.Kom', 'Pengantar Ilmu Komputer'),
(22, 'Kamis', '1-8', 'Lab Komputer Lama', 'Rizdania M.Kom', 'Algoritma dan Struktur Data'),
(23, 'Kamis', '9-10', 'Lab Komputer Lama', 'Rizdania M.Kom', 'Pengenalan Pola'),
(24, 'Kamis', '1-6', '201', 'Sapto Hadi Riono M.Kom', 'Bahasa Automata'),
(25, 'Jumat', '1-3', 'Lab Komputer Lama', 'Sapto Hadi Riono M.Kom', 'Sistem Operasi'),
(26, 'Jumat', '4-6', 'Lab Komputer Baru', 'Sapto Hadi Riono M.Kom', 'Sistem Operasi'),
(27, 'Jumat', '1-3', 'Lab Komputer Baru', 'Dimas Rega H.M.Kom', 'Multimedia'),
(28, 'Jumat', '4-6', 'Lab Komputer Lama', 'Dimas Rega H.M.Kom', 'Multimedia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kalender_akademik`
--
ALTER TABLE `kalender_akademik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penggunaan_ruangan`
--
ALTER TABLE `penggunaan_ruangan`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kalender_akademik`
--
ALTER TABLE `kalender_akademik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `penggunaan_ruangan`
--
ALTER TABLE `penggunaan_ruangan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
