-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jan 2023 pada 11.01
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpf_kel2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barangs`
--

INSERT INTO `barangs` (`id`, `nama`, `kategori`, `stok`, `deskripsi`, `gambar`, `harga`, `created_at`, `updated_at`) VALUES
(21, 'Monstera', 'Indoor', 10, 'Monstera adalah Tanaman Indor yang saat ini sangat digemari oleh masyarakat', '1vgw0p0oh9ajjhNSQFGCUuPug2IEe5HxYR3hFFiG.jpg', 15000, '2023-01-15 02:04:17', '2023-01-15 02:04:17'),
(22, 'Peace Lily', 'Indoor', 10, 'Peace Lily adalah salah satu tanaman yang berasal dari hutan hujan tropis Kolombia dan Venezuela.', '4l84AOFp29Un2FandDivYriocJ5NWmt7WXG1fdhi.png', 20000, '2023-01-15 02:05:28', '2023-01-15 02:05:28'),
(23, 'Pink Anthurium', 'Indoor', 10, 'Tanaman Anthurium andraeanum ini menjadi salah satu tanaman hias yang populer karena bentuk bunganya yang indah.', '6lz0anY0cTzI8MpN9ytExVIuuNhL0WzAhrFsA7zT.png', 25000, '2023-01-15 02:06:46', '2023-01-15 02:06:46'),
(24, 'Spider Plant', 'Indoor', 20, 'Ini adalah tanaman indoor terbaik untuk menghilangkan zat beracun dari udara, terutama karbon monoksida.', 'JJQg24cHWvggatgl9MLeCoB6Z95Jwzf3yYuwus99.png', 10000, '2023-01-15 02:07:39', '2023-01-15 02:07:39'),
(25, 'ZZ plant', 'Indoor', 10, 'Perpaduan tampilan yang elegan dan perawatan yang mudah menjadikan tanaman ZZ salah satu tanaman hias paling populer.', 'iCOSvNrwmbUwp0nk6fnSawghTBZYVYF1LWO4GFxk.png', 15000, '2023-01-15 02:10:01', '2023-01-15 02:10:01'),
(26, 'Pilea Plant', 'Indoor', 15, 'Pilea Memiliki daun yang hijau mengkilap, bulat dan pipih, di ujung tangkai yang jenjang dan memiliki daya pikat tersendiri bagi para pecinta tanaman hias', 'BsoYcXaiVrstcj3leT9rX50diAfEvRSIFVFr4hs1.png', 15000, '2023-01-15 02:12:26', '2023-01-15 02:12:26'),
(27, 'Black Anthurium', 'Indoor', 20, 'Anthurium Black Beauty adalah salah satu jenis tanaman hias daun yang berasal dari keluarga araceae', 'kglkxTdUWUW8rPjm2SUmD3XHYQYS6R2Qfl6SgAHL.png', 20000, '2023-01-15 02:13:36', '2023-01-15 02:13:36'),
(28, 'Rubber Tree', 'Indoor', 10, 'Rubber Plant merupakan tanaman yang bisa tumbuh dalam ruangan atau dengan intensitas cahaya rendah', 'NK0cGZV2uxRwsYqHuYcoVt9jSJJyejKo8wlEdL6q.jpg', 20000, '2023-01-15 02:17:17', '2023-01-15 02:17:17'),
(29, 'Peperomia', 'Indoor', 10, 'Peperomia dapat memberikan manfaat memberikan manfaat kesehatan untuk gout, radang sendi dan kondisi peradangan lainnya.', 'SYQ11jE14VGCxe7LIsb3YYtekBRdFjQoy2z05ltf.png', 15000, '2023-01-15 02:19:56', '2023-01-15 02:19:56'),
(30, 'Aglonema', 'Indoor', 12, 'Manfaat pertama dari aglonema yakni tanaman hias ini mampu membuat suhu ruangan menjadi lembap', 'HmTLzrXxhq8Xqx2GfhT8v5B3R51VS3N5RlvSWI3T.png', 15000, '2023-01-15 02:22:53', '2023-01-15 02:22:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `brg_keluars`
--

CREATE TABLE `brg_keluars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_keluar` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tgl_keluar` date NOT NULL,
  `id_barangs` bigint(20) UNSIGNED NOT NULL,
  `id_customers` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `brg_keluars`
--

INSERT INTO `brg_keluars` (`id`, `jumlah_keluar`, `total_harga`, `tgl_keluar`, `id_barangs`, `id_customers`, `created_at`, `updated_at`) VALUES
(37, 1, 15000, '2013-06-12', 30, 13, '2023-01-15 02:27:46', '2023-01-15 02:27:46');

--
-- Trigger `brg_keluars`
--
DELIMITER $$
CREATE TRIGGER `stok_kurang` AFTER INSERT ON `brg_keluars` FOR EACH ROW BEGIN
	UPDATE barangs SET stok = stok - NEW.jumlah_keluar
    WHERE id = NEW.id_barangs;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `brg_masuks`
--

CREATE TABLE `brg_masuks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_masuk` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `id_barangs` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `brg_masuks`
--

INSERT INTO `brg_masuks` (`id`, `jumlah_masuk`, `total_harga`, `tgl_masuk`, `id_barangs`, `created_at`, `updated_at`) VALUES
(35, 2, 30000, '2023-01-15', 30, '2023-01-15 02:23:52', '2023-01-15 02:23:52');

--
-- Trigger `brg_masuks`
--
DELIMITER $$
CREATE TRIGGER `stok_tambah` AFTER INSERT ON `brg_masuks` FOR EACH ROW BEGIN
	UPDATE barangs SET stok = stok + NEW.jumlah_masuk
    WHERE id = NEW.id_barangs;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `nama_customer`, `jenis_kelamin`, `alamat`, `email`, `password`, `created_at`, `updated_at`) VALUES
(12, 'Ivonne Vanessa', 'Perempuan', 'Jl. Riau', 'ivonne@gmail.com', 'Ivonne123', '2023-01-15 01:44:18', '2023-01-15 01:44:18'),
(13, 'Dewie Erlinda', 'Perempuan', 'Jl. Berdikari', 'dewie@gmail.com', 'dee@gmail.com', '2023-01-15 01:44:58', '2023-01-15 01:44:58'),
(14, 'Khairi Annisa', 'Perempuan', 'Jl. Kartika Sari', 'nisa@gmail.com', 'nisa123', '2023-01-15 01:45:38', '2023-01-15 01:45:38'),
(15, 'Nadia Raysa', 'Perempuan', 'Jalan Sakura', 'nadia@gmail.com', 'nanad123', '2023-01-15 01:46:09', '2023-01-15 01:46:09'),
(16, 'Rizky Saputra', 'Laki-Laki', 'Jl. Budi', 'rizky@gmail.com', 'kiki123', '2023-01-15 01:46:42', '2023-01-15 01:46:42'),
(17, 'Fifky Mandala', 'Laki-Laki', 'Jl. Riau', 'figky@gmail.com', 'figky@gmail.com', '2023-01-15 01:47:28', '2023-01-15 01:47:28'),
(18, 'Melati Hayati', 'Perempuan', 'Jl. Budi', 'melati@gmail.com', 'mel123', '2023-01-15 01:48:02', '2023-01-15 01:48:02'),
(19, 'Nurul Wali', 'Perempuan', 'Jl. Limbungan', 'nurul@gmail.com', 'nurul123', '2023-01-15 01:48:49', '2023-01-15 01:48:49'),
(20, 'Suhartinita', 'Perempuan', 'Jl. Jambu', 'isa@gmail.com', 'isa123', '2023-01-15 02:55:07', '2023-01-15 02:55:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_10_154709_create_barangs_table', 1),
(6, '2023_01_10_154840_create_customers_table', 1),
(7, '2023_01_10_154940_create_brg_masuks_table', 1),
(8, '2023_01_10_154959_create_brg_keluars_table', 1);

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
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama_user`, `jenis_kelamin`, `alamat`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Elda Nandini', 'Perempuan', 'Jalan Sakura', 'admin', '123123', '2023-01-10 10:08:46', '2023-01-10 10:08:46'),
(2, 'Fransisko', 'Laki-Laki', 'Jalan Sekolah', 'admin', 'siskouwu', '2023-01-10 20:30:26', '2023-01-14 20:21:35');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `brg_keluars`
--
ALTER TABLE `brg_keluars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brg_keluars_id_barangs_foreign` (`id_barangs`),
  ADD KEY `brg_keluars_id_customers_foreign` (`id_customers`);

--
-- Indeks untuk tabel `brg_masuks`
--
ALTER TABLE `brg_masuks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brg_masuks_id_barangs_foreign` (`id_barangs`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `brg_keluars`
--
ALTER TABLE `brg_keluars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `brg_masuks`
--
ALTER TABLE `brg_masuks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `brg_keluars`
--
ALTER TABLE `brg_keluars`
  ADD CONSTRAINT `brg_keluars_id_barangs_foreign` FOREIGN KEY (`id_barangs`) REFERENCES `barangs` (`id`),
  ADD CONSTRAINT `brg_keluars_id_customers_foreign` FOREIGN KEY (`id_customers`) REFERENCES `customers` (`id`);

--
-- Ketidakleluasaan untuk tabel `brg_masuks`
--
ALTER TABLE `brg_masuks`
  ADD CONSTRAINT `brg_masuks_id_barangs_foreign` FOREIGN KEY (`id_barangs`) REFERENCES `barangs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
