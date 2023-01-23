-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jan 2023 pada 13.51
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.30

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paceshop`
--
CREATE DATABASE IF NOT EXISTS `paceshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `paceshop`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` int(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `created` date NOT NULL,
  `nama_image` varchar(50) NOT NULL,
  `type_image` varchar(50) NOT NULL,
  `size_image` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `deskripsi`, `harga`, `stok`, `created`, `nama_image`, `type_image`, `size_image`) VALUES
(13, 'Laptop ASUS M415DAO', 5500000, 5, '2023-01-06', 'IMG-20230106-WA0017.jpg', 'image/jpeg', 221809),
(14, 'Laptop HP 14S CF2500TX', 11300000, 10, '2023-01-06', 'IMG-20230106-WA0016.jpg', 'image/jpeg', 220076),
(15, 'Laptop Lenovo IP3 I4ITL6-COID', 12068000, 5, '2023-01-06', 'IMG-20230106-WA0018.jpg', 'image/jpeg', 222990),
(16, 'Laptop AXIO SLIMBOOK 14', 5200000, 3, '2023-01-06', 'IMG-20230106-WA0019.jpg', 'image/jpeg', 209113),
(17, 'Laptop ASUS NB BR1100CKA', 6135000, 2, '2023-01-06', 'IMG-20230106-WA0020.jpg', 'image/jpeg', 195951),
(18, 'Laptop Lenovo Ideapad Gaming 3I ', 16000000, 7, '2023-01-06', 'IMG-20230106-WA0026.jpg', 'image/jpeg', 131780),
(19, 'Laptop Axio 2 Series', 7000000, 3, '2023-01-06', 'IMG-20230106-WA0028.jpg', 'image/jpeg', 121516),
(20, 'Laptop Axio ', 6000000, 6, '2023-01-06', 'WhatsApp Imag.jpg', 'image/jpeg', 328112),
(21, 'Laptop Acer Nitro', 13000000, 5, '2023-01-06', 'WhatsApp Image.jpg', 'image/jpeg', 401920),
(22, 'Laptop Acer A314 22 R1OY', 5000000, 9, '2023-01-06', 'IMG-20230106-WA0033.jpg', 'image/jpeg', 146550),
(23, 'Laptop Acer Aspiro Vero', 10300000, 2, '2023-01-06', 'IMG-20230106-WA0034.jpg', 'image/jpeg', 101312),
(24, 'Laptop Axio MAcbook 11', 8000000, 3, '2023-01-06', 'IMG-20230106-WA0035.jpg', 'image/jpeg', 100243),
(25, 'Laptop Axio MAcbook 14 E', 4550000, 14, '2023-01-06', 'IMG-20230106-WA0036.jpg', 'image/jpeg', 197211),
(26, 'Laptop Axio MAcbook 14 F', 3200000, 4, '2023-01-06', 'IMG-20230106-WA0037.jpg', 'image/jpeg', 199479);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_keranjang`
--

CREATE TABLE `tbl_keranjang` (
  `id` int(100) NOT NULL,
  `id_user` int(100) NOT NULL,
  `id_barang` int(100) NOT NULL,
  `bonus` varchar(20) NOT NULL,
  `qty` int(50) NOT NULL,
  `kurir` varchar(15) NOT NULL,
  `date_in` date NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pesanan`
--

CREATE TABLE `tbl_pesanan` (
  `id_pesanan` int(100) NOT NULL,
  `id_user` int(100) NOT NULL,
  `id_barang` int(100) NOT NULL,
  `bonus` varchar(20) NOT NULL,
  `qty` int(50) NOT NULL,
  `kurir` varchar(15) NOT NULL,
  `date_in` date NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pesanan`
--

INSERT INTO `tbl_pesanan` (`id_pesanan`, `id_user`, `id_barang`, `bonus`, `qty`, `kurir`, `date_in`, `total`) VALUES
(16, 4, 5, 'L', 1, 'JNE', '2018-01-01', 130000),
(17, 4, 6, 'M', 1, 'TIKI', '2018-01-01', 145000),
(19, 2, 9, 'M', 2, 'JNE', '2018-01-01', 270000),
(20, 3, 7, 'M', 2, 'KILAT', '2018-01-02', 260000),
(21, 5, 7, 'XL', 3, 'JNE', '2018-01-02', 390000),
(22, 5, 2, 'L', 2, 'SICEPAT', '2018-01-02', 270000),
(23, 1, 1, 'M', 3, 'POS', '2023-01-05', 435000),
(24, 1, 1, 'L', 2, '-- pilih salah ', '2023-01-05', 290000),
(25, 1, 2, 'Mouse', 3, 'POS', '2023-01-05', 405000),
(26, 2, 1, 'Pelindung Keyboard', 2, 'POS', '2023-01-05', 290000),
(27, 1, 10, 'Pembersih Layar', 5, 'SICEPAT', '2023-01-05', 75000000),
(28, 1, 11, 'Kain Fiber', 2, 'SICEPAT', '2023-01-05', 30000000),
(29, 1, 10, 'Pelindung Keyboard', 1, 'TIKI', '2023-01-05', 15000000),
(30, 1, 11, 'Mouse', 1, 'TIKI', '2023-01-05', 15000000),
(31, 1, 11, 'Pembersih Layar', 1, 'TIKI', '2023-01-05', 15000000),
(32, 1, 11, 'Kain Fiber', 1, 'GOJEK', '2023-01-05', 15000000),
(33, 8, 13, 'Mouse Pad', 1, 'POS', '2023-01-06', 5500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_user` int(100) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(6) NOT NULL,
  `password` varchar(6) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` text NOT NULL,
  `title` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `nama_lengkap`, `email`, `username`, `password`, `alamat`, `no_hp`, `title`) VALUES
(1, 'Seven Sky', 'SevenSky@gmail.com', 'seven', 'seven', 'JL.ZA, Pagar ALam', '082248080870', 'admin'),
(7, 'yoga', 'yoga@gmail.com', 'yoga', 'yoga', 'Bandar Lampung', '082390098756', 'user'),
(8, 'risal', 'risal@gmail.com', 'risal', 'risal', 'Pesawaran', '09876789098', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `tbl_keranjang`
--
ALTER TABLE `tbl_keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `tbl_keranjang`
--
ALTER TABLE `tbl_keranjang`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  MODIFY `id_pesanan` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
