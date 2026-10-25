-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Okt 2026 pada 00.34
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db5a`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilaimahasiswa`
--

CREATE TABLE `nilaimahasiswa` (
  `NIM` int(18) UNSIGNED NOT NULL,
  `NamaMahasiswa` varchar(30) NOT NULL,
  `NilaiAkhir` double NOT NULL,
  `NilaiHuruf` varchar(5) NOT NULL,
  `predikat` varchar(20) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `file_path` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nilaimahasiswa`
--

INSERT INTO `nilaimahasiswa` (`NIM`, `NamaMahasiswa`, `NilaiAkhir`, `NilaiHuruf`, `predikat`, `create_date`, `modified_date`, `file_path`, `created_date`) VALUES
(3, 'yovan', 75, 'B', 'Memuaskan', '2026-10-25 23:33:11', '2026-10-25 17:33:11', 'uploads/1792971191_jobsheet11_logo.jpg', '2026-10-26 04:17:37'),
(4, 'bimzy', 0, 'E', 'Tidak Lulus', '2026-10-25 23:33:48', '2026-10-25 17:33:48', 'uploads/1792971228_CITYPNG.COMRecycleRecyclingWhiteLogoIconHDPNG-2000x2000.png', '2026-10-26 04:17:37'),
(3202416020, 'surya', 91, 'A', 'Sangat Memuaskan', '2026-10-25 23:25:46', '2026-10-25 17:25:46', 'uploads/1792970746_akechi.png', '2026-10-26 04:17:37'),
(3202416040, 'taiga', 80, 'B', 'Memuaskan', '2026-10-25 23:26:19', '2026-10-25 17:26:19', 'uploads/1792970779_wp13610084-superman-kingdom-come-wallpapers.jpg', '2026-10-26 04:22:56'),
(3202416060, 'yovan andrean jordan', 50, 'D', 'Kurang', '2026-10-25 16:52:09', '2026-10-25 16:52:09', 'uploads/1792968729_yovanmask.png', '2026-10-26 05:52:09'),
(3202416076, 'matt hagen', 99, 'A', 'Sangat Memuaskan', '2026-10-25 23:08:46', '2026-10-25 17:08:46', 'uploads/1792969726_matthagen.jpg', '2026-10-26 06:02:09'),
(3202416090, 'bimskuy', 10, 'E', 'Tidak Lulus', '2026-10-25 23:26:45', '2026-10-25 17:26:45', 'uploads/1792970805_jobsheet12_Green.jpg', '2026-10-26 05:28:36'),
(3202416130, 'bima stewart', 75, 'B', 'Memuaskan', '2026-10-25 16:56:30', '2026-10-25 16:56:30', 'uploads/1792968990_bimastewart.webp', '2026-10-26 05:56:30'),
(3202416139, 'levi ackherman', 46, 'D', 'Kurang', '2026-10-25 16:59:07', '2026-10-25 16:59:07', 'uploads/1792969147_levi.jpg', '2026-10-26 05:59:07'),
(3202416140, 'ham gardner', 30, 'E', 'Tidak Lulus', '2026-10-25 16:58:15', '2026-10-25 16:58:15', 'uploads/1792969095_hamgardner.jpg', '2026-10-26 05:58:15'),
(3202416630, 'teo', 55, 'C', 'Cukup', '2026-10-25 17:00:33', '2026-10-25 17:00:33', 'uploads/1792969233_teo.jpg', '2026-10-26 06:00:33');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `nilaimahasiswa`
--
ALTER TABLE `nilaimahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `nilaimahasiswa`
--
ALTER TABLE `nilaimahasiswa`
  MODIFY `NIM` int(18) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3202416631;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
