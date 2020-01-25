-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 25 Jan 2020 pada 12.33
-- Versi Server: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.2.24-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rstx`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kd_brg` varchar(7) NOT NULL,
  `nm_brg` varchar(20) NOT NULL,
  `harga` int(10) NOT NULL,
  `image` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kd_brg`, `nm_brg`, `harga`, `image`, `deskripsi`, `created_at`, `updated_at`) VALUES
('A001', 'Anggrek A', 88000, 'https://cdn.idntimes.com/content-images/community/2019/07/orchid-talk-web-41f40ec21da3f18020a1d8f5bc2d0e1f_600x400.jpg', 'ini adalah anggrek A', '2020-01-09 04:50:07', '2020-01-09 19:36:41'),
('A002', 'Anggrek B', 77000, 'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/ideafoto/original/7104_cari-tahu-cara-merawat-anggrek-dendrobium-dengan-benar-yuk.jpg', 'ini adalah anggrek B', '2020-01-09 05:39:34', '2020-01-09 05:39:34'),
('A003', 'Anggrek C', 88000, 'https://paktanidigital.com/artikel/wp-content/uploads/2019/10/5-Tips-Tanam-Anggrek-dengan-Sabut-Kelapa.jpg', 'ini adalah anggrek C', '2020-01-09 05:40:18', '2020-01-09 05:40:18'),
('A004', 'Anggrek D', 100000, 'https://bungaku.co.id/wp-content/uploads/2018/08/Tanaman-Anggrek-Cymbidium-Kuning-520x574.jpg', 'ini adalah anggrek D', '2020-01-09 05:40:50', '2020-01-09 05:40:50'),
('A005', 'Anggrek E', 650000, 'https://statik.tempo.co/data/2018/09/27/id_736604/736604_720.jpg', 'ini adalah anggrek E', '2020-01-09 19:24:48', '2020-01-09 19:24:48'),
('A006', 'Anggrek F', 77800, 'https://res.cloudinary.com/wegowordpress/image/upload/v1474742060/Screen-Shot-2013-11-20-at-4.47.42-PM-1_xxaxeq.png', 'ini adalah anggrek F', '2020-01-12 16:57:39', '2020-01-13 02:06:00'),
('A007', 'Anggrek G', 700000, 'https://cdn.idntimes.com/content-images/community/2019/07/orchid-talk-web-41f40ec21da3f18020a1d8f5bc2d0e1f_600x400.jpg', 'ini adalah anggrek G', '2020-01-13 07:04:03', '2020-01-13 07:04:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `djual`
--

CREATE TABLE `djual` (
  `NoTa` varchar(20) NOT NULL,
  `kd_brg` varchar(20) NOT NULL,
  `quantity` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `djual`
--

INSERT INTO `djual` (`NoTa`, `kd_brg`, `quantity`) VALUES
('20200108081439', 'a1', 1),
('20200108081525', 'a1', 1),
('20200108095118', 'anggrek2', 1),
('20200108095118', 'anggrek3', 1),
('20200108095642', 'a1', 1),
('20200108095642', 'anggrek2', 1),
('20200108101737', 'anggrek3', 2),
('20200108101737', 'anggrek2', 2),
('20200108101737', 'anggrek4', 1),
('20200108194107', 'anggrek3', 1),
('20200108194107', 'anggrek2', 1),
('20200109124220', '5', 1),
('20200109124220', '4', 1),
('20200111164110', 'A002', 1),
('20200111164110', 'A001', 1),
('20200111171106', 'A002', 1),
('20200111171106', 'A001', 1),
('20200111195401', 'A004', 1),
('20200111200310', 'A005', 1),
('20200111200310', 'A004', 1),
('20200113091031', 'A005', 1),
('20200113091031', 'A004', 1),
('20200113140551', 'A005', 1),
('20200113140551', 'A006', 1),
('20200113145329', 'A001', 1),
('20200113145329', 'A002', 1),
('20200113145544', 'A001', 1),
('20200113145544', 'A002', 1),
('20200113150957', 'A001', 1),
('20200113150957', 'A002', 1),
('20200119145739', 'A002', 1),
('20200119145739', 'A001', 1),
('20200120151733', 'A006', 1),
('20200120151733', 'A005', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jual`
--

CREATE TABLE `jual` (
  `NoTa` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `tanggal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jual`
--

INSERT INTO `jual` (`NoTa`, `email`, `alamat`, `tanggal`) VALUES
('20200108081439', 'asd@gmail.com', 'smg', '20200108'),
('20200108081525', 'asd@gmail.com', 'asddd', '20200108'),
('20200108095118', 'zxc', 'semarang', '20200108'),
('20200108095642', 'rstx32@gmail.com', 'semarang', '20200108'),
('20200108101737', 'rstx32@gmail.com', 'semarang', '20200108'),
('20200108194107', 'asd@gmail.com', 'semarang', '20200108'),
('20200109124219', 'asd@gmail.com', 'semarang', '20200109'),
('20200111164109', 'asdasd', 'udinus', '20200111'),
('20200111171105', 'asdasd', 'udinus', '20200111'),
('20200111195401', 'p', 'popooll', '20200111'),
('20200111200310', 'a', 'koploii', '20200111'),
('20200113091031', 'xtsr@gmail.com', 'smg', '20200113'),
('20200113140550', 'xtsr@gmail.com', 'smg', '20200113'),
('20200113145328', 'ian@gmail.com', 'selomasraya B40', '20200113'),
('20200113150957', 'daniel@gmail.com', 'udinus', '20200113'),
('20200119145739', 'restu@gmail.com', 'semarang', '20200119'),
('20200120151733', 'jacob@gmail.com', 'mvhjhvk', '20200120');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `email` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`email`, `username`, `password`, `updated_at`, `created_at`) VALUES
('hehe@gmail.com', 'hehe', 'hehe123', '2020-01-13 02:13:58', '2020-01-12 08:17:21'),
('restu@gmail.com', 'restu', '123', NULL, NULL),
('rstx@gmail.com', 'rstx', '123', '2020-01-13 02:04:51', '2020-01-09 15:56:07'),
('tamu@gmail.com', 'tamu', 'tamu', '2020-01-12 08:44:16', '2020-01-09 17:30:20'),
('xtsr@gmail.com', 'xtsr', '123', '2020-01-09 16:43:56', '2020-01-09 16:43:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'rstx32@gmail.com', NULL, '$2y$10$/L18o3xtao4lbvegBXtjPOw57Ez3zWYWfOw.3fZaIbRiNHuss9D1G', '7olgLZ2IUU9tKcmcRfeDpDVqbJhT7guTwQA0Isx7k7P9iNWvRy0i8uXW7Isy', '2020-01-12 09:41:07', '2020-01-12 09:41:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_brg`),
  ADD UNIQUE KEY `kd_brg` (`kd_brg`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
