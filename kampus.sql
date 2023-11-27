-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Nov 2023 pada 12.50
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kampus`
--

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
-- Struktur dari tabel `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mahasiswas`
--

INSERT INTO `mahasiswas` (`id`, `name`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Josiane Lakin IV', '78685210484', 'Siapapun dirimu, jadilah yang terbaik.', '2023-11-27 04:05:49', '2023-11-27 04:05:49'),
(2, 'Jamel Schneider', '37611934574', 'Teruskan. Jadilah yang terbaik', '2023-11-27 04:05:49', '2023-11-27 04:05:49'),
(3, 'Ms. Concepcion Shields', '92153558374', 'Keberanian menjadi temanku', '2023-11-27 04:05:49', '2023-11-27 04:05:49'),
(4, 'Dr. Alberto Ritchie', '15878185173', 'Tentukan prioritas Anda dan fokuslah padanya', '2023-11-27 04:05:49', '2023-11-27 04:05:49'),
(5, 'Prof. Clemens Windler MD', '172365834723', 'Berjuang sampai napas terakhir', '2023-11-27 04:05:49', '2023-11-27 04:05:49'),
(6, 'Vincent Corkery III', '89451173463', 'Fokus pada perjalanan, bukan tujuan', '2023-11-27 04:05:49', '2023-11-27 04:05:49'),
(7, 'Prof. Dee Kunze', '57530846827', 'Keberanian menjadi temanku.', '2023-11-27 04:05:49', '2023-11-27 04:05:49'),
(8, 'Jeremie Ortiz', '40835738462', 'Teruskan. Jadilah yang terbaik.', '2023-11-27 04:05:49', '2023-11-27 04:05:49'),
(9, 'Osbaldo Farrell', '416673788223', 'Keberanian menjadi temanku.', '2023-11-27 04:05:49', '2023-11-27 04:05:49'),
(10, 'Mr. Melvin Lynch IV', '57266u834732', 'Berjuang sampai napas terakhir', '2023-11-27 04:05:49', '2023-11-27 04:05:49'),
(11, 'Janiya Haley', '95086417723', 'Tentukan prioritas Anda dan fokuslah padanya', '2023-11-27 04:05:49', '2023-11-27 04:05:49'),
(12, 'Lucious Considine', '87077346742', 'Dengan percaya diri, Anda telah menang sebelum memulai.', '2023-11-27 04:05:50', '2023-11-27 04:05:50'),
(13, 'Miss Barbara Becker Jr.', '5983988284', 'Teruskan. Jadilah yang terbaik.', '2023-11-27 04:05:50', '2023-11-27 04:05:50'),
(14, 'Hailie Balistreri', '91509828348', 'Siapapun dirimu, jadilah yang terbaik.', '2023-11-27 04:05:50', '2023-11-27 04:05:50'),
(15, 'Lenny Cormier', '79155817347', 'Keberanian menjadi temanku', '2023-11-27 04:05:50', '2023-11-27 04:05:50'),
(16, 'Michel Jaskolski', '371352835738', 'Tentukan prioritas Anda dan fokuslah padanya', '2023-11-27 04:05:50', '2023-11-27 04:05:50'),
(17, 'Marlin Oberbrunner', '585628325384', 'Peluang tidak terjadi, kamu yang harus membuatnya', '2023-11-27 04:05:50', '2023-11-27 04:05:50'),
(18, 'Mr. Rogelio Runte III', '9553247346274', 'Berjuang sampai napas terakhir.', '2023-11-27 04:05:50', '2023-11-27 04:05:50'),
(19, 'Tommie Carroll', '5825639738343', 'Fokus pada perjalanan, bukan tujuan.', '2023-11-27 04:05:50', '2023-11-27 04:05:50'),
(20, 'Mrs. Sabina Wisozk', '411672348022', 'Keberanian menjadi temanku.', '2023-11-27 04:05:50', '2023-11-27 04:05:50');

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
(5, '2023_11_27_104902_create_mahasiswas_table', 1);

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mahasiswas`
--
ALTER TABLE `mahasiswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
