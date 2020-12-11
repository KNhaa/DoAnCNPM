-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 01, 2020 lúc 06:43 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.8

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
('BP', 'Nhân viên phòng bếp', 10000000),
('BV', 'Nhân viên bảo vệ', 8000000),
('GX', 'Nhân viên giữ xe', 6000000),
('KD', 'Nhân viên kinh doanh', 15000000),
('KT', 'Kế toán', 12000000),
('LT', 'Lễ tân', 10000000),
('QL', 'Quản lý', 20000000),
('TK', 'Thủ kho', 10000000),
('TV', 'Nhân viên tạp vụ', 8000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdat`
--

CREATE TABLE `ctdat` (
  `madat` char(15) NOT NULL,
  `maphong` char(10) NOT NULL,
  `dongia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `ctdat`
--

INSERT INTO `ctdat` (`madat`, `maphong`, `dongia`) VALUES
('PD1', '101', 1000000),
('PD1', '102', 1000000),
('PD10', '201', 2000000),
('PD10', '202', 2000000),
('PD10', '203', 2000000),
('PD11', '201', 2000000),
('PD11', '207', 2500000),
('PD2', '110', 1500000),
('PD2', '111', 1500000),
('PD2', '113', 1500000),
('PD3', '103', 1000000),
('PD3', '104', 1000000),
('PD4', '202', 2000000),
('PD4', '203', 2000000),
('PD5', '206', 2500000),
('PD5', '207', 250000),
('PD6', '102', 1000000),
('PD6', '103', 1000000),
('PD7', '101', 1000000),
('PD7', '102', 1000000),
('PD7', '103', 1000000),
('PD8', '104', 1000000),
('PD8', '105', 1000000),
('PD9', '206', 2500000),
('PD9', '207', 2500000);

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

-- Dumping data for table `ctdathang`
--

INSERT INTO `ctdathang` (`mapdh`, `mahang`, `tenhang`, `donvitinh`, `sl`, `thanhtien`) VALUES
('PDH0001', 'HH1', 'Khăn mặt', 'cái', 10, 500000),
('PDH0001', 'HH10', 'Coca Cola', 'Chai', 40, 400000),
('PDH0002', 'HH2', 'Bàn chải đánh răng', 'Cái', 50, 5000000),
('PDH0003', 'HH3', 'Dép', 'Đôi', 4, 100000),
('PDH0003', 'HH5', 'Bao gối', 'Cái', 51, 612000),
('PDH0004', 'HH10', 'Coca Cola', 'Chai', 30, 300000),
('PDH0005', 'HH4', 'Áo choàng tắm', 'Cái', 50, 3750000),
('PDH0006', 'HH7', 'Chăn', 'Cái', 10, 1750000),
('PDH0007', 'HH8', 'Dầu gội', 'tuýp', 20, 300000),
('PDH0008', 'HH5', 'Bao gối', 'Cái', 30, 360000),
('PDH0008', 'HH9', 'Sữa tắm', 'Tuýp', 10, 150000),
('PDH0009', 'HH3', 'Dép', 'Đôi', 60, 1500000),
('PDH0010', 'HH1', 'Khăn mặt', 'Cái', 50, 250000),
('PDH0010', 'HH10', 'Coca Cola', 'Chai', 40, 400000);

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

--
-- Đang đổ dữ liệu cho bảng `ctdvu`
--

INSERT INTO `ctdvu` (`maphieudvu`, `madv`, `ngaysudungdv`, `soluong`, `thanhtien`) VALUES
('PDVU1', 'AnSang', '2020-10-26', 2, 400000),
('PDVU1', 'GiatUi', '2020-10-26', 1, 20000),
('PDVU2', 'AnToi', '2020-11-01', 4, 1000000),
('PDVU2', 'AnToi', '2020-11-02', 4, 1000000),
('PDVU2', 'Casino', '2020-11-03', 2, 500000),
('PDVU3', 'AnSang', '2020-11-06', 2, 500000),
('PDVU3', 'Spa', '2020-11-06', 2, 800000),
('PDVU4', 'AnBuffet', '2020-11-09', 4, 1000000),
('PDVU4', 'AnSang', '2020-11-09', 4, 800000);

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

--
-- Đang đổ dữ liệu cho bảng `ctnhapkho`
--

INSERT INTO `ctnhapkho` (`mapnk`, `mahang`, `slchungtu`, `slthucnhap`, `thanhtien`) VALUES
('PNK0001', 'HH1', 10, 10, 500000),
('PNK0001', 'HH10', 40, 40, 400000),
('PNK0002', 'HH2', 50, 50, 5000000),
('PNK0003', 'HH3', 4, 4, 100000),
('PNK0003', 'HH5', 51, 51, 612000),
('PNK0004', 'HH10', 30, 29, 290000),
('PNK0005', 'HH4', 50, 50, 3750000),
('PNK0006', 'HH7', 10, 10, 1750000),
('PNK0007', 'HH8', 20, 20, 300000),
('PNK0008', 'HH5', 30, 30, 360000),
('PNK0008', 'HH9', 10, 10, 150000),
('PNK0009', 'HH3', 60, 58, 1450000),
('PNK0010', 'HH1', 50, 50, 250000),
('PNK0010', 'HH10', 40, 40, 400000);

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

--
-- Đang đổ dữ liệu cho bảng `ctxuatkho`
--

INSERT INTO `ctxuatkho` (`mapxk`, `mahang`, `slyeucau`, `slthucxuat`, `thanhtien`) VALUES
('PXK1', 'HH10', 20, 20, 200000),
('PXK2', 'HH2', 10, 10, 100000),
('PXK3', 'HH5', 20, 20, 240000),
('PXK4', 'HH8', 5, 5, 40000),
('PXK5', 'HH4', 10, 10, 750000),
('PXK6', 'HH6', 10, 10, 500000);

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
('HH1', 'MK2', 'Khăn mặt', 5000, 'cái', 90),
('HH10', 'MK1', 'Coca Cola', 10000, 'Chai', 100),
('HH11', 'MK1', 'Bánh chà bông Karo', 200000, 'Thùng', 10),
('HH12', 'MK1', 'Rượu vang đỏ Đà Lạt', 300000, 'Chai', 100),
('HH13', 'MK1', 'Bia Heineken không cồn', 50000, 'Thùng', 50),
('HH14', 'MK1', 'Thịt bò Kobe', 1500000, 'Kg', 5),
('HH15', 'MK1', 'Sữa tươi Long Thành', 50000, 'Chai', 150),
('HH2', 'MK2', 'Bàn chải đánh răng', 10000, 'cái', 70),
('HH3', 'MK2', 'Dép', 25000, 'đôi', 125),
('HH4', 'MK2', 'Áo choàng tắm', 75000, 'cái', 200),
('HH5', 'MK2', 'Bao gối', 12000, 'cái', 120),
('HH6', 'MK2', 'Ga giường', 50000, 'cái', 20),
('HH7', 'MK2', 'Chăn', 175000, 'cái', 20),
('HH8', 'MK2', 'Dầu gội', 15000, 'tuýp', 25),
('HH9', 'MK2', 'Sữa tắm', 15000, 'tuýp', 20);

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

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `madat`, `manv`, `makm`, `ngaylaphd`, `tienphong`, `tiendvu`, `tongtien`, `tienkm`, `thuctra`) VALUES
('HD1', 'PD1', 'LT1', 'KM0', '2020-10-30', 1000000, 420000, 1420000, 0, 1420000),
('HD2', 'PD2', 'LT2', 'KM0', '2020-11-04', 13500000, 0, 13500000, 0, 13500000),
('HD3', 'PD3', 'LT2', 'KM0', '2020-11-05', 14000000, 2500000, 16500000, 0, 16500000),
('HD4', 'PD4', 'LT2', 'KM0', '2020-11-07', 6000000, 0, 7300000, 0, 7300000),
('HD5', 'PD5', 'LT1', 'KM0', '2020-11-10', 105000000, 1800000, 106800000, 0, 106800000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` char(15) NOT NULL,
  `hotenkh` varchar(255) NOT NULL,
  `ngaysinh` date NOT NULL,
  `sdt` char(15) NOT NULL,
  `email` char(30) NOT NULL,
  `diachi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`makh`, `hotenkh`, `ngaysinh`, `sdt`, `email`, `diachi`) VALUES
('022987651', 'Nguyễn Hoàng Quỳnh', '1990-01-15', '097822198', 'hanquin@gmail.com', '45 Hoàng Văn Thụ, Tân Bình, HCM'),
('02345694', 'Trần Quốc Văn', '1990-01-15', '0723238120', 'tqvan@gmail.com', '9 Nguyễn Văn Nghi, Gò Vấp, HCM'),
('024877914', 'Trần Nguyễn Phương Nhung', '1990-01-15', '0739256432', 'phuongnhung17@gmail.com', '4 đường số 2, quận 12, HCM'),
('025623341', 'Hà Trần Phương Hằng', '1990-01-15', '0724578224', 'htphang96@gmail.com', '123 Nguyễn Đình Chiểu, quận 3, HCM'),
('026352512', 'Phan Huy Hùng', '1990-01-15', '0928125434', 'hhung@gmail.com', '12 Nguyên Hồng, Tân Bình, HCM'),
('031245692', 'Nguyễn Như Ý', '1990-01-15', '093644128', 'benjamin@gmail.com', ''),
('045613583', 'Nguyễn Thu Hồng', '1990-01-15', '0772287614', 'pinky95@gmail.com', '5/59 Trần Huy Liệu, PN, HCM'),
('31195855', 'Joshua Hong', '1990-01-15', '0732235631', 'jshua32@gmail.com', ''),
('53338006', 'Hoàng Xuân Sang', '1990-01-15', '0725981392', 'sanghx@gmail.com', '');

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
('MK1', 'Thực phẩm', 'A1'),
('MK2', 'Vật dụng phòng', 'A2');

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

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`makm`, `tenkm`, `phantramkm`, `ngaybd`, `ngaykt`) VALUES
('KM0', 'Không có khuyến mãi', 0, '0000-00-00', '0000-00-00');

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
('CC1', 'Phòng cao cấp 1 giường', 2, 30, 2000000, 'phòng đôi dành cho 1 -2 người, không gian thoáng mát, đầy đủ tiện nghi'),
('CC2', 'Phòng cao cấp 2 giường', 4, 35, 2500000, 'phòng đôi dành cho 4 - 6 người, không gian thoáng mát, đầy đủ tiện nghi'),
('TC1', 'Phòng tiêu chuẩn 1 giường', 2, 25, 1000000, 'phòng đơn thường dành cho 1 hoặc 2 người, không gian thoáng mát'),
('TC2', 'Phòng tiêu chuẩn 2 giường', 4, 30, 1500000, 'phòng đôi dành cho 4 - 6 người, không gian thoáng mát'),
('VIP1', 'Phòng VIP 1 giường', 2, 40, 3000000, 'phòng đôi dành cho 1 - 2 người, không gian thoáng mát, đầy đủ tiện nghi, trang thiết bị hiện đại'),
('VIP2', 'Phòng VIP 2 giường', 4, 45, 4000000, 'phòng đôi dành cho 4 - 6 người, không gian thoáng mát, đầy đủ tiện nghi, trang thiết bị hiện đại');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luong`
--

CREATE TABLE `luong` (
  `manv` char(15) NOT NULL,
  `luongcoban` int(11) NOT NULL,
  `tonggiolam` int(11) NOT NULL,
  `tongngaylam` int(11) NOT NULL,
  `tongluong` int(11) NOT NULL,
  `thang` int(2) NOT NULL
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
('BP1', 'BP', 'Trịnh Xuân Thanh', '1979-08-18', 'Nam', '293 Lý Thường Kiệt, Quận 10, TPHCM', '0914928120'),
('BP2', 'BP', 'Nguyễn Thị Ánh Hồng', '1992-11-10', 'Nữ', '124 An Dương Vương, Quận 5, TPHCM', '0381498484'),
('BP3', 'BP', 'Nguyễn Ngọc Bảo Long', '1996-04-23', 'Nam', '4 Hùng Vương, Quận 7, TPHCM', '0923174808'),
('BP4', 'BP', 'Nguyễn Thị Mai', '1989-03-12', 'Nữ', '271 Nguyễn Văn Cừ, Quận 5, TPHCM', '0370278080'),
('BV1', 'BV', 'Phan Tuấn Long', '1989-09-15', 'Nam', '69, Phù Đổng Thiên Vương, Phường 11 Quận 5, TpHCM', '0365784925'),
('BV2', 'BV', 'Trịnh Xuân Hồng', '1992-05-14', 'Nam', '79 Nguyễn Chí Thanh, Quận 10, TPHHCM', '0382799423'),
('GX1', 'GX', 'Hoàng Văn Quý', '1970-09-04', 'Nam', '45 Phan văn Trị, Bình Thạnh ', '0988561243'),
('GX2', 'GX', 'Đỗ Văn Đậu', '1998-11-12', 'Nam', '4 đường số 2, quận 12, HCM', '0933361458'),
('KD1', 'KD', 'Nguyễn Văn An', '1990-10-01', 'Nam', '12 Lý Thường Kiệt,Tân Bình, HCM', '0932234546'),
('KD2', 'KD', 'Nguyễn Thúy Vân', '1994-10-27', 'Nữ', '12 Mai Chí Thọ, quận 2, HCM', '0368221130'),
('KT1', 'KT', 'Trương Quốc An', '1995-05-06', 'Nam', '3 Quang Trung, Gò Vấp, HCM', '0987743332'),
('LT1', 'LT', 'Hồ Ánh Ngọc', '1990-10-06', 'Nữ', '45 Nguyễn Trãi, quận 5, HCM', '0723342331'),
('LT2', 'LT', 'Phạm Anh Thư', '1995-09-03', 'Nữ', '25/56 Tân Kỳ Tân Quý, Tân Phú, HCM', '0258420163'),
('QL1', 'QL', 'Nguyễn Minh Ngọc', '1984-07-01', 'Nữ', '99 Lê Văn Sỹ, quận 3, HCM', '0782664518'),
('TK1', 'TK', 'Trần Trọng Trí', '1985-05-07', 'Nam', '7 Phan Xích Long, Phú Nhuận, HCM', '0334677122'),
('TK2', 'TK', 'Từ Quảng Long', '1990-07-03', 'Nam', '42 Tôn Thấp Thiệp, quận 1, HCM', '0983445678'),
('TV1', 'TV', 'Nguyễn Thị Xuân', '1989-11-19', 'Nữ', '69 Ngô Quyền, Quận 5, TPHCM', '0397421798'),
('TV2', 'TV', 'Trần Thị Yến', '1991-05-12', 'Nữ', '339 An Dương Vương, Phường 4, Quận 5, TPHCM', '0911692450');

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
('HC1C', 'LT1', '0000-00-00', '0000-00-00', 0),
('PV1', 'GX1', '0000-00-00', '0000-00-00', 0);

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

--
-- Đang đổ dữ liệu cho bảng `phieudathang`
--

INSERT INTO `phieudathang` (`mapdh`, `manv`, `tongsl`, `tongtien`, `tennhacc`, `thoigiangiao`) VALUES
('PDH0001', 'TK1', 50, 900000, 'Mỹ An', '2020-06-03'),
('PDH0002', 'TK1', 50, 500000, 'Mỹ Nhung', '2020-07-13'),
('PDH0003', 'TK2', 55, 712000, 'Mỹ An', '2020-07-31'),
('PDH0004', 'TK2', 30, 300000, 'Mỹ Nhung', '2020-08-02'),
('PDH0005', 'TK1', 50, 3750000, 'Mỹ An', '2020-09-09'),
('PDH0006', 'TK1', 10, 1750000, 'Mỹ An', '2020-09-16'),
('PDH0007', 'TK2', 20, 300000, 'Thành Minh', '2020-09-22'),
('PDH0008', 'TK2', 40, 510000, 'Minh Bảo', '2020-11-01'),
('PDH0009', 'TK2', 60, 1500000, 'Bảo Minh', '2020-11-02'),
('PDH0010', 'TK2', 50, 250000, 'Bảo Bảo', '2020-11-16');


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

--
-- Đang đổ dữ liệu cho bảng `phieudatphong`
--

INSERT INTO `phieudatphong` (`madat`, `makhdat`, `manv`, `ngaydatphong`, `ngayden`, `ngaydi`, `tienphong`, `tiencoc`, `tennguoiluutru`, `cmndnguoiluutru`, `trangthai`) VALUES
('PD1', '02345694', 'LT1', '2020-10-20', '2020-10-25', '2020-10-30', 2000000, 1000000, '', '', 'Đã nhận phòng'),
('PD10', '022987651', 'LT1', '2020-11-26', '2020-12-01', '2020-12-02', 6000000, 3000000, '', '', 'Chờ nhận phòng'),
('PD11', '022987651', 'LT1', '2020-11-27', '2020-11-28', '2020-11-30', 9000000, 4500000, '', '', 'Đã nhận phòng'),
('PD2', '025623341', 'LT1', '2020-11-01', '2020-11-01', '2020-11-04', 13500000, 0, 'Lê Văn Tài', '024651293', 'Đã nhận phòng'),
('PD3', '024877914', 'LT1', '2020-11-01', '2020-11-01', '2020-11-08', 14000000, 0, '', '', 'Đã nhận phòng'),
('PD4', '026352512', 'LT2', '2020-11-02', '2020-11-05', '2020-11-08', 12000000, 6000000, 'Trần Đăng Khoa', '026745691', 'Đã nhận phòng'),
('PD5', '045613583', 'LT2', '2020-11-09', '2020-11-09', '2020-11-30', 5000000, 0, '', '', 'Đã nhận phòng'),
('PD6', '31195855', 'LT2', '2020-11-09', '2020-11-12', '2020-11-15', 6000000, 3000000, 'Lương Văn Quá', '024585693', 'Đã hủy'),
('PD7', '026352512', 'LT2', '2020-11-10', '2020-11-15', '2020-11-18', 9000000, 0, 'Ngô Minh Huy', '023674532', 'Chờ nhận phòng'),
('PD8', '031245692', 'LT2', '2020-11-12', '2020-11-20', '2020-11-25', 10000000, 5000000, 'Lê Đại Dương', '026782462', 'Chờ nhận phòng'),
('PD9', '031245692', 'LT2', '2020-11-12', '2020-11-13', '2020-11-16', 0, 0, '', '', 'Chờ nhận phòng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudvu`
--

CREATE TABLE `phieudvu` (
  `maphieudvu` char(15) NOT NULL,
  `madat` char(15) NOT NULL,
  `ngaylapphieu` date NOT NULL,
  `tongtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `phieudvu`
--

INSERT INTO `phieudvu` (`maphieudvu`, `madat`, `ngaylapphieu`, `tongtien`) VALUES
('PDVU1', 'PD1', '2020-10-26', 420000),
('PDVU2', 'PD3', '2020-11-01', 2500000),
('PDVU3', 'PD4', '2020-11-06', 1300000),
('PDVU4', 'PD5', '2020-11-09', 1800000);

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

--
-- Đang đổ dữ liệu cho bảng `phieuhuy`
--

INSERT INTO `phieuhuy` (`mahuy`, `madat`, `manv`, `ngayhuy`, `lydo`) VALUES
('PHUY1', 'PD6', 'LT2', '2020-11-11', 'Khách bận việc đột xuất, không tới nhận phòng được');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhapkho`
--

CREATE TABLE `phieunhapkho` (
  `mapnk` char(15) NOT NULL,
  `makho` char(15) NOT NULL,
  `manv` char(15) NOT NULL,
  `ngaynhapkho` date NOT NULL,
  `tongsltrenchungtu` int(11) NOT NULL,
  `tongslthucnhap` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `tennguoigiao` varchar(255) NOT NULL,
  `ghichu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `phieunhapkho`
--

INSERT INTO `phieunhapkho` (`mapnk`, `makho`, `manv`, `ngaynhapkho`, `tongsltrenchungtu`, `tongslthucnhap`, `tongtien`, `tennguoigiao`, `ghichu`) VALUES
('PNK0001', 'MK2', 'TK1', '2020-06-03', 50, 50, 900000, 'Thái Phùng Bảo Minh', ''),
('PNK0002', 'MK1', 'TK2', '2020-07-13', 50, 50, 500000, 'Trần Mạnh Hùng', ''),
('PNK0003', 'MK1', 'TK1', '2020-07-31', 55, 55, 712000, 'Nguyễn Mạnh Hùng', ''),
('PNK0004', 'MK2', 'TK2', '2020-08-02', 30, 29, 290000, 'Trần Văn Chiến', ''),
('PNK0005', 'MK2', 'TK1', '2020-09-09', 50, 50, 3750000, 'Nguyễn Văn Chiến', ''),
('PNK0006', 'MK2', 'TK1', '2020-09-16', 10, 10, 1750000, 'Phùng Thái Bảo', ''),
('PNK0007', 'MK2', 'TK1', '2020-09-22', 20, 20, 300000, 'Nguyễn Văn Chiến', ''),
('PNK0008', 'MK1', 'TK1', '2020-11-01', 40, 40, 510000, 'Huỳnh Văn Bảy', ''),
('PNK0009', 'MK2', 'TK2', '2020-11-02', 60, 58, 1450000, 'Huỳnh Văn BẢy', ''),
('PNK0010', 'MK1', 'TK2', '2020-11-16', 60, 60, 350000, 'Trần Văn Chiến', '');

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

--
-- Đang đổ dữ liệu cho bảng `phieuxuatkho`
--

INSERT INTO `phieuxuatkho` (`mapxk`, `makho`, `manv`, `ngayxuatkho`, `tongslyeucau`, `tongslthucxuat`, `tongtien`, `manv_nhanhang`, `lydoxuatkho`) VALUES
('PXK1', 'MK1', 'TK1', '2020-09-10', 20, 20, 200000, 'BP3', 'Thực phẩm nấu ăn'),
('PXK2', 'MK1', 'TK1', '2020-09-24', 10, 10, 100000, 'BP4', 'Thực phẩm nấu ăn'),
('PXK3', 'MK1', 'TK2', '2020-09-29', 20, 20, 240000, 'BP4', 'Thực phẩm nấu ăn'),
('PXK4', 'MK2', 'TK1', '2020-10-08', 5, 5, 40000, 'TV1', 'Thiếu vật dụng'),
('PXK5', 'MK2', 'TK2', '2020-10-20', 10, 10, 750000, 'GX1', 'Thiếu dụng cụ'),
('PXK6', 'MK1', 'TK1', '2020-10-30', 10, 10, 500000, 'BP2', 'Thực phẩm nấu ăn');

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

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`maphong`, `maloaiph`, `tang`, `mota`) VALUES
('101', 'TC1', 1, 'Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, hệ thống điều hòa'),
('102', 'TC1', 1, 'Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, hệ thống điều hòa'),
('103', 'TC1', 1, 'Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, hệ thống điều hòa'),
('104', 'TC1', 1, 'Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, hệ thống điều hòa'),
('105', 'TC1', 1, 'Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, hệ thống điều hòa'),
('106', 'TC1', 1, 'Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, hệ thống điều hòa'),
('107', 'TC1', 1, 'Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, hệ thống điều hòa'),
('108', 'TC2', 1, 'Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, hệ thống điều hòa'),
('109', 'TC2', 1, 'Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, hệ thống điều hòa'),
('110', 'TC2', 1, 'Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, hệ thống điều hòa'),
('111', 'TC2', 1, 'Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, hệ thống điều hòa'),
('112', 'TC2', 1, 'Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, hệ thống điều hòa'),
('113', 'TC2', 1, 'Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, hệ thống điều hòa'),
('114', 'TC2', 1, 'Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, hệ thống điều hòa'),
('115', 'TC2', 1, 'Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, hệ thống điều hòa'),
('201', 'CC1', 2, 'View đẹp, sofa, bàn cafe, mini bar, Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, bồn tắm, hệ thống điều hòa'),
('202', 'CC1', 2, 'View đẹp, sofa, bàn cafe, mini bar, Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, bồn tắm, hệ thống điều hòa'),
('203', 'CC1', 2, 'View đẹp, sofa, bàn cafe, mini bar, Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, bồn tắm, hệ thống điều hòa'),
('204', 'CC1', 2, 'View đẹp, sofa, bàn cafe, mini bar, Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, bồn tắm, hệ thống điều hòa'),
('205', 'CC1', 2, 'View đẹp, sofa, bàn cafe, mini bar, Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, bồn tắm, hệ thống điều hòa'),
('206', 'CC2', 2, 'View đẹp, sofa, bàn cafe, mini bar, Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, bồn tắm, hệ thống điều hòa'),
('207', 'CC2', 2, 'View đẹp, sofa, bàn cafe, mini bar, Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, bồn tắm, hệ thống điều hòa'),
('208', 'CC2', 2, 'View đẹp, sofa, bàn cafe, mini bar, Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, bồn tắm, hệ thống điều hòa'),
('209', 'CC2', 2, 'View đẹp, sofa, bàn cafe, mini bar, Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, bồn tắm, hệ thống điều hòa'),
('210', 'CC2', 2, 'View đẹp, sofa, bàn cafe, mini bar, Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, bồn tắm, hệ thống điều hòa'),
('301', 'CC2', 3, 'View đẹp, sofa, bàn cafe, mini bar, Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, bồn tắm, hệ thống điều hòa'),
('302', 'CC2', 3, 'View đẹp, sofa, bàn cafe, mini bar, Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, bồn tắm, hệ thống điều hòa'),
('303', 'CC2', 3, 'View đẹp, sofa, bàn cafe, mini bar, Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, bồn tắm, hệ thống điều hòa'),
('304', 'CC2', 3, 'View đẹp, sofa, bàn cafe, mini bar, Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, bồn tắm, hệ thống điều hòa'),
('305', 'CC2', 3, 'View đẹp, sofa, bàn cafe, mini bar, Wifi miễn phí, TV, phòng tắm vòi sen nóng/lạnh, bồn tắm, hệ thống điều hòa'),
('306', 'VIP1', 3, 'View đẹp, cách âm tốt, mini bar, tủ lạnh, Wifi miễn phí, TV, bồn tắm Jacuzzi, vòi sen nóng/lạnh, máy sấy tóc'),
('307', 'VIP1', 3, 'View đẹp, cách âm tốt, mini bar, tủ lạnh, Wifi miễn phí, TV, bồn tắm Jacuzzi, vòi sen nóng/lạnh, máy sấy tóc'),
('308', 'VIP2', 3, 'View đẹp, cách âm tốt, mini bar, khu vực tiếp khách, tủ lạnh, Wifi miễn phí, TV, bồn tắm Jacuzzi, vòi sen nóng/lạnh, máy sấy tóc'),
('309', 'VIP2', 3, 'View đẹp, cách âm tốt, mini bar, khu vực tiếp khách, tủ lạnh, Wifi miễn phí, TV, bồn tắm Jacuzzi, vòi sen nóng/lạnh, máy sấy tóc'),
('310', 'VIP2', 3, 'View đẹp, cách âm tốt, mini bar, khu vực tiếp khách, tủ lạnh, Wifi miễn phí, TV, bồn tắm Jacuzzi, vòi sen nóng/lạnh, máy sấy tóc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `qlxe`
--

CREATE TABLE `qlxe` (
  `maxe` char(15) NOT NULL,
  `thoigianra` datetime NOT NULL,
  `thoigianvao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `qlxe`
--

INSERT INTO `qlxe` (`maxe`, `thoigianra`, `thoigianvao`) VALUES
('001', '2020-11-14 16:46:30', '2020-12-15 07:28:10'),
('002', '2020-12-07 06:28:10', '2020-12-10 08:18:10'),
('003', '2020-12-02 12:29:10', '2020-12-03 04:29:10'),
('004', '2020-12-02 12:29:34', '2020-12-04 06:29:34'),
('005', '2020-12-03 07:29:58', '2020-12-05 06:16:58'),
('006', '2020-12-08 06:30:27', '2020-12-09 04:30:27'),
('007', '2020-12-02 12:30:49', '0000-00-00 00:00:00');

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
  `loaixe` varchar(255) NOT NULL,
  `maxe` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thexekhach`
--

INSERT INTO `thexekhach` (`mathe`, `soxe`, `loaixe`, `maxe`) VALUES
('01', '59A', 'tay ga ', '001'),
('03', '13A', 'xe số', '003');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thexenv`
--

CREATE TABLE `thexenv` (
  `mathe` char(15) NOT NULL,
  `manv` char(15) NOT NULL,
  `soxe` char(15) NOT NULL,
  `loaixe` varchar(255) NOT NULL,
  `maxe` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thexenv`
--

INSERT INTO `thexenv` (`mathe`, `manv`, `soxe`, `loaixe`, `maxe`) VALUES
('02', 'BP2', '45H', 'ô tô', '002'),
('04', 'BP4', '25K', 'tay ga ', '004'),
('05', 'BV1', '59Y', 'xe số', '005'),
('06', 'BV2', '12L', 'tay ga ', '006'),
('07', 'GX1', '56T', 'ô tô', '007');

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
  ADD KEY `fk_ctdat_phong` (`maphong`);

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
  ADD PRIMARY KEY (`maphieudvu`,`madv`,`ngaysudungdv`),
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
  ADD PRIMARY KEY (`maphieudvu`),
  ADD KEY `fk_phieudvu_phieudatphong` (`madat`);

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
  ADD KEY `fk_phieuxuatkho_nhanvien` (`manv`),
  ADD KEY `fk_phieuxutkho_nhanvien2` (`manv_nhanhang`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`maphong`),
  ADD KEY `FK_phong_loaiphong` (`maloaiph`);

--
-- Chỉ mục cho bảng `qlxe`
--
ALTER TABLE `qlxe`
  ADD PRIMARY KEY (`maxe`);

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
  ADD PRIMARY KEY (`mathe`),
  ADD KEY `maxe` (`maxe`);

--
-- Chỉ mục cho bảng `thexenv`
--
ALTER TABLE `thexenv`
  ADD PRIMARY KEY (`mathe`),
  ADD KEY `fk_thexenv_nhanvien` (`manv`),
  ADD KEY `maxe` (`maxe`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ctdat`
--
ALTER TABLE `ctdat`
  ADD CONSTRAINT `fk_ctdat_phieudatphong` FOREIGN KEY (`madat`) REFERENCES `phieudatphong` (`madat`),
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
-- Các ràng buộc cho bảng `phieudvu`
--
ALTER TABLE `phieudvu`
  ADD CONSTRAINT `fk_phieudvu_phieudatphong` FOREIGN KEY (`madat`) REFERENCES `phieudatphong` (`madat`);

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
  ADD CONSTRAINT `fk_phieuxuatkho_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`),
  ADD CONSTRAINT `fk_phieuxutkho_nhanvien2` FOREIGN KEY (`manv_nhanhang`) REFERENCES `nhanvien` (`manv`);

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
-- Các ràng buộc cho bảng `thexekhach`
--
ALTER TABLE `thexekhach`
  ADD CONSTRAINT `thexekhach_ibfk_1` FOREIGN KEY (`maxe`) REFERENCES `qlxe` (`maxe`);

--
-- Các ràng buộc cho bảng `thexenv`
--
ALTER TABLE `thexenv`
  ADD CONSTRAINT `thexenv_ibfk_1` FOREIGN KEY (`maxe`) REFERENCES `qlxe` (`maxe`),
  ADD CONSTRAINT `thexenv_ibfk_2` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
