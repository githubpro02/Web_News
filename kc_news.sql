-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2023 lúc 11:48 AM
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
-- Cơ sở dữ liệu: `kc_news`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluans`
--

CREATE TABLE `binhluans` (
  `id` int(10) UNSIGNED NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `ngaydang` varchar(255) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_tintuc` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `trangthai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluans`
--

INSERT INTO `binhluans` (`id`, `noidung`, `ngaydang`, `id_user`, `id_tintuc`, `created_at`, `updated_at`, `trangthai`) VALUES
(16, 'test', '2023-10-25', 18, 103, '2023-10-25 07:03:47', '2023-10-25 15:03:27', 1),
(17, 'Hay', '2023-10-25', 25, 121, '2023-10-25 15:52:05', '2023-10-25 15:52:05', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Thế giới', 'the-gioi', '2022-05-02 05:20:35', '2022-05-10 07:11:23'),
(2, 'Xã hội', 'xa-hoi', '2022-05-02 05:20:45', '2022-05-10 07:11:14'),
(3, 'Kinh tế', 'kinh-te', '2022-05-02 05:20:53', '2022-05-10 07:11:02'),
(4, 'Văn hóa', 'van-hoa', '2022-05-02 05:21:00', '2022-05-02 05:21:00'),
(5, 'Giáo dục', 'giao-duc', '2022-05-02 05:21:06', '2022-05-02 05:21:06'),
(6, 'Thể thao', 'the-thao', '2022-05-02 05:21:16', '2022-05-02 05:21:16'),
(7, 'Giải trí', 'giai-tri', '2022-05-02 05:21:23', '2022-05-02 05:21:23'),
(8, 'Pháp luật', 'phap-luat', '2022-05-02 05:21:30', '2022-05-02 05:21:30'),
(9, 'Công nghệ', 'cong-nghe', '2022-05-02 05:21:35', '2022-05-02 05:21:35'),
(10, 'Khoa học', 'khoa-hoc', '2022-05-02 05:21:41', '2022-05-02 05:21:41'),
(11, 'Đời sống', 'doi-song', '2022-05-02 05:23:48', '2022-05-02 05:23:48'),
(12, 'Xe cộ', 'xe-co', '2022-05-02 05:23:54', '2022-05-02 05:23:54'),
(13, 'Nhà đất', 'nha-dat', '2022-05-02 05:24:00', '2023-10-25 08:34:33'),
(14, 'UFO', 'ufo', '2023-10-25 08:44:33', '2023-10-25 08:44:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `like` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_tintuc` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `likes`
--

INSERT INTO `likes` (`id`, `like`, `id_user`, `id_tintuc`, `created_at`, `updated_at`) VALUES
(13, 1, 18, 110, '2023-10-25 11:54:59', '2023-10-25 11:54:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_28_130631_create_categories_table', 1),
(6, '2022_04_28_134857_create_permission_tables', 1),
(7, '2022_04_29_080906_create_properti_categories_table', 1),
(8, '2022_04_29_081106_create_tintucs_table', 1),
(9, '2022_05_03_011956_create_tintucs_table', 2),
(10, '2022_05_03_100857_create_binhluans_table', 3),
(11, '2022_05_03_104202_create_likes_table', 4),
(12, '2022_05_03_104422_create_likes_table', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `properti_categories`
--

CREATE TABLE `properti_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `properti_categories`
--

INSERT INTO `properti_categories` (`id`, `title`, `slug`, `id_category`, `created_at`, `updated_at`) VALUES
(1, 'Thời sự', 'thoi-su', 2, '2022-05-02 05:24:20', '2022-05-02 05:24:20'),
(2, 'Giao thông', 'giao-thong', 2, '2022-05-02 05:24:28', '2022-05-02 05:24:28'),
(3, 'Môi trường', 'moi-truong', 2, '2022-05-02 05:24:39', '2022-05-02 05:24:39'),
(4, 'Khí Hậu', 'khi-hau', 2, '2022-05-02 05:24:47', '2022-05-02 05:24:47'),
(5, 'Nghệ thuật', 'nghe-thuat', 4, '2022-05-02 05:25:14', '2022-05-02 05:25:14'),
(6, 'Ẩm thực', 'am-thuc', 4, '2022-05-02 05:25:23', '2022-05-02 05:25:23'),
(7, 'Du lịch', 'du-lich', 4, '2022-05-02 05:25:32', '2022-05-02 05:25:32'),
(8, 'Nga', 'nga', 1, '2022-05-02 09:00:19', '2022-05-02 09:00:19'),
(9, 'Mỹ', 'my', 1, '2022-05-02 09:00:25', '2022-05-02 09:00:25'),
(10, 'Trung Quốc', 'trung-quoc', 1, '2022-05-02 09:00:37', '2022-05-02 09:00:37'),
(11, 'CNTT', 'cntt', 9, '2022-05-02 09:09:42', '2022-05-02 09:09:42'),
(12, 'Viễn thông', 'vien-thong', 9, '2022-05-02 09:09:51', '2022-05-02 09:09:51'),
(13, 'Thiết bị', 'thiet-bi', 9, '2022-05-02 09:10:04', '2022-05-02 09:10:04'),
(14, 'Phần cứng', 'phan-cung', 9, '2022-05-02 09:10:11', '2022-05-02 09:10:11'),
(15, 'Học bổng', 'hoc-bong', 5, '2022-05-02 19:10:13', '2022-05-02 19:10:13'),
(16, 'Du học', 'du-hoc', 5, '2022-05-02 19:10:54', '2022-05-02 19:10:54'),
(17, 'Đào tạo', 'dao-tao', 5, '2022-05-02 19:11:04', '2022-05-02 19:11:04'),
(18, 'Thi cử', 'thi-cu', 5, '2022-05-02 19:11:11', '2022-05-02 19:11:11'),
(19, 'Bóng đá', 'bong-da', 6, '2022-05-02 19:23:04', '2022-05-02 19:23:04'),
(20, 'Bóng rỗ', 'bong-ro', 6, '2022-05-02 19:23:18', '2022-05-02 19:23:18'),
(21, 'Bơi lội', 'boi-loi', 6, '2022-05-02 19:23:28', '2022-05-02 19:23:28'),
(22, 'Âm nhạc', 'am-nhac', 7, '2022-05-02 20:24:30', '2022-05-02 20:24:30'),
(23, 'Thời trang', 'thoi-trang', 7, '2022-05-02 20:24:36', '2022-05-02 20:24:36'),
(24, 'Điện ảnh', 'dien-anh', 7, '2022-05-02 20:24:43', '2022-05-02 20:24:43'),
(25, 'Game', 'game', 7, '2022-05-02 23:19:09', '2022-05-02 23:19:09'),
(26, 'Sân khấu', 'san-khau', 7, '2022-05-02 23:20:05', '2022-05-02 23:20:05'),
(27, 'Festival', 'festival', 7, '2022-05-02 23:20:17', '2022-05-02 23:20:17'),
(29, 'Cuộc sống và phong cách của người nổi tiếng', 'cuoc-song-va-phong-cach-cua-nguoi-noi-tieng', 7, '2022-05-02 23:47:04', '2022-05-02 23:47:04'),
(30, 'Giải thưởng', 'giai-thuong', 7, '2022-05-02 23:47:33', '2022-05-02 23:47:33'),
(31, 'Sách và tạp chí', 'sach-va-tap-chi', 7, '2022-05-02 23:47:55', '2022-05-02 23:47:55'),
(32, 'Tenis', 'tenis', 6, '2022-05-02 23:48:35', '2022-05-02 23:48:35'),
(33, 'Đua xe', 'dua-xe', 6, '2022-05-02 23:48:47', '2022-05-02 23:48:47'),
(34, 'Golf', 'golf', 6, '2022-05-02 23:49:06', '2022-05-02 23:49:06'),
(35, 'Olympic', 'olympic', 6, '2022-05-02 23:49:42', '2022-05-02 23:49:42'),
(36, 'BOXING', 'boxing', 6, '2022-05-02 23:49:51', '2022-05-02 23:49:51'),
(37, 'MOTOR RACING', 'motor-racing', 6, '2022-05-02 23:50:11', '2022-05-02 23:50:11'),
(38, 'Máy tính', 'may-tinh', 9, '2022-05-02 23:50:27', '2022-05-02 23:50:27'),
(39, 'ONLINE', 'online', 9, '2022-05-02 23:50:32', '2022-05-02 23:50:32'),
(40, 'GADGETS', 'gadgets', 9, '2022-05-02 23:50:36', '2022-05-02 23:50:36'),
(41, 'MULTIMEDIA', 'multimedia', 9, '2022-05-02 23:50:41', '2022-05-02 23:50:41'),
(42, 'SCIENCE', 'science', 9, '2022-05-02 23:50:47', '2022-05-02 23:50:47'),
(43, 'RESEARCH', 'research', 9, '2022-05-02 23:50:52', '2022-05-02 23:50:52'),
(44, 'AUTOMOBILE', 'automobile', 9, '2022-05-02 23:51:00', '2022-05-02 23:51:00'),
(45, 'Magazine', 'magazine', 9, '2022-05-02 23:51:27', '2022-05-02 23:51:27'),
(46, 'Care', 'care', 11, '2022-05-02 23:51:55', '2022-05-18 21:56:11'),
(47, 'HEALTH & WELLBEING', 'health-wellbeing', 11, '2022-05-02 23:52:02', '2022-05-02 23:52:02'),
(48, 'REAL LIFE', 'real-life', 11, '2022-05-02 23:52:12', '2022-05-02 23:52:12'),
(49, 'PARENTING', 'parenting', 11, '2022-05-02 23:52:16', '2022-05-02 23:52:16'),
(50, 'HOUSE & GARDEN', 'house-garden', 11, '2022-05-02 23:52:25', '2022-05-02 23:52:25'),
(51, 'An ninh', 'an-ninh', 8, '2022-05-03 02:25:02', '2022-05-03 02:25:02'),
(52, 'Trật tự', 'trat-tu', 8, '2022-05-03 02:25:07', '2022-05-03 02:25:07'),
(53, 'Hình sự', 'hinh-su', 8, '2022-05-03 02:25:20', '2022-05-03 02:25:20'),
(54, 'Dân sự', 'dan-su', 8, '2022-05-03 02:25:24', '2022-05-03 02:25:24'),
(55, 'Tội phạm', 'toi-pham', 8, '2022-05-03 02:25:31', '2022-05-03 02:25:31'),
(56, 'Lãnh thổ', 'lanh-tho', 8, '2022-05-03 02:25:37', '2022-05-03 02:25:37'),
(57, 'Hành chính', 'hanh-chinh', 8, '2022-05-03 02:25:43', '2022-05-03 02:25:43'),
(58, 'Cơ quan nhà nước', 'co-quan-nha-nuoc', 8, '2022-05-03 02:25:49', '2022-05-03 02:25:49'),
(59, 'Hiến pháp', 'hien-phap', 8, '2022-05-03 02:25:54', '2022-05-03 02:25:54'),
(60, 'Công văn', 'cong-van', 8, '2022-05-03 02:26:00', '2022-05-03 02:26:00'),
(61, 'Dinh dưỡng', 'dinh-duong', 11, '2022-05-03 02:26:56', '2022-05-03 02:26:56'),
(62, 'Làm đẹp', 'lam-dep', 11, '2022-05-03 02:27:04', '2022-05-03 02:27:04'),
(63, 'Tình yêu', 'tinh-yeu', 11, '2022-05-03 02:27:10', '2022-05-03 02:27:10'),
(64, 'Hôn nhân', 'hon-nhan', 11, '2022-05-03 02:27:14', '2022-05-03 02:27:14'),
(65, 'Sức khỏe', 'suc-khoe', 11, '2022-05-03 02:27:21', '2022-05-03 02:27:21'),
(67, 'Y tế', 'y-te', 11, '2022-05-03 02:27:26', '2022-05-03 02:27:26'),
(68, 'Vũ trụ', 'vu-tru', 10, '2022-05-03 02:27:53', '2022-05-03 02:27:53'),
(69, 'Nasa', 'nasa', 10, '2022-05-03 02:27:58', '2022-05-03 02:27:58'),
(70, 'Sinh vật', 'sinh-vat', 10, '2022-05-03 02:28:03', '2022-05-03 02:28:03'),
(71, 'Viễn tưởng', 'vien-tuong', 10, '2022-05-03 02:28:12', '2022-05-03 02:28:12'),
(72, 'Trái đất', 'trai-dat', 10, '2022-05-03 02:28:23', '2022-05-03 02:28:23'),
(73, 'Thiên hà', 'thien-ha', 10, '2022-05-03 02:28:29', '2022-05-03 02:28:29'),
(74, 'Ngân hà', 'ngan-ha', 10, '2022-05-03 02:28:34', '2022-05-03 02:28:34'),
(75, 'Xe đạp', 'xe-dap', 12, '2022-05-03 02:28:50', '2022-05-03 02:28:50'),
(76, 'Xe hơi', 'xe-hoi', 12, '2022-05-03 02:28:54', '2022-05-03 02:28:54'),
(77, 'Future', 'future', 12, '2022-05-03 02:29:03', '2022-05-03 02:29:03'),
(78, 'Máy bay', 'may-bay', 12, '2022-05-03 02:29:10', '2022-05-03 02:29:10'),
(79, 'Xích lô', 'xich-lo', 12, '2022-05-03 02:29:15', '2022-05-03 02:29:15'),
(80, 'Thuyền bè', 'thuyen-be', 12, '2022-05-03 02:29:19', '2022-05-03 02:29:19'),
(81, 'Lao động', 'lao-dong', 3, '2022-05-03 02:30:10', '2022-05-03 02:30:10'),
(82, 'Việc làm', 'viec-lam', 3, '2022-05-03 02:30:15', '2022-05-03 02:30:15'),
(83, 'Tài chính', 'tai-chinh', 3, '2022-05-03 02:30:26', '2022-05-03 02:30:26'),
(84, 'Chứng khoán', 'chung-khoan', 3, '2022-05-03 02:30:32', '2022-05-03 02:30:32'),
(85, 'Kinh doanh', 'kinh-doanh', 3, '2022-05-03 02:30:41', '2022-05-03 02:30:41'),
(86, 'Khởi nghiệp', 'khoi-nghiep', 3, '2022-05-03 02:30:47', '2022-05-03 02:30:47'),
(87, 'Làm giàu', 'lam-giau', 3, '2022-05-03 02:30:57', '2022-05-03 02:30:57'),
(88, 'Ấn độ', 'an-do', 1, '2022-05-03 02:31:14', '2022-05-03 02:31:14'),
(89, 'Châu Phi', 'chau-phi', 1, '2022-05-03 02:31:22', '2022-05-03 02:31:22'),
(90, 'Úc', 'uc', 1, '2022-05-03 02:31:29', '2022-05-03 02:31:29'),
(91, 'Thái lan', 'thai-lan', 1, '2022-05-03 02:31:36', '2022-05-03 02:31:36'),
(92, 'Asian', 'asian', 1, '2022-05-03 02:31:40', '2022-05-03 02:31:40'),
(93, 'Châu mỹ', 'chau-my', 1, '2022-05-03 02:31:45', '2022-05-03 02:31:45'),
(94, 'Bắc cực', 'bac-cuc', 1, '2022-05-03 02:31:50', '2022-05-03 02:31:50'),
(95, 'nam cực', 'nam-cuc', 1, '2022-05-03 02:31:56', '2022-05-03 02:31:56'),
(96, 'Quân sự', 'quan-su', 8, '2022-05-03 18:20:45', '2022-05-03 18:20:45'),
(97, 'Bất động sản', 'bat-dong-san', 13, '2022-05-10 07:12:03', '2023-10-25 08:36:26'),
(98, 'Châu Âu', 'chau-au', 1, '2022-05-12 12:11:20', '2022-05-12 12:11:20'),
(99, 'covid-19', 'covid-19', 2, '2022-05-12 12:11:43', '2022-05-12 12:11:43'),
(100, 'xe máy', 'xe-may', 12, '2022-05-12 12:26:14', '2022-05-12 12:26:14'),
(101, 'ô tô', 'o-to', 12, '2022-05-12 12:26:26', '2022-05-12 12:26:26'),
(102, 'Thị trường', 'thi-truong', 3, '2022-05-18 20:42:52', '2022-05-18 20:42:52'),
(103, 'Người ngoài hành tinh', 'nguoi-ngoai-hanh-tinh', 14, '2023-10-25 08:45:14', '2023-10-25 08:45:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', NULL, NULL),
(2, 'Người duyệt bài', 'web', '2022-05-02 04:52:07', '2022-05-02 04:52:07'),
(3, 'Người viết bài', 'web', '2022-05-02 04:52:39', '2022-05-02 04:52:39'),
(4, 'Chủ biên', 'web', NULL, NULL),
(5, 'User', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`) VALUES
(15, 2),
(17, 1),
(16, 3),
(18, 4),
(19, 2),
(20, 5),
(21, 3),
(22, 5),
(23, 5),
(24, 3),
(25, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintucs`
--

CREATE TABLE `tintucs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `tomtat` longtext NOT NULL,
  `noidung` longtext NOT NULL,
  `tacgia` varchar(255) NOT NULL,
  `ngayguibai` varchar(255) NOT NULL,
  `ngayduyet` varchar(255) DEFAULT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `danhgia` int(11) NOT NULL DEFAULT 0,
  `tag` varchar(255) NOT NULL,
  `hinhanh` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `trangthai` int(11) NOT NULL DEFAULT 0,
  `id_properticategory` int(10) UNSIGNED NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintucs`
--

INSERT INTO `tintucs` (`id`, `title`, `slug`, `tomtat`, `noidung`, `tacgia`, `ngayguibai`, `ngayduyet`, `luotxem`, `danhgia`, `tag`, `hinhanh`, `video`, `trangthai`, `id_properticategory`, `id_category`, `created_at`, `updated_at`) VALUES
(102, 'test thế giới 1', 'test-the-gioi-1', 'test thế giới', '<p>test</p>', '16', '2023-10-25', '2023-10-25', 8, 0, 'test', 'hinh-nen-cong-nghe3.jpg', NULL, 1, 95, 1, '2023-10-25 06:15:29', '2023-10-25 16:46:48'),
(103, 'test giải trí', 'test-giai-tri', 'test giải trí', '<p>test</p>', '16', '2023-10-25', '2023-10-25', 16, 0, 'test', 'Chứng chỉ-Nguyễn Văn Thành-Sống hạnh phúc30.jpg', NULL, 1, 31, 7, '2023-10-25 06:16:22', '2023-10-25 08:19:45'),
(104, 'test xã hội', 'test-xa-hoi', 'test', '<p>test</p>', '21', '2023-10-25', '2023-10-25', 1, 0, 'test', 'Chứng chỉ-Nguyễn Văn Thành-Khởi sự kinh doanh87.jpg', NULL, 1, 99, 2, '2023-10-25 07:34:31', '2023-10-25 16:47:26'),
(105, 'Jax - Like My Father (Lyric Video)', 'jax-like-my-father-lyric-video', 'vdfs', '<p>dddddddddd</p>', '16', '2023-10-25', '2023-10-25', 5, 0, 'amnhac', '323282353_184646650965597_4589042489564293833_n32.jpg', 'https://www.tiktok.com/@13102002duy/video/7293756640187190560?is_from_webapp=1&sender_device=pc', 1, 98, 1, '2023-10-25 07:35:59', '2023-10-25 16:47:20'),
(106, 'Bước tiến ngoạn mục trong chuyển đổi số ở Sóc Trăng', 'buoc-tien-ngoan-muc-trong-chuyen-doi-so-o-soc-trang', '“Với cách làm chủ động, quyết liệt, sáng tạo, chuyển đổi số ở tỉnh đã gặt hái được thành công ấn tượng, xếp hạng DTI năm 2022 tăng 20 bậc, cam kết đưa chỉ số DTI năm 2023 của tỉnh lọt top 30”, ông Nguyễn Hữu Hạnh, Giám đốc Sở TT&TT Sóc Trăng nói.', '<p>xsas</p>', '16', '2023-10-25', '2023-10-25', 2, 0, 'chinhtri', 'background75.jpg', NULL, 1, 60, 8, '2023-10-25 07:40:18', '2023-10-25 12:11:52'),
(107, 'test video 2', 'test-video-2', 'test video2', '<p>test</p>', '21', '2023-10-25', '2023-10-25', 24, 0, 'test', '355486022_6701702909892062_2308966633074986448_n63.png', 'https://drive.google.com/file/d/109-_S6qtKFDpDHow7UPAIj2EZPJWAN3R/view?usp=sharing', 1, 102, 3, '2023-10-25 07:41:02', '2023-10-25 13:13:36'),
(108, 'Test Văn hóa', 'test-van-hoa', 'Test văn hóa', '<p>test</p>', '21', '2023-10-25', '2023-10-25', 5, 0, 'test', '385460825_269231466074704_4123590561292142927_n47.jpg', NULL, 1, 7, 4, '2023-10-25 10:39:16', '2023-10-25 10:58:28'),
(109, 'Last Christmas Remix , We Wish You A Merry Christmas Remix - Nhạc Giáng Sinh Remix Mới Nhất 2024', 'last-christmas-remix-we-wish-you-a-merry-christmas-remix-nhac-giang-sinh-remix-moi-nhat-2024', 'TRACKLIST:\r\n00:00 Last Christmas\r\n04:36 We Wish You A Merry Christmas\r\n08:23 Jingle Bells\r\n11:10 Light It Up\r\n14:15 Cheri Cheri Lady\r\n18:09 Wolves\r\n21:52 Shadow Of The Sun\r\n25:50 Havana\r\n29:34 Nothin\' On Me\r\n33:56 Đáy Biển\r\n37:49 Birthday Sex', '<p>scccccc</p>', '16', '2023-10-25', '2023-10-25', 3, 0, 'remix ,list', 'Screenshot 2023-10-17 16103538.png', NULL, 1, 22, 7, '2023-10-25 10:43:40', '2023-10-25 10:59:39'),
(110, 'Shopee tăng trưởng mạnh, nhưng Tiki dậm chân tại chỗ', 'shopee-tang-truong-manh-nhung-tiki-dam-chan-tai-cho', 'Tổng doanh thu thị trường thương mại điện tử (TMĐT) Việt Nam quý 3/2023 đạt hơn 63 nghìn tỷ đồng. Trong khi Shopee doanh thu tăng từ 63% lên 69% thì Tiki vẫn dậm chân tại chỗ với 1%.', '<p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80); background-color: rgb(255, 255, 255);\">So với cùng kỳ năm 2022, doanh thu đã tăng tới 54,42%, trong đó, đáng chú ý có sự tăng trưởng vượt trội của TikTok Shop, khi quý 3/2022 chỉ chiếm 3% thị phần bằng với Tiki, thì đến quý 3/2023, nền tảng này đã vươn lên chiếm tới 16% thị phần. Ngược lại, Tiki giảm còn 1% thị phần. So với cùng kỳ năm ngoái, Shopee có giảm nhẹ từ 72% xuống còn 69%, còn Lazada giảm từ 21% xuống còn 14%.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80); background-color: rgb(255, 255, 255);\">Tuy nhiên, nếu so với quý 2/2023, thì doanh thu quý 3/2023 chỉ duy nhất Shopee có sự tăng trưởng khi từ 63% lên 69%. Trong khi đó, Lazada từ 18% giảm còn 14%, TikTok Shop giảm nhẹ từ 18 xuống còn 16%, Tiki vẫn dậm chân tại chỗ với mức 1% thị phần. Cụ thể, trong quý này doanh thu của Shopee đạt 43.713 tỷ đồng, TikTok shop đạt 10.122 tỷ đồng, Lazada đạt 8.768 tỷ đồng, Tiki đạt 599 tỷ đồng và Sendo có doanh thu khiêm tốn chỉ 29 tỷ đồng.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80); background-color: rgb(255, 255, 255);\">Mặc dù vậy, theo đánh giá chung, quý 3/2023 chứng kiến sự tăng trưởng doanh thu vượt bậc của 5 sàn&nbsp;<a href=\"https://vietnamnet.vn/tmdt-tag2066163665215348153.html\" style=\"margin: 0px; padding: 0px; list-style: none; text-decoration-line: underline; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.25rem; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(45, 103, 173); text-underline-offset: 1px;\">TMĐT</a>&nbsp;đứng đầu tại Việt Nam hiện nay, đạt mức 22,66%. Đó là con số đầy tích cực trong bối cảnh nền kinh tế vẫn còn nhiều biến động.</p>', '16', '2023-10-25', '2023-10-25', 4, 0, 'shopee,mua sắm', 'tmdtvn-33187.png', NULL, 1, 39, 9, '2023-10-25 10:49:58', '2023-10-25 13:02:51'),
(111, 'Những vụ án mạng nghiêm trọng có yếu tố \'tình tiền\'', 'nhung-vu-an-mang-nghiem-trong-co-yeu-to-tinh-tien', 'Thời gian qua, nhiều vụ án mạng nghiêm trọng xảy ra xuất phát từ mâu thuẫn tình cảm hoặc tiền bạc.\r\nÁn mạng liên quan đến tình ái', '<p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80); background-color: rgb(255, 255, 255);\">Trong lúc nóng giận, nghi phạm Nguyễn Văn Hiệp (SN 1986, ở Thái Nguyên) đã dùng dao đâm chị N.T.P. (SN 1996, quê xã Phú Cường, huyện Đại Từ, Thái Nguyên) tử vong tại shop thời trang trên địa bàn TP Bắc Ninh, tỉnh Bắc Ninh.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80); background-color: rgb(255, 255, 255);\">Cơ quan chức năng xác định án mạng xuất phát từ mâu thuẫn tình cảm giữa nghi phạm và nạn nhân.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80); background-color: rgb(255, 255, 255);\">Nhân chứng cho hay, vào các buổi trưa, nghi phạm Nguyễn Văn Hiệp thường lui tới chỗ chị N.T.P. bán hàng để nói chuyện tình cảm.&nbsp;</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(80, 80, 80); background-color: rgb(255, 255, 255);\">Khoảng 14h45 ngày 17/10, Hiệp đến cửa hàng và gặp chị N.T.P. Quá trình nói chuyện, chị P. và Hiệp xảy ra mâu thuẫn, cãi nhau. Diễn biến sau đó, Hiệp đã dùng dao đâm chị P. tử vong tại chỗ.</p>', '24', '2023-10-25', '2023-10-25', 2, 0, 'anmang,phapluat,tinhcam', 'doi-tuong-gay-an-470.png', NULL, 1, 55, 8, '2023-10-25 10:57:00', '2023-10-25 11:53:35'),
(112, 'Trường học đầu tiên bổ nhiệm AI làm ‘hiệu trưởng’', 'truong-hoc-dau-tien-bo-nhiem-ai-lam-‘hieu-truong’', 'Sau khi thực hiện việc đẩy mạnh ứng dụng công nghệ vào giáo dục, Trường nội trú tư thục Cottesmore ở Anh bổ nhiệm Robot AI làm ‘hiệu trưởng’ và chatbot làm ‘trưởng phòng’.', '<p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Trong một tuyên bố với&nbsp;<em style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">The</em>&nbsp;<em style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Telegraph</em>, ông Tom Rogerson khẳng định \'hiệu trưởng AI\' thành thạo kiến ​​thức chuyên môn về máy học (machine learning) và quản lý&nbsp;<span style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><a href=\"https://vietnamnet.vn/giao-duc\" title=\"giáo dục\" target=\"_blank\" style=\"margin: 0px; padding: 0px; list-style: none; text-decoration-line: underline; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.25rem; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(45, 103, 173); text-underline-offset: 1px;\">giáo dục</a></span>.&nbsp;</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Abigail Bailey còn sở hữu khả năng phân tích dữ liệu lớn, là \'cánh tay phải\' đắc lực của ông Tom Rogerson trong việc cung cấp hướng dẫn và tư vấn bằng cách trả lời những yêu cầu như: Soạn thảo nội quy, đề ra các tiêu chuẩn, chính sách chất lượng giáo dục…</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Tuy nhiên, ông Tom Rogerson vẫn nhấn mạnh tầm quan trọng của con người, bởi \'hiệu trưởng AI\' sẽ không thể thay thế được công việc quản lý. \"Làm lãnh đạo là công việc rất cô đơn. Tất nhiên bên cạnh tôi vẫn có các đồng nghiệp hỗ trợ. Tuy nhiên, nếu có một \'người bạn\' luôn sẵn sàng giúp đỡ mọi lúc tôi sẽ cảm thấy an tâm hơn\", ông Tom Rogerson cho biết.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Ngoài Abigail Bailey làm \'hiệu trưởng AI\', nhà trường cũng bổ nhiệm thêm chatbot Jamie Trainer làm \'trưởng phòng AI\'. Jamie Rainer là cố vấn được đào tạo chuyên sâu về sáng tạo, sẽ hỗ trợ nhà trường trong việc lập kế hoạch và chiến lược.&nbsp;</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Cả \'hiệu trưởng AI\' và \'trưởng phòng AI\' đều tự tạo ra hình ảnh đại diện là khuôn mặt 3D để thuận tiện khi trao đổi thông tin với những người sử dụng.&nbsp;</p>', '24', '2023-10-25', '2023-10-25', 1, 0, 'giaoduc, AI', 'user8-128x12892.jpg', NULL, 1, 17, 5, '2023-10-25 12:08:08', '2023-10-25 16:47:34'),
(113, 'Bảo vệ con trước vấn nạn bắt nạt trực tuyến từ những bữa cơm gia đình', 'bao-ve-con-truoc-van-nan-bat-nat-truc-tuyen-tu-nhung-bua-com-gia-dinh', 'Chị Mai Hoa nghe tiếng khóc nên vào phòng con gái tìm hiểu. Con gái 12 tuổi của chị nằm trùm chăn, khóc không ngừng. Bé vừa bị bạn học bắt nạt, trêu chọc trên nhóm Zalo của lớp.', '<p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Chị Hoa ngỡ ngàng, cố lấy lại bình tĩnh, nhắn tin cho bạn thân của con gái, tìm hiểu xem chuyện gì đã xảy ra.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">“Bạn A. bị nhóm học sinh cá biệt của lớp trêu chọc trên mạng xã hội. Các bạn đó lấy ảnh lớp 1 của A. gửi khắp các nhóm của trường, lớp trên Facebook và Zalo.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Bạn A. nói các bạn gỡ xuống nhưng bị đe dọa, hâm dọa tung nhiều ảnh hài hước khác”, bạn thân của A. kể với chị Hoa.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Chị Hoa nhớ, trên Facebook của mình có đăng ảnh A. năm học lớp 1. Lúc đó, A. đang thay răng sữa. Chị không ngờ tấm ảnh sún 2 răng cửa đáng yêu ngày nào của con lại trở thành công cụ cho các bạn trêu chọc.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Và, điều chị không ngờ hơn là những gì đã diễn ra cho thấy con gái của chị đang bị&nbsp;<a href=\"https://vietnamnet.vn/bat-nat-tag178640892002586734.html\" style=\"margin: 0px; padding: 0px; list-style: none; text-decoration-line: underline; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.25rem; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(45, 103, 173); text-underline-offset: 1px;\">bắt nạt</a>&nbsp;trên mạng xã hội.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Không riêng con gái chị Hoa, nhiều trẻ em đang bị tấn công trực tuyến nhưng phụ huynh lại lơ là, xem như chuyện trẻ con đùa giỡn.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Trước vấn nạn bắt nạt trực tuyến, thạc sĩ tâm lý Đặng Hoàng An, cựu giảng viên trường ĐH Sư phạm TP.HCM, phân tích: “<a href=\"https://vietnamnet.vn/bat-nat-tren-mang-tag3353658836206251528.html\" style=\"margin: 0px; padding: 0px; list-style: none; text-decoration-line: underline; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 1.25rem; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(45, 103, 173); text-underline-offset: 1px;\">Bắt nạt trên mạng</a>&nbsp;là việc bắt nạt trên các công cụ kỹ thuật số. Nó có thể diễn ra trên phương tiện mạng xã hội, nền tảng nhắn tin, chơi game và điện thoại di động. Đó là hành vi lặp đi lặp lại, nhằm mục đích khiến những người bị nhắm mục tiêu sợ hãi, tức giận hoặc xấu hổ”.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Cụ thể, những hành vi thể hiện sự bắt nạt trực tuyến bao gồm: Lan truyền những lời nói dối hoặc đăng những bức ảnh đáng xấu hổ của ai đó lên mạng xã hội; Gửi tin nhắn hoặc đe dọa gây tổn thương qua các nền tảng kỹ thuật số; Mạo danh ai đó và thay mặt họ gửi những thông điệp ác ý cho người khác; Giả danh ai đó và lấy danh nghĩa của họ gửi những tin nhắn ác ý cho người khác hoặc thông qua tài khoản giả mạo; Bắt nạt trực diện và bắt nạt trên mạng thường có thể xảy ra song song.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; list-style: none; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Bắt nạt trong bữa cơm</span></p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">“Việc sử dụng ngôn từ hàm chứa sự xúc phạm, chọc ghẹo, đe dọa trẻ em trên các trang mạng trực tuyến như: Facebook, Zalo, TikTok… bằng cách nhắn tin, gọi điện là hình thức bắt nạt phổ biến nhất.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Tiếp cận, chia sẻ hình ảnh và video riêng tư, thông tin cá nhân của trẻ, kèm lời đe dọa… cũng là cách bắt nạt chủ yếu.</p><p style=\"margin: 1em 0px 0px; padding: 0px; list-style: none; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: arial; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Hành động chia sẻ những câu chuyện, hình ảnh, video, game mang tính chất bạo lực, sex, chất kích thích, rượu bia… cũng được xem là bắt nạt trực tuyến”, thạc sĩ Đặng Hoàng An phân tích.</p>', '24', '2023-10-25', '2023-10-25', 1, 0, 'giadinh,baoluc', 'user4-128x12867.jpg', NULL, 1, 48, 11, '2023-10-25 12:10:04', '2023-10-25 16:47:01'),
(114, 'Test thời sự', 'test-thoi-su', 'test thời sự', '<p>test</p>', '21', '2023-10-25', '2023-10-25', 3, 0, 'thoisu', 'images97.jpg', NULL, 1, 18, 5, '2023-10-25 12:23:02', '2023-10-25 13:05:02'),
(115, 'test thời sự 1', 'test-thoi-su-1', 'test', '<p>test</p>', '21', '2023-10-25', '2023-10-25', 0, 0, 'thoisu', 'z3974959023874_79ec88e65e943d4b000032cfcb299af790.jpg', NULL, 1, 1, 2, '2023-10-25 12:26:15', '2023-10-25 12:26:39'),
(116, 'test nghệ thuật', 'test-nghe-thuat', 'test', '<p>test</p>', '21', '2023-10-25', '2023-10-25', 0, 0, 'test', '116.jpg', NULL, 1, 5, 4, '2023-10-25 12:29:31', '2023-10-25 12:29:55'),
(117, 'Lập kỳ tích ở Saudi Arabia, C.Ronaldo tuyên bố bất ngờ', 'lap-ky-tich-o-saudi-arabia-cronaldo-tuyen-bo-bat-ngo', 'Sau khi lập cú đúp giúp Al Nassr chiến thắng ở AFC Champions League, C.Ronaldo tuyên bố không quan tâm tới kỷ lục', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Noto Serif&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, serif; font-size: 18px;\">Ở lượt trận thứ ba vòng bảng AFC Champions League, Al Nassr đã giành chiến thắng nghẹt thở với tỷ số 4-3 trước Al-Duhali. Kết quả này giúp cho CLB Saudi Arabai dẫn đầu bảng E với 9 điểm sau 3 trận.</span></p>', '19', '2023-10-25', '2023-10-25', 1, 0, 'Cristiano Ronaldo', 'anh187.jpg', NULL, 1, 19, 6, '2023-10-25 14:41:27', '2023-10-25 16:48:15'),
(118, 'Những vòng tròn quanh sao Thổ sắp biến mất', 'nhung-vong-tron-quanh-sao-tho-sap-bien-mat', 'Ba nghiên cứu công bố trong tháng 5 này đã hé lộ thông tin về thời gian xuất hiện của vành đai sao Thổ và khi nào chúng biến mất.', '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Trong nhiều năm, giới khoa học đã tranh luận về tuổi và nguồn gốc của vòng tròn quanh&nbsp;</span><a class=\"link-inline-content\" href=\"https://tuoitre.vn/sao-tho.html\" title=\"Sao Thổ\" data-rel=\"follow\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(34, 106, 197); outline: 0px; font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">sao Thổ</a><span style=\"color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">&nbsp;(còn được gọi là vành đai sao Thổ). Một số lập luận rằng vành đai có \"tuổi đời\" trẻ hơn dự đoán vì chưa bị xói mòn và tối đi vì va chạm với thiên thạch</span></p>', '16', '2023-10-25', '2023-10-25', 0, 0, 'NASA', 'anh227.webp', NULL, 1, 68, 10, '2023-10-25 14:49:38', '2023-10-25 14:59:19'),
(119, 'Vì sao nhiều đường ở quận Bình Thạnh kẹt xe \'tới không được, lui không xong\'?', 'vi-sao-nhieu-duong-o-quan-binh-thanh-ket-xe-toi-khong-duoc-lui-khong-xong', 'Tối 20-10, nhiều tuyến đường tại quận Bình Thạnh, TP.HCM xảy ra kẹt xe, hàng ngàn người dân cùng xe cộ rơi vào cảnh tới lui không được, nguyên nhân là gì?', '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Tại khu vực đường Ung Văn Khiêm, Nguyễn Gia Trí, Xô Viết Nghệ Tĩnh, Võ Oanh là nơi tập trung nhiều trường đại học. Thời điểm trên sinh viên tan học cùng với lượng xe của người dân tan làm đổ về dẫn tới ùn ứ. Thêm vào đó, tối 20-10 do là ngày lễ nên lượng xe người dân đi lại cũng đông hơn bình thường.</span></p>', '16', '2023-10-25', '2023-10-25', 0, 0, 'giaothong', 'anh355.webp', NULL, 1, 100, 12, '2023-10-25 14:56:40', '2023-10-25 14:59:16'),
(120, 'Tiền gửi của người dân vào ngân hàng lại tăng nữa', 'tien-gui-cua-nguoi-dan-vao-ngan-hang-lai-tang-nua', 'Tổng số tiền tiết kiệm gửi vào ngân hàng tính đến tháng 8 đã đạt trên 12,4 triệu tỉ đồng. Trong đó, riêng tiền gửi của dân cư tiếp tục đạt mức kỷ lục mới với hơn 6,43 triệu tỉ đồng.', '<p class=\"\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Ngân hàng Nhà nước vừa công bố số liệu mới nhất về&nbsp;<a class=\"link-inline-content\" href=\"https://tuoitre.vn/tien-gui-cua-ca-nhan-va-doanh-nghiep-tiep-tuc-do-vao-ngan-hang-20230724161920176.htm\" title=\"tiền tiết kiệm\" data-rel=\"follow\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(34, 106, 197); outline: 0px;\">tiền</a>&nbsp;gửi tiết kiệm vào ngân hàng của dân cư và tổ chức.</p><p class=\"\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Theo đó, tính đến tháng 8, tiền tiết kiệm gửi vào ngân hàng của dân cư tính đạt mức cao nhất từ trước đến nay với 6,43 triệu tỉ đồng. Như vậy, đây là tháng thứ 13 liên tiếp,&nbsp;<a class=\"link-inline-content\" href=\"https://tuoitre.vn/tien-gui.html\" title=\"tiền gửi\" data-rel=\"follow\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(34, 106, 197); outline: 0px;\">tiền gửi</a>&nbsp;của dân cư vào ngân hàng tăng</p>', '17', '2023-10-25', '2023-10-25', 0, 0, 'taichinh', 'anh438.webp', NULL, 1, 83, 3, '2023-10-25 15:16:09', '2023-10-25 15:48:58'),
(121, 'Bộ trưởng Quốc phòng Nga tới Ukraine giữa thông tin gặp tổn thất lớn ở Avdiivka', 'bo-truong-quoc-phong-nga-toi-ukraine-giua-thong-tin-gap-ton-that-lon-o-avdiivka', 'Bộ trưởng Quốc phòng Nga Sergei Shoigu đến miền đông Ukraine để thị sát một sở chỉ huy và gặp các quan chức cấp cao.', '<p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Theo Hãng tin AFP, trong thông báo ngày 25-10, Bộ Quốc phòng Nga cho biết&nbsp;<a class=\"link-inline-content\" href=\"https://tuoitre.vn/bo-truong-quoc-phong-nga.html\" title=\"Bộ trưởng Quốc phòng Nga\" data-rel=\"follow\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(34, 106, 197); outline: 0px;\">Bộ trưởng Quốc phòng Nga</a>&nbsp;Sergei Shoigu đã đến thăm sở chỉ huy \"Vostok\" ở miền đông Ukraine.</p><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Hãng tin Tass dẫn thông tin từ Bộ Quốc phòng Nga nêu cụ thể ông Shoigu đã tới \"thị sát sở chỉ huy của nhóm chiến đấu phía đông Nga ở khu vực nam Donetsk</p>', '25', '2023-10-25', '2023-10-25', 4, 0, 'Chientranh', 'anh42.jpg', NULL, 1, 8, 1, '2023-10-25 15:17:54', '2023-10-25 16:47:42'),
(122, 'Người đàn ông ném đá \'tét đầu\' cảnh sát giao thông ra đầu thú', 'nguoi-dan-ong-nem-da-tet-dau-canh-sat-giao-thong-ra-dau-thu', 'Chiều 25-10, người đàn ông có nồng độ cồn vượt mức kịch trần cầm đá ném \"tét đầu\" cảnh sát giao thông đội Cát Lái ra đầu thú, hiện công an đang lấy lời khai.', '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Chiều 25-10, Võ Trung Nghĩa (39 tuổi, ngụ tỉnh Long An) - người vi phạm nồng độ cồn vượt mức kịch trần bị lập biên bản, tạm giữ xe, sau đó cầm cục đá ném \"tét đầu\" chiến sĩ Đội&nbsp;</span><a class=\"VCCTagItemInNews\" data-zoneid=\"0\" data-id=\"0\" href=\"https://tuoitre.vn/canh-sat-giao-thong.html\" target=\"_blank\" title=\"Cảnh sát giao thông\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(34, 106, 197); outline: 0px; font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">cảnh sát giao thông</a><span style=\"color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">&nbsp;Cát Lái - đã ra đầu thú.</span></p>', '25', '2023-10-25', '2023-10-25', 0, 0, 'phapluat', 'anh528.jpg', NULL, 1, 52, 8, '2023-10-25 15:21:52', '2023-10-25 15:48:52'),
(123, '42 tổng chưởng lý Mỹ kiện Meta vì gây hại giới trẻ', '42-tong-chuong-ly-my-kien-meta-vi-gay-hai-gioi-tre', 'Ngày 24-10, 42 tổng chưởng lý tuyên bố kiện Meta vì các tính năng mà họ cáo buộc là gây nghiện và nhắm vào trẻ em và thanh thiếu niên.', '<p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Hồ sơ của các cơ quan thực thi pháp luật tại 42 bang trình bày cùng một nội dung gần như thống nhất, nhằm chống lại gã khổng lồ truyền thông xã hội&nbsp;<a class=\"link-inline-content\" href=\"https://tuoitre.vn/meta.html\" title=\"Meta\" data-rel=\"follow\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(34, 106, 197); outline: 0px;\">Meta</a>&nbsp;- sở hữu Instagram cũng như Facebook. Ngoài ra, còn có 9 vụ kiện Meta riêng biệt.</p><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Theo&nbsp;<i style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\">Hãng tin UPI</i>, các&nbsp;<a class=\"link-inline-content\" href=\"https://tuoitre.vn/tong-chuong-ly.html\" title=\"Tổng chưởng lý\" data-rel=\"follow\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(34, 106, 197); outline: 0px;\">tổng chưởng lý</a>&nbsp;cáo buộc sản phẩm công nghệ của Meta thiết kế để thu hút giới trẻ đã tác động tiêu cực đến sức khỏe tâm thần nhóm đối tượng này.</p>', '25', '2023-10-25', '2023-10-25', 0, 0, 'congnghe,gioitre', 'anh67.webp', NULL, 1, 11, 9, '2023-10-25 15:24:57', '2023-10-25 15:48:50'),
(124, 'Tin tức giá xe: Nissan Almera giảm giá 100 triệu tại đại lý, tiệm cận xe hạng A', 'tin-tuc-gia-xe-nissan-almera-giam-gia-100-trieu-tai-dai-ly-tiem-can-xe-hang-a', 'Bản tiêu chuẩn Nissan Almera tại đại lý nay rẻ ngang nhóm xe hạng A như Kia Morning, Hyundai Grand i10, Honda Brio', '<p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Nhiều đại lý tung chương trình ưu đãi lớn cho&nbsp;<a class=\"link-inline-content\" href=\"https://tuoitre.vn/nissan-almera.html\" title=\"Nissan Almera\" data-rel=\"follow\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(34, 106, 197); outline: 0px;\">Nissan Almera</a>. Theo đó, cả 2 phiên bản CVT và CVT cao cấp được giảm giá tới 100 triệu đồng, đưa giá bán thực tế của xe xuống còn 439 triệu đồng và 495 triệu đồng.</p><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Đây là mức giảm sâu nhất của Nissan Almera từ trước đến nay. Trước đó, đầu tháng 10-2023, những người mua Almera được hưởng chính sách giảm 100%&nbsp;<a class=\"VCCTagItemInNews\" data-zoneid=\"0\" data-id=\"0\" href=\"https://tuoitre.vn/le-phi-truoc-ba.html\" target=\"_blank\" title=\"lệ phí trước bạ\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(34, 106, 197); outline: 0px;\">lệ phí trước bạ</a>&nbsp;cho cả 2 bản, tương đương với mức giảm dao động từ 54-71 triệu đồng.</p>', '25', '2023-10-25', '2023-10-25', 0, 0, 'Tin tức giá xe', 'anh794.webp', NULL, 1, 76, 12, '2023-10-25 15:26:27', '2023-10-25 15:48:46'),
(125, 'Phát lộ nhiều thông tin thú vị khi đào sâu nền đất dưới Chùa Cầu', 'phat-lo-nhieu-thong-tin-thu-vi-khi-dào-sau-nèn-dát-duói-chua-cau', 'Sau gần một năm rào kín để hạ giải Chùa Cầu, TP Hội An đã mời 50 chuyên gia, các tổ chức cùng khảo sát thực tế để tư vấn cho giai đoạn tu bổ quan trọng nhất sắp tới. Có nhiều thông tin thú vị phát lộ trong khi hạ giải di tích.', '<p class=\"\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255); text-align: justify;\">Theo ông Sơn - đến cuối tháng 10 này đã hạ giải xong công trình, gia cố phần móng.</p><p class=\"\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255); text-align: justify;\">Để đảm bảo giữ tối đa tính nguyên vẹn của di tích nên quá trình làm thì từng viên ngói, mộng gỗ, mẩu hồ vữa cũng phải nhẹ nhàng, cẩn trọng. Hàng ngàn chi tiết được tháo ra, đánh dấu kỹ lưỡng và bọc gói cẩn thận.</p><p class=\"\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255); text-align: justify;\">Trung tâm Quản lý bảo tồn di sản văn hóa Hội An cho biết do thời gian sử dụng quá lâu nên khi hạ giải, Chùa Cầu trong tình trạng xuống cấp rất nặng.</p>', '25', '2023-10-25', '2023-10-25', 0, 0, 'ditich', 'anh854.webp', NULL, 1, 5, 4, '2023-10-25 15:28:54', '2023-10-25 15:48:44'),
(126, 'Thầy Park không có lỗi!', 'thay-park-khong-co-loi', 'Triết lý mới của HLV Troussier chẳng liên quan gì đến HLV Park Hang Seo. Thế nhưng lại có nhiều ý kiến xem ông Park như là nguyên nhân khiến bóng đá Việt Nam gặp khó khăn trong giai đoạn này.', '<h2 style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px; line-height: 1.3; font-weight: 700; font-size: 25px; color: rgb(34, 34, 34); font-family: Roboto; background-color: rgb(255, 255, 255);\"><span style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\">Sự so sánh khập khiễng</span></h2><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Việc một tân HLV trưởng như ông Troussier thử nghiệm nhiều nhân sự mới, áp dụng triết lý mới cho đội tuyển là chuyện hết sức bình thường trong bóng đá. Chiến lược gia người Pháp cần khẳng định thương hiệu cá nhân cũng như lựa chọn lối đi riêng.</p><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Có lý do để ông Troussier làm điều đó, vì muốn ra biển lớn thì \"những chiến binh Sao Vàng\" không thể cứ mãi chơi rình rập, chờ thời với tư tưởng đá không thua. Thay vào đó, các đội tuyển U23 hay tuyển quốc gia dưới thời HLV Troussier phải làm quen với phong cách thi đấu đĩnh đạc và chủ động hơn.</p>', '25', '2023-10-25', '2023-10-25', 0, 0, 'bongda,Pank Hang Seo', 'anh916.webp', NULL, 1, 19, 6, '2023-10-25 15:30:35', '2023-10-25 15:48:41'),
(127, 'UNESCO: Cứ 3 học sinh thì có 1 bị bạo hành', 'unesco-cu-3-hoc-sinh-thi-co-1-bi-bao-hanh', 'Con số học sinh bị bạo hành tại trường học hằng tháng được đại diện UNESCO nêu trong tọa đàm Trường học hạnh phúc diễn ra ngày 25-10', '<p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">GS Lê Anh Vinh, viện trưởng Viện Khoa học giáo dục Việt Nam, cho biết&nbsp;<a class=\"link-inline-content\" href=\"https://tuoitre.vn/truong-hoc-hanh-phuc.html\" title=\"trường học hạnh phúc\" data-rel=\"follow\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(34, 106, 197); outline: 0px;\">trường học hạnh phúc</a>&nbsp;không phải khái niệm mới, mà từng được GS Hồ Ngọc Đại đề cập cách đây 45 năm với mô hình trường thực nghiệm (tại Hà Nội).</p><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Theo ông Vinh, thời điểm 45 năm trước, khái niệm trên xa lạ với nhiều người, nhưng nay đã có nhiều trường học Việt Nam theo đuổi việc này. Nhất là khi đang có quá nhiều tiêu cực từ cuộc sống xâm nhập, ảnh hưởng vào nhà trường và tác động đến cảm xúc,&nbsp;<a class=\"link-inline-content\" href=\"https://tuoitre.vn/ba-nhom-hoc-sinh-can-quan-tam-dac-biet-ve-suc-khoe-tinh-than-20221215122815563.htm\" title=\"đời sống tinh thần của học sinh\" data-rel=\"follow\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(34, 106, 197); outline: 0px;\">đời sống tinh thần của học sinh</a>.</p>', '25', '2023-10-25', '2023-10-25', 0, 0, 'giaoduc', 'anh1093.webp', NULL, 1, 17, 5, '2023-10-25 15:32:53', '2023-10-25 15:48:38'),
(128, 'TP.HCM sẽ lập doanh nghiệp chuyên biệt để quản lý nhà ở xã hội?', 'tphcm-se-lap-doanh-nghiep-chuyen-biet-de-quan-ly-nha-o-xa-hoi', 'Sở Xây dựng TP.HCM kiến nghị hàng loạt chính sách tháo gỡ khó khăn trong phát triển nhà ở xã hội, trong đó có việc lập doanh nghiệp chuyên biệt để đầu tư, quản lý nhà ở xã hội.', '<h2 style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 0.5em 0px; line-height: 1.3; font-weight: 700; font-size: 25px; color: rgb(34, 34, 34); font-family: Roboto; background-color: rgb(255, 255, 255);\">21 dự án nhà ở xã hội đưa vào sử dụng từ năm 2016 đến nay</h2><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Báo cáo tại buổi giám sát, trưởng phòng phát triển nhà và thị trường bất động sản Sở Xây dựng TP Phạm Đăng Hồ cho biết giai đoạn 2016 - 2020, trên địa bàn TP có 93 dự án nhà ở xã hội với tổng diện tích đất 256,7ha, quy mô dự kiến khoảng 126.077 căn hộ.&nbsp;</p><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Trong đó 62 dự án đã được chấp thuận chủ trương đầu tư, 24 dự án được cấp giấy phép xây dựng và 19 dự án hoàn thành đưa vào sử dụng.</p><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Giai đoạn 2021 - 2025 có 91 dự án quy mô dự kiến khoảng 98.685 căn hộ. Trong đó có 49/91 dự án đã được chấp thuận chủ trương đầu tư với tổng diện tích đất là 125,8ha (có 46/49 dự án chuyển tiếp từ giai đoạn năm 2016 -2020). Riêng từ 2021-2023 có 2 dự án đã được đưa vào sử dụng.</p>', '25', '2023-10-25', '2023-10-25', 0, 0, 'nhadat', 'anh1164.webp', NULL, 1, 97, 13, '2023-10-25 15:34:23', '2023-10-25 15:48:35'),
(129, 'Tiềm năng du lịch kết hợp giáo dục ở Đà Lạt đang bị lãng phí', 'tiem-nang-du-lich-ket-hop-giao-duc-o-da-lat-dang-bi-lang-phi', 'Với trải nghiệm của người đang xây dựng mô hình du lịch kết hợp với giáo dục, tôi xin gửi ý kiến đến diễn đàn, mong được góp tiếng nói cho sự phát triển bền vững của thành phố', '<p class=\"\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Tôi là một cư dân Đà Lạt thuộc thế hệ 8X. Tuổi thơ tôi thật yên bình ở thành phố nhiều cây xanh, không khí trong lành và lối sống hiền hòa.</p><p class=\"\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Đà Lạt từng là trung tâm giáo dục của miền Nam với nhiều loại hình đào tạo, các trung tâm văn hóa, viện nghiên cứu, hệ thống thư viện danh giá nhất miền Nam. Nghịch lý thay, một nơi từng là trung tâm giáo dục, nay không còn đủ sức hút với chính con em quê hương mình.</p><p class=\"\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Sau khi tốt nghiệp, dạy học tại TP.HCM, hầu như năm nào tôi cũng theo tour của trường học, cùng học sinh đi tham quan Đà Lạt. Đà Lạt là lựa chọn của rất nhiều trường khi cho học sinh đi du lịch, vì đi lên núi thì an toàn hơn đi ra biển, mà an toàn là yếu tố quan tâm hàng đầu của trường học.</p>', '25', '2023-10-25', '2023-10-25', 0, 0, 'dulich', 'anh1285.webp', NULL, 1, 7, 4, '2023-10-25 15:36:49', '2023-10-25 15:48:33'),
(130, 'Trương Nghệ Mưu không nghỉ hưu sau giải Thành tựu trọn đời', 'truong-nghe-muu-khong-nghi-huu-sau-giai-thanh-tuu-tron-doi', '\'Nếu có kịch bản hay, tôi sẽ làm mỗi năm một tác phẩm\' - đạo diễn Trương Nghệ Mưu, cây đại thụ của nền điện ảnh thế giới, khẳng định.', '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Vừa qua, tại Liên hoan phim quốc tế Tokyo (TIFF),&nbsp;</span><a class=\"link-inline-content\" href=\"https://tuoitre.vn/dao-dien-truong-nghe-muu-hua-khai-mac-olympic-bac-kinh-2022-se-di-vao-lich-su-20220203110016356.htm\" title=\"Trương Nghệ Mưu\" data-rel=\"follow\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(34, 106, 197); outline: 0px; font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Trương Nghệ Mưu</a><span style=\"color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">&nbsp;được trao giải Thành tựu trọn đời nhằm tôn vinh ảnh hưởng của ông đối với điện ảnh thế giới suốt 36 năm sự nghiệp. Nhưng với ông, đây chưa phải là điểm dừng của sự nghiệp.</span></p>', '25', '2023-10-25', '2023-10-25', 0, 0, 'giaithuong,dienanh', 'anh1387.webp', NULL, 1, 30, 7, '2023-10-25 15:38:44', '2023-10-25 15:48:30'),
(131, 'Tân sinh viên 19 tỉnh, thành phía Bắc nhận học bổng Tiếp sức đến trường: Ý chí của chữ học, chữ hiếu', 'tan-sinh-vien-19-tinh-thanh-phia-bac-nhan-hoc-bong-tiep-suc-den-truong-y-chi-cua-chu-hoc-chu-hieu', 'Mỗi tân sinh viên nhận học bổng hôm nay là tấm gương nghị lực vượt khó để bước tiếp trên con đường tri thức. Hành trang gom góp vào đời còn là tấm lòng hiếu thảo đối với cha mẹ.', '<p class=\"\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Chiều nay 25-10, 118 tân sinh viên tại 19 tỉnh, thành phía Bắc: Bắc Giang, Bắc Kạn, Bắc Ninh, Cao Bằng, Hà Giang, Hà Nam, Hà Nội, Hải Dương, Hải Phòng, Hưng Yên, Lạng Sơn, Nam Định, Ninh Bình, Phú Thọ, Quảng Ninh, Thái Bình, Thái Nguyên, Tuyên Quang và Vĩnh Phúc có mặt tại Hà Nam dự lễ trao học bổng&nbsp;<i style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\"><a class=\"link-inline-content\" href=\"https://tuoitre.vn/tiep-suc-den-truong.html\" title=\"Tiếp sức đến trường\" data-rel=\"follow\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(34, 106, 197); outline: 0px;\">Tiếp sức đến trường</a></i>&nbsp;năm 2023.</p><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Chương trình do báo&nbsp;<i style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision;\">Tuổi Trẻ</i>&nbsp;phối hợp với Tỉnh Đoàn Hà Nam và các tỉnh, thành đoàn khu vực phía Bắc tổ chức.</p>', '25', '2023-10-25', '2023-10-25', 0, 0, 'yte,suckhoe', 'anh143.webp', NULL, 1, 67, 11, '2023-10-25 15:41:48', '2023-10-25 15:48:27'),
(132, 'Vụ tai nạn xe Thành Bưởi: Xe chạy Bình Thuận tại sao phù hiệu Tiền Giang cấp?', 'vu-tai-nan-xe-thanh-buoi-xe-chay-binh-thuan-tai-sao-phu-hieu-tien-giang-cap', 'Ngày 25-10, nguồn tin Tuổi Trẻ cho biết các đơn vị chức năng đã tìm ra nơi cấp phù hiệu cho xe 16 chỗ trong vụ tai nạn với xe Thành Bưởi khiến 5 người chết.', '<p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Theo đó, chiếc xe khách 16 chỗ bị&nbsp;<a class=\"link-inline-content\" href=\"https://tuoitre.vn/xe-thanh-buoi.html\" title=\"xe Thành Bưởi\" data-rel=\"follow\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(34, 106, 197); outline: 0px;\">xe Thành Bưởi</a>&nbsp;tông mang biển số 86B-015.75 do ông Đ.H. ở huyện Đức Linh, tỉnh Bình Thuận là chủ sở hữu. Ông giao lại cho người khác quản lý, điều hành.</p><p style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Mặc dù chiếc xe này ở tỉnh Bình Thuận nhưng phù hiệu đứng tên Hợp tác xã vận tải Phát An Tiền Giang, do Sở Giao thông vận tải tỉnh Tiền Giang cấp đến năm 2026. Chiếc xe có gắn thiết bị giám sát hành trình, camera theo quy định.</p><div><br></div>', '25', '2023-10-25', '2023-10-25', 0, 0, 'tainan,giaothong,thoisu', 'anh1575.webp', NULL, 1, 1, 2, '2023-10-25 15:45:13', '2023-10-25 15:48:24');
INSERT INTO `tintucs` (`id`, `title`, `slug`, `tomtat`, `noidung`, `tacgia`, `ngayguibai`, `ngayduyet`, `luotxem`, `danhgia`, `tag`, `hinhanh`, `video`, `trangthai`, `id_properticategory`, `id_category`, `created_at`, `updated_at`) VALUES
(133, 'NASA gia nhập cuộc đua tìm kiếm UFO', 'nasa-gia-nhap-cuoc-dua-tim-kiem-ufo', 'NASA ngày 14-9 tuyên bố chính thức gia nhập cuộc đua săn tìm vật thể bay không xác định (UFO), đồng thời bổ nhiệm người đứng đầu chương trình nghiên cứu trong lĩnh vực này.', '<p class=\"\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Theo Đài CNN, một báo cáo dài 33 trang về&nbsp;<a class=\"link-inline-content\" href=\"https://tuoitre.vn/ufo.html\" title=\"UFO\" data-rel=\"follow\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(34, 106, 197); outline: 0px;\">UFO</a>&nbsp;của nhóm 16 chuyên gia và nhà khoa học độc lập - công bố ngày 14-9 (giờ địa phương) - đã thừa nhận không tìm thấy bằng chứng chắc chắn cho thấy có hiện tượng dị thường không xác định (UAP) đến từ sự sống ngoài hành tinh.</p><p class=\"\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; margin: 1em 0px; color: rgb(34, 34, 34); font-family: Roboto; font-size: 17px; background-color: rgb(255, 255, 255);\">Tuy nhiên nhóm nghiên cứu đề nghị NASA nên sử dụng&nbsp;<a class=\"link-inline-content\" href=\"https://tuoitre.vn/ve-tinh.html\" title=\"vệ tinh \" data-rel=\"follow\" style=\"-webkit-font-smoothing: antialiased; text-rendering: geometricprecision; color: rgb(34, 106, 197); outline: 0px;\">vệ tinh&nbsp;</a>và các thiết bị khác để tìm kiếm thêm thông tin về hiện tượng này.</p>', '25', '2023-10-25', '2023-10-25', 0, 0, 'NASA,nguoingoaihanhtinh', 'anh1654.webp', NULL, 1, 103, 14, '2023-10-25 15:47:32', '2023-10-25 15:48:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vaitro` int(11) NOT NULL DEFAULT 5,
  `sodienthoai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `vaitro`, `sodienthoai`) VALUES
(15, 'Nguyễn Văn Thành', 'thanh131208@gmail.com', NULL, '$2y$10$ldUGCFJ15RmTN3B5yKTB9Oyl9XLu83iMat8zZzR3sTD3CpMbVf0hO', NULL, '2023-10-23 21:25:14', '2023-10-24 22:55:09', 2, NULL),
(16, 'Nguyễn Thị Trang Nhung', 'trangng330@gmail.com', NULL, '$2y$10$Is/P6o7IfEOCowInORoufOavhDpS9HtFBQgCucIinYUfKmCQwRmoy', NULL, '2023-10-23 21:46:00', '2023-10-23 23:41:17', 3, 123456789),
(17, 'Admin', 'admin@gmail.com', NULL, '$2y$10$kq.wAZrWKbIDD6Azblkkf.rQwCpkusLKPoN18vF0RL.MELqyGGJKu', NULL, '2023-10-23 23:39:41', '2023-10-23 23:39:41', 1, NULL),
(18, 'Chủ biên', 'chubien@gmail.com', NULL, '$2y$10$ywlhZdv8X12bAe8Ih3lfFuIv7Hgxgm8SR.eOBsaba63gFmtMfJ.Hi', NULL, '2023-10-24 00:28:58', '2023-10-24 00:28:58', 4, NULL),
(19, 'Người duyệt bài', 'nguoiduyetbai@gmail.com', NULL, '$2y$10$S4fLnYtmBlDcZ43pMBGRKOFzO1AXgN1BySZZm9SfJYm.d8UHNvqBW', NULL, '2023-10-24 07:00:49', '2023-10-24 07:00:49', 2, NULL),
(20, 'Người dùng mới', '20010798@st.phenikaa-uni.edu.vn', NULL, '$2y$10$pGeS.nJquV0sbnbcKHyD/O/o6e7tC.F5Drw6z/2pimSeh591WbDIG', NULL, '2023-10-24 22:31:35', '2023-10-24 22:31:35', 5, NULL),
(21, 'Người dùng 2', 'test123@gmail.com', NULL, '$2y$10$miMI2GqNFxFk8NgJBsk/5ObjFJQLG7pgh1WTxKB/xnm74nipJe9oO', NULL, '2023-10-24 22:56:17', '2023-10-25 07:32:22', 2, 12341324),
(24, 'Nguoi Viet', 'nguoivietbai@gmail.com', NULL, '$2y$10$VXNT5b0jq5Upk.l06QxsW.rzkto5i25K.zKrC/4NMWG7vS.fi.EQ6', NULL, '2023-10-25 10:51:52', '2023-10-25 10:53:10', 2, 123456789),
(25, 'Nguyễn Đức Mạnh', 'nguyenducmanh11102002@gmail.com', NULL, '$2y$10$FTPmwUKvdsi6HRU6hJU1t.gWN0RpjJVI7W9k2ou9KU7./uBZwQuU.', NULL, '2023-10-25 15:07:32', '2023-10-25 15:11:37', 2, 123456789);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluans`
--
ALTER TABLE `binhluans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binhluans_id_tintuc_foreign` (`id_tintuc`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_id_tintuc_foreign` (`id_tintuc`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `properti_categories`
--
ALTER TABLE `properti_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `properti_categories_id_category_foreign` (`id_category`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `tintucs`
--
ALTER TABLE `tintucs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tintucs_id_properticategory_foreign` (`id_properticategory`),
  ADD KEY `tintucs_id_category_foreign` (`id_category`);

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
-- AUTO_INCREMENT cho bảng `binhluans`
--
ALTER TABLE `binhluans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `properti_categories`
--
ALTER TABLE `properti_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tintucs`
--
ALTER TABLE `tintucs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluans`
--
ALTER TABLE `binhluans`
  ADD CONSTRAINT `binhluans_id_tintuc_foreign` FOREIGN KEY (`id_tintuc`) REFERENCES `tintucs` (`id`);

--
-- Các ràng buộc cho bảng `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_id_tintuc_foreign` FOREIGN KEY (`id_tintuc`) REFERENCES `tintucs` (`id`);

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `properti_categories`
--
ALTER TABLE `properti_categories`
  ADD CONSTRAINT `properti_categories_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `tintucs`
--
ALTER TABLE `tintucs`
  ADD CONSTRAINT `tintucs_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `tintucs_id_properticategory_foreign` FOREIGN KEY (`id_properticategory`) REFERENCES `properti_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
