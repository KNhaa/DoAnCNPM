-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 28, 2020 lúc 08:41 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlkhachsan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calam`
--

CREATE TABLE `calam` (
  `maca` char(15) NOT NULL,
  `giobatdau` time NOT NULL,
  `gioketthuc` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `calam`
--

INSERT INTO `calam` (`maca`, `giobatdau`, `gioketthuc`) VALUES
('BT1C', '13:00:00', '17:00:00'),
('BT1S', '07:30:00', '11:30:00'),
('HC1C', '13:00:00', '17:00:00'),
('HC1S', '07:30:00', '11:30:00'),
('PV1', '06:00:00', '14:00:00'),
('PV2', '00:00:00', '22:00:00'),
('PV3', '22:00:00', '06:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucvu`
--

CREATE TABLE `chucvu` (
  `macv` char(15) NOT NULL,
  `tenchucvu` varchar(255) NOT NULL,
  `luong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chucvu`
--

INSERT INTO `chucvu` (`macv`, `tenchucvu`, `luong`) VALUES
('GX', 'Nhân viên giữ xe', 6000000),
('KD', 'Nhân viên kinh doanh', 15000000),
('KT', 'Kế toán', 12000000),
('LT', 'Lễ tân', 10000000),
('QL', 'Quản lý', 20000000),
('TK', 'Thủ kho', 10000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdat`
--

CREATE TABLE `ctdat` (
  `madat` char(15) NOT NULL,
  `maphong` char(10) NOT NULL,
  `maphieudvu` char(15) NOT NULL,
  `dongia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdathang`
--

CREATE TABLE `ctdathang` (
  `mapdh` char(15) NOT NULL,
  `mahang` char(15) NOT NULL,
  `tenhang` varchar(255) NOT NULL,
  `donvitinh` varchar(255) NOT NULL,
  `sl` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdvu`
--

CREATE TABLE `ctdvu` (
  `maphieudvu` char(15) NOT NULL,
  `madv` char(15) NOT NULL,
  `ngaysudungdv` date NOT NULL,
  `soluong` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctnhapkho`
--

CREATE TABLE `ctnhapkho` (
  `mapnk` char(15) NOT NULL,
  `mahang` char(15) NOT NULL,
  `slchungtu` int(11) NOT NULL,
  `slthucnhap` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctxuatkho`
--

CREATE TABLE `ctxuatkho` (
  `mapxk` char(15) NOT NULL,
  `mahang` char(15) NOT NULL,
  `slyeucau` int(11) NOT NULL,
  `slthucxuat` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `madv` char(15) NOT NULL,
  `maloaidv` char(15) NOT NULL,
  `tendv` varchar(255) NOT NULL,
  `dongia` int(11) NOT NULL,
  `donvitinh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`madv`, `maloaidv`, `tendv`, `dongia`, `donvitinh`) VALUES
('AnBuffet', 'AnUong', 'Ăn Buffet', 250000, 'phần'),
('AnSang', 'AnUong', 'Ăn sáng', 200000, 'phần'),
('AnToi', 'AnUong', 'Ăn tối', 250000, 'phần'),
('AnTrua', 'AnUong', 'Ăn trưa', 200000, 'phần'),
('Casino', 'GiaiTri', 'Sòng bài Casino', 250000, 'giờ'),
('GiatUi', 'DVPhong', 'Giặt ủi', 20000, 'kí'),
('MiniBar', 'DVPhong', 'Quầy mini bar', 5000000, 'chai'),
('Spa', 'GiaiTri', 'Spa', 400000, 'người'),
('TrongTre', 'DVPhong', 'Trông trẻ', 50000, 'giờ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hanghoa`
--

CREATE TABLE `hanghoa` (
  `mahang` char(15) NOT NULL,
  `makho` char(15) NOT NULL,
  `tenhang` varchar(255) NOT NULL,
  `gia` int(11) NOT NULL,
  `donvitinh` varchar(255) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hanghoa`
--

INSERT INTO `hanghoa` (`mahang`, `makho`, `tenhang`, `gia`, `donvitinh`, `soluong`) VALUES
('HH1', 'MK1', 'Khăn mặt', 5000, 'cái', 20),
('HH2', 'MK1', 'Bàn chải đánh răng', 10000, 'cái', 20),
('HH3', 'MK1', 'Dép', 25000, 'đôi', 20),
('HH4', 'MK1', 'Áo choàng tắm', 75000, 'cái', 20),
('HH5', 'MK1', 'Bao gối', 12000, 'cái', 20),
('HH6', 'MK1', 'Ga giường', 50000, 'cái', 20),
('HH7', 'MK1', 'Chăn', 175000, 'cái', 20),
('HH8', 'MK1', 'Dầu gội', 15000, 'tuýp', 20),
('HH9', 'MK1', 'Sữa tắm', 15000, 'tuýp', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` char(15) NOT NULL,
  `madat` char(15) NOT NULL,
  `manv` char(15) NOT NULL,
  `makm` char(15) NOT NULL,
  `ngaylaphd` date NOT NULL,
  `tienphong` int(11) NOT NULL,
  `tiendvu` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `tienkm` int(11) NOT NULL,
  `thuctra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` char(15) NOT NULL,
  `tenkh` varchar(255) NOT NULL,
  `namsinh` int(4) NOT NULL,
  `sdt` char(15) NOT NULL,
  `email` char(30) NOT NULL,
  `diachi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kho`
--

CREATE TABLE `kho` (
  `makho` char(15) NOT NULL,
  `tenkho` varchar(255) NOT NULL,
  `vitrikho` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `kho`
--

INSERT INTO `kho` (`makho`, `tenkho`, `vitrikho`) VALUES
('MK1', 'Kho hàng 1', ''),
('MK2', 'Kho hàng 2', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `makm` char(15) NOT NULL,
  `tenkm` varchar(255) NOT NULL,
  `phantramkm` int(11) NOT NULL,
  `ngaybd` date NOT NULL,
  `ngaykt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaidv`
--

CREATE TABLE `loaidv` (
  `maloaidv` char(15) NOT NULL,
  `tenloaidv` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaidv`
--

INSERT INTO `loaidv` (`maloaidv`, `tenloaidv`) VALUES
('AnUong', 'ăn uống'),
('DVPhong', 'dịch vụ phòng'),
('GiaiTri', 'giải trí');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaiphong`
--

CREATE TABLE `loaiphong` (
  `maloaiph` char(10) NOT NULL,
  `tenloai` varchar(255) NOT NULL,
  `slnguoi` int(11) NOT NULL,
  `dientich` float NOT NULL,
  `dongia` int(11) NOT NULL,
  `mota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaiphong`
--

INSERT INTO `loaiphong` (`maloaiph`, `tenloai`, `slnguoi`, `dientich`, `dongia`, `mota`) VALUES
('PD1', 'phòng đơn 1 giường', 2, 25, 2000000, 'phòng đơn thường dành cho 1 hoặc 2 người, không gian thoáng mát'),
('PD1CC', 'phòng 1 giường cao cấp', 2, 30, 3000000, 'phòng đôi dành cho 1 -2 người, không gian thoáng mát, đầy đủ tiện nghi'),
('PD1TC', 'phòng đơn 1 giường tiêu chuẩn', 2, 25, 2000000, 'phòng đơn thường dành cho 1 hoặc 2 người, không gian thoáng mát'),
('PD1VIP', 'phòng 1 giường VIP', 2, 40, 5000000, 'phòng đôi dành cho 1 - 2 người, không gian thoáng mát, đầy đủ tiện nghi, trang thiết bị hiện đại'),
('PD2', 'phòng 2 giường', 4, 30, 3000000, 'phòng đôi dành cho 4 - 6 người, không gian thoáng mát'),
('PD2CC', 'phòng 2 giường tiêu chuẩn', 4, 35, 3000000, 'phòng đôi dành cho 4 - 6 người, không gian thoáng mát, đầy đủ tiện nghi'),
('PD2TC', 'phòng 2 giường tiêu chuẩn', 4, 30, 3000000, 'phòng đôi dành cho 4 - 6 người, không gian thoáng mát'),
('PD2VIP', 'phòng 2 giường VIP', 4, 45, 7000000, 'phòng đôi dành cho 4 - 6 người, không gian thoáng mát, đầy đủ tiện nghi, trang thiết bị hiện đại');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luong`
--

CREATE TABLE `luong` (
  `manv` varchar(10) NOT NULL,
  `luongcoban` int(11) NOT NULL,
  `tonggiolam` int(11) NOT NULL,
  `tongngaylam` int(11) NOT NULL,
  `tongluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` char(15) NOT NULL,
  `macv` char(15) NOT NULL,
  `tennv` varchar(255) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sdt` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `macv`, `tennv`, `ngaysinh`, `gioitinh`, `diachi`, `sdt`) VALUES
('GX1', 'GX', 'Hoàng Văn Quý', '1970-09-04', 'Nam', '45 Phan văn Trị, Bình Thạnh ', '098856124'),
('GX2', 'GX', 'Đỗ Văn Đậu', '1998-11-12', 'Nam', '4 đường số 2, quận 12, HCM', '0933361458'),
('KD1', 'KD', 'Nguyễn Văn An', '1990-10-01', 'Nam', '12 Lý Thường Kiệt,Tân Bình, HCM', '0932234546'),
('KD2', 'KD', 'Nguyễn Thúy Vân', '1994-10-27', 'Nữ', '12 Mai Chí Thọ, quận 2, HCM', '0368221130'),
('KT1', 'KT', 'Trương Quốc An', '1995-05-06', 'Nam', '3 Quang Trung, Gò Vấp, HCM', '0987743332'),
('LT1', 'LT', 'Hồ Ánh Ngọc', '1990-10-06', 'Nữ', '45 Nguyễn Trãi, quận 5, HCM', '0723342331'),
('LT2', 'LT', 'Phạm Anh Thư', '1995-09-03', 'Nữ', '25/56 Tân Kỳ Tân Quý, Tân Phú, HCM', '0258420163'),
('QL1', 'QL', 'Nguyễn Minh Ngọc', '1984-07-01', 'Nữ', '99 Lê Văn Sỹ, quận 3, HCM', '0782664518'),
('TK1', 'TK', 'Trần Trọng Trí', '1985-05-07', 'Nam', '7 Phan Xích Long, Phú Nhuận, HCM', '0334677122'),
('TK2', 'TK', 'Từ Quảng Long', '1990-07-03', 'Nam', '42 Tôn Thấp Thiệp, quận 1, HCM', '0983445678');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanxe`
--

CREATE TABLE `nhanxe` (
  `maxevao` char(15) NOT NULL,
  `mathe` char(15) NOT NULL,
  `ngayvao` date NOT NULL,
  `giovao` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phancong`
--

CREATE TABLE `phancong` (
  `maca` char(15) NOT NULL,
  `manv` char(15) NOT NULL,
  `ngaybatdau` date NOT NULL,
  `ngayketthuc` date NOT NULL,
  `Thu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `phancong`
--

INSERT INTO `phancong` (`maca`, `manv`, `ngaybatdau`, `ngayketthuc`, `Thu`) VALUES
('HC1S', 'KD2', '2020-11-23', '2020-11-24', 2),
('HC1S', 'LT1', '2020-11-10', '2020-11-26', 2),
('PV1', 'GX1', '2020-11-09', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudathang`
--

CREATE TABLE `phieudathang` (
  `mapdh` char(15) NOT NULL,
  `manv` char(15) NOT NULL,
  `tongsl` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `tennhacc` varchar(255) NOT NULL,
  `thoigiangiao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudatphong`
--

CREATE TABLE `phieudatphong` (
  `madat` char(15) NOT NULL,
  `makhdat` char(15) NOT NULL,
  `manv` char(15) NOT NULL,
  `ngaydatphong` date NOT NULL,
  `ngayden` date NOT NULL,
  `ngaydi` date NOT NULL,
  `tienphong` int(11) NOT NULL,
  `tiencoc` int(11) NOT NULL,
  `tennguoiluutru` varchar(255) NOT NULL,
  `cmndnguoiluutru` char(15) NOT NULL,
  `trangthai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudvu`
--

CREATE TABLE `phieudvu` (
  `maphieudvu` char(15) NOT NULL,
  `ngaylapphieu` date NOT NULL,
  `tongtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuhuy`
--

CREATE TABLE `phieuhuy` (
  `mahuy` char(15) NOT NULL,
  `madat` char(15) NOT NULL,
  `manv` char(15) NOT NULL,
  `ngayhuy` date NOT NULL,
  `lydo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhapkho`
--

CREATE TABLE `phieunhapkho` (
  `mapnk` char(15) NOT NULL,
  `makho` char(15) NOT NULL,
  `manv` char(15) NOT NULL,
  `ngaynhapkho` date NOT NULL,
  `tongslchungtu` int(11) NOT NULL,
  `tongslthucnhap` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `tennguoigiao` varchar(255) NOT NULL,
  `ghichu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuatkho`
--

CREATE TABLE `phieuxuatkho` (
  `mapxk` char(15) NOT NULL,
  `makho` char(15) NOT NULL,
  `manv` char(15) NOT NULL,
  `ngayxuatkho` date NOT NULL,
  `tongslyeucau` int(11) NOT NULL,
  `tongslthucxuat` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `manv_nhanhang` char(15) NOT NULL,
  `lydoxuatkho` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `maphong` char(10) NOT NULL,
  `maloaiph` char(10) NOT NULL,
  `tang` int(11) NOT NULL,
  `mota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `tentaikhoan` char(20) NOT NULL,
  `matkhau` char(15) NOT NULL,
  `manv` char(15) NOT NULL,
  `trangthai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`tentaikhoan`, `matkhau`, `manv`, `trangthai`) VALUES
('GX1', 'abc', 'GX1', 'Hoạt động'),
('GX2', 'abc', 'GX2', 'Hoạt động'),
('KD1', 'abc', 'KD1', 'Hoạt động'),
('KD2', 'abc', 'KD2', 'Hoạt động'),
('KT1', 'abc', 'KT1', 'Hoạt động'),
('LT1', 'abc', 'LT1', 'Hoạt động'),
('LT2', 'abc', 'LT2', 'Hoạt động'),
('QL1', 'abc', 'QL1', 'Hoạt động'),
('TK1', 'abc', 'TK1', 'Hoạt động'),
('TK3', 'abc', 'TK2', 'Hoạt động');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thexekhach`
--

CREATE TABLE `thexekhach` (
  `mathe` char(15) NOT NULL,
  `soxe` char(15) NOT NULL,
  `loaixe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thexenv`
--

CREATE TABLE `thexenv` (
  `mathe` char(15) NOT NULL,
  `manv` char(15) NOT NULL,
  `soxe` char(15) NOT NULL,
  `loaixe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `traxe`
--

CREATE TABLE `traxe` (
  `maxera` char(15) NOT NULL,
  `mathe` char(15) NOT NULL,
  `ngaytra` date NOT NULL,
  `giotra` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `calam`
--
ALTER TABLE `calam`
  ADD PRIMARY KEY (`maca`);

--
-- Chỉ mục cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`macv`);

--
-- Chỉ mục cho bảng `ctdat`
--
ALTER TABLE `ctdat`
  ADD PRIMARY KEY (`madat`,`maphong`),
  ADD KEY `fk_ctdat_phong` (`maphong`),
  ADD KEY `fk_ctdat_phieudvu` (`maphieudvu`);

--
-- Chỉ mục cho bảng `ctdathang`
--
ALTER TABLE `ctdathang`
  ADD PRIMARY KEY (`mapdh`,`mahang`),
  ADD KEY `fk_ctdathang_hanghoa` (`mahang`);

--
-- Chỉ mục cho bảng `ctdvu`
--
ALTER TABLE `ctdvu`
  ADD PRIMARY KEY (`maphieudvu`,`madv`),
  ADD KEY `fk_ctdvu_dichvu` (`madv`);

--
-- Chỉ mục cho bảng `ctnhapkho`
--
ALTER TABLE `ctnhapkho`
  ADD PRIMARY KEY (`mapnk`,`mahang`),
  ADD KEY `fk_ctnhapkho_hanghoa` (`mahang`);

--
-- Chỉ mục cho bảng `ctxuatkho`
--
ALTER TABLE `ctxuatkho`
  ADD PRIMARY KEY (`mapxk`,`mahang`),
  ADD KEY `fk_ctxuatkho_hanghoa` (`mahang`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`madv`),
  ADD KEY `fk_dichvu_loaidv` (`maloaidv`);

--
-- Chỉ mục cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`mahang`),
  ADD KEY `fk_hanghoa_kho` (`makho`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `fk_hoadon_khuyemai` (`makm`),
  ADD KEY `fk_hoadon_phieudatphong` (`madat`),
  ADD KEY `fk_hoadon_nhanvien` (`manv`) USING BTREE;

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Chỉ mục cho bảng `kho`
--
ALTER TABLE `kho`
  ADD PRIMARY KEY (`makho`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`makm`);

--
-- Chỉ mục cho bảng `loaidv`
--
ALTER TABLE `loaidv`
  ADD PRIMARY KEY (`maloaidv`);

--
-- Chỉ mục cho bảng `loaiphong`
--
ALTER TABLE `loaiphong`
  ADD PRIMARY KEY (`maloaiph`);

--
-- Chỉ mục cho bảng `luong`
--
ALTER TABLE `luong`
  ADD KEY `manv` (`manv`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`),
  ADD KEY `pk_nhanvien_chucvu` (`macv`);

--
-- Chỉ mục cho bảng `nhanxe`
--
ALTER TABLE `nhanxe`
  ADD PRIMARY KEY (`maxevao`),
  ADD KEY `fk_nhanxe_thexenv` (`mathe`);

--
-- Chỉ mục cho bảng `phancong`
--
ALTER TABLE `phancong`
  ADD PRIMARY KEY (`maca`,`manv`),
  ADD KEY `fk_phancong_nhanvien` (`manv`);

--
-- Chỉ mục cho bảng `phieudathang`
--
ALTER TABLE `phieudathang`
  ADD PRIMARY KEY (`mapdh`),
  ADD KEY `fk_phieudathang_nhanvien` (`manv`);

--
-- Chỉ mục cho bảng `phieudatphong`
--
ALTER TABLE `phieudatphong`
  ADD PRIMARY KEY (`madat`),
  ADD KEY `pk_phieudatphong_khachhang` (`makhdat`),
  ADD KEY `pk_phieudatphonng_nhanvien` (`manv`);

--
-- Chỉ mục cho bảng `phieudvu`
--
ALTER TABLE `phieudvu`
  ADD PRIMARY KEY (`maphieudvu`);

--
-- Chỉ mục cho bảng `phieuhuy`
--
ALTER TABLE `phieuhuy`
  ADD PRIMARY KEY (`mahuy`),
  ADD KEY `fk_phieuhuy_phieudatphong` (`madat`),
  ADD KEY `fk_phieuhuy_nhanvien` (`manv`);

--
-- Chỉ mục cho bảng `phieunhapkho`
--
ALTER TABLE `phieunhapkho`
  ADD PRIMARY KEY (`mapnk`) USING BTREE,
  ADD KEY `makho` (`makho`),
  ADD KEY `fk_phieunhapkho_nhanvien` (`manv`);

--
-- Chỉ mục cho bảng `phieuxuatkho`
--
ALTER TABLE `phieuxuatkho`
  ADD PRIMARY KEY (`mapxk`),
  ADD KEY `fk_phieuxuatkho_kho` (`makho`),
  ADD KEY `fk_phieuxuatkho_nhanvien` (`manv`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`maphong`),
  ADD KEY `FK_phong_loaiphong` (`maloaiph`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`tentaikhoan`),
  ADD KEY `pk_taikhoan_nhanvien` (`manv`);

--
-- Chỉ mục cho bảng `thexekhach`
--
ALTER TABLE `thexekhach`
  ADD PRIMARY KEY (`mathe`);

--
-- Chỉ mục cho bảng `thexenv`
--
ALTER TABLE `thexenv`
  ADD PRIMARY KEY (`mathe`),
  ADD KEY `fk_thexenv_nhanvien` (`manv`);

--
-- Chỉ mục cho bảng `traxe`
--
ALTER TABLE `traxe`
  ADD PRIMARY KEY (`maxera`),
  ADD KEY `fk_traxe_thexenv` (`mathe`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ctdat`
--
ALTER TABLE `ctdat`
  ADD CONSTRAINT `fk_ctdat_phieudatphong` FOREIGN KEY (`madat`) REFERENCES `phieudatphong` (`madat`),
  ADD CONSTRAINT `fk_ctdat_phieudvu` FOREIGN KEY (`maphieudvu`) REFERENCES `phieudvu` (`maphieudvu`),
  ADD CONSTRAINT `fk_ctdat_phong` FOREIGN KEY (`maphong`) REFERENCES `phong` (`maphong`);

--
-- Các ràng buộc cho bảng `ctdathang`
--
ALTER TABLE `ctdathang`
  ADD CONSTRAINT `fk_ctdathang_hanghoa` FOREIGN KEY (`mahang`) REFERENCES `hanghoa` (`mahang`),
  ADD CONSTRAINT `fk_ctdathang_phieudathang` FOREIGN KEY (`mapdh`) REFERENCES `phieudathang` (`mapdh`);

--
-- Các ràng buộc cho bảng `ctdvu`
--
ALTER TABLE `ctdvu`
  ADD CONSTRAINT `fk_ctdvu_dichvu` FOREIGN KEY (`madv`) REFERENCES `dichvu` (`madv`),
  ADD CONSTRAINT `fk_ctdvu_phieudvu` FOREIGN KEY (`maphieudvu`) REFERENCES `phieudvu` (`maphieudvu`);

--
-- Các ràng buộc cho bảng `ctnhapkho`
--
ALTER TABLE `ctnhapkho`
  ADD CONSTRAINT `fk_ctnhapkho_hanghoa` FOREIGN KEY (`mahang`) REFERENCES `hanghoa` (`mahang`),
  ADD CONSTRAINT `fk_ctnhapkho_phieunhapkho` FOREIGN KEY (`mapnk`) REFERENCES `phieunhapkho` (`mapnk`);

--
-- Các ràng buộc cho bảng `ctxuatkho`
--
ALTER TABLE `ctxuatkho`
  ADD CONSTRAINT `fk_ctxuatkho_hanghoa` FOREIGN KEY (`mahang`) REFERENCES `hanghoa` (`mahang`),
  ADD CONSTRAINT `fk_ctxuatkho_phieuxuatkho` FOREIGN KEY (`mapxk`) REFERENCES `phieuxuatkho` (`mapxk`);

--
-- Các ràng buộc cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD CONSTRAINT `fk_dichvu_loaidv` FOREIGN KEY (`maloaidv`) REFERENCES `loaidv` (`maloaidv`);

--
-- Các ràng buộc cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD CONSTRAINT `fk_hanghoa_kho` FOREIGN KEY (`makho`) REFERENCES `kho` (`makho`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `fk_hoadon_` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`),
  ADD CONSTRAINT `fk_hoadon_khuyemai` FOREIGN KEY (`makm`) REFERENCES `khuyenmai` (`makm`),
  ADD CONSTRAINT `fk_hoadon_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`),
  ADD CONSTRAINT `fk_hoadon_phieudatphong` FOREIGN KEY (`madat`) REFERENCES `phieudatphong` (`madat`);

--
-- Các ràng buộc cho bảng `luong`
--
ALTER TABLE `luong`
  ADD CONSTRAINT `luong_ibfk_1` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `pk_nhanvien_chucvu` FOREIGN KEY (`macv`) REFERENCES `chucvu` (`macv`);

--
-- Các ràng buộc cho bảng `nhanxe`
--
ALTER TABLE `nhanxe`
  ADD CONSTRAINT `fk_nhanxe_thexenv` FOREIGN KEY (`mathe`) REFERENCES `thexenv` (`mathe`);

--
-- Các ràng buộc cho bảng `phancong`
--
ALTER TABLE `phancong`
  ADD CONSTRAINT `fk_phancong_calam` FOREIGN KEY (`maca`) REFERENCES `calam` (`maca`),
  ADD CONSTRAINT `fk_phancong_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`);

--
-- Các ràng buộc cho bảng `phieudathang`
--
ALTER TABLE `phieudathang`
  ADD CONSTRAINT `fk_phieudathang_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`);

--
-- Các ràng buộc cho bảng `phieudatphong`
--
ALTER TABLE `phieudatphong`
  ADD CONSTRAINT `pk_phieudatphong_khachhang` FOREIGN KEY (`makhdat`) REFERENCES `khachhang` (`makh`),
  ADD CONSTRAINT `pk_phieudatphonng_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`);

--
-- Các ràng buộc cho bảng `phieuhuy`
--
ALTER TABLE `phieuhuy`
  ADD CONSTRAINT `fk_phieuhuy_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`),
  ADD CONSTRAINT `fk_phieuhuy_phieudatphong` FOREIGN KEY (`madat`) REFERENCES `phieudatphong` (`madat`);

--
-- Các ràng buộc cho bảng `phieunhapkho`
--
ALTER TABLE `phieunhapkho`
  ADD CONSTRAINT `fk_phieunhapkho_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`),
  ADD CONSTRAINT `phieunhapkho_ibfk_1` FOREIGN KEY (`makho`) REFERENCES `kho` (`makho`);

--
-- Các ràng buộc cho bảng `phieuxuatkho`
--
ALTER TABLE `phieuxuatkho`
  ADD CONSTRAINT `fk_phieuxuatkho_kho` FOREIGN KEY (`makho`) REFERENCES `kho` (`makho`),
  ADD CONSTRAINT `fk_phieuxuatkho_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`);

--
-- Các ràng buộc cho bảng `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `FK_phong_loaiphong` FOREIGN KEY (`maloaiph`) REFERENCES `loaiphong` (`maloaiph`);

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `pk_taikhoan_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`);

--
-- Các ràng buộc cho bảng `thexenv`
--
ALTER TABLE `thexenv`
  ADD CONSTRAINT `fk_thexenv_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`);

--
-- Các ràng buộc cho bảng `traxe`
--
ALTER TABLE `traxe`
  ADD CONSTRAINT `fk_traxe_thexenv` FOREIGN KEY (`mathe`) REFERENCES `thexenv` (`mathe`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
