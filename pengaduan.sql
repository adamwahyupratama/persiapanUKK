-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jan 2024 pada 08.55
-- Versi server: 10.4.24-MariaDB-log
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lapor_namasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(50) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` char(50) NOT NULL,
  `isi_laporan` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`) VALUES
(1, '2023-01-03', '35041112233', 'Ijin melaporkan, aspal di\r\nsepanjang Ki Ageng Gribig\r\nbanyak berlubang, bahaya\r\nuntuk pengguna jalan\r\nutamanya malam hari.\r\nMohon perhatian dinas\r\nterkait untuk diperbaiki.\r\n'),
(2, '2023-01-28', '35041112233', 'Ijin melaporkan, lampu\r\njalan di daerah Arjosari ada\r\nyang mati, mohon segera\r\ndiperbaiki karena bahaya\r\nuntuk pengendara jalan.'),
(3, '2023-02-05', '40562228999', 'Bapak-bapak dinas sosial,\r\ntolong dong ditertibkan\r\npengamen dan pengemis di\r\nperempatan Sulfat, mulai\r\nmeresahkan karena ada\r\nunsur pemaksaan'),
(4, '2023-03-01', '89211785555', 'Rekayasa lalu lintas di\r\nkayutangan harusnya dikaji\r\nulang pak, banyak titik\r\njalan lain yang macet selain\r\nkayutangan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `nik` (`nik`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD CONSTRAINT `pengaduan_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `masyarakat` (`NIK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
