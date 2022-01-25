-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.21-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_ci4
DROP DATABASE IF EXISTS `db_ci4`;
CREATE DATABASE IF NOT EXISTS `db_ci4` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_ci4`;

-- Dumping structure for table db_ci4.komik
DROP TABLE IF EXISTS `komik`;
CREATE TABLE IF NOT EXISTS `komik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_ci4.komik: ~3 rows (approximately)
/*!40000 ALTER TABLE `komik` DISABLE KEYS */;
INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
	(1, 'Naruto', 'naruto', 'Masashi Khisimoto', 'Gramedia', 'naruto.jpg', NULL, NULL),
	(2, 'One Peice', 'one-piece', 'Ellchiro Oda', 'Gramedia', 'onepiece.jpg', NULL, NULL),
	(3, 'Coba 23', 'coba-23', 'Farhan', 'Gramedia', 'default.jpg', '2021-09-17 04:45:51', '2021-09-17 04:45:51');
/*!40000 ALTER TABLE `komik` ENABLE KEYS */;

-- Dumping structure for table db_ci4.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table db_ci4.migrations: ~0 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
	(1, '2021-09-17-065226', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1631872043, 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table db_ci4.orang
DROP TABLE IF EXISTS `orang`;
CREATE TABLE IF NOT EXISTS `orang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- Dumping data for table db_ci4.orang: ~100 rows (approximately)
/*!40000 ALTER TABLE `orang` DISABLE KEYS */;
INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
	(1, 'Bakianto Ivan Utama', 'Psr. Bappenas No. 29, Blitar 89735, Maluku', '2017-10-22 06:05:59', '2021-09-17 05:33:48'),
	(2, 'Agnes Permata S.IP', 'Jr. Pacuan Kuda No. 339, Banda Aceh 97322, Jabar', '2007-05-08 00:39:28', '2021-09-17 05:33:48'),
	(3, 'Teguh Uwais', 'Jln. Panjaitan No. 285, Langsa 27959, Sumsel', '2004-10-24 03:44:32', '2021-09-17 05:33:48'),
	(4, 'Leo Hutapea S.I.Kom', 'Ki. Suprapto No. 629, Banjarbaru 14517, Sulbar', '2009-03-15 03:30:21', '2021-09-17 05:33:48'),
	(5, 'Fathonah Mulyani', 'Ds. Bazuka Raya No. 113, Banjarmasin 17551, Sulsel', '1970-04-16 00:32:11', '2021-09-17 05:33:48'),
	(6, 'Harsanto Halim', 'Ki. Ki Hajar Dewantara No. 524, Yogyakarta 35916, Sumut', '2001-07-25 01:28:03', '2021-09-17 05:33:48'),
	(7, 'Edi Rahman Sihombing', 'Gg. Baan No. 332, Tomohon 27094, Jabar', '1993-08-24 23:50:17', '2021-09-17 05:33:48'),
	(8, 'Kani Andriani S.Sos', 'Jln. Otto No. 178, Pangkal Pinang 80551, Riau', '2019-04-27 12:41:44', '2021-09-17 05:33:48'),
	(9, 'Fathonah Wastuti M.Farm', 'Psr. Bayan No. 531, Parepare 73250, Kalbar', '1981-04-25 02:44:17', '2021-09-17 05:33:48'),
	(10, 'Puspa Hariyah', 'Jr. Warga No. 789, Sukabumi 41276, Jambi', '2003-03-27 22:18:23', '2021-09-17 05:33:48'),
	(11, 'Karen Kuswandari', 'Jln. Bak Air No. 617, Pekanbaru 60438, Sulsel', '1995-09-15 14:21:49', '2021-09-17 05:33:48'),
	(12, 'Makara Adika Thamrin', 'Ki. Dago No. 948, Serang 89386, Jabar', '2017-09-11 15:09:09', '2021-09-17 05:33:48'),
	(13, 'Zizi Endah Fujiati M.Kom.', 'Gg. S. Parman No. 16, Salatiga 68899, Bengkulu', '2016-02-02 00:31:07', '2021-09-17 05:33:48'),
	(14, 'Nalar Enteng Wacana S.Sos', 'Dk. Bakit  No. 66, Malang 22775, Sulsel', '2020-04-06 02:48:13', '2021-09-17 05:33:48'),
	(15, 'Rahmi Oni Fujiati', 'Kpg. Mahakam No. 451, Gunungsitoli 35617, NTB', '2010-03-21 01:41:54', '2021-09-17 05:33:48'),
	(16, 'Puji Usyi Astuti', 'Jln. Gajah Mada No. 213, Bontang 78747, Bali', '2010-12-14 12:19:59', '2021-09-17 05:33:48'),
	(17, 'Kajen Winarno', 'Jln. Industri No. 626, Makassar 77055, Sulbar', '1990-02-25 07:02:45', '2021-09-17 05:33:48'),
	(18, 'Vanya Anggraini', 'Ki. Sutarto No. 779, Singkawang 60345, Kaltim', '1995-11-03 23:18:05', '2021-09-17 05:33:48'),
	(19, 'Asirwada Karta Uwais', 'Jln. Wahid Hasyim No. 901, Administrasi Jakarta Timur 53420, Aceh', '2003-09-07 07:09:59', '2021-09-17 05:33:48'),
	(20, 'Cengkir Hutagalung', 'Jln. Ciumbuleuit No. 924, Sabang 75520, Pabar', '1998-04-28 03:29:55', '2021-09-17 05:33:48'),
	(21, 'Jaka Thamrin', 'Kpg. Baan No. 410, Cilegon 59998, Sumut', '2019-01-07 02:13:45', '2021-09-17 05:33:48'),
	(22, 'Tari Rahimah', 'Kpg. Halim No. 792, Tomohon 94352, NTB', '1992-03-25 05:24:57', '2021-09-17 05:33:48'),
	(23, 'Vicky Palastri S.H.', 'Ds. Suryo No. 208, Medan 28430, Bali', '2019-11-03 01:42:13', '2021-09-17 05:33:48'),
	(24, 'Carla Yulia Mardhiyah S.E.', 'Kpg. Padma No. 118, Banda Aceh 51577, Kepri', '1972-11-30 20:55:59', '2021-09-17 05:33:48'),
	(25, 'Unjani Haryanti', 'Jr. Eka No. 703, Cirebon 99834, NTB', '1998-02-13 19:44:45', '2021-09-17 05:33:48'),
	(26, 'Ganep Budiyanto S.Psi', 'Gg. Ters. Buah Batu No. 931, Balikpapan 17515, DKI', '2011-07-03 09:32:26', '2021-09-17 05:33:48'),
	(27, 'Daniswara Latupono', 'Dk. Lada No. 165, Binjai 70210, Kaltim', '1976-12-07 18:26:48', '2021-09-17 05:33:48'),
	(28, 'Surya Sitompul', 'Kpg. Krakatau No. 158, Jambi 62164, Riau', '1976-01-31 01:21:42', '2021-09-17 05:33:48'),
	(29, 'Bahuwarna Nugroho S.Farm', 'Dk. Otto No. 541, Administrasi Jakarta Utara 45038, Sulut', '2000-03-13 22:37:00', '2021-09-17 05:33:48'),
	(30, 'Puput Amelia Kusmawati', 'Ki. Cikapayang No. 146, Singkawang 60209, Papua', '2002-11-21 01:03:26', '2021-09-17 05:33:48'),
	(31, 'Harto Jaeman Waskita', 'Ds. Kiaracondong No. 374, Bandar Lampung 82548, Sumut', '2009-02-07 08:19:55', '2021-09-17 05:33:48'),
	(32, 'Dina Melani', 'Jr. Abdul Muis No. 423, Tebing Tinggi 85131, Malut', '1984-05-29 11:27:12', '2021-09-17 05:33:48'),
	(33, 'Jamal Ramadan', 'Jln. Pacuan Kuda No. 718, Prabumulih 34181, Kalsel', '1988-01-24 08:37:52', '2021-09-17 05:33:48'),
	(34, 'Anita Anggraini', 'Jln. Baung No. 866, Cilegon 60756, Kalteng', '1997-12-10 15:05:44', '2021-09-17 05:33:48'),
	(35, 'Among Maulana', 'Gg. Basudewo No. 53, Bandung 58043, Sultra', '2011-11-08 05:04:34', '2021-09-17 05:33:48'),
	(36, 'Gasti Novitasari S.Sos', 'Gg. Basuki No. 438, Manado 83654, Kepri', '2016-10-07 02:52:12', '2021-09-17 05:33:48'),
	(37, 'Banawa Waskita S.Pt', 'Ds. Kebonjati No. 78, Solok 51474, Sulbar', '1974-10-02 13:56:39', '2021-09-17 05:33:48'),
	(38, 'Wira Utama S.Ked', 'Dk. Bambon No. 359, Langsa 68453, Jatim', '2010-09-27 12:35:51', '2021-09-17 05:33:48'),
	(39, 'Laras Usamah', 'Kpg. Sudirman No. 562, Bekasi 81337, Kaltara', '2005-12-11 00:07:47', '2021-09-17 05:33:48'),
	(40, 'Darmana Manullang', 'Ds. Samanhudi No. 574, Tanjung Pinang 86162, Kalteng', '2011-06-21 03:05:34', '2021-09-17 05:33:48'),
	(41, 'Vivi Zelda Astuti', 'Jr. Banceng Pondok No. 382, Jayapura 42343, Pabar', '2007-10-23 15:15:27', '2021-09-17 05:33:48'),
	(42, 'Dina Hani Oktaviani', 'Jr. Surapati No. 327, Sabang 34212, Banten', '2003-01-04 10:44:35', '2021-09-17 05:33:48'),
	(43, 'Kani Mutia Prastuti S.T.', 'Psr. Suniaraja No. 680, Makassar 97182, Sumsel', '1971-09-18 16:29:31', '2021-09-17 05:33:48'),
	(44, 'Bakiono Wijaya', 'Dk. Moch. Yamin No. 872, Manado 80409, Sulut', '2018-09-19 03:26:34', '2021-09-17 05:33:48'),
	(45, 'Cinta Handayani', 'Gg. Bakit  No. 203, Binjai 27865, Kaltara', '2015-08-18 01:50:47', '2021-09-17 05:33:48'),
	(46, 'Among Hardiansyah S.Psi', 'Kpg. Ki Hajar Dewantara No. 975, Lhokseumawe 67444, Babel', '2021-06-29 19:18:07', '2021-09-17 05:33:48'),
	(47, 'Ami Kuswandari M.Kom.', 'Psr. Dipatiukur No. 450, Tarakan 63860, Jabar', '2012-06-15 05:21:57', '2021-09-17 05:33:48'),
	(48, 'Diana Agustina S.Ked', 'Psr. Suniaraja No. 635, Bima 59049, Papua', '1974-09-07 16:09:40', '2021-09-17 05:33:48'),
	(49, 'Banawa Niyaga Rajasa', 'Jr. Dr. Junjunan No. 554, Ternate 74373, Malut', '1973-02-24 22:15:32', '2021-09-17 05:33:48'),
	(50, 'Sabri Chandra Kurniawan M.TI.', 'Ds. Yohanes No. 931, Malang 84812, Bengkulu', '2012-03-09 22:52:55', '2021-09-17 05:33:48'),
	(51, 'Faizah Sudiati', 'Kpg. Madrasah No. 822, Administrasi Jakarta Pusat 79322, Sumut', '2003-06-16 11:50:36', '2021-09-17 05:33:48'),
	(52, 'Simon Ibrahim Sihombing M.Farm', 'Gg. Bara No. 130, Padangsidempuan 64342, Gorontalo', '1993-02-20 08:33:25', '2021-09-17 05:33:48'),
	(53, 'Raditya Kuswoyo', 'Jln. Sentot Alibasa No. 430, Pagar Alam 56050, Sulbar', '1996-07-01 23:29:57', '2021-09-17 05:33:48'),
	(54, 'Ina Gina Riyanti M.Pd', 'Jr. Yos Sudarso No. 133, Magelang 58183, Papua', '1992-07-02 18:57:19', '2021-09-17 05:33:48'),
	(55, 'Najib Iswahyudi', 'Gg. Jambu No. 804, Banda Aceh 92008, Banten', '2018-09-22 06:49:36', '2021-09-17 05:33:48'),
	(56, 'Raisa Wijayanti', 'Gg. Baung No. 937, Depok 37613, Riau', '2006-08-18 03:15:08', '2021-09-17 05:33:48'),
	(57, 'Luhung Waluyo', 'Jr. Sutarto No. 414, Sibolga 62947, Kepri', '2004-10-09 09:06:13', '2021-09-17 05:33:48'),
	(58, 'Janet Laksita', 'Jln. Orang No. 288, Denpasar 48656, Sulut', '2015-04-04 19:26:08', '2021-09-17 05:33:48'),
	(59, 'Eka Yulianti M.Kom.', 'Psr. Ters. Jakarta No. 661, Serang 33744, Kaltara', '1991-10-09 19:51:55', '2021-09-17 05:33:48'),
	(60, 'Mutia Yuliarti', 'Ds. Surapati No. 874, Madiun 88147, NTB', '2011-02-04 01:31:15', '2021-09-17 05:33:48'),
	(61, 'Humaira Puspasari', 'Ki. Lumban Tobing No. 229, Tanjung Pinang 11029, Papua', '1987-11-11 20:23:39', '2021-09-17 05:33:48'),
	(62, 'Mila Rahayu', 'Ds. Elang No. 165, Kediri 83492, Malut', '1995-01-29 03:06:08', '2021-09-17 05:33:48'),
	(63, 'Tiara Mulyani', 'Gg. Honggowongso No. 509, Tanjung Pinang 78032, Kalbar', '1998-09-02 22:06:57', '2021-09-17 05:33:48'),
	(64, 'Warsita Ardianto', 'Gg. Sukabumi No. 312, Surakarta 28955, Lampung', '1971-04-22 19:41:03', '2021-09-17 05:33:48'),
	(65, 'Ifa Ajeng Hasanah', 'Psr. Kalimantan No. 986, Jambi 47986, Sulut', '2015-06-15 21:40:43', '2021-09-17 05:33:48'),
	(66, 'Kajen Marbun', 'Jr. Panjaitan No. 783, Palangka Raya 78509, Lampung', '2004-08-06 05:54:32', '2021-09-17 05:33:48'),
	(67, 'Ina Puspasari', 'Ki. Aceh No. 950, Salatiga 16978, Bali', '1997-02-13 18:36:00', '2021-09-17 05:33:48'),
	(68, 'Hasim Umar Firmansyah', 'Dk. Basmol Raya No. 270, Lubuklinggau 71403, Sulbar', '2005-02-18 20:21:55', '2021-09-17 05:33:48'),
	(69, 'Mulya Winarno', 'Kpg. Bappenas No. 702, Pekalongan 64583, Jateng', '2005-05-23 11:09:56', '2021-09-17 05:33:48'),
	(70, 'Darimin Kuswoyo M.M.', 'Jr. Sunaryo No. 918, Tegal 92797, Kalteng', '2002-07-09 04:47:19', '2021-09-17 05:33:48'),
	(71, 'Rangga Simanjuntak', 'Psr. Bakaru No. 131, Banjarmasin 17080, Riau', '1981-10-29 08:31:26', '2021-09-17 05:33:48'),
	(72, 'Gabriella Wulandari', 'Dk. Banda No. 243, Pangkal Pinang 88994, Sultra', '1976-09-28 22:22:27', '2021-09-17 05:33:48'),
	(73, 'Rahayu Aryani', 'Psr. Jagakarsa No. 259, Tebing Tinggi 20920, NTT', '1998-04-05 23:39:17', '2021-09-17 05:33:48'),
	(74, 'Hasim Cawuk Budiman', 'Jr. Adisucipto No. 901, Bontang 82500, Pabar', '1983-02-13 21:23:00', '2021-09-17 05:33:48'),
	(75, 'Jelita Sarah Padmasari S.Farm', 'Gg. Lada No. 928, Pasuruan 79301, Lampung', '2010-04-29 11:02:54', '2021-09-17 05:33:48'),
	(76, 'Raditya Maheswara', 'Dk. Dago No. 755, Administrasi Jakarta Barat 93851, Babel', '1976-01-20 11:34:04', '2021-09-17 05:33:48'),
	(77, 'Prabawa Bagya Prabowo S.Psi', 'Dk. Otista No. 320, Kediri 83247, Aceh', '1996-12-27 09:11:58', '2021-09-17 05:33:48'),
	(78, 'Hilda Yuliana Utami', 'Ds. Agus Salim No. 750, Banjar 75227, Sulut', '1972-06-07 02:06:39', '2021-09-17 05:33:48'),
	(79, 'Olivia Widiastuti', 'Kpg. Warga No. 991, Singkawang 50012, Malut', '2001-05-21 17:24:16', '2021-09-17 05:33:48'),
	(80, 'Mariadi Balangga Hidayat', 'Kpg. Banda No. 664, Batu 10795, Bengkulu', '1999-09-08 14:54:59', '2021-09-17 05:33:48'),
	(81, 'Endah Padmi Purnawati', 'Ki. Bambu No. 312, Tangerang Selatan 14521, Kalsel', '1971-02-03 18:06:22', '2021-09-17 05:33:48'),
	(82, 'Vanesa Silvia Maryati', 'Jln. Pacuan Kuda No. 234, Tanjung Pinang 72691, Jambi', '1975-02-25 03:04:44', '2021-09-17 05:33:48'),
	(83, 'Anita Halimah', 'Ds. Jend. A. Yani No. 691, Sungai Penuh 28721, Gorontalo', '1984-06-22 10:30:31', '2021-09-17 05:33:48'),
	(84, 'Marwata Sinaga', 'Dk. Taman No. 470, Sorong 62317, Lampung', '1998-11-10 19:55:28', '2021-09-17 05:33:48'),
	(85, 'Jane Laksita S.H.', 'Psr. Panjaitan No. 453, Tebing Tinggi 97448, Sultra', '1999-07-25 07:34:32', '2021-09-17 05:33:48'),
	(86, 'Edi Marpaung S.Pt', 'Jr. Basket No. 658, Sibolga 86869, Sultra', '1982-03-23 00:03:38', '2021-09-17 05:33:48'),
	(87, 'Dartono Pradana', 'Kpg. Muwardi No. 715, Tegal 95549, Riau', '2006-12-13 06:30:30', '2021-09-17 05:33:48'),
	(88, 'Bagas Saragih', 'Kpg. Jakarta No. 181, Bandung 51505, Sultra', '2001-12-20 03:10:16', '2021-09-17 05:33:48'),
	(89, 'Victoria Rahmi Novitasari S.E.I', 'Jln. Warga No. 918, Sorong 40388, Kalsel', '1976-09-04 23:41:24', '2021-09-17 05:33:48'),
	(90, 'Umar Hidayanto', 'Jln. Suprapto No. 473, Administrasi Jakarta Selatan 73915, NTB', '1993-03-13 06:54:54', '2021-09-17 05:33:48'),
	(91, 'Aditya Paiman Hutagalung', 'Kpg. Ketandan No. 37, Banjarbaru 25650, Bali', '1985-07-24 07:23:54', '2021-09-17 05:33:48'),
	(92, 'Cawisadi Prayoga', 'Psr. Bakti No. 568, Administrasi Jakarta Utara 61156, Aceh', '1985-10-18 01:08:59', '2021-09-17 05:33:48'),
	(93, 'Amalia Haryanti', 'Ds. Babadan No. 995, Sawahlunto 82894, Jatim', '1987-09-04 04:33:37', '2021-09-17 05:33:48'),
	(94, 'Gantar Jarwadi Najmudin S.Ked', 'Dk. Mahakam No. 758, Singkawang 45548, Banten', '2019-01-01 11:33:18', '2021-09-17 05:33:48'),
	(95, 'Johan Jabal Siregar', 'Ds. Merdeka No. 390, Pangkal Pinang 82800, Kaltara', '1985-07-24 09:58:22', '2021-09-17 05:33:48'),
	(96, 'Luwes Wasita', 'Dk. Ters. Pasir Koja No. 40, Pekalongan 94719, Jabar', '1977-07-05 01:20:11', '2021-09-17 05:33:48'),
	(97, 'Najam Harjaya Widodo', 'Ki. Merdeka No. 226, Tasikmalaya 29547, Jateng', '2010-02-22 06:39:58', '2021-09-17 05:33:48'),
	(98, 'Wage Mandala', 'Ds. Veteran No. 844, Jambi 32480, Maluku', '1971-07-24 04:30:40', '2021-09-17 05:33:48'),
	(99, 'Marwata Januar', 'Gg. Jakarta No. 873, Semarang 86272, Kalbar', '2013-07-23 12:56:05', '2021-09-17 05:33:48'),
	(100, 'Soleh Gunarto', 'Jr. Panjaitan No. 677, Tomohon 78533, Banten', '2012-08-10 01:27:31', '2021-09-17 05:33:48');
/*!40000 ALTER TABLE `orang` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
