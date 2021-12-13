-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 03, 2021 lúc 03:28 AM
-- Phiên bản máy phục vụ: 10.4.16-MariaDB
-- Phiên bản PHP: 7.4.12


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
  `tentaptindinhkem` varchar(34) NOT NULL,
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
(25, 'TSSV2021', '2021-07-01 00:00:00', '2021-07-02 00:00:00', '2021-07-02 00:00:00', '2021-07-02 00:00:00', 'Phương thức tuyển sinh K13', 'Quế Anh', 'p7F_tuyển sinh K13.pdf', 1, 2, 14, 1, 1, 'phuong-thuc-tuyen-sinh-k13', 4);

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
(23, 'User Admin', 'admin@quanlycongvan.com', 1, '$2y$10$faLoniZ8.6Od6DNAAzMzkuaGcFCpakH1oq8q/g/mGXoFLLHV6cdnq', 'kAntWd0ogZ5z652ko73dOVYMAr9UbtuejhNK0Ddnrzdjzk9vlQZdmeG6dDxV', '2021-07-02 10:29:13', '2018-07-06 02:45:52'),
(24, 'User SuperAdmin', 'superadmin@quanlycongvan.com', 2, '$2y$10$qtxkIm68RfjmIhulLgnAx.pq11Dzk8agVCqEDPyRsQHQBdyDP7NKa', 'AN9IkvSe0oXjJOX6Vd0OQpd43e1QpdNpdilzNLdTOKaBPvymqynkt7OumiYM', '2018-07-06 06:44:18', '2018-07-06 02:46:31'),
(25, 'User Nhân viên', 'nhanvien@quanlycongvan.com', 0, '$2y$10$8CwTglAisd46SAT2Pu9iTuZ71AHcl0//t55tDs6PodFAio/.1MnEK', 'xESMSwcbni1SqrqXkyR5SmfuxyJtF19twcms2TYhEqV9CvR4isJXiQgM3Ro0', '2018-07-06 08:06:15', '2018-07-06 02:47:02');

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
