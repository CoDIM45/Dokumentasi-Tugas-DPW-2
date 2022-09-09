-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2022 at 05:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `violet`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `artikel` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `id_user`, `nama`, `harga`, `berat`, `stok`, `deskripsi`, `created_at`, `updated_at`) VALUES
(9, NULL, 'Blueberry Fresh 125g', 47000, 125, 120, 'beli beli beli34', '2022-08-26 21:37:19', '2022-08-30 02:12:13'),
(12, NULL, 'The Design Thinker Book', 155000, 250, 40, 'beliiii', '2022-08-27 08:13:33', '2022-08-27 08:13:33'),
(15, NULL, 'BUAH ALPUKAT AVOCADO BUAH SEGAR BUAH BUAHAN', 47000, 125, 12, 'toll', '2022-08-30 18:13:45', '2022-08-30 18:13:45'),
(18, NULL, 'buah manggis', 40000, 300, 12, 'buah manggis segar', '2022-09-02 06:22:49', '2022-09-02 06:22:49'),
(19, NULL, 'BUAH blewah', 6000, 1000, 0, 'modal gak anjeng', '2022-09-02 07:45:51', '2022-09-02 07:45:51'),
(20, NULL, 'sepeda', 2000000, 2000, 150, 'sepeda anjay mabar', '2022-09-02 07:57:41', '2022-09-02 07:57:41'),
(21, NULL, 'design art', 35000, 0, 14, 'barang rare', '2022-09-02 07:58:26', '2022-09-02 07:58:26'),
(22, NULL, 'kulkas', 6000000, 30000, 20, 'kulkas dogface', '2022-09-02 08:00:04', '2022-09-02 08:00:04'),
(23, NULL, 'error', 15000, 1, 100, 'anjay mabar', '2022-09-02 08:00:37', '2022-09-02 08:00:37'),
(24, NULL, 'barang', 1000, 0, 21, 'anjay mabar', '2022-09-02 08:01:26', '2022-09-02 08:01:26'),
(26, NULL, 'baju kaos', 12000, 125, 100, 'KAOS OBLONG DEWASA\r\nBISA BAYAR DI TEMPAT BARANG SAMPAI BARU BAYAR COD\r\nSEDIA WARNA\r\n\r\nHITAM\r\nPUTIH\r\nNEVY\r\nMARON\r\nMISTY\r\n\r\nKAOS OBLONG INI BISA UNTUK PRIA DAN WANITA\r\nCOCOK UNTUK SEMUA KONDISI\r\nBAHAN LEMBUT NYAMAN DI PAKE TIDAK PANAS.\r\nPRODUK PT INDONESIA\r\n\r\nJAHITAN RAPI DAN BERGERANSI\r\n\r\n(UKURAN PANJANG LEBAR BAJU)\r\nS. LEBAR 43.PANJANG 63\r\nM. LEBAR 43.PANJANG 63\r\nL. LEBAR 48.PANJANG 65\r\nXL.LEBAR 50.PANJANG 68\r\nXXL. LEBAR 54.PANJANG 72\r\nXXXL. LEBAR 57.PANJANG 75\r\n\r\n#Kaos#baju#pakaianpria#kemeja#distro#kaospria#bajumurah#grosiran#bajukaos#sweater#grosirdistro#kaosmurah#kaosterbaru#bajulenganpendek#kaospendek#fashionpria#bajucowok#babajukaosoblong#kaoskaos#kaospolos#kaosdewasa#kaoskatun#kaosprenium#\r\n#kaos\r\n#kaospolos\r\n#baju\r\n#bajupolos\r\n#kaospendek\r\n#kaospanjang\r\n#kaoscewek\r\n#kaoscowok\r\n#kaoscasual\r\n#murah\r\n#reseller\r\n#distro\r\n#freeongkirseindonesia\r\n#bajuremaja\r\n#supplier\r\n#goodseller\r\n#ootd\r\n#populer', '2022-09-02 08:18:04', '2022-09-02 08:18:04'),
(27, NULL, 'hoodie', 35000, 125, 200, 'Jujutsu Kaisen x Thanksinsomnia Official Collaboration Batch 2\r\n\r\nThis product is the second collaboration item between the TV anime “Jujutsu Kaisen” and “Thanksinsomnia\".\r\n\r\nWe are making exclusive T-shirts featuring iconic designs with stunning images of “Team of Jujutsu High School” “Team Tokyo” “Sukuna & Villains\" and others!\r\n\r\n©️Gege Akutami/SHUEISHA\r\n\r\n\r\nMaterial Baby terry\r\n\r\n\r\n\r\n\r\n\r\n\r\nKebijakan Pengembalian Produk\r\n\r\n\r\n- Pastikan alamat sudah lengkap & No Hp aktif agar memudahkan kurir dalam pengiriman\r\n\r\n- Pengembalian barang atau dana dapat dilakukan sampai dengan 3 hari setelah diterima oleh pembeli dan jika dikarenakan kesalahan dari pihak kami;\r\n\r\nBarang tidak lengkap\r\n\r\nSalah size\r\n\r\nKecacatan pada produk.\r\n\r\nMohon untuk direkam saat membuka paket dari kami untuk menjadi bukti. Mohon maaf kami tidak menerima pengembalian jika kesalahan dari pihak pembeli, seperti salah memilih size atau warna atau tidak ada rekaman saat membuka paket.', '2022-09-02 08:19:02', '2022-09-02 08:19:02'),
(28, NULL, 'ps4 Slim 500gb', 2799999, 2000, 3, 'menjuallll', '2022-09-05 06:57:22', '2022-09-06 09:02:10'),
(29, NULL, NULL, 47000, 125, 12, 'blablalabla', '2022-09-05 21:30:17', '2022-09-05 21:30:17'),
(30, NULL, 'ps5', 6000000, 2000, 2, 'beli beli beli', '2022-09-06 08:30:51', '2022-09-06 08:30:51'),
(31, NULL, 'ps1', 47000, 125, 12, 'anamaamam', '2022-09-06 09:12:31', '2022-09-06 09:12:31'),
(32, 2, 'ps2', 47000, 2000, 12, 'bluueene', '2022-09-06 09:23:58', '2022-09-06 09:23:58'),
(33, 5, 'ps10', 100000000, 5000, 2, 'anjay MBR', '2022-09-06 10:57:25', '2022-09-06 10:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `foto`, `remember_token`, `created_at`, `updated_at`) VALUES
(15, 'dims', 'dims@gmail.com', 'dimas', '$2y$10$tX.mBEUiGTdOiuhWER.rHO/gSYQTFphthiPj6jpObK6gqjlvRKNde', NULL, NULL, '2022-09-09 07:22:58', '2022-09-09 07:22:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(16) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 2, '+62895372200063', '2022-09-03 20:11:47', '2022-09-03 20:11:47'),
(2, 8, '082157025971', '2022-09-06 07:41:11', '2022-09-06 07:41:11'),
(3, 5, '+62896532880912', '2022-09-06 08:02:15', '2022-09-06 08:02:15'),
(4, 8, '232343657809', '2022-09-06 08:16:01', '2022-09-06 08:16:01'),
(5, 9, '+62896532880912', '2022-09-07 10:30:48', '2022-09-07 10:30:48'),
(6, 10, '082157025971', '2022-09-09 02:50:38', '2022-09-09 02:50:38'),
(7, 11, '+62895372200063', '2022-09-09 03:04:30', '2022-09-09 03:04:30'),
(8, 12, '+62896532880912', '2022-09-09 03:05:12', '2022-09-09 03:05:12'),
(9, 13, '+62896532880912', '2022-09-09 03:05:44', '2022-09-09 03:05:44'),
(10, 14, '082157025971', '2022-09-09 03:12:39', '2022-09-09 03:12:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
