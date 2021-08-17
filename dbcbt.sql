-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2021 at 10:30 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbcbt`
--

-- --------------------------------------------------------

--
-- Table structure for table `cbt_jawaban`
--

CREATE TABLE IF NOT EXISTS `cbt_jawaban` (
  `jawaban_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `jawaban_soal_id` bigint(20) unsigned NOT NULL,
  `jawaban_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `jawaban_benar` tinyint(1) NOT NULL DEFAULT '0',
  `jawaban_aktif` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jawaban_id`),
  KEY `p_answer_question_id` (`jawaban_soal_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=701 ;

--
-- Dumping data for table `cbt_jawaban`
--

INSERT INTO `cbt_jawaban` (`jawaban_id`, `jawaban_soal_id`, `jawaban_detail`, `jawaban_benar`, `jawaban_aktif`) VALUES
(186, 57, '<p>1 Syawal</p>\r\n', 1, 1),
(187, 57, '<p>1 Agustus</p>', 0, 1),
(188, 57, '<p>1 Januari</p>', 0, 1),
(189, 57, '<p>1 Desember</p>', 0, 1),
(190, 57, '<p>14 Februari</p>', 0, 1),
(191, 56, '<p>Nazril Irham</p>', 1, 1),
(192, 56, '<p>Joko Susilo</p>', 0, 1),
(193, 56, '<p>Wahyu Saputra</p>\r\n', 0, 1),
(194, 56, '<p>Aril Piterpen</p>', 0, 1),
(195, 56, 'Joko Wow', 0, 1),
(196, 55, '<p>Soekarno</p>', 1, 1),
(197, 55, '<p>Soeharto</p>\r\n', 0, 1),
(198, 55, '<p>Susilo Bambang Yudhoyono</p>\r\n', 0, 1),
(199, 55, '<p>BJ. Habibie</p>\r\n', 0, 1),
(200, 55, '<p>Joko Widodo</p>\r\n', 0, 1),
(201, 54, '<p>Sun East Mall</p>', 1, 1),
(202, 54, '<p>Matahari</p>', 0, 1),
(203, 54, '<p>Bulan</p>', 0, 1),
(204, 54, '<p>Tanah Abang</p>', 0, 1),
(205, 54, '<p>Tanah Lempong</p>', 0, 1),
(206, 53, '<p>Sekolah Menengah Kejuruan</p>', 1, 1),
(207, 53, '<p>Sekolah Menengah Kejujuran</p>', 0, 1),
(208, 53, '<p>Sekolah Maju Sendiri</p>', 0, 1),
(209, 53, '<p>Sekolah Mak Ku</p>', 0, 1),
(210, 53, '<p>Sekolah Memilih Kekasih</p>', 0, 1),
(211, 64, 'Akhirnya aku menemukanmu', 1, 1),
(212, 64, 'Akhir dirimu', 0, 1),
(213, 64, 'Susahnya jadi dia', 0, 1),
(214, 64, 'Jones', 0, 1),
(215, 64, 'Josan - Jomblo Pas Pasan', 0, 1),
(621, 161, '<p>Aksi bela Jomblo</p>\r\n', 1, 1),
(622, 161, '<p>Aksi bela cewek</p>\r\n', 0, 1),
(623, 161, '<p>14 Februari</p>\r\n', 0, 1),
(624, 161, '<p>Hari Valentine</p>\r\n', 0, 1),
(625, 161, '<p>Turun ke jalan</p>\r\n', 0, 1),
(659, 223, 'A salesclerk', 0, 1),
(660, 223, 'An apartment owner', 1, 1),
(661, 223, 'A shop owner', 0, 1),
(662, 223, 'A businesman', 0, 1),
(663, 224, 'Her trip will last only a few days.', 0, 1),
(664, 224, 'She departs in several days.', 0, 1),
(665, 224, 'She''s leaving in a few hours.', 1, 1),
(666, 224, 'Her trip began a few days ago.', 0, 1),
(667, 225, 'He does not know who Susan is.', 0, 1),
(668, 225, 'He is willing to give Susan a ride.', 0, 1),
(669, 225, 'He does not want to give Susan a ride.', 1, 1),
(670, 225, 'He wants to give Susan a ride later.', 0, 1),
(671, 226, '<p>N = 100</p>\r\n', 1, 1),
(672, 226, '<p>N = 12</p>\r\n', 0, 1),
(673, 226, '<p>N = 2</p>\r\n', 0, 1),
(674, 226, '<p>N = 5</p>\r\n', 0, 1),
(675, 226, '<p>N = 6</p>\r\n', 0, 1),
(676, 227, '<p>P = 2</p>\r\n', 0, 1),
(677, 227, '<p>P = 3</p>\r\n', 0, 1),
(678, 227, '<p>P = 4</p>\r\n', 0, 1),
(679, 227, '<p>P = 5</p>\r\n', 0, 1),
(680, 227, '<p>P = 12</p>\r\n', 1, 1),
(681, 229, 'a = 1', 0, 1),
(682, 229, 'a = 2', 0, 1),
(683, 229, 'a = 3', 1, 1),
(684, 229, 'a = 4', 0, 1),
(685, 229, 'a = 5', 0, 1),
(686, 228, '<p>x = 1</p>\r\n', 0, 1),
(687, 228, '<p>x = 2</p>\r\n', 0, 1),
(688, 228, '<p>x = 3</p>\r\n', 0, 1),
(689, 228, '<p>x = 4</p>\r\n', 0, 1),
(690, 228, '<p>x = 5</p>\r\n', 1, 1),
(691, 231, '<p>Falsafah negara</p>\r\n', 0, 1),
(692, 231, '<p>Ideologi negara</p>\r\n', 1, 1),
(693, 231, '<p>Atribut negara</p>\r\n', 0, 1),
(694, 231, '<p>Simbol negara</p>\r\n', 0, 1),
(695, 231, '<p>Budaya negara</p>\r\n', 0, 1),
(696, 232, 'Sebuah negara', 1, 1),
(697, 232, 'Sebuah wilayah', 0, 1),
(698, 232, 'Sebuah provinsi', 0, 1),
(699, 232, 'Sebuah Kota', 0, 1),
(700, 232, 'Sebuah Kabupaten', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_konfigurasi`
--

CREATE TABLE IF NOT EXISTS `cbt_konfigurasi` (
  `konfigurasi_id` int(11) NOT NULL AUTO_INCREMENT,
  `konfigurasi_kode` varchar(50) NOT NULL,
  `konfigurasi_isi` varchar(50) NOT NULL,
  `konfigurasi_keterangan` varchar(100) NOT NULL,
  PRIMARY KEY (`konfigurasi_id`),
  UNIQUE KEY `konfigurasi_kode` (`konfigurasi_kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cbt_konfigurasi`
--

INSERT INTO `cbt_konfigurasi` (`konfigurasi_id`, `konfigurasi_kode`, `konfigurasi_isi`, `konfigurasi_keterangan`) VALUES
(1, 'link_login_operator', 'ya', 'Menampilkan Link Login Operator'),
(2, 'cbt_nama', 'CBT Politeknik Negeri Subang', 'Nama Penyelenggara ZYACBT'),
(3, 'cbt_keterangan', 'Politeknik Negeri Subang', 'Keterangan Penyelenggara ZYACBT'),
(4, 'cbt_mobile_lock_xambro', 'ya', 'Melakukan Lock pada browser mobile agar menggunakan Xambro Saja');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_modul`
--

CREATE TABLE IF NOT EXISTS `cbt_modul` (
  `modul_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `modul_nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `modul_aktif` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`modul_id`),
  UNIQUE KEY `ak_module_name` (`modul_nama`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `cbt_modul`
--

INSERT INTO `cbt_modul` (`modul_id`, `modul_nama`, `modul_aktif`) VALUES
(9, 'Default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_sessions`
--

CREATE TABLE IF NOT EXISTS `cbt_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cbt_sessions`
--

INSERT INTO `cbt_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('lc0cjk769ee0fsfaemavhmlsnta2r8nk', '::1', 1628064524, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383036343235393b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31333a2241646d696e6973747261746f72223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('tscfvs058fqtan4d74284b1qugcdqdlt', '::1', 1628064926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383036343632383b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31333a2241646d696e6973747261746f72223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('fhsifbr4h2inqkrac5cbhls8tckjegoo', '127.0.0.1', 1628065187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383036343836393b6362745f7465735f757365725f69647c733a333a22747269223b6362745f7465735f6e616d617c733a31333a225472692048657264696177616e223b6362745f7465735f67726f75707c733a31323a2253492054696e676b61742032223b6362745f7465735f67726f75705f69647c733a313a2235223b),
('0ovbp8kk7kat0nlabc4fshn7m89o2vg8', '::1', 1628065196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383036343933303b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31333a2241646d696e6973747261746f72223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('6ligh8q293nip27fk298s59m8lfjmk3s', '127.0.0.1', 1628065780, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383036353138373b6362745f7465735f757365725f69647c733a333a22747269223b6362745f7465735f6e616d617c733a31333a225472692048657264696177616e223b6362745f7465735f67726f75707c733a31323a2253492054696e676b61742032223b6362745f7465735f67726f75705f69647c733a313a2235223b),
('qpc19iuplg9uoev5an5vtj83hkhvtar6', '::1', 1628065406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383036353237323b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31333a2241646d696e6973747261746f72223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('sb17h0k9a19p00cbukjhafee0p50l96r', '127.0.0.1', 1628065847, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383036353738313b6362745f7465735f757365725f69647c733a333a22747269223b6362745f7465735f6e616d617c733a31333a225472692048657264696177616e223b6362745f7465735f67726f75707c733a31323a2253492054696e676b61742032223b6362745f7465735f67726f75705f69647c733a313a2235223b),
('pkaar5r2iiqlpb360ib0epetq33gb0b2', '::1', 1628065945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383036353837333b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31333a2241646d696e6973747261746f72223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('rqivcql2uiqqe5761tkbpnrgf97lhdjl', '::1', 1628066518, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383036363338313b),
('0ptk906djdd9d439ft92e2mnlp9p1ocb', '::1', 1628069849, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383036393435383b6362745f7465735f757365725f69647c733a353a22697162616c223b6362745f7465735f6e616d617c733a353a22697162616c223b6362745f7465735f67726f75707c733a31323a2253492054696e676b61742032223b6362745f7465735f67726f75705f69647c733a313a2235223b),
('3dcusp3ikk2juqiisajo8rthln20i9sd', '::1', 1628069539, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383036393530393b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31333a2241646d696e6973747261746f72223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('vq6sobfj1fp0tkg4m9m1cd9guqtajh3k', '127.0.0.1', 1628069845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383036393535373b6362745f7465735f757365725f69647c733a353a22697162616c223b6362745f7465735f6e616d617c733a353a22697162616c223b6362745f7465735f67726f75707c733a31323a2253492054696e676b61742032223b6362745f7465735f67726f75705f69647c733a313a2235223b),
('silc5i730lqmf06o66sl5lov9lidigk8', '::1', 1628069850, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383036393835303b6362745f7465735f757365725f69647c733a353a22697162616c223b6362745f7465735f6e616d617c733a353a22697162616c223b6362745f7465735f67726f75707c733a31323a2253492054696e676b61742032223b6362745f7465735f67726f75705f69647c733a313a2235223b),
('19rh5ovesd4o9kbjo6ojnc12mqs4034p', '127.0.0.1', 1628069895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383036393839343b),
('3cah1o8u6a17mhc8u5ojd73ov1dfcsf8', '::1', 1628080961, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383038303534393b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31333a2241646d696e6973747261746f72223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('sm051380pp87ab58o3mvqhi849jf8jvc', '::1', 1628081250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383038303937363b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31333a2241646d696e6973747261746f72223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('rs4kraekgorljbhg88omf64rf80bokk8', '::1', 1628081557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383038313238323b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31333a2241646d696e6973747261746f72223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('d765b4qhgh8s00ufeq53b1i9842vo0am', '::1', 1628082048, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383038313538393b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31333a2241646d696e6973747261746f72223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('6dehrcalimla3gkqp04infor3a4md958', '::1', 1628082416, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383038323136323b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31333a2241646d696e6973747261746f72223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('uudvbvu55gbk3n11alokjjma59o7buiv', '::1', 1628082808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383038323534373b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31333a2241646d696e6973747261746f72223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('7a6293ptr7qe2igeboatq6875pj643um', '127.0.0.1', 1628083136, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383038323839363b),
('9q2ivqmalnnc5f2k8p5224lp6q1107rc', '::1', 1628083447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383038333134373b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31333a2241646d696e6973747261746f72223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('hhduorv1pp5tq533jluvf2ljp6gn9mnb', '::1', 1628083520, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383038333435303b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31333a2241646d696e6973747261746f72223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('t0vveejkoui25likoknkgguc36ifpl4n', '::1', 1628083883, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632383038333739313b);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_soal`
--

CREATE TABLE IF NOT EXISTS `cbt_soal` (
  `soal_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `soal_topik_id` bigint(20) unsigned NOT NULL,
  `soal_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `soal_tipe` smallint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1=Pilihan ganda, 2=essay, 3=jawaban singkat',
  `soal_kunci` text COLLATE utf8_unicode_ci COMMENT 'Kunci untuk soal jawaban singkat',
  `soal_difficulty` smallint(6) NOT NULL DEFAULT '1',
  `soal_aktif` tinyint(1) NOT NULL DEFAULT '0',
  `soal_audio` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soal_audio_play` int(11) NOT NULL DEFAULT '0',
  `soal_timer` smallint(10) DEFAULT NULL,
  `soal_inline_answers` tinyint(1) NOT NULL DEFAULT '0',
  `soal_auto_next` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`soal_id`),
  KEY `p_question_subject_id` (`soal_topik_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=233 ;

--
-- Dumping data for table `cbt_soal`
--

INSERT INTO `cbt_soal` (`soal_id`, `soal_topik_id`, `soal_detail`, `soal_tipe`, `soal_kunci`, `soal_difficulty`, `soal_aktif`, `soal_audio`, `soal_audio_play`, `soal_timer`, `soal_inline_answers`, `soal_auto_next`) VALUES
(53, 7, 'Apakah kepanjangan dari SMK ?', 1, NULL, 1, 1, NULL, 1, NULL, 0, 0),
(54, 7, '<p>Nama salah satu Mall yang ada di kota genteng adalah ...<br></p>', 1, NULL, 1, 1, NULL, 1, NULL, 0, 0),
(55, 7, '<p>Siapakah nama tokoh berikut ?</p><p><img src="[base_url]uploads/topik_7/soekarno.jpg" style="max-width: 600px;"><br></p>', 1, NULL, 1, 1, NULL, 1, NULL, 0, 0),
(56, 7, '<p>Siapakah vokalis band NOAH ?<br></p>', 1, NULL, 1, 1, NULL, 1, NULL, 0, 0),
(57, 7, '<p>Tanggal berapakah hari raya Idul Fitri ?</p>\r\n', 1, NULL, 1, 1, NULL, 1, NULL, 0, 0),
(61, 7, 'Jelaskan apa yang dimaksud dengan Jomblo ?', 2, NULL, 1, 1, NULL, 1, NULL, 0, 0),
(62, 7, '<p>PT. Tiar Perkasa ingin melebarkan sayap usaha di bidang kuliner.</p><p>Dari pernyataan tersebut, sebutkan siapa kekasih mas Tiar ?</p>', 2, NULL, 1, 1, NULL, 1, NULL, 0, 0),
(63, 7, '<p>Jelaskan kenapa Liverpool FC susah sekali untuk juara Premiere Leage !</p>\r\n', 2, NULL, 1, 1, NULL, 1, NULL, 0, 0),
(64, 7, '<p>Apakah judul lagu berikut ini?</p>', 1, NULL, 1, 1, 'naff_-_akhirnya_ku_menemukanmu.mp3', 1, NULL, 0, 0),
(161, 7, '<p>Jelaskan arti poster dibawah ini ?</p>\r\n\r\n<p><img src="[base_url]uploads/topik_7/5a49b252e7aea.jpeg" style="height:283px; width:300px" /></p>\r\n', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(214, 7, '<p>Berapakah 5x10 ?</p>\r\n', 3, '50', 1, 1, NULL, 0, NULL, 0, 0),
(223, 8, '<p>Who is the man most likely to be?</p>\r\n', 1, '', 1, 1, 'test_1_03.mp3', 1, NULL, 0, 0),
(224, 8, '<p>What does the woman mean?</p>\r\n', 1, '', 1, 1, 'test_1_02.mp3', 1, NULL, 0, 0),
(225, 8, '<p>What can be inferred about the man?</p>\r\n', 1, '', 1, 1, 'test_1_01.mp3', 1, NULL, 0, 0),
(226, 9, '<p><img src="[base_url]uploads/topik_9/kelas_9.png" /></p>\r\n\r\n<p>Hasil dari&nbsp;(a/b)⁻ⁿ = (b/a)ⁿ</p>\r\n\r\n<p>ⁿ&radic;a = a&sup1;ʹⁿ</p>\r\n\r\n<p>Sn&nbsp;= [a(1-rⁿ)]/(1-r) untuk r&lt;1</p>\r\n\r\n<p>Maka jumlah N adalah</p>\r\n', 1, '', 1, 1, NULL, 0, NULL, 0, 0),
(227, 9, '<p>Berapa P ?</p>\r\n', 1, '', 1, 1, NULL, 0, NULL, 0, 0),
(228, 9, '<p>Berapa x ?</p>\r\n', 1, '', 1, 1, NULL, 0, NULL, 0, 0),
(229, 9, 'Jika x=y maka a= ?', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(230, 7, '<p>Jika x=y maka 2y + 7x adalah</p>\r\n', 1, '', 1, 1, NULL, 0, NULL, 0, 0),
(231, 10, '<p>Pancasila berperan sebagai&nbsp;</p>\r\n', 1, '', 1, 1, NULL, 0, NULL, 0, 0),
(232, 10, 'Indonesia adalah', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes`
--

CREATE TABLE IF NOT EXISTS `cbt_tes` (
  `tes_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tes_nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tes_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `tes_begin_time` datetime DEFAULT NULL,
  `tes_end_time` datetime DEFAULT NULL,
  `tes_duration_time` smallint(10) unsigned NOT NULL DEFAULT '0',
  `tes_ip_range` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '*.*.*.*',
  `tes_results_to_users` tinyint(1) NOT NULL DEFAULT '0',
  `tes_detail_to_users` tinyint(1) NOT NULL DEFAULT '0',
  `tes_score_right` decimal(10,2) DEFAULT '1.00',
  `tes_score_wrong` decimal(10,2) DEFAULT '0.00',
  `tes_score_unanswered` decimal(10,2) DEFAULT '0.00',
  `tes_max_score` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tes_token` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`tes_id`),
  UNIQUE KEY `ak_test_name` (`tes_nama`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `cbt_tes`
--

INSERT INTO `cbt_tes` (`tes_id`, `tes_nama`, `tes_detail`, `tes_begin_time`, `tes_end_time`, `tes_duration_time`, `tes_ip_range`, `tes_results_to_users`, `tes_detail_to_users`, `tes_score_right`, `tes_score_wrong`, `tes_score_unanswered`, `tes_max_score`, `tes_token`) VALUES
(4, 'Tes Uji Coba', 'Tes Uji Coba', '2020-05-14 10:47:00', '2020-05-15 10:47:00', 30, '*.*.*.*', 1, 0, '1.00', '0.00', '0.00', '10.00', 1),
(6, 'TOEFL : Listening Comprehension', 'TOEFL : Listening Comprehension', '2020-07-28 01:00:00', '2020-07-28 23:00:00', 30, '*.*.*.*', 0, 0, '1.00', '0.00', '0.00', '3.00', 0),
(7, 'Pengetahuan Umum', 'Pengetahuan Umum', '2021-08-04 15:08:00', '2021-08-05 15:08:00', 90, '*.*.*.*', 1, 1, '10.00', '0.00', '0.00', '100.00', 1),
(8, 'Pengetahuan Sosial', 'Pengetahuan Sosial', '2021-08-04 17:00:00', '2021-08-04 22:00:00', 120, '*.*.*.*', 1, 1, '10.00', '0.00', '0.00', '100.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tesgrup`
--

CREATE TABLE IF NOT EXISTS `cbt_tesgrup` (
  `tstgrp_tes_id` bigint(20) unsigned NOT NULL,
  `tstgrp_grup_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`tstgrp_tes_id`,`tstgrp_grup_id`),
  KEY `p_tstgrp_test_id` (`tstgrp_tes_id`),
  KEY `p_tstgrp_group_id` (`tstgrp_grup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_tesgrup`
--

INSERT INTO `cbt_tesgrup` (`tstgrp_tes_id`, `tstgrp_grup_id`) VALUES
(4, 5),
(6, 5),
(7, 5),
(8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_soal`
--

CREATE TABLE IF NOT EXISTS `cbt_tes_soal` (
  `tessoal_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tessoal_tesuser_id` bigint(20) unsigned NOT NULL,
  `tessoal_user_ip` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tessoal_soal_id` bigint(20) unsigned NOT NULL,
  `tessoal_jawaban_text` text COLLATE utf8_unicode_ci,
  `tessoal_nilai` decimal(10,2) DEFAULT NULL,
  `tessoal_creation_time` datetime DEFAULT NULL,
  `tessoal_display_time` datetime DEFAULT NULL,
  `tessoal_change_time` datetime DEFAULT NULL,
  `tessoal_reaction_time` bigint(20) unsigned NOT NULL DEFAULT '0',
  `tessoal_ragu` int(1) NOT NULL DEFAULT '0' COMMENT '1=ragu, 0=tidak ragu',
  `tessoal_order` smallint(6) NOT NULL DEFAULT '1',
  `tessoal_num_answers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tessoal_comment` text COLLATE utf8_unicode_ci,
  `tessoal_audio_play` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tessoal_id`),
  UNIQUE KEY `ak_testuser_question` (`tessoal_tesuser_id`,`tessoal_soal_id`),
  KEY `p_testlog_question_id` (`tessoal_soal_id`),
  KEY `p_testlog_testuser_id` (`tessoal_tesuser_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=57 ;

--
-- Dumping data for table `cbt_tes_soal`
--

INSERT INTO `cbt_tes_soal` (`tessoal_id`, `tessoal_tesuser_id`, `tessoal_user_ip`, `tessoal_soal_id`, `tessoal_jawaban_text`, `tessoal_nilai`, `tessoal_creation_time`, `tessoal_display_time`, `tessoal_change_time`, `tessoal_reaction_time`, `tessoal_ragu`, `tessoal_order`, `tessoal_num_answers`, `tessoal_comment`, `tessoal_audio_play`) VALUES
(1, 1, NULL, 62, NULL, '0.00', '2020-05-13 19:27:30', '2020-05-13 19:27:30', NULL, 0, 0, 1, 0, NULL, 0),
(2, 1, NULL, 57, NULL, '0.00', '2020-05-13 19:27:30', NULL, NULL, 0, 0, 2, 0, NULL, 0),
(3, 1, NULL, 161, NULL, '0.00', '2020-05-13 19:27:30', NULL, NULL, 0, 0, 3, 0, NULL, 0),
(4, 1, NULL, 54, NULL, '0.00', '2020-05-13 19:27:30', NULL, NULL, 0, 0, 4, 0, NULL, 0),
(5, 1, NULL, 63, NULL, '0.00', '2020-05-13 19:27:30', '2020-05-13 19:42:18', NULL, 0, 0, 5, 0, NULL, 0),
(6, 1, NULL, 53, NULL, '0.00', '2020-05-13 19:27:30', NULL, NULL, 0, 0, 6, 0, NULL, 0),
(7, 1, NULL, 55, NULL, '1.00', '2020-05-13 19:27:30', '2020-05-13 19:42:20', '2020-05-13 19:42:25', 0, 0, 7, 0, NULL, 0),
(8, 1, NULL, 56, NULL, '0.00', '2020-05-13 19:27:30', NULL, NULL, 0, 0, 8, 0, NULL, 0),
(9, 1, NULL, 214, NULL, '0.00', '2020-05-13 19:27:30', NULL, NULL, 0, 0, 9, 0, NULL, 0),
(10, 1, NULL, 61, NULL, '0.00', '2020-05-13 19:27:30', NULL, NULL, 0, 0, 10, 0, NULL, 0),
(20, 5, NULL, 223, NULL, '1.00', '2020-07-28 05:12:33', '2020-07-28 05:13:26', '2020-07-28 05:13:32', 0, 0, 1, 0, NULL, 1),
(21, 5, NULL, 224, NULL, '1.00', '2020-07-28 05:12:33', '2020-07-28 05:13:34', '2020-07-28 05:13:43', 0, 0, 2, 0, NULL, 1),
(22, 5, NULL, 225, NULL, '0.00', '2020-07-28 05:12:33', '2020-07-28 05:13:44', '2020-07-28 05:13:50', 0, 0, 3, 0, NULL, 1),
(23, 6, NULL, 223, NULL, '0.00', '2020-07-28 05:14:24', '2020-07-28 05:14:25', '2020-07-28 05:14:39', 0, 0, 1, 0, NULL, 0),
(24, 6, NULL, 224, NULL, '1.00', '2020-07-28 05:14:24', '2020-07-28 05:14:40', '2020-07-28 05:14:46', 0, 0, 2, 0, NULL, 0),
(25, 6, NULL, 225, NULL, '1.00', '2020-07-28 05:14:24', '2020-07-28 05:14:47', '2020-07-28 05:14:56', 0, 0, 3, 0, NULL, 0),
(26, 7, NULL, 223, NULL, '0.00', '2020-07-28 05:15:46', '2020-07-28 05:15:47', '2020-07-28 05:15:50', 0, 0, 1, 0, NULL, 0),
(27, 7, NULL, 224, NULL, '1.00', '2020-07-28 05:15:46', '2020-07-28 05:15:51', '2020-07-28 05:15:54', 0, 0, 2, 0, NULL, 0),
(28, 7, NULL, 225, NULL, '0.00', '2020-07-28 05:15:46', '2020-07-28 05:15:56', '2020-07-28 05:15:59', 0, 0, 3, 0, NULL, 0),
(29, 8, NULL, 54, NULL, '0.00', '2021-08-04 15:24:12', '2021-08-04 15:24:13', '2021-08-04 15:24:18', 0, 0, 1, 0, NULL, 0),
(30, 8, NULL, 161, NULL, '10.00', '2021-08-04 15:24:12', '2021-08-04 15:25:01', '2021-08-04 15:25:07', 0, 0, 2, 0, NULL, 0),
(31, 8, NULL, 64, NULL, '10.00', '2021-08-04 15:24:12', '2021-08-04 15:25:14', '2021-08-04 15:25:27', 0, 0, 3, 0, NULL, 1),
(32, 8, NULL, 61, 'tidak memiliki pasangan', '0.00', '2021-08-04 15:24:12', '2021-08-04 15:26:42', '2021-08-04 15:25:40', 0, 0, 4, 0, NULL, 0),
(33, 8, NULL, 214, '50', '10.00', '2021-08-04 15:24:12', '2021-08-04 15:25:44', '2021-08-04 15:25:49', 0, 0, 5, 0, NULL, 0),
(34, 8, NULL, 63, 'belum beruntung', '0.00', '2021-08-04 15:24:12', '2021-08-04 15:26:40', '2021-08-04 15:26:01', 0, 0, 6, 0, NULL, 0),
(35, 8, NULL, 62, 'mbak tiar', '0.00', '2021-08-04 15:24:12', '2021-08-04 15:26:15', '2021-08-04 15:26:14', 0, 0, 7, 0, NULL, 0),
(36, 8, NULL, 53, NULL, '10.00', '2021-08-04 15:24:12', '2021-08-04 15:26:38', '2021-08-04 15:26:23', 0, 0, 8, 0, NULL, 0),
(37, 8, NULL, 56, NULL, '10.00', '2021-08-04 15:24:12', '2021-08-04 15:26:26', '2021-08-04 15:26:29', 0, 0, 9, 0, NULL, 0),
(38, 8, NULL, 57, NULL, '10.00', '2021-08-04 15:24:12', '2021-08-04 15:26:31', '2021-08-04 15:26:33', 0, 0, 10, 0, NULL, 0),
(39, 9, NULL, 56, NULL, '0.00', '2021-08-04 16:33:18', '2021-08-04 16:35:47', '2021-08-04 16:33:39', 0, 0, 1, 0, NULL, 0),
(40, 9, NULL, 64, NULL, '10.00', '2021-08-04 16:33:18', '2021-08-04 16:34:26', '2021-08-04 16:33:46', 0, 0, 2, 0, NULL, 1),
(41, 9, NULL, 214, 'tes', '0.00', '2021-08-04 16:33:18', '2021-08-04 16:34:28', '2021-08-04 16:34:31', 0, 0, 3, 0, NULL, 0),
(42, 9, NULL, 62, 'tes 2', '0.00', '2021-08-04 16:33:18', '2021-08-04 16:36:41', '2021-08-04 16:36:12', 0, 0, 4, 0, NULL, 0),
(43, 9, NULL, 57, NULL, '0.00', '2021-08-04 16:33:18', '2021-08-04 16:36:42', '2021-08-04 16:35:52', 0, 0, 5, 0, NULL, 0),
(44, 9, NULL, 61, 'res', '0.00', '2021-08-04 16:33:18', '2021-08-04 16:36:58', '2021-08-04 16:36:51', 0, 0, 6, 0, NULL, 0),
(45, 9, NULL, 161, NULL, '0.00', '2021-08-04 16:33:18', '2021-08-04 16:36:52', '2021-08-04 16:36:23', 0, 0, 7, 0, NULL, 0),
(46, 9, NULL, 63, 'tesb', '0.00', '2021-08-04 16:33:18', '2021-08-04 16:36:54', '2021-08-04 16:36:30', 0, 0, 8, 0, NULL, 0),
(47, 9, NULL, 53, NULL, '0.00', '2021-08-04 16:33:18', '2021-08-04 16:37:14', '2021-08-04 16:37:10', 0, 0, 9, 0, NULL, 0),
(48, 9, NULL, 54, NULL, '10.00', '2021-08-04 16:33:18', '2021-08-04 16:37:15', '2021-08-04 16:36:38', 0, 0, 10, 0, NULL, 0),
(49, 10, NULL, 55, NULL, '10.00', '2021-08-04 20:16:15', '2021-08-04 20:16:16', '2021-08-04 20:16:29', 0, 0, 1, 0, NULL, 0),
(50, 10, NULL, 56, NULL, '10.00', '2021-08-04 20:16:15', '2021-08-04 20:16:31', '2021-08-04 20:16:35', 0, 0, 2, 0, NULL, 0),
(51, 10, NULL, 230, NULL, '0.00', '2021-08-04 20:16:15', '2021-08-04 20:17:15', NULL, 0, 1, 3, 0, NULL, 0),
(52, 10, NULL, 57, NULL, '0.00', '2021-08-04 20:16:15', '2021-08-04 20:16:46', '2021-08-04 20:16:51', 0, 0, 4, 0, NULL, 0),
(53, 10, NULL, 64, NULL, '10.00', '2021-08-04 20:16:15', '2021-08-04 20:16:54', '2021-08-04 20:17:01', 0, 0, 5, 0, NULL, 1),
(54, 10, NULL, 161, NULL, '10.00', '2021-08-04 20:16:15', '2021-08-04 20:17:02', '2021-08-04 20:17:04', 0, 0, 6, 0, NULL, 0),
(55, 10, NULL, 53, NULL, '10.00', '2021-08-04 20:16:15', '2021-08-04 20:17:06', '2021-08-04 20:17:08', 0, 0, 7, 0, NULL, 0),
(56, 10, NULL, 54, NULL, '0.00', '2021-08-04 20:16:15', '2021-08-04 20:17:10', '2021-08-04 20:17:12', 0, 0, 8, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_soal_jawaban`
--

CREATE TABLE IF NOT EXISTS `cbt_tes_soal_jawaban` (
  `soaljawaban_tessoal_id` bigint(20) unsigned NOT NULL,
  `soaljawaban_jawaban_id` bigint(20) unsigned NOT NULL,
  `soaljawaban_selected` smallint(6) NOT NULL DEFAULT '-1',
  `soaljawaban_order` smallint(6) NOT NULL DEFAULT '1',
  `soaljawaban_position` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`soaljawaban_tessoal_id`,`soaljawaban_jawaban_id`),
  KEY `p_logansw_answer_id` (`soaljawaban_jawaban_id`),
  KEY `p_logansw_testlog_id` (`soaljawaban_tessoal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_tes_soal_jawaban`
--

INSERT INTO `cbt_tes_soal_jawaban` (`soaljawaban_tessoal_id`, `soaljawaban_jawaban_id`, `soaljawaban_selected`, `soaljawaban_order`, `soaljawaban_position`) VALUES
(2, 186, 0, 3, NULL),
(2, 187, 0, 2, NULL),
(2, 188, 0, 4, NULL),
(2, 189, 0, 1, NULL),
(2, 190, 0, 5, NULL),
(3, 621, 0, 3, NULL),
(3, 622, 0, 1, NULL),
(3, 623, 0, 2, NULL),
(3, 624, 0, 4, NULL),
(3, 625, 0, 5, NULL),
(4, 201, 0, 4, NULL),
(4, 202, 0, 3, NULL),
(4, 203, 0, 2, NULL),
(4, 204, 0, 1, NULL),
(4, 205, 0, 5, NULL),
(6, 206, 0, 3, NULL),
(6, 207, 0, 2, NULL),
(6, 208, 0, 1, NULL),
(6, 209, 0, 4, NULL),
(6, 210, 0, 5, NULL),
(7, 196, 1, 4, NULL),
(7, 197, 0, 5, NULL),
(7, 198, 0, 2, NULL),
(7, 199, 0, 3, NULL),
(7, 200, 0, 1, NULL),
(8, 191, 0, 3, NULL),
(8, 192, 0, 2, NULL),
(8, 193, 0, 1, NULL),
(8, 194, 0, 4, NULL),
(8, 195, 0, 5, NULL),
(20, 659, 0, 4, NULL),
(20, 660, 1, 1, NULL),
(20, 661, 0, 2, NULL),
(20, 662, 0, 3, NULL),
(21, 663, 0, 2, NULL),
(21, 664, 0, 3, NULL),
(21, 665, 1, 4, NULL),
(21, 666, 0, 1, NULL),
(22, 667, 0, 2, NULL),
(22, 668, 0, 3, NULL),
(22, 669, 0, 1, NULL),
(22, 670, 1, 4, NULL),
(23, 659, 0, 2, NULL),
(23, 660, 0, 4, NULL),
(23, 661, 0, 1, NULL),
(23, 662, 1, 3, NULL),
(24, 663, 0, 4, NULL),
(24, 664, 0, 2, NULL),
(24, 665, 1, 1, NULL),
(24, 666, 0, 3, NULL),
(25, 667, 0, 4, NULL),
(25, 668, 0, 3, NULL),
(25, 669, 1, 1, NULL),
(25, 670, 0, 2, NULL),
(26, 659, 0, 3, NULL),
(26, 660, 0, 2, NULL),
(26, 661, 1, 4, NULL),
(26, 662, 0, 1, NULL),
(27, 663, 0, 3, NULL),
(27, 664, 0, 4, NULL),
(27, 665, 1, 1, NULL),
(27, 666, 0, 2, NULL),
(28, 667, 1, 3, NULL),
(28, 668, 0, 1, NULL),
(28, 669, 0, 2, NULL),
(28, 670, 0, 4, NULL),
(29, 201, 0, 5, NULL),
(29, 202, 0, 2, NULL),
(29, 203, 0, 4, NULL),
(29, 204, 1, 3, NULL),
(29, 205, 0, 1, NULL),
(30, 621, 1, 5, NULL),
(30, 622, 0, 1, NULL),
(30, 623, 0, 4, NULL),
(30, 624, 0, 3, NULL),
(30, 625, 0, 2, NULL),
(31, 211, 1, 5, NULL),
(31, 212, 0, 4, NULL),
(31, 213, 0, 2, NULL),
(31, 214, 0, 1, NULL),
(31, 215, 0, 3, NULL),
(36, 206, 1, 4, NULL),
(36, 207, 0, 5, NULL),
(36, 208, 0, 1, NULL),
(36, 209, 0, 3, NULL),
(36, 210, 0, 2, NULL),
(37, 191, 1, 1, NULL),
(37, 192, 0, 2, NULL),
(37, 193, 0, 5, NULL),
(37, 194, 0, 3, NULL),
(37, 195, 0, 4, NULL),
(38, 186, 1, 3, NULL),
(38, 187, 0, 1, NULL),
(38, 188, 0, 4, NULL),
(38, 189, 0, 2, NULL),
(38, 190, 0, 5, NULL),
(39, 191, 0, 2, NULL),
(39, 192, 0, 5, NULL),
(39, 193, 0, 1, NULL),
(39, 194, 1, 3, NULL),
(39, 195, 0, 4, NULL),
(40, 211, 1, 5, NULL),
(40, 212, 0, 2, NULL),
(40, 213, 0, 4, NULL),
(40, 214, 0, 1, NULL),
(40, 215, 0, 3, NULL),
(43, 186, 0, 5, NULL),
(43, 187, 1, 2, NULL),
(43, 188, 0, 1, NULL),
(43, 189, 0, 3, NULL),
(43, 190, 0, 4, NULL),
(45, 621, 0, 5, NULL),
(45, 622, 1, 1, NULL),
(45, 623, 0, 4, NULL),
(45, 624, 0, 2, NULL),
(45, 625, 0, 3, NULL),
(47, 206, 0, 2, NULL),
(47, 207, 1, 4, NULL),
(47, 208, 0, 1, NULL),
(47, 209, 0, 5, NULL),
(47, 210, 0, 3, NULL),
(48, 201, 1, 1, NULL),
(48, 202, 0, 4, NULL),
(48, 203, 0, 5, NULL),
(48, 204, 0, 3, NULL),
(48, 205, 0, 2, NULL),
(49, 196, 1, 4, NULL),
(49, 197, 0, 5, NULL),
(49, 198, 0, 2, NULL),
(49, 199, 0, 1, NULL),
(49, 200, 0, 3, NULL),
(50, 191, 1, 5, NULL),
(50, 192, 0, 1, NULL),
(50, 193, 0, 4, NULL),
(50, 194, 0, 2, NULL),
(50, 195, 0, 3, NULL),
(52, 186, 0, 3, NULL),
(52, 187, 0, 1, NULL),
(52, 188, 1, 2, NULL),
(52, 189, 0, 4, NULL),
(52, 190, 0, 5, NULL),
(53, 211, 1, 2, NULL),
(53, 212, 0, 5, NULL),
(53, 213, 0, 4, NULL),
(53, 214, 0, 3, NULL),
(53, 215, 0, 1, NULL),
(54, 621, 1, 3, NULL),
(54, 622, 0, 1, NULL),
(54, 623, 0, 4, NULL),
(54, 624, 0, 5, NULL),
(54, 625, 0, 2, NULL),
(55, 206, 1, 2, NULL),
(55, 207, 0, 5, NULL),
(55, 208, 0, 3, NULL),
(55, 209, 0, 1, NULL),
(55, 210, 0, 4, NULL),
(56, 201, 0, 4, NULL),
(56, 202, 1, 3, NULL),
(56, 203, 0, 5, NULL),
(56, 204, 0, 2, NULL),
(56, 205, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_token`
--

CREATE TABLE IF NOT EXISTS `cbt_tes_token` (
  `token_id` int(11) NOT NULL AUTO_INCREMENT,
  `token_isi` varchar(20) NOT NULL,
  `token_user_id` int(11) NOT NULL,
  `token_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token_aktif` int(11) NOT NULL DEFAULT '1' COMMENT 'Umur Token dalam menit, 1 = 1 hari penuh',
  `token_tes_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `token_user_id` (`token_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cbt_tes_token`
--

INSERT INTO `cbt_tes_token` (`token_id`, `token_isi`, `token_user_id`, `token_ts`, `token_aktif`, `token_tes_id`) VALUES
(1, 'DD63E6', 1, '2021-08-04 08:23:25', 30, 7),
(2, '32991D', 1, '2021-08-04 09:32:19', 5, 7),
(3, 'A35AA8', 1, '2021-08-04 13:12:58', 1, 8),
(4, '7C55EE', 1, '2021-08-04 13:13:27', 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_topik_set`
--

CREATE TABLE IF NOT EXISTS `cbt_tes_topik_set` (
  `tset_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tset_tes_id` bigint(20) unsigned NOT NULL,
  `tset_topik_id` bigint(20) unsigned NOT NULL,
  `tset_tipe` smallint(6) NOT NULL DEFAULT '1',
  `tset_difficulty` smallint(6) NOT NULL DEFAULT '1',
  `tset_jumlah` smallint(6) NOT NULL DEFAULT '1',
  `tset_jawaban` smallint(6) NOT NULL DEFAULT '0',
  `tset_acak_jawaban` int(11) NOT NULL DEFAULT '1',
  `tset_acak_soal` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tset_id`),
  KEY `p_tsubset_test_id` (`tset_tes_id`),
  KEY `tsubset_subject_id` (`tset_topik_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `cbt_tes_topik_set`
--

INSERT INTO `cbt_tes_topik_set` (`tset_id`, `tset_tes_id`, `tset_topik_id`, `tset_tipe`, `tset_difficulty`, `tset_jumlah`, `tset_jawaban`, `tset_acak_jawaban`, `tset_acak_soal`) VALUES
(4, 4, 7, 0, 1, 10, 5, 1, 1),
(6, 6, 8, 0, 1, 3, 4, 1, 0),
(7, 7, 7, 0, 1, 10, 5, 1, 1),
(8, 8, 7, 1, 1, 10, 5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_user`
--

CREATE TABLE IF NOT EXISTS `cbt_tes_user` (
  `tesuser_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tesuser_tes_id` bigint(20) unsigned NOT NULL,
  `tesuser_user_id` bigint(20) unsigned NOT NULL,
  `tesuser_status` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tesuser_creation_time` datetime NOT NULL,
  `tesuser_comment` text COLLATE utf8_unicode_ci,
  `tesuser_token` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tesuser_id`),
  UNIQUE KEY `ak_testuser` (`tesuser_tes_id`,`tesuser_user_id`,`tesuser_status`),
  KEY `p_testuser_user_id` (`tesuser_user_id`),
  KEY `p_testuser_test_id` (`tesuser_tes_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `cbt_tes_user`
--

INSERT INTO `cbt_tes_user` (`tesuser_id`, `tesuser_tes_id`, `tesuser_user_id`, `tesuser_status`, `tesuser_creation_time`, `tesuser_comment`, `tesuser_token`) VALUES
(1, 4, 1, 4, '2020-05-13 19:27:30', NULL, 'B36C33'),
(5, 6, 2, 4, '2020-07-28 05:12:33', NULL, NULL),
(6, 6, 3, 4, '2020-07-28 05:14:23', NULL, NULL),
(7, 6, 1, 4, '2020-07-28 05:15:46', NULL, NULL),
(8, 7, 4, 4, '2021-08-04 15:24:11', NULL, 'DD63E6'),
(9, 7, 3, 4, '2021-08-04 16:33:17', NULL, '32991D'),
(10, 8, 3, 4, '2021-08-04 20:16:15', NULL, '7C55EE');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_topik`
--

CREATE TABLE IF NOT EXISTS `cbt_topik` (
  `topik_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `topik_modul_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `topik_nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `topik_detail` text COLLATE utf8_unicode_ci,
  `topik_aktif` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`topik_id`),
  UNIQUE KEY `ak_subject_name` (`topik_modul_id`,`topik_nama`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `cbt_topik`
--

INSERT INTO `cbt_topik` (`topik_id`, `topik_modul_id`, `topik_nama`, `topik_detail`, `topik_aktif`) VALUES
(7, 9, 'Soal Uji Coba', 'Kumpulan Soal untuk Uji Coba ', 1),
(8, 9, 'TOEFL', 'Mata Kuliah Bahasa Inggris', 1),
(9, 9, 'Soal Matematika', 'Soal Matematika', 1),
(10, 9, 'Soal Pengetahuan Umum', 'Soal Pengetahuan Umum', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_user`
--

CREATE TABLE IF NOT EXISTS `cbt_user` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_grup_id` bigint(20) unsigned NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_birthdate` date DEFAULT NULL,
  `user_birthplace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_level` smallint(3) unsigned NOT NULL DEFAULT '1',
  `user_detail` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `ak_user_name` (`user_name`),
  KEY `user_groups_id` (`user_grup_id`),
  KEY `user_detail` (`user_detail`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cbt_user`
--

INSERT INTO `cbt_user` (`user_id`, `user_grup_id`, `user_name`, `user_password`, `user_email`, `user_regdate`, `user_ip`, `user_firstname`, `user_birthdate`, `user_birthplace`, `user_level`, `user_detail`) VALUES
(1, 5, 'lutfi', 'lutfi', 'lutfi@gmail.com', '2018-01-11 04:38:27', NULL, 'Muhammad Lutfial Hakim', NULL, NULL, 1, 'Ruang 1, Sesi 1'),
(2, 5, 'joko', 'joko', 'joko@gmail.com', '2018-08-11 03:49:25', NULL, 'Joko Susanto', NULL, NULL, 1, 'Ruang 1, Sesi 2'),
(3, 5, 'iqbal', 'iqbal', 'miqbaljanuar@gmail.com', '2020-07-24 02:04:57', NULL, 'iqbal', NULL, NULL, 1, 'Ruang 1, Sesi 1'),
(4, 5, 'tri', 'tri', 'h.apandi@gmail.com', '2021-07-30 08:31:50', NULL, 'Tri Herdiawan', NULL, NULL, 1, 'Ruang 1 dan Sesi 1');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_user_grup`
--

CREATE TABLE IF NOT EXISTS `cbt_user_grup` (
  `grup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `grup_nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`grup_id`),
  UNIQUE KEY `group_name` (`grup_nama`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `cbt_user_grup`
--

INSERT INTO `cbt_user_grup` (`grup_id`, `grup_nama`) VALUES
(7, 'SI Tingkat 1'),
(5, 'SI Tingkat 2'),
(6, 'SI Tingkat 3');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `opsi1` varchar(75) NOT NULL,
  `opsi2` varchar(75) NOT NULL,
  `keterangan` varchar(150) NOT NULL,
  `level` varchar(50) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `level` (`level`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `opsi1`, `opsi2`, `keterangan`, `level`, `ts`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', '', '', 'Administrator', 'admin', '2015-07-29 18:12:03'),
(4, 'operator', 'fe96dd39756ac41b74283a9292652d366d73931f', 'Operator', '', '', 'Operator', 'Operator', '2018-03-30 12:58:55'),
(5, 'operator2', '7d014645468c18555374b9e5c3a8ffe2172297b3', 'operator2', '9,10,7,8', '', 'operator2', 'Operator', '2021-08-04 13:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_akses`
--

CREATE TABLE IF NOT EXISTS `user_akses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(75) NOT NULL,
  `kode_menu` varchar(50) NOT NULL,
  `add` int(2) NOT NULL DEFAULT '1' COMMENT '0=false, 1=true',
  `edit` int(2) NOT NULL DEFAULT '1' COMMENT '0=false, 1=true',
  PRIMARY KEY (`id`),
  KEY `akses_kode_menu` (`kode_menu`),
  KEY `akses_level` (`level`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=527 ;

--
-- Dumping data for table `user_akses`
--

INSERT INTO `user_akses` (`id`, `level`, `kode_menu`, `add`, `edit`) VALUES
(478, 'admin', 'peserta-kartu', 1, 1),
(479, 'admin', 'peserta-group', 1, 1),
(480, 'admin', 'peserta-daftar', 1, 1),
(481, 'admin', 'modul-daftar', 1, 1),
(482, 'admin', 'tes-daftar', 1, 1),
(483, 'admin', 'tool-backup', 1, 1),
(484, 'admin', 'tes-evaluasi', 1, 1),
(485, 'admin', 'tool-exportimport-soal', 1, 1),
(486, 'admin', 'modul-filemanager', 1, 1),
(487, 'admin', 'tes-hasil', 1, 1),
(488, 'admin', 'peserta-import', 1, 1),
(489, 'admin', 'modul-import', 1, 1),
(490, 'admin', 'user_level', 1, 1),
(491, 'admin', 'user_menu', 1, 1),
(492, 'admin', 'user_atur', 1, 1),
(493, 'admin', 'user-zyacbt', 1, 1),
(494, 'admin', 'tes-rekap', 1, 1),
(495, 'admin', 'modul-soal', 1, 1),
(496, 'admin', 'tes-tambah', 1, 1),
(497, 'admin', 'tes-token', 1, 1),
(498, 'admin', 'modul-topik', 1, 1),
(499, 'Operator', 'modul-daftar', 1, 1),
(500, 'Operator', 'tes-daftar', 1, 1),
(501, 'Operator', 'tes-evaluasi', 1, 1),
(502, 'Operator', 'modul-filemanager', 1, 1),
(503, 'Operator', 'tes-hasil', 1, 1),
(504, 'Operator', 'tes-hasil-operator', 1, 1),
(505, 'Operator', 'modul-import', 1, 1),
(506, 'Operator', 'tes-rekap', 1, 1),
(507, 'Operator', 'modul-soal', 1, 1),
(508, 'Operator', 'tes-tambah', 1, 1),
(509, 'Operator', 'tes-token', 1, 1),
(510, 'Operator', 'modul-topik', 1, 1),
(511, 'operator2', 'peserta-kartu', 1, 1),
(512, 'operator2', 'peserta-group', 1, 1),
(513, 'operator2', 'peserta-daftar', 1, 1),
(514, 'operator2', 'modul-daftar', 1, 1),
(515, 'operator2', 'tes-daftar', 1, 1),
(516, 'operator2', 'tes-evaluasi', 1, 1),
(517, 'operator2', 'modul-filemanager', 1, 1),
(518, 'operator2', 'tes-hasil', 1, 1),
(519, 'operator2', 'tes-hasil-operator', 1, 1),
(520, 'operator2', 'peserta-import', 1, 1),
(521, 'operator2', 'modul-import', 1, 1),
(522, 'operator2', 'tes-rekap', 1, 1),
(523, 'operator2', 'modul-soal', 1, 1),
(524, 'operator2', 'tes-tambah', 1, 1),
(525, 'operator2', 'tes-token', 1, 1),
(526, 'operator2', 'modul-topik', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE IF NOT EXISTS `user_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(50) NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `level` (`level`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id`, `level`, `keterangan`) VALUES
(1, 'admin', 'Administrator'),
(9, 'Operator', 'Operator'),
(10, 'operator2', 'operator2');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `log` varchar(250) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE IF NOT EXISTS `user_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipe` int(11) NOT NULL DEFAULT '1' COMMENT '0=parent, 1=child',
  `parent` varchar(50) DEFAULT NULL,
  `kode_menu` varchar(50) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL DEFAULT '#',
  `icon` varchar(75) NOT NULL DEFAULT 'fa fa-circle-o',
  `urutan` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode_menu` (`kode_menu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `tipe`, `parent`, `kode_menu`, `nama_menu`, `url`, `icon`, `urutan`) VALUES
(1, 0, '', 'user', 'Pengaturan', '#', 'fa fa-user', 20),
(3, 1, 'user', 'user_atur', 'Pengaturan User', 'manager/useratur', 'fa fa-circle-o', 5),
(4, 1, 'user', 'user_level', 'Pengaturan Level', 'manager/userlevel', 'fa fa-circle-o', 6),
(5, 1, 'user', 'user_menu', 'Pengaturan Menu', 'manager/usermenu', 'fa fa-circle-o', 7),
(6, 0, '', 'modul', 'Data Modul', '#', 'fa fa-book', 2),
(7, 1, 'modul', 'modul-daftar', 'Daftar Soal', 'manager/modul_daftar', 'fa fa-circle-o', 5),
(8, 1, 'modul', 'modul-topik', 'Topik', 'manager/modul_topik', 'fa fa-circle-o', 2),
(10, 0, '', 'peserta', 'Data Peserta', '#', 'fa fa-users', 1),
(11, 1, 'peserta', 'peserta-daftar', 'Daftar Peserta', 'manager/peserta_daftar', 'fa fa-circle-o', 2),
(12, 1, 'peserta', 'peserta-group', 'Daftar Group', 'manager/peserta_group', 'fa fa-circle-o', 1),
(13, 1, 'peserta', 'peserta-import', 'Import Data Peserta', 'manager/peserta_import', 'fa fa-circle-o', 3),
(14, 0, '', 'tes', 'Data Tes', '#', 'fa fa-tasks', 7),
(15, 1, 'tes', 'tes-tambah', 'Tambah Tes', 'manager/tes_tambah', 'fa fa-circle-o', 1),
(16, 1, 'tes', 'tes-daftar', 'Daftar Tes', 'manager/tes_daftar', 'fa fa-circle-o', 2),
(17, 1, 'tes', 'tes-hasil', 'Hasil Tes', 'manager/tes_hasil', 'fa fa-circle-o', 6),
(18, 1, 'modul', 'modul-soal', 'Soal', 'manager/modul_soal', 'fa fa-circle-o', 3),
(19, 1, 'tes', 'tes-token', 'Token', 'manager/tes_token', 'fa fa-circle-o', 8),
(22, 1, 'modul', 'modul-filemanager', 'File Manager', 'manager/modul_filemanager', 'fa fa-circle-o', 6),
(24, 1, 'modul', 'modul-import', 'Import Soal', 'manager/modul_import', 'fa fa-circle-o', 4),
(25, 1, 'tes', 'tes-evaluasi', 'Evaluasi Tes', 'manager/tes_evaluasi', 'fa fa-circle-o', 5),
(28, 1, 'tes', 'tes-hasil-operator', 'Hasil Tes Operator', 'manager/tes_hasil_operator', 'fa fa-circle-o', 10),
(30, 0, '', 'tool', 'Tool', '#', 'fa fa-wrench', 5),
(31, 1, 'tool', 'tool-backup', 'Database', 'manager/tool_backup', 'fa fa-database', 1),
(32, 1, 'tes', 'tes-rekap', 'Rekap Hasil Tes', 'manager/tes_rekap_hasil', 'fa fa-circle-o', 7),
(33, 1, 'tool', 'tool-exportimport-soal', 'Export / Import Soal', 'manager/tool_exportimport_soal', 'fa fa-circle-o', 2),
(34, 1, 'user', 'user-zyacbt', 'Pengaturan CBT', 'manager/pengaturan_zyacbt', 'fa fa-circle-o', 1),
(37, 1, 'peserta', 'peserta-kartu', 'Cetak Kartu', 'manager/peserta_kartu', 'fa fa-circle-o', 5);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  ADD CONSTRAINT `cbt_jawaban_ibfk_1` FOREIGN KEY (`jawaban_soal_id`) REFERENCES `cbt_soal` (`soal_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  ADD CONSTRAINT `cbt_soal_ibfk_1` FOREIGN KEY (`soal_topik_id`) REFERENCES `cbt_topik` (`topik_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tesgrup`
--
ALTER TABLE `cbt_tesgrup`
  ADD CONSTRAINT `cbt_tesgrup_ibfk_1` FOREIGN KEY (`tstgrp_tes_id`) REFERENCES `cbt_tes` (`tes_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cbt_tesgrup_ibfk_2` FOREIGN KEY (`tstgrp_grup_id`) REFERENCES `cbt_user_grup` (`grup_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tes_soal`
--
ALTER TABLE `cbt_tes_soal`
  ADD CONSTRAINT `cbt_tes_soal_ibfk_1` FOREIGN KEY (`tessoal_tesuser_id`) REFERENCES `cbt_tes_user` (`tesuser_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cbt_tes_soal_ibfk_2` FOREIGN KEY (`tessoal_soal_id`) REFERENCES `cbt_soal` (`soal_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tes_soal_jawaban`
--
ALTER TABLE `cbt_tes_soal_jawaban`
  ADD CONSTRAINT `cbt_tes_soal_jawaban_ibfk_1` FOREIGN KEY (`soaljawaban_tessoal_id`) REFERENCES `cbt_tes_soal` (`tessoal_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cbt_tes_soal_jawaban_ibfk_2` FOREIGN KEY (`soaljawaban_jawaban_id`) REFERENCES `cbt_jawaban` (`jawaban_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tes_token`
--
ALTER TABLE `cbt_tes_token`
  ADD CONSTRAINT `cbt_tes_token_ibfk_1` FOREIGN KEY (`token_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cbt_tes_topik_set`
--
ALTER TABLE `cbt_tes_topik_set`
  ADD CONSTRAINT `cbt_tes_topik_set_ibfk_1` FOREIGN KEY (`tset_tes_id`) REFERENCES `cbt_tes` (`tes_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cbt_tes_topik_set_ibfk_2` FOREIGN KEY (`tset_topik_id`) REFERENCES `cbt_topik` (`topik_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tes_user`
--
ALTER TABLE `cbt_tes_user`
  ADD CONSTRAINT `cbt_tes_user_ibfk_1` FOREIGN KEY (`tesuser_tes_id`) REFERENCES `cbt_tes` (`tes_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cbt_tes_user_ibfk_2` FOREIGN KEY (`tesuser_user_id`) REFERENCES `cbt_user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_topik`
--
ALTER TABLE `cbt_topik`
  ADD CONSTRAINT `cbt_topik_ibfk_1` FOREIGN KEY (`topik_modul_id`) REFERENCES `cbt_modul` (`modul_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_user`
--
ALTER TABLE `cbt_user`
  ADD CONSTRAINT `cbt_user_ibfk_1` FOREIGN KEY (`user_grup_id`) REFERENCES `cbt_user_grup` (`grup_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`level`) REFERENCES `user_level` (`level`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_akses`
--
ALTER TABLE `user_akses`
  ADD CONSTRAINT `user_akses_ibfk_2` FOREIGN KEY (`kode_menu`) REFERENCES `user_menu` (`kode_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_akses_ibfk_3` FOREIGN KEY (`level`) REFERENCES `user_level` (`level`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
