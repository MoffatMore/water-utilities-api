-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 03, 2019 at 02:11 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `water_meter_reading`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_enquiries`
--

CREATE TABLE `bill_enquiries` (
  `id` int(11) NOT NULL,
  `customer_num` varchar(255) NOT NULL,
  `utility_num` varchar(255) NOT NULL,
  `bill_amount` double NOT NULL,
  `bill_status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_enquiries`
--

INSERT INTO `bill_enquiries` (`id`, `customer_num`, `utility_num`, `bill_amount`, `bill_status`, `created_at`, `updated_at`) VALUES
(1, '1000', '7866', 890, 0, '2019-02-08 22:31:34', NULL),
(2, '1001', '8876', 76.9, 0, '2019-03-08 22:31:31', NULL),
(3, '1000', '7866', 320.5, 0, '2019-03-08 22:31:26', NULL),
(6, '1000', '7866', 3871.45, 0, '2019-04-08 22:37:34', '2019-04-08 22:37:34'),
(9, '100', '7688', 5001.7, 0, '2019-04-19 21:19:50', '2019-04-19 21:19:50'),
(10, '100', '7688', 5001.7, 0, '2019-04-19 21:39:08', '2019-04-19 21:39:08'),
(11, '100', '7688', 5001.7, 0, '2019-04-20 19:41:57', '2019-04-20 19:41:57'),
(12, '1000', '7866', 5001.7, 0, '2019-04-20 20:56:13', '2019-04-20 20:56:13'),
(13, '1000', '7866', 5001.7, 0, '2019-04-20 21:22:31', '2019-04-20 21:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(191) NOT NULL,
  `utility_num` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `leakage_id` varchar(191) NOT NULL,
  `moderator_name` varchar(191) DEFAULT NULL,
  `moderator_contacts` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `customer_id`, `utility_num`, `description`, `leakage_id`, `moderator_name`, `moderator_contacts`, `created_at`, `updated_at`) VALUES
(1, '1000', '7866', 'Thank you for reporting leakage,\r\nPlease note that we will attend it as soon as possible within a day or 2 days', '1', 'Bame Ditsile', '390013', '2019-04-20 01:35:18', NULL),
(2, '1000', '7866', 'Thank you for reporting leakage,\r\nPlease note that we will attend it as soon as possible within a day or 2 days', '2', 'Kamogelo Masedi', '390012', '2019-04-20 01:35:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meter_connections`
--

CREATE TABLE `meter_connections` (
  `id` int(11) NOT NULL,
  `water_type` varchar(191) DEFAULT NULL,
  `ownership` varchar(191) DEFAULT NULL,
  `meter_location` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `middle` varchar(191) DEFAULT NULL,
  `surname` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `marital_status` varchar(191) DEFAULT NULL,
  `dob` varchar(191) DEFAULT NULL,
  `identity` varchar(191) NOT NULL,
  `identity_num` varchar(191) NOT NULL,
  `plot_location` varchar(191) DEFAULT NULL,
  `postal_address` varchar(191) DEFAULT NULL,
  `plot_no` varchar(191) DEFAULT NULL,
  `cell` varchar(191) DEFAULT NULL,
  `ward` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meter_connections`
--

INSERT INTO `meter_connections` (`id`, `water_type`, `ownership`, `meter_location`, `name`, `middle`, `surname`, `email`, `marital_status`, `dob`, `identity`, `identity_num`, `plot_location`, `postal_address`, `plot_no`, `cell`, `ward`, `created_at`, `updated_at`) VALUES
(1, 'Portable water', 'tenant', 'inside', 'More', 'Mofenyi', 'Mofenyi', 'more@gmail.com', 'Single', '199-10-25', 'Omang', '726221890', 'Molepolole', 'P/Bag 0092 Molepolole', NULL, '72436782', 'Ntsono', '2019-04-20 00:49:40', '2019-04-20 00:49:40'),
(2, 'portable water', 'tenant', 'inside', 'Mof', 'Tsarara', 'Motlhanka', 'mof@gmail.com', 'Single', '2019-04-11', 'Omang', '67778', 'Moleps', 'Poo', 'O677', '555', 'Nots', '2019-04-20 00:49:58', '2019-04-20 00:49:58'),
(3, 'Portable water', 'tenant', 'inside', 'More', 'Mofenyi', 'Mofenyi', 'moretsara@gmail.com', 'Single', '199-10-25', 'Omang', '726221890', 'Molepolole', 'P/Bag 0092 Molepolole', NULL, '72436782', 'Ntsono', '2019-04-20 00:55:02', '2019-04-20 00:55:02'),
(4, 'portable water', 'tenant', 'inside', 'Keakilo', 'Kelly', 'Kelz', 'kelly@gmail.com', 'Single', '2019-04-02', 'Omang', '2779990', 'Molepolole', 'P.O.Box 2013 Molepolole', '17744', '74338017', 'Ntsono ward', '2019-04-20 00:56:04', '2019-04-20 00:56:04'),
(5, 'portable water', 'tenant', 'inside', 'Tumelo', 'Stucha', 'Mosepele', 'stucha@gmail.com', 'Single', '2019-04-11', 'Omang', '2009938', 'Molepolole', 'P.O.Box 2013 Molepolole', '17744', '74338017', 'Ntsono', '2019-04-21 04:13:33', '2019-04-21 04:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `meter_readings`
--

CREATE TABLE `meter_readings` (
  `id` int(11) NOT NULL,
  `customer_num` varchar(255) NOT NULL,
  `utility_num` varchar(255) NOT NULL,
  `meter_reading` varchar(191) NOT NULL,
  `cell_no` varchar(191) NOT NULL,
  `meter_reading_file_upload` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meter_readings`
--

INSERT INTO `meter_readings` (`id`, `customer_num`, `utility_num`, `meter_reading`, `cell_no`, `meter_reading_file_upload`, `created_at`, `updated_at`) VALUES
(10, '100', '7688', '45669090', '74668017', '', '2019-03-19 21:19:43', '2019-04-19 21:19:43'),
(16, '1000', '7866', '45669095', '74668017', '', '2019-04-20 21:12:45', '2019-04-20 21:00:50'),
(20, '1000', '7866', '45669094', '74668017', '', '2019-04-20 21:22:21', '2019-04-20 21:22:21'),
(21, '1000', '7866', '445522', '74338017', '', '2019-05-01 13:26:28', '2019-05-01 13:26:28'),
(23, '77002', '72243', '1472580', '77002171', '', '2019-05-01 13:37:42', '2019-05-01 13:37:42'),
(24, '77002', '72243', '5535353', '77002171', '', '2019-05-01 13:47:16', '2019-05-01 13:47:16'),
(26, '77002', '72243', '5535', '77002171', '', '2019-05-01 13:48:24', '2019-05-01 13:48:24'),
(28, '77002', '72243', '553', '77002171', '', '2019-05-01 13:50:17', '2019-05-01 13:50:17'),
(29, '77002', '72243', '553666', '77002171', '', '2019-05-01 13:51:16', '2019-05-01 13:51:16'),
(30, '77002', '72243', '445', '77002171', '', '2019-05-01 13:52:18', '2019-05-01 13:52:18'),
(31, '77002', '72243', '445649', '77002171', '', '2019-05-01 13:52:34', '2019-05-01 13:52:34'),
(32, '77002', '72243', '44564936', '77002171', '', '2019-05-01 13:52:56', '2019-05-01 13:52:56'),
(33, '77002', '72243', '4456800', '77002171', '', '2019-05-01 13:53:49', '2019-05-01 13:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(11, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(12, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(13, '2016_06_01_000004_create_oauth_clients_table', 1),
(14, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('010da9aeb65ccf6dbb0d4fc04e16c54ae7d2ff4df1c840870a9f91d63add17d8044812eed315f159', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-20 11:33:27', '2019-03-20 11:33:27', '2020-05-20 13:33:27'),
('0157c0f719bc94965cfdb53947aa2db2363313f930d5c8517180134e4415d2508c844801d344d90d', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-18 05:58:49', '2019-03-18 05:58:49', '2020-03-18 05:58:49'),
('020c8f378af815f17e255e617597a0ecd9819117e3530b0d8bb0adfc085c2e6fe8339457bd45b080', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-20 06:45:06', '2019-03-20 06:45:06', '2020-03-20 08:45:06'),
('025fe7684c88b4db2d4c8b16821f2844aa6dc859208210458130ff08c556d6e0d48481b18b1616f4', 1, 1, 'Personal Access Token', '[]', 0, '2019-04-10 22:57:19', '2019-04-10 22:57:19', '2020-04-11 00:57:19'),
('02c2065c8400a3ba994ec452a3f3d4c7290e3fbb2484bf07673d7103726db6b80c5e6155b0c6e108', 1, 1, 'Personal Access Token', '[]', 0, '2019-04-10 20:43:23', '2019-04-10 20:43:23', '2020-04-10 22:43:23'),
('09b1a100a0bd7dec1882e702240ea8f8e6114c3ac7e5bbf506dbd4c0bf841f47ea8ef996c6df395f', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 09:32:06', '2019-03-14 09:32:06', '2020-03-14 09:32:06'),
('0a9c25ede8c0da78ce5b247666bbb9c3cf84c5082cd8f1580ca495ad20f2b6bf042a5d5e523c755a', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-27 23:11:25', '2019-03-27 23:11:25', '2020-03-28 01:11:25'),
('0b5736da2e731432cdbb7fdf8320ec8617be0efa7a67a8348437d6ce028c2dc0224fc0659c91a7cf', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-18 08:11:04', '2019-03-18 08:11:04', '2020-03-18 08:11:04'),
('0bc2a34943e41128ad9d2ede111ac4081f5da4bffb75df92e0537d34301633652aff10ca39afda9e', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 08:59:38', '2019-03-14 08:59:38', '2020-03-14 08:59:38'),
('0c05ea4ed14761e6a684fe94eaf00ffc68ed0f45e0b64d70b8b632feb4a9d683bcde56e8166fe0d8', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 22:37:17', '2019-04-20 22:37:17', '2020-04-21 00:37:17'),
('0cfbe53b786bf4ac1aee7b7fc8b410aae8784cd0717489820775166b0138cff94b1a628d94ee9ba3', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 22:27:51', '2019-04-20 22:27:51', '2020-04-21 00:27:51'),
('0d633fd6ef7697c730491333b0942c8dbfa0debda7ae60908ff691ced9b48eadf712f16acbc0e0f4', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-27 22:26:38', '2019-03-27 22:26:38', '2020-03-28 00:26:38'),
('0e5bc14b1fd094c1fb71dfaffdcb4893c162a4f75e0eeb274f2b706dd953b08b7b593d60b2b7131f', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-18 03:04:09', '2019-03-18 03:04:09', '2020-03-18 03:04:09'),
('0f5356f1854411f5104766277d5b624b008fa55b82cbb502b488674baf847b5331be2aa515c8ba50', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-19 23:19:05', '2019-03-19 23:19:05', '2020-03-20 01:19:05'),
('1052635abc7264f4d36470ad560afd140837a400a7595ec184495208c5f86886ff674822047436db', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 17:37:56', '2019-03-14 17:37:56', '2020-03-14 17:37:56'),
('1576e0afac36d24c9e3b024b93e0bc72e8f4f0436af0314dc44d8eb0a41d9942c2390934b3ec9eb0', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-19 22:44:01', '2019-03-19 22:44:01', '2020-03-20 00:44:01'),
('1b92eb41d9cfeb6da2970cbdaa47855817881beb2ba7fc3d326ee540aa0a2ba27e2b2708f4ac92c4', 1, 1, 'Personal Access Token', '[]', 0, '2018-01-01 03:52:36', '2018-01-01 03:52:36', '2019-01-01 05:52:36'),
('1c5fbca9c4fc06c23ae1eaa929f0d191340b650bbf4a5d25381ff31f90eaba3bd1df5508c6000100', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 23:06:53', '2019-04-20 23:06:53', '2020-04-21 01:06:53'),
('1cea51f84f297a693758ed76124ae448a4d74d9727a867ed1642fc25be96c3f2aa992fd75b690b5b', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 04:14:37', '2019-04-20 04:14:37', '2020-04-20 06:14:37'),
('1dc6b0510bf63f93af7e64c8ef4f6401a093bfd3ecdb71aaf445ffdd44aab90aa51cf80be4a52566', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 22:54:03', '2019-04-20 22:54:03', '2020-04-21 00:54:03'),
('1e139f53b4b60328d0dcfd2cdff0f0d9977888b21392c2458003455a1ae5ebeb1bde6bd93d40a874', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 22:56:05', '2019-04-20 22:56:05', '2020-04-21 00:56:05'),
('223fa437d5b4f04d3165ad7f474c54b4bcbe8732fce8a9d184f6bd69e7c68d531a4b38928c1a6d4d', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 03:14:45', '2019-04-20 03:14:45', '2020-04-20 05:14:45'),
('2336f8d6fe1a683b17d1c681423dacc4bf2f5f91f344448b8bf67f68a73825af7cce19154211d217', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-17 19:08:49', '2019-03-17 19:08:49', '2020-03-17 19:08:49'),
('29ce284c5d1b96d6e02b9c028240ba60a95c81188b7aa8a3158cc85f92972739cc6480dd14e52cdf', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 03:54:04', '2019-04-20 03:54:04', '2020-04-20 05:54:04'),
('2b16bb1d7049e7824bbc715791fa034a5ef34a79a6c0859875ecbf62d060225d52549d25a9024da1', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-19 23:34:33', '2019-04-19 23:34:33', '2020-04-20 01:34:33'),
('2f60e89c7a5e45757d4bd0769ea9cfcdad6446e863ad1bee5b0f5f8a9d8c16c0c9deed34394c08e0', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-18 01:19:28', '2019-03-18 01:19:28', '2020-03-18 01:19:28'),
('31f8a188c40b8e7bfeb1b405fe526955f8b64bb49de4e21a9d8f242f6c5bdf08647674ef98cbdd32', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-27 20:50:16', '2019-03-27 20:50:16', '2020-03-27 22:50:16'),
('332a44319a124bab4a7764216032e814365c5083c5fb9db9fd2b0c5b3427bcde9c244ed87166540a', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 21:38:23', '2019-04-20 21:38:23', '2020-04-20 23:38:23'),
('34e4144f9f1c869bfff33ac3f11c27d322b9ba2daf0766f6b24fd972d7d1b6ba2f59d1abd73fa2e2', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-26 19:19:24', '2019-03-26 19:19:24', '2020-03-26 21:19:24'),
('371ea53fb81a18b527f960d9b86adee26f869ebd22490fe7feb45f03bfd84743cf65cf07ed6bfb7b', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 03:17:32', '2019-04-20 03:17:32', '2020-04-20 05:17:32'),
('38c2cc460d7efcb90849a68b9644079584ca1a8702c10aafed49eefde82c4437ed849b1fb0f25b2d', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-18 06:52:01', '2019-03-18 06:52:01', '2020-03-18 06:52:01'),
('43b7b7d81863d73add2975df88a44ed8a5bd3dbaa2da5be1105163eae5e23754db89fb58c43d1b85', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-22 13:27:58', '2019-03-22 13:27:58', '2020-03-22 15:27:58'),
('4528c7ea3651646af48b7f323b1ac8ef0fa9d4290e6058d7f228f08aa0bf56f12b087378436593f5', 8, 1, 'Personal Access Token', '[]', 0, '2019-05-01 13:47:07', '2019-05-01 13:47:07', '2020-05-01 15:47:07'),
('47027cd2835492799b85a0b27510698a564910698fe2316a1b918e18546de5d82dcee31d2acea9d3', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-18 03:02:34', '2019-03-18 03:02:34', '2020-03-18 03:02:34'),
('48e1fedb34b6ff074cb431774573e7a4686387ae9474516739d64ecdcc7e1c7d1f0f20fe46d71ebb', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 09:27:19', '2019-03-14 09:27:19', '2020-03-14 09:27:19'),
('4a576cd289c818e66e6360462897ea870632a1ee6b48e3f74335ea3c6a904fbcad7151eff79788d6', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-28 06:30:26', '2019-03-28 06:30:26', '2020-03-28 08:30:26'),
('4de156118c239a6797e017457e8e2d36371e7117e7e6a360cbb13d58f4beea5dde61263c894e74d6', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 02:39:51', '2019-04-20 02:39:51', '2020-04-20 04:39:51'),
('4f23ff35eed5dd088b57b621cd6882198c4295d87c81ae4498e86624aca97cb003ec58a342d00b6d', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 03:21:19', '2019-04-20 03:21:19', '2020-04-20 05:21:19'),
('4fa6f45679533abb4ce502b848954ce325f5d380898bf8dd83b53eeb3235a10f5c27c705c57e4b87', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-19 23:29:04', '2019-04-19 23:29:04', '2020-04-20 01:29:04'),
('507f228c5bb55c726a294f8a27799719632791b106ee0c458c7bc098d0a0526cf74f3dc73a643c90', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 10:14:16', '2019-03-14 10:14:16', '2020-03-14 10:14:16'),
('523774bf31fef2a3b9329792dcc00c0fdbc580409a6cb9700030b740b2f71912baf7a05d63cdbe3e', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-22 14:05:15', '2019-03-22 14:05:15', '2020-03-22 16:05:15'),
('57bb2e6a5ce4e0552545e0acd3bf73d0dc6be5fc35e52fb0c789d14d2ba36519fb4ca2c77b5ba1b2', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-22 14:02:28', '2019-03-22 14:02:28', '2020-03-22 16:02:28'),
('57c678d1d4f6482f914eef46a64c3ffd8b0737d127adc8701b74d11c051726d28725868b50550af9', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-27 20:38:25', '2019-03-27 20:38:25', '2020-03-27 22:38:25'),
('592aa6fda0bca257ba6f4110adf4b5a4b88aef5ced5960af48d21aae43b4568bcf7872f7b19a0a21', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-19 22:50:01', '2019-03-19 22:50:01', '2020-03-20 00:50:01'),
('5e4f2f8d2b942301017d5f1b43b54c14603b9e912b9c1e033524c8e63ed123a4474228f3349918e1', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-27 22:08:03', '2019-03-27 22:08:03', '2020-03-28 00:08:03'),
('5e6390aca78d5b65c8ec9e8ad78ef2e165056c3f5036d036962e7420e93995c174f751d76c7dd733', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 10:14:45', '2019-03-14 10:14:45', '2020-03-14 10:14:45'),
('5e9e929a0deeabe0ad82ef45b673d8714c86ed7068976acd636d8a15d838a8b4a193fa4c4cb9124a', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 09:33:13', '2019-03-14 09:33:13', '2020-03-14 09:33:13'),
('5f0bac8da2a4f5dff7324af28bec22e1be60a9376ecbd667bf87bf700efffac567bac3d477c5dbb9', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-18 04:52:26', '2019-03-18 04:52:26', '2020-03-18 04:52:26'),
('61d7745a87273456fbd1554b58b4449687fdf2251b5146a3770b0a4b32f092b7e6c57a0c8eb531d0', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-15 03:13:06', '2019-03-15 03:13:06', '2020-03-15 03:13:06'),
('62f86a2a81a5be5a3c2545ebc827429630199b2141f3dc69c449f15560d78bf2c7c3382012ab4274', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-18 06:43:33', '2019-03-18 06:43:33', '2020-03-18 06:43:33'),
('63b739722595847369a051fc53dc371dadb108d89905b79e45551b924751466ef1e5185c9acf1ab2', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 02:10:59', '2019-04-20 02:10:59', '2020-04-20 04:10:59'),
('647a25a09e2645f82e0a5fb9ba8cf58cefcae2bd9cee00631b64f4f9552e226ab3be0d9de00bb200', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-22 13:31:27', '2019-03-22 13:31:27', '2020-03-22 15:31:27'),
('6500b36e520abe65036868ffb2f4881743cd43c4f79338e8101762db21133a6635fc2258202a7b57', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 03:59:47', '2019-04-20 03:59:47', '2020-04-20 05:59:47'),
('655db1ba7f32dc4b937372376f792d2a60603bfefde8ab5fea2047d75c2a92983613653be7bdba71', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 02:43:49', '2019-04-20 02:43:49', '2020-04-20 04:43:49'),
('68ca263506dd25fdf683ff137dfd108b5a580b9f281e8917e5d4d288298926aed09e774d19f18165', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-22 14:01:08', '2019-03-22 14:01:08', '2020-03-22 16:01:08'),
('699a56549d2703935bea1fb7d90290b0cbbc44ede8f5518fe3da545cb66b03a9a2460eb92e1ba54d', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-18 05:59:37', '2019-03-18 05:59:37', '2020-03-18 05:59:37'),
('6a578a77f118789c526318d8e5aef8ceef22e8937969c4cc9aa37c4219bc370d77fe63c0b0a9886d', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 22:25:58', '2019-04-20 22:25:58', '2020-04-21 00:25:58'),
('6e28bc679cb1c8dfcbc88bd3b7fc72a2d6ca0e06ccf6ac87c3da6cbf3061b9cba4868d791d2944a0', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 03:58:02', '2019-04-20 03:58:02', '2020-04-20 05:58:02'),
('70210c15750e9f1ae80ce5e36a483b3be96b4d2987205af3a7b1102fc304cf07e7b209e5fd0a2406', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 01:36:48', '2019-04-20 01:36:48', '2020-04-20 03:36:48'),
('70ae5f551c9e4ad32df5c9bc1e21e696f12f71a9f675e023a39703875a4164ebbb0703d3043daaaf', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 09:37:20', '2019-03-14 09:37:20', '2020-03-14 09:37:20'),
('70f8aadfaf456e0667965e1d17a4f509158f425a7361165399a381041c730b275bcadab4a1b6d75e', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-18 05:58:08', '2019-03-18 05:58:08', '2020-03-18 05:58:08'),
('75dc322b45f79d4c97d111f262262fbf87e5dbc0fde21aab130326b6075a9787ea0acafde43e1246', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 10:15:59', '2019-03-14 10:15:59', '2020-03-14 10:15:59'),
('75f9216cdec67d1064207de498e422f41b125c5eee11cb47d5450277a7eb6098c6a6a004beecb287', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-27 22:31:18', '2019-03-27 22:31:18', '2020-03-28 00:31:18'),
('7b58a7c9aa0be1fc5d439297c05ac66259c91dd1b9e4efc7d56efdf1914e684f3d5211b257e32dbe', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-26 19:05:46', '2019-03-26 19:05:46', '2020-03-26 21:05:46'),
('7b648c76ce58d3434de51e36023182a365d69eb6478d37786a384e66dee109109b34dabff5ab80ed', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-27 20:06:23', '2019-03-27 20:06:23', '2020-03-27 22:06:23'),
('7b64e46a36b46f52bfc1860bfe8d5a6beead51d21af513a311855543967961a4b3dc2dca7d53cea8', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-27 17:04:08', '2019-04-27 17:04:08', '2020-04-27 19:04:08'),
('7dbda4c7379bc6253e66ecf84e78eaa6dbcbc16b4a1a79d28b81d5d18611e1aedabaa9684aa6a4da', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-19 23:20:13', '2019-04-19 23:20:13', '2020-04-20 01:20:13'),
('8110ec971f7335cfbcf5a77304faa553941f86cd7d4a0ce352c043ae27f3b1d65e1661f611895d4f', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-19 22:26:51', '2019-03-19 22:26:51', '2020-03-20 00:26:51'),
('8165e941b7d38cee48fe5b72d436d8ddd48e551d5cc75780554f7b6a3dd487ca7705c698806c535d', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 01:50:30', '2019-04-20 01:50:30', '2020-04-20 03:50:30'),
('81d417c02f0d2b3e9211ab8698632eec4c175f83bd6371ec82f70ce7a75faf4210d0dadad515d1d1', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-19 22:42:37', '2019-03-19 22:42:37', '2020-03-20 00:42:37'),
('82159925f1bb642f21e197b8b0c7726cf947600cbaf629f4b6339c39d8f8f3031edf1784116f311f', 1, 1, 'Personal Access Token', '[]', 0, '2019-04-08 20:38:51', '2019-04-08 20:38:51', '2020-04-08 22:38:51'),
('832e6690532ce66380e31a41098e7aa0f6c53e857da2c3e98542da628100c194c2d55fe2fcacbc57', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-19 23:16:57', '2019-04-19 23:16:57', '2020-04-20 01:16:57'),
('840b767f154072c0692baa18198e9cb853a0a8c7980f332c7846d9e331af1c7e42669d5d3020d92c', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-19 22:43:19', '2019-03-19 22:43:19', '2020-03-20 00:43:19'),
('85f19a32194b0afa98615520f89e968f25949f63151f62ca7ebe25f4d1a7e0692e52e08258c696ed', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 09:35:24', '2019-03-14 09:35:24', '2020-03-14 09:35:24'),
('89379914e6c72922792c70ded05f9921a8f7a920a5a8f396ffaced6e3dfe72aa45f7d648e0c9cc0d', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-27 21:43:15', '2019-03-27 21:43:15', '2020-03-27 23:43:15'),
('8cb72c6c7bb4a3bf2f810af60c05c17cfdd4a5ea7cfd1e74852c2f4736f07cabfa4e150e6cdba3a3', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 00:52:24', '2019-04-20 00:52:24', '2020-04-20 02:52:24'),
('8daa5b181d7f9866123128fe3cc3a4c09672611f390834dbe624ba772b85f4fd5db8eaea0b1824c4', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-20 11:45:58', '2019-03-20 11:45:58', '2020-03-20 13:45:58'),
('91104c6f86bf00b8324283a11394bc1c6b541f37a1364dfa107e8d45866acff3810673a213143372', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-27 22:23:45', '2019-03-27 22:23:45', '2020-03-28 00:23:45'),
('91b65813fa5bb28ecd0f7b9bf84de92f4efd1c8263d728b4cf293415cb7bfc814cdb0dc53d06009e', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 21:29:57', '2019-04-20 21:29:57', '2020-04-20 23:29:57'),
('91d5a620e824d36e54a0e82706b6c7d3d2e02a32ff2de591bed7484919008f86352ea14f1356ab40', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 01:55:31', '2019-04-20 01:55:31', '2020-04-20 03:55:31'),
('9460180d15a8f3aaed2bc8a4c9d63c9d4c7414adfd232dfb349e8af2a030c0b1221c4cca38daee00', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 23:05:52', '2019-04-20 23:05:52', '2020-04-21 01:05:52'),
('979c5bb1d40b273323781b5cdcc176b991288757fe16a1f820a0063df31214754553b5d1e1a8d1d5', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 10:21:36', '2019-03-14 10:21:36', '2020-03-14 10:21:36'),
('984dc86e5037cb1029ac5b33a17dc881582c555873309f0ef60789caef38fcde2ec3d9bc5b0b1d86', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-27 20:48:43', '2019-03-27 20:48:43', '2020-03-27 22:48:43'),
('9ee2c329832adc8c4f5584ddb5a53f4bf6e9b08155e0c4e21e2a955befee1c611f3c267cc3c47647', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-20 06:58:37', '2019-03-20 06:58:37', '2020-03-20 08:58:37'),
('9f4e8bbaeca54cfb3816fe152b881f53e06d19181fdc46273e3ebd9bb8803c7fdf4de95ae1e976e1', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 22:18:30', '2019-04-20 22:18:30', '2020-04-21 00:18:30'),
('a303a6d32f65947f185535945996342bf719169dee54e3487bd79321b93ee938c4f11549e1422e25', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-22 13:58:17', '2019-03-22 13:58:17', '2020-03-22 15:58:17'),
('a40544ed5a483ee3547ee512f30e1e6df16c2ba2e984489be6d7ea1e7a5e85b6be0940edff533e10', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-22 13:30:34', '2019-03-22 13:30:34', '2020-03-22 15:30:34'),
('a44632c5538371f424b769959c225c8a3ffd305d27fe0a433b0e29dd1b99d66ff51b671814ee7694', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 21:28:39', '2019-04-20 21:28:39', '2020-04-20 23:28:39'),
('a66f5e93edb28259631a24b092eab4e181830e9e87fb7ebf75d777e83411a5658205e5ae99ff660a', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-22 13:28:53', '2019-03-22 13:28:53', '2020-03-22 15:28:53'),
('a94e3c6b170c11339dd03f6430024cc46837c598c19a81575ac57829291bfbe6cfdf2160ef5d86af', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-20 06:54:03', '2019-03-20 06:54:03', '2020-03-20 08:54:03'),
('a9cac61a699db908ebda7831ac785161857f4aa54de83103efa16b5228162991346f1d4ed7835946', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-20 11:36:29', '2019-03-20 11:36:29', '2020-03-20 13:36:29'),
('aa2149fc5bf422e4942dc20d6daa8cb11aa73f435ed23b5b745b37bf83df833f345e8f9d5b15ca9c', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-18 02:59:19', '2019-03-18 02:59:19', '2020-03-18 02:59:19'),
('ad4593120a9104f05b4970ac43ec27ff5355b8a7e1ac295ee7e4bee7b7c21f367a64192dc3a7d087', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-18 01:10:07', '2019-03-18 01:10:07', '2020-03-18 01:10:07'),
('ada949480c92658fb63d085dc9371e3f381617a64586a419ec5da800f0e336e6693dee4af9ee65bf', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 10:18:51', '2019-03-14 10:18:51', '2020-03-14 10:18:51'),
('af0fc94c93238448b12c38779c1dd0a2bfa11bfe1ec93db04fc9d653d54122853bddfdec6103ca5e', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-22 14:12:19', '2019-03-22 14:12:19', '2020-03-22 16:12:19'),
('b02566b93be78eabc7fb196fb0a391f666b7d65cb2c1a0bf56a5655bccb8eb65b7f25fef0af71bd3', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-18 06:45:50', '2019-03-18 06:45:50', '2020-03-18 06:45:50'),
('b0a04eb96927e5666ea829386e2538b5a6ff150db132178f567fa5f4383e5960c3e5e19d1726c50d', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-20 06:56:38', '2019-03-20 06:56:38', '2020-03-20 08:56:38'),
('b0baab12ec6dd2fd05c4493fbb06d220eb96d5f01a4ce2186d1f0af77829b6a46804bba76e8d9472', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 02:09:56', '2019-04-20 02:09:56', '2020-04-20 04:09:56'),
('b0db8db7017e6700b78d944369b5aa640eae42830dc0d860ca7026ff8bd6ea222b45cb4456694a6f', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-19 22:52:49', '2019-04-19 22:52:49', '2020-04-20 00:52:49'),
('b2b417b1791bde588c2560e9cc3983098854ebc642baf4d3b8d5203a14bb43391b4b1e6f5885f6db', 8, 1, 'Personal Access Token', '[]', 0, '2019-05-01 13:42:05', '2019-05-01 13:42:05', '2020-05-01 15:42:05'),
('b31e4ab6bf16bc049c9198f8e7c994a662bd232aeb23d84e65b30b70c812fbbbf38b32c2fbae4a25', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-18 06:07:27', '2019-03-18 06:07:27', '2020-03-18 06:07:27'),
('b69dfe94f449b9b41e3783c453c6941552cf6c02b9f268fe4584676784bccd0128616a275321484b', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 22:39:28', '2019-04-20 22:39:28', '2020-04-21 00:39:28'),
('b807d71a95068097581cc8f84be216b9e396ddf1ad20977c67635f1be3c3842f1849e3bacb69873a', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-19 23:03:48', '2019-04-19 23:03:48', '2020-04-20 01:03:48'),
('b91efb794f7c59629355a47e97a563d841fd0a378ff9508af263599a485e08f6ba4eabe2a25aad5c', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-20 06:24:18', '2019-03-20 06:24:18', '2020-03-20 08:24:18'),
('b9b86b083296956766d055f24367dd6299e82074d766058c5b73d494a18029a7ba87dd7c3237cdfb', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 18:17:59', '2019-03-14 18:17:59', '2020-03-14 18:17:59'),
('babbf0bdce11bf96007d89f4e507e8565fcfc6f25c420325a0b855a725abbfd4a052be0bb30fec19', 8, 1, 'Personal Access Token', '[]', 0, '2019-05-01 13:52:05', '2019-05-01 13:52:05', '2020-05-01 15:52:05'),
('bb1ad8849adee1d417c4805f58a269020c3fe629e5b184904f744fac61cfc851dd6cce73acf209fa', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-21 03:51:08', '2019-04-21 03:51:08', '2020-04-21 05:51:08'),
('bb3f3163b27ef6a8575ac6b2cb6f4fab4071a6b96ea9be43987c580b4dcaec8cad223d6ad206655d', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-22 13:43:04', '2019-03-22 13:43:04', '2020-03-22 15:43:04'),
('bbed47a1086285d993897ca1304c30e95321d6b7842ac06b0fd54737fe4571e2e79a2ed3dd8869f7', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 02:00:10', '2019-04-20 02:00:10', '2020-04-20 04:00:10'),
('bd2e11c8a2863e25891ec3b8e32da85ccd1bcff6b47d1decf34b6d4ab7607dc1560f5b00335672b9', 1, 1, 'Personal Access Token', '[]', 0, '2019-05-01 13:22:46', '2019-05-01 13:22:46', '2020-05-01 15:22:46'),
('becdb8813fa950d1f370f2b358773deccd031d0f63b6d980ca61f425c5def0992ffc89d079333c9b', 7, 1, 'Personal Access Token', '[]', 0, '2019-04-21 03:48:29', '2019-04-21 03:48:29', '2020-04-21 05:48:29'),
('bf3a908d9e4240b394c830f019ce489af3c412a80e015d700a33af50934680cf11b235a62b44127a', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-19 22:27:10', '2019-03-19 22:27:10', '2020-03-20 00:27:10'),
('c009915662cd55e66ca78581364729e75c5e0006e9c19ff47b3e5da9eb72ec3f3d658b3b3a7fb8ff', 8, 1, 'Personal Access Token', '[]', 0, '2019-05-01 13:36:10', '2019-05-01 13:36:10', '2020-05-01 15:36:10'),
('c026bd625578f72003d52c56fd3ad957627a6f4971859222e836027d696c3c422d52a7fed5a69ced', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-19 23:31:39', '2019-04-19 23:31:39', '2020-04-20 01:31:39'),
('c25baddec7946f3941d29b74c741f908457ca3c3fd9354e984f2607340b5dedd5747d8a3129c4e44', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 01:47:17', '2019-04-20 01:47:17', '2020-04-20 03:47:17'),
('c4462810486ca726e0e0f596d1e308fe39cb1aeb21c306e8556b3d174ea3bcb7096cee9367a97f29', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 01:23:50', '2019-03-14 01:23:50', '2020-03-14 01:23:50'),
('c50d9efc1ea5986fffc8e36479102ef6533bfe01e7a9eec8577762bf399694dcbbd916ebad6ba9d9', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 22:57:27', '2019-04-20 22:57:27', '2020-04-21 00:57:27'),
('c7219bcba33b57a45d2f9876b9f22b386f8c985f7c7d0b3877c712eaffc9bab159a2cb0df2672760', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 21:41:41', '2019-04-20 21:41:41', '2020-04-20 23:41:41'),
('cd68fa626220bff92e92f2a99fa0fbd3d25259da8a175439f02733fe68f27749054e51889d754658', 7, 1, 'Personal Access Token', '[]', 0, '2019-04-20 00:03:16', '2019-04-20 00:03:16', '2020-04-20 02:03:16'),
('d223baea8b22427b3cb32570b72c503bb2bf2b5b2490c7d3b055bcff251f9d3bd2b8bf7a0eae8caf', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 03:33:49', '2019-04-20 03:33:49', '2020-04-20 05:33:49'),
('d303402e897775812e2c4e61e496f484d704bd17a44870ad875fcdd592a5e5e7c770ecaffcce8f67', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-27 21:36:38', '2019-03-27 21:36:38', '2020-03-27 23:36:38'),
('d71f922ce6062f4af110e4397d81a759836b35b06652427ddb8cdb026e30390be3bd18b9a526c056', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-19 22:45:49', '2019-04-19 22:45:49', '2020-04-20 00:45:49'),
('d7774116c8366b8dc47e88603575d1e0f9ea8bc9aaa3df8ecee3824753fe0db1f78b9c5f304a7d47', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 09:34:15', '2019-03-14 09:34:15', '2020-03-14 09:34:15'),
('d831d78b6b49309b06574b991a4dcf5963eee674064dad03856e063fc91b1a88adc25aa047d7ee85', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 10:30:04', '2019-03-14 10:30:04', '2020-03-14 10:30:04'),
('d8bb6940e15854f9afaf60474b99118e378867ff7bf5af2f61a81ab855cabddacacaebe7227aeb54', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 02:41:07', '2019-04-20 02:41:07', '2020-04-20 04:41:07'),
('d9d354a3e216f822085fa10538d92b884b65d1cd420d2799fe8ae3046f44155adf0caf9c63a60fc7', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-18 06:12:43', '2019-03-18 06:12:43', '2020-03-18 06:12:43'),
('db21cde77d0422a33c03b364056963c19d1debf1cddb32b0f8dcdde5b65f9cf2ed7596b4beac175c', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-20 07:11:48', '2019-03-20 07:11:48', '2020-03-20 09:11:48'),
('df194c5e0d80d44b82ab8693c242a899371daa83c288ac3563b538bfe6083a5e629b0aaa63f5326c', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-18 01:08:08', '2019-03-18 01:08:08', '2020-03-18 01:08:08'),
('e0db5aa65c4b9fd13dc218ba5699db885db2febabbe9a35e71a1cecbc623ef846ed59e5c4c36d904', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 01:52:49', '2019-04-20 01:52:49', '2020-04-20 03:52:49'),
('e15a2b4cbeb6e087a6df42ecd77be226485d9bfc4b6dca85de4a008984f75dce74c19f326c3871b7', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-18 02:58:06', '2019-03-18 02:58:06', '2020-03-18 02:58:06'),
('e1d6d56bfc195c54c122ee9cdcb577cc934531fa53d531770eca6fa02157d1fde04ad4a49a9c77dc', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 02:07:46', '2019-04-20 02:07:46', '2020-04-20 04:07:46'),
('e47c85f0a0ac6431cab17319d0361ddc4d3b5f4673ce6998e42cef98bee3f53e3dc898b70ef83979', NULL, 1, NULL, '[]', 0, '2019-03-14 01:35:17', '2019-03-14 01:35:17', '2020-03-14 01:35:17'),
('e5a75ac6223016bfe0a42dbe0fb54e79f6141965b7481570babb80cc002a66e095f7a32ca4b061c0', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 23:10:56', '2019-04-20 23:10:56', '2020-04-21 01:10:56'),
('e62cf4f37b9a6daf1fa93a5a824b0a73430b6af34d4c8331259a1d79ff9548627274e5a08cb55b83', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-20 06:19:46', '2019-03-20 06:19:46', '2020-03-20 08:19:46'),
('e76268360c91ecff01bfe197bd81b97d668daa060aac29466a3cea36684c0996153ac8dd77db209f', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-18 01:08:33', '2019-03-18 01:08:33', '2020-03-18 01:08:33'),
('e903980e9cf529b592cd065e659fac8dc53df114995eee5905a3bb1a748a0ab6f1d40271cfe07afe', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 12:18:45', '2019-03-14 12:18:45', '2020-03-14 12:18:45'),
('ecc458dddbdf28d3829250496d17ffb59f9a6f45cbd340619d7d7c7fbcc4afc46b707d1b9da683db', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-21 04:10:13', '2019-04-21 04:10:13', '2020-04-21 06:10:13'),
('ee987cb439903089fc19da92cfdf757562e27a662733262d9025b6f68b1d96f86abb19940472d412', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-20 14:07:06', '2019-03-20 14:07:06', '2020-03-20 16:07:06'),
('eeb97f92a5f4876cc13ebd0c0a1f1a9299b4217dc0c923f7c59d59a892f4996a547dc94f7f68a7e0', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 09:45:43', '2019-03-14 09:45:43', '2020-03-14 09:45:43'),
('f01ee2a8f7ec5b6965055bbb7ede3d355662f6806062c0252d89f58f72f261a4a52cd0d71c808086', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 03:09:10', '2019-04-20 03:09:10', '2020-04-20 05:09:10'),
('f0c78b6a328fc9cdffbfd683f1ffd1007c0c4edd104520a4c1ec61182c2b29838af026aeded54335', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 03:53:07', '2019-04-20 03:53:07', '2020-04-20 05:53:07'),
('f3ea49a93b94dedfa1621779041cb589064e91498a5b40dff9ce547b22b5a2ebaec6c4c39f9709b7', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-20 07:03:35', '2019-03-20 07:03:35', '2020-03-20 09:03:35'),
('f4f96a2aa8655183d4ed0d899fb08d0d8735df1ec5408665ea4fc0ac031a237a322490a81454bf1e', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-19 22:56:20', '2019-04-19 22:56:20', '2020-04-20 00:56:20'),
('f505d8115eadd887f8a43b53e77b7eca63bcb1409d3ee8abb1e99cbfab598320794fe61b748027dc', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 01:49:02', '2019-04-20 01:49:02', '2020-04-20 03:49:02'),
('f5eb645c8bb6646898171e142dfb92c5c6a97c508ca957dbfb2b4c5e41c81873d97de7d866d13a9b', 1, 1, 'Personal Access Token', '[]', 0, '2019-04-10 22:51:09', '2019-04-10 22:51:09', '2020-04-11 00:51:09'),
('f79c2d301894af6d215af451176cce9b5cecc432d2e7d72d8e85e7d3c6220ea2ff5cb1ec79011d38', 7, 1, 'Personal Access Token', '[]', 0, '2019-04-19 23:55:36', '2019-04-19 23:55:36', '2020-04-20 01:55:36'),
('faa753e143f0153af33bcac5b122620fd64ece0604e44a99955bc507623ab776866f1839c295cba8', 6, 1, 'Personal Access Token', '[]', 0, '2019-04-20 03:56:08', '2019-04-20 03:56:08', '2020-04-20 05:56:08'),
('fe0bf2e43921c7b7ab1c6d2ed5e79070673d2695d0c52620f3d4385866d8f4de94507d5736335bc7', 1, 1, 'Personal Access Token', '[]', 0, '2019-03-14 01:32:15', '2019-03-14 01:32:15', '2020-03-14 01:32:15');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '6XIq60BGO0inlqC9d95P7UZUObNJDzgE4Zz5gMQO', 'http://localhost', 1, 0, 0, '2019-03-15 01:52:51', '2019-03-15 01:52:51'),
(2, NULL, 'Laravel Password Grant Client', 'ffaxRqIdHrS2oQy3yklGdsnlwe4hRls3gvMUt9KU', 'http://localhost', 0, 1, 0, '2019-03-15 01:53:11', '2019-03-15 01:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-03-15 01:53:11', '2019-03-15 01:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paypall_payments`
--

CREATE TABLE `paypall_payments` (
  `id` varchar(191) NOT NULL,
  `state` varchar(191) NOT NULL,
  `payment_method` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `amount` varchar(191) NOT NULL,
  `create_time` varchar(191) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pay_bills`
--

CREATE TABLE `pay_bills` (
  `id` int(11) NOT NULL,
  `customer_num` varchar(255) NOT NULL,
  `utility_num` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `meter_reading` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pay_bills`
--

INSERT INTO `pay_bills` (`id`, `customer_num`, `utility_num`, `amount`, `meter_reading`, `created_at`, `updated_at`) VALUES
(1, '80219921', '0092282', 5000, NULL, '2019-04-08 20:31:23', NULL),
(2, '80219921', '1002292', 3000, NULL, '2019-04-08 20:31:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `report_leakages`
--

CREATE TABLE `report_leakages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cell` int(8) NOT NULL,
  `email` varchar(255) NOT NULL,
  `leakage_location` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `feedback_id` int(11) DEFAULT NULL,
  `physical_address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report_leakages`
--

INSERT INTO `report_leakages` (`id`, `name`, `cell`, `email`, `leakage_location`, `location`, `feedback_id`, `physical_address`, `created_at`, `updated_at`) VALUES
(1, 'Moffat', 74338017, 'mmotlhanka@bhp.org.bw', 'inside', 'Newtown molepolole', 1, 'P.O.Box 2013 Molepolole', '2019-04-20 01:30:23', NULL),
(2, 'Moffat More', 74338017, 'inside', 'inside', 'Molepolole', 2, 'P.O.Box 2013 Molepolole', '2019-04-20 01:30:58', NULL),
(3, 'Moffat', 74338017, 'mmotlhanka@bhp.org.bw', 'inside', 'Molepolole', NULL, 'P.O.Box 2013 Molepolole', '2019-03-15 05:51:43', NULL),
(4, 'Moffat More', 74338017, 'inside', 'inside', 'Molepolole', NULL, 'P.O.Box 2013 Molepolole', '2019-03-15 07:56:03', NULL),
(5, 'Kamogelo', 76339012, 'Km@gmail.com', 'outside', 'Moshupa', NULL, 'P/Bag 990 Moshupa', '2019-03-20 07:02:23', NULL),
(6, 'Kelly', 76221134, 'Kellykelz@gmail.com', 'inside', 'Molepolole', NULL, 'P.O.Box 2013 Molepolole', '2019-03-27 22:32:40', NULL),
(7, 'More', 74338017, 'more@gmail.com', 'inside', 'Molepolole', NULL, 'P.O.Box 2013 Molepolole', '2019-04-19 23:35:49', NULL),
(8, 'Jhg', 8685668, 'diie@gmail.com', 'inside', '.oxhhk', NULL, 'Tivbnhx', '2019-05-01 13:39:36', '2019-05-01 13:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_num` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utility_num` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plot_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plot_location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identity_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cell` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `customer_num`, `utility_num`, `plot_num`, `plot_location`, `identity`, `identity_num`, `postal_address`, `cell`, `password`, `remember_token`, `mode`, `created_at`, `updated_at`) VALUES
(1, 'Moffat', 'More', 'mmotlhanka@bhp.org.bw', '90220', '00292', '17223', 'Ledumang', 'Omang', '322119019', 'P.O.Box 2013 Molepolole', '74338017', '$2y$10$ZaJS8KGuFcCOjjPZWxlt4edWE491gNwLAeDbmUMtjQIQPHB1DavFK', NULL, 0, '2019-03-14 01:20:07', '2019-03-14 01:20:07'),
(2, 'Ogone', 'Masedi', 'mothusimotlhanka@gmail.com', '8100', '5433', '1230', '403', 'Omang', '900339921', 'P.O.Box 2013 Gaborone', '76275461', '$2y$10$U2a4Um4zAH5Ao/X21ElwNepbAeJb98/Us00sdkCLlS.w1YjLPwfpm', NULL, 0, '2019-03-19 22:48:52', '2019-03-19 22:48:52'),
(3, 'Gaone', 'Motlhanka', 'gmotlhanka@gmail.com', '2000', '7900', '17732', '403', 'Omang', '899002134', 'P/Bag 890 Molepolole', '72757857', '$2y$10$.7Tg5QgpSHJHVC8exxkAIOTR9Sc6RSVubTihnF5hBpAbtJKkyerCq', NULL, 0, '2019-03-20 06:24:02', '2019-03-20 06:24:02'),
(4, 'sd', 'ds', 'connie@bhp.org.bw', 'sds', 'sd', 'dsd', '19', 'Omang', '122121233', '323 Moleps', '3232332', '$2y$10$7Ac4TRddbouk3fCR8VQRAO3hw2poUrqJbZFK1XPq/BTGeVFyOxsva', NULL, 0, '2019-04-11 09:51:05', '2019-04-11 09:51:05'),
(6, 'More', 'Mofenyi', 'more@gmail.com', '1000', '7866', '17744', 'Molepolole', 'Omang', '147809019', 'Moshupa', '74668017', '$2y$10$5SATJ4YywqKnxqmDsqtzFu4WSsg6mocl2ZwQU53ezro4vVOCtfmTa', NULL, 0, '2019-04-19 22:44:13', '2019-04-19 22:44:13'),
(7, 'Gaone', 'Gaone', 'gaone@gmail.com', NULL, NULL, 'Ntsono Wars', 'Molepolole', 'Omang', '345787887', 'P/Bag 33u Molepolole', '74698047', '$2y$10$aEh5OllhHDIe.bNzIZ5jeOIKEtM7nNUlBSKGidqTqzy3ZBWZs71QW', NULL, 1, '2019-04-19 23:55:13', '2019-04-19 23:55:13'),
(8, 'Kereeditse', 'Moradu', 'kereeditsemoradu@gmail.com', '77002', '72243', '477892', 'Donga', 'Omang', '951225217', 'P o box 767 Francistown', '77002171', '$2y$10$HGFLRtnanSlHmJBkO9nKXe/NlBA6LGGyTiMApPY6GfRYSQeQjD/UW', NULL, 0, '2019-05-01 13:35:50', '2019-05-01 13:35:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill_enquiries`
--
ALTER TABLE `bill_enquiries`
  ADD PRIMARY KEY (`id`,`customer_num`,`utility_num`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`,`customer_id`,`utility_num`);

--
-- Indexes for table `meter_connections`
--
ALTER TABLE `meter_connections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `meter_readings`
--
ALTER TABLE `meter_readings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meter_reading` (`meter_reading`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paypall_payments`
--
ALTER TABLE `paypall_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_bills`
--
ALTER TABLE `pay_bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_leakages`
--
ALTER TABLE `report_leakages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill_enquiries`
--
ALTER TABLE `bill_enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meter_connections`
--
ALTER TABLE `meter_connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `meter_readings`
--
ALTER TABLE `meter_readings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `report_leakages`
--
ALTER TABLE `report_leakages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
