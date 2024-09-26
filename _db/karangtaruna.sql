-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Agu 2023 pada 11.08
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karangtaruna`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggaran`
--

CREATE TABLE `anggaran` (
  `jumlah` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggaran`
--

INSERT INTO `anggaran` (`jumlah`) VALUES
(450000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas`
--

CREATE TABLE `kas` (
  `id` int(11) NOT NULL,
  `kode` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jumlah` int(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `status_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_detail`
--

CREATE TABLE `kas_detail` (
  `id` int(11) NOT NULL,
  `id_kas` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `jumlah` int(100) DEFAULT NULL,
  `status_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `status_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `nama`, `tanggal`, `deskripsi`, `image`, `status_delete`) VALUES
(1, 'Pendampingan Pemuda Pemudi Karang Taruna', '2022-06-08', 'Kompasiana adalah platform blog. Konten ini menjadi tanggung jawab bloger dan tidak mewakili pandangan redaksi Kompas. Pada hari Selasa(27/7), saya Tobias Martin Suena program studi Informatika Universitas Diponegoro telah melaksanakan pogram Kuliah Kerja Nyata (KKN) terkait pendampingan mengenai penggunaan sosial media yang bijak kepada anggota Karang Taruna Desa Sawahan Dukuh Platen. ', '1691917108532.jpg', 0),
(2, 'Karang Taruna Gelar BBKT Tingkat Provinsi di Batu Bedulang, Ini Rangkaian Acaranya', '2023-08-15', 'Kegiatan ini berlangsung selama 3 hari, dimulai sejak 13-15 Juni 2023 dengan banyak kegiatan sosial seperti Gotong Royong, pemberian paket sembako, dan lomba-lomba, donor darah, sunatan masal, pembagian kursi roda, pembagian peralatan sekolah, pasar murah, penaburan benih ikan, penanaman pohon, penyerahan Al-Quran serta kegiatan lain.', '1691917219821.jpg', 0),
(3, 'Gemar Membuat Konten, Karang Taruna Desa Kulurejo dan Mahasiswa KKN Undip Mempromosikan Karawitan', '2022-06-22', 'Promosi seni karawitan bisa dilakukan dengan membuat video yang menarik kemudian diunggah pada laman Youtube, TikTok , dan Instagram sehingga dapat dilihat semua orang. Mahasiswa Undip memberikan suggestions dan tata cara bagaimana membuat video yang baik dan benar supaya menarik minat penonton menggunakan smartphone atau gadget sehingga bisa dilakukan oleh semua anggota Karang Taruna. ', '1691917332504.jpg', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lupa_password`
--

CREATE TABLE `lupa_password` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `no_wa` varchar(100) NOT NULL,
  `status_kirim` tinyint(1) NOT NULL DEFAULT 0,
  `password_baru` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lupa_password`
--

INSERT INTO `lupa_password` (`id`, `id_user`, `tanggal`, `no_wa`, `status_kirim`, `password_baru`) VALUES
(1, 5, '2022-06-14', '098138764', 1, '1655217699'),
(2, 1, '2022-06-15', '081328331831', 1, '1655298459'),
(3, 1, '2022-06-15', '081328331831', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_pemasukan`
--

CREATE TABLE `m_pemasukan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `status_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_pemasukan`
--

INSERT INTO `m_pemasukan` (`id`, `nama`, `status_delete`) VALUES
(1, 'Kas', 0),
(2, 'Donatur', 0),
(3, 'Iuran Anggota', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_pengeluaran`
--

CREATE TABLE `m_pengeluaran` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `status_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `m_pengeluaran`
--

INSERT INTO `m_pengeluaran` (`id`, `nama`, `status_delete`) VALUES
(1, 'Kas', 0),
(2, 'ATK', 0),
(3, 'Kegiatan Remaja', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notif_pengumuman`
--

CREATE TABLE `notif_pengumuman` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_pengumuman` int(11) DEFAULT NULL,
  `telah_dibaca` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemasukan`
--

CREATE TABLE `pemasukan` (
  `id` int(11) NOT NULL,
  `idm_pemasukan` int(11) DEFAULT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jumlah` int(100) DEFAULT NULL,
  `operator` varchar(50) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemasukan`
--

INSERT INTO `pemasukan` (`id`, `idm_pemasukan`, `kode`, `tanggal`, `jumlah`, `operator`, `keterangan`, `status_delete`) VALUES
(1, 3, 'PMS/2308/0001', '2023-08-13', 500000, 'bendahara', 'iuran anggota', 0);

--
-- Trigger `pemasukan`
--
DELIMITER $$
CREATE TRIGGER `pemasukan_insert` AFTER INSERT ON `pemasukan` FOR EACH ROW BEGIN
    UPDATE anggaran SET jumlah = jumlah + NEW.jumlah;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `pemasukan_update` AFTER UPDATE ON `pemasukan` FOR EACH ROW BEGIN
	IF(NEW.status_delete = 0) THEN
		UPDATE anggaran SET jumlah = (jumlah - OLD.jumlah) + NEW.jumlah;
    ELSE
    	UPDATE anggaran SET jumlah = jumlah - NEW.jumlah;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `text` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `idm_pengeluaran` int(11) DEFAULT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jumlah` int(100) DEFAULT NULL,
  `operator` varchar(50) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `idm_pengeluaran`, `kode`, `tanggal`, `jumlah`, `operator`, `keterangan`, `status_delete`) VALUES
(1, 2, 'PNG/2308/0001', '2023-08-13', 50000, 'bendahara', 'beli kertas 1 rim', 0);

--
-- Trigger `pengeluaran`
--
DELIMITER $$
CREATE TRIGGER `pengeluaran_insert` AFTER INSERT ON `pengeluaran` FOR EACH ROW BEGIN
    UPDATE anggaran SET jumlah = jumlah - NEW.jumlah;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `pengeluaran_update` AFTER UPDATE ON `pengeluaran` FOR EACH ROW BEGIN
	IF(NEW.status_delete = 0) THEN
		UPDATE anggaran SET jumlah = (jumlah + OLD.jumlah) - NEW.jumlah;
    ELSE
    	UPDATE anggaran SET jumlah = jumlah + NEW.jumlah;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `waktu` time DEFAULT '00:00:00',
  `tempat` varchar(100) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `nama`, `waktu`, `tempat`, `keterangan`, `tanggal`, `created_at`, `status_delete`) VALUES
(1, 'Rapat Rutin', '12:00:00', 'Balai Remaja', 'Pembahasan Kegiatan', '2023-08-13', '2023-08-13 15:43:13', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id` int(11) NOT NULL,
  `id_unit` int(11) DEFAULT NULL,
  `nama_peminjam` varchar(100) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0 COMMENT '0: belum; 1: kembali',
  `status_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `merk` varchar(100) DEFAULT NULL,
  `stok` int(11) DEFAULT 0,
  `dipinjam` int(11) DEFAULT 0,
  `keterangan` text DEFAULT NULL,
  `status_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `unit`
--

INSERT INTO `unit` (`id`, `nama`, `merk`, `stok`, `dipinjam`, `keterangan`, `status_delete`) VALUES
(1, 'Kamera', 'Canon', 10, 0, 'kondisi baik', 0),
(2, 'Kursi', 'Standar', 150, 0, 'kursi lipat', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` int(11) NOT NULL,
  `nomor_wa` varchar(50) NOT NULL,
  `status_approve` tinyint(1) NOT NULL COMMENT '0:belum disetujui, 1: sudah disetujui',
  `status_delete` tinyint(1) DEFAULT 0,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `user_type`, `nomor_wa`, `status_approve`, `status_delete`, `image`) VALUES
(1, 'Ali Mochtar', 'admin', '$2y$10$eSvxyE3DurpUdC2zCu.0geO4.qUtPIW2nfhXyJewLyGwb1rlrt0w6', 1, '08179851011', 1, 0, '1691916046.png'),
(2, 'bendahara', 'bendahara', '$2y$10$6cDgbWeK61UPdGaGKPOshurTXfdpxWwy9Wdj1FBf35i5Bdq6LYukC', 2, '0987654321', 1, 0, '1691916010.png'),
(3, 'petugas', 'petugas', '$2y$10$1nn6xeMByGjPu0.L8S.xtuKDKcEHPf/YZK0lddj52H10nxVZANARu', 3, '09876543211', 1, 0, 'no-image.svg'),
(4, 'anggota', 'anggota', '$2y$10$1Gt9aYC3/Q/N1raXQE781e.Bn9tL3PGRoEh1qd.z.5IHy.zGFZspu', 4, '0192837465', 1, 0, 'no-image.svg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_type`
--

CREATE TABLE `user_type` (
  `id_user_type` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `status_delete` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_type`
--

INSERT INTO `user_type` (`id_user_type`, `nama`, `status_delete`) VALUES
(1, 'admin', 0),
(2, 'bendahara', 0),
(3, 'petugas', 0),
(4, 'anggota', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kas`
--
ALTER TABLE `kas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kas_detail`
--
ALTER TABLE `kas_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lupa_password`
--
ALTER TABLE `lupa_password`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_pemasukan`
--
ALTER TABLE `m_pemasukan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_pengeluaran`
--
ALTER TABLE `m_pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notif_pengumuman`
--
ALTER TABLE `notif_pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id_user_type`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kas`
--
ALTER TABLE `kas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kas_detail`
--
ALTER TABLE `kas_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `lupa_password`
--
ALTER TABLE `lupa_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `m_pemasukan`
--
ALTER TABLE `m_pemasukan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `m_pengeluaran`
--
ALTER TABLE `m_pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `notif_pengumuman`
--
ALTER TABLE `notif_pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pinjaman`
--
ALTER TABLE `pinjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id_user_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
