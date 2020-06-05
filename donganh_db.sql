-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 05, 2020 lúc 06:47 AM
-- Phiên bản máy phục vụ: 5.5.63-MariaDB
-- Phiên bản PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `donganh_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci,
  `admin_state` int(11) DEFAULT '1',
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(9, 'nguyen thu thuy', 'admin', '$2y$10$sYR1CeUP5x0cw2Rwc1N25uglpBtX520qXyolMIggKy.zEt6XUinRu', '', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bao_hanh`
--

CREATE TABLE `bao_hanh` (
  `id` bigint(20) NOT NULL,
  `mabaohanh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `product_id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `so_ngay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bao_hanh`
--

INSERT INTO `bao_hanh` (`id`, `mabaohanh`, `product_id`, `date_start`, `so_ngay`) VALUES
(1, '0987654321', 2046, '2020-04-29', 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci,
  `note_buyer` text COLLATE utf8_unicode_ci,
  `type` int(11) NOT NULL,
  `discount` bigint(20) NOT NULL,
  `percent` int(11) NOT NULL,
  `code_sale` text COLLATE utf8_unicode_ci,
  `sale_state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_account`, `session_id`, `total_price`, `total_cart`, `date_cart`, `id_orderState`, `note_cart`, `name_buyer`, `mail_buyer`, `phone_buyer`, `address_buyer`, `note_buyer`, `type`, `discount`, `percent`, `code_sale`, `sale_state`) VALUES
(4, NULL, 'ti5qj656cga4t0nt50rcb40vt2', 123000, NULL, '2020-04-29', NULL, NULL, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Hà Nội', 'nl', 2, 0, 0, NULL, 0),
(5, NULL, 'm6p4mptgiqrsmh2d40rbtqusn4', 123000, NULL, '2020-04-29', 1, '', 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Hà Nội', 'test', 1, 10000, 0, NULL, 0),
(6, NULL, '4ebp466jrujkrbvkgvqm6rjkh4', 123000, NULL, '2020-04-29', NULL, NULL, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Hà Nội', 'nl', 2, 10000, 0, NULL, 0),
(7, NULL, '4dg327n23edc0l4l7c88jjrn17', 223000, NULL, '2020-05-02', NULL, NULL, 'Test', 'ecotech.com.vn@gmail.com', '0979154336', '', '', 2, 0, 0, NULL, 0),
(8, NULL, 'o8ubatjgq9muvnr72er8a63hk3', 49, NULL, '2020-05-02', NULL, NULL, 'Đ', 't@gmail.com', '918722', '918722dd', 'S', 2, 0, 0, NULL, 0),
(9, NULL, 'bj0ssiv8kfmc3etr0f8tmsqv24', 223000, NULL, '2020-05-02', NULL, NULL, 'utyuyt', 'uytu@gmail.com', '65465465', 'kjghk', 'khjkhj', 2, 0, 0, NULL, 0),
(10, NULL, '48h4jqcsou6qga54f7741sq0g1', 0, NULL, '2020-05-05', 4, '', 'Huyền ', 'cafelink.org@gmail.com', '0987654321', '', '', 2, 0, 0, NULL, 0),
(11, NULL, 'm2v5hu92bett22v5flrtgq6vv7', 0, NULL, '2020-05-05', 4, '', 'Quang', 'tuan@gmail.com', '0987654321', 'Hà Nội', '', 2, 0, 0, NULL, 0),
(12, NULL, 'vbjbi6j5e43tqv9qkgl75ie2l6', 49, NULL, '2020-05-05', NULL, NULL, 'Huyền ', 'cafelink.org@gmail.com', '0987654321', '', '', 2, 0, 0, NULL, 0),
(13, NULL, 'v5o1g6hugpo44p9lduqa8gus37', 111000, NULL, '2020-05-05', NULL, NULL, 'Huyền ', 'cafelink.org@gmail.com', '0987654321', '', '', 2, 0, 0, NULL, 0),
(14, NULL, 'kd3nsk0tt490thuecbek33p8q3', 111000, NULL, '2020-05-07', NULL, NULL, 'Test', 'cagg@gmail.com', '1234567890', 'Hà Nội', '', 2, 0, 0, NULL, 0),
(15, NULL, '98qk93qlijffksfgub2segqnl3', 111000, NULL, '2020-05-08', NULL, NULL, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Hà Nội', 'test', 1, 0, 10, NULL, 0),
(16, NULL, 'n9c6duj6qdpijqn6gl918b6ce6', 111000, NULL, '2020-05-08', NULL, NULL, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Hà Nội', 'test', 2, 0, 10, NULL, 0),
(17, 13, 'kfkmjhdtqovg9ebs51er8jtaj1', 111000, NULL, '2020-05-08', NULL, NULL, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Hà Nội', 'test', 2, 0, 0, NULL, 0),
(20, 0, 'm7p8qs1d0s6cp0uvh48mlo29f3', 8800000, NULL, '2020-05-16', 2, '', 'Ngô Quang Hưng', 'dac@maytinhdpnganh.vn', '0983966661', 'Đông Anh, Hà Nội', 'Mua thử sản phẩm', 1, 0, 50, NULL, 0),
(21, 18, 'bqqi3vsg4e85iadkkct24v3i70', 8800000, NULL, '2020-05-16', 2, '', 'Ngô Quang Hưng', 'quanghungda1@gmail.com', '0983966661', 'Đông Anh, Hà Nội', '', 1, 1000000, 0, NULL, 0),
(24, 0, 'l3ans59h72fa79c9rqlff7sn17', 14470000, NULL, '2020-05-19', 4, '', 'Thanh Hải', 'quanghungda1@gmail.com', '0983966661', 'Đông Anh, Hà Nội', 'Mua thử hàng', 1, 1000000, 0, NULL, 0),
(26, 0, '3rif5o6oc16mfb43gjovrsp9m6', 6450000, NULL, '2020-05-19', 4, '', 'nguyen thu huong', 'quanghungda1@gmail.com', '123456789', 'Đông Anh, Hà Nội', 'gdfghhdfh', 1, 0, 0, NULL, 0),
(27, 0, 'p0hc1mjisurn5kjo9ihct6qb25', 2575000, NULL, '2020-05-19', 4, '', 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Hà Nội', 'test', 1, 1000000, 0, '12345678', 1),
(28, 0, 'cpqhmu410qholk27a1fgu4e4r6', 18577000, NULL, '2020-05-19', 4, '', 'Ngô Quang Hưng', 'quanghungda1@gmail.com', '0983966661', 'Đông Anh, Hà Nội', 'đs', 1, 1000000, 0, '12345678', 1),
(29, 0, '297eo95nuk6s8mep2fabvg4q66', 7700000, NULL, '2020-05-19', 4, '', 'Ngô Quang Hưng', 'quanghungda1@gmail.com', '0983966661', 'Đông Anh, Hà Nội', 'fdsf', 1, 0, 10, '87654321', 1),
(30, 0, 'to3givnidr24vta1jpp4c7ru53', 5150000, NULL, '2020-05-20', NULL, NULL, 'Hung', 'hung@gmail.com', '0987655551', 'Hà nội', '', 2, 0, 0, '', 0),
(31, 0, 'olsiq3bnf3ddouncfohf31e2e1', 2575000, NULL, '2020-05-20', NULL, NULL, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Hà Nội', 'test', 2, 0, 0, '', 0),
(33, 0, 'hfuqd73msjkbsnqo4k3l4rdce0', 2575000, NULL, '2020-05-21', NULL, NULL, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Hà Nội', 'test', 2, 0, 0, '', 0),
(34, 0, '9fo7rk6be3ej6sbtj4ueufpo94', 7700000, NULL, '2020-05-21', NULL, NULL, 'Ngô Quang Hưng', 'quanghungda1@gmail.com', '0983966661', 'Đông Anh, Hà Nội', '', 2, 0, 0, '', 0),
(35, 0, 'ooptp9jndoc6chr7pa3v6jban0', 22542000, NULL, '2020-05-21', 4, '', 'Ngô Quang Hưng', 'quanghungda1@gmail.com', '0983966661', 'Đông Anh, Hà Nội', '', 1, 0, 0, '', 1),
(36, 0, 'icip7kqgai8hpnv5qiaodglpe3', 15288000, NULL, '2020-05-23', 4, '', 'Ngô Quang Hưng', 'quanghungda1@gmail.com', '0983966661', 'Đông Anh, Hà Nội', '', 1, 100000, 0, '0ZO2PHu2', 1),
(37, 0, 'qscb3dhf8v7utfinravuco9i51', 1249000, NULL, '2020-05-27', NULL, NULL, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Hà Nội', 'test', 2, 0, 0, '', 0),
(38, 0, '8egnj1oovuj7uol28qj1p50vh1', 179000, NULL, '2020-05-29', NULL, NULL, 'Đ', 't@gmail.com', '918722', '918722dd', '', 2, 0, 0, '', 0),
(39, 0, 'vbta456ocjlhlnj64jqft1v4e4', 179000, NULL, '2020-05-29', NULL, NULL, 'Đ', 't@gmail.com', '918722', '918722dd', '', 2, 0, 0, '', 0),
(40, 0, 'gp79kq787km8bmn07igh4joa52', 417000, NULL, '2020-05-29', NULL, NULL, 'nguyen van test', 'test@gmail.com', '0988888888', 'ggg', 'ggg', 2, 0, 0, '', 0),
(41, 0, '4e2tf70i013biie8p34je4j7a3', 179000, NULL, '2020-05-30', NULL, NULL, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Hà Nội', 'test', 2, 0, 0, '', 0),
(42, 0, 'r8qaa53nfhpc8pvgtf3inddcu7', 3920000, NULL, '2020-05-30', NULL, NULL, 'F', 't@gmail.com', '918722', '918722dd', '', 2, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cartdetail`
--

INSERT INTO `cartdetail` (`id_cartDetail`, `id_product`, `session_id`, `price_product`, `qyt_product`, `totalprice_product`, `subInfo1`, `id_color`, `id_size`, `color`, `size`, `id_cart`) VALUES
(4, 2045, 'ti5qj656cga4t0nt50rcb40vt2', 123000, 1, 123000, NULL, 0, 0, '', '', 4),
(5, 2045, 'm6p4mptgiqrsmh2d40rbtqusn4', 123000, 1, 123000, NULL, 0, 0, '', '', 5),
(6, 2045, '4ebp466jrujkrbvkgvqm6rjkh4', 123000, 1, 123000, NULL, 0, 0, '', '', 6),
(7, 2046, '4dg327n23edc0l4l7c88jjrn17', 223000, 1, 223000, NULL, 0, 0, '', '', 7),
(8, 2042, '4dg327n23edc0l4l7c88jjrn17', 0, 1, 0, NULL, 0, 0, '', '', 7),
(9, 2036, 'o8ubatjgq9muvnr72er8a63hk3', 49, 1, 49, NULL, 0, 0, '', '', 8),
(10, 2046, 'bj0ssiv8kfmc3etr0f8tmsqv24', 223000, 1, 223000, NULL, 0, 0, '', '', 9),
(11, 2036, '48h4jqcsou6qga54f7741sq0g1', 49, 1, 49, NULL, 0, 0, '', '', 10),
(12, 2046, 'm2v5hu92bett22v5flrtgq6vv7', 111000, 4, 444000, NULL, 0, 0, '', '', 11),
(13, 2036, 'm2v5hu92bett22v5flrtgq6vv7', 49, 5, 245, NULL, 0, 0, '', '', 11),
(14, 2036, 'vbjbi6j5e43tqv9qkgl75ie2l6', 49, 1, 49, NULL, 0, 0, '', '', 12),
(15, 2046, 'v5o1g6hugpo44p9lduqa8gus37', 111000, 1, 111000, NULL, 0, 0, '', '', 13),
(16, 2046, 'kd3nsk0tt490thuecbek33p8q3', 111000, 1, 111000, NULL, 0, 0, '', '', 14),
(17, 2046, '98qk93qlijffksfgub2segqnl3', 111000, 1, 111000, NULL, 0, 0, '', '', 15),
(18, 2046, 'n9c6duj6qdpijqn6gl918b6ce6', 111000, 1, 111000, NULL, 0, 0, '', '', 16),
(19, 2046, 'kfkmjhdtqovg9ebs51er8jtaj1', 111000, 1, 111000, NULL, 0, 0, '', '', 17),
(27, 2135, 'm7p8qs1d0s6cp0uvh48mlo29f3', 8800000, 1, 8800000, NULL, 0, 0, '', '', 20),
(28, 2135, 'bqqi3vsg4e85iadkkct24v3i70', 8800000, 1, 8800000, NULL, 0, 0, '', '', 21),
(31, 2071, 'l3ans59h72fa79c9rqlff7sn17', 7700000, 1, 7700000, NULL, 0, 0, '', '', 24),
(32, 2062, 'l3ans59h72fa79c9rqlff7sn17', 3920000, 1, 3920000, NULL, 0, 0, '', '', 24),
(33, 2077, 'l3ans59h72fa79c9rqlff7sn17', 2850000, 1, 2850000, NULL, 0, 0, '', '', 24),
(37, 2069, '3rif5o6oc16mfb43gjovrsp9m6', 4700000, 1, 4700000, NULL, 0, 0, '', '', 26),
(38, 2081, '3rif5o6oc16mfb43gjovrsp9m6', 1750000, 1, 1750000, NULL, 0, 0, '', '', 26),
(39, 2058, 'p0hc1mjisurn5kjo9ihct6qb25', 2575000, 1, 2575000, NULL, 0, 0, '', '', 27),
(40, 2062, 'cpqhmu410qholk27a1fgu4e4r6', 3920000, 1, 3920000, NULL, 0, 0, '', '', 28),
(41, 2071, 'cpqhmu410qholk27a1fgu4e4r6', 7700000, 1, 7700000, NULL, 0, 0, '', '', 28),
(42, 2070, 'cpqhmu410qholk27a1fgu4e4r6', 5899000, 1, 5899000, NULL, 0, 0, '', '', 28),
(43, 2112, 'cpqhmu410qholk27a1fgu4e4r6', 949000, 1, 949000, NULL, 0, 0, '', '', 28),
(44, 2171, 'cpqhmu410qholk27a1fgu4e4r6', 109000, 1, 109000, NULL, 0, 0, '', '', 28),
(45, 2071, '297eo95nuk6s8mep2fabvg4q66', 7700000, 1, 7700000, NULL, 0, 0, '', '', 29),
(46, 2058, 'to3givnidr24vta1jpp4c7ru53', 2575000, 2, 5150000, NULL, 0, 0, '', '', 30),
(47, 2058, 'olsiq3bnf3ddouncfohf31e2e1', 2575000, 1, 2575000, NULL, 0, 0, '', '', 31),
(49, 2058, 'hfuqd73msjkbsnqo4k3l4rdce0', 2575000, 1, 2575000, NULL, 0, 0, '', '', 33),
(50, 2071, '9fo7rk6be3ej6sbtj4ueufpo94', 7700000, 1, 7700000, NULL, 0, 0, '', '', 34),
(51, 2093, 'ooptp9jndoc6chr7pa3v6jban0', 5700000, 1, 5700000, NULL, 0, 0, '', '', 35),
(52, 2099, 'ooptp9jndoc6chr7pa3v6jban0', 1030000, 1, 1030000, NULL, 0, 0, '', '', 35),
(53, 2111, 'ooptp9jndoc6chr7pa3v6jban0', 650000, 1, 650000, NULL, 0, 0, '', '', 35),
(54, 2179, 'ooptp9jndoc6chr7pa3v6jban0', 219000, 1, 219000, NULL, 0, 0, '', '', 35),
(55, 2188, 'ooptp9jndoc6chr7pa3v6jban0', 1989000, 1, 1989000, NULL, 0, 0, '', '', 35),
(56, 2171, 'ooptp9jndoc6chr7pa3v6jban0', 79000, 1, 79000, NULL, 0, 0, '', '', 35),
(57, 2058, 'ooptp9jndoc6chr7pa3v6jban0', 2575000, 5, 12875000, NULL, 0, 0, '', '', 35),
(58, 2062, 'icip7kqgai8hpnv5qiaodglpe3', 3920000, 2, 7840000, NULL, 0, 0, '', '', 36),
(59, 2066, 'icip7kqgai8hpnv5qiaodglpe3', 2220000, 1, 2220000, NULL, 0, 0, '', '', 36),
(60, 2171, 'icip7kqgai8hpnv5qiaodglpe3', 79000, 1, 79000, NULL, 0, 0, '', '', 36),
(61, 2190, 'icip7kqgai8hpnv5qiaodglpe3', 2349000, 1, 2349000, NULL, 0, 0, '', '', 36),
(62, 2082, 'icip7kqgai8hpnv5qiaodglpe3', 2800000, 1, 2800000, NULL, 0, 0, '', '', 36),
(63, 2346, 'qscb3dhf8v7utfinravuco9i51', 1249000, 1, 1249000, NULL, 0, 0, '', '', 37),
(64, 2177, '8egnj1oovuj7uol28qj1p50vh1', 179000, 1, 179000, NULL, 0, 0, '', '', 38),
(65, 2177, 'vbta456ocjlhlnj64jqft1v4e4', 179000, 1, 179000, NULL, 0, 0, '', '', 39),
(66, 2176, 'gp79kq787km8bmn07igh4joa52', 139000, 3, 417000, NULL, 0, 0, '', '', 40),
(67, 2177, '4e2tf70i013biie8p34je4j7a3', 179000, 1, 179000, NULL, 0, 0, '', '', 41),
(68, 2062, 'r8qaa53nfhpc8pvgtf3inddcu7', 3920000, 1, 3920000, NULL, 0, 0, '', '', 42);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `code_sale`
--

CREATE TABLE `code_sale` (
  `id` int(11) NOT NULL,
  `code` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `money` bigint(20) NOT NULL,
  `percent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `code_sale`
--

INSERT INTO `code_sale` (`id`, `code`, `money`, `percent`) VALUES
(8, '3FR0RXg1', 100000, 0),
(9, '8TY0YIi7', 100000, 0),
(10, '1XA3SAq7', 100000, 0),
(11, '1DA9PMv4', 100000, 0),
(12, '8MM8KDg6', 0, 10),
(13, '1ID6MNv7', 0, 10),
(14, '5JO0IMl5', 0, 10),
(15, '8NG3ERf7', 0, 10),
(16, '3NE0TOj5', 0, 10),
(17, '0OH6OZx8', 0, 10),
(18, '3FB7WWe5', 100000, 0),
(19, '5PZ0NIi5', 100000, 0),
(20, '6NC4QDg5', 100000, 0),
(21, '4RZ8ZCp4', 100000, 0),
(22, '6BM8FAe2', 150000, 0),
(23, '6OM9FOp3', 150000, 0),
(24, '2SV6FVv9', 150000, 0),
(25, '5DY6ERn9', 150000, 0),
(26, '4LJ1PEk4', 150000, 0),
(27, '6NE5GJe7', 0, 15),
(28, '1PQ9DQx1', 0, 15),
(29, '7ON9GOl6', 0, 15),
(30, '7PP1FDr7', 0, 15),
(31, '2IZ6RYl5', 0, 15),
(32, '6WH5YMb8', 150000, 0),
(33, '0JR7MWr1', 150000, 0),
(34, '6KX0TZf8', 150000, 0),
(35, '5FU9XNx0', 150000, 0),
(36, '6RN6XSv4', 150000, 0),
(37, '4ZS4VVu8', 150000, 0),
(38, '9YK6CUo6', 150000, 0),
(39, '9IU9AIj1', 0, 20),
(40, '1GI6BQs1', 0, 20),
(41, '6PQ1BQq9', 0, 20),
(42, '7RO4SNx2', 0, 20),
(43, '0AM3RGn0', 0, 20),
(44, '1DS5SWb2', 0, 20),
(45, '3RC0HUe1', 0, 20),
(46, '9LQ7RUn6', 0, 20),
(47, '9TA6RTw8', 0, 20),
(48, '3SY4XBb4', 0, 20),
(49, '8NZ1ATa8', 0, 20),
(50, '6SE2EOl9', 0, 20),
(51, '4FL5ADd4', 0, 20),
(52, '2IM6BIf8', 0, 20),
(53, '8CR7IQp9', 0, 20),
(54, '8JR1MKr7', 0, 20),
(55, '5UN4CQh3', 0, 20),
(56, '2MT2XCl2', 0, 20),
(57, '9UJ9WYx9', 0, 20),
(58, '7OD9GMk7', 0, 20),
(59, '7VD2UDx9', 0, 20),
(60, '3FU2TNk0', 0, 20),
(61, '0PA6VKi8', 0, 20),
(62, '2LP9LPu0', 0, 20),
(63, '0HJ2DOv5', 0, 20),
(64, '7MH1JBn8', 0, 20),
(65, '1DX5RKi7', 0, 20),
(66, '2FZ3NKe7', 0, 20),
(67, '7AN7PFg0', 0, 20),
(68, '4IS6FAu4', 0, 20),
(69, '9TE9WOi0', 0, 20),
(70, '0DQ8CAu9', 0, 20),
(71, '2LF0ETj4', 0, 20),
(72, '9PE8LEx0', 0, 20),
(73, '5AP6NVk2', 0, 20),
(74, '9EK0QEn7', 0, 20),
(75, '4YN0FYo5', 0, 20),
(76, '4NP0AJq3', 0, 20),
(77, '9YK4SSj3', 0, 20),
(78, '2LO9YHd1', 0, 20),
(79, '6QR7MDg9', 200000, 0),
(80, '7RE9VYj4', 200000, 0),
(81, '9ZS5JXg1', 200000, 0),
(82, '3JD5CNd8', 200000, 0),
(83, '0AD1JMa9', 200000, 0),
(84, '4JL5CRh8', 200000, 0),
(85, '9WM5WCd9', 200000, 0),
(86, '5CH7ZQa0', 200000, 0),
(87, '9EP7XZm8', 200000, 0),
(88, '5VM7ZIh2', 200000, 0),
(89, '9GV5XPq9', 200000, 0),
(90, '4KG9XJr1', 200000, 0),
(91, '3YY2HMh9', 200000, 0),
(92, '7OY2ZGp4', 200000, 0),
(93, '9UM1ZZn6', 200000, 0),
(94, '0IH9XTg8', 200000, 0),
(95, '4OF9ZKa1', 200000, 0),
(96, '7TW7JPd9', 200000, 0),
(97, '5PH2AUo3', 200000, 0),
(98, '7TN0LNg3', 200000, 0),
(99, '7DY2LGa8', 200000, 0),
(100, '3ZF8EFj0', 200000, 0),
(101, '0HS1OQy6', 200000, 0),
(102, '7SX1BCp2', 200000, 0),
(103, '1DE6WSv1', 200000, 0),
(104, '5LX6PLt0', 200000, 0),
(105, '3ZW6FRm6', 200000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci,
  `web_meta` text COLLATE utf8_unicode_ci,
  `web_des` text COLLATE utf8_unicode_ci,
  `web_keyword` text COLLATE utf8_unicode_ci,
  `web_logo` text COLLATE utf8_unicode_ci,
  `web_hotline` text COLLATE utf8_unicode_ci,
  `web_phone` text COLLATE utf8_unicode_ci,
  `web_email` text COLLATE utf8_unicode_ci,
  `content_home1` text COLLATE utf8_unicode_ci,
  `content_home2` text COLLATE utf8_unicode_ci,
  `content_home3` text COLLATE utf8_unicode_ci,
  `content_home4` text COLLATE utf8_unicode_ci,
  `content_home5` text COLLATE utf8_unicode_ci,
  `content_home6` text COLLATE utf8_unicode_ci,
  `content_home7` text COLLATE utf8_unicode_ci,
  `content_home8` text COLLATE utf8_unicode_ci,
  `content_home9` text COLLATE utf8_unicode_ci,
  `content_home10` text COLLATE utf8_unicode_ci,
  `facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google_map` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slideshow_home` text COLLATE utf8_unicode_ci,
  `banner1` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `link_slide1` text COLLATE utf8_unicode_ci NOT NULL,
  `link_slide2` text COLLATE utf8_unicode_ci NOT NULL,
  `link_slide3` text COLLATE utf8_unicode_ci NOT NULL,
  `link_banner` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `facebook`, `google`, `twitter`, `google_map`, `youtube`, `icon_web`, `slideshow_home`, `banner1`, `banner2`, `link_slide1`, `link_slide2`, `link_slide3`, `link_banner`) VALUES
(1, 'Công ty TNHH Máy tính Đông Anh', '', 'Công ty TNHH Máy tính Đông Anh', 'Công ty TNHH Máy tính Đông Anh', 'Untitled-1-01.png', '', '', 'Công ty TNHH Máy tính Đông Anh ', 'Số 15, Thượng Phúc, Bắc Hồng, Đông Anh, Hà Nội', 'dac@maytinhdonganh.vn', '09839.66661', '', '', '096.250.1886', '', '', '', '', 'https://www.facebook.com/quanghungda1', 'https://plus.google.com/discover', 'https://twitter.com', '', '<p><iframe frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/watch?v=3LgwAXfndfc\" width=\"560\"></iframe></p>', 'Untitled-1-01.png', '[\"{\\\"image\\\":\\\"357.jpg\\\"}\"]', 'Untitled-1.jpg', '', 'https://maytinhdonganh.vn/', 'https://maytinhdonganh.vn/', 'https://maytinhdonganh.vn/', 'https://maytinhdonganh.vn/');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_languages`
--

CREATE TABLE `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci,
  `lang_web_meta` text COLLATE utf8_unicode_ci,
  `lang_web_des` text COLLATE utf8_unicode_ci,
  `lang_web_keyword` text COLLATE utf8_unicode_ci,
  `lang_web_hotline` text COLLATE utf8_unicode_ci,
  `lang_web_phone` text COLLATE utf8_unicode_ci,
  `lang_web_email` text COLLATE utf8_unicode_ci,
  `lang_content_home1` text COLLATE utf8_unicode_ci,
  `lang_content_home2` text COLLATE utf8_unicode_ci,
  `lang_content_home3` text COLLATE utf8_unicode_ci,
  `lang_content_home4` text COLLATE utf8_unicode_ci,
  `lang_content_home5` text COLLATE utf8_unicode_ci,
  `lang_content_home6` text COLLATE utf8_unicode_ci,
  `lang_content_home7` text COLLATE utf8_unicode_ci,
  `lang_content_home8` text COLLATE utf8_unicode_ci,
  `lang_content_home9` text COLLATE utf8_unicode_ci,
  `lang_content_home10` text COLLATE utf8_unicode_ci,
  `facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google_map` text COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(20000) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `edit_state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `facebook`, `google`, `twitter`, `google_map`, `youtube`, `icon_web`, `edit_state`) VALUES
(1, 1, 'vn', 'Công ty TNHH Máy tính Đông Anh', '', 'Công ty TNHH Máy tính Đông Anh', 'Công ty TNHH Máy tính Đông Anh', '', '', 'Công ty TNHH Máy tính Đông Anh ', 'Số 15, Thượng Phúc, Bắc Hồng, Đông Anh, Hà Nội', 'dac@maytinhdonganh.vn', '09839.66661', '', '', '096.250.1886', '', '', '', '', 'https://www.facebook.com/quanghungda1', 'https://plus.google.com/discover', 'https://twitter.com', '<p><iframe frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59587.97785448771!2d105.80194413492788!3d21.02273601629448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab9bd9861ca1%3A0xe7887f7b72ca17a9!2zSGFub2ksIEhvw6BuIEtp4bq_bSwgSGFub2k!5e0!3m2!1sen!2s!4v1513235284242\" style=\"border:0\" width=\"600\"></iframe></p>\r\n', '<p><iframe frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/watch?v=3LgwAXfndfc\" width=\"560\"></iframe></p>', '', 1),
(2, 1, 'en', '', '', '', '', '', '', '', 'V-ONION Organic for your family', 'banhang@rio.net.vn', '+84 971 765 775', 'Số 12 ngõ 5, Tân Mỹ, P.Mỹ Đình 1, Q.Nam Từ Liêm, Hà Nội', 'Our factory start to operate in 2012, selling to trading companies to bring cargo to foreign countries. And in 2015, we establish our own company to export to customer directly. \r\nOur plywood is exported to Thailand, Indonesia, Korea, Malaysia, Taiwan and other countries.\r\n', 'MAIN PRODUCTS', 'Plywood, Core Veneer, Film faced plywood, Finger Joint , Sawn timber', 'CLIENTS - PARTNERS', 'TIMBER RELATED STORIES', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `faqs`
--

INSERT INTO `faqs` (`id`, `name`, `note`) VALUES
(1, 'Câu hỏi một', 'abc'),
(3, 'Câu hỏi hai', 'hai'),
(4, 'Câu hỏi ba', 'baa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`) VALUES
(18, 'Nguyễn Việt Hưng', 'viethung95cute@gmail.com', '', '', 'sdfgsdfg', '2018-05-02 12:01:44'),
(19, 'Việt Hưng', 'viethung95cute@gmail.com', '1672523165', '', 'Tesst  Liên hệ lần 1 ^_^ -_- :D :v :))', '2018-05-07 02:40:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci,
  `menu_sort_order` int(11) DEFAULT '0',
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT '0',
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(224, 'Trang chủ', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(225, 'Check TTBH', 0, 8, 'check-serial', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(226, 'Tin tức', 0, 6, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(228, 'Liên hệ', 0, 9, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(229, 'Xây dựng cấu hình', 0, 8, 'xay-dung-cau-hinh-pc', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(230, 'Tuyển dụng', 0, 5, '', 0, 4, 0, 0, 0, 1, 0, 0, 0, NULL),
(231, 'Khuyến mại', 0, 5, '', 0, 1, 0, 0, 0, 1, 0, 0, 0, NULL),
(232, 'Chính sách', 0, 5, '', 0, 6, 0, 0, 0, 1, 0, 0, 0, NULL),
(233, 'Chính sách đại lý', 1, 5, '', 0, 7, 0, 0, 0, 1, 232, 0, 0, NULL),
(234, 'Chính sách giao hàng', 2, 5, '', 0, 8, 0, 0, 0, 1, 232, 0, 0, NULL),
(235, 'Chính sách bảo trì', 3, 5, '', 0, 9, 0, 0, 0, 1, 232, 0, 0, NULL),
(236, 'Chính sách bảo hành', 4, 5, '', 0, 10, 0, 0, 0, 1, 232, 0, 0, NULL),
(237, 'Chính sách tiết kiệm', 5, 5, '', 0, 11, 0, 0, 0, 1, 232, 0, 0, NULL),
(238, 'Chính sách thanh toán', 6, 5, '', 0, 12, 0, 0, 0, 1, 232, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(425, 'vn', 'Trang chủ', 0, '', 224),
(426, 'en', 'Trang chủ', 0, '', 224),
(427, 'vn', 'Check TTBH', 0, 'check-serial', 225),
(428, 'en', 'Giới thiệu', 0, '', 225),
(429, 'vn', 'Tin tức', 0, '', 226),
(430, 'en', 'Tin tức', 0, '', 226),
(433, 'vn', 'Liên hệ', 0, '', 228),
(434, 'en', 'Liên hệ', 0, '', 228),
(435, 'vn', 'Xây dựng cấu hình', 0, 'xay-dung-cau-hinh-pc', 229),
(436, 'en', 'Xây dựng cấu hình', 0, 'xay-dung-cau-hinh', 229),
(437, 'vn', 'Tuyển dụng', 0, '', 230),
(438, 'en', 'Tuyển dụng', 0, '', 230),
(439, 'vn', 'Khuyến mại', 0, '', 231),
(440, 'en', 'Khuyến mại', 0, '', 231),
(441, 'vn', 'Chính sách', 0, '', 232),
(442, 'en', 'Chính sách', 0, '', 232),
(443, 'vn', 'Chính sách đại lý', 0, '', 233),
(444, 'en', 'Chính sách đại lý', 0, '', 233),
(445, 'vn', 'Chính sách giao hàng', 0, '', 234),
(446, 'en', 'Chính sách giao hàng', 0, '', 234),
(447, 'vn', 'Chính sách bảo trì', 0, '', 235),
(448, 'en', 'Chính sách bảo trì', 0, '', 235),
(449, 'vn', 'Chính sách bảo hành', 0, '', 236),
(450, 'en', 'Chính sách bảo hành', 0, '', 236),
(451, 'vn', 'Chính sách tiết kiệm', 0, '', 237),
(452, 'en', 'Chính sách tiết kiệm', 0, '', 237),
(453, 'vn', 'Chính sách thanh toán', 0, '', 238),
(454, 'en', 'Chính sách thanh toán', 0, '', 238);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

CREATE TABLE `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type_languages`
--

CREATE TABLE `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mua_tra_gop`
--

CREATE TABLE `mua_tra_gop` (
  `id` bigint(20) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `phone` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `product` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `mua_tra_gop`
--

INSERT INTO `mua_tra_gop` (`id`, `name`, `email`, `phone`, `address`, `note`, `product`) VALUES
(1, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Hà Nội', 'test', '[\"2036\",\"2037\"]'),
(2, 'nguyen van test', 'test@gmail.com', '0988888888', 'ha noi', 'ttt', '[\"2176\"]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci,
  `news_des` text COLLATE utf8_unicode_ci,
  `news_content` text COLLATE utf8_unicode_ci,
  `news_img` text COLLATE utf8_unicode_ci,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `news_sub_info1` text COLLATE utf8_unicode_ci,
  `news_sub_info2` text COLLATE utf8_unicode_ci,
  `news_sub_info3` text COLLATE utf8_unicode_ci,
  `news_sub_info4` text COLLATE utf8_unicode_ci,
  `news_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `newstag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `newstag_arr`) VALUES
(69, 'SINH NHẬT RỘN RÀNG, NHẬN NGÀN QUÀ TẶNG CÙNG DELL', 'Chương trình không áp dụng cho các sản phẩm kênh dự án hoặc đang được bán lẻ trên thị trường thuộc dòng sản phẩm: Latitude, Optiplex…', '<p><strong>2. Sản phẩm, dịch vụ khuyến m&atilde;i:</strong>&nbsp;Bất kỳ m&aacute;y t&iacute;nh x&aacute;ch tay, m&aacute;y t&iacute;nh để b&agrave;n ch&iacute;nh h&atilde;ng Dell thuộc c&aacute;c d&ograve;ng sản&nbsp;<strong>phẩm XPS, Inspiron &amp; Vostro</strong>&nbsp;c&oacute; c&agrave;i sẵn&nbsp;<strong>HĐH Windows 10 bản quyền</strong>&nbsp;được ph&acirc;n phối qua k&ecirc;nh b&aacute;n lẻ từ c&aacute;c nh&agrave; ph&acirc;n phối ch&iacute;nh thức của Dell tại Việt Nam.</p>\r\n\r\n<p>-&nbsp;&nbsp;<strong>C</strong></p>\r\n\r\n<p><strong>2. Sản phẩm, dịch vụ khuyến m&atilde;i:</strong>&nbsp;Bất kỳ m&aacute;y t&iacute;nh x&aacute;ch tay, m&aacute;y t&iacute;nh để b&agrave;n ch&iacute;nh h&atilde;ng Dell thuộc c&aacute;c d&ograve;ng sản&nbsp;<strong>phẩm XPS, Inspiron &amp; Vostro</strong>&nbsp;c&oacute; c&agrave;i sẵn&nbsp;<strong>HĐH Windows 10 bản quyền</strong>&nbsp;được ph&acirc;n phối qua k&ecirc;nh b&aacute;n lẻ từ c&aacute;c nh&agrave; ph&acirc;n phối ch&iacute;nh thức của Dell tại Việt Nam.</p>\r\n\r\n<p>-&nbsp;&nbsp;<strong>Chương tr&igrave;nh kh&ocirc;ng &aacute;p dụng cho c&aacute;c sản phẩm k&ecirc;nh dự &aacute;n hoặc đang được b&aacute;n lẻ tr&ecirc;n thị trường thuộc d&ograve;ng sản phẩm: Latitude, Optiplex&hellip;</strong></p>\r\n\r\n<p><strong>3. Thời gian khuyến m&atilde;i:</strong>&nbsp;từ&nbsp;<strong>05/09/2019</strong>&nbsp;đến&nbsp;<strong>26/09/2019</strong>&nbsp;hoặc&nbsp;<strong>đến khi hết qu&agrave; tặng.</strong></p>\r\n\r\n<p><strong>4. Phạm vi khuyến m&atilde;i:</strong>&nbsp;c&aacute;c đại l&yacute; uỷ quyền của Dell tại c&aacute;c tỉnh/tp tr&ecirc;n to&agrave;n quốc.</p>\r\n\r\n<p><strong>5. Đối tượng khuyến m&atilde;i:</strong>&nbsp;Người ti&ecirc;u d&ugrave;ng cuối khi mua m&aacute;y t&iacute;nh ch&iacute;nh h&atilde;ng của Dell thuộc c&aacute;c d&ograve;ng sản phẩm&nbsp;<strong>XPS, Inspiron &amp; Vostro</strong>&nbsp;c&oacute; c&agrave;i sẵn&nbsp;<strong>HĐH Windows 10 bản quyền</strong>&nbsp;trong thời gian khuyến m&atilde;i.</p>\r\n\r\n<p><strong>3. Thời gian khuyến m&atilde;i:</strong>&nbsp;từ&nbsp;<strong>05/09/2019</strong>&nbsp;đến&nbsp;<strong>26/09/2019</strong>&nbsp;hoặc&nbsp;<strong>đến khi hết qu&agrave; tặng.</strong></p>\r\n\r\n<p><strong>4. Phạm vi khuyến m&atilde;i:</strong>&nbsp;c&aacute;c đại l&yacute; uỷ quyền của Dell tại c&aacute;c tỉnh/tp tr&ecirc;n to&agrave;n quốc.</p>\r\n\r\n<p><strong>5. Đối tượng khuyến m&atilde;i:</strong>&nbsp;Người ti&ecirc;u d&ugrave;ng cuối khi mua m&aacute;y t&iacute;nh ch&iacute;nh h&atilde;ng của Dell thuộc c&aacute;c d&ograve;ng sản phẩm&nbsp;<strong>XPS, Inspiron &amp; Vostro</strong>&nbsp;c&oacute; c&agrave;i sẵn&nbsp;<strong>HĐH Windows 10 bản quyền</strong>&nbsp;trong thời gian khuyến m&atilde;i.</p>\r\n', 'logomy.PNG', 0, 5, '', '2020-04-11 16:04:13', '2020-05-07 14:05:15', 1, '', '', '', '', '', 'SINH NHẬT RỘN RÀNG, NHẬN NGÀN QUÀ TẶNG CÙNG DELL', '', 'sinh-nhat-ron-rang-nhan-ngan-qua-tang-cung-dell', '', 9, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat`
--

CREATE TABLE `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci,
  `newscat_des` text COLLATE utf8_unicode_ci,
  `newscat_content` text COLLATE utf8_unicode_ci,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `newscat_img` text COLLATE utf8_unicode_ci,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(1, 'Tin tức khuyến mãi', '', '', 0, 0, '2018-09-28 11:09:03', NULL, 1, 'bargain.png', '', '', '', '', '', 'Tin tức khuyến mãi', '', 'tin-tuc-khuyen-mai', 'minh phuong toto, Minh Phương TOTO, Showroom Minh Phương, Showroom Minh Phuong, Minh Phương Showroom, Minh Phuong Showroom', 1),
(2, 'Cẩm nang kiến thức', '', '', 0, 0, '2018-09-14 17:09:24', NULL, 1, 'article.png', '', '', '', '', '', 'Cẩm nang kiến thức', '', 'cam-nang-kien-thuc', '', 1),
(3, 'Tin tức sản phẩm', '', '', 0, 0, '2018-09-28 11:09:54', NULL, 1, '3d-printing-software.png', '', '', '', '', '', 'Tin tức sản phẩm', '', 'tin-tuc-san-pham', 'minh phuong toto, Minh Phương TOTO, Showroom Minh Phương, Showroom Minh Phuong, Minh Phương Showroom, Minh Phuong Showroom', 1),
(4, 'Tuyển dụng', '', '', 0, 0, '2020-04-11 03:04:21', NULL, 1, 'money.png', '', '', '', '', '', 'Tuyển dụng', '', 'tuyen-dung', 'minh phuong toto, Minh Phương TOTO, Showroom Minh Phương, Showroom Minh Phuong, Tin tức Minh Phương Showroom, tin tuc Minh Phuong Showroom, Tin tức, tin tuc', 1),
(5, 'Tin tức', '', '', 0, 0, '2018-09-14 17:09:55', NULL, 1, 'newspaper.png', '', '', '', '', '', 'Tin tức', '', 'tin-tuc-show-room', '', 1),
(6, 'Chính sách', '', '', 0, 0, '2020-05-15 15:05:40', NULL, 1, NULL, '', '', '', '', '', 'Chính sách', '', 'chinh-sach', '', 9),
(7, 'Chính sách đại lý', '', '', 0, 0, '2020-05-15 15:05:33', NULL, 1, '', '', '', '', '', '', 'Chính sách đại lý', '', 'chinh-sach-dai-ly', '', 9),
(8, 'Chính sách giao hàng', '', '', 0, 0, '2020-05-15 15:05:51', NULL, 1, '', '', '', '', '', '', 'Chính sách giao hàng', '', 'chinh-sach-giao-hang', '', 9),
(9, 'Chính sách bảo trì', '', '', 0, 0, '2020-05-15 22:05:05', NULL, 1, '', '', '', '', '', '', 'Chính sách bảo trì', '', 'chinh-sach-bao-tri', '', NULL),
(10, 'Chính sách bảo hành', '', '', 0, 0, '2020-05-15 22:05:41', NULL, 1, '', '', '', '', '', '', 'Chính sách bảo hành', '', 'chinh-sach-bao-hanh', '', NULL),
(11, 'Chính sách tiết kiệm', '', '', 0, 0, '2020-05-15 22:05:00', NULL, 1, '', '', '', '', '', '', 'Chính sách tiết kiệm', '', 'chinh-sach-tiet-kiem', '', NULL),
(12, 'Chính sách thanh toán', '', '', 0, 0, '2020-05-15 22:05:44', NULL, 1, '', '', '', '', '', '', 'Chính sách thanh toán', '', 'chinh-sach-thanh-toan', '', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat_languages`
--

CREATE TABLE `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci,
  `lang_newscat_des` text COLLATE utf8_unicode_ci,
  `lang_newscat_content` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(1, 1, 'vn', 'Tin tức khuyến mãi', '', NULL, '', '', '', '', '', 0, 'tin-tuc-khuyen-mai', 'minh phuong toto, Minh Phương TOTO, Showroom Minh Phương, Showroom Minh Phuong, Minh Phương Showroom, Minh Phuong Showroom', 'Tin tức khuyến mãi', ''),
(2, 1, 'en', 'english version Tin tức khuyến mãi', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc-khuyen-mai', '', 'Tin tức khuyến mãi', ''),
(3, 2, 'vn', 'Cẩm nang kiến thức', '', NULL, '', '', '', '', '', 0, 'cam-nang-kien-thuc', '', 'Cẩm nang kiến thức', ''),
(4, 2, 'en', 'english version Cẩm nang kiến thức', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cam-nang-kien-thuc', '', 'Cẩm nang kiến thức', ''),
(5, 3, 'vn', 'Tin tức sản phẩm', '', NULL, '', '', '', '', '', 0, 'tin-tuc-san-pham', 'minh phuong toto, Minh Phương TOTO, Showroom Minh Phương, Showroom Minh Phuong, Minh Phương Showroom, Minh Phuong Showroom', 'Tin tức sản phẩm', ''),
(6, 3, 'en', 'english version Tin tức sản phẩm', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc-san-pham', '', 'Tin tức sản phẩm', ''),
(7, 4, 'vn', 'Tuyển dụng', '', NULL, '', '', '', '', '', 0, 'tuyen-dung', 'minh phuong toto, Minh Phương TOTO, Showroom Minh Phương, Showroom Minh Phuong, Tin tức Minh Phương Showroom, tin tuc Minh Phuong Showroom, Tin tức, tin tuc', 'Tuyển dụng', ''),
(8, 4, 'en', 'english version Tin tức thị trường', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc-thi-truong', '', 'Tin tức thị trường', ''),
(9, 5, 'vn', 'Tin tức', '', NULL, '', '', '', '', '', 0, 'tin-tuc-show-room', '', 'Tin tức', ''),
(10, 5, 'en', 'english version Tin tức', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc-show-room', '', 'Tin tức', ''),
(11, 6, 'vn', 'Chính sách', '', NULL, '', '', '', '', '', 0, 'chinh-sach', '', 'Chính sách', ''),
(12, 6, 'en', 'english version Chính sách đại lý', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-chinh-sach-dai-ly', '', 'Chính sách đại lý', ''),
(13, 7, 'vn', 'Chính sách đại lý', '', '', '', '', '', '', '', 0, 'chinh-sach-dai-ly', '', 'Chính sách đại lý', ''),
(14, 7, 'en', 'english version Chính sách đại lý', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-chinh-sach-dai-ly', '', 'Chính sách đại lý', ''),
(15, 8, 'vn', 'Chính sách giao hàng', '', '', '', '', '', '', '', 0, 'chinh-sach-giao-hang', '', 'Chính sách giao hàng', ''),
(16, 8, 'en', 'english version Chính sách giao hàng', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-chinh-sach-giao-hang', '', 'Chính sách giao hàng', ''),
(17, 9, 'vn', 'Chính sách bảo trì', '', '', '', '', '', '', '', 0, 'chinh-sach-bao-tri', '', 'Chính sách bảo trì', ''),
(18, 9, 'en', 'english version Chính sách bảo trì', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-chinh-sach-bao-tri', '', 'Chính sách bảo trì', ''),
(19, 10, 'vn', 'Chính sách bảo hành', '', '', '', '', '', '', '', 0, 'chinh-sach-bao-hanh', '', 'Chính sách bảo hành', ''),
(20, 10, 'en', 'english version Chính sách bảo hành', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-chinh-sach-bao-hanh', '', 'Chính sách bảo hành', ''),
(21, 11, 'vn', 'Chính sách tiết kiệm', '', '', '', '', '', '', '', 0, 'chinh-sach-tiet-kiem', '', 'Chính sách tiết kiệm', ''),
(22, 11, 'en', 'english version Chính sách tiết kiệm', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-chinh-sach-tiet-kiem', '', 'Chính sách tiết kiệm', ''),
(23, 12, 'vn', 'Chính sách thanh toán', '', '', '', '', '', '', '', 0, 'chinh-sach-thanh-toan', '', 'Chính sách thanh toán', ''),
(24, 12, 'en', 'english version Chính sách thanh toán', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-chinh-sach-thanh-toan', '', 'Chính sách thanh toán', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newstag`
--

CREATE TABLE `newstag` (
  `newstag_id` int(11) NOT NULL,
  `newstag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sort_order` int(11) NOT NULL,
  `newstag_created_date` datetime NOT NULL,
  `newstag_update_date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `newstag_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `newstag`
--

INSERT INTO `newstag` (`newstag_id`, `newstag_name`, `newstag_des`, `newstag_content`, `newstag_sort_order`, `newstag_created_date`, `newstag_update_date`, `state`, `newstag_img`, `newstag_sub_info1`, `newstag_sub_info2`, `newstag_sub_info3`, `newstag_sub_info4`, `newstag_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(2, 'sách hot', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '', '', '', '', '', 'sách hot', 'chuyên sách', 'sach-hot', 'sach', 1),
(3, 'Vở đẹp', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '', '', '', '', '', 'Vở đẹp', '', 'vo-dep', '', 1),
(4, 'Butb', '<p>bb</p>\r\n', '', 0, '2017-12-13 11:12:54', '2017-12-13 11:12:11', 1, '', '', '', '', '', '', 'Butb', 'bb', 'butb', 'bb', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newstag_languages`
--

CREATE TABLE `newstag_languages` (
  `id` int(11) NOT NULL,
  `newstag_id` int(11) NOT NULL,
  `languages_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_content` text CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `lang_newstag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info5` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `edit_state` int(11) NOT NULL,
  `friendly_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `newstag_languages`
--

INSERT INTO `newstag_languages` (`id`, `newstag_id`, `languages_code`, `lang_newstag_name`, `lang_newstag_des`, `lang_newstag_content`, `lang_newstag_sub_info1`, `lang_newstag_sub_info2`, `lang_newstag_sub_info3`, `lang_newstag_sub_info4`, `lang_newstag_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(3, 2, 'vn', 'sách hot', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', '', '', '', '', '', 1, 'sach-hot', 'sach', 'sách hot', 'chuyên sách'),
(4, 2, 'en', 'sách en', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', '', '', '', '', '', 1, 'sach', 'sach', 'sách', 'chuyên sách'),
(5, 3, 'vn', 'Vở đẹp', '', '', '', '', '', '', '', 1, 'vo-dep', '', 'Vở đẹp', ''),
(6, 3, 'en', 'Vở đẹp', '', '', '', '', '', '', '', 1, 'vo-dep', '', 'Vở đẹp', ''),
(7, 4, 'vn', 'But', '<p>but</p>\r\n', '', '', '', '', '', '', 1, 'butb', 'bb', 'Butb', 'bb'),
(8, 4, 'en', 'pen', '<p>pen</p>\r\n', '', '', '', '', '', '', 1, 'but', 'b', 'But', 'b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_languages`
--

CREATE TABLE `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci,
  `lang_news_des` text COLLATE utf8_unicode_ci,
  `lang_news_content` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(137, 69, 'vn', 'SINH NHẬT RỘN RÀNG, NHẬN NGÀN QUÀ TẶNG CÙNG DELL', 'Chương trình không áp dụng cho các sản phẩm kênh dự án hoặc đang được bán lẻ trên thị trường thuộc dòng sản phẩm: Latitude, Optiplex…', '<p><strong>2. Sản phẩm, dịch vụ khuyến m&atilde;i:</strong>&nbsp;Bất kỳ m&aacute;y t&iacute;nh x&aacute;ch tay, m&aacute;y t&iacute;nh để b&agrave;n ch&iacute;nh h&atilde;ng Dell thuộc c&aacute;c d&ograve;ng sản&nbsp;<strong>phẩm XPS, Inspiron &amp; Vostro</strong>&nbsp;c&oacute; c&agrave;i sẵn&nbsp;<strong>HĐH Windows 10 bản quyền</strong>&nbsp;được ph&acirc;n phối qua k&ecirc;nh b&aacute;n lẻ từ c&aacute;c nh&agrave; ph&acirc;n phối ch&iacute;nh thức của Dell tại Việt Nam.</p>\r\n\r\n<p>-&nbsp;&nbsp;<strong>C</strong></p>\r\n\r\n<p><strong>2. Sản phẩm, dịch vụ khuyến m&atilde;i:</strong>&nbsp;Bất kỳ m&aacute;y t&iacute;nh x&aacute;ch tay, m&aacute;y t&iacute;nh để b&agrave;n ch&iacute;nh h&atilde;ng Dell thuộc c&aacute;c d&ograve;ng sản&nbsp;<strong>phẩm XPS, Inspiron &amp; Vostro</strong>&nbsp;c&oacute; c&agrave;i sẵn&nbsp;<strong>HĐH Windows 10 bản quyền</strong>&nbsp;được ph&acirc;n phối qua k&ecirc;nh b&aacute;n lẻ từ c&aacute;c nh&agrave; ph&acirc;n phối ch&iacute;nh thức của Dell tại Việt Nam.</p>\r\n\r\n<p>-&nbsp;&nbsp;<strong>Chương tr&igrave;nh kh&ocirc;ng &aacute;p dụng cho c&aacute;c sản phẩm k&ecirc;nh dự &aacute;n hoặc đang được b&aacute;n lẻ tr&ecirc;n thị trường thuộc d&ograve;ng sản phẩm: Latitude, Optiplex&hellip;</strong></p>\r\n\r\n<p><strong>3. Thời gian khuyến m&atilde;i:</strong>&nbsp;từ&nbsp;<strong>05/09/2019</strong>&nbsp;đến&nbsp;<strong>26/09/2019</strong>&nbsp;hoặc&nbsp;<strong>đến khi hết qu&agrave; tặng.</strong></p>\r\n\r\n<p><strong>4. Phạm vi khuyến m&atilde;i:</strong>&nbsp;c&aacute;c đại l&yacute; uỷ quyền của Dell tại c&aacute;c tỉnh/tp tr&ecirc;n to&agrave;n quốc.</p>\r\n\r\n<p><strong>5. Đối tượng khuyến m&atilde;i:</strong>&nbsp;Người ti&ecirc;u d&ugrave;ng cuối khi mua m&aacute;y t&iacute;nh ch&iacute;nh h&atilde;ng của Dell thuộc c&aacute;c d&ograve;ng sản phẩm&nbsp;<strong>XPS, Inspiron &amp; Vostro</strong>&nbsp;c&oacute; c&agrave;i sẵn&nbsp;<strong>HĐH Windows 10 bản quyền</strong>&nbsp;trong thời gian khuyến m&atilde;i.</p>\r\n\r\n<p><strong>3. Thời gian khuyến m&atilde;i:</strong>&nbsp;từ&nbsp;<strong>05/09/2019</strong>&nbsp;đến&nbsp;<strong>26/09/2019</strong>&nbsp;hoặc&nbsp;<strong>đến khi hết qu&agrave; tặng.</strong></p>\r\n\r\n<p><strong>4. Phạm vi khuyến m&atilde;i:</strong>&nbsp;c&aacute;c đại l&yacute; uỷ quyền của Dell tại c&aacute;c tỉnh/tp tr&ecirc;n to&agrave;n quốc.</p>\r\n\r\n<p><strong>5. Đối tượng khuyến m&atilde;i:</strong>&nbsp;Người ti&ecirc;u d&ugrave;ng cuối khi mua m&aacute;y t&iacute;nh ch&iacute;nh h&atilde;ng của Dell thuộc c&aacute;c d&ograve;ng sản phẩm&nbsp;<strong>XPS, Inspiron &amp; Vostro</strong>&nbsp;c&oacute; c&agrave;i sẵn&nbsp;<strong>HĐH Windows 10 bản quyền</strong>&nbsp;trong thời gian khuyến m&atilde;i.</p>\r\n', '', '', '', '', '', 0, 'sinh-nhat-ron-rang-nhan-ngan-qua-tang-cung-dell', 'SINH NHẬT RỘN RÀNG, NHẬN NGÀN QUÀ TẶNG CÙNG DELL', '', ''),
(138, 69, 'en', 'english version SINH NHẬT RỘN RÀNG, NHẬN NGÀN QUÀ TẶNG CÙNG DELL', 'english version Chương trình không áp dụng cho các sản phẩm kênh dự án hoặc đang được bán lẻ trên thị trường thuộc dòng sản phẩm: Latitude, Optiplex…', 'english version <p><strong>2. Sản phẩm, dịch vụ khuyến m&atilde;i:</strong>&nbsp;Bất kỳ m&aacute;y t&iacute;nh x&aacute;ch tay, m&aacute;y t&iacute;nh để b&agrave;n ch&iacute;nh h&atilde;ng Dell thuộc c&aacute;c d&ograve;ng sản&nbsp;<strong>phẩm XPS, Inspiron &amp; Vostro</strong>&nbsp;c&oacute; c&agrave;i sẵn&nbsp;<strong>HĐH Windows 10 bản quyền</strong>&nbsp;được ph&acirc;n phối qua k&ecirc;nh b&aacute;n lẻ từ c&aacute;c nh&agrave; ph&acirc;n phối ch&iacute;nh thức của Dell tại Việt Nam.</p>\r\n\r\n<p>-&nbsp;&nbsp;<strong>C</strong></p>\r\n\r\n<p><strong>2. Sản phẩm, dịch vụ khuyến m&atilde;i:</strong>&nbsp;Bất kỳ m&aacute;y t&iacute;nh x&aacute;ch tay, m&aacute;y t&iacute;nh để b&agrave;n ch&iacute;nh h&atilde;ng Dell thuộc c&aacute;c d&ograve;ng sản&nbsp;<strong>phẩm XPS, Inspiron &amp; Vostro</strong>&nbsp;c&oacute; c&agrave;i sẵn&nbsp;<strong>HĐH Windows 10 bản quyền</strong>&nbsp;được ph&acirc;n phối qua k&ecirc;nh b&aacute;n lẻ từ c&aacute;c nh&agrave; ph&acirc;n phối ch&iacute;nh thức của Dell tại Việt Nam.</p>\r\n\r\n<p>-&nbsp;&nbsp;<strong>Chương tr&igrave;nh kh&ocirc;ng &aacute;p dụng cho c&aacute;c sản phẩm k&ecirc;nh dự &aacute;n hoặc đang được b&aacute;n lẻ tr&ecirc;n thị trường thuộc d&ograve;ng sản phẩm: Latitude, Optiplex&hellip;</strong></p>\r\n\r\n<p><strong>3. Thời gian khuyến m&atilde;i:</strong>&nbsp;từ&nbsp;<strong>05/09/2019</strong>&nbsp;đến&nbsp;<strong>26/09/2019</strong>&nbsp;hoặc&nbsp;<strong>đến khi hết qu&agrave; tặng.</strong></p>\r\n\r\n<p><strong>4. Phạm vi khuyến m&atilde;i:</strong>&nbsp;c&aacute;c đại l&yacute; uỷ quyền của Dell tại c&aacute;c tỉnh/tp tr&ecirc;n to&agrave;n quốc.</p>\r\n\r\n<p><strong>5. Đối tượng khuyến m&atilde;i:</strong>&nbsp;Người ti&ecirc;u d&ugrave;ng cuối khi mua m&aacute;y t&iacute;nh ch&iacute;nh h&atilde;ng của Dell thuộc c&aacute;c d&ograve;ng sản phẩm&nbsp;<strong>XPS, Inspiron &amp; Vostro</strong>&nbsp;c&oacute; c&agrave;i sẵn&nbsp;<strong>HĐH Windows 10 bản quyền</strong>&nbsp;trong thời gian khuyến m&atilde;i.</p>\r\n\r\n<p><strong>3. Thời gian khuyến m&atilde;i:</strong>&nbsp;từ&nbsp;<strong>05/09/2019</strong>&nbsp;đến&nbsp;<strong>26/09/2019</strong>&nbsp;hoặc&nbsp;<strong>đến khi hết qu&agrave; tặng.</strong></p>\r\n\r\n<p><strong>4. Phạm vi khuyến m&atilde;i:</strong>&nbsp;c&aacute;c đại l&yacute; uỷ quyền của Dell tại c&aacute;c tỉnh/tp tr&ecirc;n to&agrave;n quốc.</p>\r\n\r\n<p><strong>5. Đối tượng khuyến m&atilde;i:</strong>&nbsp;Người ti&ecirc;u d&ugrave;ng cuối khi mua m&aacute;y t&iacute;nh ch&iacute;nh h&atilde;ng của Dell thuộc c&aacute;c d&ograve;ng sản phẩm&nbsp;<strong>XPS, Inspiron &amp; Vostro</strong>&nbsp;c&oacute; c&agrave;i sẵn&nbsp;<strong>HĐH Windows 10 bản quyền</strong>&nbsp;trong thời gian khuyến m&atilde;i.</p>\r\n', '', '', '', '', '', 0, 'en-sinh-nhat-ron-rang-nhan-ngan-qua-tang-cung-dell', 'SINH NHẬT RỘN RÀNG, NHẬN NGÀN QUÀ TẶNG CÙNG DELL', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_tin`
--

CREATE TABLE `nhan_tin` (
  `id` int(11) NOT NULL,
  `email` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ1`
--

CREATE TABLE `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ2`
--

CREATE TABLE `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ3`
--

CREATE TABLE `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ4`
--

CREATE TABLE `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ5`
--

CREATE TABLE `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ6`
--

CREATE TABLE `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ7`
--

CREATE TABLE `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ8`
--

CREATE TABLE `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ9`
--

CREATE TABLE `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci,
  `orders_receiver_email` text COLLATE utf8_unicode_ci,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci,
  `orders_receiver_address` text COLLATE utf8_unicode_ci,
  `orders_receiver_note` text COLLATE utf8_unicode_ci,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `product_name` text COLLATE utf8_unicode_ci,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_state`
--

CREATE TABLE `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci,
  `page_des` text COLLATE utf8_unicode_ci,
  `page_content` text COLLATE utf8_unicode_ci,
  `page_img` text COLLATE utf8_unicode_ci,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `page_sub_info1` text COLLATE utf8_unicode_ci,
  `page_sub_info2` text COLLATE utf8_unicode_ci,
  `page_sub_info3` text COLLATE utf8_unicode_ci,
  `page_sub_info4` text COLLATE utf8_unicode_ci,
  `page_sub_info5` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(57, 'GIỚI THIỆU SHOWROOM MINHPHUONG TOTO', 'Toạ lạc tại 117 - 119 Hoàng Quốc Việt, Phường Nghĩa Đô, quận Cầu Giấy, Công ty TNHH Minh Phương – Showroom TOTO Minh Phương được biết đến là địa chỉ uy tín hàng đầu cung cấp các thiết bị vệ sinh cao cấp của hãng TOTO tại Hà Nội.', '<p>Toạ lạc tại 117 - 119 Ho&agrave;ng Quốc Việt,&nbsp;Phường Nghĩa Đ&ocirc;, quận Cầu Giấy,&nbsp;C&ocirc;ng ty TNHH Minh Phương &ndash; Showroom TOTO Minh Phương được biết đến l&agrave; địa chỉ uy t&iacute;n h&agrave;ng đầu cung cấp c&aacute;c thiết bị vệ sinh cao cấp của h&atilde;ng TOTO tại H&agrave; Nội.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"853\" src=\"/image/images/c48a789885b465ea3ca5.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe align=\"middle\" frameborder=\"0\" height=\"615\" scrolling=\"no\" src=\"https://www.youtube.com/embed/ZlvjlxsDUoQ\" width=\"860\"></iframe></p>\r\n\r\n<p>Được th&agrave;nh lập từ năm 1997, đến nay trải qua hơn 21 năm x&acirc;y dựng v&agrave; ph&aacute;t triển, Minh Phương Showroom tự tin l&agrave; một trong những đại l&yacute; TOTO ch&iacute;nh h&atilde;ng c&oacute; lịch sử ph&aacute;t triển bền vững v&agrave; tạo được sự tin tưởng lớn tr&ecirc;n thị trường. Trong nhiều năm đại l&yacute; ch&uacute;ng t&ocirc;i đ&atilde; đạt được nhiều chứng nhận v&agrave; danh hiệu xuất sắc từ c&ocirc;ng ty TNHH TOTO Việt Nam.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"466\" src=\"/image/images/181018%20in2.jpg\" width=\"700\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"525\" src=\"/image/images/a1c0618d13b9f3e7aaa8.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"525\" src=\"/image/images/82cb008372b792e9cba6.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"557\" src=\"/image/images/0d90b8acd99c39c2608d.jpg\" width=\"700\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"933\" src=\"/image/images/b6386a981bacfbf2a2bd.jpg\" width=\"700\" /></p>\r\n\r\n<p>Trọng t&acirc;m kinh doanh của C&ocirc;ng ty&nbsp;l&agrave; cung cấp c&aacute;c d&ograve;ng sản phẩm thiết bị vệ sinh d&agrave;nh cho ph&ograve;ng tắm, ph&ograve;ng vệ sinh&nbsp;c&ugrave;ng với c&aacute;c thiết bị nh&agrave; bếp mang nhiều phong c&aacute;ch độc đ&aacute;o, th&iacute;ch hợp cho c&aacute;c hộ gia đ&igrave;nh, chung cư cao cấp, kh&aacute;ch sạn cho đến cao ốc v&agrave; văn ph&ograve;ng.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"506\" src=\"/image/images/12.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"506\" src=\"/image/images/10.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"506\" src=\"/image/images/08.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"506\" src=\"/image/images/07.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đến với C&ocirc;ng ty TNHH Minh Phương &ndash; Showroom TOTO Minh Phương l&agrave; Qu&yacute; kh&aacute;ch h&agrave;ng đang đến với một sự chọn lọc của c&aacute;c sản phẩm mang t&iacute;nh biểu tượng của gi&aacute; trị v&agrave; c&ocirc;ng nghệ cao cấp. Với ph&ograve;ng tắm, b&ecirc;n cạnh yếu tố thẩm mỹ th&igrave; Qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; quyền lựa chọn v&agrave; h&agrave;i l&ograve;ng với c&aacute;c danh mục thiết bi vệ sinh, thiết bị nh&agrave; bếp cao cấp đến từ thương hiệu nổi tiếng như TOTO, INAX, CAESAR, CORNAT, FEROLI&hellip;</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cung cấp sản phẩm ch&iacute;nh h&atilde;ng, lu&ocirc;n cập nhật những thiết kế mới, hiện đại nhất để phục vụ nhu cầu đa dạng của Qu&yacute; kh&aacute;ch h&agrave;ng v&agrave; thị trường. Đến với Ch&uacute;ng t&ocirc;i, Qu&yacute; kh&aacute;ch h&agrave;ng sẽ được tư vấn tận t&igrave;nh bởi bởi đội ngũ b&aacute;n h&agrave;ng gi&agrave;u kinh nghiệm. C&ugrave;ng với đ&oacute;, c&aacute;c kh&acirc;u giao dịch từ giới thiệu sản phẩm, tư vấn thiết kế, vận chuyển, lắp đặt, bảo h&agrave;nh v&agrave; chăm s&oacute;c kh&aacute;ch h&agrave;ng đều được đ&agrave;o tạo rất chuy&ecirc;n nghiệp.</p>\r\n\r\n<p>----------------------------------------------------------------------------------------------</p>\r\n\r\n<p>Cty TNHH Thiết bị vệ sinh Minh Phương</p>\r\n\r\n<p>Website: <a href=\"https://www.youtube.com/redirect?q=http%3A%2F%2Fwww.minhphuongshowroom.vn%2F&amp;event=video_description&amp;v=PnAVQ0J21lc&amp;redir_token=yMd9VdSUk2xIkBC00fIRRTV7qrN8MTUzOTI1MTQwOUAxNTM5MTY1MDA5\" rel=\"nofollow\">http://www.minhphuongshowroom.vn/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'c48a789885b465ea3ca5.jpg', '2018-08-14 17:08:56', '2018-12-26 15:12:37', 1, '', '', '', '', '', 'Thiết bị vệ sinh, Thiết bị vệ sinh cao cấp, thiet bi ve sinh, thiet bi ve sinh cao cap, thiết bị vệ sinh nổi bật, thiet bi ve sinh phổ biến, thiet bi ve sinh noi bat, thiet bi ve sinh pho bien,, Minh Phương TOTO, Showroom Minh Phương, Showroom Minh Phuong, Minh Phương Showroom, Minh Phuong Showroom', 'CHÀO MỪNG ĐÃ GHÉ THĂM MINHPHUONGTOTO', '', 'chao-mung-da-ghe-tham-minhphuongtoto', 1),
(58, 'Chính sách bán hàng', 'Chính sách bán hàng', '<p>Ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng</p>\r\n', '', '2020-04-28 18:04:07', NULL, 1, '', '', '', '', '', '', 'Chính sách bán hàng', '', 'chinh-sach-ban-hang', 9),
(59, 'Chính sách giao hàng', 'Chính sách giao hàng', '<p>Ch&iacute;nh s&aacute;ch giao h&agrave;ng</p>\r\n', NULL, '2020-04-28 18:04:27', '2020-04-28 18:04:20', 1, '', '', '', '', '', '', 'Chính sách giao hàng', '', 'chinh-sach-giao-hang', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_languages`
--

CREATE TABLE `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci,
  `lang_page_des` text COLLATE utf8_unicode_ci,
  `lang_page_content` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(79, 57, 'vn', 'GIỚI THIỆU SHOWROOM MINHPHUONG TOTO', 'Toạ lạc tại 117 - 119 Hoàng Quốc Việt, Phường Nghĩa Đô, quận Cầu Giấy, Công ty TNHH Minh Phương – Showroom TOTO Minh Phương được biết đến là địa chỉ uy tín hàng đầu cung cấp các thiết bị vệ sinh cao cấp của hãng TOTO tại Hà Nội.', '<p>Toạ lạc tại 117 - 119 Ho&agrave;ng Quốc Việt,&nbsp;Phường Nghĩa Đ&ocirc;, quận Cầu Giấy,&nbsp;C&ocirc;ng ty TNHH Minh Phương &ndash; Showroom TOTO Minh Phương được biết đến l&agrave; địa chỉ uy t&iacute;n h&agrave;ng đầu cung cấp c&aacute;c thiết bị vệ sinh cao cấp của h&atilde;ng TOTO tại H&agrave; Nội.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"853\" src=\"/image/images/c48a789885b465ea3ca5.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe align=\"middle\" frameborder=\"0\" height=\"615\" scrolling=\"no\" src=\"https://www.youtube.com/embed/ZlvjlxsDUoQ\" width=\"860\"></iframe></p>\r\n\r\n<p>Được th&agrave;nh lập từ năm 1997, đến nay trải qua hơn 21 năm x&acirc;y dựng v&agrave; ph&aacute;t triển, Minh Phương Showroom tự tin l&agrave; một trong những đại l&yacute; TOTO ch&iacute;nh h&atilde;ng c&oacute; lịch sử ph&aacute;t triển bền vững v&agrave; tạo được sự tin tưởng lớn tr&ecirc;n thị trường. Trong nhiều năm đại l&yacute; ch&uacute;ng t&ocirc;i đ&atilde; đạt được nhiều chứng nhận v&agrave; danh hiệu xuất sắc từ c&ocirc;ng ty TNHH TOTO Việt Nam.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"466\" src=\"/image/images/181018%20in2.jpg\" width=\"700\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"525\" src=\"/image/images/a1c0618d13b9f3e7aaa8.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"525\" src=\"/image/images/82cb008372b792e9cba6.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"557\" src=\"/image/images/0d90b8acd99c39c2608d.jpg\" width=\"700\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"933\" src=\"/image/images/b6386a981bacfbf2a2bd.jpg\" width=\"700\" /></p>\r\n\r\n<p>Trọng t&acirc;m kinh doanh của C&ocirc;ng ty&nbsp;l&agrave; cung cấp c&aacute;c d&ograve;ng sản phẩm thiết bị vệ sinh d&agrave;nh cho ph&ograve;ng tắm, ph&ograve;ng vệ sinh&nbsp;c&ugrave;ng với c&aacute;c thiết bị nh&agrave; bếp mang nhiều phong c&aacute;ch độc đ&aacute;o, th&iacute;ch hợp cho c&aacute;c hộ gia đ&igrave;nh, chung cư cao cấp, kh&aacute;ch sạn cho đến cao ốc v&agrave; văn ph&ograve;ng.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"506\" src=\"/image/images/12.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"506\" src=\"/image/images/10.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"506\" src=\"/image/images/08.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"506\" src=\"/image/images/07.jpg\" width=\"700\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đến với C&ocirc;ng ty TNHH Minh Phương &ndash; Showroom TOTO Minh Phương l&agrave; Qu&yacute; kh&aacute;ch h&agrave;ng đang đến với một sự chọn lọc của c&aacute;c sản phẩm mang t&iacute;nh biểu tượng của gi&aacute; trị v&agrave; c&ocirc;ng nghệ cao cấp. Với ph&ograve;ng tắm, b&ecirc;n cạnh yếu tố thẩm mỹ th&igrave; Qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; quyền lựa chọn v&agrave; h&agrave;i l&ograve;ng với c&aacute;c danh mục thiết bi vệ sinh, thiết bị nh&agrave; bếp cao cấp đến từ thương hiệu nổi tiếng như TOTO, INAX, CAESAR, CORNAT, FEROLI&hellip;</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cung cấp sản phẩm ch&iacute;nh h&atilde;ng, lu&ocirc;n cập nhật những thiết kế mới, hiện đại nhất để phục vụ nhu cầu đa dạng của Qu&yacute; kh&aacute;ch h&agrave;ng v&agrave; thị trường. Đến với Ch&uacute;ng t&ocirc;i, Qu&yacute; kh&aacute;ch h&agrave;ng sẽ được tư vấn tận t&igrave;nh bởi bởi đội ngũ b&aacute;n h&agrave;ng gi&agrave;u kinh nghiệm. C&ugrave;ng với đ&oacute;, c&aacute;c kh&acirc;u giao dịch từ giới thiệu sản phẩm, tư vấn thiết kế, vận chuyển, lắp đặt, bảo h&agrave;nh v&agrave; chăm s&oacute;c kh&aacute;ch h&agrave;ng đều được đ&agrave;o tạo rất chuy&ecirc;n nghiệp.</p>\r\n\r\n<p>----------------------------------------------------------------------------------------------</p>\r\n\r\n<p>Cty TNHH Thiết bị vệ sinh Minh Phương</p>\r\n\r\n<p>Website: <a href=\"https://www.youtube.com/redirect?q=http%3A%2F%2Fwww.minhphuongshowroom.vn%2F&amp;event=video_description&amp;v=PnAVQ0J21lc&amp;redir_token=yMd9VdSUk2xIkBC00fIRRTV7qrN8MTUzOTI1MTQwOUAxNTM5MTY1MDA5\" rel=\"nofollow\">http://www.minhphuongshowroom.vn/</a></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'chao-mung-da-ghe-tham-minhphuongtoto', 'CHÀO MỪNG ĐÃ GHÉ THĂM MINHPHUONGTOTO', 'Thiết bị vệ sinh, Thiết bị vệ sinh cao cấp, thiet bi ve sinh, thiet bi ve sinh cao cap, thiết bị vệ sinh nổi bật, thiet bi ve sinh phổ biến, thiet bi ve sinh noi bat, thiet bi ve sinh pho bien,, Minh Phương TOTO, Showroom Minh Phương, Showroom Minh Phuong, Minh Phương Showroom, Minh Phuong Showroom', ''),
(80, 57, 'en', 'english version CHÀO MỪNG ĐÃ GHÉ THĂM MINHPHUONGTOTO', 'english version That’s why we’ve adopted a new perspective. We wanted to take participation-based wellness one step further. So we created a new strategy we like to call engagement-based wellness. <br>\r\nEngagement-based wellness meets all the standard criteria of a participation-based wellness program, but with better results. That’s because stepping from participation to engagement requires a little bit of investment. It requires your employees to really get involved in their health. ', 'english version ', '', '', '', '', '', 0, 'en-chao-mung-da-ghe-tham-minhphuongtoto', 'CHÀO MỪNG ĐÃ GHÉ THĂM MINHPHUONGTOTO', '', ''),
(81, 58, 'vn', 'Chính sách bán hàng', 'Chính sách bán hàng', '<p>Ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng</p>\r\n', '', '', '', '', '', 0, 'chinh-sach-ban-hang', 'Chính sách bán hàng', '', ''),
(82, 58, 'en', 'english version Chính sách bán hàng', 'english version Chính sách bán hàng', 'english version <p>Ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng</p>\r\n', '', '', '', '', '', 0, 'en-chinh-sach-ban-hang', 'Chính sách bán hàng', '', ''),
(83, 59, 'vn', 'Chính sách giao hàng', 'Chính sách giao hàng', '<p>Ch&iacute;nh s&aacute;ch giao h&agrave;ng</p>\r\n', '', '', '', '', '', 0, 'chinh-sach-giao-hang', 'Chính sách giao hàng', '', ''),
(84, 59, 'en', 'english version Chính sách giao hàng', 'english version Chính sách giao hàng', 'english version <p>Ch&iacute;nh s&aacute;ch giao h&agrave;ng</p>\r\n', '', '', '', '', '', 0, 'en-chinh-sach-giao-hang', 'Chính sách giao hàng', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `alias` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des` text COLLATE utf8_unicode_ci,
  `product_des2` text COLLATE utf8_unicode_ci,
  `product_des3` text COLLATE utf8_unicode_ci,
  `product_content` text COLLATE utf8_unicode_ci,
  `product_content2` text COLLATE utf8_unicode_ci,
  `product_content3` text COLLATE utf8_unicode_ci,
  `product_price` int(225) DEFAULT NULL,
  `product_price_sale` int(225) DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci,
  `product_img_2` text COLLATE utf8_unicode_ci,
  `product_sub_img` text COLLATE utf8_unicode_ci,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT '0',
  `product_new` int(11) DEFAULT '0',
  `product_sale` int(11) DEFAULT '0',
  `product_code` text COLLATE utf8_unicode_ci,
  `product_original` text COLLATE utf8_unicode_ci,
  `product_size` text COLLATE utf8_unicode_ci,
  `product_package` text COLLATE utf8_unicode_ci,
  `product_delivery` text COLLATE utf8_unicode_ci,
  `product_delivery_time` text COLLATE utf8_unicode_ci,
  `product_payment` text COLLATE utf8_unicode_ci,
  `product_payment_type` text COLLATE utf8_unicode_ci,
  `product_sub_info1` text COLLATE utf8_unicode_ci,
  `product_sub_info2` text COLLATE utf8_unicode_ci,
  `product_sub_info3` text COLLATE utf8_unicode_ci,
  `product_sub_info4` text COLLATE utf8_unicode_ci,
  `product_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci,
  `productcat_ar` text COLLATE utf8_unicode_ci,
  `producttag_arr` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thuoc_tinh` text COLLATE utf8_unicode_ci,
  `xay_dung_id` int(11) NOT NULL,
  `product_views` int(11) NOT NULL,
  `product_stock` int(11) NOT NULL,
  `product_price_1` bigint(20) NOT NULL,
  `product_price_2` bigint(20) NOT NULL,
  `product_img_1` text COLLATE utf8_unicode_ci,
  `clear_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `alias`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_img_2`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`, `producttag_arr`, `thuoc_tinh`, `xay_dung_id`, `product_views`, `product_stock`, `product_price_1`, `product_price_2`, `product_img_1`, `clear_stock`) VALUES
(2050, 'Mainboard Asrock H310CM HDV', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1499000, 1230000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MBAR227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mainboard Asrock H310CM HDV', NULL, 'mainboard-asrock-h310cm-hdv', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '494', NULL, NULL, 1, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2051, 'Mainboard Asus EX A320M Gaming', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1599000, 1250000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MBAS538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=00NtL1Eho6I', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mainboard Asus EX A320M Gaming', NULL, 'mainboard-asus-ex-a320m-gaming', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '494', NULL, NULL, 1, 0, 1, 0, 0, 'https://drive.google.com/open?id=1-1p7Ozl2v2woS4h-PIZfwgyOhtyW_iZE&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 0),
(2052, 'Mainboard ASUS PRIME H310M-CS R2.0', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1599000, 1330000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MBAS555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-RlS8Cm8kvopAreTz6qMksvmft_XL36y&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mainboard ASUS PRIME H310M-CS R2.0', NULL, 'mainboard-asus-prime-h310mcs-r20', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '494', NULL, NULL, 1, 2, 1, 0, 0, 'https://drive.google.com/open?id=1-NiceoCMsUgAJkNvwHb0VJMS6BCHLU8w', 0),
(2053, 'Mainboard Asrock B365M-HDV', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1699000, 1350000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MBAR240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mainboard Asrock B365M-HDV', NULL, 'mainboard-asrock-b365mhdv', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '494', NULL, NULL, 1, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2054, 'Mainboard ASUS TUF B360M-E GAMING', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1999000, 1650000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MBAS511', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mainboard ASUS TUF B360M-E GAMING', NULL, 'mainboard-asus-tuf-b360me-gaming', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '494', NULL, NULL, 1, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2055, 'Mainboard MSI B360M GAMING PLUS', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 2099000, 1850000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MBMS309', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mainboard MSI B360M GAMING PLUS', NULL, 'mainboard-msi-b360m-gaming-plus', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '494', NULL, NULL, 1, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2056, 'Mainboard Asrock B365M - Pro4', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 2199000, 1890000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MBAR230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mainboard Asrock B365M - Pro4', NULL, 'mainboard-asrock-b365m-pro4', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '494', NULL, NULL, 1, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2057, 'Mainboard Gigabyte B450 AORUS - M', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 2499000, 2160000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MBGI507', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mainboard Gigabyte B450 AORUS - M', NULL, 'mainboard-gigabyte-b450-aorus-m', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '494', NULL, NULL, 1, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2058, 'Mainboard ASUS PRIME Z390M-PLUS ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 2999000, 2575000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MBAS503', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mainboard ASUS PRIME Z390M-PLUS ', NULL, 'mainboard-asus-prime-z390mplus', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '494', NULL, NULL, 1, 4, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2059, 'Mainboard ASUS PRIME Z390-P', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 3199000, 2800000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MBAS499', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mainboard ASUS PRIME Z390-P', NULL, 'mainboard-asus-prime-z390p', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '494', NULL, NULL, 1, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2060, 'Mainboard Asus ROG STRIX B365-F GAMING', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 3499000, 3090000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MBAS525', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mainboard Asus ROG STRIX B365-F GAMING', NULL, 'mainboard-asus-rog-strix-b365f-gaming', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '494', NULL, NULL, 1, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2061, 'Mainboard Gigabyte C246M-WU4', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 4190000, 3750000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MBGI541', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mainboard Gigabyte C246M-WU4', NULL, 'mainboard-gigabyte-c246mwu4', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '494', NULL, NULL, 1, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2062, 'Mainboard Asrock X570 Phantom Gaming 4', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 4259000, 3920000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MBAR238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mainboard Asrock X570 Phantom Gaming 4', NULL, 'mainboard-asrock-x570-phantom-gaming-4', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '494', NULL, NULL, 1, 6, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2063, 'CPU AMD Ryzen Athlon 200GE (3.2 GHz / 4MB / 2 Cores, 4 Threads / Radeon Vega 3 / Socket AM4)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1299000, 1250000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'CPUA204', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'CPU AMD Ryzen Athlon 200GE (3.2 GHz / 4MB / 2 Cores, 4 Threads / Radeon Vega 3 / Socket AM4)', NULL, 'cpu-amd-ryzen-athlon-200ge-32-ghz-4mb-2-cores-4-threads-radeon-vega-3-socket-am4', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '493', NULL, NULL, 2, 2, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2064, 'CPU Intel Pentium Gold G5400 (3.7 GHz / 4MB / 2 Cores, 4 Threads / Socket 1151/ Coffee Lake)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1499000, 1390000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'CPUI283', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'CPU Intel Pentium Gold G5400 (3.7 GHz / 4MB / 2 Cores, 4 Threads / Socket 1151/ Coffee Lake)', NULL, 'cpu-intel-pentium-gold-g5400-37-ghz-4mb-2-cores-4-threads-socket-1151-coffee-lake', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '493', NULL, NULL, 2, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2065, 'CPU Intel Core i3-9100F (3.6 Ghz / 6MB / 4 Cores, 4 Threads / Socket 1151 / Coffee Lake)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 2049000, 1990000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'CPUI312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'CPU Intel Core i3-9100F (3.6 Ghz / 6MB / 4 Cores, 4 Threads / Socket 1151 / Coffee Lake)', NULL, 'cpu-intel-core-i39100f-36-ghz-6mb-4-cores-4-threads-socket-1151-coffee-lake', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '493', NULL, NULL, 2, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2066, 'CPU AMD Ryzen 3 3200G (3.6 GHz Upto 4.0 GHz / 4MB / 4 Cores, 4 Threads / Radeon Vega 8 / 65W / Socket AM4)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 2590000, 2220000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'CPUA211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'CPU AMD Ryzen 3 3200G (3.6 GHz Upto 4.0 GHz / 4MB / 4 Cores, 4 Threads / Radeon Vega 8 / 65W / Socket AM4)', NULL, 'cpu-amdryzen-3-3200g-36-ghz-upto-40-ghz-4mb-4-cores-4-threads-radeon-vega-8-65w-socket-am4', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '493', NULL, NULL, 2, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2067, 'CPU Intel Core i3-8100 (3.6 Ghz / 6MB / 4 Cores, 4 Threads / Socket 1151 v2 /Coffee Lake)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 3099000, 2999000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'CPUI241', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'CPU Intel Core i3-8100 (3.6 Ghz / 6MB / 4 Cores, 4 Threads / Socket 1151 v2 /Coffee Lake)', NULL, 'cpu-intel-core-i38100-36-ghz-6mb-4-cores-4-threads-socket-1151-v2-coffee-lake', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '493', NULL, NULL, 2, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2068, 'CPU AMD Ryzen 5 3400G (3.7 GHz Upto 4.2 GHz / 4MB / 4 Cores, 8 Threads / Radeon Vega 11 / 65W / Socket AM4)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 4090000, 3850000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'CPUA212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'CPU AMD Ryzen 5 3400G (3.7 GHz Upto 4.2 GHz / 4MB / 4 Cores, 8 Threads / Radeon Vega 11 / 65W / Socket AM4)', NULL, 'cpu-amdryzen-5-3400g-37-ghz-upto-42-ghz-4mb-4-cores-8-threads-radeon-vega-11-65w-socket-am4', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '493', NULL, NULL, 2, 1, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2069, 'CPU Intel Core i5 9400 (2.9 GHz Upto 4.1 GHz / 6 Cores, 6 Threads / 9MB / Socket 1151 / Coffee Lake)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 4899000, 4700000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'CPUI296', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'CPU Intel Core i5 9400 (2.9 GHz Upto 4.1 GHz / 6 Cores, 6 Threads / 9MB / Socket 1151 / Coffee Lake)', NULL, 'cpu-intel-core-i5-9400-29-ghz-upto-41-ghz-6-cores-6-threads-9mb-socket-1151-coffee-lake', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '493', NULL, NULL, 2, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2070, 'CPU AMD Ryzen 5 3600X (3.8 GHz Upto 4.4GHz / 32MB / 6 Cores, 12 Threads / 95W / Socket AM4)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 5899000, 5490000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'CPUA214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'CPU AMD Ryzen 5 3600X (3.8 GHz Upto 4.4GHz / 32MB / 6 Cores, 12 Threads / 95W / Socket AM4)', NULL, 'cpu-amdryzen-5-3600x-38-ghz-upto-44ghz-32mb-6-cores-12-threads-95w-socket-am4', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '493', NULL, NULL, 2, 1, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2071, 'CPU Intel Core i7-9700F (3.0 Ghz Upto 4.7 Ghz / 12MB / 8 Cores, 8 Threads / Socket 1151 / Coffee Lake)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 7899000, 7700000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'CPUI331', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'CPU Intel Core i7-9700F (3.0 Ghz Upto 4.7 Ghz / 12MB / 8 Cores, 8 Threads / Socket 1151 / Coffee Lake)', NULL, 'cpu-intel-core-i79700f-30-ghz-upto-47-ghz-12mb-8-cores-8-threads-socket-1151-coffee-lake', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '493', NULL, NULL, 2, 6, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2072, 'DDRam 4 Kingston 4G/2666-KVR26N19S6/4', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 599000, 520000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'RAKT235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'DDRam 4 Kingston 4G/2666-KVR26N19S6/4', NULL, 'ddram-4-kingston-4g2666kvr26n19s64', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '495', NULL, NULL, 3, 3, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2073, 'RAM Kingston 4Gb DDR3 Bus1600Mhz, , ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 699000, 550000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'RAKT137', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'RAM Kingston 4Gb DDR3 Bus1600Mhz, , ', NULL, 'ram-kingston-4gb-ddr3-bus1600mhz-', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '495', NULL, NULL, 3, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2074, 'Ram Laptop Kingston 8GB (KVR26S19S8/8) 8GB (1x8GB) DDR4 2666MHz', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1039000, 900000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'RAKT237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Ram Laptop Kingston 8GB (KVR26S19S8/8) 8GB (1x8GB) DDR4 2666MHz', NULL, 'ram-laptop-kingston-8gb-kvr26s19s88-8gb-1x8gb-ddr4-2666mhz', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '495', NULL, NULL, 3, 7, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2075, 'Ram 4 Corsair 8GB/3000 (1x8GB) - CMW8GX4M1D3000C16 Vengeance PRO RGB - Black', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1299000, 1000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'RACO319', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Ram 4 Corsair 8GB/3000 (1x8GB) - CMW8GX4M1D3000C16 Vengeance PRO RGB - Black', NULL, 'ram-4-corsair-8gb3000-1x8gb-cmw8gx4m1d3000c16-vengeance-pro-rgb-black', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '495', NULL, NULL, 3, 3, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2076, 'DDRam 4 Kingston ECC 16GB/2666Mhz - KSM26RS4/16MEI Registered', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 2690000, 2300000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'RAKT238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'DDRam 4 Kingston ECC 16GB/2666Mhz - KSM26RS4/16MEI Registered', NULL, 'ddram-4-kingston-ecc-16gb2666mhz-ksm26rs416mei-registered', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '495', NULL, NULL, 3, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2077, 'Kit Ram 4 Gskill Trident Z Neo16GB/3600 (2x8GB) F4-3600C16D-16GTZNC', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 3299000, 2850000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'RAGS443', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Kit Ram 4 Gskill Trident Z Neo16GB/3600 (2x8GB) F4-3600C16D-16GTZNC', NULL, 'kit-ram-4-gskill-trident-z-neo16gb3600-2x8gb-f43600c16d16gtznc', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '495', NULL, NULL, 3, 2, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2078, 'SSD Kingmax SMV32 120GB Sata3 2.5\" (Doc 500MB/s, Ghi 350MB/s)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 659000, 550000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'HDKM015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'SSD Kingmax SMV32 120GB Sata3 2.5\" (Doc 500MB/s, Ghi 350MB/s)', NULL, 'ssd-kingmax-smv32-120gb-sata3-25-doc-500mbs-ghi-350mbs', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '498', NULL, NULL, 5, 1, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2079, 'SSD KINGFAST NVME M.2 2280 F8N 128GB (Read 1500MB/s  Write 500MB/s)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 969000, 700000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'HDKF006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'SSD KINGFAST NVME M.2 2280 F8N 128GB (Read 1500MB/s  Write 500MB/s)', NULL, 'ssd-kingfast-nvme-m2-2280-f8n-128gb-read-1500mbswrite-500mbs', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '498', NULL, NULL, 5, 1, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2080, 'm2SSD PNY CS2040 M.2 2280 256GB (Doc 560MB/s, Ghi 540MB/s)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1099000, 850000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'HDPN022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'm2SSD PNY CS2040 M.2 2280 256GB (Doc 560MB/s, Ghi 540MB/s)', NULL, 'm2ssd-pny-cs2040-m2-2280-256gb-doc-560mbs-ghi540mbs', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '498', NULL, NULL, 5, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2081, 'm2 PCIe PNY CS2060 512GB M.2 NVMe PCIe (Doc 1600MB/s, Ghi 1000MB/s)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1990000, 1750000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'HDPN024', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'm2 PCIe PNY CS2060 512GB M.2 NVMe PCIe (Doc 1600MB/s, Ghi 1000MB/s)', NULL, 'm2-pcie-pny-cs2060-512gb-m2-nvme-pcie-doc-1600mbs-ghi-1000mbs', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '498', NULL, NULL, 5, 3, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2082, 'Ổ cứng SSD KINGFAST F10 1TB Sata3 2.5\" (Đọc 550MB/s - Ghi 500MB/s) - (F10-1TB)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 3199000, 2800000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'HDKF015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Ổ cứng SSD KINGFAST F10 1TB Sata3 2.5\" (Đọc 550MB/s - Ghi 500MB/s) - (F10-1TB)', NULL, 'o-cung-ssd-kingfast-f10-1tb-sata3-25-doc-550mbs-ghi-500mbs-f101tb', NULL, NULL, NULL, '36 Tháng ', NULL, NULL, NULL, '498', NULL, NULL, 5, 8, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2083, 'HDD Seagate 1TB 7200rpm, Sata3 64MB Cache, ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 999000, 880000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'HDSE079', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'HDD Seagate 1TB 7200rpm, Sata3 64MB Cache, ', NULL, 'hdd-seagate-1tb-7200rpm-sata3-64mb-cache-', NULL, NULL, NULL, '24 Tháng', NULL, NULL, NULL, '499', NULL, NULL, 4, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2084, 'HDD Seagate SkyHawk SURVEILLANCE 1TB/5900, Sata 3 , 64MB Cache (ST1000VX005)  ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1150000, 950000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'HDSE126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'HDD Seagate SkyHawk SURVEILLANCE 1TB/5900, Sata 3 , 64MB Cache (ST1000VX005)  ', NULL, 'hdd-seagate-skyhawk-surveillance-1tb5900-sata-3-64mb-cache-st1000vx005-', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '499', NULL, NULL, 4, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2085, 'HDD WD Blue 1TB/5400 Sata for Notebook', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1199000, 1050000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'HDWD303', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'HDD WD Blue 1TB/5400 Sata for Notebook', NULL, 'hdd-wd-blue-1tb5400-sata-for-notebook', NULL, NULL, NULL, '24 Tháng', NULL, NULL, NULL, '499', NULL, NULL, 4, 6, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2086, 'HDD Seagate SkyHawk SURVEILLANCE 2TB/5900, Sata 3, 64MB Cache (ST2000VX008)  ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1550000, 1420000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'HDSE147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'HDD Seagate SkyHawk SURVEILLANCE 2TB/5900, Sata 3, 64MB Cache (ST2000VX008)  ', NULL, 'hdd-seagate-skyhawk-surveillance-2tb5900-sata-3-64mb-cache-st2000vx008-', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '499', NULL, NULL, 4, 5, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2087, 'PCIe WD Black 250GB NVMe 3.0x4 (Doc 3100MB/s, Ghi 1600MB/s) - WDS250G3X0C', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1799000, 1550000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'HDWD275', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'PCIe WD Black 250GB NVMe 3.0x4 (Doc 3100MB/s, Ghi 1600MB/s) - WDS250G3X0C', NULL, 'pcie-wd-black-250gb-nvme-30x4-doc-3100mbs-ghi-1600mbs-wds250g3x0c', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '499', NULL, NULL, 4, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2088, 'HDD Seagate 3TB/5400 Sata3 64M', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 2299000, 2100000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'HDSE093', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'HDD Seagate 3TB/5400 Sata3 64M', NULL, 'hdd-seagate-3tb5400sata3-64m', NULL, NULL, NULL, '24 Tháng', NULL, NULL, NULL, '499', NULL, NULL, 4, 1, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2089, 'Vga Card Asus PH-GT1030-O2G, ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 2199000, 1950000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'VGAS404', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Vga Card Asus PH-GT1030-O2G, ', NULL, 'vga-card-asus-phgt1030o2g-', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '496', NULL, NULL, 6, 1, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2090, 'Vga Card ASUS PH GTX1650 - 4G', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 3999000, 3600000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'VGAS470', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Vga Card ASUS PH GTX1650 - 4G', NULL, 'vga-card-asus-ph-gtx1650-4g', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '496', NULL, NULL, 6, 1, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2091, 'Vga Card ASUS DUAL GTX1650 - 4G', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 4299000, 3800000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'VGAS468', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Vga Card ASUS DUAL GTX1650 - 4G', NULL, 'vga-card-asus-dual-gtx1650-4g', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '496', NULL, NULL, 6, 1, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2092, 'Card màn hình Asus TUF GTX 1650 Super 4G Gaming', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 5199000, 4600000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'VGAS513', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Card màn hình Asus TUF GTX 1650 Super 4G Gaming', NULL, 'card-man-hinh-asus-tuf-gtx-1650-super-4g-gaming', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '496', NULL, NULL, 6, 3, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2093, 'Card màn hình Gigabyte GTX 1660 Super OC - 6GB ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 6099000, 5700000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'VGGI448', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Card màn hình Gigabyte GTX 1660 Super OC - 6GB ', NULL, 'card-man-hinh-gigabyte-gtx-1660-super-oc-6gb-', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '496', NULL, NULL, 6, 3, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2094, 'Card màn hình Asus TUF3 GTX 1660 Super O6G Gaming', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 7099000, 6650000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'VGAS500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Card màn hình Asus TUF3 GTX 1660 Super O6G Gaming', NULL, 'card-man-hinh-asus-tuf3-gtx-1660-super-o6g-gaming', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '496', NULL, NULL, 6, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2095, 'Vga Card ASUS ROG STRIX GTX 1660 Ti - 6G GAMING', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 8099000, 7600000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'VGAS452', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Vga Card ASUS ROG STRIX GTX 1660 Ti - 6G GAMING', NULL, 'vga-card-asus-rog-strix-gtx-1660-ti-6g-gaming', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '496', NULL, NULL, 6, 4, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2096, 'Vga Card Gigabyte RTX 2060 OC - 6GD', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 9299000, 8800000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'VGGI417', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Vga Card Gigabyte RTX 2060 OC - 6GD', NULL, 'vga-card-gigabyte-rtx-2060-oc-6gd', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '496', NULL, NULL, 6, 3, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2097, 'Nguồn GAMEMAX VP350 - 350W (Màu Đen)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 449000, 360000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'PWGM004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Nguồn GAMEMAX VP350 - 350W (Màu Đen)', NULL, 'nguon-gamemax-vp350-350w-mau-den', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '501', NULL, NULL, 7, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2098, 'Nguồn GAMEMAX VP450 - 450W (Màu Đen)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 649000, 500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'PWGM001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Nguồn GAMEMAX VP450 - 450W (Màu Đen)', NULL, 'nguon-gamemax-vp450-450w-mau-den', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '501', NULL, NULL, 7, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2099, 'Nguồn Corsair Series CV 550 550W (80 Plus Brone/Mầu Đen)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1189000, 1030000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'PWCO076', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Nguồn Corsair Series CV 550 550W (80 Plus Brone/Mầu Đen)', NULL, 'nguon-corsair-series-cv-550-550w-80-plus-bronemau-den', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '501', NULL, NULL, 7, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2100, 'FSP Power Supply HYPER K Series HP600 - Active PFC - 80 Plus Standard, ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1369000, 1080000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'PWFP034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'FSP Power Supply HYPER K Series HP600 - Active PFC - 80 Plus Standard, ', NULL, 'fsp-power-supply-hyper-k-series-hp600-active-pfc-80-plus-standard-', NULL, NULL, NULL, '60 Tháng ', NULL, NULL, NULL, '501', NULL, NULL, 7, 1, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2101, 'Nguồn Corsair Series VS 650W 80 Plus White', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1499000, 1330000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'PWCO074', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Nguồn Corsair Series VS 650W 80 Plus White', NULL, 'nguon-corsair-series-vs-650w-80-plus-white', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '501', NULL, NULL, 7, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2102, 'Corsair CX Series CX750M 80 Plus Bronze Modular, ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 2499000, 2380000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'PWCO055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Corsair CX Series CX750M 80 Plus Bronze Modular, ', NULL, 'corsair-cx-series-cx750m-80-plus-bronze-modular-', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '501', NULL, NULL, 7, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2103, 'Vỏ Case Xigmatek XA-10 (Mini Tower/Màu Đen) EN40728', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 299000, 210000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CSXM037', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Vỏ Case Xigmatek XA-10 (Mini Tower/Màu Đen) EN40728', NULL, 'vo-case-xigmatek-xa10-mini-towermau-den-en40728', NULL, NULL, NULL, '', NULL, NULL, NULL, '502', NULL, NULL, 9, 2, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2104, 'Vỏ Case GAMEMAX G361 (Mid Tower/Mầu Đen)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 529000, 420000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CSGM001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Vỏ Case GAMEMAX G361 (Mid Tower/Mầu Đen)', NULL, 'vo-case-gamemax-g361-mid-towermau-den', NULL, NULL, NULL, '', NULL, NULL, NULL, '502', NULL, NULL, 9, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2105, 'Vỏ Case GAMEMAX Fortress TG (Mid Tower/Màu Đen)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 649000, 500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CSGM003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Vỏ Case GAMEMAX Fortress TG (Mid Tower/Màu Đen)', NULL, 'vo-case-gamemax-fortress-tg-mid-towermau-den', NULL, NULL, NULL, '', NULL, NULL, NULL, '502', NULL, NULL, 9, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2106, 'Vỏ Case SAMA Jazovo plus  Tempered Glass (Mid Tower/Màu Đen/Led RGB)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 779000, 630000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CSSA079', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Vỏ Case SAMA Jazovo plus  Tempered Glass (Mid Tower/Màu Đen/Led RGB)', NULL, 'vo-case-sama-jazovo-plus-tempered-glass-mid-towermau-denled-rgb', NULL, NULL, NULL, '', NULL, NULL, NULL, '502', NULL, NULL, 9, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2107, 'Vỏ Case  GAMEMAX G527 SHINE (Mid Tower/Màu Đen/Led RGB)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 799000, 680000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CSGM007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Vỏ Case  GAMEMAX G527 SHINE (Mid Tower/Màu Đen/Led RGB)', NULL, 'vo-case-gamemax-g527-shine-mid-towermau-denled-rgb', NULL, NULL, NULL, '', NULL, NULL, NULL, '502', NULL, NULL, 9, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2108, 'Vỏ Case SAMA Baroco  Tempered Glass (Mid Tower/Màu Trắng/Led RGB)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 819000, 650000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CSSA081', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Vỏ Case SAMA Baroco  Tempered Glass (Mid Tower/Màu Trắng/Led RGB)', NULL, 'vo-case-sama-baroco-tempered-glass-mid-towermau-trangled-rgb', NULL, NULL, NULL, '', NULL, NULL, NULL, '502', NULL, NULL, 9, 3, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2109, 'Vỏ Case SAMA Canty V (Mid Tower/Màu Đen)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 849000, 660000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CSSA074', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Vỏ Case SAMA Canty V (Mid Tower/Màu Đen)', NULL, 'vo-case-sama-canty-v-mid-towermau-den', NULL, NULL, NULL, '', NULL, NULL, NULL, '502', NULL, NULL, 9, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2110, 'Vỏ Case SAMA Warlock - Tempered Glas (Mid Tower/Màu Đen) ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 890000, 670000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CSSA070', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Vỏ Case SAMA Warlock - Tempered Glas (Mid Tower/Màu Đen) ', NULL, 'vo-case-sama-warlock-tempered-glas-mid-towermau-den-', NULL, NULL, NULL, '', NULL, NULL, NULL, '502', NULL, NULL, 9, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2111, 'Vỏ Case SAMA X (Mid Tower/Màu Đen)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 899000, 650000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CSSA071', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Vỏ Case SAMA X (Mid Tower/Màu Đen)', NULL, 'vo-case-sama-x-mid-towermau-den', NULL, NULL, NULL, '', NULL, NULL, NULL, '502', NULL, NULL, 9, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2112, 'Vỏ Case SAMA CANTY III (Mid Tower/Màu Đen)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 949000, 800000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CSSA072', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Vỏ Case SAMA CANTY III (Mid Tower/Màu Đen)', NULL, 'vo-case-sama-canty-iii-mid-towermau-den', NULL, NULL, NULL, '', NULL, NULL, NULL, '502', NULL, NULL, 9, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2113, 'Vỏ Case SAMA Aurora (Mid Tower/Màu Đen) ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 999000, 800000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CSSA064', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Vỏ Case SAMA Aurora (Mid Tower/Màu Đen) ', NULL, 'vo-case-sama-aurora-mid-towermau-den-', NULL, NULL, NULL, '', NULL, NULL, NULL, '502', NULL, NULL, 9, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1);
INSERT INTO `product` (`product_id`, `product_name`, `alias`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_img_2`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`, `producttag_arr`, `thuoc_tinh`, `xay_dung_id`, `product_views`, `product_stock`, `product_price_1`, `product_price_2`, `product_img_1`, `clear_stock`) VALUES
(2114, 'Vỏ Case Cooler Master MasterBox K500 TG (Mid Tower/Màu Đen )', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1729000, 1200000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CSCM129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Vỏ Case Cooler Master MasterBox K500 TG (Mid Tower/Màu Đen )', NULL, 'vo-case-cooler-master-masterbox-k500-tg-mid-towermau-den-', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '502', NULL, NULL, 9, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2115, 'Tản nhiệt khí Cooler Master HYPER T200', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 399000, 320000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'FANC648', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Tản nhiệt khí Cooler Master HYPER T200', NULL, 'tan-nhiet-khi-cooler-master-hyper-t200', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '486', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2116, 'Tản nhiệt CPU Cooler Master Hyper 410R', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 499000, 400000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'FANC573', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Tản nhiệt CPU Cooler Master Hyper 410R', NULL, 'tan-nhiet-cpu-cooler-master-hyper-410r', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '486', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2117, 'Tản Nhiệt CPU DeepCool Gammax 400 Red, ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 649000, 530000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'FANC524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Tản Nhiệt CPU DeepCool Gammax 400 Red, ', NULL, 'tan-nhiet-cpu-deepcool-gammax-400-red-', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '486', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2118, 'Tản nhiệt khí Cooler Master MASTERAIR G 100M', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 799000, 650000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'FANC644', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Tản nhiệt khí Cooler Master MASTERAIR G 100M', NULL, 'tan-nhiet-khi-cooler-master-masterair-g-100m', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '486', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2119, ' Máy tính HNCB081: A320/G200E/DDR4 4GB/SSD120G/Case/500W.CPU AMD Ryzen Athlon 200GE 3.2 GHz / 5MB / 2 cores 4 threads / Radeon Vega 3 / socket AM4.Case Xigmatek XA-10 (EN40728).SSD KINGFAST F6 PRO 120GB SATA3 6Gb/s 2.5\" (Read 550MB/s  Write 450MB/s).Mainboard ASUS PRIME A320M-K,Nguồn Jupistar 500 24P.DDRam 4 AVEXIR 4GB/2400 (1*4GB) 1BW Budget', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 4099000, 3900000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'HNCB081', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, ' Máy tính HNCB081: A320/G200E/DDR4 4GB/SSD120G/Case/500W.CPU AMD Ryzen Athlon 200GE 3.2 GHz / 5MB / 2 cores 4 threads / Radeon Vega 3 / socket AM4.Case Xigmatek XA-10 (EN40728).SSD KINGFAST F6 PRO 120GB SATA3 6Gb/s 2.5\" (Read 550MB/s  Write 450MB/s).Mainboard ASUS PRIME A320M-K,Nguồn Jupistar 500 24P.DDRam 4 AVEXIR 4GB/2400 (1*4GB) 1BW Budget', NULL, '-may-tinh-hncb081-a320g200eddr4-4gbssd120gcase500wcpu-amd-ryzen-athlon-200ge-32-ghz-5mb-2-cores-4-threads-radeon-vega-3-socket-am4case-xigmatek-xa10-en40728ssd-kingfast-f6-pro-120gb-sata3-6gbs-25-read-550mbs-write-450mbsmainboard-asus-prime-a320mknguon-jupistar-500-24pddram-4-avexir-4gb2400-14gb-1bw-budget', NULL, NULL, NULL, 'BH theo Linh kiện', NULL, NULL, NULL, '512', NULL, NULL, 0, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2120, 'Máy tính HNCB076: H310/G5400/DDR4 4GB/HDD 1TB/Case/500W,CPU Intel Pentium Gold G5400 3,7 GHz / 4MB / 2 Cores, 4 Threads / HD 630 Series Graphics / Socket 1151 (Coffee Lake), Case Xigmatek XA-10 (EN40728),SSD KINGFAST F6 PRO 120GB SATA3 6Gb/s 2.5\" (Read 550MB/s  Write 450MB/s), Mainboard ASUS PRIME H310M-K (T),Nguồn Jupistar 500 24P,DDRam 4 AVEXIR 4GB/2400 (1*4GB) 1BW Budget', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 4399000, 4100000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'HNCB076', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Máy tính HNCB076: H310/G5400/DDR4 4GB/HDD 1TB/Case/500W,CPU Intel Pentium Gold G5400 3,7 GHz / 4MB / 2 Cores, 4 Threads / HD 630 Series Graphics / Socket 1151 (Coffee Lake), Case Xigmatek XA-10 (EN40728),SSD KINGFAST F6 PRO 120GB SATA3 6Gb/s 2.5\" (Read 550MB/s  Write 450MB/s), Mainboard ASUS PRIME H310M-K (T),Nguồn Jupistar 500 24P,DDRam 4 AVEXIR 4GB/2400 (1*4GB) 1BW Budget', NULL, 'may-tinh-hncb076-h310g5400ddr4-4gbhdd-1tbcase500wcpu-intel-pentium-gold-g5400-37-ghz-4mb-2-cores-4-threads-hd-630-series-graphics-socket-1151-coffee-lake-case-xigmatek-xa10-en40728ssd-kingfast-f6-pro-120gb-sata3-6gbs-25-read-550mbs-write-450mbs-mainboard-asus-prime-h310mk-tnguon-jupistar-500-24pddram-4-avexir-4gb2400-14gb-1bw-budget', NULL, NULL, NULL, 'BH theo linh kiện', NULL, NULL, NULL, '512', NULL, NULL, 0, 5, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2121, 'PC HNC Business Home H5 (G5400/H310/4GB RAM/120GG SSD/Nguồn 350W/Dos)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 4499000, 4200000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'PCVP020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'PC HNC Business Home H5 (G5400/H310/4GB RAM/120GG SSD/Nguồn 350W/Dos)', NULL, 'pc-hnc-business-home-h5-g5400h3104gb-ram120gg-ssdnguon-350wdos', NULL, NULL, NULL, 'BH theo Linh kiện', NULL, NULL, NULL, '512', NULL, NULL, 0, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2122, 'PC HNC Business Home H7 (G5400/H310/4GB RAM/240GB SSD/Nguồn 350W/Dos)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 4699000, 4300000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'PCVP029', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'PC HNC Business Home H7 (G5400/H310/4GB RAM/240GB SSD/Nguồn 350W/Dos)', NULL, 'pc-hnc-business-home-h7-g5400h3104gb-ram240gb-ssdnguon-350wdos', NULL, NULL, NULL, 'BH theo Linh kiện', NULL, NULL, NULL, '512', NULL, NULL, 0, 1, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2123, 'PC HNC Business Pro P21 (i3 9100F/H310/4GB RAM/GT710/120GB SSD/Nguồn 350W/Dos)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 6099000, 5750000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'PCVP030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'PC HNC Business Pro P21 (i3 9100F/H310/4GB RAM/GT710/120GB SSD/Nguồn 350W/Dos)', NULL, 'pc-hnc-business-pro-p21-i3-9100fh3104gb-ramgt710120gb-ssdnguon-350wdos', NULL, NULL, NULL, 'BH theo Linh kiện', NULL, NULL, NULL, '512', NULL, NULL, 0, 1, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2124, 'PC HNC Business Pro P22 (i3 9100F/H310/4GB RAM/GT710/240GB SSD/Nguồn 350W/Dos)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 6699000, 6150000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'PCVP031', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'PC HNC Business Pro P22 (i3 9100F/H310/4GB RAM/GT710/240GB SSD/Nguồn 350W/Dos)', NULL, 'pc-hnc-business-pro-p22-i3-9100fh3104gb-ramgt710240gb-ssdnguon-350wdos', NULL, NULL, NULL, 'BH theo Linh kiện', NULL, NULL, NULL, '512', NULL, NULL, 0, 1, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2125, 'Máy tính HNCB085(H310/ I5 9400F/4GB RAM/SSD 120GB/HDD 1TB/GT710/Nguồn 350W/Dos)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 8699000, 8350000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'HNCB085', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Máy tính HNCB085(H310/ I5 9400F/4GB RAM/SSD 120GB/HDD 1TB/GT710/Nguồn 350W/Dos)', NULL, 'may-tinh-hncb085h310-i5-9400f4gb-ramssd-120gbhdd-1tbgt710nguon-350wdos', NULL, NULL, NULL, 'BH theo Linh kiện', NULL, NULL, NULL, '512', NULL, NULL, 0, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2126, 'Camera Thân TVI HikVision DS-2CE16D0T-IRP', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 480000, 398000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CAHI101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Camera Thân TVI HikVision DS-2CE16D0T-IRP', NULL, 'camera-than-tvi-hikvision-ds2ce16d0tirp', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '529', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2127, 'Camera Thân TVI HikVision DS-2CE16D0T-IR', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 550000, 435000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CAHI102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Camera Thân TVI HikVision DS-2CE16D0T-IR', NULL, 'camera-than-tvi-hikvision-ds2ce16d0tir', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '529', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2128, 'Camera Dome TVI HikVision DS-2CE56D0T-IR ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 490000, 399000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CAHI099', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Camera Dome TVI HikVision DS-2CE56D0T-IR ', NULL, 'camera-dome-tvi-hikvision-ds2ce56d0tir-', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '529', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2129, 'Camera Dome TVI HikVision DS-2CE56D0T-IRP', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 420000, 366000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CAHI098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Camera Dome TVI HikVision DS-2CE56D0T-IRP', NULL, 'camera-dome-tvi-hikvision-ds2ce56d0tirp', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '529', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2130, 'Camera Hikvision DS-2CV2Q21FD-IW', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 990000, 809000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CAHI242', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Camera Hikvision DS-2CV2Q21FD-IW', NULL, 'camera-hikvision-ds2cv2q21fdiw', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '529', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2131, 'Camera HikVision DS-2CD2121G0-I', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1390000, 1305000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CAHI258', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Camera HikVision DS-2CD2121G0-I', NULL, 'camera-hikvision-ds2cd2121g0i', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '529', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2132, 'Camera HikVision DS-2CE16H0T-ITF', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 680000, 660000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CAHI272', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Camera HikVision DS-2CE16H0T-ITF', NULL, 'camera-hikvision-ds2ce16h0titf', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '529', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2133, 'Camera HikVision DS-2CE16H0T-IT5F', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1490000, 990000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'CAHI274', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Camera HikVision DS-2CE16H0T-IT5F', NULL, 'camera-hikvision-ds2ce16h0tit5f', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '529', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2134, 'Camera HikVision DS-2CE56H0T-ITMF', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 990000, 717000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'CAHI276', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Camera HikVision DS-2CE56H0T-ITMF', NULL, 'camera-hikvision-ds2ce56h0titmf', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '529', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2135, 'Camera HikVision DS-2CD1123G0E-I', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1090000, 997000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'CAHI385', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Camera HikVision DS-2CD1123G0E-I', NULL, 'camera-hikvision-ds2cd1123g0ei', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '529', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2136, 'Camera HikVision DS-2CD2121G1-IDW1', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1690000, 1566000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'CAHI390', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Camera HikVision DS-2CD2121G1-IDW1', NULL, 'camera-hikvision-ds2cd2121g1idw1', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '529', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2137, 'Camera HikVision HK-2CD1D23G0E-PRO', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 2500000, 1380000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'CAHI453', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Camera HikVision HK-2CD1D23G0E-PRO', NULL, 'camera-hikvision-hk2cd1d23g0epro', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '529', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2138, 'Camera HikVision HK-2CD19D0T-PRO', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 980000, 660000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'CAHI466', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Camera HikVision HK-2CD19D0T-PRO', NULL, 'camera-hikvision-hk2cd19d0tpro', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '529', NULL, NULL, 0, 3, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2139, 'Camera HikVision HK-2CD59D0T-PRO', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 850000, 520000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'CAHI467', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Camera HikVision HK-2CD59D0T-PRO', NULL, 'camera-hikvision-hk2cd59d0tpro', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '529', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2140, 'Đầu ghi TVI HikVision DS-7204HQHI-K1', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1800000, 1425000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'DVHI098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Đầu ghi TVI HikVision DS-7204HQHI-K1', NULL, 'dau-ghi-tvi-hikvision-ds7204hqhik1', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '531', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2141, 'Đầu ghi TVI HikVision DS-7208HQHI-K1', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 2900000, 2400000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'DVHI099', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Đầu ghi TVI HikVision DS-7208HQHI-K1', NULL, 'dau-ghi-tvi-hikvision-ds7208hqhik1', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '531', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2142, 'Đầu ghi Hikvision DS-7104HQHI-K1', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1390000, 1190000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'DVHI144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Đầu ghi Hikvision DS-7104HQHI-K1', NULL, 'dau-ghi-hikvision-ds7104hqhik1', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '531', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2143, 'Đầu ghi Hikvision DS-7108HQHI-K1', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1990000, 1920000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'DVHI145 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Đầu ghi Hikvision DS-7108HQHI-K1', NULL, 'dau-ghi-hikvision-ds7108hqhik1', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '531', NULL, NULL, 0, 4, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2144, 'Đầu ghi HikVision DS-7108NI-Q1', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1850000, 1438000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'DVHI170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Đầu ghi HikVision DS-7108NI-Q1', NULL, 'dau-ghi-hikvision-ds7108niq1', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '531', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2145, 'Đầu ghi HikVision DS-7104NI-Q1/M', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1590000, 1250000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'DVHI172', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Đầu ghi HikVision DS-7104NI-Q1/M', NULL, 'dau-ghi-hikvision-ds7104niq1m', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '531', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2146, 'Đầu ghi Hikvision 16 kênh HIK/SH-HD9216HQK1', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 8450000, 6410000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'DVHI200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Đầu ghi Hikvision 16 kênh HIK/SH-HD9216HQK1', NULL, 'dau-ghi-hikvision-16-kenh-hikshhd9216hqk1', NULL, NULL, NULL, '24 tháng', NULL, NULL, NULL, '531', NULL, NULL, 0, 4, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2147, 'Laptop  Acer Aspire A315-54-36QY NX.HM2SV.001 /Mầu sắc Đen /Bộ vi xử lý   Intel® Core™  i3 10110U (2.1GHz, 4MB)/ Chipset Intel /Bộ nhớ trong 4GB DDR4 (Onboard)/Dung lượng tối đa 8GB/ VGA  Intel 620/Ổ cứng 256GB SSD PCIe NVMe/ Card Reader SD Card reader/Màn hình  15.6\" FHD 1920 * 1080 ComfyView LED LCD/Webcam Yes/Giao tiếp mạng GigaLAN/Giao tiếp không dây 802.11ac • Bluetooth 4.2/Cổng giao tiếp 1 x USB 3.1, 2 x USB 2.0, 1 x HDMI, 1 x Ethernet, 1 x 3.5 mm headphone/speaker jack, 1 x DC Jack/Pin 2-cell (36.7Wh)/Webcam Yes/Audio Two built-in stereo speakers /Giao tiếp mạng GigaLAN/Giao tiếp không dây 802.11ac • Bluetooth 4.2/Cổng giao tiếp 1 x USB 3.1, 2 x USB 2.0, 1 x HDMI, 1 x Ethernet, 1 x 3.5 mm headphone/speaker jack, 1 x DC Jack/Pin 2-cell (36.7Wh)/Cân nặng 1.7 kg  /Hệ điều hành Win 10 ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 10789000, 10400000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTAC637', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop  Acer Aspire A315-54-36QY NX.HM2SV.001 /Mầu sắc Đen /Bộ vi xử lý   Intel® Core™  i3 10110U (2.1GHz, 4MB)/ Chipset Intel /Bộ nhớ trong 4GB DDR4 (Onboard)/Dung lượng tối đa 8GB/ VGA  Intel 620/Ổ cứng 256GB SSD PCIe NVMe/ Card Reader SD Card reader/Màn hình  15.6\" FHD 1920 * 1080 ComfyView LED LCD/Webcam Yes/Giao tiếp mạng GigaLAN/Giao tiếp không dây 802.11ac • Bluetooth 4.2/Cổng giao tiếp 1 x USB 3.1, 2 x USB 2.0, 1 x HDMI, 1 x Ethernet, 1 x 3.5 mm headphone/speaker jack, 1 x DC Jack/Pin 2-cell (36.7Wh)/Webcam Yes/Audio Two built-in stereo speakers /Giao tiếp mạng GigaLAN/Giao tiếp không dây 802.11ac • Bluetooth 4.2/Cổng giao tiếp 1 x USB 3.1, 2 x USB 2.0, 1 x HDMI, 1 x Ethernet, 1 x 3.5 mm headphone/speaker jack, 1 x DC Jack/Pin 2-cell (36.7Wh)/Cân nặng 1.7 kg  /Hệ điều hành Win 10 ', NULL, 'laptop-acer-aspire-a3155436qy-nxhm2sv001-mau-sac-den-bo-vi-xu-ly-intel-core-i3-10110u-21ghz-4mb-chipset-intel-bo-nho-trong-4gb-ddr4-onboarddung-luong-toi-da-8gb-vga-intel-620o-cung-256gb-ssd-pcie-nvme-card-reader-sd-card-readerman-hinh-156-fhd-1920-1080-comfyview-led-lcdwebcam-yesgiao-tiep-mang-gigalangiao-tiep-khong-day-80211ac-bluetooth-42cong-giao-tiep-1-x-usb-31-2-x-usb-20-1-x-hdmi-1-x-ethernet-1-x-35-mm-headphonespeaker-jack-1-x-dc-jackpin-2cell-367whwebcam-yesaudio-two-builtin-stereo-speakers-giao-tiep-mang-gigalangiao-tiep-khong-day-80211ac-bluetooth-42cong-giao-tiep-1-x-usb-31-2-x-usb-20-1-x-hdmi-1-x-ethernet-1-x-35-mm-headphonespeaker-jack-1-x-dc-jackpin-2cell-367whcan-nang-17-kg-he-dieu-hanh-win-10-', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '484', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2148, 'Laptop Acer Aspire 3 A315-42-R4XD (NX.HF9SV.008) (AMDR5 3500U/8GBRAM/512GB SSD/Radeon Vega 3 /15.6FHD/Win10)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 13589000, 13000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTAC646', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Acer Aspire 3 A315-42-R4XD (NX.HF9SV.008) (AMDR5 3500U/8GBRAM/512GB SSD/Radeon Vega 3 /15.6FHD/Win10)', NULL, 'laptop-acer-aspire-3-a31542r4xd-nxhf9sv008-amdr5-3500u8gbram512gb-ssdradeon-vega-3-156fhdwin10', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '484', NULL, NULL, 0, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2149, 'Laptop Acer Aspire A315-54-558R (NX.HEFSV.005) (i5 8265U/4GB Ram/1TBHDD/15.6FHD/Win10/Bạc)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 11289000, 11050000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTAC658', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Acer Aspire A315-54-558R (NX.HEFSV.005) (i5 8265U/4GB Ram/1TBHDD/15.6FHD/Win10/Bạc)', NULL, 'laptop-acer-aspire-a31554558r-nxhefsv005-i5-8265u4gb-ram1tbhdd156fhdwin10bac', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '484', NULL, NULL, 0, 6, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2150, 'Laptop Asus A512FA-EJ571T i3 8145U/4GB/256Gb SSD/15.6\" FHD/Win10/Bạc', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 11999000, 11750000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTAU156', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Asus A512FA-EJ571T i3 8145U/4GB/256Gb SSD/15.6\" FHD/Win10/Bạc', NULL, 'laptop-asus-a512faej571t-i3-8145u4gb256gb-ssd156-fhdwin10bac', NULL, NULL, NULL, '24 Tháng', NULL, NULL, NULL, '484', NULL, NULL, 0, 1, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2151, 'Laptop Asus X509FA-EJ103T i5 8265U/4G/512Gb SSD/15.6 Full HD/FP/Win 10/Bạc', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 13799000, 13600000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTAU167', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Asus X509FA-EJ103T i5 8265U/4G/512Gb SSD/15.6 Full HD/FP/Win 10/Bạc', NULL, 'laptop-asus-x509faej103t-i5-8265u4g512gb-ssd156-full-hdfpwin-10bac', NULL, NULL, NULL, '24 Tháng', NULL, NULL, NULL, '484', NULL, NULL, 0, 1, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2152, 'Laptop Asus X409FA-EK101T i5 8265U/4G/512Gb SSD/14\" Full HD/FP/Win 10/Bạc', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 13699000, 13500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTAU170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Asus X409FA-EK101T i5 8265U/4G/512Gb SSD/14\" Full HD/FP/Win 10/Bạc', NULL, 'laptop-asus-x409faek101t-i5-8265u4g512gb-ssd14-full-hdfpwin-10bac', NULL, NULL, NULL, '24 Tháng', NULL, NULL, NULL, '484', NULL, NULL, 0, 4, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2153, 'Laptop Asus X509FJ-EJ053T (i5 8265U/4GB RAM/1TB HDD/15.6\" FHD/MX230 2Gb/Win 10/Bạc)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 14399000, 14150000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTAU193', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Asus X509FJ-EJ053T (i5 8265U/4GB RAM/1TB HDD/15.6\" FHD/MX230 2Gb/Win 10/Bạc)', NULL, 'laptop-asus-x509fjej053t-i5-8265u4gb-ram1tb-hdd156-fhdmx230-2gbwin-10bac', NULL, NULL, NULL, '24 Tháng', NULL, NULL, NULL, '484', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2154, 'Laptop Asus VivoBook S530FA-BQ431T (i3 8145/4GB RAM/256GB SSD/15.6\" FHD/Win10/Vàng)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 13699000, 13500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTAU206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Asus VivoBook S530FA-BQ431T (i3 8145/4GB RAM/256GB SSD/15.6\" FHD/Win10/Vàng)', NULL, 'laptop-asus-vivobook-s530fabq431t-i3-81454gb-ram256gb-ssd156-fhdwin10vang', NULL, NULL, NULL, '24 Tháng', NULL, NULL, NULL, '484', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2155, 'Laptop Asus X509FA-EJ203T (i5 8265U/4GB RAM/512Gb SSD/15.6 Full HD/FP/Win 10/Bạc)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 13999000, 13750000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTAU214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Asus X509FA-EJ203T (i5 8265U/4GB RAM/512Gb SSD/15.6 Full HD/FP/Win 10/Bạc)', NULL, 'laptop-asus-x509faej203t-i5-8265u4gb-ram512gb-ssd156-full-hdfpwin-10bac', NULL, NULL, NULL, '24 Tháng', NULL, NULL, NULL, '484', NULL, NULL, 0, 3, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2156, 'Laptop Asus X509JA-EJ021T (i5 1035G1/4G/512Gb SSD/15.6 Full HD/FP/Win 10/Bạc)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 14099000, 13800000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTAU311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Asus X509JA-EJ021T (i5 1035G1/4G/512Gb SSD/15.6 Full HD/FP/Win 10/Bạc)', NULL, 'laptop-asus-x509jaej021t-i5-1035g14g512gb-ssd156-full-hdfpwin-10bac', NULL, NULL, NULL, '24 Tháng', NULL, NULL, NULL, '484', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2157, 'Laptop Dell Vostro 3480 70183778 i5 8265/4G/1TB/14.0//Win 10/1.79kg.Part: 70183778 Bộ vi xử lý :  Intel Core i5-8265U (4 x 1.60GHz/6MB cache), Ram 4GB DDR4 2400Mhz, 2slots, 1TB SATA 5400rpm , VGA Intel UHD 620 ,14,0\" HD Led, HD webcam, Bluetooth 4,0, 2 USB 3,1 Gen 1, 1 USB 2,, HDMI 1,4, VGA , 1,96kg, Win 10 Home SL 64', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 13389000, 13000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTDE998', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Dell Vostro 3480 70183778 i5 8265/4G/1TB/14.0//Win 10/1.79kg.Part: 70183778 Bộ vi xử lý :  Intel Core i5-8265U (4 x 1.60GHz/6MB cache), Ram 4GB DDR4 2400Mhz, 2slots, 1TB SATA 5400rpm , VGA Intel UHD 620 ,14,0\" HD Led, HD webcam, Bluetooth 4,0, 2 USB 3,1 Gen 1, 1 USB 2,, HDMI 1,4, VGA , 1,96kg, Win 10 Home SL 64', NULL, 'laptop-dell-vostro-3480-70183778-i5-82654g1tb140win-10179kgpart-70183778-bo-vi-xu-ly-intel-core-i58265u-4-x-160ghz6mb-cache-ram-4gb-ddr4-2400mhz-2slots-1tb-sata-5400rpm-vga-intel-uhd-620-140-hd-led-hd-webcam-bluetooth-40-2-usb-31-gen-1-1-usb-2-hdmi-14-vga-196kg-win-10-home-sl-64', NULL, NULL, NULL, '12 Tháng (BH Tận nơi)', NULL, NULL, NULL, '484', NULL, NULL, 0, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2158, 'Laptop Dell Inspiron 3580 70184569 Core i5-8265U (1.60 GHz,6 MB), 4GB RAM,1TB HDD,DVDRW,2GB AMD Radeon,15.6\" FHD,WL+BT, 3cell,  Win 10 Home,Black, 2.2kg', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 13999000, 13900000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTDL015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Dell Inspiron 3580 70184569 Core i5-8265U (1.60 GHz,6 MB), 4GB RAM,1TB HDD,DVDRW,2GB AMD Radeon,15.6\" FHD,WL+BT, 3cell,  Win 10 Home,Black, 2.2kg', NULL, 'laptop-dell-inspiron-3580-70184569-core-i58265u-160-ghz6-mb-4gb-ram1tb-hdddvdrw2gb-amd-radeon156-fhdwlbt-3cell-win-10-homeblack-22kg', NULL, NULL, NULL, ' 12 Tháng', NULL, NULL, NULL, '484', NULL, NULL, 0, 1, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2159, 'Laptop Dell Latitude 3400 70185531 /Mầu sắc  Đen /Bộ vi xử lý Intel Core™ i3 8145U (2.1Ghz, 4MB Cache) /Chipset Intel /Bộ nhớ trong 4GB DDR4 2400Mhz /Số khe cắm 2/VGA Intel UHD 620/Ổ cứng 1TB 5400rpm (có hỗ trợ khe M2 SSD)/Bảo mật, công nghệ Backlit dual pointing Keyboard/Màn hình  14.0\" HD (1366x768) Anti-Glare/Webcam HD/Audio Yes/Giao tiếp không dây Intel® Dual Band Wireless-AC 8265 802.11AC, Bluetooth 5.0/Cổng giao tiếp (1) VGA; (1) HDMI; (1) USB Type–C 3.1 Gen 1; (2) USB 3.1 Gen 1; (1) USB 2.0 port; (1) Universal audio jack; (1) RJ-45; TPM 2.0/Pin 3 cell (42Whr)/Cân nặng 1.75Kg ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 11789000, 11350000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTDL036', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Dell Latitude 3400 70185531 /Mầu sắc  Đen /Bộ vi xử lý Intel Core™ i3 8145U (2.1Ghz, 4MB Cache) /Chipset Intel /Bộ nhớ trong 4GB DDR4 2400Mhz /Số khe cắm 2/VGA Intel UHD 620/Ổ cứng 1TB 5400rpm (có hỗ trợ khe M2 SSD)/Bảo mật, công nghệ Backlit dual pointing Keyboard/Màn hình  14.0\" HD (1366x768) Anti-Glare/Webcam HD/Audio Yes/Giao tiếp không dây Intel® Dual Band Wireless-AC 8265 802.11AC, Bluetooth 5.0/Cổng giao tiếp (1) VGA; (1) HDMI; (1) USB Type–C 3.1 Gen 1; (2) USB 3.1 Gen 1; (1) USB 2.0 port; (1) Universal audio jack; (1) RJ-45; TPM 2.0/Pin 3 cell (42Whr)/Cân nặng 1.75Kg ', NULL, 'laptop-dell-latitude-3400-70185531-mau-sac-den-bo-vi-xu-ly-intel-core-i3-8145u-21ghz-4mb-cache-chipset-intel-bo-nho-trong-4gb-ddr4-2400mhz-so-khe-cam-2vga-intel-uhd-620o-cung-1tb-5400rpm-co-ho-tro-khe-m2-ssdbao-mat-cong-nghe-backlit-dual-pointing-keyboardman-hinh-140-hd-1366x768-antiglarewebcam-hdaudio-yesgiao-tiep-khong-day-intel-dual-band-wirelessac-8265-80211ac-bluetooth-50cong-giao-tiep-1-vga-1-hdmi-1-usb-typec-31-gen-1-2-usb-31-gen-1-1-usb-20-port-1-universal-audio-jack-1-rj45-tpm-20pin-3-cell-42whrcan-nang-175kg-', NULL, NULL, NULL, '12 Tháng – BH tận nơi', NULL, NULL, NULL, '484', NULL, NULL, 0, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2160, 'Laptop Dell Vostro 3490 (70196714) (i5 10210U/4GB Ram/1TB HDD/FP/ 14.0/Win 10/Đen)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 13989000, 13500000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTDL062', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Dell Vostro 3490 (70196714) (i5 10210U/4GB Ram/1TB HDD/FP/ 14.0/Win 10/Đen)', NULL, 'laptop-dell-vostro-3490-70196714-i5-10210u4gb-ram1tb-hddfp-140win-10den', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '484', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2161, 'Laptop Dell Vostro 3590 (V5I3505W) (i3 10110U/4GB Ram/1TB HDD/ 15.6FHD/DVDRW/Win 10/Đen)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 12089000, 11750000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTDL065', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Dell Vostro 3590 (V5I3505W) (i3 10110U/4GB Ram/1TB HDD/ 15.6FHD/DVDRW/Win 10/Đen)', NULL, 'laptop-dell-vostro-3590-v5i3505w-i3-10110u4gb-ram1tb-hdd-156fhddvdrwwin-10den', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '484', NULL, NULL, 0, 3, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2162, 'Laptop Dell Inspiron 3493 (N4I5136W) (i5 1035G1/4G RAM/1TBHDD/14.0FHD/ Win 10/Đen)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 13599000, 13350000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTDL094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Dell Inspiron 3493 (N4I5136W) (i5 1035G1/4G RAM/1TBHDD/14.0FHD/ Win 10/Đen)', NULL, 'laptop-dell-inspiron-3493-n4i5136w-i5-1035g14g-ram1tbhdd140fhd-win-10den', NULL, NULL, NULL, '12 Tháng ', NULL, NULL, NULL, '484', NULL, NULL, 0, 2, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2163, 'Laptop HP Pavilion 14-ce2050TU 7YA47PA /Bộ vi xử lý Intel® Core i3 8145U(2.1GHz/4MB cache) /Chipset Intel /Bộ nhớ trong 8 GB DDR4 /Số khe cắm 1/VGA Intel® UHD 620/Ổ cứng 256GB SSD/Card Reader 1 multi-format SD media card reader/Bảo mật, công nghệ Kensington MicroSaver® lock slot/Màn hình  14.0\" FHD BrightView WLED-backlit (1920 x 1080)/Webcam HP Wide Vision HD Camera with integrated dual array digital microphone/Audio B&O PLAY; HP Audio Boost; Dual speakers/Giao tiếp không dây Intel® 802.11a/b/g/n/ac (1x1) Wi-Fi® and Bluetooth® 4.2 Combo/Cổng giao tiếp 1 USB 3.1 Type-C™ Gen 1 (Data Transfer up to 5 Gb/s); 2 USB 3.1 Gen 1 (Data transfer only); 1 HDMI; 1 RJ-45; 1 headphone/microphone combo/Pin 3-cell, 41 Wh Li-ion/Cân nặng 1.63Kg /Hệ điều hành Win 10 SL', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 13899000, 13720000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTHP714', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop HP Pavilion 14-ce2050TU 7YA47PA /Bộ vi xử lý Intel® Core i3 8145U(2.1GHz/4MB cache) /Chipset Intel /Bộ nhớ trong 8 GB DDR4 /Số khe cắm 1/VGA Intel® UHD 620/Ổ cứng 256GB SSD/Card Reader 1 multi-format SD media card reader/Bảo mật, công nghệ Kensington MicroSaver® lock slot/Màn hình  14.0\" FHD BrightView WLED-backlit (1920 x 1080)/Webcam HP Wide Vision HD Camera with integrated dual array digital microphone/Audio B&O PLAY; HP Audio Boost; Dual speakers/Giao tiếp không dây Intel® 802.11a/b/g/n/ac (1x1) Wi-Fi® and Bluetooth® 4.2 Combo/Cổng giao tiếp 1 USB 3.1 Type-C™ Gen 1 (Data Transfer up to 5 Gb/s); 2 USB 3.1 Gen 1 (Data transfer only); 1 HDMI; 1 RJ-45; 1 headphone/microphone combo/Pin 3-cell, 41 Wh Li-ion/Cân nặng 1.63Kg /Hệ điều hành Win 10 SL', NULL, 'laptop-hp-pavilion-14ce2050tu-7ya47pa-bo-vi-xu-ly-intel-core-i3-8145u21ghz4mb-cache-chipset-intel-bo-nho-trong-8-gb-ddr4-so-khe-cam-1vga-intel-uhd-620o-cung-256gb-ssdcard-reader-1-multiformat-sd-media-card-readerbao-mat-cong-nghe-kensington-microsaver-lock-slotman-hinh-140-fhd-brightview-wledbacklit-1920-x-1080webcam-hp-wide-vision-hd-camera-with-integrated-dual-array-digital-microphoneaudio-bo-play-hp-audio-boost-dual-speakersgiao-tiep-khong-day-intel-80211abgnac-1x1-wifi-and-bluetooth-42-combocong-giao-tiep-1-usb-31-typec-gen-1-data-transfer-up-to-5-gbs-2-usb-31-gen-1-data-transfer-only-1-hdmi-1-rj45-1-headphonemicrophone-combopin-3cell-41-wh-liioncan-nang-163kg-he-dieu-hanh-win-10-sl', NULL, NULL, NULL, '12 Tháng (BH Tận nơi)', NULL, NULL, NULL, '484', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2164, 'Laptop HP 14s-dq1020TU (8QN33PA) (i5 1035G1/4GB RAM/256GB SSD/14\"HD/Win10/Bạc)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 13899000, 13720000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTHP761', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop HP 14s-dq1020TU (8QN33PA) (i5 1035G1/4GB RAM/256GB SSD/14\"HD/Win10/Bạc)', NULL, 'laptop-hp-14sdq1020tu-8qn33pa-i5-1035g14gb-ram256gb-ssd14hdwin10bac', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '484', NULL, NULL, 0, 1, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2165, 'Laptop Lenovo IdeaPad 130-15IKB 81H7007JVN i5 8250U 4GB/1TB HDD/15.6\"HD/Dos/Đen', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 9699000, 9350000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTLE514', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Lenovo IdeaPad 130-15IKB 81H7007JVN i5 8250U 4GB/1TB HDD/15.6\"HD/Dos/Đen', NULL, 'laptop-lenovo-ideapad-13015ikb-81h7007jvn-i5-8250u-4gb1tb-hdd156hddosden', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '484', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0);
INSERT INTO `product` (`product_id`, `product_name`, `alias`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_img_2`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`, `producttag_arr`, `thuoc_tinh`, `xay_dung_id`, `product_views`, `product_stock`, `product_price_1`, `product_price_2`, `product_img_1`, `clear_stock`) VALUES
(2166, 'Laptop Lenovo IdeaPad S340-15IWL (81N800AAVN) (i5 8265U/4GB RAM/1TB HDD/15.6\"FHD/Win/Grey)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 13299000, 13000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTLE542', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Lenovo IdeaPad S340-15IWL (81N800AAVN) (i5 8265U/4GB RAM/1TB HDD/15.6\"FHD/Win/Grey)', NULL, 'laptop-lenovo-ideapad-s34015iwl-81n800aavn-i5-8265u4gb-ram1tb-hdd156fhdwingrey', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '484', NULL, NULL, 0, 1, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2167, 'Laptop Lenovo IdeaPad S145-15IWL (81W8001YVN) (i5 1035G1/4GB RAM/256Gb SSD/15.6\"FHD/Win/Grey)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 12849000, 12600000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTLE561', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Lenovo IdeaPad S145-15IWL (81W8001YVN) (i5 1035G1/4GB RAM/256Gb SSD/15.6\"FHD/Win/Grey)', NULL, 'laptop-lenovo-ideapad-s14515iwl-81w8001yvn-i5-1035g14gb-ram256gb-ssd156fhdwingrey', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '484', NULL, NULL, 0, 12, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2168, 'Laptop Lenovo IdeaPad S145-14IIL (81W6001GVNN) (i3 1005G1/4GB RAM/256GB SSD/14\"FHD/Win10/Grey)', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 10599000, 10300000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'LTLE571', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Laptop Lenovo IdeaPad S145-14IIL (81W6001GVNN) (i3 1005G1/4GB RAM/256GB SSD/14\"FHD/Win10/Grey)', NULL, 'laptop-lenovo-ideapad-s14514iil-81w6001gvnn-i3-1005g14gb-ram256gb-ssd14fhdwin10grey', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '484', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2169, 'Mouse Eblue Game EMS151REVN-IU USB Red, ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 79000, 49000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MEEB079', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mouse Eblue Game EMS151REVN-IU USB Red, ', NULL, 'mouse-eblue-game-ems151revniu-usb-red-', NULL, NULL, NULL, '', NULL, NULL, NULL, '505', NULL, NULL, 12, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2170, 'Mouse Lanjun M1063 Optical USB, ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 89000, 59000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MELJ005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mouse Lanjun M1063 Optical USB, ', NULL, 'mouse-lanjun-m1063-optical-usb-', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '505', NULL, NULL, 12, 5, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2171, 'Mouse Genius Netscroll NS 120 Optical PS2, ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 109000, 79000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MEGE008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mouse Genius Netscroll NS 120 Optical PS2, ', NULL, 'mouse-genius-netscroll-ns-120-optical-ps2-', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '505', NULL, NULL, 12, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2172, 'Mouse Newmen M386 Optical USB Black, ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 109000, 79000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MENE061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mouse Newmen M386 Optical USB Black, ', NULL, 'mouse-newmen-m386-optical-usb-black-', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '505', NULL, NULL, 12, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2173, 'Mouse Rapoo N1130', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 118000, 88000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MERA049', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mouse Rapoo N1130', NULL, 'mouse-rapoo-n1130', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '505', NULL, NULL, 12, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2174, 'Mouse Newmen F430 Wireless White', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 129000, 99000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'MENE066', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Mouse Newmen F430 Wireless White', NULL, 'mouse-newmen-f430-wireless-white', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '505', NULL, NULL, 12, 3, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2175, 'Keyboard Jupistar USB KB6106, ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 139000, 109000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'KBJU005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Keyboard Jupistar USB KB6106, ', NULL, 'keyboard-jupistar-usb-kb6106-', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '504', NULL, NULL, 11, 5, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2176, 'Keyboard Genius KB125 USB Black', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 169000, 139000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'KBGE048', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Keyboard Genius KB125 USB Black', NULL, 'keyboard-genius-kb125-usb-black', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '504', NULL, NULL, 11, 19, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2177, 'Keyboard Eblue EKM046BK USB Black', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 209000, 179000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 'KBEB001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Keyboard Eblue EKM046BK USB Black', NULL, 'keyboard-eblue-ekm046bk-usb-black', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '504', NULL, NULL, 11, 31, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2178, 'Bộ Keyboard + Mouse  Motospeed S51 USB Đen, ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 229000, 199000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'KBMT028', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Bộ Keyboard + Mouse  Motospeed S51 USB Đen, ', NULL, 'bo-keyboard-mouse-motospeed-s51-usb-den-', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '504', NULL, NULL, 11, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2179, 'Keyboard Fuhlen Game Pro L420 USB, ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 249000, 219000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'KBFU005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Keyboard Fuhlen Game Pro L420 USB, ', NULL, 'keyboard-fuhlen-game-pro-l420-usb-', NULL, NULL, NULL, '24 Tháng', NULL, NULL, NULL, '504', NULL, NULL, 11, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2180, 'Bộ Keyboard + Mouse  Motospeed S700 Gaming Combo (K107 + F301) - USB, ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 269000, 239000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'KBMT012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Bộ Keyboard + Mouse  Motospeed S700 Gaming Combo (K107 + F301) - USB, ', NULL, 'bo-keyboard-mouse-motospeed-s700-gaming-combo-k107-f301-usb-', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '504', NULL, NULL, 11, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2181, 'Keyboard Numpad Mofii X910 Wireless Pink', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 279000, 249000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'KBMF019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Keyboard Numpad Mofii X910 Wireless Pink', NULL, 'keyboard-numpad-mofii-x910-wireless-pink', NULL, NULL, NULL, '24 Tháng', NULL, NULL, NULL, '504', NULL, NULL, 11, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2182, 'Bộ Keyboard + Mouse Delux Optical Wireless K6010G+M391GB, ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 289000, 259000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'KBDL014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Bộ Keyboard + Mouse Delux Optical Wireless K6010G+M391GB, ', NULL, 'bo-keyboard-mouse-delux-optical-wireless-k6010gm391gb-', NULL, NULL, NULL, '12 Tháng', NULL, NULL, NULL, '504', NULL, NULL, 11, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2183, 'Monitor HP 18.5\"B191 LED', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 0, 1569000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'MOHP092', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp172', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Monitor HP 18.5\"B191 LED', NULL, 'monitor-hp-185b191-led', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '503', NULL, NULL, 10, 6, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2184, 'HP 18,5\"19KA LED, ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1699000, 1649000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'MOHP083', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp168', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'HP 18,5\"19KA LED, ', NULL, 'hp-18519ka-led-', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '503', NULL, NULL, 10, 10, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2185, 'Monitor Dell 18.5\"E1916HV Wide LED', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 0, 1799000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'MODE118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp143', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Monitor Dell 18.5\"E1916HV Wide LED', NULL, 'monitor-dell-185e1916hv-wide-led', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '503', NULL, NULL, 10, 0, 0, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2186, 'Asus 23,6\"VS247NR LED', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 2799000, 1899000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'MOAS071', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp111', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Asus 23,6\"VS247NR LED', NULL, 'asus-236vs247nr-led', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '503', NULL, NULL, 10, 3, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2187, 'Dell 19,5\"E2016 Wide LED, ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 0, 1939000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 'MODE121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp144', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Dell 19,5\"E2016 Wide LED, ', NULL, 'dell-195e2016-wide-led-', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '503', NULL, NULL, 10, 4, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 0),
(2188, 'LG 19,5\"20MP48A LED IPS, ', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 0, 1989000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'MOLG115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp189', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'LG 19,5\"20MP48A LED IPS, ', NULL, 'lg-19520mp48a-led-ips-', NULL, NULL, NULL, '24 Tháng', NULL, NULL, NULL, '503', NULL, NULL, 10, 5, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2189, 'Monitor LG 19.5\"20MK400H-B LED', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 0, 2109000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'MOLG149', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp197', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Monitor LG 19.5\"20MK400H-B LED', NULL, 'monitor-lg-19520mk400hb-led', NULL, NULL, NULL, '24 Tháng', NULL, NULL, NULL, '503', NULL, NULL, 10, 3, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2190, 'LG 21,5\"22M47D LED', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 0, 2349000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'MOLG080', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp187', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'LG 21,5\"22M47D LED', NULL, 'lg-21522m47d-led', NULL, NULL, NULL, '24 Tháng', NULL, NULL, NULL, '503', NULL, NULL, 10, 6, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2191, 'Màn hình LG 23,6\"24M49VQ-P LED IPS', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 0, 2699000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'MOLG135', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp193', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Màn hình LG 23,6\"24M49VQ-P LED IPS', NULL, 'man-hinh-lg-23624m49vqp-led-ips', NULL, NULL, NULL, '24 Tháng', NULL, NULL, NULL, '503', NULL, NULL, 10, 6, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2192, 'Ổ cứng gắn ngoài WD My Passport 1TB 2.5\" USB 3.0 Xanh WDBYNN0010BBL', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1899000, 1399000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'HDWD192', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp222', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'Ổ cứng gắn ngoài WD My Passport 1TB 2.5\" USB 3.0 Xanh WDBYNN0010BBL', NULL, 'o-cung-gan-ngoai-wd-my-passport-1tb-25-usb-30-xanh-wdbynn0010bbl', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '517', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2193, 'Ổ cứng gắn ngoài WD My PassPort Ultra Silver 1TB màu bạc 2.5\" WDBC3C0010BSL-WESN', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 2290000, 1799000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'HDWD278', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp230', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Bao Da HDD Ext (Khuyến Mãi)BAOD020 Hoặc Bao HDD WD Ext + Vải (Khuyến Mãi)BAOD086 Hoặc TUID122', NULL, NULL, 0, 'Ổ cứng gắn ngoài WD My PassPort Ultra Silver 1TB màu bạc 2.5\" WDBC3C0010BSL-WESN', NULL, 'o-cung-gan-ngoai-wd-my-passport-ultra-silver-1tb-mau-bac-25-wdbc3c0010bslwesn', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '517', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2194, 'Ổ cứng gắn ngoài Seagate Backup Plus Slim Portable Drive 1TB 2.5\" Black', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1799000, 1479000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'HDSE130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp202', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Tặng Bình Giữ Nhiệt Lock&Lock trị giá [199.000đ] (BINH003) - Áp dụng tại chi nhánh Hải Phòng đến khi hết quà tặng \n+ Tặng bao bảo vệ ổ cứng Seagate trị giá [99.000đ] (BAOD020) hoặc Túi bảo vệ ổ cứng 2.5\" ORICO PHD-25 (TUID142) - Áp dụng đến khi hết quà tặng', NULL, NULL, 0, 'Ổ cứng gắn ngoài Seagate Backup Plus Slim Portable Drive 1TB 2.5\" Black', NULL, 'o-cung-gan-ngoai-seagate-backup-plus-slim-portable-drive-1tb-25-black', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '517', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2195, 'Ổ cứng gắn ngoài WD My Passport 1TB 2.5\" USB 3.0 Cam WDBYNN0010BOR', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1899000, 1599000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'HDWD193', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp224', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Tặng mũ bảo hiểm thời trang WD trị giá [199.000đ] (MUBH019) - Áp dụng tại HCM đến khi hết quà + Tặng Bao vải đựng HDD WD Ext (BAOD086) - Áp dụng đến khi hết quà + + Tặng túi dây kéo WD (khuyến mại) trị giá [49.000đ] (HATL930] -Áp dụng đến khi hết quà tặng', NULL, NULL, 0, 'Ổ cứng gắn ngoài WD My Passport 1TB 2.5\" USB 3.0 Cam WDBYNN0010BOR', NULL, 'o-cung-gan-ngoai-wd-my-passport-1tb-25-usb-30-cam-wdbynn0010bor', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '517', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2196, 'Ổ cứng gắn ngoài Seagate Backup Plus Slim Portable Drive 1TB 2.5\" SILVER', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1690000, 1479000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'HDSE131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp203', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Tặng Bình Giữ Nhiệt Lock&Lock trị giá [199.000đ] (BINH003) hoặc Bình giữ nhiệt Elmich (Khuyến mãi cho ổ WD External) (BINH032)  - Áp dụng đến khi hết quà tặng\n+ Tặng bao bảo vệ ổ cứng Seagate trị giá [99.000đ] (BAOD020) hoặc Túi bảo vệ ổ cứng 2.5\" ORICO PHD-25 (TUID142) - Áp dụng đến khi hết quà tặng', NULL, NULL, 0, 'Ổ cứng gắn ngoài Seagate Backup Plus Slim Portable Drive 1TB 2.5\" SILVER', NULL, 'o-cung-gan-ngoai-seagate-backup-plus-slim-portable-drive-1tb-25-silver', NULL, NULL, NULL, '36 Tháng', NULL, NULL, NULL, '517', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1),
(2197, 'Ổ cứng gắn ngoài WD Element 500GB/5400 2.5\" USB 3.0', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 1390000, 1249000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'HDWD096', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp221', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Bao Da HDD Ext (Khuyến Mãi)BAOD020 Hoặc Bao HDD WD Ext + Vải (Khuyến Mãi)BAOD086 Hoặc TUID122', NULL, NULL, 0, 'Ổ cứng gắn ngoài WD Element 500GB/5400 2.5\" USB 3.0', NULL, 'o-cung-gan-ngoai-wd-element-500gb5400-25-usb-30', NULL, NULL, NULL, '24 Tháng', NULL, NULL, NULL, '517', NULL, NULL, 0, 0, 1, 0, 0, 'https://drive.google.com/open?id=1QU99j0rTwPouSijSD_5NK5-xYDPOHDMH', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat`
--

CREATE TABLE `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci,
  `productcat_des` text COLLATE utf8_unicode_ci,
  `productcat_content` text COLLATE utf8_unicode_ci,
  `productcat_parent` int(11) NOT NULL DEFAULT '0',
  `productcat_sort_order` int(11) NOT NULL DEFAULT '0',
  `productcat_img` text COLLATE utf8_unicode_ci,
  `productcat_sub` text COLLATE utf8_unicode_ci NOT NULL,
  `productcat_main_img` text COLLATE utf8_unicode_ci NOT NULL,
  `productcat_sub_img` text COLLATE utf8_unicode_ci NOT NULL,
  `productcat_banner_img` text COLLATE utf8_unicode_ci NOT NULL,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `productcat_sub_img1` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat`
--

INSERT INTO `productcat` (`productcat_id`, `productcat_name`, `productcat_des`, `productcat_content`, `productcat_parent`, `productcat_sort_order`, `productcat_img`, `productcat_sub`, `productcat_main_img`, `productcat_sub_img`, `productcat_banner_img`, `productcat_created_date`, `productcat_update_date`, `productcat_sub_info1`, `productcat_sub_info2`, `productcat_sub_info3`, `productcat_sub_info4`, `productcat_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `productcat_sub_img1`) VALUES
(468, 'Sản phẩm nổi bật', '', '', 0, 0, 'AVATAR_thiet_bi_phong_tam_TOTO_MINH_PHUONG.jpg', 'AVATAR_thiet_bi_phong_tam_TOTO_MINH_PHUONG.jpg', 'AVATAR_thiet_bi_phong_tam_TOTO_MINH_PHUONG.jpg', 'AVATAR_thiet_bi_phong_tam_TOTO_MINH_PHUONG.jpg', 'BANNER_thiet_bi_phong_tam_toto_MINH_PHUONG.jpg', '2018-11-16 17:11:54', NULL, '', '', '', '', '', 0, 'Sản phẩm nổi bật', '', 'san-pham-noi-bat', '', 8, '[\"{\\\"image\\\":\\\"AVATAR_thiet_bi_phong_tam_TOTO_MINH_PHUONG.jpg\\\"}\"]'),
(469, 'Bán chạy nhất', '', '', 468, 0, 'Artboard 2 copy 3.png', 'avatar_ban_chay.jpg', 'avatar_ban_chay.jpg', 'avatar_ban_chay.jpg', 'banner_ban_chay_nhat.jpg', '2018-12-24 16:12:13', NULL, '', '', '', '', '', 1, 'Bán chạy nhất', '', 'ban-chay-nhat', '', 8, '[\"{\\\"image\\\":\\\"avatar_ban_chay.jpg\\\"}\"]'),
(470, 'Hàng khuyến mãi', '', '', 468, 0, 'sale.png', 'avatar_chau_rua_mat.jpg', 'avatar_chau_rua_mat.jpg', 'avatar_chau_rua_mat.jpg', '181117 banner toto_minh phuong-02.jpg', '2018-12-24 16:12:24', NULL, '', '', '', '', '', 1, 'Hàng khuyến mãi', '', 'hang-khuyen-mai', '', 8, '[\"{\\\"image\\\":\\\"avatar_chau_rua_mat.jpg\\\"}\"]'),
(471, 'Hàng mới về', '', '', 468, 0, 'new.png', 'avatar_hang_moi_ve.jpg', 'avatar_hang_moi_ve.jpg', 'avatar_hang_moi_ve.jpg', 'banner-hang-moi-ve.jpg', '2018-12-24 16:12:41', NULL, '', '', '', '', '', 1, 'Hàng mới về', '', 'hang-moi-ve', '', 8, '[\"{\\\"image\\\":\\\"avatar_hang_moi_ve.jpg\\\"}\"]'),
(483, 'Linh kiện máy tinh', '', '', 0, 0, 'rom.png', '', '', '', '', '2020-04-29 17:04:19', NULL, '', '', '', '', '', 1, 'Linh kiện máy tinh', '', 'linh-kien-may-tinh', '', 9, '[]'),
(484, 'Laptop - Máy tính xách tay', '', '', 0, 0, 'laptop.png', '', '', '', '', '2020-05-13 11:05:54', NULL, '', '', '', '', '', 1, 'Laptop - Máy tính xách tay', '', 'laptop-may-tinh-xach-tay', '', 9, '[]'),
(485, 'PC - Máy tính để bàn', '', '', 0, 0, 'tower-pc.png', '', '', '', '', '2020-05-13 11:05:08', NULL, '', '', '', '', '', 1, 'PC - Máy tính để bàn', '', 'pc-may-tinh-de-ban', '', 9, '[]'),
(486, 'Tản nhiệt - Cooling', '', '', 0, 0, 'menu-icon-7.png', '', '', '', '', '2020-05-14 15:05:05', NULL, '', '', '', '', '', 1, 'Tản nhiệt - Cooling', '', 'tan-nhiet-cooling', '', 9, '[]'),
(487, 'Games Net', '', '', 0, 0, 'joystick.png', '', '', '', '', '2020-05-14 15:05:37', NULL, '', '', '', '', '', 1, 'Games Net', '', 'games-net', '', 9, '[]'),
(488, 'Thiết bị nghe nhìn', '', '', 0, 0, 'earphone.png', '', '', '', '', '2020-04-14 14:04:48', NULL, '', '', '', '', '', 1, 'Thiết bị nghe nhìn', '', 'thiet-bi-nghe-nhin', '', 9, '[]'),
(489, 'Thiết bị lưu trữ', '', '', 0, 2, 'processor.png', '', '', '', '', '2020-05-13 13:05:04', NULL, '', '', '', '', '', 1, 'Thiết bị lưu trữ', '', 'thiet-bi-luu-tru', '', 9, '[]'),
(490, 'Thiết bị mạng', '', '', 0, 2, 'computer.png', '', '', '', '', '2020-05-13 13:05:27', NULL, '', '', '', '', '', 1, 'Thiết bị mạng', '', 'thiet-bi-mang', '', 9, '[]'),
(491, 'Thiết bị văn phòng', '', '', 0, 4, 'print.png', '', '', '', '', '2020-05-13 13:05:12', NULL, '', '', '', '', '', 1, 'Thiết bị văn phòng', '', 'thiet-bi-van-phong', '', 9, '[]'),
(492, 'Thiết bị khác', '', '', 0, 6, 'cmyk.png', '', '', '', '', '2020-05-13 13:05:18', NULL, '', '', '', '', '', 1, 'Thiết bị khác', '', 'thiet-bi-khac', '', 9, '[]'),
(493, 'CPU - Bộ vi xử lý', '', '', 483, 0, '2296.jpg', '2296.jpg', '2296.jpg', '', '', '2020-04-14 12:04:25', NULL, '', '', '', '', '', 1, 'CPU - Bộ vi xử lý', '', 'cpu-bo-vi-xu-ly', '', 9, '[]'),
(494, 'MAIN - Bo mạch chủ', '', '', 483, 0, 'Main.png', 'Main.png', 'Main.png', '', '', '2020-05-16 05:05:01', NULL, '', '', '', '', '', 1, 'MAIN - Bo mạch chủ', '', 'main-bo-mach-chu', '', 9, '[]'),
(495, 'RAM - Bộ nhớ trong', '', '', 483, 0, 'Ram.PNG', 'Ram.PNG', 'Ram.PNG', '', '', '2020-05-16 05:05:43', NULL, '', '', '', '', '', 1, 'RAM - Bộ nhớ trong', '', 'ram-bo-nho-trong', '', 9, '[]'),
(496, 'VGA - Card màn hình', '', '', 483, 0, 'VGA.PNG', 'VGA.PNG', 'VGA.PNG', '', '', '2020-05-16 06:05:13', NULL, '', '', '', '', '', 1, 'VGA - Card màn hình', '', 'vga-card-man-hinh', '', 9, '[]'),
(497, 'ODD - Ổ đĩa quang', '', '', 483, 0, 'Ổ đĩa.PNG', 'Ổ đĩa.PNG', 'Ổ đĩa.PNG', '', '', '2020-05-16 06:05:07', NULL, '', '', '', '', '', 1, 'ODD - Ổ đĩa quang', '', 'odd-o-dia-quang', '', 9, '[]'),
(498, 'Ổ thể rắn SSD', '', '', 483, 0, 'SSD.PNG', 'SSD.PNG', 'SSD.PNG', '', '', '2020-05-16 05:05:16', NULL, '', '', '', '', '', 1, 'Ổ thể rắn SSD', '', 'o-the-ran-ssd', '', 9, '[]'),
(499, 'Ổ cứng HDD', '', '', 483, 0, 'Ổ cứng HDD.PNG', 'Ổ cứng HDD.PNG', 'Ổ cứng HDD.PNG', '', '', '2020-05-16 06:05:26', NULL, '', '', '', '', '', 1, 'Ổ cứng HDD', '', 'o-cung-hdd', '', 9, '[]'),
(500, 'SẢN PHẨM CLEAR STOCK bỏ', '', '', 0, 7, 'print (1).png', '', '', '', '', '2020-05-26 16:05:47', NULL, '', '', '', '', '', 0, 'SẢN PHẨM CLEAR STOCK bỏ', '', 'san-pham-clear-stock-bo', '', 9, '[]'),
(501, 'PSU - Nguồn máy tính', '', '', 483, 0, 'nguồn..PNG', 'nguồn..PNG', 'nguồn..PNG', '', '', '2020-05-16 06:05:31', NULL, '', '', '', '', '', 1, 'PSU - Nguồn máy tính', '', 'psu-nguon-may-tinh', '', 9, '[]'),
(502, 'CASE - Vỏ máy tính', '', '', 483, 0, 'Vỏ.PNG', 'Vỏ.PNG', 'Vỏ.PNG', '', '', '2020-05-16 06:05:32', NULL, '', '', '', '', '', 1, 'CASE - Vỏ máy tính', '', 'case-vo-may-tinh', '', 9, '[]'),
(503, 'Màn hình máy tính', '', '', 483, 0, 'Màn hình.PNG', 'Màn hình.PNG', 'Màn hình.PNG', '', '', '2020-05-16 06:05:00', NULL, '', '', '', '', '', 1, 'Màn hình máy tính', '', 'man-hinh-may-tinh', '', 9, '[]'),
(504, 'Bàn phím', '', '', 483, 0, 'Bàn phím.PNG', 'Bàn phím.PNG', 'Bàn phím.PNG', '', '', '2020-05-16 06:05:19', NULL, '', '', '', '', '', 1, 'Bàn phím', '', 'ban-phim', '', 9, '[]'),
(505, 'Chuột', '', '', 483, 0, 'chuột.PNG', 'chuột.PNG', 'chuột.PNG', '', '', '2020-05-16 06:05:38', NULL, '', '', '', '', '', 1, 'Chuột', '', 'chuot', '', 9, '[]'),
(506, 'Linh kiện khác', '', '', 483, 0, 'Linh kiện khác.PNG', 'Linh kiện khác.PNG', 'Linh kiện khác.PNG', '', '', '2020-05-16 06:05:00', NULL, '', '', '', '', '', 1, 'Linh kiện khác', '', 'linh-kien-khac', '', 9, '[]'),
(507, 'Máy trợ giảng', '', '', 0, 1, 'depositphotos_202460316-stock-illustration-megaphone-icon-vector-line-speaker.jpg', 'loa.PNG', 'loa.PNG', 'loa.PNG', 'loa.PNG', '2020-05-15 15:05:35', NULL, '', '', '', '', '', 1, 'Máy trợ giảng', '', 'may-tro-giang', '', 9, '[]'),
(508, 'Camera an ninh, hành trình', '', '', 0, 3, 'tải xuống.png', '', '', '', '', '2020-05-14 15:05:22', NULL, '', '', '', '', '', 1, 'Camera an ninh, hành trình', '', 'camera-an-ninh-hanh-trinh', '', 9, '[]'),
(509, 'Các loại cáp, cổng chuyển đổi', '', '', 0, 5, 'icon-caple-500x500.png', '', '', '', '', '2020-05-14 15:05:45', NULL, '', '', '', '', '', 1, 'Các loại cáp, cổng chuyển đổi', '', 'cac-loai-cap-cong-chuyen-doi', '', 9, '[]'),
(510, 'Phụ kiện các loại', '', '', 0, 5, 'phu-kien.png', '', '', '', '', '2020-05-14 15:05:32', NULL, '', '', '', '', '', 1, 'Phụ kiện các loại', '', 'phu-kien-cac-loai', '', 9, '[]'),
(511, 'Máy tính văn phòng hãng', '', '', 485, 0, '', '', '', '', '', '2020-05-13 13:05:55', NULL, '', '', '', '', '', 1, 'Máy tính văn phòng hãng', '', 'may-tinh-van-phong-hang', '', 9, '[]'),
(512, 'Máy tính build DAC', '', '', 485, 1, NULL, '', '', '', '', '2020-05-13 13:05:32', NULL, '', '', '', '', '', 1, 'Máy tính build DAC', '', 'may-tinh-build-dac', '', 9, '[]'),
(513, 'Webcam', '', '', 488, 3, NULL, '', '', '', '', '2020-05-13 14:05:00', NULL, '', '', '', '', '', 1, 'Webcam', '', 'webcam', '', 9, '[]'),
(514, 'Microphone', '', '', 488, 2, NULL, '', '', '', '', '2020-05-13 14:05:50', NULL, '', '', '', '', '', 1, 'Microphone', '', 'microphone', '', 9, '[]'),
(515, 'Tai nghe', '', '', 488, 1, NULL, '', '', '', '', '2020-05-13 14:05:31', NULL, '', '', '', '', '', 1, 'Tai nghe', '', 'tai-nghe', '', 9, '[]'),
(516, 'Loa, Loa máy tính', '', '', 488, 0, 'loa.PNG', 'loa.PNG', '', '', '', '2020-05-13 21:05:35', NULL, '', '', '', '', '', 1, 'Loa, Loa máy tính', '', 'loa-loa-may-tinh', '', 9, '[]'),
(517, 'Ổ cứng cắm ngoài SSD', '', '', 489, 0, '', '', '', '', '', '2020-05-13 14:05:36', NULL, '', '', '', '', '', 1, 'Ổ cứng cắm ngoài SSD', '', 'o-cung-cam-ngoai-ssd', '', 9, '[]'),
(518, 'USB', '', '', 489, 0, '', '', '', '', '', '2020-05-13 14:05:53', NULL, '', '', '', '', '', 1, 'USB', '', 'usb', '', 9, '[]'),
(519, 'Thẻ nhớ', '', '', 489, 0, '', '', '', '', '', '2020-05-13 14:05:12', NULL, '', '', '', '', '', 1, 'Thẻ nhớ', '', 'the-nho', '', 9, '[]'),
(520, 'Ổ lưu trữ mạng - NAS', '', '', 489, 0, '', '', '', '', '', '2020-05-13 14:05:37', NULL, '', '', '', '', '', 1, 'Ổ lưu trữ mạng - NAS', '', 'o-luu-tru-mang-nas', '', 9, '[]'),
(521, 'Bộ phát wifi - Rouder', '', '', 490, 0, '', '', '', '', '', '2020-05-13 14:05:20', NULL, '', '', '', '', '', 1, 'Bộ phát wifi - Rouder', '', 'bo-phat-wifi-rouder', '', 9, '[]'),
(522, 'Bộ kích sóng Wifi', '', '', 490, 0, '', '', '', '', '', '2020-05-13 14:05:39', NULL, '', '', '', '', '', 1, 'Bộ kích sóng Wifi', '', 'bo-kich-song-wifi', '', 9, '[]'),
(523, 'Card mạng', '', '', 490, 0, '', '', '', '', '', '2020-05-13 14:05:50', NULL, '', '', '', '', '', 1, 'Card mạng', '', 'card-mang', '', 9, '[]'),
(524, 'Thiết bị chia mạng - Switch', '', '', 490, 0, '', '', '', '', '', '2020-05-13 14:05:17', NULL, '', '', '', '', '', 1, 'Thiết bị chia mạng - Switch', '', 'thiet-bi-chia-mang-switch', '', 9, '[]'),
(525, 'Thiết bị phát Wifi 3G/4G', '', '', 490, 0, NULL, '', '', '', '', '2020-05-13 14:05:07', NULL, '', '', '', '', '', 1, 'Thiết bị phát Wifi 3G/4G', '', 'thiet-bi-phat-wifi-3g4g', '', 9, '[]'),
(526, 'Bộ Mesh Wifi', '', '', 490, 0, '', '', '', '', '', '2020-05-13 14:05:56', NULL, '', '', '', '', '', 1, 'Bộ Mesh Wifi', '', 'bo-mesh-wifi', '', 9, '[]'),
(527, 'Modem', '', '', 490, 0, '', '', '', '', '', '2020-05-13 14:05:08', NULL, '', '', '', '', '', 1, 'Modem', '', 'modem', '', 9, '[]'),
(528, 'Phụ kiện mạng', '', '', 490, 0, '', '', '', '', '', '2020-05-13 14:05:20', NULL, '', '', '', '', '', 1, 'Phụ kiện mạng', '', 'phu-kien-mang', '', 9, '[]'),
(529, 'Camera an ninh', '', '', 508, 0, '', '', '', '', '', '2020-05-13 14:05:06', NULL, '', '', '', '', '', 1, 'Camera an ninh', '', 'camera-an-ninh', '', 9, '[]'),
(530, 'Camera hành trình', '', '', 508, 0, '', '', '', '', '', '2020-05-13 14:05:25', NULL, '', '', '', '', '', 1, 'Camera hành trình', '', 'camera-hanh-trinh', '', 9, '[]'),
(531, 'Đầu ghi hình KTS', '', '', 508, 0, '', '', '', '', '', '2020-05-13 14:05:42', NULL, '', '', '', '', '', 1, 'Đầu ghi hình KTS', '', 'dau-ghi-hinh-kts', '', 9, '[]'),
(532, 'Máy in', '', '', 491, 0, '', '', '', '', '', '2020-05-13 14:05:09', NULL, '', '', '', '', '', 1, 'Máy in', '', 'may-in', '', 9, '[]'),
(533, 'Máy scan ảnh', '', '', 491, 0, '', '', '', '', '', '2020-05-13 14:05:23', NULL, '', '', '', '', '', 1, 'Máy scan ảnh', '', 'may-scan-anh', '', 9, '[]'),
(534, 'Bộ lưu điện', '', '', 491, 0, '', '', '', '', '', '2020-05-13 14:05:46', NULL, '', '', '', '', '', 1, 'Bộ lưu điện', '', 'bo-luu-dien', '', 9, '[]'),
(535, 'Mực máy in & phụ kiện', '', '', 491, 0, '', '', '', '', '', '2020-05-13 14:05:50', NULL, '', '', '', '', '', 1, 'Mực máy in & phụ kiện', '', 'muc-may-in-phu-kien', '', 9, '[]'),
(536, 'Máy chấm công', '', '', 491, 0, '', '', '', '', '', '2020-05-13 14:05:08', NULL, '', '', '', '', '', 1, 'Máy chấm công', '', 'may-cham-cong', '', 9, '[]'),
(537, 'Máy đếm tiền', '', '', 491, 0, '', '', '', '', '', '2020-05-13 14:05:24', NULL, '', '', '', '', '', 1, 'Máy đếm tiền', '', 'may-dem-tien', '', 9, '[]'),
(538, 'Dây cáp các loại', '', '', 509, 0, '', '', '', '', '', '2020-05-13 14:05:32', NULL, '', '', '', '', '', 1, 'Dây cáp các loại', '', 'day-cap-cac-loai', '', 9, '[]'),
(539, 'Thiết bị chuyển đổi', '', '', 509, 0, NULL, '', '', '', '', '2020-05-13 14:05:47', NULL, '', '', '', '', '', 1, 'Thiết bị chuyển đổi', '', 'thiet-bi-chuyen-doi', '', 9, '[]'),
(540, 'Dây cáp các loại pk', '', '', 510, 0, NULL, '', '', '', '', '2020-05-13 14:05:15', NULL, '', '', '', '', '', 1, 'Dây cáp các loại pk', '', 'day-cap-cac-loai-pk', '', 9, '[]'),
(541, 'Thiết bị chuyển đổi pk', '', '', 510, 0, NULL, '', '', '', '', '2020-05-13 14:05:06', NULL, '', '', '', '', '', 1, 'Thiết bị chuyển đổi pk', '', 'thiet-bi-chuyen-doi-pk', '', 9, '[]'),
(542, 'Bộ chia tín hiệu', '', '', 510, 0, NULL, '', '', '', '', '2020-05-13 14:05:57', NULL, '', '', '', '', '', 1, 'Bộ chia tín hiệu', '', 'bo-chia-tin-hieu', '', 9, '[]'),
(543, 'Phụ kiện laptop', '', '', 510, 0, NULL, '', '', '', '', '2020-05-13 14:05:47', NULL, '', '', '', '', '', 1, 'Phụ kiện laptop', '', 'phu-kien-laptop', '', 9, '[]'),
(544, 'Phụ kiện Gaming', '', '', 510, 0, NULL, '', '', '', '', '2020-05-13 14:05:38', NULL, '', '', '', '', '', 1, 'Phụ kiện Gaming', '', 'phu-kien-gaming', '', 9, '[]'),
(545, 'Phụ kiện HDD', '', '', 510, 0, NULL, '', '', '', '', '2020-05-13 14:05:29', NULL, '', '', '', '', '', 1, 'Phụ kiện HDD', '', 'phu-kien-hdd', '', 9, '[]'),
(546, 'Phụ kiện điện thoại, máy tính', '', '', 510, 0, NULL, '', '', '', '', '2020-05-13 14:05:20', NULL, '', '', '', '', '', 1, 'Phụ kiện điện thoại, máy tính', '', 'phu-kien-dien-thoai-may-tinh', '', 9, '[]'),
(547, 'Phụ kiện tai nghe', '', '', 510, 0, NULL, '', '', '', '', '2020-05-13 14:05:09', NULL, '', '', '', '', '', 1, 'Phụ kiện tai nghe', '', 'phu-kien-tai-nghe', '', 9, '[]'),
(548, 'Phần mềm', '', '', 492, 0, '', '', '', '', '', '2020-05-13 14:05:39', NULL, '', '', '', '', '', 1, 'Phần mềm', '', 'phan-mem', '', 9, '[]'),
(549, 'Máy chiếu', '', '', 492, 0, NULL, '', '', '', '', '2020-05-13 14:05:49', NULL, '', '', '', '', '', 1, 'Máy chiếu', '', 'may-chieu', '', 9, '[]'),
(550, 'Máy chủ', '', '', 492, 0, '', '', '', '', '', '2020-05-13 14:05:14', NULL, '', '', '', '', '', 1, 'Máy chủ', '', 'may-chu', '', 9, '[]'),
(551, 'Bảng, bút vẽ điện tử', '', '', 492, 0, '', '', '', '', '', '2020-05-13 14:05:34', NULL, '', '', '', '', '', 1, 'Bảng, bút vẽ điện tử', '', 'bang-but-ve-dien-tu', '', 9, '[]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat_languages`
--

CREATE TABLE `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci,
  `lang_productcat_content` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat_languages`
--

INSERT INTO `productcat_languages` (`id`, `productcat_id`, `lang_productcat_name`, `languages_code`, `lang_productcat_des`, `lang_productcat_content`, `lang_productcat_sub_info1`, `lang_productcat_sub_info2`, `lang_productcat_sub_info3`, `lang_productcat_sub_info4`, `lang_productcat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(921, 468, 'Sản phẩm nổi bật', 'vn', '', '', '', '', '', '', '', 0, 'san-pham-noi-bat', '', 'Sản phẩm nổi bật', ''),
(922, 468, 'english version Thiết bị phòng tắm', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-thiet-bi-phong-tam-1', '', 'Thiết bị phòng tắm', ''),
(923, 469, 'Bán chạy nhất', 'vn', '', '', '', '', '', '', '', 0, 'ban-chay-nhat', '', 'Bán chạy nhất', ''),
(924, 469, 'english version Bán chạy nhất', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-ban-chay-nhat', '', 'Bán chạy nhất', ''),
(925, 470, 'Hàng khuyến mãi', 'vn', '', '', '', '', '', '', '', 0, 'hang-khuyen-mai', '', 'Hàng khuyến mãi', ''),
(926, 470, 'english version Hàng khuyến mãi', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-hang-khuyen-mai', '', 'Hàng khuyến mãi', ''),
(927, 471, 'Hàng mới về', 'vn', '', '', '', '', '', '', '', 0, 'hang-moi-ve', '', 'Hàng mới về', ''),
(928, 471, 'english version Hàng mới về', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-hang-moi-ve', '', 'Hàng mới về', ''),
(951, 483, 'Linh kiện máy tinh', 'vn', '', '', '', '', '', '', '', 0, 'linh-kien-may-tinh', '', 'Linh kiện máy tinh', ''),
(952, 483, 'english version Linh kiện máy tinh', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-linh-kien-may-tinh', '', 'Linh kiện máy tinh', ''),
(953, 484, 'Laptop - Máy tính xách tay', 'vn', '', '', '', '', '', '', '', 0, 'laptop-may-tinh-xach-tay', '', 'Laptop - Máy tính xách tay', ''),
(954, 484, 'english version Máy tính xách tay', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-may-tinh-xach-tay', '', 'Máy tính xách tay', ''),
(955, 485, 'PC - Máy tính để bàn', 'vn', '', '', '', '', '', '', '', 0, 'pc-may-tinh-de-ban', '', 'PC - Máy tính để bàn', ''),
(956, 485, 'english version Máy tính để bàn', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-may-tinh-de-ban', '', 'Máy tính để bàn', ''),
(957, 486, 'Tản nhiệt - Cooling', 'vn', '', '', '', '', '', '', '', 0, 'tan-nhiet-cooling', '', 'Tản nhiệt - Cooling', ''),
(958, 486, 'english version Gamegear - Cooling', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-gamegear-cooling', '', 'Gamegear - Cooling', ''),
(959, 487, 'Games Net', 'vn', '', '', '', '', '', '', '', 0, 'games-net', '', 'Games Net', ''),
(960, 487, 'english version Games Net', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-games-net', '', 'Games Net', ''),
(961, 488, 'Thiết bị nghe nhìn', 'vn', '', '', '', '', '', '', '', 0, 'thiet-bi-nghe-nhin', '', 'Thiết bị nghe nhìn', ''),
(962, 488, 'english version Thiết bị nghe nhìn', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-thiet-bi-nghe-nhin', '', 'Thiết bị nghe nhìn', ''),
(963, 489, 'Thiết bị lưu trữ', 'vn', '', '', '', '', '', '', '', 0, 'thiet-bi-luu-tru', '', 'Thiết bị lưu trữ', ''),
(964, 489, 'english version Thiết bị nghe nhìn', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-thiet-bi-nghe-nhin-1', '', 'Thiết bị nghe nhìn', ''),
(965, 490, 'Thiết bị mạng', 'vn', '', '', '', '', '', '', '', 0, 'thiet-bi-mang', '', 'Thiết bị mạng', ''),
(966, 490, 'english version Thiết bị mạng', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-thiet-bi-mang', '', 'Thiết bị mạng', ''),
(967, 491, 'Thiết bị văn phòng', 'vn', '', '', '', '', '', '', '', 0, 'thiet-bi-van-phong', '', 'Thiết bị văn phòng', ''),
(968, 491, 'english version Thiết bị văn phòng', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-thiet-bi-van-phong', '', 'Thiết bị văn phòng', ''),
(969, 492, 'Thiết bị khác', 'vn', '', '', '', '', '', '', '', 0, 'thiet-bi-khac', '', 'Thiết bị khác', ''),
(970, 492, 'english version Mục khác', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-muc-khac', '', 'Mục khác', ''),
(971, 493, 'CPU - Bộ vi xử lý', 'vn', '', '', '', '', '', '', '', 0, 'cpu-bo-vi-xu-ly', '', 'CPU - Bộ vi xử lý', ''),
(972, 493, 'english version CPU - Bộ vi xử lý', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cpu-bo-vi-xu-ly', '', 'CPU - Bộ vi xử lý', ''),
(973, 494, 'MAIN - Bo mạch chủ', 'vn', '', '', '', '', '', '', '', 0, 'main-bo-mach-chu', '', 'MAIN - Bo mạch chủ', ''),
(974, 494, 'english version MAIN - Bo mạch chủ', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-main-bo-mach-chu', '', 'MAIN - Bo mạch chủ', ''),
(975, 495, 'RAM - Bộ nhớ trong', 'vn', '', '', '', '', '', '', '', 0, 'ram-bo-nho-trong', '', 'RAM - Bộ nhớ trong', ''),
(976, 495, 'english version RAM - Bộ nhớ trong', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-ram-bo-nho-trong', '', 'RAM - Bộ nhớ trong', ''),
(977, 496, 'VGA - Card màn hình', 'vn', '', '', '', '', '', '', '', 0, 'vga-card-man-hinh', '', 'VGA - Card màn hình', ''),
(978, 496, 'english version VGA - Card màn hình', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-vga-card-man-hinh', '', 'VGA - Card màn hình', ''),
(979, 497, 'ODD - Ổ đĩa quang', 'vn', '', '', '', '', '', '', '', 0, 'odd-o-dia-quang', '', 'ODD - Ổ đĩa quang', ''),
(980, 497, 'english version ODD - Ổ đĩa quang', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-odd-o-dia-quang', '', 'ODD - Ổ đĩa quang', ''),
(981, 498, 'Ổ thể rắn SSD', 'vn', '', '', '', '', '', '', '', 0, 'o-the-ran-ssd', '', 'Ổ thể rắn SSD', ''),
(982, 498, 'english version Ổ thể rắn SSD', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-o-the-ran-ssd', '', 'Ổ thể rắn SSD', ''),
(983, 499, 'Ổ cứng HDD', 'vn', '', '', '', '', '', '', '', 0, 'o-cung-hdd', '', 'Ổ cứng HDD', ''),
(984, 499, 'english version Ổ cứng HDD', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-o-cung-hdd', '', 'Ổ cứng HDD', ''),
(985, 500, 'SẢN PHẨM CLEAR STOCK bỏ', 'vn', '', '', '', '', '', '', '', 0, 'san-pham-clear-stock-bo', '', 'SẢN PHẨM CLEAR STOCK bỏ', ''),
(986, 500, 'english version SẢN PHẨM CLEAR STOCK', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-san-pham-clear-stock', '', 'SẢN PHẨM CLEAR STOCK', ''),
(987, 501, 'PSU - Nguồn máy tính', 'vn', '', '', '', '', '', '', '', 0, 'psu-nguon-may-tinh', '', 'PSU - Nguồn máy tính', ''),
(988, 501, 'english version PSU - Nguồn máy tính', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-psu-nguon-may-tinh', '', 'PSU - Nguồn máy tính', ''),
(989, 502, 'CASE - Vỏ máy tính', 'vn', '', '', '', '', '', '', '', 0, 'case-vo-may-tinh', '', 'CASE - Vỏ máy tính', ''),
(990, 502, 'english version Màn hình máy tính', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-man-hinh-may-tinh', '', 'Màn hình máy tính', ''),
(991, 503, 'Màn hình máy tính', 'vn', '', '', '', '', '', '', '', 0, 'man-hinh-may-tinh', '', 'Màn hình máy tính', ''),
(992, 503, 'english version Ban phím', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-ban-phim', '', 'Ban phím', ''),
(993, 504, 'Bàn phím', 'vn', '', '', '', '', '', '', '', 0, 'ban-phim', '', 'Bàn phím', ''),
(994, 504, 'english version Chuột', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-chuot', '', 'Chuột', ''),
(995, 505, 'Chuột', 'vn', '', '', '', '', '', '', '', 0, 'chuot', '', 'Chuột', ''),
(996, 505, 'english version Linh kiện khác', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-linh-kien-khac', '', 'Linh kiện khác', ''),
(997, 506, 'Linh kiện khác', 'vn', '', '', '', '', '', '', '', 0, 'linh-kien-khac', '', 'Linh kiện khác', ''),
(998, 506, 'english version Linh kiện khác', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-linh-kien-khac', '', 'Linh kiện khác', ''),
(999, 507, 'Máy trợ giảng', 'vn', '', '', '', '', '', '', '', 0, 'may-tro-giang', '', 'Máy trợ giảng', ''),
(1000, 507, 'english version Máy trợ giảng', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-may-tro-giang', '', 'Máy trợ giảng', ''),
(1001, 508, 'Camera an ninh, hành trình', 'vn', '', '', '', '', '', '', '', 0, 'camera-an-ninh-hanh-trinh', '', 'Camera an ninh, hành trình', ''),
(1002, 508, 'english version Camera an ninh, hành trình', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-camera-an-ninh-hanh-trinh', '', 'Camera an ninh, hành trình', ''),
(1003, 509, 'Các loại cáp, cổng chuyển đổi', 'vn', '', '', '', '', '', '', '', 0, 'cac-loai-cap-cong-chuyen-doi', '', 'Các loại cáp, cổng chuyển đổi', ''),
(1004, 509, 'english version Các loại cáp, cổng chuyển đổi', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-cac-loai-cap-cong-chuyen-doi', '', 'Các loại cáp, cổng chuyển đổi', ''),
(1005, 510, 'Phụ kiện các loại', 'vn', '', '', '', '', '', '', '', 0, 'phu-kien-cac-loai', '', 'Phụ kiện các loại', ''),
(1006, 510, 'english version Phụ kiện các loại', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-phu-kien-cac-loai', '', 'Phụ kiện các loại', ''),
(1007, 511, 'Máy tính văn phòng hãng', 'vn', '', '', '', '', '', '', '', 0, 'may-tinh-van-phong-hang', '', 'Máy tính văn phòng hãng', ''),
(1008, 511, 'english version Máy tính văn phòng hãng', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-may-tinh-van-phong-hang', '', 'Máy tính văn phòng hãng', ''),
(1009, 512, 'Máy tính build DAC', 'vn', '', '', '', '', '', '', '', 0, 'may-tinh-build-dac', '', 'Máy tính build DAC', ''),
(1010, 512, 'english version Máy tính build DAC', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-may-tinh-build-dac', '', 'Máy tính build DAC', ''),
(1011, 513, 'Webcam', 'vn', '', '', '', '', '', '', '', 0, 'webcam', '', 'Webcam', ''),
(1012, 513, 'english version Webcam', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-webcam', '', 'Webcam', ''),
(1013, 514, 'Microphone', 'vn', '', '', '', '', '', '', '', 0, 'microphone', '', 'Microphone', ''),
(1014, 514, 'english version Microphone', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-microphone', '', 'Microphone', ''),
(1015, 515, 'Tai nghe', 'vn', '', '', '', '', '', '', '', 0, 'tai-nghe', '', 'Tai nghe', ''),
(1016, 515, 'english version Tai nghe', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tai-nghe', '', 'Tai nghe', ''),
(1017, 516, 'Loa, Loa máy tính', 'vn', '', '', '', '', '', '', '', 0, 'loa-loa-may-tinh', '', 'Loa, Loa máy tính', ''),
(1018, 516, 'english version Loa, Loa máy tính', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-loa-loa-may-tinh', '', 'Loa, Loa máy tính', ''),
(1019, 517, 'Ổ cứng cắm ngoài SSD', 'vn', '', '', '', '', '', '', '', 0, 'o-cung-cam-ngoai-ssd', '', 'Ổ cứng cắm ngoài SSD', ''),
(1020, 517, 'english version Ổ cứng cắm ngoài SSD', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-o-cung-cam-ngoai-ssd', '', 'Ổ cứng cắm ngoài SSD', ''),
(1021, 518, 'USB', 'vn', '', '', '', '', '', '', '', 0, 'usb', '', 'USB', ''),
(1022, 518, 'english version USB', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-usb', '', 'USB', ''),
(1023, 519, 'Thẻ nhớ', 'vn', '', '', '', '', '', '', '', 0, 'the-nho', '', 'Thẻ nhớ', ''),
(1024, 519, 'english version Thẻ nhớ', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-the-nho', '', 'Thẻ nhớ', ''),
(1025, 520, 'Ổ lưu trữ mạng - NAS', 'vn', '', '', '', '', '', '', '', 0, 'o-luu-tru-mang-nas', '', 'Ổ lưu trữ mạng - NAS', ''),
(1026, 520, 'english version Ổ lưu trữ mạng - NAS', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-o-luu-tru-mang-nas', '', 'Ổ lưu trữ mạng - NAS', ''),
(1027, 521, 'Bộ phát wifi - Rouder', 'vn', '', '', '', '', '', '', '', 0, 'bo-phat-wifi-rouder', '', 'Bộ phát wifi - Rouder', ''),
(1028, 521, 'english version Bộ phát wifi - Rouder', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bo-phat-wifi-rouder', '', 'Bộ phát wifi - Rouder', ''),
(1029, 522, 'Bộ kích sóng Wifi', 'vn', '', '', '', '', '', '', '', 0, 'bo-kich-song-wifi', '', 'Bộ kích sóng Wifi', ''),
(1030, 522, 'english version Bộ kích sóng Wifi', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bo-kich-song-wifi', '', 'Bộ kích sóng Wifi', ''),
(1031, 523, 'Card mạng', 'vn', '', '', '', '', '', '', '', 0, 'card-mang', '', 'Card mạng', ''),
(1032, 523, 'english version Card mạng', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-card-mang', '', 'Card mạng', ''),
(1033, 524, 'Thiết bị chia mạng - Switch', 'vn', '', '', '', '', '', '', '', 0, 'thiet-bi-chia-mang-switch', '', 'Thiết bị chia mạng - Switch', ''),
(1034, 524, 'english version Thiết bị chia mạng - Switch', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-thiet-bi-chia-mang-switch', '', 'Thiết bị chia mạng - Switch', ''),
(1035, 525, 'Thiết bị phát Wifi 3G/4G', 'vn', '', '', '', '', '', '', '', 0, 'thiet-bi-phat-wifi-3g4g', '', 'Thiết bị phát Wifi 3G/4G', ''),
(1036, 525, 'english version ', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-', '', '', ''),
(1037, 526, 'Bộ Mesh Wifi', 'vn', '', '', '', '', '', '', '', 0, 'bo-mesh-wifi', '', 'Bộ Mesh Wifi', ''),
(1038, 526, 'english version Bộ Mesh Wifi', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bo-mesh-wifi', '', 'Bộ Mesh Wifi', ''),
(1039, 527, 'Modem', 'vn', '', '', '', '', '', '', '', 0, 'modem', '', 'Modem', ''),
(1040, 527, 'english version Modem', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-modem', '', 'Modem', ''),
(1041, 528, 'Phụ kiện mạng', 'vn', '', '', '', '', '', '', '', 0, 'phu-kien-mang', '', 'Phụ kiện mạng', ''),
(1042, 528, 'english version Phụ kiện mạng', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-phu-kien-mang', '', 'Phụ kiện mạng', ''),
(1043, 529, 'Camera an ninh', 'vn', '', '', '', '', '', '', '', 0, 'camera-an-ninh', '', 'Camera an ninh', ''),
(1044, 529, 'english version Camera an ninh', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-camera-an-ninh', '', 'Camera an ninh', ''),
(1045, 530, 'Camera hành trình', 'vn', '', '', '', '', '', '', '', 0, 'camera-hanh-trinh', '', 'Camera hành trình', ''),
(1046, 530, 'english version Camera hành trình', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-camera-hanh-trinh', '', 'Camera hành trình', ''),
(1047, 531, 'Đầu ghi hình KTS', 'vn', '', '', '', '', '', '', '', 0, 'dau-ghi-hinh-kts', '', 'Đầu ghi hình KTS', ''),
(1048, 531, 'english version Đầu ghi hình KTS', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-dau-ghi-hinh-kts', '', 'Đầu ghi hình KTS', ''),
(1049, 532, 'Máy in', 'vn', '', '', '', '', '', '', '', 0, 'may-in', '', 'Máy in', ''),
(1050, 532, 'english version Máy in', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-may-in', '', 'Máy in', ''),
(1051, 533, 'Máy scan ảnh', 'vn', '', '', '', '', '', '', '', 0, 'may-scan-anh', '', 'Máy scan ảnh', ''),
(1052, 533, 'english version Máy scan ảnh', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-may-scan-anh', '', 'Máy scan ảnh', ''),
(1053, 534, 'Bộ lưu điện', 'vn', '', '', '', '', '', '', '', 0, 'bo-luu-dien', '', 'Bộ lưu điện', ''),
(1054, 534, 'english version Bộ lưu điện', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bo-luu-dien', '', 'Bộ lưu điện', ''),
(1055, 535, 'Mực máy in & phụ kiện', 'vn', '', '', '', '', '', '', '', 0, 'muc-may-in-phu-kien', '', 'Mực máy in & phụ kiện', ''),
(1056, 535, 'english version Mực máy in & phụ kiện', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-muc-may-in-phu-kien', '', 'Mực máy in & phụ kiện', ''),
(1057, 536, 'Máy chấm công', 'vn', '', '', '', '', '', '', '', 0, 'may-cham-cong', '', 'Máy chấm công', ''),
(1058, 536, 'english version Máy chấm công', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-may-cham-cong', '', 'Máy chấm công', ''),
(1059, 537, 'Máy đếm tiền', 'vn', '', '', '', '', '', '', '', 0, 'may-dem-tien', '', 'Máy đếm tiền', ''),
(1060, 537, 'english version Máy đếm tiền', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-may-dem-tien', '', 'Máy đếm tiền', ''),
(1061, 538, 'Dây cáp các loại', 'vn', '', '', '', '', '', '', '', 0, 'day-cap-cac-loai', '', 'Dây cáp các loại', ''),
(1062, 538, 'english version Dây cáp các loại', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-day-cap-cac-loai', '', 'Dây cáp các loại', ''),
(1063, 539, 'Thiết bị chuyển đổi', 'vn', '', '', '', '', '', '', '', 0, 'thiet-bi-chuyen-doi', '', 'Thiết bị chuyển đổi', ''),
(1064, 539, 'english version Thiết bị chuyển đổi', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-thiet-bi-chuyen-doi', '', 'Thiết bị chuyển đổi', ''),
(1065, 540, 'Dây cáp các loại pk', 'vn', '', '', '', '', '', '', '', 0, 'day-cap-cac-loai-pk', '', 'Dây cáp các loại pk', ''),
(1066, 540, 'english version Dây cáp các loại pk', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-day-cap-cac-loai-pk', '', 'Dây cáp các loại pk', ''),
(1067, 541, 'Thiết bị chuyển đổi pk', 'vn', '', '', '', '', '', '', '', 0, 'thiet-bi-chuyen-doi-pk', '', 'Thiết bị chuyển đổi pk', ''),
(1068, 541, 'english version Thiết bị chuyển đổi pk', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-thiet-bi-chuyen-doi-pk', '', 'Thiết bị chuyển đổi pk', ''),
(1069, 542, 'Bộ chia tín hiệu', 'vn', '', '', '', '', '', '', '', 0, 'bo-chia-tin-hieu', '', 'Bộ chia tín hiệu', ''),
(1070, 542, 'english version Bộ chia tín hiệu', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bo-chia-tin-hieu', '', 'Bộ chia tín hiệu', ''),
(1071, 543, 'Phụ kiện laptop', 'vn', '', '', '', '', '', '', '', 0, 'phu-kien-laptop', '', 'Phụ kiện laptop', ''),
(1072, 543, 'english version Phụ kiện laptop', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-phu-kien-laptop', '', 'Phụ kiện laptop', ''),
(1073, 544, 'Phụ kiện Gaming', 'vn', '', '', '', '', '', '', '', 0, 'phu-kien-gaming', '', 'Phụ kiện Gaming', ''),
(1074, 544, 'english version Phụ kiện Gaming', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-phu-kien-gaming', '', 'Phụ kiện Gaming', ''),
(1075, 545, 'Phụ kiện HDD', 'vn', '', '', '', '', '', '', '', 0, 'phu-kien-hdd', '', 'Phụ kiện HDD', ''),
(1076, 545, 'english version Phụ kiện HDD', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-phu-kien-hdd', '', 'Phụ kiện HDD', ''),
(1077, 546, 'Phụ kiện điện thoại, máy tính', 'vn', '', '', '', '', '', '', '', 0, 'phu-kien-dien-thoai-may-tinh', '', 'Phụ kiện điện thoại, máy tính', ''),
(1078, 546, 'english version Phụ kiện điện thoại, máy tính', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-phu-kien-dien-thoai-may-tinh', '', 'Phụ kiện điện thoại, máy tính', ''),
(1079, 547, 'Phụ kiện tai nghe', 'vn', '', '', '', '', '', '', '', 0, 'phu-kien-tai-nghe', '', 'Phụ kiện tai nghe', ''),
(1080, 547, 'english version Phụ kiện tai nghe', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-phu-kien-tai-nghe', '', 'Phụ kiện tai nghe', ''),
(1081, 548, 'Phần mềm', 'vn', '', '', '', '', '', '', '', 0, 'phan-mem', '', 'Phần mềm', ''),
(1082, 548, 'english version Phần mềm', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-phan-mem', '', 'Phần mềm', ''),
(1083, 549, 'Máy chiếu', 'vn', '', '', '', '', '', '', '', 0, 'may-chieu', '', 'Máy chiếu', ''),
(1084, 549, 'english version Máy chiếu', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-may-chieu', '', 'Máy chiếu', ''),
(1085, 550, 'Máy chủ', 'vn', '', '', '', '', '', '', '', 0, 'may-chu', '', 'Máy chủ', ''),
(1086, 550, 'english version Máy chủ', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-may-chu', '', 'Máy chủ', ''),
(1087, 551, 'Bảng, bút vẽ điện tử', 'vn', '', '', '', '', '', '', '', 0, 'bang-but-ve-dien-tu', '', 'Bảng, bút vẽ điện tử', ''),
(1088, 551, 'english version Bảng, bút vẽ điện tử', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bang-but-ve-dien-tu', '', 'Bảng, bút vẽ điện tử', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttag`
--

CREATE TABLE `producttag` (
  `producttag_id` int(11) NOT NULL,
  `producttag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sort_order` int(11) NOT NULL,
  `producttag_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_created_date` datetime NOT NULL,
  `producttag_update_date` datetime NOT NULL,
  `producttag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL,
  `title_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `producttag`
--

INSERT INTO `producttag` (`producttag_id`, `producttag_name`, `producttag_des`, `producttag_content`, `producttag_sort_order`, `producttag_img`, `producttag_created_date`, `producttag_update_date`, `producttag_sub_info1`, `producttag_sub_info2`, `producttag_sub_info3`, `producttag_sub_info4`, `producttag_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(5, 'đỏ', '<p>des</p>\r\n', '<p>content1</p>\r\n', 0, '', '2017-12-12 19:12:53', '2017-12-13 12:12:30', '', '', '', '', '', 1, 'đỏ', 'a1', 'do', 'a1', 1),
(7, 'Xanh', '', '', 0, '', '2017-12-13 12:12:49', '2017-12-13 12:12:49', '', '', '', '', '', 1, 'Xanh', '', 'xanh', '', 1),
(8, 'Vàng', '', '', 0, '', '2017-12-13 12:12:04', '2017-12-13 17:12:26', '', '', '', '', '', 1, 'Vàng', '', 'vang', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttag_languages`
--

CREATE TABLE `producttag_languages` (
  `id` int(11) NOT NULL,
  `producttag_id` int(11) NOT NULL,
  `lang_producttag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `languages_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `edit_state` int(11) NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `producttag_languages`
--

INSERT INTO `producttag_languages` (`id`, `producttag_id`, `lang_producttag_name`, `languages_code`, `lang_producttag_des`, `lang_producttag_content`, `lang_producttag_sub_info1`, `lang_producttag_sub_info2`, `lang_producttag_sub_info3`, `lang_producttag_sub_info4`, `lang_producttag_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(2, 5, 'đỏ', 'vn', '<p>des</p>\r\n', '<p>content1</p>\r\n', '', '', '', '', '', 1, 'do', 'a1', 'đỏ', 'a1'),
(3, 5, 'tag produnt', 'en', '<p>des</p>\r\n', '<p>content</p>\r\n', '', '', '', '', '', 1, 'tag-produnt', 'a', 'tag produnt', 'a'),
(6, 7, 'Xanh', 'vn', '', '', '', '', '', '', '', 1, 'xanh', '', 'Xanh', ''),
(7, 7, 'Xanh', 'en', '', '', '', '', '', '', '', 1, 'xanh', '', 'Xanh', ''),
(8, 8, 'Vàng', 'vn', '<p>1</p>\r\n', '<p>1</p>\r\n', '', '', '', '', '', 1, 'vang', '', 'Vàng', ''),
(9, 8, 'yellow', 'en', '', '', '', '', '', '', '', 1, 'vang', '', 'Vàng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_languages`
--

CREATE TABLE `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci,
  `lang_product_des` text COLLATE utf8_unicode_ci,
  `lang_product_des2` text COLLATE utf8_unicode_ci,
  `lang_product_des3` text COLLATE utf8_unicode_ci,
  `lang_product_content` text COLLATE utf8_unicode_ci,
  `lang_product_content2` text COLLATE utf8_unicode_ci,
  `lang_product_content3` text COLLATE utf8_unicode_ci,
  `lang_product_code` text COLLATE utf8_unicode_ci,
  `lang_product_original` text COLLATE utf8_unicode_ci,
  `lang_product_size` text COLLATE utf8_unicode_ci,
  `lang_product_package` text COLLATE utf8_unicode_ci,
  `lang_product_delivery` text COLLATE utf8_unicode_ci,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci,
  `lang_product_payment` text COLLATE utf8_unicode_ci,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_languages`
--

INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(4090, 2050, 'vn', 'Mainboard Asrock H310CM HDV', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAR227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asrock-h310cm-hdv', 'Mainboard Asrock H310CM HDV', NULL, NULL),
(4091, 2050, 'en', 'Mainboard Asrock H310CM HDV', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAR227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asrock-h310cm-hdv', 'Mainboard Asrock H310CM HDV', NULL, NULL),
(4092, 2051, 'vn', 'Mainboard Asus EX A320M Gaming', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAS538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=00NtL1Eho6I', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asus-ex-a320m-gaming', 'Mainboard Asus EX A320M Gaming', NULL, NULL),
(4093, 2051, 'en', 'Mainboard Asus EX A320M Gaming', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAS538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=00NtL1Eho6I', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asus-ex-a320m-gaming', 'Mainboard Asus EX A320M Gaming', NULL, NULL),
(4094, 2052, 'vn', 'Mainboard ASUS PRIME H310M-CS R2.0', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAS555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-RlS8Cm8kvopAreTz6qMksvmft_XL36y&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asus-prime-h310mcs-r20', 'Mainboard ASUS PRIME H310M-CS R2.0', NULL, NULL),
(4095, 2052, 'en', 'Mainboard ASUS PRIME H310M-CS R2.0', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAS555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-RlS8Cm8kvopAreTz6qMksvmft_XL36y&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asus-prime-h310mcs-r20', 'Mainboard ASUS PRIME H310M-CS R2.0', NULL, NULL),
(4096, 2053, 'vn', 'Mainboard Asrock B365M-HDV', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAR240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asrock-b365mhdv', 'Mainboard Asrock B365M-HDV', NULL, NULL),
(4097, 2053, 'en', 'Mainboard Asrock B365M-HDV', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAR240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asrock-b365mhdv', 'Mainboard Asrock B365M-HDV', NULL, NULL),
(4098, 2054, 'vn', 'Mainboard ASUS TUF B360M-E GAMING', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAS511', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asus-tuf-b360me-gaming', 'Mainboard ASUS TUF B360M-E GAMING', NULL, NULL),
(4099, 2054, 'en', 'Mainboard ASUS TUF B360M-E GAMING', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAS511', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asus-tuf-b360me-gaming', 'Mainboard ASUS TUF B360M-E GAMING', NULL, NULL),
(4100, 2055, 'vn', 'Mainboard MSI B360M GAMING PLUS', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBMS309', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-msi-b360m-gaming-plus', 'Mainboard MSI B360M GAMING PLUS', NULL, NULL),
(4101, 2055, 'en', 'Mainboard MSI B360M GAMING PLUS', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBMS309', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-msi-b360m-gaming-plus', 'Mainboard MSI B360M GAMING PLUS', NULL, NULL),
(4102, 2056, 'vn', 'Mainboard Asrock B365M - Pro4', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAR230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asrock-b365m-pro4', 'Mainboard Asrock B365M - Pro4', NULL, NULL),
(4103, 2056, 'en', 'Mainboard Asrock B365M - Pro4', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAR230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asrock-b365m-pro4', 'Mainboard Asrock B365M - Pro4', NULL, NULL),
(4104, 2057, 'vn', 'Mainboard Gigabyte B450 AORUS - M', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBGI507', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-gigabyte-b450-aorus-m', 'Mainboard Gigabyte B450 AORUS - M', NULL, NULL),
(4105, 2057, 'en', 'Mainboard Gigabyte B450 AORUS - M', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBGI507', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-gigabyte-b450-aorus-m', 'Mainboard Gigabyte B450 AORUS - M', NULL, NULL),
(4106, 2058, 'vn', 'Mainboard ASUS PRIME Z390M-PLUS ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAS503', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asus-prime-z390mplus', 'Mainboard ASUS PRIME Z390M-PLUS ', NULL, NULL),
(4107, 2058, 'en', 'Mainboard ASUS PRIME Z390M-PLUS ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAS503', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asus-prime-z390mplus', 'Mainboard ASUS PRIME Z390M-PLUS ', NULL, NULL),
(4108, 2059, 'vn', 'Mainboard ASUS PRIME Z390-P', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAS499', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asus-prime-z390p', 'Mainboard ASUS PRIME Z390-P', NULL, NULL),
(4109, 2059, 'en', 'Mainboard ASUS PRIME Z390-P', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAS499', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asus-prime-z390p', 'Mainboard ASUS PRIME Z390-P', NULL, NULL),
(4110, 2060, 'vn', 'Mainboard Asus ROG STRIX B365-F GAMING', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAS525', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asus-rog-strix-b365f-gaming', 'Mainboard Asus ROG STRIX B365-F GAMING', NULL, NULL),
(4111, 2060, 'en', 'Mainboard Asus ROG STRIX B365-F GAMING', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAS525', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asus-rog-strix-b365f-gaming', 'Mainboard Asus ROG STRIX B365-F GAMING', NULL, NULL),
(4112, 2061, 'vn', 'Mainboard Gigabyte C246M-WU4', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBGI541', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-gigabyte-c246mwu4', 'Mainboard Gigabyte C246M-WU4', NULL, NULL),
(4113, 2061, 'en', 'Mainboard Gigabyte C246M-WU4', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBGI541', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-gigabyte-c246mwu4', 'Mainboard Gigabyte C246M-WU4', NULL, NULL),
(4114, 2062, 'vn', 'Mainboard Asrock X570 Phantom Gaming 4', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAR238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asrock-x570-phantom-gaming-4', 'Mainboard Asrock X570 Phantom Gaming 4', NULL, NULL),
(4115, 2062, 'en', 'Mainboard Asrock X570 Phantom Gaming 4', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MBAR238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mainboard-asrock-x570-phantom-gaming-4', 'Mainboard Asrock X570 Phantom Gaming 4', NULL, NULL),
(4116, 2063, 'vn', 'CPU AMD Ryzen Athlon 200GE (3.2 GHz / 4MB / 2 Cores, 4 Threads / Radeon Vega 3 / Socket AM4)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CPUA204', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'cpu-amd-ryzen-athlon-200ge-32-ghz-4mb-2-cores-4-threads-radeon-vega-3-socket-am4', 'CPU AMD Ryzen Athlon 200GE (3.2 GHz / 4MB / 2 Cores, 4 Threads / Radeon Vega 3 / Socket AM4)', NULL, NULL),
(4117, 2063, 'en', 'CPU AMD Ryzen Athlon 200GE (3.2 GHz / 4MB / 2 Cores, 4 Threads / Radeon Vega 3 / Socket AM4)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CPUA204', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'cpu-amd-ryzen-athlon-200ge-32-ghz-4mb-2-cores-4-threads-radeon-vega-3-socket-am4', 'CPU AMD Ryzen Athlon 200GE (3.2 GHz / 4MB / 2 Cores, 4 Threads / Radeon Vega 3 / Socket AM4)', NULL, NULL),
(4118, 2064, 'vn', 'CPU Intel Pentium Gold G5400 (3.7 GHz / 4MB / 2 Cores, 4 Threads / Socket 1151/ Coffee Lake)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CPUI283', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'cpu-intel-pentium-gold-g5400-37-ghz-4mb-2-cores-4-threads-socket-1151-coffee-lake', 'CPU Intel Pentium Gold G5400 (3.7 GHz / 4MB / 2 Cores, 4 Threads / Socket 1151/ Coffee Lake)', NULL, NULL),
(4119, 2064, 'en', 'CPU Intel Pentium Gold G5400 (3.7 GHz / 4MB / 2 Cores, 4 Threads / Socket 1151/ Coffee Lake)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CPUI283', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'cpu-intel-pentium-gold-g5400-37-ghz-4mb-2-cores-4-threads-socket-1151-coffee-lake', 'CPU Intel Pentium Gold G5400 (3.7 GHz / 4MB / 2 Cores, 4 Threads / Socket 1151/ Coffee Lake)', NULL, NULL),
(4120, 2065, 'vn', 'CPU Intel Core i3-9100F (3.6 Ghz / 6MB / 4 Cores, 4 Threads / Socket 1151 / Coffee Lake)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CPUI312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'cpu-intel-core-i39100f-36-ghz-6mb-4-cores-4-threads-socket-1151-coffee-lake', 'CPU Intel Core i3-9100F (3.6 Ghz / 6MB / 4 Cores, 4 Threads / Socket 1151 / Coffee Lake)', NULL, NULL),
(4121, 2065, 'en', 'CPU Intel Core i3-9100F (3.6 Ghz / 6MB / 4 Cores, 4 Threads / Socket 1151 / Coffee Lake)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CPUI312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'cpu-intel-core-i39100f-36-ghz-6mb-4-cores-4-threads-socket-1151-coffee-lake', 'CPU Intel Core i3-9100F (3.6 Ghz / 6MB / 4 Cores, 4 Threads / Socket 1151 / Coffee Lake)', NULL, NULL),
(4122, 2066, 'vn', 'CPU AMD Ryzen 3 3200G (3.6 GHz Upto 4.0 GHz / 4MB / 4 Cores, 4 Threads / Radeon Vega 8 / 65W / Socket AM4)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CPUA211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'cpu-amdryzen-3-3200g-36-ghz-upto-40-ghz-4mb-4-cores-4-threads-radeon-vega-8-65w-socket-am4', 'CPU AMD Ryzen 3 3200G (3.6 GHz Upto 4.0 GHz / 4MB / 4 Cores, 4 Threads / Radeon Vega 8 / 65W / Socket AM4)', NULL, NULL),
(4123, 2066, 'en', 'CPU AMD Ryzen 3 3200G (3.6 GHz Upto 4.0 GHz / 4MB / 4 Cores, 4 Threads / Radeon Vega 8 / 65W / Socket AM4)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CPUA211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'cpu-amdryzen-3-3200g-36-ghz-upto-40-ghz-4mb-4-cores-4-threads-radeon-vega-8-65w-socket-am4', 'CPU AMD Ryzen 3 3200G (3.6 GHz Upto 4.0 GHz / 4MB / 4 Cores, 4 Threads / Radeon Vega 8 / 65W / Socket AM4)', NULL, NULL),
(4124, 2067, 'vn', 'CPU Intel Core i3-8100 (3.6 Ghz / 6MB / 4 Cores, 4 Threads / Socket 1151 v2 /Coffee Lake)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CPUI241', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'cpu-intel-core-i38100-36-ghz-6mb-4-cores-4-threads-socket-1151-v2-coffee-lake', 'CPU Intel Core i3-8100 (3.6 Ghz / 6MB / 4 Cores, 4 Threads / Socket 1151 v2 /Coffee Lake)', NULL, NULL),
(4125, 2067, 'en', 'CPU Intel Core i3-8100 (3.6 Ghz / 6MB / 4 Cores, 4 Threads / Socket 1151 v2 /Coffee Lake)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CPUI241', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'cpu-intel-core-i38100-36-ghz-6mb-4-cores-4-threads-socket-1151-v2-coffee-lake', 'CPU Intel Core i3-8100 (3.6 Ghz / 6MB / 4 Cores, 4 Threads / Socket 1151 v2 /Coffee Lake)', NULL, NULL),
(4126, 2068, 'vn', 'CPU AMD Ryzen 5 3400G (3.7 GHz Upto 4.2 GHz / 4MB / 4 Cores, 8 Threads / Radeon Vega 11 / 65W / Socket AM4)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CPUA212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'cpu-amdryzen-5-3400g-37-ghz-upto-42-ghz-4mb-4-cores-8-threads-radeon-vega-11-65w-socket-am4', 'CPU AMD Ryzen 5 3400G (3.7 GHz Upto 4.2 GHz / 4MB / 4 Cores, 8 Threads / Radeon Vega 11 / 65W / Socket AM4)', NULL, NULL),
(4127, 2068, 'en', 'CPU AMD Ryzen 5 3400G (3.7 GHz Upto 4.2 GHz / 4MB / 4 Cores, 8 Threads / Radeon Vega 11 / 65W / Socket AM4)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CPUA212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'cpu-amdryzen-5-3400g-37-ghz-upto-42-ghz-4mb-4-cores-8-threads-radeon-vega-11-65w-socket-am4', 'CPU AMD Ryzen 5 3400G (3.7 GHz Upto 4.2 GHz / 4MB / 4 Cores, 8 Threads / Radeon Vega 11 / 65W / Socket AM4)', NULL, NULL),
(4128, 2069, 'vn', 'CPU Intel Core i5 9400 (2.9 GHz Upto 4.1 GHz / 6 Cores, 6 Threads / 9MB / Socket 1151 / Coffee Lake)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CPUI296', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'cpu-intel-core-i5-9400-29-ghz-upto-41-ghz-6-cores-6-threads-9mb-socket-1151-coffee-lake', 'CPU Intel Core i5 9400 (2.9 GHz Upto 4.1 GHz / 6 Cores, 6 Threads / 9MB / Socket 1151 / Coffee Lake)', NULL, NULL),
(4129, 2069, 'en', 'CPU Intel Core i5 9400 (2.9 GHz Upto 4.1 GHz / 6 Cores, 6 Threads / 9MB / Socket 1151 / Coffee Lake)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CPUI296', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'cpu-intel-core-i5-9400-29-ghz-upto-41-ghz-6-cores-6-threads-9mb-socket-1151-coffee-lake', 'CPU Intel Core i5 9400 (2.9 GHz Upto 4.1 GHz / 6 Cores, 6 Threads / 9MB / Socket 1151 / Coffee Lake)', NULL, NULL),
(4130, 2070, 'vn', 'CPU AMD Ryzen 5 3600X (3.8 GHz Upto 4.4GHz / 32MB / 6 Cores, 12 Threads / 95W / Socket AM4)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CPUA214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'cpu-amdryzen-5-3600x-38-ghz-upto-44ghz-32mb-6-cores-12-threads-95w-socket-am4', 'CPU AMD Ryzen 5 3600X (3.8 GHz Upto 4.4GHz / 32MB / 6 Cores, 12 Threads / 95W / Socket AM4)', NULL, NULL),
(4131, 2070, 'en', 'CPU AMD Ryzen 5 3600X (3.8 GHz Upto 4.4GHz / 32MB / 6 Cores, 12 Threads / 95W / Socket AM4)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CPUA214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'cpu-amdryzen-5-3600x-38-ghz-upto-44ghz-32mb-6-cores-12-threads-95w-socket-am4', 'CPU AMD Ryzen 5 3600X (3.8 GHz Upto 4.4GHz / 32MB / 6 Cores, 12 Threads / 95W / Socket AM4)', NULL, NULL),
(4132, 2071, 'vn', 'CPU Intel Core i7-9700F (3.0 Ghz Upto 4.7 Ghz / 12MB / 8 Cores, 8 Threads / Socket 1151 / Coffee Lake)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CPUI331', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'cpu-intel-core-i79700f-30-ghz-upto-47-ghz-12mb-8-cores-8-threads-socket-1151-coffee-lake', 'CPU Intel Core i7-9700F (3.0 Ghz Upto 4.7 Ghz / 12MB / 8 Cores, 8 Threads / Socket 1151 / Coffee Lake)', NULL, NULL),
(4133, 2071, 'en', 'CPU Intel Core i7-9700F (3.0 Ghz Upto 4.7 Ghz / 12MB / 8 Cores, 8 Threads / Socket 1151 / Coffee Lake)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CPUI331', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'cpu-intel-core-i79700f-30-ghz-upto-47-ghz-12mb-8-cores-8-threads-socket-1151-coffee-lake', 'CPU Intel Core i7-9700F (3.0 Ghz Upto 4.7 Ghz / 12MB / 8 Cores, 8 Threads / Socket 1151 / Coffee Lake)', NULL, NULL),
(4134, 2072, 'vn', 'DDRam 4 Kingston 4G/2666-KVR26N19S6/4', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'RAKT235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'ddram-4-kingston-4g2666kvr26n19s64', 'DDRam 4 Kingston 4G/2666-KVR26N19S6/4', NULL, NULL),
(4135, 2072, 'en', 'DDRam 4 Kingston 4G/2666-KVR26N19S6/4', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'RAKT235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'ddram-4-kingston-4g2666kvr26n19s64', 'DDRam 4 Kingston 4G/2666-KVR26N19S6/4', NULL, NULL),
(4136, 2073, 'vn', 'RAM Kingston 4Gb DDR3 Bus1600Mhz, , ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'RAKT137', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'ram-kingston-4gb-ddr3-bus1600mhz-', 'RAM Kingston 4Gb DDR3 Bus1600Mhz, , ', NULL, NULL),
(4137, 2073, 'en', 'RAM Kingston 4Gb DDR3 Bus1600Mhz, , ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'RAKT137', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'ram-kingston-4gb-ddr3-bus1600mhz-', 'RAM Kingston 4Gb DDR3 Bus1600Mhz, , ', NULL, NULL),
(4138, 2074, 'vn', 'Ram Laptop Kingston 8GB (KVR26S19S8/8) 8GB (1x8GB) DDR4 2666MHz', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'RAKT237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'ram-laptop-kingston-8gb-kvr26s19s88-8gb-1x8gb-ddr4-2666mhz', 'Ram Laptop Kingston 8GB (KVR26S19S8/8) 8GB (1x8GB) DDR4 2666MHz', NULL, NULL),
(4139, 2074, 'en', 'Ram Laptop Kingston 8GB (KVR26S19S8/8) 8GB (1x8GB) DDR4 2666MHz', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'RAKT237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'ram-laptop-kingston-8gb-kvr26s19s88-8gb-1x8gb-ddr4-2666mhz', 'Ram Laptop Kingston 8GB (KVR26S19S8/8) 8GB (1x8GB) DDR4 2666MHz', NULL, NULL),
(4140, 2075, 'vn', 'Ram 4 Corsair 8GB/3000 (1x8GB) - CMW8GX4M1D3000C16 Vengeance PRO RGB - Black', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'RACO319', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'ram-4-corsair-8gb3000-1x8gb-cmw8gx4m1d3000c16-vengeance-pro-rgb-black', 'Ram 4 Corsair 8GB/3000 (1x8GB) - CMW8GX4M1D3000C16 Vengeance PRO RGB - Black', NULL, NULL),
(4141, 2075, 'en', 'Ram 4 Corsair 8GB/3000 (1x8GB) - CMW8GX4M1D3000C16 Vengeance PRO RGB - Black', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'RACO319', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'ram-4-corsair-8gb3000-1x8gb-cmw8gx4m1d3000c16-vengeance-pro-rgb-black', 'Ram 4 Corsair 8GB/3000 (1x8GB) - CMW8GX4M1D3000C16 Vengeance PRO RGB - Black', NULL, NULL),
(4142, 2076, 'vn', 'DDRam 4 Kingston ECC 16GB/2666Mhz - KSM26RS4/16MEI Registered', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'RAKT238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'ddram-4-kingston-ecc-16gb2666mhz-ksm26rs416mei-registered', 'DDRam 4 Kingston ECC 16GB/2666Mhz - KSM26RS4/16MEI Registered', NULL, NULL),
(4143, 2076, 'en', 'DDRam 4 Kingston ECC 16GB/2666Mhz - KSM26RS4/16MEI Registered', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'RAKT238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'ddram-4-kingston-ecc-16gb2666mhz-ksm26rs416mei-registered', 'DDRam 4 Kingston ECC 16GB/2666Mhz - KSM26RS4/16MEI Registered', NULL, NULL),
(4144, 2077, 'vn', 'Kit Ram 4 Gskill Trident Z Neo16GB/3600 (2x8GB) F4-3600C16D-16GTZNC', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'RAGS443', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'kit-ram-4-gskill-trident-z-neo16gb3600-2x8gb-f43600c16d16gtznc', 'Kit Ram 4 Gskill Trident Z Neo16GB/3600 (2x8GB) F4-3600C16D-16GTZNC', NULL, NULL),
(4145, 2077, 'en', 'Kit Ram 4 Gskill Trident Z Neo16GB/3600 (2x8GB) F4-3600C16D-16GTZNC', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'RAGS443', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'kit-ram-4-gskill-trident-z-neo16gb3600-2x8gb-f43600c16d16gtznc', 'Kit Ram 4 Gskill Trident Z Neo16GB/3600 (2x8GB) F4-3600C16D-16GTZNC', NULL, NULL),
(4146, 2078, 'vn', 'SSD Kingmax SMV32 120GB Sata3 2.5\" (Doc 500MB/s, Ghi 350MB/s)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDKM015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'ssd-kingmax-smv32-120gb-sata3-25-doc-500mbs-ghi-350mbs', 'SSD Kingmax SMV32 120GB Sata3 2.5\" (Doc 500MB/s, Ghi 350MB/s)', NULL, NULL),
(4147, 2078, 'en', 'SSD Kingmax SMV32 120GB Sata3 2.5\" (Doc 500MB/s, Ghi 350MB/s)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDKM015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'ssd-kingmax-smv32-120gb-sata3-25-doc-500mbs-ghi-350mbs', 'SSD Kingmax SMV32 120GB Sata3 2.5\" (Doc 500MB/s, Ghi 350MB/s)', NULL, NULL),
(4148, 2079, 'vn', 'SSD KINGFAST NVME M.2 2280 F8N 128GB (Read 1500MB/s  Write 500MB/s)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDKF006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'ssd-kingfast-nvme-m2-2280-f8n-128gb-read-1500mbswrite-500mbs', 'SSD KINGFAST NVME M.2 2280 F8N 128GB (Read 1500MB/s  Write 500MB/s)', NULL, NULL),
(4149, 2079, 'en', 'SSD KINGFAST NVME M.2 2280 F8N 128GB (Read 1500MB/s  Write 500MB/s)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDKF006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'ssd-kingfast-nvme-m2-2280-f8n-128gb-read-1500mbswrite-500mbs', 'SSD KINGFAST NVME M.2 2280 F8N 128GB (Read 1500MB/s  Write 500MB/s)', NULL, NULL),
(4150, 2080, 'vn', 'm2SSD PNY CS2040 M.2 2280 256GB (Doc 560MB/s, Ghi 540MB/s)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDPN022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'm2ssd-pny-cs2040-m2-2280-256gb-doc-560mbs-ghi540mbs', 'm2SSD PNY CS2040 M.2 2280 256GB (Doc 560MB/s, Ghi 540MB/s)', NULL, NULL),
(4151, 2080, 'en', 'm2SSD PNY CS2040 M.2 2280 256GB (Doc 560MB/s, Ghi 540MB/s)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDPN022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'm2ssd-pny-cs2040-m2-2280-256gb-doc-560mbs-ghi540mbs', 'm2SSD PNY CS2040 M.2 2280 256GB (Doc 560MB/s, Ghi 540MB/s)', NULL, NULL),
(4152, 2081, 'vn', 'm2 PCIe PNY CS2060 512GB M.2 NVMe PCIe (Doc 1600MB/s, Ghi 1000MB/s)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDPN024', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'm2-pcie-pny-cs2060-512gb-m2-nvme-pcie-doc-1600mbs-ghi-1000mbs', 'm2 PCIe PNY CS2060 512GB M.2 NVMe PCIe (Doc 1600MB/s, Ghi 1000MB/s)', NULL, NULL),
(4153, 2081, 'en', 'm2 PCIe PNY CS2060 512GB M.2 NVMe PCIe (Doc 1600MB/s, Ghi 1000MB/s)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDPN024', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'm2-pcie-pny-cs2060-512gb-m2-nvme-pcie-doc-1600mbs-ghi-1000mbs', 'm2 PCIe PNY CS2060 512GB M.2 NVMe PCIe (Doc 1600MB/s, Ghi 1000MB/s)', NULL, NULL),
(4154, 2082, 'vn', 'Ổ cứng SSD KINGFAST F10 1TB Sata3 2.5\" (Đọc 550MB/s - Ghi 500MB/s) - (F10-1TB)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDKF015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'o-cung-ssd-kingfast-f10-1tb-sata3-25-doc-550mbs-ghi-500mbs-f101tb', 'Ổ cứng SSD KINGFAST F10 1TB Sata3 2.5\" (Đọc 550MB/s - Ghi 500MB/s) - (F10-1TB)', NULL, NULL),
(4155, 2082, 'en', 'Ổ cứng SSD KINGFAST F10 1TB Sata3 2.5\" (Đọc 550MB/s - Ghi 500MB/s) - (F10-1TB)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDKF015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'o-cung-ssd-kingfast-f10-1tb-sata3-25-doc-550mbs-ghi-500mbs-f101tb', 'Ổ cứng SSD KINGFAST F10 1TB Sata3 2.5\" (Đọc 550MB/s - Ghi 500MB/s) - (F10-1TB)', NULL, NULL),
(4156, 2083, 'vn', 'HDD Seagate 1TB 7200rpm, Sata3 64MB Cache, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDSE079', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'hdd-seagate-1tb-7200rpm-sata3-64mb-cache-', 'HDD Seagate 1TB 7200rpm, Sata3 64MB Cache, ', NULL, NULL),
(4157, 2083, 'en', 'HDD Seagate 1TB 7200rpm, Sata3 64MB Cache, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDSE079', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'hdd-seagate-1tb-7200rpm-sata3-64mb-cache-', 'HDD Seagate 1TB 7200rpm, Sata3 64MB Cache, ', NULL, NULL),
(4158, 2084, 'vn', 'HDD Seagate SkyHawk SURVEILLANCE 1TB/5900, Sata 3 , 64MB Cache (ST1000VX005)  ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDSE126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'hdd-seagate-skyhawk-surveillance-1tb5900-sata-3-64mb-cache-st1000vx005-', 'HDD Seagate SkyHawk SURVEILLANCE 1TB/5900, Sata 3 , 64MB Cache (ST1000VX005)  ', NULL, NULL),
(4159, 2084, 'en', 'HDD Seagate SkyHawk SURVEILLANCE 1TB/5900, Sata 3 , 64MB Cache (ST1000VX005)  ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDSE126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'hdd-seagate-skyhawk-surveillance-1tb5900-sata-3-64mb-cache-st1000vx005-', 'HDD Seagate SkyHawk SURVEILLANCE 1TB/5900, Sata 3 , 64MB Cache (ST1000VX005)  ', NULL, NULL),
(4160, 2085, 'vn', 'HDD WD Blue 1TB/5400 Sata for Notebook', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDWD303', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'hdd-wd-blue-1tb5400-sata-for-notebook', 'HDD WD Blue 1TB/5400 Sata for Notebook', NULL, NULL),
(4161, 2085, 'en', 'HDD WD Blue 1TB/5400 Sata for Notebook', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDWD303', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'hdd-wd-blue-1tb5400-sata-for-notebook', 'HDD WD Blue 1TB/5400 Sata for Notebook', NULL, NULL),
(4162, 2086, 'vn', 'HDD Seagate SkyHawk SURVEILLANCE 2TB/5900, Sata 3, 64MB Cache (ST2000VX008)  ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDSE147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'hdd-seagate-skyhawk-surveillance-2tb5900-sata-3-64mb-cache-st2000vx008-', 'HDD Seagate SkyHawk SURVEILLANCE 2TB/5900, Sata 3, 64MB Cache (ST2000VX008)  ', NULL, NULL),
(4163, 2086, 'en', 'HDD Seagate SkyHawk SURVEILLANCE 2TB/5900, Sata 3, 64MB Cache (ST2000VX008)  ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDSE147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'hdd-seagate-skyhawk-surveillance-2tb5900-sata-3-64mb-cache-st2000vx008-', 'HDD Seagate SkyHawk SURVEILLANCE 2TB/5900, Sata 3, 64MB Cache (ST2000VX008)  ', NULL, NULL),
(4164, 2087, 'vn', 'PCIe WD Black 250GB NVMe 3.0x4 (Doc 3100MB/s, Ghi 1600MB/s) - WDS250G3X0C', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDWD275', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'pcie-wd-black-250gb-nvme-30x4-doc-3100mbs-ghi-1600mbs-wds250g3x0c', 'PCIe WD Black 250GB NVMe 3.0x4 (Doc 3100MB/s, Ghi 1600MB/s) - WDS250G3X0C', NULL, NULL),
(4165, 2087, 'en', 'PCIe WD Black 250GB NVMe 3.0x4 (Doc 3100MB/s, Ghi 1600MB/s) - WDS250G3X0C', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDWD275', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'pcie-wd-black-250gb-nvme-30x4-doc-3100mbs-ghi-1600mbs-wds250g3x0c', 'PCIe WD Black 250GB NVMe 3.0x4 (Doc 3100MB/s, Ghi 1600MB/s) - WDS250G3X0C', NULL, NULL),
(4166, 2088, 'vn', 'HDD Seagate 3TB/5400 Sata3 64M', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDSE093', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'hdd-seagate-3tb5400sata3-64m', 'HDD Seagate 3TB/5400 Sata3 64M', NULL, NULL),
(4167, 2088, 'en', 'HDD Seagate 3TB/5400 Sata3 64M', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDSE093', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'hdd-seagate-3tb5400sata3-64m', 'HDD Seagate 3TB/5400 Sata3 64M', NULL, NULL),
(4168, 2089, 'vn', 'Vga Card Asus PH-GT1030-O2G, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'VGAS404', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vga-card-asus-phgt1030o2g-', 'Vga Card Asus PH-GT1030-O2G, ', NULL, NULL),
(4169, 2089, 'en', 'Vga Card Asus PH-GT1030-O2G, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'VGAS404', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vga-card-asus-phgt1030o2g-', 'Vga Card Asus PH-GT1030-O2G, ', NULL, NULL),
(4170, 2090, 'vn', 'Vga Card ASUS PH GTX1650 - 4G', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'VGAS470', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vga-card-asus-ph-gtx1650-4g', 'Vga Card ASUS PH GTX1650 - 4G', NULL, NULL),
(4171, 2090, 'en', 'Vga Card ASUS PH GTX1650 - 4G', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'VGAS470', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vga-card-asus-ph-gtx1650-4g', 'Vga Card ASUS PH GTX1650 - 4G', NULL, NULL),
(4172, 2091, 'vn', 'Vga Card ASUS DUAL GTX1650 - 4G', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'VGAS468', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vga-card-asus-dual-gtx1650-4g', 'Vga Card ASUS DUAL GTX1650 - 4G', NULL, NULL),
(4173, 2091, 'en', 'Vga Card ASUS DUAL GTX1650 - 4G', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'VGAS468', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vga-card-asus-dual-gtx1650-4g', 'Vga Card ASUS DUAL GTX1650 - 4G', NULL, NULL),
(4174, 2092, 'vn', 'Card màn hình Asus TUF GTX 1650 Super 4G Gaming', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'VGAS513', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'card-man-hinh-asus-tuf-gtx-1650-super-4g-gaming', 'Card màn hình Asus TUF GTX 1650 Super 4G Gaming', NULL, NULL),
(4175, 2092, 'en', 'Card màn hình Asus TUF GTX 1650 Super 4G Gaming', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'VGAS513', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'card-man-hinh-asus-tuf-gtx-1650-super-4g-gaming', 'Card màn hình Asus TUF GTX 1650 Super 4G Gaming', NULL, NULL),
(4176, 2093, 'vn', 'Card màn hình Gigabyte GTX 1660 Super OC - 6GB ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'VGGI448', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'card-man-hinh-gigabyte-gtx-1660-super-oc-6gb-', 'Card màn hình Gigabyte GTX 1660 Super OC - 6GB ', NULL, NULL),
(4177, 2093, 'en', 'Card màn hình Gigabyte GTX 1660 Super OC - 6GB ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'VGGI448', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'card-man-hinh-gigabyte-gtx-1660-super-oc-6gb-', 'Card màn hình Gigabyte GTX 1660 Super OC - 6GB ', NULL, NULL);
INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(4178, 2094, 'vn', 'Card màn hình Asus TUF3 GTX 1660 Super O6G Gaming', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'VGAS500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'card-man-hinh-asus-tuf3-gtx-1660-super-o6g-gaming', 'Card màn hình Asus TUF3 GTX 1660 Super O6G Gaming', NULL, NULL),
(4179, 2094, 'en', 'Card màn hình Asus TUF3 GTX 1660 Super O6G Gaming', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'VGAS500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'card-man-hinh-asus-tuf3-gtx-1660-super-o6g-gaming', 'Card màn hình Asus TUF3 GTX 1660 Super O6G Gaming', NULL, NULL),
(4180, 2095, 'vn', 'Vga Card ASUS ROG STRIX GTX 1660 Ti - 6G GAMING', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'VGAS452', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vga-card-asus-rog-strix-gtx-1660-ti-6g-gaming', 'Vga Card ASUS ROG STRIX GTX 1660 Ti - 6G GAMING', NULL, NULL),
(4181, 2095, 'en', 'Vga Card ASUS ROG STRIX GTX 1660 Ti - 6G GAMING', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'VGAS452', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vga-card-asus-rog-strix-gtx-1660-ti-6g-gaming', 'Vga Card ASUS ROG STRIX GTX 1660 Ti - 6G GAMING', NULL, NULL),
(4182, 2096, 'vn', 'Vga Card Gigabyte RTX 2060 OC - 6GD', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'VGGI417', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vga-card-gigabyte-rtx-2060-oc-6gd', 'Vga Card Gigabyte RTX 2060 OC - 6GD', NULL, NULL),
(4183, 2096, 'en', 'Vga Card Gigabyte RTX 2060 OC - 6GD', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'VGGI417', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vga-card-gigabyte-rtx-2060-oc-6gd', 'Vga Card Gigabyte RTX 2060 OC - 6GD', NULL, NULL),
(4184, 2097, 'vn', 'Nguồn GAMEMAX VP350 - 350W (Màu Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PWGM004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'nguon-gamemax-vp350-350w-mau-den', 'Nguồn GAMEMAX VP350 - 350W (Màu Đen)', NULL, NULL),
(4185, 2097, 'en', 'Nguồn GAMEMAX VP350 - 350W (Màu Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PWGM004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'nguon-gamemax-vp350-350w-mau-den', 'Nguồn GAMEMAX VP350 - 350W (Màu Đen)', NULL, NULL),
(4186, 2098, 'vn', 'Nguồn GAMEMAX VP450 - 450W (Màu Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PWGM001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'nguon-gamemax-vp450-450w-mau-den', 'Nguồn GAMEMAX VP450 - 450W (Màu Đen)', NULL, NULL),
(4187, 2098, 'en', 'Nguồn GAMEMAX VP450 - 450W (Màu Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PWGM001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'nguon-gamemax-vp450-450w-mau-den', 'Nguồn GAMEMAX VP450 - 450W (Màu Đen)', NULL, NULL),
(4188, 2099, 'vn', 'Nguồn Corsair Series CV 550 550W (80 Plus Brone/Mầu Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PWCO076', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'nguon-corsair-series-cv-550-550w-80-plus-bronemau-den', 'Nguồn Corsair Series CV 550 550W (80 Plus Brone/Mầu Đen)', NULL, NULL),
(4189, 2099, 'en', 'Nguồn Corsair Series CV 550 550W (80 Plus Brone/Mầu Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PWCO076', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'nguon-corsair-series-cv-550-550w-80-plus-bronemau-den', 'Nguồn Corsair Series CV 550 550W (80 Plus Brone/Mầu Đen)', NULL, NULL),
(4190, 2100, 'vn', 'FSP Power Supply HYPER K Series HP600 - Active PFC - 80 Plus Standard, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PWFP034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'fsp-power-supply-hyper-k-series-hp600-active-pfc-80-plus-standard-', 'FSP Power Supply HYPER K Series HP600 - Active PFC - 80 Plus Standard, ', NULL, NULL),
(4191, 2100, 'en', 'FSP Power Supply HYPER K Series HP600 - Active PFC - 80 Plus Standard, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PWFP034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'fsp-power-supply-hyper-k-series-hp600-active-pfc-80-plus-standard-', 'FSP Power Supply HYPER K Series HP600 - Active PFC - 80 Plus Standard, ', NULL, NULL),
(4192, 2101, 'vn', 'Nguồn Corsair Series VS 650W 80 Plus White', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PWCO074', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'nguon-corsair-series-vs-650w-80-plus-white', 'Nguồn Corsair Series VS 650W 80 Plus White', NULL, NULL),
(4193, 2101, 'en', 'Nguồn Corsair Series VS 650W 80 Plus White', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PWCO074', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'nguon-corsair-series-vs-650w-80-plus-white', 'Nguồn Corsair Series VS 650W 80 Plus White', NULL, NULL),
(4194, 2102, 'vn', 'Corsair CX Series CX750M 80 Plus Bronze Modular, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PWCO055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'corsair-cx-series-cx750m-80-plus-bronze-modular-', 'Corsair CX Series CX750M 80 Plus Bronze Modular, ', NULL, NULL),
(4195, 2102, 'en', 'Corsair CX Series CX750M 80 Plus Bronze Modular, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PWCO055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'corsair-cx-series-cx750m-80-plus-bronze-modular-', 'Corsair CX Series CX750M 80 Plus Bronze Modular, ', NULL, NULL),
(4196, 2103, 'vn', 'Vỏ Case Xigmatek XA-10 (Mini Tower/Màu Đen) EN40728', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSXM037', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-xigmatek-xa10-mini-towermau-den-en40728', 'Vỏ Case Xigmatek XA-10 (Mini Tower/Màu Đen) EN40728', NULL, NULL),
(4197, 2103, 'en', 'Vỏ Case Xigmatek XA-10 (Mini Tower/Màu Đen) EN40728', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSXM037', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-xigmatek-xa10-mini-towermau-den-en40728', 'Vỏ Case Xigmatek XA-10 (Mini Tower/Màu Đen) EN40728', NULL, NULL),
(4198, 2104, 'vn', 'Vỏ Case GAMEMAX G361 (Mid Tower/Mầu Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSGM001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-gamemax-g361-mid-towermau-den', 'Vỏ Case GAMEMAX G361 (Mid Tower/Mầu Đen)', NULL, NULL),
(4199, 2104, 'en', 'Vỏ Case GAMEMAX G361 (Mid Tower/Mầu Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSGM001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-gamemax-g361-mid-towermau-den', 'Vỏ Case GAMEMAX G361 (Mid Tower/Mầu Đen)', NULL, NULL),
(4200, 2105, 'vn', 'Vỏ Case GAMEMAX Fortress TG (Mid Tower/Màu Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSGM003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-gamemax-fortress-tg-mid-towermau-den', 'Vỏ Case GAMEMAX Fortress TG (Mid Tower/Màu Đen)', NULL, NULL),
(4201, 2105, 'en', 'Vỏ Case GAMEMAX Fortress TG (Mid Tower/Màu Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSGM003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-gamemax-fortress-tg-mid-towermau-den', 'Vỏ Case GAMEMAX Fortress TG (Mid Tower/Màu Đen)', NULL, NULL),
(4202, 2106, 'vn', 'Vỏ Case SAMA Jazovo plus  Tempered Glass (Mid Tower/Màu Đen/Led RGB)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSSA079', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-sama-jazovo-plus-tempered-glass-mid-towermau-denled-rgb', 'Vỏ Case SAMA Jazovo plus  Tempered Glass (Mid Tower/Màu Đen/Led RGB)', NULL, NULL),
(4203, 2106, 'en', 'Vỏ Case SAMA Jazovo plus  Tempered Glass (Mid Tower/Màu Đen/Led RGB)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSSA079', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-sama-jazovo-plus-tempered-glass-mid-towermau-denled-rgb', 'Vỏ Case SAMA Jazovo plus  Tempered Glass (Mid Tower/Màu Đen/Led RGB)', NULL, NULL),
(4204, 2107, 'vn', 'Vỏ Case  GAMEMAX G527 SHINE (Mid Tower/Màu Đen/Led RGB)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSGM007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-gamemax-g527-shine-mid-towermau-denled-rgb', 'Vỏ Case  GAMEMAX G527 SHINE (Mid Tower/Màu Đen/Led RGB)', NULL, NULL),
(4205, 2107, 'en', 'Vỏ Case  GAMEMAX G527 SHINE (Mid Tower/Màu Đen/Led RGB)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSGM007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-gamemax-g527-shine-mid-towermau-denled-rgb', 'Vỏ Case  GAMEMAX G527 SHINE (Mid Tower/Màu Đen/Led RGB)', NULL, NULL),
(4206, 2108, 'vn', 'Vỏ Case SAMA Baroco  Tempered Glass (Mid Tower/Màu Trắng/Led RGB)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSSA081', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-sama-baroco-tempered-glass-mid-towermau-trangled-rgb', 'Vỏ Case SAMA Baroco  Tempered Glass (Mid Tower/Màu Trắng/Led RGB)', NULL, NULL),
(4207, 2108, 'en', 'Vỏ Case SAMA Baroco  Tempered Glass (Mid Tower/Màu Trắng/Led RGB)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSSA081', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-sama-baroco-tempered-glass-mid-towermau-trangled-rgb', 'Vỏ Case SAMA Baroco  Tempered Glass (Mid Tower/Màu Trắng/Led RGB)', NULL, NULL),
(4208, 2109, 'vn', 'Vỏ Case SAMA Canty V (Mid Tower/Màu Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSSA074', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-sama-canty-v-mid-towermau-den', 'Vỏ Case SAMA Canty V (Mid Tower/Màu Đen)', NULL, NULL),
(4209, 2109, 'en', 'Vỏ Case SAMA Canty V (Mid Tower/Màu Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSSA074', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-sama-canty-v-mid-towermau-den', 'Vỏ Case SAMA Canty V (Mid Tower/Màu Đen)', NULL, NULL),
(4210, 2110, 'vn', 'Vỏ Case SAMA Warlock - Tempered Glas (Mid Tower/Màu Đen) ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSSA070', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-sama-warlock-tempered-glas-mid-towermau-den-', 'Vỏ Case SAMA Warlock - Tempered Glas (Mid Tower/Màu Đen) ', NULL, NULL),
(4211, 2110, 'en', 'Vỏ Case SAMA Warlock - Tempered Glas (Mid Tower/Màu Đen) ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSSA070', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-sama-warlock-tempered-glas-mid-towermau-den-', 'Vỏ Case SAMA Warlock - Tempered Glas (Mid Tower/Màu Đen) ', NULL, NULL),
(4212, 2111, 'vn', 'Vỏ Case SAMA X (Mid Tower/Màu Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSSA071', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-sama-x-mid-towermau-den', 'Vỏ Case SAMA X (Mid Tower/Màu Đen)', NULL, NULL),
(4213, 2111, 'en', 'Vỏ Case SAMA X (Mid Tower/Màu Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSSA071', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-sama-x-mid-towermau-den', 'Vỏ Case SAMA X (Mid Tower/Màu Đen)', NULL, NULL),
(4214, 2112, 'vn', 'Vỏ Case SAMA CANTY III (Mid Tower/Màu Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSSA072', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-sama-canty-iii-mid-towermau-den', 'Vỏ Case SAMA CANTY III (Mid Tower/Màu Đen)', NULL, NULL),
(4215, 2112, 'en', 'Vỏ Case SAMA CANTY III (Mid Tower/Màu Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSSA072', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-sama-canty-iii-mid-towermau-den', 'Vỏ Case SAMA CANTY III (Mid Tower/Màu Đen)', NULL, NULL),
(4216, 2113, 'vn', 'Vỏ Case SAMA Aurora (Mid Tower/Màu Đen) ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSSA064', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-sama-aurora-mid-towermau-den-', 'Vỏ Case SAMA Aurora (Mid Tower/Màu Đen) ', NULL, NULL),
(4217, 2113, 'en', 'Vỏ Case SAMA Aurora (Mid Tower/Màu Đen) ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSSA064', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-sama-aurora-mid-towermau-den-', 'Vỏ Case SAMA Aurora (Mid Tower/Màu Đen) ', NULL, NULL),
(4218, 2114, 'vn', 'Vỏ Case Cooler Master MasterBox K500 TG (Mid Tower/Màu Đen )', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSCM129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-cooler-master-masterbox-k500-tg-mid-towermau-den-', 'Vỏ Case Cooler Master MasterBox K500 TG (Mid Tower/Màu Đen )', NULL, NULL),
(4219, 2114, 'en', 'Vỏ Case Cooler Master MasterBox K500 TG (Mid Tower/Màu Đen )', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CSCM129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'vo-case-cooler-master-masterbox-k500-tg-mid-towermau-den-', 'Vỏ Case Cooler Master MasterBox K500 TG (Mid Tower/Màu Đen )', NULL, NULL),
(4220, 2115, 'vn', 'Tản nhiệt khí Cooler Master HYPER T200', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'FANC648', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'tan-nhiet-khi-cooler-master-hyper-t200', 'Tản nhiệt khí Cooler Master HYPER T200', NULL, NULL),
(4221, 2115, 'en', 'Tản nhiệt khí Cooler Master HYPER T200', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'FANC648', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'tan-nhiet-khi-cooler-master-hyper-t200', 'Tản nhiệt khí Cooler Master HYPER T200', NULL, NULL),
(4222, 2116, 'vn', 'Tản nhiệt CPU Cooler Master Hyper 410R', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'FANC573', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'tan-nhiet-cpu-cooler-master-hyper-410r', 'Tản nhiệt CPU Cooler Master Hyper 410R', NULL, NULL),
(4223, 2116, 'en', 'Tản nhiệt CPU Cooler Master Hyper 410R', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'FANC573', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'tan-nhiet-cpu-cooler-master-hyper-410r', 'Tản nhiệt CPU Cooler Master Hyper 410R', NULL, NULL),
(4224, 2117, 'vn', 'Tản Nhiệt CPU DeepCool Gammax 400 Red, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'FANC524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'tan-nhiet-cpu-deepcool-gammax-400-red-', 'Tản Nhiệt CPU DeepCool Gammax 400 Red, ', NULL, NULL),
(4225, 2117, 'en', 'Tản Nhiệt CPU DeepCool Gammax 400 Red, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'FANC524', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'tan-nhiet-cpu-deepcool-gammax-400-red-', 'Tản Nhiệt CPU DeepCool Gammax 400 Red, ', NULL, NULL),
(4226, 2118, 'vn', 'Tản nhiệt khí Cooler Master MASTERAIR G 100M', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'FANC644', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'tan-nhiet-khi-cooler-master-masterair-g-100m', 'Tản nhiệt khí Cooler Master MASTERAIR G 100M', NULL, NULL),
(4227, 2118, 'en', 'Tản nhiệt khí Cooler Master MASTERAIR G 100M', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'FANC644', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'tan-nhiet-khi-cooler-master-masterair-g-100m', 'Tản nhiệt khí Cooler Master MASTERAIR G 100M', NULL, NULL),
(4228, 2119, 'vn', ' Máy tính HNCB081: A320/G200E/DDR4 4GB/SSD120G/Case/500W.CPU AMD Ryzen Athlon 200GE 3.2 GHz / 5MB / 2 cores 4 threads / Radeon Vega 3 / socket AM4.Case Xigmatek XA-10 (EN40728).SSD KINGFAST F6 PRO 120GB SATA3 6Gb/s 2.5\" (Read 550MB/s  Write 450MB/s).Mainboard ASUS PRIME A320M-K,Nguồn Jupistar 500 24P.DDRam 4 AVEXIR 4GB/2400 (1*4GB) 1BW Budget', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HNCB081', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, '-may-tinh-hncb081-a320g200eddr4-4gbssd120gcase500wcpu-amd-ryzen-athlon-200ge-32-ghz-5mb-2-cores-4-threads-radeon-vega-3-socket-am4case-xigmatek-xa10-en40728ssd-kingfast-f6-pro-120gb-sata3-6gbs-25-read-550mbs-write-450mbsmainboard-asus-prime-a320mknguon-ju', ' Máy tính HNCB081: A320/G200E/DDR4 4GB/SSD120G/Case/500W.CPU AMD Ryzen Athlon 200GE 3.2 GHz / 5MB / 2 cores 4 threads / Radeon Vega 3 / socket AM4.Case Xigmatek XA-10 (EN40728).SSD KINGFAST F6 PRO 120GB SATA3 6Gb/s 2.5\" (Read 550MB/s  Write 450MB/s).Mainb', NULL, NULL),
(4229, 2119, 'en', ' Máy tính HNCB081: A320/G200E/DDR4 4GB/SSD120G/Case/500W.CPU AMD Ryzen Athlon 200GE 3.2 GHz / 5MB / 2 cores 4 threads / Radeon Vega 3 / socket AM4.Case Xigmatek XA-10 (EN40728).SSD KINGFAST F6 PRO 120GB SATA3 6Gb/s 2.5\" (Read 550MB/s  Write 450MB/s).Mainboard ASUS PRIME A320M-K,Nguồn Jupistar 500 24P.DDRam 4 AVEXIR 4GB/2400 (1*4GB) 1BW Budget', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HNCB081', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, '-may-tinh-hncb081-a320g200eddr4-4gbssd120gcase500wcpu-amd-ryzen-athlon-200ge-32-ghz-5mb-2-cores-4-threads-radeon-vega-3-socket-am4case-xigmatek-xa10-en40728ssd-kingfast-f6-pro-120gb-sata3-6gbs-25-read-550mbs-write-450mbsmainboard-asus-prime-a320mknguon-ju', ' Máy tính HNCB081: A320/G200E/DDR4 4GB/SSD120G/Case/500W.CPU AMD Ryzen Athlon 200GE 3.2 GHz / 5MB / 2 cores 4 threads / Radeon Vega 3 / socket AM4.Case Xigmatek XA-10 (EN40728).SSD KINGFAST F6 PRO 120GB SATA3 6Gb/s 2.5\" (Read 550MB/s  Write 450MB/s).Mainb', NULL, NULL),
(4230, 2120, 'vn', 'Máy tính HNCB076: H310/G5400/DDR4 4GB/HDD 1TB/Case/500W,CPU Intel Pentium Gold G5400 3,7 GHz / 4MB / 2 Cores, 4 Threads / HD 630 Series Graphics / Socket 1151 (Coffee Lake), Case Xigmatek XA-10 (EN40728),SSD KINGFAST F6 PRO 120GB SATA3 6Gb/s 2.5\" (Read 550MB/s  Write 450MB/s), Mainboard ASUS PRIME H310M-K (T),Nguồn Jupistar 500 24P,DDRam 4 AVEXIR 4GB/2400 (1*4GB) 1BW Budget', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HNCB076', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'may-tinh-hncb076-h310g5400ddr4-4gbhdd-1tbcase500wcpu-intel-pentium-gold-g5400-37-ghz-4mb-2-cores-4-threads-hd-630-series-graphics-socket-1151-coffee-lake-case-xigmatek-xa10-en40728ssd-kingfast-f6-pro-120gb-sata3-6gbs-25-read-550mbs-write-450mbs-mainboard-', 'Máy tính HNCB076: H310/G5400/DDR4 4GB/HDD 1TB/Case/500W,CPU Intel Pentium Gold G5400 3,7 GHz / 4MB / 2 Cores, 4 Threads / HD 630 Series Graphics / Socket 1151 (Coffee Lake), Case Xigmatek XA-10 (EN40728),SSD KINGFAST F6 PRO 120GB SATA3 6Gb/s 2.5\" (Read 55', NULL, NULL),
(4231, 2120, 'en', 'Máy tính HNCB076: H310/G5400/DDR4 4GB/HDD 1TB/Case/500W,CPU Intel Pentium Gold G5400 3,7 GHz / 4MB / 2 Cores, 4 Threads / HD 630 Series Graphics / Socket 1151 (Coffee Lake), Case Xigmatek XA-10 (EN40728),SSD KINGFAST F6 PRO 120GB SATA3 6Gb/s 2.5\" (Read 550MB/s  Write 450MB/s), Mainboard ASUS PRIME H310M-K (T),Nguồn Jupistar 500 24P,DDRam 4 AVEXIR 4GB/2400 (1*4GB) 1BW Budget', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HNCB076', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'may-tinh-hncb076-h310g5400ddr4-4gbhdd-1tbcase500wcpu-intel-pentium-gold-g5400-37-ghz-4mb-2-cores-4-threads-hd-630-series-graphics-socket-1151-coffee-lake-case-xigmatek-xa10-en40728ssd-kingfast-f6-pro-120gb-sata3-6gbs-25-read-550mbs-write-450mbs-mainboard-', 'Máy tính HNCB076: H310/G5400/DDR4 4GB/HDD 1TB/Case/500W,CPU Intel Pentium Gold G5400 3,7 GHz / 4MB / 2 Cores, 4 Threads / HD 630 Series Graphics / Socket 1151 (Coffee Lake), Case Xigmatek XA-10 (EN40728),SSD KINGFAST F6 PRO 120GB SATA3 6Gb/s 2.5\" (Read 55', NULL, NULL),
(4232, 2121, 'vn', 'PC HNC Business Home H5 (G5400/H310/4GB RAM/120GG SSD/Nguồn 350W/Dos)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PCVP020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'pc-hnc-business-home-h5-g5400h3104gb-ram120gg-ssdnguon-350wdos', 'PC HNC Business Home H5 (G5400/H310/4GB RAM/120GG SSD/Nguồn 350W/Dos)', NULL, NULL),
(4233, 2121, 'en', 'PC HNC Business Home H5 (G5400/H310/4GB RAM/120GG SSD/Nguồn 350W/Dos)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PCVP020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'pc-hnc-business-home-h5-g5400h3104gb-ram120gg-ssdnguon-350wdos', 'PC HNC Business Home H5 (G5400/H310/4GB RAM/120GG SSD/Nguồn 350W/Dos)', NULL, NULL),
(4234, 2122, 'vn', 'PC HNC Business Home H7 (G5400/H310/4GB RAM/240GB SSD/Nguồn 350W/Dos)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PCVP029', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'pc-hnc-business-home-h7-g5400h3104gb-ram240gb-ssdnguon-350wdos', 'PC HNC Business Home H7 (G5400/H310/4GB RAM/240GB SSD/Nguồn 350W/Dos)', NULL, NULL),
(4235, 2122, 'en', 'PC HNC Business Home H7 (G5400/H310/4GB RAM/240GB SSD/Nguồn 350W/Dos)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PCVP029', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'pc-hnc-business-home-h7-g5400h3104gb-ram240gb-ssdnguon-350wdos', 'PC HNC Business Home H7 (G5400/H310/4GB RAM/240GB SSD/Nguồn 350W/Dos)', NULL, NULL),
(4236, 2123, 'vn', 'PC HNC Business Pro P21 (i3 9100F/H310/4GB RAM/GT710/120GB SSD/Nguồn 350W/Dos)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PCVP030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'pc-hnc-business-pro-p21-i3-9100fh3104gb-ramgt710120gb-ssdnguon-350wdos', 'PC HNC Business Pro P21 (i3 9100F/H310/4GB RAM/GT710/120GB SSD/Nguồn 350W/Dos)', NULL, NULL),
(4237, 2123, 'en', 'PC HNC Business Pro P21 (i3 9100F/H310/4GB RAM/GT710/120GB SSD/Nguồn 350W/Dos)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PCVP030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'pc-hnc-business-pro-p21-i3-9100fh3104gb-ramgt710120gb-ssdnguon-350wdos', 'PC HNC Business Pro P21 (i3 9100F/H310/4GB RAM/GT710/120GB SSD/Nguồn 350W/Dos)', NULL, NULL),
(4238, 2124, 'vn', 'PC HNC Business Pro P22 (i3 9100F/H310/4GB RAM/GT710/240GB SSD/Nguồn 350W/Dos)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PCVP031', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'pc-hnc-business-pro-p22-i3-9100fh3104gb-ramgt710240gb-ssdnguon-350wdos', 'PC HNC Business Pro P22 (i3 9100F/H310/4GB RAM/GT710/240GB SSD/Nguồn 350W/Dos)', NULL, NULL),
(4239, 2124, 'en', 'PC HNC Business Pro P22 (i3 9100F/H310/4GB RAM/GT710/240GB SSD/Nguồn 350W/Dos)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'PCVP031', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'pc-hnc-business-pro-p22-i3-9100fh3104gb-ramgt710240gb-ssdnguon-350wdos', 'PC HNC Business Pro P22 (i3 9100F/H310/4GB RAM/GT710/240GB SSD/Nguồn 350W/Dos)', NULL, NULL),
(4240, 2125, 'vn', 'Máy tính HNCB085(H310/ I5 9400F/4GB RAM/SSD 120GB/HDD 1TB/GT710/Nguồn 350W/Dos)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HNCB085', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'may-tinh-hncb085h310-i5-9400f4gb-ramssd-120gbhdd-1tbgt710nguon-350wdos', 'Máy tính HNCB085(H310/ I5 9400F/4GB RAM/SSD 120GB/HDD 1TB/GT710/Nguồn 350W/Dos)', NULL, NULL),
(4241, 2125, 'en', 'Máy tính HNCB085(H310/ I5 9400F/4GB RAM/SSD 120GB/HDD 1TB/GT710/Nguồn 350W/Dos)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HNCB085', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'may-tinh-hncb085h310-i5-9400f4gb-ramssd-120gbhdd-1tbgt710nguon-350wdos', 'Máy tính HNCB085(H310/ I5 9400F/4GB RAM/SSD 120GB/HDD 1TB/GT710/Nguồn 350W/Dos)', NULL, NULL),
(4242, 2126, 'vn', 'Camera Thân TVI HikVision DS-2CE16D0T-IRP', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-than-tvi-hikvision-ds2ce16d0tirp', 'Camera Thân TVI HikVision DS-2CE16D0T-IRP', NULL, NULL),
(4243, 2126, 'en', 'Camera Thân TVI HikVision DS-2CE16D0T-IRP', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-than-tvi-hikvision-ds2ce16d0tirp', 'Camera Thân TVI HikVision DS-2CE16D0T-IRP', NULL, NULL),
(4244, 2127, 'vn', 'Camera Thân TVI HikVision DS-2CE16D0T-IR', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-than-tvi-hikvision-ds2ce16d0tir', 'Camera Thân TVI HikVision DS-2CE16D0T-IR', NULL, NULL),
(4245, 2127, 'en', 'Camera Thân TVI HikVision DS-2CE16D0T-IR', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-than-tvi-hikvision-ds2ce16d0tir', 'Camera Thân TVI HikVision DS-2CE16D0T-IR', NULL, NULL),
(4246, 2128, 'vn', 'Camera Dome TVI HikVision DS-2CE56D0T-IR ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI099', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-dome-tvi-hikvision-ds2ce56d0tir-', 'Camera Dome TVI HikVision DS-2CE56D0T-IR ', NULL, NULL),
(4247, 2128, 'en', 'Camera Dome TVI HikVision DS-2CE56D0T-IR ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI099', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-dome-tvi-hikvision-ds2ce56d0tir-', 'Camera Dome TVI HikVision DS-2CE56D0T-IR ', NULL, NULL),
(4248, 2129, 'vn', 'Camera Dome TVI HikVision DS-2CE56D0T-IRP', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-dome-tvi-hikvision-ds2ce56d0tirp', 'Camera Dome TVI HikVision DS-2CE56D0T-IRP', NULL, NULL),
(4249, 2129, 'en', 'Camera Dome TVI HikVision DS-2CE56D0T-IRP', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-dome-tvi-hikvision-ds2ce56d0tirp', 'Camera Dome TVI HikVision DS-2CE56D0T-IRP', NULL, NULL),
(4250, 2130, 'vn', 'Camera Hikvision DS-2CV2Q21FD-IW', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI242', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-ds2cv2q21fdiw', 'Camera Hikvision DS-2CV2Q21FD-IW', NULL, NULL),
(4251, 2130, 'en', 'Camera Hikvision DS-2CV2Q21FD-IW', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI242', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-ds2cv2q21fdiw', 'Camera Hikvision DS-2CV2Q21FD-IW', NULL, NULL),
(4252, 2131, 'vn', 'Camera HikVision DS-2CD2121G0-I', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI258', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-ds2cd2121g0i', 'Camera HikVision DS-2CD2121G0-I', NULL, NULL),
(4253, 2131, 'en', 'Camera HikVision DS-2CD2121G0-I', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI258', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-ds2cd2121g0i', 'Camera HikVision DS-2CD2121G0-I', NULL, NULL),
(4254, 2132, 'vn', 'Camera HikVision DS-2CE16H0T-ITF', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI272', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-ds2ce16h0titf', 'Camera HikVision DS-2CE16H0T-ITF', NULL, NULL),
(4255, 2132, 'en', 'Camera HikVision DS-2CE16H0T-ITF', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI272', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-ds2ce16h0titf', 'Camera HikVision DS-2CE16H0T-ITF', NULL, NULL),
(4256, 2133, 'vn', 'Camera HikVision DS-2CE16H0T-IT5F', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI274', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-ds2ce16h0tit5f', 'Camera HikVision DS-2CE16H0T-IT5F', NULL, NULL),
(4257, 2133, 'en', 'Camera HikVision DS-2CE16H0T-IT5F', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI274', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-ds2ce16h0tit5f', 'Camera HikVision DS-2CE16H0T-IT5F', NULL, NULL),
(4258, 2134, 'vn', 'Camera HikVision DS-2CE56H0T-ITMF', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI276', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-ds2ce56h0titmf', 'Camera HikVision DS-2CE56H0T-ITMF', NULL, NULL),
(4259, 2134, 'en', 'Camera HikVision DS-2CE56H0T-ITMF', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI276', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-ds2ce56h0titmf', 'Camera HikVision DS-2CE56H0T-ITMF', NULL, NULL),
(4260, 2135, 'vn', 'Camera HikVision DS-2CD1123G0E-I', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI385', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-ds2cd1123g0ei', 'Camera HikVision DS-2CD1123G0E-I', NULL, NULL),
(4261, 2135, 'en', 'Camera HikVision DS-2CD1123G0E-I', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI385', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-ds2cd1123g0ei', 'Camera HikVision DS-2CD1123G0E-I', NULL, NULL),
(4262, 2136, 'vn', 'Camera HikVision DS-2CD2121G1-IDW1', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI390', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-ds2cd2121g1idw1', 'Camera HikVision DS-2CD2121G1-IDW1', NULL, NULL),
(4263, 2136, 'en', 'Camera HikVision DS-2CD2121G1-IDW1', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI390', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-ds2cd2121g1idw1', 'Camera HikVision DS-2CD2121G1-IDW1', NULL, NULL);
INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(4264, 2137, 'vn', 'Camera HikVision HK-2CD1D23G0E-PRO', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI453', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-hk2cd1d23g0epro', 'Camera HikVision HK-2CD1D23G0E-PRO', NULL, NULL),
(4265, 2137, 'en', 'Camera HikVision HK-2CD1D23G0E-PRO', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI453', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-hk2cd1d23g0epro', 'Camera HikVision HK-2CD1D23G0E-PRO', NULL, NULL),
(4266, 2138, 'vn', 'Camera HikVision HK-2CD19D0T-PRO', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI466', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-hk2cd19d0tpro', 'Camera HikVision HK-2CD19D0T-PRO', NULL, NULL),
(4267, 2138, 'en', 'Camera HikVision HK-2CD19D0T-PRO', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI466', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-hk2cd19d0tpro', 'Camera HikVision HK-2CD19D0T-PRO', NULL, NULL),
(4268, 2139, 'vn', 'Camera HikVision HK-2CD59D0T-PRO', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI467', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-hk2cd59d0tpro', 'Camera HikVision HK-2CD59D0T-PRO', NULL, NULL),
(4269, 2139, 'en', 'Camera HikVision HK-2CD59D0T-PRO', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'CAHI467', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'camera-hikvision-hk2cd59d0tpro', 'Camera HikVision HK-2CD59D0T-PRO', NULL, NULL),
(4270, 2140, 'vn', 'Đầu ghi TVI HikVision DS-7204HQHI-K1', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'DVHI098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'dau-ghi-tvi-hikvision-ds7204hqhik1', 'Đầu ghi TVI HikVision DS-7204HQHI-K1', NULL, NULL),
(4271, 2140, 'en', 'Đầu ghi TVI HikVision DS-7204HQHI-K1', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'DVHI098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'dau-ghi-tvi-hikvision-ds7204hqhik1', 'Đầu ghi TVI HikVision DS-7204HQHI-K1', NULL, NULL),
(4272, 2141, 'vn', 'Đầu ghi TVI HikVision DS-7208HQHI-K1', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'DVHI099', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'dau-ghi-tvi-hikvision-ds7208hqhik1', 'Đầu ghi TVI HikVision DS-7208HQHI-K1', NULL, NULL),
(4273, 2141, 'en', 'Đầu ghi TVI HikVision DS-7208HQHI-K1', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'DVHI099', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'dau-ghi-tvi-hikvision-ds7208hqhik1', 'Đầu ghi TVI HikVision DS-7208HQHI-K1', NULL, NULL),
(4274, 2142, 'vn', 'Đầu ghi Hikvision DS-7104HQHI-K1', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'DVHI144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'dau-ghi-hikvision-ds7104hqhik1', 'Đầu ghi Hikvision DS-7104HQHI-K1', NULL, NULL),
(4275, 2142, 'en', 'Đầu ghi Hikvision DS-7104HQHI-K1', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'DVHI144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'dau-ghi-hikvision-ds7104hqhik1', 'Đầu ghi Hikvision DS-7104HQHI-K1', NULL, NULL),
(4276, 2143, 'vn', 'Đầu ghi Hikvision DS-7108HQHI-K1', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'DVHI145 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'dau-ghi-hikvision-ds7108hqhik1', 'Đầu ghi Hikvision DS-7108HQHI-K1', NULL, NULL),
(4277, 2143, 'en', 'Đầu ghi Hikvision DS-7108HQHI-K1', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'DVHI145 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'dau-ghi-hikvision-ds7108hqhik1', 'Đầu ghi Hikvision DS-7108HQHI-K1', NULL, NULL),
(4278, 2144, 'vn', 'Đầu ghi HikVision DS-7108NI-Q1', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'DVHI170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'dau-ghi-hikvision-ds7108niq1', 'Đầu ghi HikVision DS-7108NI-Q1', NULL, NULL),
(4279, 2144, 'en', 'Đầu ghi HikVision DS-7108NI-Q1', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'DVHI170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'dau-ghi-hikvision-ds7108niq1', 'Đầu ghi HikVision DS-7108NI-Q1', NULL, NULL),
(4280, 2145, 'vn', 'Đầu ghi HikVision DS-7104NI-Q1/M', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'DVHI172', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'dau-ghi-hikvision-ds7104niq1m', 'Đầu ghi HikVision DS-7104NI-Q1/M', NULL, NULL),
(4281, 2145, 'en', 'Đầu ghi HikVision DS-7104NI-Q1/M', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'DVHI172', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'dau-ghi-hikvision-ds7104niq1m', 'Đầu ghi HikVision DS-7104NI-Q1/M', NULL, NULL),
(4282, 2146, 'vn', 'Đầu ghi Hikvision 16 kênh HIK/SH-HD9216HQK1', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'DVHI200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'dau-ghi-hikvision-16-kenh-hikshhd9216hqk1', 'Đầu ghi Hikvision 16 kênh HIK/SH-HD9216HQK1', NULL, NULL),
(4283, 2146, 'en', 'Đầu ghi Hikvision 16 kênh HIK/SH-HD9216HQK1', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'DVHI200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'dau-ghi-hikvision-16-kenh-hikshhd9216hqk1', 'Đầu ghi Hikvision 16 kênh HIK/SH-HD9216HQK1', NULL, NULL),
(4284, 2147, 'vn', 'Laptop  Acer Aspire A315-54-36QY NX.HM2SV.001 /Mầu sắc Đen /Bộ vi xử lý   Intel® Core™  i3 10110U (2.1GHz, 4MB)/ Chipset Intel /Bộ nhớ trong 4GB DDR4 (Onboard)/Dung lượng tối đa 8GB/ VGA  Intel 620/Ổ cứng 256GB SSD PCIe NVMe/ Card Reader SD Card reader/Màn hình  15.6\" FHD 1920 * 1080 ComfyView LED LCD/Webcam Yes/Giao tiếp mạng GigaLAN/Giao tiếp không dây 802.11ac • Bluetooth 4.2/Cổng giao tiếp 1 x USB 3.1, 2 x USB 2.0, 1 x HDMI, 1 x Ethernet, 1 x 3.5 mm headphone/speaker jack, 1 x DC Jack/Pin 2-cell (36.7Wh)/Webcam Yes/Audio Two built-in stereo speakers /Giao tiếp mạng GigaLAN/Giao tiếp không dây 802.11ac • Bluetooth 4.2/Cổng giao tiếp 1 x USB 3.1, 2 x USB 2.0, 1 x HDMI, 1 x Ethernet, 1 x 3.5 mm headphone/speaker jack, 1 x DC Jack/Pin 2-cell (36.7Wh)/Cân nặng 1.7 kg  /Hệ điều hành Win 10 ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAC637', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-acer-aspire-a3155436qy-nxhm2sv001-mau-sac-den-bo-vi-xu-ly-intel-core-i3-10110u-21ghz-4mb-chipset-intel-bo-nho-trong-4gb-ddr4-onboarddung-luong-toi-da-8gb-vga-intel-620o-cung-256gb-ssd-pcie-nvme-card-reader-sd-card-readerman-hinh-156-fhd-1920-1080-c', 'Laptop  Acer Aspire A315-54-36QY NX.HM2SV.001 /Mầu sắc Đen /Bộ vi xử lý   Intel® Core™  i3 10110U (2.1GHz, 4MB)/ Chipset Intel /Bộ nhớ trong 4GB DDR4 (Onboard)/Dung lượng tối đa 8GB/ VGA  Intel 620/Ổ cứng 256GB SSD PCIe NVMe/ Card Reader SD Card reader/Mà', NULL, NULL),
(4285, 2147, 'en', 'Laptop  Acer Aspire A315-54-36QY NX.HM2SV.001 /Mầu sắc Đen /Bộ vi xử lý   Intel® Core™  i3 10110U (2.1GHz, 4MB)/ Chipset Intel /Bộ nhớ trong 4GB DDR4 (Onboard)/Dung lượng tối đa 8GB/ VGA  Intel 620/Ổ cứng 256GB SSD PCIe NVMe/ Card Reader SD Card reader/Màn hình  15.6\" FHD 1920 * 1080 ComfyView LED LCD/Webcam Yes/Giao tiếp mạng GigaLAN/Giao tiếp không dây 802.11ac • Bluetooth 4.2/Cổng giao tiếp 1 x USB 3.1, 2 x USB 2.0, 1 x HDMI, 1 x Ethernet, 1 x 3.5 mm headphone/speaker jack, 1 x DC Jack/Pin 2-cell (36.7Wh)/Webcam Yes/Audio Two built-in stereo speakers /Giao tiếp mạng GigaLAN/Giao tiếp không dây 802.11ac • Bluetooth 4.2/Cổng giao tiếp 1 x USB 3.1, 2 x USB 2.0, 1 x HDMI, 1 x Ethernet, 1 x 3.5 mm headphone/speaker jack, 1 x DC Jack/Pin 2-cell (36.7Wh)/Cân nặng 1.7 kg  /Hệ điều hành Win 10 ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAC637', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-acer-aspire-a3155436qy-nxhm2sv001-mau-sac-den-bo-vi-xu-ly-intel-core-i3-10110u-21ghz-4mb-chipset-intel-bo-nho-trong-4gb-ddr4-onboarddung-luong-toi-da-8gb-vga-intel-620o-cung-256gb-ssd-pcie-nvme-card-reader-sd-card-readerman-hinh-156-fhd-1920-1080-c', 'Laptop  Acer Aspire A315-54-36QY NX.HM2SV.001 /Mầu sắc Đen /Bộ vi xử lý   Intel® Core™  i3 10110U (2.1GHz, 4MB)/ Chipset Intel /Bộ nhớ trong 4GB DDR4 (Onboard)/Dung lượng tối đa 8GB/ VGA  Intel 620/Ổ cứng 256GB SSD PCIe NVMe/ Card Reader SD Card reader/Mà', NULL, NULL),
(4286, 2148, 'vn', 'Laptop Acer Aspire 3 A315-42-R4XD (NX.HF9SV.008) (AMDR5 3500U/8GBRAM/512GB SSD/Radeon Vega 3 /15.6FHD/Win10)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAC646', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-acer-aspire-3-a31542r4xd-nxhf9sv008-amdr5-3500u8gbram512gb-ssdradeon-vega-3-156fhdwin10', 'Laptop Acer Aspire 3 A315-42-R4XD (NX.HF9SV.008) (AMDR5 3500U/8GBRAM/512GB SSD/Radeon Vega 3 /15.6FHD/Win10)', NULL, NULL),
(4287, 2148, 'en', 'Laptop Acer Aspire 3 A315-42-R4XD (NX.HF9SV.008) (AMDR5 3500U/8GBRAM/512GB SSD/Radeon Vega 3 /15.6FHD/Win10)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAC646', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-acer-aspire-3-a31542r4xd-nxhf9sv008-amdr5-3500u8gbram512gb-ssdradeon-vega-3-156fhdwin10', 'Laptop Acer Aspire 3 A315-42-R4XD (NX.HF9SV.008) (AMDR5 3500U/8GBRAM/512GB SSD/Radeon Vega 3 /15.6FHD/Win10)', NULL, NULL),
(4288, 2149, 'vn', 'Laptop Acer Aspire A315-54-558R (NX.HEFSV.005) (i5 8265U/4GB Ram/1TBHDD/15.6FHD/Win10/Bạc)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAC658', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-acer-aspire-a31554558r-nxhefsv005-i5-8265u4gb-ram1tbhdd156fhdwin10bac', 'Laptop Acer Aspire A315-54-558R (NX.HEFSV.005) (i5 8265U/4GB Ram/1TBHDD/15.6FHD/Win10/Bạc)', NULL, NULL),
(4289, 2149, 'en', 'Laptop Acer Aspire A315-54-558R (NX.HEFSV.005) (i5 8265U/4GB Ram/1TBHDD/15.6FHD/Win10/Bạc)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAC658', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-acer-aspire-a31554558r-nxhefsv005-i5-8265u4gb-ram1tbhdd156fhdwin10bac', 'Laptop Acer Aspire A315-54-558R (NX.HEFSV.005) (i5 8265U/4GB Ram/1TBHDD/15.6FHD/Win10/Bạc)', NULL, NULL),
(4290, 2150, 'vn', 'Laptop Asus A512FA-EJ571T i3 8145U/4GB/256Gb SSD/15.6\" FHD/Win10/Bạc', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAU156', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-asus-a512faej571t-i3-8145u4gb256gb-ssd156-fhdwin10bac', 'Laptop Asus A512FA-EJ571T i3 8145U/4GB/256Gb SSD/15.6\" FHD/Win10/Bạc', NULL, NULL),
(4291, 2150, 'en', 'Laptop Asus A512FA-EJ571T i3 8145U/4GB/256Gb SSD/15.6\" FHD/Win10/Bạc', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAU156', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-asus-a512faej571t-i3-8145u4gb256gb-ssd156-fhdwin10bac', 'Laptop Asus A512FA-EJ571T i3 8145U/4GB/256Gb SSD/15.6\" FHD/Win10/Bạc', NULL, NULL),
(4292, 2151, 'vn', 'Laptop Asus X509FA-EJ103T i5 8265U/4G/512Gb SSD/15.6 Full HD/FP/Win 10/Bạc', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAU167', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-asus-x509faej103t-i5-8265u4g512gb-ssd156-full-hdfpwin-10bac', 'Laptop Asus X509FA-EJ103T i5 8265U/4G/512Gb SSD/15.6 Full HD/FP/Win 10/Bạc', NULL, NULL),
(4293, 2151, 'en', 'Laptop Asus X509FA-EJ103T i5 8265U/4G/512Gb SSD/15.6 Full HD/FP/Win 10/Bạc', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAU167', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-asus-x509faej103t-i5-8265u4g512gb-ssd156-full-hdfpwin-10bac', 'Laptop Asus X509FA-EJ103T i5 8265U/4G/512Gb SSD/15.6 Full HD/FP/Win 10/Bạc', NULL, NULL),
(4294, 2152, 'vn', 'Laptop Asus X409FA-EK101T i5 8265U/4G/512Gb SSD/14\" Full HD/FP/Win 10/Bạc', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAU170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-asus-x409faek101t-i5-8265u4g512gb-ssd14-full-hdfpwin-10bac', 'Laptop Asus X409FA-EK101T i5 8265U/4G/512Gb SSD/14\" Full HD/FP/Win 10/Bạc', NULL, NULL),
(4295, 2152, 'en', 'Laptop Asus X409FA-EK101T i5 8265U/4G/512Gb SSD/14\" Full HD/FP/Win 10/Bạc', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAU170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-asus-x409faek101t-i5-8265u4g512gb-ssd14-full-hdfpwin-10bac', 'Laptop Asus X409FA-EK101T i5 8265U/4G/512Gb SSD/14\" Full HD/FP/Win 10/Bạc', NULL, NULL),
(4296, 2153, 'vn', 'Laptop Asus X509FJ-EJ053T (i5 8265U/4GB RAM/1TB HDD/15.6\" FHD/MX230 2Gb/Win 10/Bạc)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAU193', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-asus-x509fjej053t-i5-8265u4gb-ram1tb-hdd156-fhdmx230-2gbwin-10bac', 'Laptop Asus X509FJ-EJ053T (i5 8265U/4GB RAM/1TB HDD/15.6\" FHD/MX230 2Gb/Win 10/Bạc)', NULL, NULL),
(4297, 2153, 'en', 'Laptop Asus X509FJ-EJ053T (i5 8265U/4GB RAM/1TB HDD/15.6\" FHD/MX230 2Gb/Win 10/Bạc)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAU193', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-asus-x509fjej053t-i5-8265u4gb-ram1tb-hdd156-fhdmx230-2gbwin-10bac', 'Laptop Asus X509FJ-EJ053T (i5 8265U/4GB RAM/1TB HDD/15.6\" FHD/MX230 2Gb/Win 10/Bạc)', NULL, NULL),
(4298, 2154, 'vn', 'Laptop Asus VivoBook S530FA-BQ431T (i3 8145/4GB RAM/256GB SSD/15.6\" FHD/Win10/Vàng)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAU206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-asus-vivobook-s530fabq431t-i3-81454gb-ram256gb-ssd156-fhdwin10vang', 'Laptop Asus VivoBook S530FA-BQ431T (i3 8145/4GB RAM/256GB SSD/15.6\" FHD/Win10/Vàng)', NULL, NULL),
(4299, 2154, 'en', 'Laptop Asus VivoBook S530FA-BQ431T (i3 8145/4GB RAM/256GB SSD/15.6\" FHD/Win10/Vàng)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAU206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-asus-vivobook-s530fabq431t-i3-81454gb-ram256gb-ssd156-fhdwin10vang', 'Laptop Asus VivoBook S530FA-BQ431T (i3 8145/4GB RAM/256GB SSD/15.6\" FHD/Win10/Vàng)', NULL, NULL),
(4300, 2155, 'vn', 'Laptop Asus X509FA-EJ203T (i5 8265U/4GB RAM/512Gb SSD/15.6 Full HD/FP/Win 10/Bạc)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAU214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-asus-x509faej203t-i5-8265u4gb-ram512gb-ssd156-full-hdfpwin-10bac', 'Laptop Asus X509FA-EJ203T (i5 8265U/4GB RAM/512Gb SSD/15.6 Full HD/FP/Win 10/Bạc)', NULL, NULL),
(4301, 2155, 'en', 'Laptop Asus X509FA-EJ203T (i5 8265U/4GB RAM/512Gb SSD/15.6 Full HD/FP/Win 10/Bạc)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAU214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-asus-x509faej203t-i5-8265u4gb-ram512gb-ssd156-full-hdfpwin-10bac', 'Laptop Asus X509FA-EJ203T (i5 8265U/4GB RAM/512Gb SSD/15.6 Full HD/FP/Win 10/Bạc)', NULL, NULL),
(4302, 2156, 'vn', 'Laptop Asus X509JA-EJ021T (i5 1035G1/4G/512Gb SSD/15.6 Full HD/FP/Win 10/Bạc)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAU311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-asus-x509jaej021t-i5-1035g14g512gb-ssd156-full-hdfpwin-10bac', 'Laptop Asus X509JA-EJ021T (i5 1035G1/4G/512Gb SSD/15.6 Full HD/FP/Win 10/Bạc)', NULL, NULL),
(4303, 2156, 'en', 'Laptop Asus X509JA-EJ021T (i5 1035G1/4G/512Gb SSD/15.6 Full HD/FP/Win 10/Bạc)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTAU311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-asus-x509jaej021t-i5-1035g14g512gb-ssd156-full-hdfpwin-10bac', 'Laptop Asus X509JA-EJ021T (i5 1035G1/4G/512Gb SSD/15.6 Full HD/FP/Win 10/Bạc)', NULL, NULL),
(4304, 2157, 'vn', 'Laptop Dell Vostro 3480 70183778 i5 8265/4G/1TB/14.0//Win 10/1.79kg.Part: 70183778 Bộ vi xử lý :  Intel Core i5-8265U (4 x 1.60GHz/6MB cache), Ram 4GB DDR4 2400Mhz, 2slots, 1TB SATA 5400rpm , VGA Intel UHD 620 ,14,0\" HD Led, HD webcam, Bluetooth 4,0, 2 USB 3,1 Gen 1, 1 USB 2,, HDMI 1,4, VGA , 1,96kg, Win 10 Home SL 64', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTDE998', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-dell-vostro-3480-70183778-i5-82654g1tb140win-10179kgpart-70183778-bo-vi-xu-ly-intel-core-i58265u-4-x-160ghz6mb-cache-ram-4gb-ddr4-2400mhz-2slots-1tb-sata-5400rpm-vga-intel-uhd-620-140-hd-led-hd-webcam-bluetooth-40-2-usb-31-gen-1-1-usb-2-hdmi-14-vga', 'Laptop Dell Vostro 3480 70183778 i5 8265/4G/1TB/14.0//Win 10/1.79kg.Part: 70183778 Bộ vi xử lý :  Intel Core i5-8265U (4 x 1.60GHz/6MB cache), Ram 4GB DDR4 2400Mhz, 2slots, 1TB SATA 5400rpm , VGA Intel UHD 620 ,14,0\" HD Led, HD webcam, Bluetooth 4,0, 2 US', NULL, NULL),
(4305, 2157, 'en', 'Laptop Dell Vostro 3480 70183778 i5 8265/4G/1TB/14.0//Win 10/1.79kg.Part: 70183778 Bộ vi xử lý :  Intel Core i5-8265U (4 x 1.60GHz/6MB cache), Ram 4GB DDR4 2400Mhz, 2slots, 1TB SATA 5400rpm , VGA Intel UHD 620 ,14,0\" HD Led, HD webcam, Bluetooth 4,0, 2 USB 3,1 Gen 1, 1 USB 2,, HDMI 1,4, VGA , 1,96kg, Win 10 Home SL 64', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTDE998', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-dell-vostro-3480-70183778-i5-82654g1tb140win-10179kgpart-70183778-bo-vi-xu-ly-intel-core-i58265u-4-x-160ghz6mb-cache-ram-4gb-ddr4-2400mhz-2slots-1tb-sata-5400rpm-vga-intel-uhd-620-140-hd-led-hd-webcam-bluetooth-40-2-usb-31-gen-1-1-usb-2-hdmi-14-vga', 'Laptop Dell Vostro 3480 70183778 i5 8265/4G/1TB/14.0//Win 10/1.79kg.Part: 70183778 Bộ vi xử lý :  Intel Core i5-8265U (4 x 1.60GHz/6MB cache), Ram 4GB DDR4 2400Mhz, 2slots, 1TB SATA 5400rpm , VGA Intel UHD 620 ,14,0\" HD Led, HD webcam, Bluetooth 4,0, 2 US', NULL, NULL),
(4306, 2158, 'vn', 'Laptop Dell Inspiron 3580 70184569 Core i5-8265U (1.60 GHz,6 MB), 4GB RAM,1TB HDD,DVDRW,2GB AMD Radeon,15.6\" FHD,WL+BT, 3cell,  Win 10 Home,Black, 2.2kg', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTDL015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-dell-inspiron-3580-70184569-core-i58265u-160-ghz6-mb-4gb-ram1tb-hdddvdrw2gb-amd-radeon156-fhdwlbt-3cell-win-10-homeblack-22kg', 'Laptop Dell Inspiron 3580 70184569 Core i5-8265U (1.60 GHz,6 MB), 4GB RAM,1TB HDD,DVDRW,2GB AMD Radeon,15.6\" FHD,WL+BT, 3cell,  Win 10 Home,Black, 2.2kg', NULL, NULL),
(4307, 2158, 'en', 'Laptop Dell Inspiron 3580 70184569 Core i5-8265U (1.60 GHz,6 MB), 4GB RAM,1TB HDD,DVDRW,2GB AMD Radeon,15.6\" FHD,WL+BT, 3cell,  Win 10 Home,Black, 2.2kg', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTDL015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-dell-inspiron-3580-70184569-core-i58265u-160-ghz6-mb-4gb-ram1tb-hdddvdrw2gb-amd-radeon156-fhdwlbt-3cell-win-10-homeblack-22kg', 'Laptop Dell Inspiron 3580 70184569 Core i5-8265U (1.60 GHz,6 MB), 4GB RAM,1TB HDD,DVDRW,2GB AMD Radeon,15.6\" FHD,WL+BT, 3cell,  Win 10 Home,Black, 2.2kg', NULL, NULL),
(4308, 2159, 'vn', 'Laptop Dell Latitude 3400 70185531 /Mầu sắc  Đen /Bộ vi xử lý Intel Core™ i3 8145U (2.1Ghz, 4MB Cache) /Chipset Intel /Bộ nhớ trong 4GB DDR4 2400Mhz /Số khe cắm 2/VGA Intel UHD 620/Ổ cứng 1TB 5400rpm (có hỗ trợ khe M2 SSD)/Bảo mật, công nghệ Backlit dual pointing Keyboard/Màn hình  14.0\" HD (1366x768) Anti-Glare/Webcam HD/Audio Yes/Giao tiếp không dây Intel® Dual Band Wireless-AC 8265 802.11AC, Bluetooth 5.0/Cổng giao tiếp (1) VGA; (1) HDMI; (1) USB Type–C 3.1 Gen 1; (2) USB 3.1 Gen 1; (1) USB 2.0 port; (1) Universal audio jack; (1) RJ-45; TPM 2.0/Pin 3 cell (42Whr)/Cân nặng 1.75Kg ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTDL036', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-dell-latitude-3400-70185531-mau-sac-den-bo-vi-xu-ly-intel-core-i3-8145u-21ghz-4mb-cache-chipset-intel-bo-nho-trong-4gb-ddr4-2400mhz-so-khe-cam-2vga-intel-uhd-620o-cung-1tb-5400rpm-co-ho-tro-khe-m2-ssdbao-mat-cong-nghe-backlit-dual-pointing-keyboard', 'Laptop Dell Latitude 3400 70185531 /Mầu sắc  Đen /Bộ vi xử lý Intel Core™ i3 8145U (2.1Ghz, 4MB Cache) /Chipset Intel /Bộ nhớ trong 4GB DDR4 2400Mhz /Số khe cắm 2/VGA Intel UHD 620/Ổ cứng 1TB 5400rpm (có hỗ trợ khe M2 SSD)/Bảo mật, công nghệ Backlit dual ', NULL, NULL),
(4309, 2159, 'en', 'Laptop Dell Latitude 3400 70185531 /Mầu sắc  Đen /Bộ vi xử lý Intel Core™ i3 8145U (2.1Ghz, 4MB Cache) /Chipset Intel /Bộ nhớ trong 4GB DDR4 2400Mhz /Số khe cắm 2/VGA Intel UHD 620/Ổ cứng 1TB 5400rpm (có hỗ trợ khe M2 SSD)/Bảo mật, công nghệ Backlit dual pointing Keyboard/Màn hình  14.0\" HD (1366x768) Anti-Glare/Webcam HD/Audio Yes/Giao tiếp không dây Intel® Dual Band Wireless-AC 8265 802.11AC, Bluetooth 5.0/Cổng giao tiếp (1) VGA; (1) HDMI; (1) USB Type–C 3.1 Gen 1; (2) USB 3.1 Gen 1; (1) USB 2.0 port; (1) Universal audio jack; (1) RJ-45; TPM 2.0/Pin 3 cell (42Whr)/Cân nặng 1.75Kg ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTDL036', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-dell-latitude-3400-70185531-mau-sac-den-bo-vi-xu-ly-intel-core-i3-8145u-21ghz-4mb-cache-chipset-intel-bo-nho-trong-4gb-ddr4-2400mhz-so-khe-cam-2vga-intel-uhd-620o-cung-1tb-5400rpm-co-ho-tro-khe-m2-ssdbao-mat-cong-nghe-backlit-dual-pointing-keyboard', 'Laptop Dell Latitude 3400 70185531 /Mầu sắc  Đen /Bộ vi xử lý Intel Core™ i3 8145U (2.1Ghz, 4MB Cache) /Chipset Intel /Bộ nhớ trong 4GB DDR4 2400Mhz /Số khe cắm 2/VGA Intel UHD 620/Ổ cứng 1TB 5400rpm (có hỗ trợ khe M2 SSD)/Bảo mật, công nghệ Backlit dual ', NULL, NULL),
(4310, 2160, 'vn', 'Laptop Dell Vostro 3490 (70196714) (i5 10210U/4GB Ram/1TB HDD/FP/ 14.0/Win 10/Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTDL062', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-dell-vostro-3490-70196714-i5-10210u4gb-ram1tb-hddfp-140win-10den', 'Laptop Dell Vostro 3490 (70196714) (i5 10210U/4GB Ram/1TB HDD/FP/ 14.0/Win 10/Đen)', NULL, NULL),
(4311, 2160, 'en', 'Laptop Dell Vostro 3490 (70196714) (i5 10210U/4GB Ram/1TB HDD/FP/ 14.0/Win 10/Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTDL062', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-dell-vostro-3490-70196714-i5-10210u4gb-ram1tb-hddfp-140win-10den', 'Laptop Dell Vostro 3490 (70196714) (i5 10210U/4GB Ram/1TB HDD/FP/ 14.0/Win 10/Đen)', NULL, NULL),
(4312, 2161, 'vn', 'Laptop Dell Vostro 3590 (V5I3505W) (i3 10110U/4GB Ram/1TB HDD/ 15.6FHD/DVDRW/Win 10/Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTDL065', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-dell-vostro-3590-v5i3505w-i3-10110u4gb-ram1tb-hdd-156fhddvdrwwin-10den', 'Laptop Dell Vostro 3590 (V5I3505W) (i3 10110U/4GB Ram/1TB HDD/ 15.6FHD/DVDRW/Win 10/Đen)', NULL, NULL),
(4313, 2161, 'en', 'Laptop Dell Vostro 3590 (V5I3505W) (i3 10110U/4GB Ram/1TB HDD/ 15.6FHD/DVDRW/Win 10/Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTDL065', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-dell-vostro-3590-v5i3505w-i3-10110u4gb-ram1tb-hdd-156fhddvdrwwin-10den', 'Laptop Dell Vostro 3590 (V5I3505W) (i3 10110U/4GB Ram/1TB HDD/ 15.6FHD/DVDRW/Win 10/Đen)', NULL, NULL),
(4314, 2162, 'vn', 'Laptop Dell Inspiron 3493 (N4I5136W) (i5 1035G1/4G RAM/1TBHDD/14.0FHD/ Win 10/Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTDL094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-dell-inspiron-3493-n4i5136w-i5-1035g14g-ram1tbhdd140fhd-win-10den', 'Laptop Dell Inspiron 3493 (N4I5136W) (i5 1035G1/4G RAM/1TBHDD/14.0FHD/ Win 10/Đen)', NULL, NULL),
(4315, 2162, 'en', 'Laptop Dell Inspiron 3493 (N4I5136W) (i5 1035G1/4G RAM/1TBHDD/14.0FHD/ Win 10/Đen)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTDL094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-dell-inspiron-3493-n4i5136w-i5-1035g14g-ram1tbhdd140fhd-win-10den', 'Laptop Dell Inspiron 3493 (N4I5136W) (i5 1035G1/4G RAM/1TBHDD/14.0FHD/ Win 10/Đen)', NULL, NULL),
(4316, 2163, 'vn', 'Laptop HP Pavilion 14-ce2050TU 7YA47PA /Bộ vi xử lý Intel® Core i3 8145U(2.1GHz/4MB cache) /Chipset Intel /Bộ nhớ trong 8 GB DDR4 /Số khe cắm 1/VGA Intel® UHD 620/Ổ cứng 256GB SSD/Card Reader 1 multi-format SD media card reader/Bảo mật, công nghệ Kensington MicroSaver® lock slot/Màn hình  14.0\" FHD BrightView WLED-backlit (1920 x 1080)/Webcam HP Wide Vision HD Camera with integrated dual array digital microphone/Audio B&O PLAY; HP Audio Boost; Dual speakers/Giao tiếp không dây Intel® 802.11a/b/g/n/ac (1x1) Wi-Fi® and Bluetooth® 4.2 Combo/Cổng giao tiếp 1 USB 3.1 Type-C™ Gen 1 (Data Transfer up to 5 Gb/s); 2 USB 3.1 Gen 1 (Data transfer only); 1 HDMI; 1 RJ-45; 1 headphone/microphone combo/Pin 3-cell, 41 Wh Li-ion/Cân nặng 1.63Kg /Hệ điều hành Win 10 SL', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTHP714', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-hp-pavilion-14ce2050tu-7ya47pa-bo-vi-xu-ly-intel-core-i3-8145u21ghz4mb-cache-chipset-intel-bo-nho-trong-8-gb-ddr4-so-khe-cam-1vga-intel-uhd-620o-cung-256gb-ssdcard-reader-1-multiformat-sd-media-card-readerbao-mat-cong-nghe-kensington-microsaver-loc', 'Laptop HP Pavilion 14-ce2050TU 7YA47PA /Bộ vi xử lý Intel® Core i3 8145U(2.1GHz/4MB cache) /Chipset Intel /Bộ nhớ trong 8 GB DDR4 /Số khe cắm 1/VGA Intel® UHD 620/Ổ cứng 256GB SSD/Card Reader 1 multi-format SD media card reader/Bảo mật, công nghệ Kensingt', NULL, NULL),
(4317, 2163, 'en', 'Laptop HP Pavilion 14-ce2050TU 7YA47PA /Bộ vi xử lý Intel® Core i3 8145U(2.1GHz/4MB cache) /Chipset Intel /Bộ nhớ trong 8 GB DDR4 /Số khe cắm 1/VGA Intel® UHD 620/Ổ cứng 256GB SSD/Card Reader 1 multi-format SD media card reader/Bảo mật, công nghệ Kensington MicroSaver® lock slot/Màn hình  14.0\" FHD BrightView WLED-backlit (1920 x 1080)/Webcam HP Wide Vision HD Camera with integrated dual array digital microphone/Audio B&O PLAY; HP Audio Boost; Dual speakers/Giao tiếp không dây Intel® 802.11a/b/g/n/ac (1x1) Wi-Fi® and Bluetooth® 4.2 Combo/Cổng giao tiếp 1 USB 3.1 Type-C™ Gen 1 (Data Transfer up to 5 Gb/s); 2 USB 3.1 Gen 1 (Data transfer only); 1 HDMI; 1 RJ-45; 1 headphone/microphone combo/Pin 3-cell, 41 Wh Li-ion/Cân nặng 1.63Kg /Hệ điều hành Win 10 SL', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTHP714', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-hp-pavilion-14ce2050tu-7ya47pa-bo-vi-xu-ly-intel-core-i3-8145u21ghz4mb-cache-chipset-intel-bo-nho-trong-8-gb-ddr4-so-khe-cam-1vga-intel-uhd-620o-cung-256gb-ssdcard-reader-1-multiformat-sd-media-card-readerbao-mat-cong-nghe-kensington-microsaver-loc', 'Laptop HP Pavilion 14-ce2050TU 7YA47PA /Bộ vi xử lý Intel® Core i3 8145U(2.1GHz/4MB cache) /Chipset Intel /Bộ nhớ trong 8 GB DDR4 /Số khe cắm 1/VGA Intel® UHD 620/Ổ cứng 256GB SSD/Card Reader 1 multi-format SD media card reader/Bảo mật, công nghệ Kensingt', NULL, NULL),
(4318, 2164, 'vn', 'Laptop HP 14s-dq1020TU (8QN33PA) (i5 1035G1/4GB RAM/256GB SSD/14\"HD/Win10/Bạc)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTHP761', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-hp-14sdq1020tu-8qn33pa-i5-1035g14gb-ram256gb-ssd14hdwin10bac', 'Laptop HP 14s-dq1020TU (8QN33PA) (i5 1035G1/4GB RAM/256GB SSD/14\"HD/Win10/Bạc)', NULL, NULL),
(4319, 2164, 'en', 'Laptop HP 14s-dq1020TU (8QN33PA) (i5 1035G1/4GB RAM/256GB SSD/14\"HD/Win10/Bạc)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTHP761', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-hp-14sdq1020tu-8qn33pa-i5-1035g14gb-ram256gb-ssd14hdwin10bac', 'Laptop HP 14s-dq1020TU (8QN33PA) (i5 1035G1/4GB RAM/256GB SSD/14\"HD/Win10/Bạc)', NULL, NULL),
(4320, 2165, 'vn', 'Laptop Lenovo IdeaPad 130-15IKB 81H7007JVN i5 8250U 4GB/1TB HDD/15.6\"HD/Dos/Đen', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTLE514', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-lenovo-ideapad-13015ikb-81h7007jvn-i5-8250u-4gb1tb-hdd156hddosden', 'Laptop Lenovo IdeaPad 130-15IKB 81H7007JVN i5 8250U 4GB/1TB HDD/15.6\"HD/Dos/Đen', NULL, NULL),
(4321, 2165, 'en', 'Laptop Lenovo IdeaPad 130-15IKB 81H7007JVN i5 8250U 4GB/1TB HDD/15.6\"HD/Dos/Đen', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTLE514', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-lenovo-ideapad-13015ikb-81h7007jvn-i5-8250u-4gb1tb-hdd156hddosden', 'Laptop Lenovo IdeaPad 130-15IKB 81H7007JVN i5 8250U 4GB/1TB HDD/15.6\"HD/Dos/Đen', NULL, NULL),
(4322, 2166, 'vn', 'Laptop Lenovo IdeaPad S340-15IWL (81N800AAVN) (i5 8265U/4GB RAM/1TB HDD/15.6\"FHD/Win/Grey)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTLE542', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-lenovo-ideapad-s34015iwl-81n800aavn-i5-8265u4gb-ram1tb-hdd156fhdwingrey', 'Laptop Lenovo IdeaPad S340-15IWL (81N800AAVN) (i5 8265U/4GB RAM/1TB HDD/15.6\"FHD/Win/Grey)', NULL, NULL),
(4323, 2166, 'en', 'Laptop Lenovo IdeaPad S340-15IWL (81N800AAVN) (i5 8265U/4GB RAM/1TB HDD/15.6\"FHD/Win/Grey)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTLE542', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-lenovo-ideapad-s34015iwl-81n800aavn-i5-8265u4gb-ram1tb-hdd156fhdwingrey', 'Laptop Lenovo IdeaPad S340-15IWL (81N800AAVN) (i5 8265U/4GB RAM/1TB HDD/15.6\"FHD/Win/Grey)', NULL, NULL),
(4324, 2167, 'vn', 'Laptop Lenovo IdeaPad S145-15IWL (81W8001YVN) (i5 1035G1/4GB RAM/256Gb SSD/15.6\"FHD/Win/Grey)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTLE561', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-lenovo-ideapad-s14515iwl-81w8001yvn-i5-1035g14gb-ram256gb-ssd156fhdwingrey', 'Laptop Lenovo IdeaPad S145-15IWL (81W8001YVN) (i5 1035G1/4GB RAM/256Gb SSD/15.6\"FHD/Win/Grey)', NULL, NULL),
(4325, 2167, 'en', 'Laptop Lenovo IdeaPad S145-15IWL (81W8001YVN) (i5 1035G1/4GB RAM/256Gb SSD/15.6\"FHD/Win/Grey)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTLE561', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-lenovo-ideapad-s14515iwl-81w8001yvn-i5-1035g14gb-ram256gb-ssd156fhdwingrey', 'Laptop Lenovo IdeaPad S145-15IWL (81W8001YVN) (i5 1035G1/4GB RAM/256Gb SSD/15.6\"FHD/Win/Grey)', NULL, NULL),
(4326, 2168, 'vn', 'Laptop Lenovo IdeaPad S145-14IIL (81W6001GVNN) (i3 1005G1/4GB RAM/256GB SSD/14\"FHD/Win10/Grey)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTLE571', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-lenovo-ideapad-s14514iil-81w6001gvnn-i3-1005g14gb-ram256gb-ssd14fhdwin10grey', 'Laptop Lenovo IdeaPad S145-14IIL (81W6001GVNN) (i3 1005G1/4GB RAM/256GB SSD/14\"FHD/Win10/Grey)', NULL, NULL),
(4327, 2168, 'en', 'Laptop Lenovo IdeaPad S145-14IIL (81W6001GVNN) (i3 1005G1/4GB RAM/256GB SSD/14\"FHD/Win10/Grey)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'LTLE571', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'laptop-lenovo-ideapad-s14514iil-81w6001gvnn-i3-1005g14gb-ram256gb-ssd14fhdwin10grey', 'Laptop Lenovo IdeaPad S145-14IIL (81W6001GVNN) (i3 1005G1/4GB RAM/256GB SSD/14\"FHD/Win10/Grey)', NULL, NULL),
(4328, 2169, 'vn', 'Mouse Eblue Game EMS151REVN-IU USB Red, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MEEB079', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mouse-eblue-game-ems151revniu-usb-red-', 'Mouse Eblue Game EMS151REVN-IU USB Red, ', NULL, NULL),
(4329, 2169, 'en', 'Mouse Eblue Game EMS151REVN-IU USB Red, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MEEB079', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mouse-eblue-game-ems151revniu-usb-red-', 'Mouse Eblue Game EMS151REVN-IU USB Red, ', NULL, NULL),
(4330, 2170, 'vn', 'Mouse Lanjun M1063 Optical USB, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MELJ005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mouse-lanjun-m1063-optical-usb-', 'Mouse Lanjun M1063 Optical USB, ', NULL, NULL),
(4331, 2170, 'en', 'Mouse Lanjun M1063 Optical USB, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MELJ005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mouse-lanjun-m1063-optical-usb-', 'Mouse Lanjun M1063 Optical USB, ', NULL, NULL),
(4332, 2171, 'vn', 'Mouse Genius Netscroll NS 120 Optical PS2, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MEGE008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mouse-genius-netscroll-ns-120-optical-ps2-', 'Mouse Genius Netscroll NS 120 Optical PS2, ', NULL, NULL),
(4333, 2171, 'en', 'Mouse Genius Netscroll NS 120 Optical PS2, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MEGE008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mouse-genius-netscroll-ns-120-optical-ps2-', 'Mouse Genius Netscroll NS 120 Optical PS2, ', NULL, NULL),
(4334, 2172, 'vn', 'Mouse Newmen M386 Optical USB Black, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MENE061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mouse-newmen-m386-optical-usb-black-', 'Mouse Newmen M386 Optical USB Black, ', NULL, NULL);
INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(4335, 2172, 'en', 'Mouse Newmen M386 Optical USB Black, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MENE061', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mouse-newmen-m386-optical-usb-black-', 'Mouse Newmen M386 Optical USB Black, ', NULL, NULL),
(4336, 2173, 'vn', 'Mouse Rapoo N1130', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MERA049', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mouse-rapoo-n1130', 'Mouse Rapoo N1130', NULL, NULL),
(4337, 2173, 'en', 'Mouse Rapoo N1130', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MERA049', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mouse-rapoo-n1130', 'Mouse Rapoo N1130', NULL, NULL),
(4338, 2174, 'vn', 'Mouse Newmen F430 Wireless White', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MENE066', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mouse-newmen-f430-wireless-white', 'Mouse Newmen F430 Wireless White', NULL, NULL),
(4339, 2174, 'en', 'Mouse Newmen F430 Wireless White', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MENE066', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'mouse-newmen-f430-wireless-white', 'Mouse Newmen F430 Wireless White', NULL, NULL),
(4340, 2175, 'vn', 'Keyboard Jupistar USB KB6106, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'KBJU005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'keyboard-jupistar-usb-kb6106-', 'Keyboard Jupistar USB KB6106, ', NULL, NULL),
(4341, 2175, 'en', 'Keyboard Jupistar USB KB6106, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'KBJU005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'keyboard-jupistar-usb-kb6106-', 'Keyboard Jupistar USB KB6106, ', NULL, NULL),
(4342, 2176, 'vn', 'Keyboard Genius KB125 USB Black', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'KBGE048', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'keyboard-genius-kb125-usb-black', 'Keyboard Genius KB125 USB Black', NULL, NULL),
(4343, 2176, 'en', 'Keyboard Genius KB125 USB Black', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'KBGE048', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'keyboard-genius-kb125-usb-black', 'Keyboard Genius KB125 USB Black', NULL, NULL),
(4344, 2177, 'vn', 'Keyboard Eblue EKM046BK USB Black', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'KBEB001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'keyboard-eblue-ekm046bk-usb-black', 'Keyboard Eblue EKM046BK USB Black', NULL, NULL),
(4345, 2177, 'en', 'Keyboard Eblue EKM046BK USB Black', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'KBEB001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'keyboard-eblue-ekm046bk-usb-black', 'Keyboard Eblue EKM046BK USB Black', NULL, NULL),
(4346, 2178, 'vn', 'Bộ Keyboard + Mouse  Motospeed S51 USB Đen, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'KBMT028', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'bo-keyboard-mouse-motospeed-s51-usb-den-', 'Bộ Keyboard + Mouse  Motospeed S51 USB Đen, ', NULL, NULL),
(4347, 2178, 'en', 'Bộ Keyboard + Mouse  Motospeed S51 USB Đen, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'KBMT028', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'bo-keyboard-mouse-motospeed-s51-usb-den-', 'Bộ Keyboard + Mouse  Motospeed S51 USB Đen, ', NULL, NULL),
(4348, 2179, 'vn', 'Keyboard Fuhlen Game Pro L420 USB, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'KBFU005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'keyboard-fuhlen-game-pro-l420-usb-', 'Keyboard Fuhlen Game Pro L420 USB, ', NULL, NULL),
(4349, 2179, 'en', 'Keyboard Fuhlen Game Pro L420 USB, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'KBFU005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'keyboard-fuhlen-game-pro-l420-usb-', 'Keyboard Fuhlen Game Pro L420 USB, ', NULL, NULL),
(4350, 2180, 'vn', 'Bộ Keyboard + Mouse  Motospeed S700 Gaming Combo (K107 + F301) - USB, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'KBMT012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'bo-keyboard-mouse-motospeed-s700-gaming-combo-k107-f301-usb-', 'Bộ Keyboard + Mouse  Motospeed S700 Gaming Combo (K107 + F301) - USB, ', NULL, NULL),
(4351, 2180, 'en', 'Bộ Keyboard + Mouse  Motospeed S700 Gaming Combo (K107 + F301) - USB, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'KBMT012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'bo-keyboard-mouse-motospeed-s700-gaming-combo-k107-f301-usb-', 'Bộ Keyboard + Mouse  Motospeed S700 Gaming Combo (K107 + F301) - USB, ', NULL, NULL),
(4352, 2181, 'vn', 'Keyboard Numpad Mofii X910 Wireless Pink', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'KBMF019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'keyboard-numpad-mofii-x910-wireless-pink', 'Keyboard Numpad Mofii X910 Wireless Pink', NULL, NULL),
(4353, 2181, 'en', 'Keyboard Numpad Mofii X910 Wireless Pink', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'KBMF019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'keyboard-numpad-mofii-x910-wireless-pink', 'Keyboard Numpad Mofii X910 Wireless Pink', NULL, NULL),
(4354, 2182, 'vn', 'Bộ Keyboard + Mouse Delux Optical Wireless K6010G+M391GB, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'KBDL014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'bo-keyboard-mouse-delux-optical-wireless-k6010gm391gb-', 'Bộ Keyboard + Mouse Delux Optical Wireless K6010G+M391GB, ', NULL, NULL),
(4355, 2182, 'en', 'Bộ Keyboard + Mouse Delux Optical Wireless K6010G+M391GB, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'KBDL014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp78', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'bo-keyboard-mouse-delux-optical-wireless-k6010gm391gb-', 'Bộ Keyboard + Mouse Delux Optical Wireless K6010G+M391GB, ', NULL, NULL),
(4356, 2183, 'vn', 'Monitor HP 18.5\"B191 LED', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MOHP092', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp172', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'monitor-hp-185b191-led', 'Monitor HP 18.5\"B191 LED', NULL, NULL),
(4357, 2183, 'en', 'Monitor HP 18.5\"B191 LED', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MOHP092', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp172', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'monitor-hp-185b191-led', 'Monitor HP 18.5\"B191 LED', NULL, NULL),
(4358, 2184, 'vn', 'HP 18,5\"19KA LED, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MOHP083', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp168', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'hp-18519ka-led-', 'HP 18,5\"19KA LED, ', NULL, NULL),
(4359, 2184, 'en', 'HP 18,5\"19KA LED, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MOHP083', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp168', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'hp-18519ka-led-', 'HP 18,5\"19KA LED, ', NULL, NULL),
(4360, 2185, 'vn', 'Monitor Dell 18.5\"E1916HV Wide LED', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MODE118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp143', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'monitor-dell-185e1916hv-wide-led', 'Monitor Dell 18.5\"E1916HV Wide LED', NULL, NULL),
(4361, 2185, 'en', 'Monitor Dell 18.5\"E1916HV Wide LED', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MODE118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp143', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'monitor-dell-185e1916hv-wide-led', 'Monitor Dell 18.5\"E1916HV Wide LED', NULL, NULL),
(4362, 2186, 'vn', 'Asus 23,6\"VS247NR LED', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MOAS071', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp111', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'asus-236vs247nr-led', 'Asus 23,6\"VS247NR LED', NULL, NULL),
(4363, 2186, 'en', 'Asus 23,6\"VS247NR LED', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MOAS071', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp111', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'asus-236vs247nr-led', 'Asus 23,6\"VS247NR LED', NULL, NULL),
(4364, 2187, 'vn', 'Dell 19,5\"E2016 Wide LED, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MODE121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp144', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'dell-195e2016-wide-led-', 'Dell 19,5\"E2016 Wide LED, ', NULL, NULL),
(4365, 2187, 'en', 'Dell 19,5\"E2016 Wide LED, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MODE121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp144', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'dell-195e2016-wide-led-', 'Dell 19,5\"E2016 Wide LED, ', NULL, NULL),
(4366, 2188, 'vn', 'LG 19,5\"20MP48A LED IPS, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MOLG115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp189', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'lg-19520mp48a-led-ips-', 'LG 19,5\"20MP48A LED IPS, ', NULL, NULL),
(4367, 2188, 'en', 'LG 19,5\"20MP48A LED IPS, ', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MOLG115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp189', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'lg-19520mp48a-led-ips-', 'LG 19,5\"20MP48A LED IPS, ', NULL, NULL),
(4368, 2189, 'vn', 'Monitor LG 19.5\"20MK400H-B LED', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MOLG149', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp197', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'monitor-lg-19520mk400hb-led', 'Monitor LG 19.5\"20MK400H-B LED', NULL, NULL),
(4369, 2189, 'en', 'Monitor LG 19.5\"20MK400H-B LED', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MOLG149', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp197', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'monitor-lg-19520mk400hb-led', 'Monitor LG 19.5\"20MK400H-B LED', NULL, NULL),
(4370, 2190, 'vn', 'LG 21,5\"22M47D LED', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MOLG080', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp187', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'lg-21522m47d-led', 'LG 21,5\"22M47D LED', NULL, NULL),
(4371, 2190, 'en', 'LG 21,5\"22M47D LED', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MOLG080', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp187', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'lg-21522m47d-led', 'LG 21,5\"22M47D LED', NULL, NULL),
(4372, 2191, 'vn', 'Màn hình LG 23,6\"24M49VQ-P LED IPS', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MOLG135', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp193', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'man-hinh-lg-23624m49vqp-led-ips', 'Màn hình LG 23,6\"24M49VQ-P LED IPS', NULL, NULL),
(4373, 2191, 'en', 'Màn hình LG 23,6\"24M49VQ-P LED IPS', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'MOLG135', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp193', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'man-hinh-lg-23624m49vqp-led-ips', 'Màn hình LG 23,6\"24M49VQ-P LED IPS', NULL, NULL),
(4374, 2192, 'vn', 'Ổ cứng gắn ngoài WD My Passport 1TB 2.5\" USB 3.0 Xanh WDBYNN0010BBL', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDWD192', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp222', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'o-cung-gan-ngoai-wd-my-passport-1tb-25-usb-30-xanh-wdbynn0010bbl', 'Ổ cứng gắn ngoài WD My Passport 1TB 2.5\" USB 3.0 Xanh WDBYNN0010BBL', NULL, NULL),
(4375, 2192, 'en', 'Ổ cứng gắn ngoài WD My Passport 1TB 2.5\" USB 3.0 Xanh WDBYNN0010BBL', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDWD192', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp222', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Nhiều quà tặng hấp dẫn', NULL, NULL, 0, 'o-cung-gan-ngoai-wd-my-passport-1tb-25-usb-30-xanh-wdbynn0010bbl', 'Ổ cứng gắn ngoài WD My Passport 1TB 2.5\" USB 3.0 Xanh WDBYNN0010BBL', NULL, NULL),
(4376, 2193, 'vn', 'Ổ cứng gắn ngoài WD My PassPort Ultra Silver 1TB màu bạc 2.5\" WDBC3C0010BSL-WESN', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDWD278', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp230', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Bao Da HDD Ext (Khuyến Mãi)BAOD020 Hoặc Bao HDD WD Ext + Vải (Khuyến Mãi)BAOD086 Hoặc TUID122', NULL, NULL, 0, 'o-cung-gan-ngoai-wd-my-passport-ultra-silver-1tb-mau-bac-25-wdbc3c0010bslwesn', 'Ổ cứng gắn ngoài WD My PassPort Ultra Silver 1TB màu bạc 2.5\" WDBC3C0010BSL-WESN', NULL, NULL),
(4377, 2193, 'en', 'Ổ cứng gắn ngoài WD My PassPort Ultra Silver 1TB màu bạc 2.5\" WDBC3C0010BSL-WESN', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDWD278', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp230', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Bao Da HDD Ext (Khuyến Mãi)BAOD020 Hoặc Bao HDD WD Ext + Vải (Khuyến Mãi)BAOD086 Hoặc TUID122', NULL, NULL, 0, 'o-cung-gan-ngoai-wd-my-passport-ultra-silver-1tb-mau-bac-25-wdbc3c0010bslwesn', 'Ổ cứng gắn ngoài WD My PassPort Ultra Silver 1TB màu bạc 2.5\" WDBC3C0010BSL-WESN', NULL, NULL),
(4378, 2194, 'vn', 'Ổ cứng gắn ngoài Seagate Backup Plus Slim Portable Drive 1TB 2.5\" Black', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDSE130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp202', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Tặng Bình Giữ Nhiệt Lock&Lock trị giá [199.000đ] (BINH003) - Áp dụng tại chi nhánh Hải Phòng đến khi hết quà tặng \n+ Tặng bao bảo vệ ổ cứng Seagate trị giá [99.000đ] (BAOD020) hoặc Túi bảo vệ ổ cứng 2.5\" ORICO PHD-25 (TUID142) - Áp dụng đến khi hết quà tặng', NULL, NULL, 0, 'o-cung-gan-ngoai-seagate-backup-plus-slim-portable-drive-1tb-25-black', 'Ổ cứng gắn ngoài Seagate Backup Plus Slim Portable Drive 1TB 2.5\" Black', NULL, NULL),
(4379, 2194, 'en', 'Ổ cứng gắn ngoài Seagate Backup Plus Slim Portable Drive 1TB 2.5\" Black', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDSE130', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp202', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Tặng Bình Giữ Nhiệt Lock&Lock trị giá [199.000đ] (BINH003) - Áp dụng tại chi nhánh Hải Phòng đến khi hết quà tặng \n+ Tặng bao bảo vệ ổ cứng Seagate trị giá [99.000đ] (BAOD020) hoặc Túi bảo vệ ổ cứng 2.5\" ORICO PHD-25 (TUID142) - Áp dụng đến khi hết quà tặng', NULL, NULL, 0, 'o-cung-gan-ngoai-seagate-backup-plus-slim-portable-drive-1tb-25-black', 'Ổ cứng gắn ngoài Seagate Backup Plus Slim Portable Drive 1TB 2.5\" Black', NULL, NULL),
(4380, 2195, 'vn', 'Ổ cứng gắn ngoài WD My Passport 1TB 2.5\" USB 3.0 Cam WDBYNN0010BOR', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDWD193', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp224', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Tặng mũ bảo hiểm thời trang WD trị giá [199.000đ] (MUBH019) - Áp dụng tại HCM đến khi hết quà + Tặng Bao vải đựng HDD WD Ext (BAOD086) - Áp dụng đến khi hết quà + + Tặng túi dây kéo WD (khuyến mại) trị giá [49.000đ] (HATL930] -Áp dụng đến khi hết quà tặng', NULL, NULL, 0, 'o-cung-gan-ngoai-wd-my-passport-1tb-25-usb-30-cam-wdbynn0010bor', 'Ổ cứng gắn ngoài WD My Passport 1TB 2.5\" USB 3.0 Cam WDBYNN0010BOR', NULL, NULL),
(4381, 2195, 'en', 'Ổ cứng gắn ngoài WD My Passport 1TB 2.5\" USB 3.0 Cam WDBYNN0010BOR', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDWD193', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp224', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Tặng mũ bảo hiểm thời trang WD trị giá [199.000đ] (MUBH019) - Áp dụng tại HCM đến khi hết quà + Tặng Bao vải đựng HDD WD Ext (BAOD086) - Áp dụng đến khi hết quà + + Tặng túi dây kéo WD (khuyến mại) trị giá [49.000đ] (HATL930] -Áp dụng đến khi hết quà tặng', NULL, NULL, 0, 'o-cung-gan-ngoai-wd-my-passport-1tb-25-usb-30-cam-wdbynn0010bor', 'Ổ cứng gắn ngoài WD My Passport 1TB 2.5\" USB 3.0 Cam WDBYNN0010BOR', NULL, NULL),
(4382, 2196, 'vn', 'Ổ cứng gắn ngoài Seagate Backup Plus Slim Portable Drive 1TB 2.5\" SILVER', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDSE131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp203', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Tặng Bình Giữ Nhiệt Lock&Lock trị giá [199.000đ] (BINH003) hoặc Bình giữ nhiệt Elmich (Khuyến mãi cho ổ WD External) (BINH032)  - Áp dụng đến khi hết quà tặng\n+ Tặng bao bảo vệ ổ cứng Seagate trị giá [99.000đ] (BAOD020) hoặc Túi bảo vệ ổ cứng 2.5\" ORICO PHD-25 (TUID142) - Áp dụng đến khi hết quà tặng', NULL, NULL, 0, 'o-cung-gan-ngoai-seagate-backup-plus-slim-portable-drive-1tb-25-silver', 'Ổ cứng gắn ngoài Seagate Backup Plus Slim Portable Drive 1TB 2.5\" SILVER', NULL, NULL),
(4383, 2196, 'en', 'Ổ cứng gắn ngoài Seagate Backup Plus Slim Portable Drive 1TB 2.5\" SILVER', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDSE131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp203', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Tặng Bình Giữ Nhiệt Lock&Lock trị giá [199.000đ] (BINH003) hoặc Bình giữ nhiệt Elmich (Khuyến mãi cho ổ WD External) (BINH032)  - Áp dụng đến khi hết quà tặng\n+ Tặng bao bảo vệ ổ cứng Seagate trị giá [99.000đ] (BAOD020) hoặc Túi bảo vệ ổ cứng 2.5\" ORICO PHD-25 (TUID142) - Áp dụng đến khi hết quà tặng', NULL, NULL, 0, 'o-cung-gan-ngoai-seagate-backup-plus-slim-portable-drive-1tb-25-silver', 'Ổ cứng gắn ngoài Seagate Backup Plus Slim Portable Drive 1TB 2.5\" SILVER', NULL, NULL),
(4384, 2197, 'vn', 'Ổ cứng gắn ngoài WD Element 500GB/5400 2.5\" USB 3.0', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDWD096', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp221', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Bao Da HDD Ext (Khuyến Mãi)BAOD020 Hoặc Bao HDD WD Ext + Vải (Khuyến Mãi)BAOD086 Hoặc TUID122', NULL, NULL, 0, 'o-cung-gan-ngoai-wd-element-500gb5400-25-usb-30', 'Ổ cứng gắn ngoài WD Element 500GB/5400 2.5\" USB 3.0', NULL, NULL),
(4385, 2197, 'en', 'Ổ cứng gắn ngoài WD Element 500GB/5400 2.5\" USB 3.0', NULL, NULL, NULL, 'https://drive.google.com/open?id=1r9f-cH2MSjdaM5XAxQx9odc9b5BPopSR', NULL, NULL, 'HDWD096', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=6Xd1bQePp221', 'https://drive.google.com/open?id=1-MC1gMH_flPM1EYPCwFAmw83wG6kbEax&authuser=dac@maytinhdonganh.vn&usp=drive_fs', 'Bao Da HDD Ext (Khuyến Mãi)BAOD020 Hoặc Bao HDD WD Ext + Vải (Khuyến Mãi)BAOD086 Hoặc TUID122', NULL, NULL, 0, 'o-cung-gan-ngoai-wd-element-500gb5400-25-usb-30', 'Ổ cứng gắn ngoài WD Element 500GB/5400 2.5\" USB 3.0', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer`
--

CREATE TABLE `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer_languages`
--

CREATE TABLE `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_color`
--

CREATE TABLE `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `address_ip` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `star_1` int(11) NOT NULL,
  `star_2` int(11) NOT NULL,
  `star_3` int(11) NOT NULL,
  `star_4` int(11) NOT NULL,
  `star_5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `address_ip`, `star_1`, `star_2`, `star_3`, `star_4`, `star_5`) VALUES
(1, 2036, '113.190.142.218', 0, 0, 1, 0, 0),
(2, 2036, '222.252.92.102', 0, 0, 0, 0, 1),
(3, 2177, '14.162.203.189', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regInfor`
--

CREATE TABLE `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT '1',
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT '1',
  `regInfor_answer2` int(11) DEFAULT '1',
  `regInfor_answer3` int(11) DEFAULT '1',
  `regInfor_answer4` int(11) DEFAULT '1',
  `regInfor_answer5` int(11) DEFAULT '1',
  `regInfor_answer6` int(11) DEFAULT '1',
  `regInfor_answer7` int(11) DEFAULT '1',
  `regInfor_answer8` int(11) DEFAULT '1',
  `regInfor_answer9` int(11) DEFAULT '1',
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regMember`
--

CREATE TABLE `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`) VALUES
(105, '0935004408', '2020-04-17'),
(106, '0987654321', '2020-04-28'),
(107, '', '2020-04-28'),
(108, 'cafelink.org@gmail.com', '2020-05-02'),
(109, 'cafelink.org@gmail.com', '2020-05-02'),
(110, '0983966661', '2020-05-14'),
(111, 'dac@maytinhdonganh.vn', '2020-05-15'),
(112, '123456789', '2020-05-19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci,
  `sale_code` text COLLATE utf8_unicode_ci,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci,
  `service_content` text COLLATE utf8_unicode_ci,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `servicetag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `servicetag_arr`) VALUES
(65, 'Phạm Kim Anh', 'Chủ Cửa Hàng Thú Cưng', '<p>Sản phẩm chất lượng tốt nh&acirc;n vi&ecirc;n tư vấn nhiệt t&igrave;nh, ủng hộ shop l&acirc;u d&agrave;i</p>\r\n', '36399703_999696863540802_177687315341115392_n.jpg', '0', 3, '', '2018-08-21', '2018-10-23', 1, NULL, NULL, NULL, NULL, NULL, 'Phạm Kim Anh', '', 'pham-kim-anh', '', 1, ''),
(67, 'Trần Thị Dung', 'CEO Cty TNHH Tình Dung', '<p>T&ocirc;i từng mua chậu rửa mặt h&atilde;ng TOTO tại Minh Phương Showroom từ nhiều năm trước nhưng chậu rửa mặt nh&agrave; t&ocirc;i vẫn như vừa mới mua, nước men chậu vẫn c&ograve;n rất trắng v&agrave; bền. Hiện tượng bị ố m&agrave;u nhỏ kh&ocirc;ng nhiều chỉ xuất hiện tại một số chỗ kh&ocirc;ng đ&aacute;ng kể. Hiện tại con t&ocirc;i đang x&acirc;y nh&agrave; v&agrave; ch&uacute;ng t&ocirc;i vẫn sẽ tiếp tục mua h&agrave;ng của Minh Phương Showroom.</p>\r\n', '30441213_842931832577315_7431658358391701504_n.jpg', '0', 3, '', '2018-08-22', '2018-10-23', 1, NULL, NULL, NULL, NULL, NULL, 'Trần Thị Dung', '', 'tran-thi-dung', '', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat`
--

CREATE TABLE `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci,
  `servicecat_content` text COLLATE utf8_unicode_ci,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat`
--

INSERT INTO `servicecat` (`servicecat_id`, `servicecat_name`, `servicecat_des`, `servicecat_content`, `servicecat_parent`, `servicecat_sort_order`, `servicecat_created_date`, `servicecat_update_date`, `state`, `servicecat_img`, `servicecat_sub_infor1`, `servicecat_sub_infor2`, `servicecat_sub_infor3`, `servicecat_sub_infor4`, `servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(3, 'Ý kiến khách hàng', '', '', 0, 0, '2018-07-23', NULL, 1, 'vietcombank-ho-tro-vay-mua-nha-o-xa-hoi.jpg', NULL, NULL, NULL, NULL, NULL, '', '', 'vay-tien-mua-nha', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat_languages`
--

CREATE TABLE `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci,
  `state` int(11) DEFAULT '1',
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat_languages`
--

INSERT INTO `servicecat_languages` (`id`, `lang_servicecat_name`, `lang_servicecat_des`, `lang_servicecat_content`, `state`, `lang_servicecat_sub_infor1`, `lang_servicecat_sub_infor2`, `lang_servicecat_sub_infor3`, `lang_servicecat_sub_infor4`, `lang_servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `languages_code`, `servicecat_id`) VALUES
(5, ' Vay tiền mua nhà', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, ' Vay tiền mua nhà', '', 'vay-tien-mua-nha', '', NULL, 'vn', 3),
(6, 'Dịch vụ', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ', '', 'dich-vu', '', NULL, 'en', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicetag`
--

CREATE TABLE `servicetag` (
  `servicetag_id` int(11) NOT NULL,
  `servicetag_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sort_order` int(11) NOT NULL,
  `servicetag_created_date` datetime NOT NULL,
  `servicetag_update_date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `servicetag_img` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `servicetag`
--

INSERT INTO `servicetag` (`servicetag_id`, `servicetag_name`, `servicetag_des`, `servicetag_content`, `servicetag_sort_order`, `servicetag_created_date`, `servicetag_update_date`, `state`, `servicetag_img`, `servicetag_sub_info1`, `servicetag_sub_info2`, `servicttag_sub_info3`, `servicetag_sub_info4`, `servicetag_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(4, 'hot', '', '', 0, '2017-12-13 15:12:00', '2017-12-13 15:12:00', 1, '', '', '', '', '', '', 'hot', '', 'hot', '', 1),
(5, 'sale', '', '', 0, '2017-12-13 15:12:12', '2017-12-13 15:12:12', 1, '', '', '', '', '', '', 'sale', '', 'sale', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicetag_languages`
--

CREATE TABLE `servicetag_languages` (
  `id` int(11) NOT NULL,
  `servicetag_id` int(11) NOT NULL,
  `languages_code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `servicetag_languages`
--

INSERT INTO `servicetag_languages` (`id`, `servicetag_id`, `languages_code`, `lang_servicetag_name`, `lang_servicetag_des`, `lang_servicetag_content`, `lang_servicetag_sub_info1`, `lang_servicetag_sub_info2`, `lang_servicetag_sub_info3`, `lang_servicetag_sub_info4`, `lang_servicetag_sub_info5`, `title_seo`, `des_seo`, `keyword`, `friendly_url`, `state`) VALUES
(4, 4, 'vn', 'hot', '', '', '', '', '', '', '', 'hot', '', 'keyword', 'hot', 1),
(5, 4, 'en', 'hot', '', '', '', '', '', '', '', 'hot', '', 'keyword', 'hot', 1),
(6, 5, 'vn', 'sale', '<p>1</p>\r\n', '', '', '', '', '', '', 'sale', '', 'keyword', 'sale', 1),
(7, 5, 'en', 'sale', '<p>2</p>\r\n', '', '', '', '', '', '', 'sale', '', 'keyword', 'sale', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_languages`
--

CREATE TABLE `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci,
  `lang_service_content` text COLLATE utf8_unicode_ci,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(85, 'vn', 'Phạm Kim Anh', 'Chủ Cửa Hàng Thú Cưng', '<p>Sản phẩm chất lượng tốt nh&acirc;n vi&ecirc;n tư vấn nhiệt t&igrave;nh, ủng hộ shop l&acirc;u d&agrave;i</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Phạm Kim Anh', '', 'pham-kim-anh', '', NULL, 65),
(86, 'en', 'english version DON PAULSON', 'english version Architectural Co.', 'english version <p>Your efficient planning, scheduling, management, and supervision resulted in timely completion and a quality facility...Particularly refreshing was the spirit of cooperation demonstrated by your firm which served to minimize costly delays and contract modifications.</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'DON PAULSON', '', 'en-don-paulson', '', NULL, 65),
(89, 'vn', 'Trần Thị Dung', 'CEO Cty TNHH Tình Dung', '<p>T&ocirc;i từng mua chậu rửa mặt h&atilde;ng TOTO tại Minh Phương Showroom từ nhiều năm trước nhưng chậu rửa mặt nh&agrave; t&ocirc;i vẫn như vừa mới mua, nước men chậu vẫn c&ograve;n rất trắng v&agrave; bền. Hiện tượng bị ố m&agrave;u nhỏ kh&ocirc;ng nhiều chỉ xuất hiện tại một số chỗ kh&ocirc;ng đ&aacute;ng kể. Hiện tại con t&ocirc;i đang x&acirc;y nh&agrave; v&agrave; ch&uacute;ng t&ocirc;i vẫn sẽ tiếp tục mua h&agrave;ng của Minh Phương Showroom.</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Trần Thị Dung', '', 'tran-thi-dung', '', NULL, 67),
(90, 'en', 'english version Hoàng Thùy Vân', 'english version Nhân viên Marketting', 'english version <p>Sản phẩm chất lượng tốt, gi&aacute; cả phải chăng. Đặc biệt nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng rất nhiệt t&igrave;nh</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Hoàng Thùy Vân', '', 'en-hoang-thuy-van', '', NULL, 67);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoc_tinh`
--

CREATE TABLE `thuoc_tinh` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thuoc_tinh`
--

INSERT INTO `thuoc_tinh` (`id`, `name`) VALUES
(1, 'Socket'),
(2, 'Dòng CPU'),
(3, 'Dung lượng RAM'),
(4, 'Dung lượng HDD'),
(5, 'Card màn hình'),
(6, 'Dung lượng SSD');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoc_tinh_value`
--

CREATE TABLE `thuoc_tinh_value` (
  `id` int(11) NOT NULL,
  `thuoc_tinh_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thuoc_tinh_value`
--

INSERT INTO `thuoc_tinh_value` (`id`, `thuoc_tinh_id`, `name`) VALUES
(1, 1, 'Socket 1155'),
(2, 1, 'Socket 1150'),
(3, 1, 'Socket 2011'),
(4, 1, 'Socket FM2'),
(5, 1, 'Socket 2011v3'),
(6, 1, 'Socket 1151'),
(7, 1, 'Socket AM4'),
(8, 2, 'Intel Core i7'),
(9, 2, 'Intel Core i5'),
(10, 2, 'Intel Core i3'),
(11, 2, 'Intel Pentium'),
(12, 2, 'Intel Celeron'),
(13, 2, 'Intel Xeon'),
(14, 2, 'AMD Trylity'),
(15, 2, 'AMD Ryzen'),
(16, 3, '2GB'),
(17, 3, '4GB'),
(18, 3, '8GB'),
(19, 3, '16GB'),
(20, 4, '250GB'),
(21, 4, '500GB'),
(22, 4, '1000GB'),
(23, 4, '2TB'),
(24, 5, 'On Board'),
(25, 5, 'nVidia Geforce'),
(26, 5, 'AMD Redaon'),
(27, 5, 'nVidia Quadro'),
(28, 6, 'SSD 120 - 128GB'),
(29, 6, 'SSD 240 - 256GB'),
(30, 6, 'SSD 480 - 512GB'),
(31, 6, 'SSD 960 - 1024GB');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci,
  `user_password` text COLLATE utf8_unicode_ci,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `time` date NOT NULL,
  `ask` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_me_identify` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_me_token` text COLLATE utf8_unicode_ci NOT NULL,
  `user_birthday` date NOT NULL,
  `id_fb` text COLLATE utf8_unicode_ci,
  `id_go` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`, `time`, `ask`, `remember_me_identify`, `remember_me_token`, `user_birthday`, `id_fb`, `id_go`) VALUES
(11, 'Việt Hưng', 'viethung95cute@gmail.com', NULL, NULL, '$2y$10$H/oRwht13lj1/tnj.VEIVO58qvIvEIjfTDt4HByWikd/e15e0CD2G', NULL, 1, '0000-00-00', '$2y$10$nEdTTn2WO1lwvkii8gfgpuwf9TRz72.ypUNmDUUGlVJvuR2ZC.idy', '', '', '0000-00-00', NULL, NULL),
(12, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', NULL, '$2y$10$4TH0H6xh.g2RzXQR8YAav.tGgPrOxbT2C.15daiMcK/L8.f53i/hW', NULL, 1, '2020-04-28', '$2y$10$UFitd0wflRDg2ZBULXyhEe3dQgfYET3pCO7uJd14qJj/65cZRqKCu', '', '', '1983-10-31', NULL, NULL),
(13, 'Tuan Truong Quang', 'songmaituoitho@yahoo.com.vn', NULL, NULL, '$2y$10$9gLGWbu/AvRoU6XMAleKmO4xOJVmdjB9/vS3vvbRZR0tfIfNOCeu2', NULL, 1, '0000-00-00', '', '', '', '0000-00-00', '1320532731420670', NULL),
(14, 'truong quang tuan', 'truongquangtuan3110@gmail.com', NULL, NULL, '$2y$10$roqpEnUTSzmuMIV54VqN4.92kW86I5bvsOSA4.PqdfIb3yvETEXwS', NULL, 1, '0000-00-00', '', '', '', '0000-00-00', NULL, '115546341319345602469'),
(15, 'Cafelink Tuyến', 'tuyencafelink@gmail.com', '123456', 'aaaaaa', '$2y$10$NgKe0I/PiWOs6zW/FWkmOet5HgxszFWLztEV6cm7//MyV5hsWRTae', NULL, 1, '0000-00-00', '', '', '', '0000-00-00', NULL, '117582019971164567624'),
(17, 'LINK CAFE', 'cafelink.org@gmail.com', NULL, NULL, '$2y$10$UW9yhu2EvKHUqI2irxDfXOlPQ3CE9fzh.cG5ESlk7yAG1NLPDaYoS', NULL, 1, '0000-00-00', '', '', '', '0000-00-00', NULL, '109658235750854545694'),
(18, 'Ngô Quang Hưng ', 'quanghungda1@gmail.com', '0983966661', 'Đông Anh, Hà Nội', '$2y$10$51YINTuGFaal08YYROJAWODWWavEWmcGUKanPRKSt/gQJDF7/x7iy', NULL, 1, '0000-00-00', '', '', '', '0000-00-00', NULL, '103136659353340244136'),
(19, 'Diệp Chi', 'bennhautrondoi65@gmail.com', NULL, NULL, '$2y$10$NK.GVlnsztBajruUSs0RIOMexgI2ITgMEIIoxna24xXfsR1PJVJjq', NULL, 1, '0000-00-00', '', '', '', '0000-00-00', '1111510385884039', NULL),
(20, 'abc', 'abc@gmail.com', '0983966661', NULL, '$2y$10$sAAPZ1pyoXKhnrJbqhSwRuHkRis4hDpM.xdOHC43RC7CJpkQMWfui', NULL, 1, '2020-05-19', '$2y$10$2i01Go1olNiuG1yoHR2zZumDFi2MRXagNx4DRPAFOi90V.JIoBw6C', '', '', '1985-12-05', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `tgtmp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xay_dung_may_tinh`
--

CREATE TABLE `xay_dung_may_tinh` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `xay_dung_may_tinh`
--

INSERT INTO `xay_dung_may_tinh` (`id`, `name`) VALUES
(1, 'Bo mạch chủ'),
(2, 'Bộ vi xử lý'),
(3, 'RAM'),
(4, 'HDD'),
(5, 'SSD'),
(6, 'VGA'),
(7, 'Nguồn'),
(8, 'DVD'),
(9, 'Vỏ Case'),
(10, 'Monitor'),
(11, 'Bàn phím'),
(12, 'Chuột'),
(13, 'Loa');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Chỉ mục cho bảng `bao_hanh`
--
ALTER TABLE `bao_hanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Chỉ mục cho bảng `code_sale`
--
ALTER TABLE `code_sale`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Chỉ mục cho bảng `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Chỉ mục cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Chỉ mục cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Chỉ mục cho bảng `mua_tra_gop`
--
ALTER TABLE `mua_tra_gop`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `newstag`
--
ALTER TABLE `newstag`
  ADD PRIMARY KEY (`newstag_id`);

--
-- Chỉ mục cho bảng `newstag_languages`
--
ALTER TABLE `newstag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `nhan_tin`
--
ALTER TABLE `nhan_tin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Chỉ mục cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Chỉ mục cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Chỉ mục cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Chỉ mục cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Chỉ mục cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Chỉ mục cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Chỉ mục cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Chỉ mục cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `producttag`
--
ALTER TABLE `producttag`
  ADD PRIMARY KEY (`producttag_id`);

--
-- Chỉ mục cho bảng `producttag_languages`
--
ALTER TABLE `producttag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Chỉ mục cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Chỉ mục cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Chỉ mục cho bảng `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicetag`
--
ALTER TABLE `servicetag`
  ADD PRIMARY KEY (`servicetag_id`);

--
-- Chỉ mục cho bảng `servicetag_languages`
--
ALTER TABLE `servicetag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `thuoc_tinh`
--
ALTER TABLE `thuoc_tinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thuoc_tinh_value`
--
ALTER TABLE `thuoc_tinh_value`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `xay_dung_may_tinh`
--
ALTER TABLE `xay_dung_may_tinh`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `bao_hanh`
--
ALTER TABLE `bao_hanh`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `code_sale`
--
ALTER TABLE `code_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=455;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `mua_tra_gop`
--
ALTER TABLE `mua_tra_gop`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `newstag`
--
ALTER TABLE `newstag`
  MODIFY `newstag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `newstag_languages`
--
ALTER TABLE `newstag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `nhan_tin`
--
ALTER TABLE `nhan_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2199;

--
-- AUTO_INCREMENT cho bảng `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=552;

--
-- AUTO_INCREMENT cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1089;

--
-- AUTO_INCREMENT cho bảng `producttag`
--
ALTER TABLE `producttag`
  MODIFY `producttag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `producttag_languages`
--
ALTER TABLE `producttag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4388;

--
-- AUTO_INCREMENT cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `servicetag`
--
ALTER TABLE `servicetag`
  MODIFY `servicetag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `servicetag_languages`
--
ALTER TABLE `servicetag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thuoc_tinh`
--
ALTER TABLE `thuoc_tinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `thuoc_tinh_value`
--
ALTER TABLE `thuoc_tinh_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `xay_dung_may_tinh`
--
ALTER TABLE `xay_dung_may_tinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
