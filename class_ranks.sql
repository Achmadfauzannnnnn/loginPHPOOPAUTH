-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Agu 2023 pada 05.36
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `class_ranks`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `score` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `scores`
--

INSERT INTO `scores` (`id`, `student_id`, `score`) VALUES
(5, 1, 99),
(6, 2, 90);

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `name`) VALUES
(1, 'achmad fauzan'),
(2, 'Abdurrahman faiz'),
(8, 'Adystya Anandita');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`) VALUES
(1, 'fzn', 'fzn', 'fzn'),
(2, '', '', ''),
(3, 'adui', 'adui', 'adui'),
(4, 'achmad fauzan', 'fauzan', 'fzn'),
(5, 'ojan', 'ojan', 'ojan'),
(7, 'dlan', 'dlan', '$2y$10$WmnqZeYCfAjwaMN.qEFux.fnDlbtQK1EEhIFgkocNcH3eZXtoGK9m'),
(8, 'ppp', 'ppp', '$2y$10$TWoCtkYvFcP6x2ufgWP5beRRJ0OxFHNAJkdNcs2Kj2X32f2vuwKl2'),
(9, 'siapa', 'siapa', '$2y$10$jGJMYDzLYgbTtKt6b5m1SePtX7lfGoxu3yF91p6aywBNTAfzuftNu'),
(11, 'knp', 'knp', '$2y$10$1/AwOdYFvuqBwS3XSEmLBu3wacK90H8MqA9B1pGIzuofBWkrGqiJe'),
(12, 'oi', 'oi', '$2y$10$AG8fC.YgSO5HJOS8wpuwWOEWzsRa4QgTrErJGG6QD.0rU4PM/WAce'),
(14, 'w', 'w', '$2y$10$g78v5xgsu.l2zbO9wrre1OXgOud8GAXSO2x2tsOfCJ7wQyLVdmouG'),
(15, 'ana', 'ana', '$2y$10$6Z0vAepzMMgCROmzVUz/gOnm9kCXlKmjcp.79opd1kIk50DGFtQ4O'),
(17, 'v', 'v', '$2y$10$XbYxnaQMlmslzy3UxGNbcuB0paZf2GxfyafRZQdBQbEpwjdMmWeAK'),
(19, 'g', 'g', '$2y$10$8KcxybyHMihoEdiElR6Yie8b2LRLFTkwGUWy5rz2OJUiZrtsbH1iq'),
(20, 'r', 'r', '$2y$10$8pRiIuPjZ7zc92/bx8SMuOp61HjyE90T/upF1zxNfzVSA7v9CLANW');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
