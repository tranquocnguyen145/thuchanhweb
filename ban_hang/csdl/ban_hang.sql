-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 08, 2020 lúc 03:19 PM
-- Phiên bản máy phục vụ: 5.7.28
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ban_hang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hinh` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rong` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cao` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `hinh`, `rong`, `cao`) VALUES
(1, 'banner_2.png', '990px', '150px');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

DROP TABLE IF EXISTS `hoa_don`;
CREATE TABLE IF NOT EXISTS `hoa_don` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_nguoi_mua` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hang_duoc_mua` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `ten_nguoi_mua`, `email`, `dia_chi`, `dien_thoai`, `noi_dung`, `hang_duoc_mua`) VALUES
(1, 'a', 'tranquocnguyen145@gmail.com', '162,a,b', '18001000', 'a', '2[|||]1[|||||]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

DROP TABLE IF EXISTS `loai`;
CREATE TABLE IF NOT EXISTS `loai` (
  `maloai` varchar(13) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenloai` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`maloai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`maloai`, `tenloai`) VALUES
('AF1', 'Air Force 1'),
('AH', 'Air Huarache'),
('AM', 'Nike Air Max'),
('JD', 'Jordan'),
('NZ', 'Nike Zoom');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_doc`
--

DROP TABLE IF EXISTS `menu_doc`;
CREATE TABLE IF NOT EXISTS `menu_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `menu_doc`
--

INSERT INTO `menu_doc` (`id`, `ten`) VALUES
(1, 'Jordan'),
(2, 'Air Huarache'),
(3, 'Nike Air Max'),
(4, 'Air Force 1'),
(5, 'Nike Zoom');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_ngang`
--

DROP TABLE IF EXISTS `menu_ngang`;
CREATE TABLE IF NOT EXISTS `menu_ngang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `loai_menu` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `menu_ngang`
--

INSERT INTO `menu_ngang` (`id`, `ten`, `noi_dung`, `loai_menu`) VALUES
(1, 'Giới thiệu', '<p>Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /></p>', ''),
(2, 'Sản phẩm', '', 'san_pham'),
(3, 'Hướng dẫn  ', 'Nội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>', ''),
(4, 'Cách mua hàng', 'Nội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>', ''),
(5, 'Liên hệ', 'Nội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

DROP TABLE IF EXISTS `san_pham`;
CREATE TABLE IF NOT EXISTS `san_pham` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_bat` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(255) NOT NULL,
  `thuoc_menu` int(255) NOT NULL,
  `trang_chu` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sap_xep_trang_chu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `maloai` varchar(13) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `loai` (`maloai`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten`, `noi_dung`, `noi_bat`, `hinh_anh`, `gia`, `thuoc_menu`, `trang_chu`, `sap_xep_trang_chu`, `maloai`) VALUES
(1, 'Nike Air Jordan Twist panda', 'Nike Air Jordan Twist panda', 'co', '99.jpg', 55000, 1, '', '0', 'JD'),
(2, 'Nike Air jordan Spiderman', 'Nike Air jordan Spiderman', '', '31.jpg', 82000, 1, 'co', '7', 'JD'),
(3, 'Air Jordan 1 OFF-WHITE', 'Air Jordan 1 OFF-WHITE', '', '2.jpg', 86000, 1, '', '0', 'JD'),
(4, 'Air Jordan 1 Mid', 'Air Jordan 1 Mid', '', '32.jpg', 97000, 1, 'co', '3', 'JD'),
(5, 'Air Jordan Retro High OG', 'Air Jordan Retro High OG', '', '4.jpg', 42000, 3, '', '0', 'JD'),
(6, 'Nike Air Jordan 1 Low SB UNC', 'Nike Air Jordan 1 Low SB UNC', '', '5.jpg', 100000, 1, 'co', '0', 'JD'),
(7, 'Nike Air Force 1', 'Nike Air Force 1', '', '6.jpg', 120000, 1, 'co', '2', 'AF1'),
(8, 'Nike Air Force 1 Shadow Pale Lvory', 'Nike Air Force 1 Shadow Pale Lvory', '', '7.jpg', 80000, 1, '', '0', 'AF1'),
(9, 'Nike Air Force 1', 'Nike Air Force 1', '', '8.jpg', 160000, 1, '', '0', 'AF1'),
(10, 'Nike Air Force 1', 'Nike Air Force 1', '', '9.jpg', 160000, 3, 'co', '7', 'AF1'),
(11, 'Nike Air Max 97', 'Nike Air Max 97', '', '10.jpg', 135000, 1, 'co', '0', 'AM'),
(12, 'Nike Air Max 97', 'Nike Air Max 97 Trắng', '', '11.jpg', 55000, 1, 'co', '13', 'AM'),
(13, 'Nike Air Max 97 Core Black', 'Nike Air Max 97 Core Black', '', '12.jpg', 72000, 3, '', '0', 'AM'),
(14, 'Nike Air Huarache ', 'Nike Air Huarache Black', '', '13.jpg', 78000, 5, 'co', '11', 'AH'),
(15, 'Nike Air Huarache ', 'Nike Air Huarache White', '', '14.jpg', 123000, 1, 'co', '0', 'AH'),
(16, 'Nike Air Huarache BG', 'Nike Air Huarache BG', 'co', '15.jpg', 125000, 1, 'co', '5', 'AH'),
(17, 'Nike Air Huarache ', 'Nike Air Huarache Xám', '', '16.jpg', 99000, 1, '', '0', 'AH'),
(18, 'Nike Air Zoom Pegasus 35 Turbo', 'Nike Air Zoom Pegasus 35 Turbo', '', '17.jpg', 145000, 3, 'co', '1', 'NZ'),
(19, 'Nike Air Zoom WINFLO', 'Nike Air Zoom WINFLO', '', '18.jpg', 145000, 2, '', '0', 'NZ'),
(20, 'Nike Air Zoom', 'Nike Air Zoom Xám', '', '19.jpg', 170000, 3, '', '0', 'NZ'),
(21, 'Nike Jordan 1 Low Orange', 'Nike Jordan 1 Low Orange', '', '20.jpg', 85000, 1, '', '0', 'JD'),
(22, 'Nike Air Force 1', 'Nike Air Force 1 Cổ Cao', '', '21.jpg', 30000, 3, 'co', '8', 'AF1'),
(23, 'Nike Air Force 1', 'Nike Air Force 1 GD', '', '22.jpg', 40000, 1, '', '6', 'AF1'),
(24, 'Nike Air Max 98', 'Nike Air Max 98 Đỏ', '', '23.jpg', 50000, 2, '', '0', 'AM'),
(25, 'Nike Air Max 720', 'Nike Air Max 720', '', '24.jpg', 60000, 1, '', '9', 'AM'),
(26, 'Nike Air Huarache', 'Nike Air Huarache Red', '', '25.jpg', 70000, 5, 'co', '12', 'AH'),
(27, 'Nike Air Huarache OFF-White', 'Nike Air Huarache OFF-White', '', '26.jpg', 80000, 2, '', '0', 'AH'),
(28, 'Nike Air Zoom WINFLO 7', 'Nike Air Zoom WINFLO 7', '', '27.jpg', 90000, 5, '', '8', 'NZ'),
(29, 'Nike Air Zoom ', 'Nike Air Zoom ', '', '28.jpg', 100000, 4, '', '0', 'NZ'),
(30, 'Nike Air Zoom Red', 'Nike Air Zoom Red', '', '29.jpg', 110000, 2, '', '7', 'NZ'),
(31, 'Nike Air Force 1 Low East', 'Nike Air Force 1 Low East', '', '30.jpg', 120000, 3, 'co', '9', 'AF1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slideshow`
--

DROP TABLE IF EXISTS `slideshow`;
CREATE TABLE IF NOT EXISTS `slideshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hinh` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lien_ket` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slideshow`
--

INSERT INTO `slideshow` (`id`, `hinh`, `lien_ket`) VALUES
(1, '1_1.jpg', '#'),
(2, '1_2.jpg', '#'),
(3, '1_3.jpg', '#'),
(4, 'a_4.png', '#');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_tin_quan_tri`
--

DROP TABLE IF EXISTS `thong_tin_quan_tri`;
CREATE TABLE IF NOT EXISTS `thong_tin_quan_tri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ky_danh` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thong_tin_quan_tri`
--

INSERT INTO `thong_tin_quan_tri` (`id`, `ky_danh`, `mat_khau`) VALUES
(1, 'admin', 'c3284d0f94606de1fd2af172aba15bf3');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
