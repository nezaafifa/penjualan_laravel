-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Okt 2023 pada 04.47
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `stok` varchar(15) NOT NULL,
  `tgl_expired` varchar(15) NOT NULL,
  `id_jenis` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga`, `stok`, `tgl_expired`, `id_jenis`) VALUES
(2, 'skincare', '300000', '20', '2022-11-30', '1'),
(4, 'baju', '36000', '40', '2022-11-15', '3'),
(5, 'sepatu', '25000', '10', '2022-11-25', '4'),
(6, 'kursi', '23000', '2', '2022-12-30', '2'),
(7, 'meja', '36000', '10', '2022-12-28', '5'),
(8, 'laptop', '300000', '30', '2022-12-27', '6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_detail_penjualan` int(11) NOT NULL,
  `id_penjualan` varchar(15) NOT NULL,
  `id_barang` int(15) NOT NULL,
  `jumlah_beli` int(15) NOT NULL,
  `sub_total` int(15) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id_detail_penjualan`, `id_penjualan`, `id_barang`, `jumlah_beli`, `sub_total`, `created_at`) VALUES
(1, 'TRS-2212121', 4, 4, 144000, '2022-12-12 11:08:37'),
(2, 'TRS-2212141', 7, 5, 180000, '2022-12-14 10:39:39'),
(3, 'TRS-2212151', 4, 10, 360000, '2022-12-15 13:25:48'),
(4, 'TRS-2212161', 7, 8, 288000, '2022-12-16 10:10:44'),
(5, 'TRS-2301061', 2, 2, 600000, '2023-01-06 08:51:19'),
(6, 'TRS-2301291', 2, 10, 3000000, '2023-01-29 19:59:29'),
(7, 'TRS-2302221', 2, 10, 3000000, '2023-02-22 08:29:35'),
(8, 'TRS-2302221', 4, 10, 360000, '2023-02-22 08:29:35'),
(9, 'TRS-2302221', 6, 10, 230000, '2023-02-22 08:29:35'),
(10, 'TRS-2302221', 7, 10, 360000, '2023-02-22 08:29:35'),
(11, 'TRS-2302221', 8, 5, 1500000, '2023-02-22 08:29:35'),
(12, 'TRS-2309301', 2, 2, 600000, '2023-09-30 20:44:14'),
(13, 'TRS-2309302', 4, 5, 180000, '2023-09-30 23:55:05'),
(14, 'TRS-2309302', 2, 5, 1500000, '2023-09-30 23:55:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama_jenis`) VALUES
(1, 'nezza'),
(2, 'afifa'),
(3, 'maulia'),
(4, 'ahkmad'),
(5, 'abid'),
(6, 'maulana'),
(7, 'hdtyuj');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama`, `alamat`, `no_telp`) VALUES
(1, 'nezza', 'kelet ', '089504843524'),
(3, 'abid', 'bangsri', '089576423443'),
(5, 'afifa', 'kelet', '089576423443'),
(6, 'ahmad', 'bangsri', '089576423443'),
(7, 'maulia', 'kelet', '089576423443'),
(8, 'maulana', 'bangsri', '089576423443');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` varchar(20) NOT NULL,
  `id_pembeli` int(15) NOT NULL,
  `id_user` int(10) NOT NULL,
  `total` int(15) NOT NULL,
  `bayar` int(15) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_pembeli`, `id_user`, `total`, `bayar`, `created_at`) VALUES
('TRS-2212121', 1, 1, 144000, 200000, '2022-12-12 04:08:37'),
('TRS-2212141', 5, 1, 180000, 200000, '2022-12-14 03:39:39'),
('TRS-2212151', 5, 1, 360000, 400000, '2022-12-15 06:25:48'),
('TRS-2212161', 7, 1, 288000, 300000, '2022-12-16 03:10:44'),
('TRS-2301061', 1, 1, 600000, 700000, '2023-01-06 01:51:19'),
('TRS-2301291', 5, 1, 3000000, 4000000, '2023-01-29 12:59:29'),
('TRS-2302221', 5, 1, 5450000, 6000000, '2023-02-22 01:29:35'),
('TRS-2309301', 5, 1, 600000, 6000000, '2023-09-30 13:44:14'),
('TRS-2309302', 1, 1, 1680000, 4000000, '2023-09-30 16:55:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'nezza@gmail.com', 'lalalala', 'Kasir'),
(2, 'afifa', 'nanala', 'Administrator'),
(3, 'maulia', 'tatata', 'Kasir'),
(5, 'chelsi', 'papa', 'Administrator'),
(6, 'chelsi', 'nnnnnn', 'Kasir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(8) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `email_verified_at` varchar(20) NOT NULL,
  `password` int(20) NOT NULL,
  `remember_token` int(30) NOT NULL,
  `created_at` int(30) NOT NULL,
  `updated_at` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id_detail_penjualan`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id_detail_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
