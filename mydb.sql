-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 27, 2019 lúc 05:51 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_todio`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anh`
--

CREATE TABLE `anh` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_goitin` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `anhGT` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `anh`
--

INSERT INTO `anh` (`id`, `id_goitin`, `created_at`, `updated_at`, `anhGT`) VALUES
(1, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietstudio`
--

CREATE TABLE `chitietstudio` (
  `anhcuoi` double DEFAULT NULL,
  `phongsucuoi` double DEFAULT NULL,
  `ngoaicanh` double DEFAULT NULL,
  `baby` double DEFAULT NULL,
  `kyyeu` double DEFAULT NULL,
  `totnghiep` double DEFAULT NULL,
  `sukien` double DEFAULT NULL,
  `sinhnhat` double DEFAULT NULL,
  `thoitrang` double DEFAULT NULL,
  `sanpham` double DEFAULT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitietstudio`
--

INSERT INTO `chitietstudio` (`anhcuoi`, `phongsucuoi`, `ngoaicanh`, `baby`, `kyyeu`, `totnghiep`, `sukien`, `sinhnhat`, `thoitrang`, `sanpham`, `idUser`) VALUES
(5.6, 4.5, 0, 0, 0, 0, 4.1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `goitin`
--

CREATE TABLE `goitin` (
  `id` int(10) UNSIGNED NOT NULL,
  `TieuDe` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `TieuDeKhongDau` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `TomTat` text COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Gia` double NOT NULL DEFAULT '0',
  `Hinh` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `NoiBat` int(11) NOT NULL DEFAULT '0',
  `SoLuotXem` int(11) NOT NULL DEFAULT '0',
  `idUser` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` int(6) DEFAULT NULL,
  `tab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `goitin`
--

INSERT INTO `goitin` (`id`, `TieuDe`, `TieuDeKhongDau`, `TomTat`, `NoiDung`, `Gia`, `Hinh`, `NoiBat`, `SoLuotXem`, `idUser`, `created_at`, `updated_at`, `rating`, `tab`) VALUES
(1, 'Ngày Tết', 'ngay-tet', 'Bộ sưu tập ngày tết tuyệt đẹp', '<p>Bộ sưu tập ngày tết tuyệt đẹp</p>', 0, 'bSrD_40590210_2204471292961374_9137069758577901568_o-800x600.jpg', 0, 0, 1, '2019-03-18 14:46:15', '2019-03-18 14:46:15', 0, 0),
(2, 'Ngày Tết', 'ngay-tet', 'Mẫu bao lì xì ngày tết truyền thống', 'Liên hệ ngay để được nhận hỗ trợ với chúng tôi', 0, 'image/goitin/1554258290.jpg', 0, 6, 8, '2019-04-03 02:24:50', '2019-04-21 15:28:47', 0, 0),
(3, 'Bãi Biển', 'bai-bien', 'Album cặp đôi ở bãi biển lung linh', 'album đám cưới ở biển', 0, 'image/goitin/1554259511.jpg', 0, 0, 2, '2019-04-03 02:45:11', '2019-04-03 02:45:11', NULL, 0),
(4, 'Sinh Nhật', 'sinh-nhat', 'Album sinh nhật vui vẻ', 'Khung cảnh đáng nhớ', 0, 'image/goitin/1554259797.jpg', 0, 0, 3, '2019-04-03 02:49:57', '2019-04-03 02:49:57', NULL, 0),
(5, 'Sinh Nhật', 'sinh-nhat', 'Album sinh nhật vui vẻ', 'Khung cảnh đáng nhớ', 0, 'image/goitin/1554259838.jpg', 0, 28, 3, '2019-04-03 02:50:38', '2019-04-21 15:41:57', NULL, 0),
(6, 'Sinh Nhật', 'sinh-nhat', 'Album sinh nhật vui vẻ', 'Khung cảnh đáng nhớ', 0, 'image/goitin/1554259898.jpg', 0, 0, 3, '2019-04-03 02:51:38', '2019-04-03 02:51:38', NULL, 0),
(7, 'Chụp ảnh cưới chuyên nghiệp', 'chup-anh-cuoi-chuyen-nghiep', 'Chụp ảnh cưới chuyên nghiệp', 'Gía rẻ\r\nĐịa điểm tùy chọn với các danh sách được đề xuất', 0, 'image/goitin/1554294208.jpg', 0, 2, 2, '2019-04-03 12:23:28', '2019-04-03 12:35:08', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuvuc`
--

CREATE TABLE `khuvuc` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `TenKhuVuc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuvuc`
--

INSERT INTO `khuvuc` (`id`, `created_at`, `updated_at`, `TenKhuVuc`) VALUES
(1, NULL, NULL, 'Ninh Kiều');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_09_021546_Tao_TheLoai', 1),
(4, '2016_06_09_021813_Tao_GoiTin', 1),
(5, '2016_06_09_022526_Tao_Slide', 1),
(6, '2016_06_09_022904_Tao_Comment', 1),
(7, '2018_10_31_094338_khu_vuc', 1),
(8, '2019_03_24_112542_tao__anh', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenKhongDau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bannerTL` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`, `bannerTL`) VALUES
(1, 'album', 'album', '2019-03-18 14:17:30', '2019-03-18 14:17:30', NULL),
(2, 'Chụp ảnh cưới', 'chup-anh-cuoi', '2019-03-18 14:18:14', '2019-03-18 14:18:14', NULL),
(3, 'Chụp sinh nhật', 'chup-sinh-nhat', '2019-03-18 14:33:17', '2019-03-18 14:33:17', NULL),
(4, 'Tốt nghiệp', 'tot-nghiep', '2019-03-18 14:33:27', '2019-03-18 14:33:27', NULL),
(5, 'Sự kiện', 'su-kien', '2019-03-18 14:33:34', '2019-03-18 14:33:34', NULL),
(6, 'Tốt Nghiệp', 'totnghiep', NULL, NULL, NULL),
(7, '', '', NULL, NULL, NULL),
(8, 'Bao Lì Xì', 'bao-li-xi', '2019-04-03 01:31:00', '2019-04-03 01:31:00', 'image/theloai/banner/1554255060.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `khuvuc_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `intro` text COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` int(6) DEFAULT NULL,
  `SoLuotXem` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `khuvuc_id`, `name`, `email`, `address`, `sdt`, `intro`, `website`, `password`, `avatar`, `banner`, `quyen`, `remember_token`, `created_at`, `updated_at`, `rating`, `SoLuotXem`) VALUES
(36, 1, 'Zik Studio', 'thaibinhblack@gmail.com', 'hẻm 43D, đường 3/2', '123456789', '123', 'facebook.com', '$2y$10$0vIKhnlXOuq0AM2hKpzZNu632tx61YMbc7yMfEjmeHC8/Wu6yUqbK', 'image/profile/ab2.png', '', 0, 'Tgm5k9XFxbdtY0J5NXBcwyMLGSUAoA4LZ83Lj5Dx', '2019-03-18 08:40:06', '2019-04-03 11:23:09', NULL, 0),
(42, 1, 'Tudio Cần Thơ', 'tudiocantho@tudio.com', 'hẻm 43D, đường 3/2', '123456789', 'Tudio chuyên nghiệp', '#', '$2y$10$JMKlE5Elwo2th2abY/Bz/uts3zt/UX.txFKbe/PWNz5sgUbBucM3a', 'image/profile/1-800x600.jpg', '', 0, 'FyjkNtk14SCFlSR7RiP6wyF8tnRBPJKlRvmfWDXR', '2019-04-03 12:19:34', '2019-04-03 12:43:27', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anh`
--
ALTER TABLE `anh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitietstudio`
--
ALTER TABLE `chitietstudio`
  ADD KEY `idUser` (`idUser`);

--
-- Chỉ mục cho bảng `goitin`
--
ALTER TABLE `goitin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goitin_idtheloai_foreign` (`idUser`);

--
-- Chỉ mục cho bảng `khuvuc`
--
ALTER TABLE `khuvuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anh`
--
ALTER TABLE `anh`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `goitin`
--
ALTER TABLE `goitin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `khuvuc`
--
ALTER TABLE `khuvuc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `goitin`
--
ALTER TABLE `goitin`
  ADD CONSTRAINT `goitin_idtheloai_foreign` FOREIGN KEY (`idUser`) REFERENCES `theloai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
