
-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2017 at 03:32 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c9`
--

-- --------------------------------------------------------

--
-- Table structure for table `cthoadon`
--

CREATE TABLE `cthoadon` (
  `macthoadon` int(11) NOT NULL,
  `mahoadon` int(11) NOT NULL,
  `imei_may` varchar(50) UNIQUE NOT NULL,
  `gia` int(11) NOT NULL,
  `trangthai` bit(1) not null,
  `ghichu` text,
  `locked` bit(1) not null
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `ctphieudat`
--

CREATE TABLE `ctphieudat` (
  `mactphieudat` int(11) NOT NULL,
  `maphieudat` int(11) NOT NULL,
  `masanphamtuychon` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `trangthai` bit(1) NOT NULL,
  `locked` bit(1) NOT NULL DEFAULT b'0',
  `ghichu` varchar(200) NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB;


-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `mahoadon` int(11) NOT NULL,
  `manhanvienlap` varchar(50) NOT NULL,
  `ngaylap` date NOT NULL,
  `user_khachhang` varchar(50) NOT NULL,
  `ngaykichhoat` date DEFAULT NULL,
  `hanbaohanh` date DEFAULT NULL,
  `ghichu` text,
  `trangthai` bit(1),
  `locked` bit(1) NOT NULL,
  `maphieudat` int(11) default null,
  `trangthaigiaohang` int(1) default 0,
  `tonggia` double not null
) ENGINE=InnoDB;

-- --------------------------------------------------------


--
-- Table structure for table `ketnoi`
--

CREATE TABLE `ketnoi` (
  `maketnoi` varchar(20) NOT NULL,
  `wlan` varchar(40) DEFAULT NULL,
  `bluetooth` varchar(20) DEFAULT NULL,
  `gps` varchar(40) DEFAULT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `kho`
--

CREATE TABLE `kho` (
  `imei_may` varchar(50) NOT NULL,
  `masanphamtuychon` int(11) NOT NULL,
  `trangthaiban` bit(1) NOT NULL,
  `trangthaikichhoat` bit(1) NOT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------
-- --------------------------------------------------------

--
-- Table structure for table `phieuchi`
--

CREATE TABLE `phieuchi` (
  `maphieuchi` int(11) NOT NULL,
  `maphieunhap` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `ngaylap` date NOT NULL,
  `nhanvienlap` varchar(50) NOT NULL,
  `trangthai` bit(1) NOT NULL,
  `locked` bit(1) NOT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `phieudat`
--

CREATE TABLE `phieudat` (
  `maphieudat` int(11) NOT NULL,
  `user_khachhang` varchar(50) NOT NULL,
  `ngaylap` date NOT NULL,
  `trangthai` bit(1) NOT NULL,
  `locked` bit(1) NOT NULL,
  `ghichu` text NOT NULL,
  `tonggia` double NOT NULL,
   primary key(maphieudat)
) ENGINE=InnoDB ;

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `maphieunhap` int(11) NOT NULL,
  `imei_may` varchar(50) NOT NULL,
  `masanphamtuychon` int(11) NOT NULL,
  `ngaylap` date NOT NULL,
  `nhanvienlap` varchar(50) NOT NULL,
  `gia` int(11) NOT NULL,
  `xacnhan` bit(1) NOT NULL,
  `locked` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `phieuthu`
--

CREATE TABLE `phieuthu` (
  `maphieuthu` int(11) NOT NULL,
  `mahoadon` int(11) NOT NULL,
  `manhanvienlap` varchar(30) NOT NULL,
  `ngaylap` date NOT NULL,
  `imei_may` varchar(50) NOT NULL,
  `gia` int(11) NOT NULL,
  `locked` bit(1) DEFAULT b'0',
  `note` varchar(200) NOT NULL,
  `status` bit(1) NOT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `maphieuxuat` int(11) NOT NULL,
  `mahoadon` int(11) NOT NULL,
  `manguoilap` varchar(50) NOT NULL,
  `ngaylap` date NOT NULL,
  `imei_may` varchar(50) NOT NULL,
  `locked` bit(1) NOT NULL DEFAULT b'0',
  `note` varchar(200) DEFAULT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` varchar(20) NOT NULL,
  `tensp` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `kichthuocman` varchar(20) DEFAULT NULL,
  `thongsoman` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `pin` varchar(20) DEFAULT NULL,
  `macameratruoc` varchar(10) DEFAULT NULL,
  `macamerasau` varchar(10) DEFAULT NULL,
  `kichthuoc` varchar(20) DEFAULT NULL,
  `khoiluong` varchar(10) DEFAULT NULL,
  `thoidiemramat` varchar(10) DEFAULT NULL,
  `chipset` varchar(20) DEFAULT NULL,
  `tscpu` varchar(10) DEFAULT NULL,
  `bonhoram` varchar(10) DEFAULT NULL,
  `ketnoi` varchar(10) DEFAULT NULL,
  `hedieuhanh` varchar(10) DEFAULT NULL,
  `baomatvantay` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `chongnuoc` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `anhdaidien` varchar(100) DEFAULT NULL,
  `dsanhlienquan` text,
  `dongsp_catalog` varchar(40) DEFAULT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham_tuychon`
--

CREATE TABLE `sanpham_tuychon` (
  `ma_sp` varchar(20) NOT NULL,
  `ma_tuy_chon` varchar(20) NOT NULL,
  `masanphamtuychon` int(11) NOT NULL,
  `soluong` double DEFAULT NULL,
  `giasanpham` double DEFAULT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `mataikhoan` int(11) NOT NULL,
  `username` varchar(50) unique NOT NULL,
  `password` text NOT NULL,
  `hovaten` varchar(100) NOT NULL,
  `sinhnhat` date NOT NULL,
  `gioitinh` bit(1) NOT NULL,
  `sodienthoai` varchar(12) unique NOT NULL,
  `email` varchar(200) unique NOT NULL,
  `diachi` varchar(200) unique NOT NULL,
  `loaitaikhoan` int(11) NOT NULL
) ENGINE=InnoDB;

-- --------------------------------------------------------

--
-- Table structure for table `thongsocamera`
--

CREATE TABLE `thongsocamera` (
  `macamera` varchar(10) NOT NULL,
  `diemanh` int(11) DEFAULT NULL,
  `thongsocoban` varchar(100) DEFAULT NULL,
  `dacdiem` varchar(100) DEFAULT NULL
) ENGINE=InnoDB;
-- --------------------------------------------------------

--
-- Table structure for table `tuychon`
--

CREATE TABLE `tuychon` (
  `matuychon` varchar(20) NOT NULL,
  `mausac` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `bonhotrong` varchar(20) DEFAULT NULL
) ENGINE=InnoDB;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cthoadon`
--
ALTER TABLE `cthoadon`
  ADD PRIMARY KEY (`macthoadon`);

--
-- Indexes for table `ctphieudat`
--
ALTER TABLE `ctphieudat`
  ADD PRIMARY KEY (`mactphieudat`);


-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahoadon`);

--
-- Indexes for table `ketnoi`
--
ALTER TABLE `ketnoi`
  ADD PRIMARY KEY (`maketnoi`);

--
-- Indexes for table `kho`
--
ALTER TABLE `kho`
  ADD PRIMARY KEY (`imei_may`);


--
-- Indexes for table `phieuchi`
--
ALTER TABLE `phieuchi`
  ADD PRIMARY KEY (`maphieuchi`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`maphieunhap`);

--
-- Indexes for table `phieuthu`
--
ALTER TABLE `phieuthu`
  ADD PRIMARY KEY (`maphieuthu`);

--
-- Indexes for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`maphieuxuat`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`);

--
-- Indexes for table `sanpham_tuychon`
--
ALTER TABLE `sanpham_tuychon`
  ADD PRIMARY KEY (`ma_sp`,`ma_tuy_chon`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`mataikhoan`);

--
-- Indexes for table `thongsocamera`
--
ALTER TABLE `thongsocamera`
  ADD PRIMARY KEY (`macamera`);

--
-- Indexes for table `tuychon`
--
ALTER TABLE `tuychon`
  ADD PRIMARY KEY (`matuychon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- unique ---
alter table sanpham_tuychon
add unique (masanphamtuychon);

alter table taikhoan
add unique (username);


alter table phieunhap
add unique (imei_may);

-- foreign key -----

alter table sanpham
add constraint fk_sanpham_thongsocamera_truoc foreign key(macameratruoc)
references thongsocamera(macamera);

alter table sanpham
add constraint fk_sanpham_ketnoi foreign key(ketnoi)
references ketnoi(maketnoi);

alter table sanpham
add constraint fksanpham_thongsocamera_sau foreign key(macamerasau)
references thongsocamera(macamera);





alter table sanpham_tuychon
add constraint fk_sanpham_tuychon_sanpham foreign key(ma_sp)
references sanpham(masp);

alter table sanpham_tuychon
add constraint fk_sanpham_tuychon_tuychon foreign key(ma_tuy_chon)
references tuychon(matuychon);




alter table hoadon
add constraint fk_hoadon_nhanvien foreign key(manhanvienlap)
references taikhoan(username);

alter table hoadon
add constraint fk_hoadon_khachhang foreign key(user_khachhang)
references taikhoan(username);

alter table hoadon
add constraint fk_hoadon_phieudat foreign key(maphieudat)
references phieudat(maphieudat);




alter table cthoadon
add constraint fk_cthoadon_hoadon foreign key(mahoadon)
references hoadon(mahoadon);





alter table phieudat
add constraint fk_phieudat_taikhoan foreign key(user_khachhang)
references taikhoan(username);




alter table ctphieudat
add constraint fk_ctphieudat_phieudat foreign key(maphieudat)
references phieudat(maphieudat);

alter table ctphieudat
add constraint fk_ctphieudat_sanpham_tuychon foreign key(masanphamtuychon)
references sanpham_tuychon(masanphamtuychon);





alter table phieuthu
add constraint fk_phieuthu_taikhoan foreign key(manhanvienlap)
references taikhoan(username);

alter table phieuthu
add constraint fk_phieuthu_hoadon foreign key(mahoadon)
references hoadon(mahoadon);

alter table phieuthu
add constraint fk_phieuthu_kho foreign key(imei_may)
references kho(imei_may);




alter table phieuxuat
add constraint fk_phieuxuat_taikhoan foreign key(manguoilap)
references taikhoan(username);

alter table phieuxuat
add constraint fk_phieuxuat_hoadon foreign key(mahoadon)
references hoadon(mahoadon);

alter table phieuxuat
add constraint fk_phieuxuat_kho foreign key(imei_may)
references kho(imei_may);





alter table kho
add constraint fk_kho_sanpham_tuychon foreign key(masanphamtuychon)
references sanpham_tuychon (masanphamtuychon);

alter table kho
add constraint fk_kho_phieunhap foreign key(imei_may)
references phieunhap(imei_may);





alter table phieunhap
add constraint fk_phieunhap_sanpham_tuychon foreign key(masanphamtuychon)
references sanpham_tuychon(masanphamtuychon);


alter table phieunhap
add constraint fk_phieunhap_taikhoan foreign key(nhanvienlap)
references taikhoan(username);




alter table phieuchi
add constraint fk_phieuchi_phieunhap foreign key(maphieunhap)
references phieunhap(maphieunhap);

alter table phieuchi
add constraint fk_phieuchi_taikhoan foreign key(nhanvienlap)
references taikhoan(username);


