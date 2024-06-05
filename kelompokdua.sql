-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jun 2024 pada 15.33
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
-- Database: `kelompokdua`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `arske`
--

CREATE TABLE `arske` (
  `id` int(5) NOT NULL,
  `nosurat` varchar(25) NOT NULL,
  `noklasi` varchar(25) NOT NULL,
  `ringkasan` text NOT NULL,
  `pengelolah` varchar(25) NOT NULL,
  `tglsurat` date NOT NULL,
  `kepada` varchar(25) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `arsma`
--

CREATE TABLE `arsma` (
  `id` int(11) NOT NULL,
  `nosurat` varchar(50) NOT NULL,
  `noklasi` varchar(50) NOT NULL,
  `tglsurat` date NOT NULL,
  `tglteri` date NOT NULL,
  `perihal` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `disposisi` text NOT NULL,
  `instansi` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kartukel`
--

CREATE TABLE `kartukel` (
  `id` int(11) NOT NULL,
  `no_kk` varchar(16) NOT NULL,
  `nama_kk` varchar(25) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `kelurahan` varchar(25) NOT NULL,
  `rt/rw` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `golongan` varchar(20) NOT NULL,
  `jabatan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penduduk`
--

CREATE TABLE `penduduk` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `no_kk` varchar(16) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `tempatla` varchar(25) NOT NULL,
  `tglah` date NOT NULL,
  `agama` varchar(20) NOT NULL,
  `pend` varchar(25) NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `rtw` varchar(10) NOT NULL,
  `status` varchar(25) NOT NULL,
  `tgl` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id` int(11) NOT NULL,
  `no_barang` varchar(40) NOT NULL,
  `nma_barang` varchar(25) NOT NULL,
  `jumlah` varchar(30) NOT NULL,
  `kondisi` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_domisili`
--

CREATE TABLE `tb_domisili` (
  `id` int(11) NOT NULL,
  `nosurat` varchar(40) NOT NULL,
  `nm_pej` varchar(40) NOT NULL,
  `jabatan` varchar(40) NOT NULL,
  `alamat` text NOT NULL,
  `nm_pen` varchar(40) NOT NULL,
  `tempat_lah` varchar(25) NOT NULL,
  `tg_lah` date NOT NULL,
  `jk` varchar(20) NOT NULL,
  `alamat_pen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_domisilii`
--

CREATE TABLE `tb_domisilii` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(60) NOT NULL,
  `nma_pej` varchar(25) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `nma_pen` varchar(25) NOT NULL,
  `jk` varchar(25) NOT NULL,
  `umur` varchar(20) NOT NULL,
  `ttl` varchar(50) NOT NULL,
  `usaha` varchar(50) NOT NULL,
  `tanggal` varchar(25) NOT NULL,
  `rt` varchar(12) NOT NULL,
  `alamat_pen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kerja`
--

CREATE TABLE `tb_kerja` (
  `id` int(11) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_lahir`
--

CREATE TABLE `tb_lahir` (
  `id` varchar(40) NOT NULL,
  `no_kk` varchar(55) NOT NULL,
  `nm_ayah` varchar(50) NOT NULL,
  `nm_ibu` varchar(50) NOT NULL,
  `nm_anak` varchar(50) NOT NULL,
  `jk` varchar(25) NOT NULL,
  `anak_ke` varchar(3) NOT NULL,
  `tmpt_lah` varchar(50) NOT NULL,
  `tgl_lah` date NOT NULL,
  `tahun` bigint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mampu`
--

CREATE TABLE `tb_mampu` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(60) NOT NULL,
  `nma_pej` varchar(25) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `nma_pen` varchar(25) NOT NULL,
  `ttl` varchar(50) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `tanggal` varchar(25) NOT NULL,
  `rt` varchar(12) NOT NULL,
  `alamat_pen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rtw`
--

CREATE TABLE `tb_rtw` (
  `id` int(11) NOT NULL,
  `rtw` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sertifikat`
--

CREATE TABLE `tb_sertifikat` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(60) NOT NULL,
  `nma_pej` varchar(25) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `nma_pen` varchar(25) NOT NULL,
  `umur` varchar(20) NOT NULL,
  `tanggal` varchar(25) NOT NULL,
  `rt` varchar(12) NOT NULL,
  `alamat_pen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_surkel`
--

CREATE TABLE `tb_surkel` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(60) NOT NULL,
  `perihal` varchar(25) NOT NULL,
  `tgl_surat` date NOT NULL,
  `nma_pej` varchar(25) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `isi` text NOT NULL,
  `tgl_kegiatan` varchar(25) NOT NULL,
  `waktu` varchar(20) NOT NULL,
  `lokasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_usaha`
--

CREATE TABLE `tb_usaha` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(60) NOT NULL,
  `nma_pej` varchar(25) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `nma_pen` varchar(25) NOT NULL,
  `umur` text NOT NULL,
  `jk` varchar(50) NOT NULL,
  `usaha` varchar(50) NOT NULL,
  `tanggal` varchar(25) NOT NULL,
  `rt` varchar(12) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `alamat_pen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(13, 'Nuh Panji Alyansyah', 'nuhpanjialyansyah@gmail.com', 'default.jpg', '$2y$10$LewN3s/OpWSgMZC8./dpmuOkvp2zFm2MaxZODpKm0BqPRx/UoBGii', 1, 1, 1717522169),
(14, 'admin', 'admin@admin.com', 'default.jpg', '$2y$10$5A2u5DuiWx/.umhaP5ChqeOE667LxTQg0iCyUt2LxIo.eGgatSBt.', 1, 1, 1717522269);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(27, 1, 5),
(28, 1, 8),
(30, 1, 9),
(39, 1, 2),
(45, 3, 2),
(46, 3, 4),
(47, 3, 3),
(48, 1, 11),
(49, 2, 11),
(50, 3, 11),
(54, 1, 3),
(56, 1, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `name`, `menu`) VALUES
(1, 'Administrator', 'Admin'),
(2, 'Master Data', 'Master'),
(3, 'Master Admnistrasi Penduduk', 'Kependudukan'),
(4, 'Grafik Statistik', 'Grafik'),
(5, 'Setting Menu', 'Menu'),
(6, 'Inventori Barang', 'Inventory'),
(11, 'Setting Account', 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(4, 5, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 0),
(5, 5, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 0),
(9, 5, 'Management Role Access', 'admin/role', 'fa fa-fw fa-user-tie', 0),
(10, 0, 'Arsip Surat Masuk', 'arsip', 'fas fa-fw fa-folder', 1),
(11, 0, 'Arsip Surat Keluar', 'arsip/suratkel', 'fas fa-fw fa-folder', 1),
(12, 5, 'Management Pengguna', 'menu/tampiluser', 'fas fa-fw fa-users', 1),
(13, 2, 'Master Kartu Keluarga', 'master', 'fas fa-fw fa-book', 1),
(14, 2, 'Master Data Penduduk', 'master/penduduk', 'fas fa-fw fa-users', 1),
(15, 2, 'Master Data Pegawai', 'master/pegawai', 'fas fa-fw fa-user', 1),
(16, 3, 'Pembuatan Surat', 'layanan', 'fas fa-fw fa-file', 0),
(17, 11, 'ProfilKu', 'user', 'fas fa-fw fa-user', 1),
(18, 11, 'Ubah Profil', 'user/edit', 'fas fa-fw fa-user', 1),
(19, 11, 'Ubah Password', 'user/changepassword', 'fas fa-fw fa-lock', 1),
(20, 6, 'Data Barang', 'inventory', 'fas fa-fw fa-folder', 1),
(21, 6, 'Tambah Barang', 'inventory/add', 'fas fa-fw fa-plus', 1),
(22, 3, 'Update Status Penduduk', 'kependudukan/update', 'fas fa-fw fa-edit', 1),
(23, 3, 'Master Data Kematian', 'kependudukan/mati', 'fas fa-fw fa-folder', 1),
(24, 3, 'Master Data Pindah', 'kependudukan/pindah', 'fas fa-fw fa-folder', 1),
(25, 2, 'Master Data Pekerjaan', 'master/kerja', 'fas fa-fw fa-folder', 1),
(26, 2, 'Master Data RT/RW', 'master/rtw', 'fas fa-fw fa-folder-open', 1),
(27, 3, 'Master Data Kelahiran', 'kependudukan/lahir', 'fas fa-fw fa-folder', 1),
(28, 1, 'Statistik Status Pend.', 'admin/status', 'fas fa-fw fa-folder', 1),
(29, 1, 'Statistik Kelahiran', 'admin/lahir', 'fas fa-fw fa-home', 1),
(30, 4, 'Grafik Status Penduduk', 'grafik', 'fas fa-fw fa-folder', 1),
(31, 4, 'Grafik Kelahiran Penduduk', 'grafik/lahir', 'fas fa-fw fa-folder', 1),
(32, 4, 'Grafik Statistik Agama', 'grafik/agama', 'fas fa-fw fa-folder', 1),
(33, 4, 'Grafik Statistik Pekerjaan', 'grafik/kerja', 'fas fa-fw fa-folder', 1),
(34, 4, 'Grafik Statistik Pendidikan', 'grafik/pendidikan', 'fas fa-fw fa-folder', 1),
(35, 1, 'Statistik Per-Kategori', 'admin/stat_item', 'fas fa-fw fa-home', 1),
(36, 2, 'Master Data Domisili', 'master/domisili', 'fas fa-fw fa-folder', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `arske`
--
ALTER TABLE `arske`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `arsma`
--
ALTER TABLE `arsma`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kartukel`
--
ALTER TABLE `kartukel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_domisili`
--
ALTER TABLE `tb_domisili`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_domisilii`
--
ALTER TABLE `tb_domisilii`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_kerja`
--
ALTER TABLE `tb_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_lahir`
--
ALTER TABLE `tb_lahir`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_mampu`
--
ALTER TABLE `tb_mampu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_rtw`
--
ALTER TABLE `tb_rtw`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_sertifikat`
--
ALTER TABLE `tb_sertifikat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_surkel`
--
ALTER TABLE `tb_surkel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_usaha`
--
ALTER TABLE `tb_usaha`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `arske`
--
ALTER TABLE `arske`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `arsma`
--
ALTER TABLE `arsma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `kartukel`
--
ALTER TABLE `kartukel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `penduduk`
--
ALTER TABLE `penduduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_domisili`
--
ALTER TABLE `tb_domisili`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_domisilii`
--
ALTER TABLE `tb_domisilii`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_kerja`
--
ALTER TABLE `tb_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_mampu`
--
ALTER TABLE `tb_mampu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_rtw`
--
ALTER TABLE `tb_rtw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_sertifikat`
--
ALTER TABLE `tb_sertifikat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_surkel`
--
ALTER TABLE `tb_surkel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_usaha`
--
ALTER TABLE `tb_usaha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
