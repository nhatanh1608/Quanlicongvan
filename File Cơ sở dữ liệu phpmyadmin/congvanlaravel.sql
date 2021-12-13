-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 13, 2021 lúc 04:32 AM
-- Phiên bản máy phục vụ: 10.4.16-MariaDB
-- Phiên bản PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `congvanlaravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congvan`
--

CREATE TABLE `congvan` (
  `id` int(10) NOT NULL,
  `sohieu` varchar(15) NOT NULL,
  `ngaylap` datetime DEFAULT NULL,
  `ngayky` datetime DEFAULT NULL,
  `ngayhieuluc` datetime DEFAULT NULL,
  `ngaychuyen` datetime DEFAULT NULL,
  `trichyeunoidung` varchar(100) NOT NULL,
  `nguoiky` varchar(30) DEFAULT NULL,
  `tentaptindinhkem` varchar(100) NOT NULL,
  `conhieuluc` int(1) DEFAULT NULL,
  `idcoquanbanhanh` int(1) NOT NULL,
  `idhinhthucvanban` int(2) NOT NULL,
  `idlinhvuc` int(1) NOT NULL,
  `idloaivanban` int(1) NOT NULL,
  `TenKhongDau` varchar(130) NOT NULL,
  `idloaihinhcongvan` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `congvan`
--

INSERT INTO `congvan` (`id`, `sohieu`, `ngaylap`, `ngayky`, `ngayhieuluc`, `ngaychuyen`, `trichyeunoidung`, `nguoiky`, `tentaptindinhkem`, `conhieuluc`, `idcoquanbanhanh`, `idhinhthucvanban`, `idlinhvuc`, `idloaivanban`, `TenKhongDau`, `idloaihinhcongvan`) VALUES
(25, 'TSSV2021', '2021-07-01 00:00:00', '2021-07-02 00:00:00', '2021-07-02 00:00:00', '2021-07-02 00:00:00', 'Phương thức tuyển sinh K13', 'Quế Anh', 'p7F_tuyển sinh K13.pdf', 1, 2, 14, 1, 1, 'phuong-thuc-tuyen-sinh-k13', 4),
(26, 'ICC9000', '2021-07-02 00:00:00', '2021-07-03 00:00:00', '2021-07-03 00:00:00', '2021-07-04 00:00:00', 'ICC9000ICC9000ICC9000', 'Huy Huoang', 'ysQ_pttk3 - Copy.pdf', 1, 2, 1, 1, 1, 'icc9000icc9000icc9000', 2),
(27, 'TSV2021', '2021-07-11 00:00:00', '2021-07-11 00:00:00', '2021-07-12 00:00:00', '2021-07-11 00:00:00', 'Bai Tap 2021', 'Quế Anh', 'uVr_btck.pdf', 1, 2, 1, 1, 1, 'bai-tap-2021', 2),
(28, 'TSSV2022', '2021-11-12 00:00:00', '2021-11-12 00:00:00', '2021-11-13 00:00:00', '2021-11-12 00:00:00', 'Bai tap 2', 'Quế Anh', '4Mw_Bàitậpbuổi15.pdf', 1, 2, 1, 1, 1, 'bai-tap-2', 2),
(29, 'BT2021', '2021-11-12 00:00:00', '2021-12-12 00:00:00', '2022-01-01 00:00:00', '2021-11-12 00:00:00', 'Bai tap 3', 'Xuan Anh', 'DqH_Bài tập buổi 15-Gia Khánh.pdf', 1, 2, 1, 1, 1, 'bai-tap-3', 2),
(30, 'TSVX2021', '2021-07-07 00:00:00', '2021-07-07 00:00:00', '2021-07-08 00:00:00', '2021-07-07 00:00:00', 'Thông báo quan trọng', 'Anh Thu', 'OmV_OLympicToan_L1_01_25_A5_TC (1).pdf', 1, 2, 2, 2, 1, 'thong-bao-quan-trong', 2),
(31, 'TBQT1121', '2021-07-08 00:00:00', '2021-07-09 00:00:00', '2021-07-10 00:00:00', '2021-07-15 00:00:00', 'Thông báo quan trọng', 'Anh Thu', 'u9H_OLympicToan_L1_01_25_A5_TC.pdf', 0, 2, 1, 1, 1, 'thong-bao-quan-trong', 3),
(32, 'TBQT1121', '2021-09-10 00:00:00', '2021-09-11 00:00:00', '2021-09-11 00:00:00', '2021-09-11 00:00:00', 'Thông báo quan trọng', 'Xuan Anh', 'H1g_OLympicToan_L1_01_25_A5_TC.pdf', 1, 2, 1, 1, 1, 'thong-bao-quan-trong', 2),
(33, 'TBSV2021', '2021-05-09 00:00:00', '2021-05-09 00:00:00', '2021-05-09 00:00:00', '2021-05-09 00:00:00', 'Thông báo quan trọng', 'Xuan Anh', '9bS_Bài tập buổi 15-Gia Khánh (3).pdf', 1, 2, 1, 2, 1, 'thong-bao-quan-trong', 2),
(34, 'TSV2021', '2021-11-11 00:00:00', '2021-11-11 00:00:00', '2022-04-03 00:00:00', '2022-04-03 00:00:00', 'Thông báo quan trọng', 'Huy Huoang', 'IYi_Bàitậpbuổi15.pdf', 1, 2, 1, 1, 1, 'thong-bao-quan-trong', 2),
(35, 'TSV2021', '2021-08-07 00:00:00', '2021-08-07 00:00:00', '2021-08-07 00:00:00', '2021-08-11 00:00:00', 'Thông báo quan trọng', 'Quế Anh', '0Sz_Bài tập buổi 15-Gia Khánh (4).pdf', 1, 2, 1, 1, 1, 'thong-bao-quan-trong', 2),
(36, 'TBQT2021', '2021-09-07 00:00:00', '2021-09-07 00:00:00', '2021-09-08 00:00:00', '2021-09-08 00:00:00', 'Thông báo quan trọng', 'Quế Anh', 'rlW_Bàitậpbuổi15.pdf', 1, 2, 1, 2, 1, 'thong-bao-quan-trong', 3),
(37, 'TSV2021', '2021-09-08 00:00:00', '2021-09-08 00:00:00', '2021-09-08 00:00:00', '2021-09-10 00:00:00', 'Thông báo quan trọng', 'Quế Anh', 'Dxh_Bài tập buổi 15-Gia Khánh.pdf', 1, 2, 2, 2, 1, 'thong-bao-quan-trong', 2),
(38, 'TSV2021', '2021-08-06 00:00:00', '2021-08-06 00:00:00', '2021-08-07 00:00:00', '2021-08-07 00:00:00', 'Thông báo quan trọng', 'Quế Anh', 'Cgf_Bài tập buổi 15-Gia Khánh (6).pdf', 1, 2, 14, 2, 1, 'thong-bao-quan-trong', 2),
(39, 'TBQT1121', '2021-07-07 00:00:00', '2021-07-07 00:00:00', '2021-07-07 00:00:00', '2021-07-07 00:00:00', 'Thông báo quan trọng', 'Quế Anh', 'wZo_Bài tập buổi 15-Gia Khánh (5).pdf', 1, 4, 14, 2, 1, 'thong-bao-quan-trong', 2),
(40, 'ICC20001', '2021-06-06 00:00:00', '2021-06-06 00:00:00', '2021-07-07 00:00:00', '2022-02-07 00:00:00', 'Thông báo quan trọng', 'Anh', 'wtq_Bài tập buổi 15-Gia Khánh (5).pdf', 1, 2, 9, 2, 1, 'thong-bao-quan-trong', 3),
(41, 'TBQT1121', '2021-11-11 00:00:00', '2021-11-11 00:00:00', '2021-11-11 00:00:00', '2021-11-11 00:00:00', 'Thông báo quan trọng', 'Huy Huoang', 'ZZX_Bài tập buổi 15-Gia Khánh (5).pdf', 1, 4, 4, 1, 1, 'thong-bao-quan-trong', 4),
(42, 'TBQT1121', '2021-05-05 00:00:00', '2021-05-05 00:00:00', '2021-05-05 00:00:00', '2021-05-05 00:00:00', 'Thông báo quan trọng', 'Quế Anh', 'yN7_Bài tập buổi 15-Gia Khánh.pdf', 1, 4, 6, 2, 1, 'thong-bao-quan-trong', 2),
(43, 'TL2021', '2021-11-14 00:00:00', '2021-11-14 00:00:00', '2021-11-15 00:00:00', '2021-11-15 00:00:00', 'Tài liệu', 'Anh Thu', 'ePO_Bài tập buổi 15-Gia Khánh (5).pdf', 1, 2, 13, 1, 1, 'tai-lieu', 2),
(44, 'ICC20001', '2021-12-25 00:00:00', '2021-12-25 00:00:00', '2022-02-26 00:00:00', '2022-02-26 00:00:00', 'Thông báo quan trọng', 'Quế Anh', 'nK0_Bài tập buổi 15-Gia Khánh.pdf', 1, 2, 7, 1, 1, 'thong-bao-quan-trong', 2),
(45, 'TSSV2021', '2021-07-25 00:00:00', '2021-07-25 00:00:00', '2021-07-30 00:00:00', '2021-08-28 00:00:00', 'Thông báo quan trọng', 'Quế Anh', 'dOQ_Bài tập buổi 15-Gia Khánh (6).pdf', 1, 4, 12, 2, 1, 'thong-bao-quan-trong', 2),
(46, 'TBQT1121', '2021-08-08 00:00:00', '2021-08-08 00:00:00', '2022-02-09 00:00:00', '2021-08-08 00:00:00', 'Thông báo quan trọng', 'Em là 1 học sinh lớp 11 chuẩn', 'eB8_Bài tập buổi 15-Gia Khánh (5).pdf', 1, 2, 6, 2, 1, 'thong-bao-quan-trong', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coquanbanhanh`
--

CREATE TABLE `coquanbanhanh` (
  `id` int(1) NOT NULL,
  `name` varchar(30) NOT NULL,
  `TenKhongDau` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `coquanbanhanh`
--

INSERT INTO `coquanbanhanh` (`id`, `name`, `TenKhongDau`) VALUES
(2, 'Sở Giáo Dục & Đào Tạo', 'so-giao-duc-dao-tao'),
(4, 'Sở Lao Động-Thương Binh & XH', 'so-lao-dong-thuong-binh-xh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhthucvanban`
--

CREATE TABLE `hinhthucvanban` (
  `id` int(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  `TenKhongDau` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hinhthucvanban`
--

INSERT INTO `hinhthucvanban` (`id`, `name`, `TenKhongDau`) VALUES
(1, 'Báo cáo', 'bao-cao'),
(2, 'Công điện', 'cong-dien'),
(3, 'Công văn điều hành', 'cong-van-dieu-hanh'),
(4, 'Chỉ thị', 'chi-thi'),
(5, 'Điều lệ', 'dieu-le'),
(6, 'Giấy mời', 'giay-moi'),
(7, 'Kế hoạch', 'ke-hoach'),
(8, 'Luật', 'luat'),
(9, 'Nghị định', 'nghi-dinh'),
(10, 'Nghị quyết', 'nghi-quyet'),
(11, 'Pháp lệnh', 'phap-lenh'),
(12, 'Quyết định', 'quyet-dinh'),
(13, 'Tài liệu', 'tai-lieu'),
(14, 'Thông báo', 'thong-bao'),
(15, 'Thông tư', 'thong-tu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `linhvuc`
--

CREATE TABLE `linhvuc` (
  `id` int(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `TenKhongDau` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `linhvuc`
--

INSERT INTO `linhvuc` (`id`, `name`, `TenKhongDau`) VALUES
(1, 'Công Nghệ Thông Tin', 'cong-nghe-thong-tin'),
(2, 'Lĩnh vực khác', 'linh-vuc-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaihinhcongvan`
--

CREATE TABLE `loaihinhcongvan` (
  `id` int(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `TenKhongDau` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaihinhcongvan`
--

INSERT INTO `loaihinhcongvan` (`id`, `name`, `TenKhongDau`) VALUES
(2, 'Công văn nội bộ', 'cong-van-noi-bo'),
(3, 'Công văn đến', 'cong-van-den'),
(4, 'Công văn đi', 'cong-van-di');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaivanban`
--

CREATE TABLE `loaivanban` (
  `id` int(1) NOT NULL,
  `name` varchar(30) NOT NULL,
  `TenKhongDau` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaivanban`
--

INSERT INTO `loaivanban` (`id`, `name`, `TenKhongDau`) VALUES
(1, 'Văn bản chỉ đạo điều hành', 'van-ban-chi-dao-dieu-hanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `hinhanh` varchar(34) NOT NULL,
  `link` varchar(253) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `name`, `hinhanh`, `link`) VALUES
(1, 'banner1', '3lv_0207 banner TS 1.jpg', 'https://www.hactech.edu.vn/tin-tuc/thong-tin-tuyen-sinh/thong-bao-tuyen-sinh-he-cao-dang-khoa-13-nam-2021-1617097771.html#title-container'),
(3, 'banner2', 'IWe_0207-banner TS 2.jpg', 'https://sinhvien.hactech.edu.vn/student-records/register?fbclid=IwAR2cgnifvt99zgR_nPA_tyxrKftyAR07clZ9cGzEZSqBJWgCbuoppea_rrQ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(1) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `level` int(1) NOT NULL DEFAULT 0,
  `password` varchar(70) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `level`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(23, 'User Admin', 'admin@quanlycongvan.com', 1, '$2y$10$faLoniZ8.6Od6DNAAzMzkuaGcFCpakH1oq8q/g/mGXoFLLHV6cdnq', 'Spsr1xRygbsS5zSvQmoBSmLoNWsvDo72NcL1VYfNMiBnCMFED7AhQvPojGKn', '2021-11-13 02:03:02', '2018-07-06 02:45:52'),
(24, 'User SuperAdmin', 'superadmin@quanlycongvan.com', 2, '$2y$10$qtxkIm68RfjmIhulLgnAx.pq11Dzk8agVCqEDPyRsQHQBdyDP7NKa', 'IB0hb4hOwWPNbWo9aZtoimhna88cEi2s8wSY6kls4Fuatvfw8z8MlRHfGfI1', '2021-11-12 01:37:09', '2018-07-06 02:46:31'),
(25, 'User Nhân viên', 'nhanvien@quanlycongvan.com', 0, '$2y$10$8CwTglAisd46SAT2Pu9iTuZ71AHcl0//t55tDs6PodFAio/.1MnEK', 'L2pB0o2ZVr254fsMyc5r3jbzKlJDfPVRbkphTTfQudieJJycOdtkBDgiX8QT', '2021-11-12 16:29:17', '2018-07-06 02:47:02');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `congvan`
--
ALTER TABLE `congvan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Congvan_fk0` (`idcoquanbanhanh`),
  ADD KEY `Congvan_fk1` (`idhinhthucvanban`),
  ADD KEY `Congvan_fk2` (`idlinhvuc`),
  ADD KEY `Congvan_fk3` (`idloaivanban`),
  ADD KEY `TenKhongDau` (`TenKhongDau`),
  ADD KEY `idloaihinhcongvan` (`idloaihinhcongvan`);

--
-- Chỉ mục cho bảng `coquanbanhanh`
--
ALTER TABLE `coquanbanhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hinhthucvanban`
--
ALTER TABLE `hinhthucvanban`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `linhvuc`
--
ALTER TABLE `linhvuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaihinhcongvan`
--
ALTER TABLE `loaihinhcongvan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `loaivanban`
--
ALTER TABLE `loaivanban`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `congvan`
--
ALTER TABLE `congvan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `coquanbanhanh`
--
ALTER TABLE `coquanbanhanh`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hinhthucvanban`
--
ALTER TABLE `hinhthucvanban`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `linhvuc`
--
ALTER TABLE `linhvuc`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loaihinhcongvan`
--
ALTER TABLE `loaihinhcongvan`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `loaivanban`
--
ALTER TABLE `loaivanban`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `congvan`
--
ALTER TABLE `congvan`
  ADD CONSTRAINT `Congvan_fk0` FOREIGN KEY (`idcoquanbanhanh`) REFERENCES `coquanbanhanh` (`id`),
  ADD CONSTRAINT `Congvan_fk1` FOREIGN KEY (`idhinhthucvanban`) REFERENCES `hinhthucvanban` (`id`),
  ADD CONSTRAINT `Congvan_fk2` FOREIGN KEY (`idlinhvuc`) REFERENCES `linhvuc` (`id`),
  ADD CONSTRAINT `Congvan_fk3` FOREIGN KEY (`idloaivanban`) REFERENCES `loaivanban` (`id`),
  ADD CONSTRAINT `congvan_ibfk_1` FOREIGN KEY (`idloaihinhcongvan`) REFERENCES `loaihinhcongvan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
