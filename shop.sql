-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 02, 2022 lúc 03:17 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) UNSIGNED NOT NULL,
  `Username` varchar(60) DEFAULT NULL,
  `Password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`Id`, `Username`, `Password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `Id` int(11) UNSIGNED NOT NULL,
  `Ten` varchar(50) DEFAULT NULL,
  `Gia` varchar(60) DEFAULT NULL,
  `MoTa` varchar(255) DEFAULT NULL,
  `TheLoaiId` int(11) UNSIGNED DEFAULT NULL,
  `Anh1` varchar(60) DEFAULT NULL,
  `Anh2` varchar(60) DEFAULT NULL,
  `Anh3` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`Id`, `Ten`, `Gia`, `MoTa`, `TheLoaiId`, `Anh1`, `Anh2`, `Anh3`) VALUES
(1, 'Nike Blazer Low Trắng Đen REP', '280.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 3, 'images/0nike1.jpg', 'images/0nike2.jpg', 'images/0nike3.jpg'),
(9, 'Adidas A102 Xanh Rêu SF', '400.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 2, 'images/1adidas4.jpg', 'images/1adidas5.jpg', 'images/1adidas6.jpg'),
(10, 'Nike Blazer High Trắng Đen REP', '280.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 3, 'images/0nike4.jpg', 'images/0nike5.jpg', 'images/0nike6.jpg'),
(11, 'Adidas EQT Bask Adv Đen Xanh R', '388.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 2, 'images/0adidas7.jpg', 'images/0adidas8.jpg', 'images/0adidas9.jpg'),
(12, 'Nike Air Force 1 Low Dior', '349.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 3, 'images/0nike7.jpg', 'images/0nike8.jpg', 'images/0nike9.jpg'),
(13, 'Nike Jordan 1 Low Đen Cam REP', '349.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 3, 'images/1nike10.jpg', 'images/1nike11.jpg', 'images/1nike12.jpg'),
(14, 'Adidas A102 Đen Trắng SF', '400.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 2, 'images/0adidas10.jpg', 'images/0adidas11.jpg', 'images/0adidas12.jpg'),
(15, 'Nike Air Force 1 Low Dior', '349.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 3, 'images/0nike13.jpg', 'images/0nike14.jpg', 'images/0nike15.jpg'),
(16, 'Nike Jordan 1 Low Xanh Dương', '279.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 3, 'images/0nike16.jpg', 'images/0nike17.jpg', 'images/0nike18.jpg'),
(17, 'Vans Vault Slip on Caro', '300.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 4, 'images/00van1.jpg', 'images/00van2.jpg', 'images/00van3.jpg'),
(18, 'Nike Air Force 1 Shadow', '379.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 3, 'images/0nike19.jpg', 'images/0nike20.jpg', 'images/0nike21.jpg'),
(19, 'Nike Jordan 1 High Hồng Đế Nâu', '550.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 3, 'images/1nike22.jpg', 'images/1nike23.jpg', 'images/1nike24.jpg'),
(20, 'Adidas Superstar Trắng Kẻ Đen', '289.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 2, 'images/1adidas1.jpg', 'images/1adidas2.jpg', 'images/1adidas3.jpg'),
(21, 'Adidas Ultra Boost 6.0 Trắng X', '550.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 2, 'images/0adidas22.jpg', 'images/0adidas23.jpg', 'images/0adidas24.jpg'),
(22, 'Adidas A102 Full Black SF', '400.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 2, 'images/0adidas13.jpg', 'images/0adidas14.jpg', 'images/0adidas15.jpg'),
(23, 'Adidas A30 Full Black SF', '400.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 2, 'images/0adidas16.jpg', 'images/0adidas17.jpg', 'images/0adidas18.jpg'),
(24, 'Adidas Tubular Shadow Xám Kem', '450.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 2, 'images/1adidas19.jpg', 'images/1adidas20.jpg', 'images/1adidas21.jpg'),
(25, 'Vans Classic Đen Trắng REP', '300.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 4, 'images/1van4.jpg', 'images/1van5.jpg', 'images/1van6.jpg'),
(26, 'Vans Vault X Fear OF God Trắng', '300.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 4, 'images/0van7.jpg', 'images/0van8.jpg', 'images/0van9.jpg'),
(27, 'Vans Vault Old Skool Đen Trắng', '350.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 4, 'images/1van10.jpg', 'images/1van11.jpg', 'images/1van12.jpg'),
(28, 'Vans Vault Da Lộn Trắng Viền N', '350.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 4, 'images/1van13.jpg', 'images/1van14.jpg', 'images/1van15.jpg'),
(29, 'Vans Vault Old Skool Vải Trắng', '350.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 4, 'images/1van16.jpg', 'images/1van17.jpg', 'images/1van18.jpg'),
(30, 'Vans Vault Da Lộn Trắng Viền X', '350.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 4, 'images/1van19.jpg', 'images/1van20.jpg', 'images/1van21.jpg'),
(31, 'Converse 1970s Đen Cao Cổ REP ', '450.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 4, 'images/0van22.jpg', 'images/0van23.jpg', 'images/0van24.jpg'),
(32, 'New Balance 574 Trắng REP 1:1', '600.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 5, 'images/0balance1.jpg', 'images/0balance2.jpg', 'images/0balance3.jpg'),
(33, 'New Balance 550 Trắng Xanh', '600.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 5, 'images/0balance4.jpg', 'images/0balance5.jpg', 'images/0balance6.jpg'),
(34, 'New Balance 574 Xám REP 1:1', '600.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 5, 'images/0balance7.jpg', 'images/0balance8.jpg', 'images/0balance9.jpg'),
(35, 'New Balance 574 Xám Trắng REP ', '600.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 5, 'images/0balance10.jpg', 'images/0balance11.jpg', 'images/0balance12.jpg'),
(36, 'New Balance 574 Xanh Dương REP', '600.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 5, 'images/0balance13.jpg', 'images/0balance14.jpg', 'images/0balance15.jpg'),
(37, 'New Balance 300 Pro Court Kem ', '600.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 5, 'images/0balance16.jpg', 'images/0balance17.jpg', 'images/0balance18.jpg'),
(38, 'New Balance 574 Xám Đỏ REP 1:1', '600.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 5, 'images/0balance19.jpg', 'images/0balance20.jpg', 'images/0balance21.jpg'),
(39, 'New Balance 300 Pro Court Kem ', '600.000VNĐ', 'Chất liệu cao cấp, bền đẹp theo thời gian. Thiết kế thời trang. Kiểu dáng phong cách. Độ bền cao. Dễ phối đồ.', 5, 'images/0balance22.jpg', 'images/0balance23.jpg', 'images/0balance24.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `Id` int(11) UNSIGNED NOT NULL,
  `Ten` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`Id`, `Ten`) VALUES
(2, 'ADIDAS'),
(3, 'NIKE'),
(4, 'VANS'),
(5, 'BALANCE');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `SanPhamId` (`TheLoaiId`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `Id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `Id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`TheLoaiId`) REFERENCES `theloai` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
