-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 18, 2023 lúc 07:00 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `kt2d`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietthucan`
--

CREATE TABLE `chitietthucan` (
  `MACT` int(11) NOT NULL,
  `MATHUCAN` int(11) DEFAULT NULL,
  `MAHOADON` int(11) DEFAULT NULL,
  `SOLUONG` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietthucan`
--

INSERT INTO `chitietthucan` (`MACT`, `MATHUCAN`, `MAHOADON`, `SOLUONG`) VALUES
(52, 1, 92, 1),
(53, 2, 93, 3),
(54, 2, 94, 1),
(55, 2, 98, 2),
(56, 3, 100, 1),
(57, 2, 100, 2),
(58, 1, 101, 1),
(59, 1, 102, 3),
(60, 2, 103, 1),
(61, 2, 104, 1),
(62, 1, 104, 1),
(63, 1, 106, 1),
(64, 2, 106, 3),
(65, 1, 107, 1),
(66, 2, 107, 2),
(67, 1, 108, 2),
(68, 2, 108, 3),
(69, 1, 110, 1),
(70, 2, 111, 2),
(71, 2, 112, 3),
(72, 1, 112, 1),
(73, 2, 113, 1),
(74, 1, 113, 1),
(75, 3, 114, 1),
(76, 2, 115, 3),
(77, 2, 117, 2),
(78, 2, 120, 1),
(79, 2, 121, 2),
(80, 1, 122, 1),
(81, 2, 122, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietve`
--

CREATE TABLE `chitietve` (
  `MACT` int(11) NOT NULL,
  `idVe` int(11) DEFAULT NULL,
  `MAHOADON` int(11) DEFAULT NULL,
  `GiaVe` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietve`
--

INSERT INTO `chitietve` (`MACT`, `idVe`, `MAHOADON`, `GiaVe`) VALUES
(145, 177, 92, 55000),
(146, 178, 93, 55000),
(147, 179, 93, 55000),
(148, 180, 94, 75000),
(149, 181, 94, 75000),
(150, 182, 95, 75000),
(151, 183, 95, 75000),
(152, 184, 96, 75000),
(153, 185, 97, 50000),
(154, 186, 97, 50000),
(155, 187, 98, 50000),
(156, 188, 98, 50000),
(157, 189, 99, 50000),
(158, 190, 99, 50000),
(159, 191, 100, 50000),
(160, 192, 100, 50000),
(161, 193, 101, 50000),
(162, 194, 102, 78000),
(163, 195, 102, 78000),
(164, 196, 102, 78000),
(165, 197, 103, 78000),
(166, 198, 104, 50000),
(167, 199, 104, 50000),
(168, 200, 105, 50000),
(169, 201, 106, 50000),
(170, 202, 106, 50000),
(171, 203, 106, 50000),
(172, 204, 107, 79000),
(173, 205, 107, 79000),
(174, 206, 108, 79000),
(175, 207, 108, 79000),
(176, 208, 108, 79000),
(177, 209, 109, 79000),
(178, 210, 109, 79000),
(179, 211, 110, 79000),
(180, 212, 110, 79000),
(181, 213, 111, 79000),
(182, 214, 111, 79000),
(183, 215, 112, 79000),
(184, 216, 112, 79000),
(185, 217, 112, 79000),
(186, 218, 113, 79000),
(187, 219, 113, 79000),
(188, 220, 114, 50000),
(189, 221, 115, 50000),
(190, 222, 115, 50000),
(191, 223, 115, 50000),
(192, 224, 116, 75000),
(193, 225, 116, 75000),
(194, 226, 117, 78000),
(195, 227, 117, 78000),
(196, 228, 118, 50000),
(197, 229, 118, 50000),
(198, 230, 119, 50000),
(199, 231, 119, 50000),
(200, 232, 119, 50000),
(201, 233, 120, 79000),
(202, 234, 121, 75000),
(203, 235, 121, 75000),
(204, 236, 122, 50000),
(205, 237, 122, 50000),
(206, 238, 122, 50000),
(207, 239, 123, 78000),
(208, 240, 123, 78000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucvu`
--

CREATE TABLE `chucvu` (
  `idCV` int(11) NOT NULL,
  `TenChucVu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chucvu`
--

INSERT INTO `chucvu` (`idCV`, `TenChucVu`) VALUES
(1, 'Nhân Viên'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dienvien`
--

CREATE TABLE `dienvien` (
  `MADV` int(11) NOT NULL,
  `TENDV` varchar(50) DEFAULT NULL,
  `MOTA` varchar(200) DEFAULT NULL,
  `idPhim` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MAHOADON` int(11) NOT NULL,
  `TONGTIEN` float DEFAULT NULL,
  `MAKHACHHANG` int(11) DEFAULT NULL,
  `MANHANVIEN` int(11) DEFAULT NULL,
  `GHICHU` varchar(50) DEFAULT NULL,
  `TONGSL` int(11) DEFAULT NULL,
  `NGAYTAO` datetime DEFAULT NULL,
  `TinhTrang` bit(1) DEFAULT NULL,
  `TRANGTHAI` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MAHOADON`, `TONGTIEN`, `MAKHACHHANG`, `MANHANVIEN`, `GHICHU`, `TONGSL`, `NGAYTAO`, `TinhTrang`, `TRANGTHAI`) VALUES
(92, 90000, 7, NULL, NULL, 2, '2023-12-18 09:26:20', b'0', b'1'),
(93, 155000, NULL, 7, '', 5, '2023-12-18 09:27:53', b'1', b'1'),
(94, 165000, NULL, 7, '', 3, '2023-12-18 16:26:44', b'1', b'1'),
(95, 150000, NULL, 7, '', 2, '2023-12-18 16:27:42', b'1', b'1'),
(96, 75000, NULL, 7, '', 1, '2023-12-18 16:28:09', b'1', b'1'),
(97, 100000, NULL, 7, '', 2, '2023-12-18 16:28:34', b'1', b'1'),
(98, 130000, NULL, 7, '', 4, '2023-12-18 16:29:21', b'1', b'1'),
(99, 100000, NULL, 7, '', 2, '2023-12-18 16:29:53', b'1', b'1'),
(100, 165000, NULL, 7, '', 5, '2023-12-18 16:30:38', b'1', b'1'),
(101, 85000, NULL, 7, '', 2, '2023-12-18 16:31:00', b'1', b'1'),
(102, 339000, NULL, 7, '', 6, '2023-12-18 16:31:32', b'1', b'1'),
(103, 93000, NULL, 7, '', 2, '2023-12-18 16:32:24', b'1', b'1'),
(104, 150000, NULL, 12, '', 4, '2023-12-18 16:34:43', b'1', b'1'),
(105, 50000, NULL, 12, '', 1, '2023-12-18 16:35:36', b'1', b'1'),
(106, 230000, NULL, 12, '', 7, '2023-12-18 16:36:08', b'1', b'1'),
(107, 223000, NULL, 13, '', 5, '2023-12-18 16:37:26', b'1', b'1'),
(108, 352000, NULL, 13, '', 8, '2023-12-18 16:37:55', b'1', b'1'),
(109, 158000, NULL, 13, '', 2, '2023-12-18 16:53:34', b'1', b'1'),
(110, 193000, NULL, 13, '', 3, '2023-12-18 16:53:58', b'1', b'1'),
(111, 188000, 1, NULL, NULL, 4, '2023-12-18 16:57:11', b'0', b'1'),
(112, 317000, 1, NULL, NULL, 7, '2023-12-18 16:58:41', b'0', b'1'),
(113, 208000, 8, NULL, NULL, 4, '2023-12-18 17:06:51', b'0', b'1'),
(114, 85000, 8, NULL, NULL, 2, '2023-12-18 17:10:57', b'0', b'1'),
(115, 195000, 9, NULL, NULL, 6, '2023-12-18 17:13:15', b'0', b'1'),
(116, 150000, 9, NULL, NULL, 2, '2023-12-18 17:13:56', b'0', b'0'),
(117, 186000, 10, NULL, NULL, 4, '2023-12-18 17:20:01', b'0', b'1'),
(118, 100000, 10, NULL, NULL, 2, '2023-12-18 17:21:06', b'0', b'1'),
(119, 150000, 11, NULL, NULL, 3, '2023-12-18 17:22:23', b'0', b'1'),
(120, 94000, 11, NULL, NULL, 2, '2023-12-18 17:24:28', b'0', b'1'),
(121, 180000, 11, NULL, NULL, 4, '2023-12-18 17:25:41', b'0', b'1'),
(122, 230000, 12, NULL, NULL, 7, '2023-12-18 17:28:15', b'0', b'0'),
(123, 156000, 12, NULL, NULL, 2, '2023-12-18 17:29:20', b'0', b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `idKH` int(11) NOT NULL,
  `HoTen` varchar(100) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DiaChi` varchar(100) DEFAULT NULL,
  `SDT` varchar(100) DEFAULT NULL,
  `idTK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`idKH`, `HoTen`, `Email`, `NgaySinh`, `DiaChi`, `SDT`, `idTK`) VALUES
(1, 'Đỗ Tuấn Kha', 'dotuankha21092002@gmail.com', '2023-12-06', 'TPHCM', '0933834187', 2),
(4, 'Võ Nguyễn Duy Lịnh', 'info@artisq.com', '2023-11-26', 'Cà Mau', '0374043087', 10),
(5, 'Trần Phan Mỹ Phượng', 'phuong@gmail.com', '2002-02-07', 'Tiền Giang', '0933834189', 13),
(6, 'Trương Vi', 'vi@gmail.com', '2007-12-10', 'Cà Mau', '0933834179', 14),
(7, 'Lê Phúc', 'phucken@gmail.com', '2003-12-22', 'Long An', '0933834185', 15),
(8, 'Phạm Thanh Tuấn', 'tp@gmail.com', NULL, NULL, '0869730602', 17),
(9, 'Nguyễn Thanh Hà', 'ha@gmail.com', NULL, NULL, '0123456789', 18),
(10, 'Trần Cẩm Tiên', 'tien@gmail.com', NULL, NULL, '0231456486', 19),
(11, 'Trần Ngọc Hoa', 'hoa@gmail.com', NULL, NULL, '0321564892', 20),
(12, 'Ngọc Lan', 'lan@gmail.com', NULL, NULL, '05461287926', 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichchieu`
--

CREATE TABLE `lichchieu` (
  `idLichChieu` int(11) NOT NULL,
  `ThoiGianChieu` datetime NOT NULL,
  `ThoiGianKetThuc` datetime NOT NULL,
  `idPhong` int(11) NOT NULL,
  `idPhim` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lichchieu`
--

INSERT INTO `lichchieu` (`idLichChieu`, `ThoiGianChieu`, `ThoiGianKetThuc`, `idPhong`, `idPhim`) VALUES
(28, '2023-12-18 14:00:00', '2023-12-18 16:10:00', 2, 15),
(29, '2023-12-18 14:00:00', '2023-12-18 16:10:00', 3, 15),
(30, '2023-12-18 00:00:00', '2023-12-18 03:00:00', 7, 20),
(31, '2023-12-18 00:00:00', '2023-12-18 03:00:00', 8, 20),
(32, '2023-12-18 11:00:00', '2023-12-18 13:10:00', 2, 15),
(33, '2023-12-18 11:00:00', '2023-12-18 13:10:00', 6, 15),
(34, '2023-12-19 08:00:00', '2023-12-19 10:10:00', 2, 15),
(35, '2023-12-19 08:00:00', '2023-12-19 10:10:00', 3, 15),
(36, '2023-12-19 08:00:00', '2023-12-19 10:10:00', 6, 15),
(37, '2023-12-19 11:00:00', '2023-12-19 15:00:00', 2, 16),
(38, '2023-12-19 11:00:00', '2023-12-19 15:00:00', 3, 16),
(39, '2023-12-19 11:00:00', '2023-12-19 15:00:00', 6, 16),
(40, '2023-12-18 08:00:00', '2023-12-18 12:00:00', 3, 16),
(41, '2023-12-19 00:00:00', '2023-12-19 02:30:00', 2, 17),
(42, '2023-12-20 09:45:00', '2023-12-20 12:15:00', 2, 17),
(43, '2023-12-20 09:45:00', '2023-12-20 12:15:00', 3, 17),
(44, '2023-12-20 09:45:00', '2023-12-20 12:15:00', 6, 17),
(45, '2023-12-25 08:00:00', '2023-12-25 12:10:00', 2, 18),
(46, '2023-12-25 08:00:00', '2023-12-25 12:10:00', 3, 18),
(47, '2023-12-25 08:00:00', '2023-12-25 12:10:00', 6, 18),
(48, '2023-12-23 20:00:00', '2023-12-24 00:10:00', 2, 18),
(49, '2023-12-23 20:00:00', '2023-12-24 00:10:00', 6, 18),
(50, '2023-12-30 10:00:00', '2023-12-30 12:22:00', 3, 19),
(51, '2023-12-30 10:00:00', '2023-12-30 12:22:00', 2, 19),
(52, '2023-12-22 11:45:00', '2023-12-22 14:07:00', 6, 19),
(53, '2023-12-21 11:00:00', '2023-12-21 14:00:00', 7, 20),
(54, '2023-12-18 23:15:00', '2023-12-19 02:15:00', 7, 20),
(55, '2023-12-18 23:15:00', '2023-12-19 02:15:00', 8, 20),
(56, '2023-12-20 23:00:00', '2023-12-21 01:22:00', 2, 19),
(57, '2023-12-20 23:00:00', '2023-12-21 01:22:00', 6, 19),
(58, '2023-12-21 00:00:00', '2023-12-21 02:22:00', 3, 19),
(59, '2023-12-20 00:00:00', '2023-12-20 04:00:00', 2, 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaimanhinh`
--

CREATE TABLE `loaimanhinh` (
  `idMH` int(11) NOT NULL,
  `TenMH` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaimanhinh`
--

INSERT INTO `loaimanhinh` (`idMH`, `TenMH`) VALUES
(1, '3D'),
(2, '5D'),
(3, '2D'),
(4, 'Màn Thường'),
(5, '4D');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `idNhanVien` int(11) NOT NULL,
  `HoTen` varchar(50) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `SDT` varchar(10) DEFAULT NULL,
  `DiaChi` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `idChucVu` int(11) DEFAULT NULL,
  `GioiTinh` varchar(3) DEFAULT NULL,
  `idTK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`idNhanVien`, `HoTen`, `NgaySinh`, `SDT`, `DiaChi`, `Email`, `idChucVu`, `GioiTinh`, `idTK`) VALUES
(7, 'Đỗ Tuấn Kha', '2023-12-06', '0374043087', 'Long An', 'dotuankha21092002@gmail.com', 2, 'Nam', 3),
(12, 'Trần Đức Long', '2002-02-12', '0374043088', 'Tiền Giang', 'kh@gmail.com', 1, 'Nam', 12),
(13, 'Trần Quang Hậu', '2002-12-09', '0374043091', 'Đồng Nai', 'hautran@gmail.com', 1, 'Nam', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

CREATE TABLE `phim` (
  `idPhim` int(11) NOT NULL,
  `TenPhim` varchar(100) NOT NULL,
  `MoTa` varchar(1000) DEFAULT NULL,
  `ThoiLuong` float NOT NULL,
  `NgayKhoiChieu` date NOT NULL,
  `HangSanXuat` varchar(50) NOT NULL,
  `DaoDien` varchar(100) DEFAULT NULL,
  `NamSX` int(11) NOT NULL,
  `ApPhich` varchar(100) DEFAULT NULL,
  `Trailerr` varchar(100) DEFAULT NULL,
  `idTheLoai` int(11) DEFAULT NULL,
  `idMH` int(11) NOT NULL,
  `DonGia` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phim`
--

INSERT INTO `phim` (`idPhim`, `TenPhim`, `MoTa`, `ThoiLuong`, `NgayKhoiChieu`, `HangSanXuat`, `DaoDien`, `NamSX`, `ApPhich`, `Trailerr`, `idTheLoai`, `idMH`, `DonGia`) VALUES
(15, 'Người Hùng Tia Chớp', 'Người Hùng Tia Chớp Phần 8 Mùa thứ tám của loạt phim truyền hình siêu anh hùng Mỹ The Flash , dựa trên nhân vật Barry Allen / Flash của DC Comics , được công chiếu lần đầu trên The CW vào ngày 16 tháng 11 năm 2021. Phim lấy bối cảnh ở Arrowverse , chia sẻ tính liên tục với phần còn lại loạt phim truyền hình về vũ trụ, và là phần phụ của Arrow . Phần này được sản xuất bởi Berlanti Productions , Warner Bros. Television và DC Entertainment , với Eric Wallace làm người dẫn chương trình', 120, '2023-12-17', 'Việt Nam', 'Tuấn Kha', 2022, 'Tiadchop.jpg', 'https://www.youtube.com/watch?v=lzOauZi3tPA&pp=ygULWmFjayBTbnlkZXI%3D', 3, 1, 55000),
(16, 'Người Dơi', 'Người Dơi Trong năm thứ hai chiến đấu với tội phạm, Batman phát hiện ra tham nhũng ở thành phố Gotham , nơi kết nối với gia đình của chính anh ta trong khi đối mặt với một kẻ giết người hàng loạt được gọi là Riddler .', 230, '2023-12-20', 'TVT.org', 'Tuấn Kha', 2023, 'kisibongdem.jpg', 'https://www.youtube.com/watch?v=M0I-sRHKo7Y', 3, 1, 75000),
(17, 'Injustice', 'Injustice Trên một Trái đất thay thế, Joker lừa Superman giết Lois Lane, điều này gây ra một cơn thịnh nộ trong anh hùng. Superman quyết định nắm quyền kiểm soát Trái đất, Batman và các đồng minh của anh ta sẽ phải cố gắng ngăn chặn anh ta.', 140, '2023-12-20', 'TVT.org', 'Tuấn Kha', 2023, 'juccuyu.jpg', 'https://www.youtube.com/watch?v=M0I-sRHKo7Y', 4, 1, 50000),
(18, 'Liên Minh Công Lý: Phiên bản của Zack Snyder', 'Liên Minh Công Lý: Phiên bản của Zack Snyder Năm nghìn năm trước, Darkseid và đội quân Parademon của anh ta cố gắng chinh phục Trái đất bằng cách sử dụng ba Hộp Mẹ . Họ bị đánh bại bởi một liên minh của Các vị thần già , Amazons , người Atlantis , con người và Green Lantern , để lại những Hộp Mẹ, được giấu riêng biệt. Hiện tại, cái chết của Superman [b] đã kích hoạt lại Boxes, thu hút Steppenwolf , trung úy thất sủng của Darkseid. Steppenwolf đặt mục tiêu giành lại sự ưu ái của Darkseid bằng cách thu thập các hộp để tạo thành \"The Unity\", biến Trái đất thành một bản sao của Apokolips, quê hương của họ.', 240, '2023-12-29', 'xipo', 'Trung Tài', 2019, 'LienMinhCL2021.jpg', 'https://www.youtube.com/watch?v=lzOauZi3tPA&pp=ygULWmFjayBTbnlkZXI%3D', 3, 1, 78000),
(19, 'Suicide Squad: Biệt Đội Cảm Tử 2', 'Suicide Squad: Biệt Đội Cảm Tử 2 Theo lệnh của sĩ quan tình báo Amanda Waller , mười ba tù nhân từ trại giam Belle Reve — cựu bác sĩ tâm thần Harley Quinn ; Nanaue lai ăn thịt người ; Thuyền trưởng tên trộm người Úc Boomerang ; sát thủ Bloodsport ; Nhà tạo hòa bình cực đoan bạo lực ; metahumans TDK . và Polka-Dot Man ; hacker máy tính Savant ; lính đánh thuê Blackguard ; cựu vận động viên Olympic Javelin ; chiến binh ngoài hành tinh Mongal ; tên cướp điều khiển chuột Ratcher 2 ; và Chồn hình người ăn thịt đồng loại—Đ', 132, '2023-12-29', 'dailoan', 'Trần Khải', 2023, 'bietDoiCamTu.jpg', 'https://www.youtube.com/watch?v=M0I-sRHKo7Y', 4, 1, 50000),
(20, 'Siêu Anh Hùng Phá Hoại', 'Siêu Anh Hùng Phá Hoại (Phần 2) Siêu Anh Hùng Phá Hoại (Phần 2) 1 Trong khi các quan chức Hoa Kỳ thảo luận về những siêu nhân phục vụ với Giám đốc điều hành của Vought Stan Edgar, Noir giết Naqib ở Trung Đông và Homelander chủ trì đám tang của Translucent. Giờ đây, những kẻ đào tẩu bị truy nã với Butcher bị buộc tội giết Stillwell, Hughie ẩn náu dưới một Cửa hàng cầm đồ cùng với Milk, Frenchie và Kimiko trong khi Butcher mất tích. Họ biết rằng một tên khủng bố siêu mạnh v', 170, '2023-12-18', 'Eric Kripke', 'Eric Kripke', 2023, 'sieuanhPhahoa.jpg', 'https://www.youtube.com/watch?v=lzOauZi3tPA&pp=ygULWmFjayBTbnlkZXI%3D', 4, 5, 79000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phongchieu`
--

CREATE TABLE `phongchieu` (
  `idPhongChieu` int(11) NOT NULL,
  `TenPhong` varchar(100) NOT NULL,
  `idManHinh` int(11) DEFAULT NULL,
  `SoChoNgoi` int(11) NOT NULL,
  `idTinhTrang` int(11) DEFAULT NULL,
  `SoHangGhe` int(11) NOT NULL,
  `SoGheMotHang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phongchieu`
--

INSERT INTO `phongchieu` (`idPhongChieu`, `TenPhong`, `idManHinh`, `SoChoNgoi`, `idTinhTrang`, `SoHangGhe`, `SoGheMotHang`) VALUES
(2, 'PC001', 1, 25, 1, 5, 5),
(3, 'PC002', 1, 25, 1, 5, 5),
(5, 'PC003', 3, 4, 1, 2, 2),
(6, 'PC005', 1, 36, 1, 6, 6),
(7, 'PC007', 5, 25, 1, 5, 5),
(8, 'PC009', 5, 30, 1, 5, 6),
(9, 'PC010', 4, 30, 1, 5, 6),
(10, 'PC006', 3, 150, 1, 30, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `TenDangNhap` varchar(50) DEFAULT NULL,
  `MatKhau` varchar(100) DEFAULT NULL,
  `TinhTrang` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `TenDangNhap`, `MatKhau`, `TinhTrang`) VALUES
(2, 'dotuankha', '$2y$10$R4lkibBjTvyqHCrXSt8gLeh.MkKO6AXLPApTZ/Fgh4sDvMwUX3L8i', b'0'),
(3, 'dotuankhang', '$2y$10$xrTa4/iI.ioWvl.djpKiJ.wXpssXVqog4bkTjRwcFDn7A0zdgYUHm', b'0'),
(10, 'chauchoquamon', '$2y$10$8wMxN1St9QBaBl3jZTtafOwl.VF2Jv0zKIWuxWSm5V/XrE0tfP/p6', b'0'),
(12, 'tranduclong', '$2y$10$2gzfZHrzfQvuMNuZFjXS7eM5GbkhqHjRY8b1Wn2cjeZS7AVgBxaOm', b'0'),
(13, 'tranphuong', '$2y$10$pVNHJbg3ngwVkCvIWXN3tOi0BDga9teLTexPZUfL7OP2.H/rOiZwW', b'0'),
(14, 'truongvi', '$2y$10$OY67eZPfrlEBN6JV9Cisyu73HmkgiBTAM65ba4J34I7QPPf2xc4ja', b'0'),
(15, 'lephuc', '$2y$10$hgFHwYdcrj5qFxHcLW069upSPhbam5JOgipQPjUa/hMoVTbhbGO9G', b'0'),
(16, 'tranquanghau', '$2y$10$tIOAjRWpz28qBM8GMG8lh.dm/Nb/l37ZSfgTBfsM0ESGTINnTW3Di', b'0'),
(17, 'tuan', '$2y$10$.XQmfR7huMDphHyma.Nd7uQ1cOaH5kJlSst1NQ8z/IO9MP7b.vudi', b'0'),
(18, 'ha', '$2y$10$XsRuTjmVYSaUShLqJQkEfOvVYmkE1cZjb67CyfTk8DFevR32fwrNy', b'0'),
(19, 'tien', '$2y$10$uESzQobJZliQWMxdKNtg1.K8jiokpsQ9AAyvVPUKEZVax6r5t6XT2', b'0'),
(20, 'hoa', '$2y$10$a.kDQRZgRw3RAMKk5Rxbl..4gtUSyZlAr8C6q9XJWS4BSxiQ3gSAK', b'0'),
(21, 'lan', '$2y$10$9VMrEmPfiUmMOzU35/n6KORMMNSTcz8HzAVBwzr2cBODgPxix.aYC', b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `idTheLoai` int(11) NOT NULL,
  `TenTheLoai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`idTheLoai`, `TenTheLoai`) VALUES
(3, 'Siêu Anh Hùng'),
(4, 'Hành Động'),
(5, 'Tu Tiên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thucan`
--

CREATE TABLE `thucan` (
  `MATHUCAN` int(11) NOT NULL,
  `TENTHUCAN` varchar(50) DEFAULT NULL,
  `DONGIA` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thucan`
--

INSERT INTO `thucan` (`MATHUCAN`, `TENTHUCAN`, `DONGIA`) VALUES
(1, 'Bắp Rang Bơ', 35000),
(2, 'CoCa', 15000),
(3, 'Mỳ Thanh Long', 35000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhtrang`
--

CREATE TABLE `tinhtrang` (
  `idTinhTrangPhongChieu` int(11) NOT NULL,
  `TinhTrang` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tinhtrang`
--

INSERT INTO `tinhtrang` (`idTinhTrangPhongChieu`, `TinhTrang`) VALUES
(1, 'Bình Thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ve`
--

CREATE TABLE `ve` (
  `idVe` int(11) NOT NULL,
  `idLichChieu` int(11) DEFAULT NULL,
  `MaGheNgoi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ve`
--

INSERT INTO `ve` (`idVe`, `idLichChieu`, `MaGheNgoi`) VALUES
(177, 28, 'P2V0'),
(178, 28, 'P2V1'),
(179, 28, 'P2V2'),
(180, 38, 'P3V20'),
(181, 38, 'P3V21'),
(182, 37, 'P2V11'),
(183, 37, 'P2V12'),
(184, 39, 'P6V35'),
(185, 42, 'P2V12'),
(186, 42, 'P2V11'),
(187, 43, 'P3V22'),
(188, 43, 'P3V23'),
(189, 41, 'P2V23'),
(190, 41, 'P2V24'),
(191, 44, 'P6V14'),
(192, 44, 'P6V15'),
(193, 44, 'P6V21'),
(194, 48, 'P2V22'),
(195, 48, 'P2V21'),
(196, 48, 'P2V23'),
(197, 48, 'P2V7'),
(198, 56, 'P2V21'),
(199, 56, 'P2V22'),
(200, 56, 'P2V18'),
(201, 58, 'P3V17'),
(202, 58, 'P3V16'),
(203, 58, 'P3V18'),
(204, 30, 'P7V22'),
(205, 30, 'P7V23'),
(206, 30, 'P7V12'),
(207, 30, 'P7V13'),
(208, 30, 'P7V14'),
(209, 31, 'P8V16'),
(210, 31, 'P8V15'),
(211, 31, 'P8V21'),
(212, 31, 'P8V20'),
(213, 31, 'P8V28'),
(214, 31, 'P8V27'),
(215, 53, 'P7V18'),
(216, 53, 'P7V17'),
(217, 53, 'P7V16'),
(218, 53, 'P7V23'),
(219, 53, 'P7V22'),
(220, 42, 'P2V22'),
(221, 41, 'P2V12'),
(222, 41, 'P2V11'),
(223, 41, 'P2V13'),
(224, 39, 'P6V33'),
(225, 39, 'P6V32'),
(226, 48, 'P2V12'),
(227, 48, 'P2V13'),
(228, 57, 'P6V23'),
(229, 57, 'P6V22'),
(230, 57, 'P6V28'),
(231, 57, 'P6V27'),
(232, 57, 'P6V26'),
(233, 53, 'P7V13'),
(234, 59, 'P2V18'),
(235, 59, 'P2V17'),
(236, 43, 'P3V18'),
(237, 43, 'P3V17'),
(238, 43, 'P3V16'),
(239, 49, 'P6V21'),
(240, 49, 'P6V22');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietthucan`
--
ALTER TABLE `chitietthucan`
  ADD PRIMARY KEY (`MACT`),
  ADD KEY `MATHUCAN` (`MATHUCAN`),
  ADD KEY `MAHOADON` (`MAHOADON`);

--
-- Chỉ mục cho bảng `chitietve`
--
ALTER TABLE `chitietve`
  ADD PRIMARY KEY (`MACT`),
  ADD KEY `idVe` (`idVe`),
  ADD KEY `MAHOADON` (`MAHOADON`);

--
-- Chỉ mục cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`idCV`);

--
-- Chỉ mục cho bảng `dienvien`
--
ALTER TABLE `dienvien`
  ADD PRIMARY KEY (`MADV`),
  ADD KEY `idPhim` (`idPhim`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MAHOADON`),
  ADD KEY `MAKHACHHANG` (`MAKHACHHANG`),
  ADD KEY `MANHANVIEN` (`MANHANVIEN`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`idKH`),
  ADD KEY `idTK` (`idTK`);

--
-- Chỉ mục cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  ADD PRIMARY KEY (`idLichChieu`),
  ADD KEY `idPhong` (`idPhong`),
  ADD KEY `idPhim` (`idPhim`);

--
-- Chỉ mục cho bảng `loaimanhinh`
--
ALTER TABLE `loaimanhinh`
  ADD PRIMARY KEY (`idMH`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`idNhanVien`),
  ADD KEY `idChucVu` (`idChucVu`),
  ADD KEY `idTK` (`idTK`);

--
-- Chỉ mục cho bảng `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`idPhim`),
  ADD KEY `idMH` (`idMH`),
  ADD KEY `idTheLoai` (`idTheLoai`);

--
-- Chỉ mục cho bảng `phongchieu`
--
ALTER TABLE `phongchieu`
  ADD PRIMARY KEY (`idPhongChieu`),
  ADD KEY `idManHinh` (`idManHinh`),
  ADD KEY `idTinhTrang` (`idTinhTrang`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`idTheLoai`);

--
-- Chỉ mục cho bảng `thucan`
--
ALTER TABLE `thucan`
  ADD PRIMARY KEY (`MATHUCAN`);

--
-- Chỉ mục cho bảng `tinhtrang`
--
ALTER TABLE `tinhtrang`
  ADD PRIMARY KEY (`idTinhTrangPhongChieu`);

--
-- Chỉ mục cho bảng `ve`
--
ALTER TABLE `ve`
  ADD PRIMARY KEY (`idVe`),
  ADD KEY `idLichChieu` (`idLichChieu`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietthucan`
--
ALTER TABLE `chitietthucan`
  MODIFY `MACT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `chitietve`
--
ALTER TABLE `chitietve`
  MODIFY `MACT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  MODIFY `idCV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `dienvien`
--
ALTER TABLE `dienvien`
  MODIFY `MADV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MAHOADON` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `idKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  MODIFY `idLichChieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `loaimanhinh`
--
ALTER TABLE `loaimanhinh`
  MODIFY `idMH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `idNhanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `phim`
--
ALTER TABLE `phim`
  MODIFY `idPhim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `phongchieu`
--
ALTER TABLE `phongchieu`
  MODIFY `idPhongChieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `idTheLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `thucan`
--
ALTER TABLE `thucan`
  MODIFY `MATHUCAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tinhtrang`
--
ALTER TABLE `tinhtrang`
  MODIFY `idTinhTrangPhongChieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `ve`
--
ALTER TABLE `ve`
  MODIFY `idVe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietthucan`
--
ALTER TABLE `chitietthucan`
  ADD CONSTRAINT `chitietthucan_ibfk_1` FOREIGN KEY (`MATHUCAN`) REFERENCES `thucan` (`MATHUCAN`),
  ADD CONSTRAINT `chitietthucan_ibfk_2` FOREIGN KEY (`MAHOADON`) REFERENCES `hoadon` (`MAHOADON`);

--
-- Các ràng buộc cho bảng `chitietve`
--
ALTER TABLE `chitietve`
  ADD CONSTRAINT `chitietve_ibfk_1` FOREIGN KEY (`idVe`) REFERENCES `ve` (`idVe`),
  ADD CONSTRAINT `chitietve_ibfk_2` FOREIGN KEY (`MAHOADON`) REFERENCES `hoadon` (`MAHOADON`);

--
-- Các ràng buộc cho bảng `dienvien`
--
ALTER TABLE `dienvien`
  ADD CONSTRAINT `dienvien_ibfk_1` FOREIGN KEY (`idPhim`) REFERENCES `phim` (`idPhim`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MAKHACHHANG`) REFERENCES `khachhang` (`idKH`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MANHANVIEN`) REFERENCES `nhanvien` (`idNhanVien`);

--
-- Các ràng buộc cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`idTK`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  ADD CONSTRAINT `lichchieu_ibfk_1` FOREIGN KEY (`idPhong`) REFERENCES `phongchieu` (`idPhongChieu`),
  ADD CONSTRAINT `lichchieu_ibfk_2` FOREIGN KEY (`idPhim`) REFERENCES `phim` (`idPhim`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`idChucVu`) REFERENCES `chucvu` (`idCV`),
  ADD CONSTRAINT `nhanvien_ibfk_2` FOREIGN KEY (`idTK`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `phim`
--
ALTER TABLE `phim`
  ADD CONSTRAINT `phim_ibfk_1` FOREIGN KEY (`idMH`) REFERENCES `loaimanhinh` (`idMH`),
  ADD CONSTRAINT `phim_ibfk_2` FOREIGN KEY (`idTheLoai`) REFERENCES `theloai` (`idTheLoai`);

--
-- Các ràng buộc cho bảng `phongchieu`
--
ALTER TABLE `phongchieu`
  ADD CONSTRAINT `phongchieu_ibfk_1` FOREIGN KEY (`idManHinh`) REFERENCES `loaimanhinh` (`idMH`),
  ADD CONSTRAINT `phongchieu_ibfk_2` FOREIGN KEY (`idTinhTrang`) REFERENCES `tinhtrang` (`idTinhTrangPhongChieu`);

--
-- Các ràng buộc cho bảng `ve`
--
ALTER TABLE `ve`
  ADD CONSTRAINT `ve_ibfk_1` FOREIGN KEY (`idLichChieu`) REFERENCES `lichchieu` (`idLichChieu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
