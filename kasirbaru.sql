-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jan 2023 pada 12.27
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasirbaru`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `kondisi` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `kondisi`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(1, 'PS.FLTL.001', 1, 'full sheet Prajurit Keraton', 'Baru', '366988', '367998', 'PCS', '10', '22 June 2022, 1:50', NULL),
(2, 'PS.FLTL.002', 1, 'full sheet 11th Asean Paragames solo 2022', 'Baru', '319988', '322998', 'PCS', '10', '22 June 2022, 1:50', '4 January 2023, 14:04'),
(3, 'PS.PRGK.001', 2, 'Global Geopark Belitong', 'Baru', '115988', '117998', 'PCS', '10', '22 June 2022, 1:50', NULL),
(4, 'PS.PRGK.002', 2, 'Pos Lintaas Batas Negara', 'Baru', '111988', '112998', 'PCS', '10', '22 June 2022, 1:50', NULL),
(5, 'PS.SHP.001', 3, 'annual mettings 2018 IMF', 'Baru', '108988', '110998', 'PCS', '9', '22 June 2022, 1:50', NULL),
(6, 'PS.SHP.002', 3, 'tanda kehormatan 2020', 'Baru', '77988', '79998', 'PCS', '10', '22 June 2022, 1:50', NULL),
(7, 'PS.KTPS.001', 5, 'postcrossing 2017', 'Baru', '75988', '77998', 'PCS', '10', '22 June 2022, 1:50', NULL),
(8, 'PS.KTPS.002', 5, 'Shio Kerbau 2021', 'Baru', '111988', '112998', 'PCS', '10', '22 June 2022, 1:50', NULL),
(9, 'PS.PRGK.003', 2, 'keraton baru boko', 'Baru', '108988', '110998', 'PCS', '10', '22 June 2022, 2:25', '22 June 2022, 2:43'),
(10, 'PS.SHP.003', 3, 'Sirkuit Mandalika', 'Baru', '111988', '112998', 'PCS', '8', '22 June 2022, 2:27', '22 June 2022, 2:34'),
(11, 'PS.SS.001', 4, 'Baliphex 2021', 'Baru', '108988', '110998', 'PCS', '4', '21 June 2022, 5:28', '4 January 2023, 13:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(1, 'Filateli', '15 June 2022, 1:50'),
(2, 'Prangko', '22 June 2022, 13:10'),
(3, 'Sampul Hari Pertama', '24 june 2022, 01:07'),
(4, 'Sovenir Sheet', '15 June 2022, 14:19'),
(5, 'Kartu Pos', '25 June 2022, 13:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `level` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id_login`, `id_member`, `user`, `pass`, `level`) VALUES
(1, 2, 'Fannydevita', '150fb021c56c33f82eef99253eb36ee1', 'admin'),
(10, 2, 'tes', '1d0258c2440a8d19e716292b231e3190', 'manager'),
(12, 2, 'Devita', 'c7911af3adbd12a035b289556d96470a', 'kasir'),
(13, 2, 'desy', 'c7911af3adbd12a035b289556d96470a', 'kasir'),
(14, 2, 'astri', 'c7911af3adbd12a035b289556d96470a', 'kasir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'Rizaluardi', 'Kolmas', '0812356789', 'rizaluardiaps@gmail.com', 'unnamed.jpg', '123456778'),
(2, 'Fannydevita', 'tes', '082120132826', 'fannydevita@gmail.com', '180679.png', '1234552522');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(1, 'Sp.Kt160T20.002', 2, '1', '111988', '15 June 2022, 2:41', '06-2022'),
(2, 'Sp.Kt160T20.001', 2, '1', '110998', '22 June 2022, 13:55', '06-2022'),
(3, 'PS.SS.001', 2, '1', '110998', '4 January 2023, 12:29', '01-2023'),
(4, 'PS.SS.001', 2, '1', '110998', '4 January 2023, 12:29', '01-2023'),
(5, 'PS.SHP.003', 2, '1', '112998', '4 January 2023, 13:28', '01-2023'),
(6, 'PS.SS.001', 2, '1', '110998', '4 January 2023, 12:29', '01-2023'),
(7, 'PS.SHP.003', 2, '1', '112998', '4 January 2023, 13:28', '01-2023'),
(8, 'PS.SS.001', 2, '1', '110998', '4 January 2023, 16:28', '01-2023'),
(9, 'PS.SS.001', 2, '1', '110998', '4 January 2023, 17:04', '01-2023'),
(10, 'PS.SS.001', 2, '1', '110998', '4 January 2023, 17:04', '01-2023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
(11, 'PS.SS.001', 2, '1', '110998', '8 January 2023, 16:01'),
(12, 'PS.SHP.003', 2, '1', '112998', '8 January 2023, 16:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'Marthana Pratama', 'JL. Asia Afrika no 49', '(022) 91197823', 'ADMIN');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_barang` (`id_barang`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`),
  ADD KEY `login_ibfk_1` (`id_member`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
