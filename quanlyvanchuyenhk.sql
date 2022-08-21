-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 28, 2022 lúc 05:56 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlyvanchuyenhk`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(2, 'hieu', '1234567');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banglaixe`
--

CREATE TABLE `banglaixe` (
  `banglai_id` int(11) NOT NULL,
  `loaibanglai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `banglaixe`
--

INSERT INTO `banglaixe` (`banglai_id`, `loaibanglai`) VALUES
(1, 'Hạng B1(Số tự động)'),
(2, 'Hạng B1'),
(3, 'Hạng B2'),
(4, 'Hạng C'),
(5, 'Hạng D'),
(6, 'Hạng E'),
(7, 'Hạng F');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `department` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `type` varchar(12) CHARACTER SET utf8mb4 NOT NULL,
  `req_date` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `req_time` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `ret_date` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `ret_time` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `destination` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `pickup_point` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `resons` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `mobile` int(14) NOT NULL,
  `confirmation` int(11) NOT NULL,
  `veh_reg` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `driverid` int(11) NOT NULL,
  `drname` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `finished` int(11) NOT NULL,
  `paid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `booking`
--

INSERT INTO `booking` (`booking_id`, `name`, `username`, `department`, `type`, `req_date`, `req_time`, `ret_date`, `ret_time`, `destination`, `pickup_point`, `resons`, `email`, `mobile`, `confirmation`, `veh_reg`, `driverid`, `drname`, `finished`, `paid`) VALUES
(69, 'nguyễn  thiện', 'thien', '', 'Xe du lịch', '07/19/2022', '8 : 56 AM', '', '', 'Trà Vinh - An Giang', '', '', 'thiennhd@gmail.com', 989274222, 0, '', 0, '', 0, 0),
(70, 'nguyễn  thiện', 'thien', '', 'Xe du lịch', '07/21/2022', '8 : 58 AM', '', '', 'Trà Vinh - TP.HCM', '', '', 'thiennhd@gmail.com', 989274222, 1, 'A4', 33, '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bookingyc`
--

CREATE TABLE `bookingyc` (
  `bookingyc_id` int(11) NOT NULL,
  `tenkhachhang` varchar(255) NOT NULL,
  `sodienthoai` varchar(11) NOT NULL,
  `ngaydatxe` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `kieuxe` varchar(100) NOT NULL,
  `soluong` int(12) NOT NULL,
  `tuyen` varchar(100) NOT NULL,
  `ngaydi` varchar(100) NOT NULL,
  `ngayve` varchar(100) NOT NULL,
  `noiden` varchar(100) NOT NULL,
  `taixe` varchar(100) NOT NULL,
  `sohieuxe` varchar(100) NOT NULL,
  `giavexe` varchar(100) NOT NULL,
  `hinhthuc` varchar(255) NOT NULL,
  `tongtien` int(14) NOT NULL,
  `xacnhan` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `tinhtrangxe` int(11) NOT NULL,
  `tienxang` int(12) NOT NULL,
  `tiendau` int(12) NOT NULL,
  `chiphikhac` int(12) NOT NULL,
  `ghichu` varchar(255) NOT NULL,
  `tongtienchiphi` int(12) NOT NULL,
  `tienloi` int(11) NOT NULL,
  `capnhat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bookingyc`
--

INSERT INTO `bookingyc` (`bookingyc_id`, `tenkhachhang`, `sodienthoai`, `ngaydatxe`, `kieuxe`, `soluong`, `tuyen`, `ngaydi`, `ngayve`, `noiden`, `taixe`, `sohieuxe`, `giavexe`, `hinhthuc`, `tongtien`, `xacnhan`, `trangthai`, `tinhtrangxe`, `tienxang`, `tiendau`, `chiphikhac`, `ghichu`, `tongtienchiphi`, `tienloi`, `capnhat`) VALUES
(62, 'Khang', '1234', '2022-07-23 07:05:07.819017', 'Xe 7 chỗ', 1, 'Trà Vinh - TP.HCM', '07/24/2022', '07/24/2022', '', '41', '41', '2000000', '', 2000000, 1, 1, 0, 1000000, 500000, 100000, 'Rửa xe', 1600000, 0, 0),
(63, 'Hiếu', '0383549957', '2022-07-23 07:32:18.000000', 'Xe 7 chỗ', 1, 'Trà Vinh - TP.HCM', '07/25/2022', '07/27/2022', '', '41', '41', '3000000', '', 3000000, 1, 1, 0, 1500000, 0, 0, '', 1500000, 0, 0),
(64, 'Kim Hiếu', '0383113807', '2022-07-23 18:29:46.000000', 'Xe 7 chỗ', 1, 'Trà Vinh - Cần Thơ', '07/25/2022', '07/26/2022', '', '32', '45', '3000000', '', 3000000, 1, 1, 0, 1000000, 0, 0, '', 1000000, 2000000, 1),
(65, 'Đạt', '0383549957', '2022-07-23 19:07:06.040296', 'Xe 7 chỗ', 0, '', '07/26/2022', '07/27/2022', '', '42', '46', '3500000', '', 0, 1, 1, 0, 1000000, 500000, 0, '', 1500000, 2000000, 1),
(66, 'Nguyên', '0383549957', '2022-07-23 19:52:08.002088', 'Xe 7 chỗ', 0, '', '07/25/2022', '07/27/2022', '', '32', '48', '1000000', '', 0, 1, 1, 0, 0, 0, 0, '', 0, 1000000, 1),
(67, 'Hiếu', '0383549957', '2022-07-25 02:38:51.295191', '', 0, '', '07/26/2022', '07/27/2022', '', '32', '48', '1000000', '', 0, 1, 1, 0, 0, 0, 0, '', 0, 1000000, 1),
(68, 'Nguyên', '0383549957', '2022-07-25 03:51:50.633472', '', 0, '', '07/26/2022', '', '', '32', '48', '2300000', '', 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0),
(69, 'Hiếu', '0383549957', '0000-00-00 00:00:00.000000', '', 0, '', '07/26/2022', '', '', '43', '49', '1000000', 'Hợp đồng', 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0),
(71, 'Hiếu', '0383549957', '0000-00-00 00:00:00.000000', '', 0, '', '07/29/2022', '', '', '44', '49', '2000000', 'Tự lái', 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chiphichuyendi`
--

CREATE TABLE `chiphichuyendi` (
  `vtbd_id` int(11) NOT NULL,
  `ngaydi` varchar(255) NOT NULL,
  `tuyen` varchar(255) NOT NULL,
  `tienxang` int(13) NOT NULL,
  `tiendau` int(13) NOT NULL,
  `chiphiphatsinh` int(13) NOT NULL,
  `ghichu` varchar(255) NOT NULL,
  `tongtien` int(13) NOT NULL,
  `drname` varchar(255) NOT NULL,
  `veh_reg` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `tienluong` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chiphichuyendi`
--

INSERT INTO `chiphichuyendi` (`vtbd_id`, `ngaydi`, `tuyen`, `tienxang`, `tiendau`, `chiphiphatsinh`, `ghichu`, `tongtien`, `drname`, `veh_reg`, `trangthai`, `tienluong`) VALUES
(18, '07/27/2022', 'Trà Vinh- TP.HCM', 100000, 100000, 100000, ' ', 300000, 'Nguyễn Nhật Trường', 'A7', 1, 2000000),
(20, '07/25/2022', 'Trà Vinh- TP.HCM', 100000, 100000, 100000, ' ', 300000, 'Lâm Quốc Hoài', 'A7', 1, 3000000),
(21, '07/17/2022', 'Trà Vinh- TP.HCM', 100000, 100000, 100000, ' ', 300000, 'Lâm Quốc Hoài', 'A7', 1, 3000000),
(22, '07/20/2022', 'Trà Vinh- TP.HCM', 100000, 100000, 100000, ' ', 300000, 'Ngô Thanh Nguyên', 'A7', 1, 1000000),
(23, '07/13/2022', 'Trà Vinh- TP.HCM', 100000, 100000, 100000, ' ', 300000, 'Nguyễn Phú Điền', 'A6', 1, 0),
(24, '07/21/2022', 'Trà Vinh- TP.HCM', 100000, 100000, 100000, ' ', 300000, 'Lâm Quốc Hoài', 'A7', 1, 0),
(25, '06/07/2022', 'Trà Vinh- TP.HCM', 100000, 100000, 100000, ' ', 300000, 'Nguyễn Thành Đạt', 'A5', 1, 0),
(29, '07/17/2022', 'Trà Vinh - Đồng Tháp', 200000, 100000, 200000, ' ', 500000, 'Nguyễn Phú Điền', 'A5', 1, 0),
(30, '07/03/2022', 'Trà Vinh- TP.HCM', 100000, 100000, 100000, ' ', 300000, 'Lâm Quốc Hoài', 'A7', 1, 0),
(31, '07/04/2022', 'Trà Vinh - Tiền Giang', 1000000, 1000000, 1000000, ' ', 3000000, 'Lâm Quốc Hoài', 'A7', 1, 0),
(32, '07/25/2022', 'Trà Vinh- TP.HCM', 3000000, 500000, 1500000, ' ', 5000000, 'Lâm Quốc Hoài', 'A7', 1, 0),
(33, '07/16/2022', 'Trà Vinh - Cần Thơ', 3000000, 1000000, 1500000, ' ', 5500000, 'Ngô Thanh Nguyên', 'A2', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `driver`
--

CREATE TABLE `driver` (
  `driverid` int(11) NOT NULL,
  `drname` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `gioitinh` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `drjoin` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `drmobile` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `drnid` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `drlicense` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `drlicensevalid` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `draddress` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `drphoto` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `trangthaitx` int(11) NOT NULL,
  `dr_available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `driver`
--

INSERT INTO `driver` (`driverid`, `drname`, `gioitinh`, `drjoin`, `drmobile`, `drnid`, `drlicense`, `drlicensevalid`, `draddress`, `drphoto`, `trangthaitx`, `dr_available`) VALUES
(32, 'Tự Lái', '', '', '', '', '', '', '', '', 0, 0),
(33, 'Ngô Thanh Nguyên', 'Nam', '01/01/2014', '0395232704', 'Việt Nam', 'Hạng B2', '06/30/2028', '  Trà Vinh', 'ngothanhnguyen.jpg', 0, 1),
(35, 'Nguyễn Phú Điền', 'Nam', '01/01/2013', '0393041020', 'Việt Nam', 'Hạng B2', '06/30/2028', '  Trà Vinh', 'nguyenphudien.jpg', 0, 0),
(38, 'Lâm Quốc Hoài', 'Nam', '01/01/2014', '0378206136', 'Việt Nam', 'Hạng B2', '06/30/2028', ' Trà Vinh', 'lamquochoai.jpg', 0, 0),
(39, 'Lê Tấn Hỷ', 'Nam', '01/01/2014', '0393673298', 'Việt Nam', 'Hạng C', '06/30/2028', ' Trà Vinh', 'Avatar nam có màu.jpg', 0, 0),
(40, 'Nguyễn Nhật Trường', 'Nam', '01/01/2014', '0346919223', 'Việt Nam', 'Hạng B2', '07/07/2028', ' Trà Vinh', 'Avatar nam có màu.jpg', 0, 0),
(41, 'Nguyễn Hoàng Duy Thiện', 'Nam', '01/01/2014', '0989274222', 'Việt Nam', 'Hạng B2', '11/9/2027', ' Khóm 9 phường 9', 'Avatar nam có màu.jpg', 0, 0),
(42, 'Nguyễn Thành Đạt', 'Nam', '01/01/2014', '0383112586', 'Việt Nam', 'Hạng B2', '06/28/2024', ' Trà Vinh', 'nguyenthanhdat.jpg', 0, 0),
(43, 'Trần Văn Sang', 'Nam', '01/01/2018', '0383589996', 'Việt Nam', 'Hạng B2', '24/07/2028', ' Trà Vinh', 'Avatar nam có màu.jpg', 0, 0),
(44, 'Nguyễn Thanh Hải', 'Nam', '06/23/2017', '0383116981', 'Việt Nam', 'Hạng B2', '06/30/2028', ' Trà Vinh', 'Avatar nam có màu.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `schedule`
--

CREATE TABLE `schedule` (
  `scheduleid` int(11) NOT NULL,
  `schedulename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `schedule`
--

INSERT INTO `schedule` (`scheduleid`, `schedulename`) VALUES
(1, 'Trà Vinh - Bến Tre'),
(2, 'Trà Vinh - Sóc Trăng'),
(3, 'Trà Vinh - Cần Thơ'),
(4, 'Trà Vinh - Đồng Tháp'),
(12, 'Trà Vinh - Vĩnh Long'),
(13, 'Trà Vinh - Tiền Giang'),
(14, 'Trà Vinh - An Giang'),
(15, 'Trà Vinh - TP.HCM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tripcost`
--

CREATE TABLE `tripcost` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `tiendatxe` varchar(11) CHARACTER SET utf8mb4 NOT NULL,
  `lichtrinh_id` int(11) NOT NULL,
  `noixuatphat` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `noiden` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `total_cost` varchar(11) CHARACTER SET utf8mb4 NOT NULL,
  `paid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tripcost`
--

INSERT INTO `tripcost` (`id`, `booking_id`, `username`, `tiendatxe`, `lichtrinh_id`, `noixuatphat`, `noiden`, `total_cost`, `paid`) VALUES
(21, '54', 'hieu', '200000', 0, 'Bến xe Trà Vinh', 'Bến xe Miền Tây', '700000', 1),
(22, '55', 'hieu', '200000', 0, 'Bến xe Trà Vinh', 'Bến xe Hà Tiên', '800000', 1),
(23, '56', 'hieu', '200000', 0, 'Bến xe Trà Vinh', 'Bến xe Hà Tiên', '200000', 1),
(26, '60', 'hieu', '200000', 0, 'Bến xe Trà Vinh', 'Bến xe Hà Tiên', '200000', 0),
(27, '62', 'hieu', '200000', 0, 'Bến xe Trà Vinh', 'Bến xe Hà Tiên', '200000', 1),
(28, '63', 'hieu', '200000', 0, 'Bến xe Trà Vinh', 'Bến xe Hà Tiên', '200000', 1),
(29, '64', 'hieu', '200000', 0, 'Bến xe Trà Vinh', 'Bến xe Hà Tiên', '800000', 1),
(30, '68', 'hieu', '', 0, 'Bến xe Trà Vinh', 'Bến xe Hà Tiên', '', 0),
(31, '70', 'thien', '', 0, 'Bến xe Trà Vinh', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `username`, `password`, `admin`) VALUES
(15, 'kim', 'hiếu', 'kimhieu2407@gmail.com', 'hieu', 'e10adc3949ba59abbe56e057f20f883e', 0),
(17, 'nguyễn ', 'thiện', 'thiennhd@gmail.com', 'thien', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vehicle`
--

CREATE TABLE `vehicle` (
  `veh_id` int(11) NOT NULL,
  `veh_reg` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `veh_type` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `chesisno` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `brand` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `veh_color` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `veh_regdate` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `veh_description` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `veh_photo` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `trangthaix` int(11) NOT NULL,
  `veh_available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `vehicle`
--

INSERT INTO `vehicle` (`veh_id`, `veh_reg`, `veh_type`, `chesisno`, `brand`, `veh_color`, `veh_regdate`, `veh_description`, `veh_photo`, `trangthaix`, `veh_available`) VALUES
(39, 'A4', 'Xe khách', '84F-777.77', 'Samco Growin Li.29/34', 'Xanh', '01/01/2014', ' Xe 16 chỗ', 'xe khách xanh.png', 0, 1),
(40, 'A5', 'Xe khách', '84H- 999.99', 'Hyundai Grand I10', 'Đỏ', '01/01/2014', ' Xe 16 chỗ', 'xe khách đỏ.jpg', 0, 0),
(41, 'A6', 'Xe du lịch', '84A 123.45', 'Samco Growin Li.29/34', 'Vàng', '01/01/2014', ' ', 'Xe khách vàng.png', 0, 0),
(42, 'A2', 'Xe khách', '84A-129.96', 'Samco Growin Li.29/34', 'Đỏ', '01/01/2014', ' Xe 16 chỗ, máy lạnh, wifi', 'xe khách trắng.jpg', 0, 0),
(43, 'A7', 'Fortuner', '84A-242.24', 'Toyota', 'Bạc', '01/01/2014', ' Xe 5 chỗ', 'toyota bạc.jpg', 0, 0),
(45, 'A9', 'Vios', '84A-025.24', 'Toyota', 'Trắng', '07/10/2018', ' Xe 5 chỗ', 'toyota vios trắng.png', 0, 0),
(46, 'A8', 'Innova', '84A-020.37', 'Toyota', 'Bạc', '07/05/2018', ' Xe 5 chỗ', 'toyota innova bạc.jpg', 0, 0),
(47, 'A10', 'Wigo', '84A-040.15', 'Toyota', 'Trắng', '07/26/2019', ' Xe 5 chỗ', 'toyota wigo trắng.jpg', 0, 0),
(48, 'A11', 'Vios', '51H-756.43', 'Toyota', 'Nâu đất', '07/19/2018', ' Xe 5 chỗ', 'toyota vios nâu đất.png', 0, 0),
(49, 'A12', 'Vios', '84A-258.79', 'Toyota ', 'Trắng', '06/16/2018', ' Xe 5 chỗ', 'toyota vios trắng.png', 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `banglaixe`
--
ALTER TABLE `banglaixe`
  ADD PRIMARY KEY (`banglai_id`);

--
-- Chỉ mục cho bảng `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Chỉ mục cho bảng `bookingyc`
--
ALTER TABLE `bookingyc`
  ADD PRIMARY KEY (`bookingyc_id`);

--
-- Chỉ mục cho bảng `chiphichuyendi`
--
ALTER TABLE `chiphichuyendi`
  ADD PRIMARY KEY (`vtbd_id`);

--
-- Chỉ mục cho bảng `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driverid`);

--
-- Chỉ mục cho bảng `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`scheduleid`);

--
-- Chỉ mục cho bảng `tripcost`
--
ALTER TABLE `tripcost`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`veh_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `banglaixe`
--
ALTER TABLE `banglaixe`
  MODIFY `banglai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `bookingyc`
--
ALTER TABLE `bookingyc`
  MODIFY `bookingyc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `chiphichuyendi`
--
ALTER TABLE `chiphichuyendi`
  MODIFY `vtbd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `driver`
--
ALTER TABLE `driver`
  MODIFY `driverid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `schedule`
--
ALTER TABLE `schedule`
  MODIFY `scheduleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tripcost`
--
ALTER TABLE `tripcost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `veh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
