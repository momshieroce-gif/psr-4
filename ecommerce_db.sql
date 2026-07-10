-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Jul 10, 2026 at 08:45 AM
-- Server version: 10.11.18-MariaDB-ubu2204
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_rights`
--

CREATE TABLE `access_rights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `access_rights`
--

INSERT INTO `access_rights` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Listing', '2024-08-09 21:42:02', '2024-08-09 21:42:02'),
(2, 'Create', '2024-08-09 21:42:02', '2024-08-09 21:42:02'),
(3, 'Update', '2024-08-09 21:42:03', '2024-08-09 21:42:03'),
(4, 'Delete', '2024-08-09 21:42:03', '2024-08-09 21:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(10) UNSIGNED NOT NULL,
  `addressable_id` int(11) NOT NULL,
  `addressable_type` varchar(255) NOT NULL,
  `province_id` bigint(20) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `brgy_id` bigint(20) NOT NULL,
  `country_id` varchar(255) DEFAULT NULL,
  `region_id` varchar(255) DEFAULT NULL,
  `street_lot_blk` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `default_address` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `addressable_id`, `addressable_type`, `province_id`, `city_id`, `brgy_id`, `country_id`, `region_id`, `street_lot_blk`, `landmark`, `longitude`, `latitude`, `default_address`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.308226', '10.308226', 1, NULL, '2024-08-09 21:38:56', '2024-08-09 21:38:56'),
(2, 2, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.101431', '10.101431', 1, NULL, '2024-08-09 21:38:56', '2024-08-09 21:38:56'),
(3, 3, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.705542', '10.705542', 1, NULL, '2024-08-09 21:38:57', '2024-08-09 21:38:57'),
(4, 4, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.701179', '10.701179', 1, NULL, '2024-08-09 21:38:57', '2024-08-09 21:38:57'),
(5, 5, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.379461', '10.379461', 1, NULL, '2024-08-09 21:38:57', '2024-08-09 21:38:57'),
(6, 6, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.95165', '10.95165', 1, NULL, '2024-08-09 21:38:57', '2024-08-09 21:38:57'),
(7, 7, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.50057', '10.50057', 1, NULL, '2024-08-09 21:38:57', '2024-08-09 21:38:57'),
(8, 8, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.925572', '10.925572', 1, NULL, '2024-08-09 21:38:57', '2024-08-09 21:38:57'),
(9, 9, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.538298', '10.538298', 1, NULL, '2024-08-09 21:38:57', '2024-08-09 21:38:57'),
(10, 10, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.797536', '10.797536', 1, NULL, '2024-08-09 21:38:57', '2024-08-09 21:38:57'),
(11, 11, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.581126', '10.581126', 1, NULL, '2024-08-09 21:38:57', '2024-08-09 21:38:57'),
(12, 12, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.54714', '10.54714', 1, NULL, '2024-08-09 21:38:57', '2024-08-09 21:38:57'),
(13, 13, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.13538', '10.13538', 1, NULL, '2024-08-09 21:38:57', '2024-08-09 21:38:57'),
(14, 14, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.39143', '10.39143', 1, NULL, '2024-08-09 21:38:57', '2024-08-09 21:38:57'),
(15, 15, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.633746', '10.633746', 1, NULL, '2024-08-09 21:38:57', '2024-08-09 21:38:57'),
(16, 16, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.837751', '10.837751', 1, NULL, '2024-08-09 21:38:57', '2024-08-09 21:38:57'),
(17, 17, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.895722', '10.895722', 1, NULL, '2024-08-09 21:38:57', '2024-08-09 21:38:57'),
(18, 18, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.812985', '10.812985', 1, NULL, '2024-08-09 21:38:57', '2024-08-09 21:38:57'),
(19, 19, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.636619', '10.636619', 1, NULL, '2024-08-09 21:38:58', '2024-08-09 21:38:58'),
(20, 20, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.218333', '10.218333', 1, NULL, '2024-08-09 21:38:58', '2024-08-09 21:38:58'),
(21, 21, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.798156', '10.798156', 1, NULL, '2024-08-09 21:38:58', '2024-08-09 21:38:58'),
(22, 22, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.425830', '10.425830', 1, NULL, '2024-08-09 21:38:58', '2024-08-09 21:38:58'),
(23, 23, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.222859', '10.222859', 1, NULL, '2024-08-09 21:38:58', '2024-08-09 21:38:58'),
(24, 24, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.925383', '10.925383', 1, NULL, '2024-08-09 21:38:58', '2024-08-09 21:38:58'),
(25, 25, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.388335', '10.388335', 1, NULL, '2024-08-09 21:38:58', '2024-08-09 21:38:58'),
(26, 26, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.340657', '10.340657', 1, NULL, '2024-08-09 21:38:58', '2024-08-09 21:38:58'),
(27, 27, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.635778', '10.635778', 1, NULL, '2024-08-09 21:38:58', '2024-08-09 21:38:58'),
(28, 28, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.205772', '10.205772', 1, NULL, '2024-08-09 21:38:58', '2024-08-09 21:38:58'),
(29, 29, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.887906', '10.887906', 1, NULL, '2024-08-09 21:38:58', '2024-08-09 21:38:58'),
(30, 30, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.498249', '10.498249', 1, NULL, '2024-08-09 21:38:58', '2024-08-09 21:38:58'),
(31, 31, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.774927', '10.774927', 1, NULL, '2024-08-09 21:38:58', '2024-08-09 21:38:58'),
(32, 32, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.664659', '10.664659', 1, NULL, '2024-08-09 21:38:58', '2024-08-09 21:38:58'),
(33, 33, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.523072', '10.523072', 1, NULL, '2024-08-09 21:38:59', '2024-08-09 21:38:59'),
(34, 34, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.810098', '10.810098', 1, NULL, '2024-08-09 21:38:59', '2024-08-09 21:38:59'),
(35, 35, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.650909', '10.650909', 1, NULL, '2024-08-09 21:38:59', '2024-08-09 21:38:59'),
(36, 36, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.402277', '10.402277', 1, NULL, '2024-08-09 21:38:59', '2024-08-09 21:38:59'),
(37, 37, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.648395', '10.648395', 1, NULL, '2024-08-09 21:38:59', '2024-08-09 21:38:59'),
(38, 38, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.219866', '10.219866', 1, NULL, '2024-08-09 21:38:59', '2024-08-09 21:38:59'),
(39, 39, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.465108', '10.465108', 1, NULL, '2024-08-09 21:38:59', '2024-08-09 21:38:59'),
(40, 40, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.683996', '10.683996', 1, NULL, '2024-08-09 21:38:59', '2024-08-09 21:38:59'),
(41, 41, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.420486', '10.420486', 1, NULL, '2024-08-09 21:38:59', '2024-08-09 21:38:59'),
(42, 42, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.224902', '10.224902', 1, NULL, '2024-08-09 21:38:59', '2024-08-09 21:38:59'),
(43, 43, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.344606', '10.344606', 1, NULL, '2024-08-09 21:38:59', '2024-08-09 21:38:59'),
(44, 44, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.412208', '10.412208', 1, NULL, '2024-08-09 21:38:59', '2024-08-09 21:38:59'),
(45, 45, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.300007', '10.300007', 1, NULL, '2024-08-09 21:38:59', '2024-08-09 21:38:59'),
(46, 46, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.908978', '10.908978', 1, NULL, '2024-08-09 21:38:59', '2024-08-09 21:38:59'),
(47, 47, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.200861', '10.200861', 1, NULL, '2024-08-09 21:38:59', '2024-08-09 21:38:59'),
(48, 48, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.96043', '10.96043', 1, NULL, '2024-08-09 21:38:59', '2024-08-09 21:38:59'),
(49, 49, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, NULL, NULL, '123.161001', '10.161001', 1, NULL, '2024-08-09 21:38:59', '2024-08-09 21:38:59'),
(50, 50, 'App\\Models\\Store', 25, 442, 0, NULL, NULL, 'street block', 'near dito tower', '123.255802', '10.255802', 1, NULL, '2024-08-09 21:38:59', '2024-08-09 21:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(255) NOT NULL,
  `auditable_type` varchar(255) NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text DEFAULT NULL,
  `new_values` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(1023) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 1, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"6713288b02cca\",\"status_id\":1,\"id\":1}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-19 11:33:31', '2024-10-19 11:33:31'),
(2, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 2, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"6713289fe9e8b\",\"status_id\":1,\"id\":2}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-19 11:33:52', '2024-10-19 11:33:52'),
(3, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 3, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"67133ee822e4c\",\"status_id\":1,\"id\":3}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-19 13:08:56', '2024-10-19 13:08:56'),
(4, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 4, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"67133f5a594a3\",\"status_id\":1,\"id\":4}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-19 13:10:50', '2024-10-19 13:10:50'),
(5, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 5, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"67133f8052b52\",\"status_id\":1,\"id\":5}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-19 13:11:28', '2024-10-19 13:11:28'),
(6, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 6, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"67133fda55b8e\",\"status_id\":1,\"id\":6}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-19 13:12:58', '2024-10-19 13:12:58'),
(7, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 7, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"67133fec760fc\",\"status_id\":1,\"id\":7}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-19 13:13:16', '2024-10-19 13:13:16'),
(8, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 8, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"67133ffa94199\",\"status_id\":1,\"id\":8}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-19 13:13:30', '2024-10-19 13:13:30'),
(9, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 9, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"6713400e5ab7e\",\"status_id\":1,\"id\":9}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-19 13:13:50', '2024-10-19 13:13:50'),
(10, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 10, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"67134022b1a2d\",\"status_id\":1,\"id\":10}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-19 13:14:10', '2024-10-19 13:14:10'),
(11, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 11, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"6713405eab672\",\"status_id\":1,\"id\":11}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-19 13:15:10', '2024-10-19 13:15:10'),
(12, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 12, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"6713406cad689\",\"status_id\":1,\"id\":12}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-19 13:15:24', '2024-10-19 13:15:24'),
(13, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 13, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"671340885c3e7\",\"status_id\":1,\"id\":13}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-19 13:15:52', '2024-10-19 13:15:52'),
(14, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 14, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"671340b75ca2a\",\"status_id\":1,\"id\":14}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-19 13:16:39', '2024-10-19 13:16:39'),
(15, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 15, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"671340c4343ed\",\"status_id\":1,\"id\":15}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-19 13:16:52', '2024-10-19 13:16:52'),
(16, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 16, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"671340d22bd05\",\"status_id\":1,\"id\":16}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-19 13:17:06', '2024-10-19 13:17:06'),
(17, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 17, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"671340ef4782f\",\"status_id\":1,\"id\":17}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-19 13:17:35', '2024-10-19 13:17:35'),
(18, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 18, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"671340f629c1e\",\"status_id\":1,\"id\":18}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-19 13:17:42', '2024-10-19 13:17:42'),
(19, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 19, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"67134117dcbc0\",\"status_id\":1,\"id\":19}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-19 13:18:16', '2024-10-19 13:18:16'),
(20, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 20, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"67142491ca345\",\"status_id\":1,\"id\":20}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 05:28:49', '2024-10-20 05:28:49'),
(21, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 21, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"671425b7df47d\",\"status_id\":1,\"id\":21}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 05:33:44', '2024-10-20 05:33:44'),
(22, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 22, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"671425e05bd89\",\"status_id\":1,\"id\":22}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 05:34:24', '2024-10-20 05:34:24'),
(23, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 23, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"6714262fc1fe1\",\"status_id\":1,\"id\":23}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 05:35:43', '2024-10-20 05:35:43'),
(24, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 24, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"6714264682c4b\",\"status_id\":1,\"id\":24}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 05:36:06', '2024-10-20 05:36:06'),
(25, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 25, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"67142662c455e\",\"status_id\":1,\"id\":25}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 05:36:34', '2024-10-20 05:36:34'),
(26, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 1, '[]', '{\"transaction_id\":25,\"store_id\":\"4\",\"item_id\":243,\"item_name\":\"Magni consequatur voluptatem neque.\",\"item_description\":\"Sint soluta ratione impedit nam porro voluptas et dolorem placeat illum et aspernatur tempore.\",\"unit_id\":10,\"base_price\":24.8,\"store_price\":27.28,\"online_price\":30.01,\"qty\":1,\"id\":1}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 05:36:35', '2024-10-20 05:36:35'),
(27, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 2, '[]', '{\"transaction_id\":25,\"store_id\":\"4\",\"item_id\":243,\"item_name\":\"Magni consequatur voluptatem neque.\",\"item_description\":\"Sint soluta ratione impedit nam porro voluptas et dolorem placeat illum et aspernatur tempore.\",\"unit_id\":10,\"base_price\":24.8,\"store_price\":27.28,\"online_price\":30.01,\"qty\":1,\"id\":2}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 05:36:35', '2024-10-20 05:36:35'),
(28, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 3, '[]', '{\"transaction_id\":25,\"store_id\":\"4\",\"item_id\":642,\"item_name\":\"Ratione rem eum consequuntur sed tempora vero nam architecto.\",\"item_description\":\"Eum odit ullam non unde esse ea totam nobis odio.\",\"unit_id\":3,\"base_price\":16.8,\"store_price\":18.48,\"online_price\":20.33,\"qty\":1,\"id\":3}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 05:36:35', '2024-10-20 05:36:35'),
(29, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 4, '[]', '{\"transaction_id\":25,\"store_id\":\"4\",\"item_id\":642,\"item_name\":\"Ratione rem eum consequuntur sed tempora vero nam architecto.\",\"item_description\":\"Eum odit ullam non unde esse ea totam nobis odio.\",\"unit_id\":3,\"base_price\":16.8,\"store_price\":18.48,\"online_price\":20.33,\"qty\":1,\"id\":4}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 05:36:35', '2024-10-20 05:36:35'),
(30, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 5, '[]', '{\"transaction_id\":25,\"store_id\":\"6\",\"item_id\":23,\"item_name\":\"Saepe velit sit consectetur maxime deserunt.\",\"item_description\":\"Corrupti quos aut iste quod a autem amet sed laborum.\",\"unit_id\":5,\"base_price\":50.2,\"store_price\":55.22,\"online_price\":60.74,\"qty\":1,\"id\":5}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 05:36:35', '2024-10-20 05:36:35'),
(31, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 6, '[]', '{\"transaction_id\":25,\"store_id\":\"6\",\"item_id\":174,\"item_name\":\"Iste eaque tempore incidunt quidem quasi.\",\"item_description\":\"Ea vel dolor est quia quas optio doloribus quae animi rerum itaque consectetur dolore provident consectetur deserunt.\",\"unit_id\":14,\"base_price\":34,\"store_price\":37.4,\"online_price\":41.14,\"qty\":1,\"id\":6}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 05:36:36', '2024-10-20 05:36:36'),
(32, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 26, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"671426f4cf8f9\",\"status_id\":1,\"id\":26}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:39:00', '2024-10-20 05:39:00'),
(33, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 27, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"6714271eccd65\",\"status_id\":1,\"id\":27}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:39:42', '2024-10-20 05:39:42'),
(34, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 28, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"671427a6caffd\",\"status_id\":1,\"id\":28}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:41:58', '2024-10-20 05:41:58'),
(35, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 29, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"671427b80bbc7\",\"status_id\":1,\"id\":29}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:42:16', '2024-10-20 05:42:16'),
(36, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 30, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"671427eb8619e\",\"status_id\":1,\"id\":30}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:43:07', '2024-10-20 05:43:07'),
(37, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 31, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"67142830b10ae\",\"status_id\":1,\"id\":31}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:44:16', '2024-10-20 05:44:16'),
(38, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 32, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"6714283dc65e7\",\"status_id\":1,\"id\":32}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:44:29', '2024-10-20 05:44:29'),
(39, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 33, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"671428558d799\",\"status_id\":1,\"id\":33}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:44:53', '2024-10-20 05:44:53'),
(40, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 34, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"6714286b5b893\",\"status_id\":1,\"id\":34}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:45:15', '2024-10-20 05:45:15'),
(41, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 35, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"67142879a53f5\",\"status_id\":1,\"id\":35}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:45:29', '2024-10-20 05:45:29'),
(42, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 36, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"671428b1c58b1\",\"status_id\":1,\"id\":36}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:46:25', '2024-10-20 05:46:25'),
(43, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 37, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"671428baabc35\",\"status_id\":1,\"id\":37}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:46:34', '2024-10-20 05:46:34'),
(44, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 38, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"671428efa5ddb\",\"status_id\":1,\"id\":38}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:47:27', '2024-10-20 05:47:27'),
(45, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 7, '[]', '{\"transaction_id\":38,\"store_id\":\"4\",\"item_id\":243,\"item_name\":\"Magni consequatur voluptatem neque.\",\"item_description\":\"Sint soluta ratione impedit nam porro voluptas et dolorem placeat illum et aspernatur tempore.\",\"unit_id\":10,\"base_price\":24.8,\"store_price\":27.28,\"online_price\":30.01,\"qty\":2,\"id\":7}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:47:28', '2024-10-20 05:47:28'),
(46, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 8, '[]', '{\"transaction_id\":38,\"store_id\":\"4\",\"item_id\":642,\"item_name\":\"Ratione rem eum consequuntur sed tempora vero nam architecto.\",\"item_description\":\"Eum odit ullam non unde esse ea totam nobis odio.\",\"unit_id\":3,\"base_price\":16.8,\"store_price\":18.48,\"online_price\":20.33,\"qty\":2,\"id\":8}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:47:28', '2024-10-20 05:47:28'),
(47, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 9, '[]', '{\"transaction_id\":38,\"store_id\":\"6\",\"item_id\":23,\"item_name\":\"Saepe velit sit consectetur maxime deserunt.\",\"item_description\":\"Corrupti quos aut iste quod a autem amet sed laborum.\",\"unit_id\":5,\"base_price\":50.2,\"store_price\":55.22,\"online_price\":60.74,\"qty\":1,\"id\":9}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:47:28', '2024-10-20 05:47:28'),
(48, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 10, '[]', '{\"transaction_id\":38,\"store_id\":\"6\",\"item_id\":174,\"item_name\":\"Iste eaque tempore incidunt quidem quasi.\",\"item_description\":\"Ea vel dolor est quia quas optio doloribus quae animi rerum itaque consectetur dolore provident consectetur deserunt.\",\"unit_id\":14,\"base_price\":34,\"store_price\":37.4,\"online_price\":41.14,\"qty\":1,\"id\":10}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:47:28', '2024-10-20 05:47:28'),
(49, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 39, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"671429020729c\",\"status_id\":1,\"id\":39}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:47:46', '2024-10-20 05:47:46'),
(50, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 11, '[]', '{\"transaction_id\":39,\"store_id\":\"4\",\"item_id\":243,\"item_name\":\"Magni consequatur voluptatem neque.\",\"item_description\":\"Sint soluta ratione impedit nam porro voluptas et dolorem placeat illum et aspernatur tempore.\",\"unit_id\":10,\"base_price\":24.8,\"store_price\":27.28,\"online_price\":30.01,\"qty\":2,\"id\":11}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:47:46', '2024-10-20 05:47:46'),
(51, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 12, '[]', '{\"transaction_id\":39,\"store_id\":\"4\",\"item_id\":642,\"item_name\":\"Ratione rem eum consequuntur sed tempora vero nam architecto.\",\"item_description\":\"Eum odit ullam non unde esse ea totam nobis odio.\",\"unit_id\":3,\"base_price\":16.8,\"store_price\":18.48,\"online_price\":20.33,\"qty\":2,\"id\":12}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:47:46', '2024-10-20 05:47:46'),
(52, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 13, '[]', '{\"transaction_id\":39,\"store_id\":\"6\",\"item_id\":23,\"item_name\":\"Saepe velit sit consectetur maxime deserunt.\",\"item_description\":\"Corrupti quos aut iste quod a autem amet sed laborum.\",\"unit_id\":5,\"base_price\":50.2,\"store_price\":55.22,\"online_price\":60.74,\"qty\":1,\"id\":13}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:47:46', '2024-10-20 05:47:46'),
(53, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 14, '[]', '{\"transaction_id\":39,\"store_id\":\"6\",\"item_id\":174,\"item_name\":\"Iste eaque tempore incidunt quidem quasi.\",\"item_description\":\"Ea vel dolor est quia quas optio doloribus quae animi rerum itaque consectetur dolore provident consectetur deserunt.\",\"unit_id\":14,\"base_price\":34,\"store_price\":37.4,\"online_price\":41.14,\"qty\":1,\"id\":14}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-10-20 05:47:47', '2024-10-20 05:47:47'),
(54, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 40, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09123456789\",\"reference_id\":\"67142bd492858\",\"status_id\":1,\"id\":40}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 05:59:48', '2024-10-20 05:59:48'),
(55, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 15, '[]', '{\"transaction_id\":40,\"store_id\":\"4\",\"item_id\":243,\"item_name\":\"Magni consequatur voluptatem neque.\",\"item_description\":\"Sint soluta ratione impedit nam porro voluptas et dolorem placeat illum et aspernatur tempore.\",\"unit_id\":10,\"base_price\":24.8,\"store_price\":27.28,\"online_price\":30.01,\"qty\":2,\"id\":15}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 05:59:48', '2024-10-20 05:59:48'),
(56, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 16, '[]', '{\"transaction_id\":40,\"store_id\":\"4\",\"item_id\":642,\"item_name\":\"Ratione rem eum consequuntur sed tempora vero nam architecto.\",\"item_description\":\"Eum odit ullam non unde esse ea totam nobis odio.\",\"unit_id\":3,\"base_price\":16.8,\"store_price\":18.48,\"online_price\":20.33,\"qty\":2,\"id\":16}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 05:59:49', '2024-10-20 05:59:49'),
(57, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 17, '[]', '{\"transaction_id\":40,\"store_id\":\"6\",\"item_id\":23,\"item_name\":\"Saepe velit sit consectetur maxime deserunt.\",\"item_description\":\"Corrupti quos aut iste quod a autem amet sed laborum.\",\"unit_id\":5,\"base_price\":50.2,\"store_price\":55.22,\"online_price\":60.74,\"qty\":1,\"id\":17}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 05:59:49', '2024-10-20 05:59:49'),
(58, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 18, '[]', '{\"transaction_id\":40,\"store_id\":\"6\",\"item_id\":174,\"item_name\":\"Iste eaque tempore incidunt quidem quasi.\",\"item_description\":\"Ea vel dolor est quia quas optio doloribus quae animi rerum itaque consectetur dolore provident consectetur deserunt.\",\"unit_id\":14,\"base_price\":34,\"store_price\":37.4,\"online_price\":41.14,\"qty\":1,\"id\":18}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 05:59:49', '2024-10-20 05:59:49'),
(59, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 41, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":27,\"contact_number\":\"09123456789\",\"reference_id\":\"67142c6b40746\",\"status_id\":1,\"id\":41}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 06:02:19', '2024-10-20 06:02:19'),
(60, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 19, '[]', '{\"transaction_id\":41,\"store_id\":\"4\",\"item_id\":133,\"item_name\":\"Aspernatur eaque sit dolore nisi aut deserunt voluptate.\",\"item_description\":\"Officia dolor facilis sequi minima dolorum cumque laudantium officia veniam dignissimos harum quis sed.\",\"unit_id\":14,\"base_price\":50.1,\"store_price\":55.11,\"online_price\":60.62,\"qty\":1,\"id\":19}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 06:02:19', '2024-10-20 06:02:19'),
(61, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 42, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":19,\"contact_number\":\"09123456789\",\"reference_id\":\"67142da7cf287\",\"status_id\":1,\"id\":42}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 06:07:36', '2024-10-20 06:07:36'),
(62, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 20, '[]', '{\"transaction_id\":42,\"store_id\":\"6\",\"item_id\":23,\"item_name\":\"Saepe velit sit consectetur maxime deserunt.\",\"item_description\":\"Corrupti quos aut iste quod a autem amet sed laborum.\",\"unit_id\":5,\"base_price\":50.2,\"store_price\":55.22,\"online_price\":60.74,\"qty\":1,\"id\":20}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 06:07:36', '2024-10-20 06:07:36'),
(63, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 43, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":19,\"contact_number\":\"09123456789\",\"reference_id\":\"67142e4562279\",\"status_id\":1,\"id\":43}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 06:10:13', '2024-10-20 06:10:13'),
(64, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 21, '[]', '{\"transaction_id\":43,\"store_id\":\"6\",\"item_id\":52,\"item_name\":\"Delectus praesentium modi officiis ut omnis tenetur debitis.\",\"item_description\":\"Temporibus fugiat dignissimos et ipsum eveniet vel et consectetur suscipit nostrum et ullam asperiores voluptas ducimus hic.\",\"unit_id\":10,\"base_price\":13.4,\"store_price\":14.74,\"online_price\":16.21,\"qty\":1,\"id\":21}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 06:10:13', '2024-10-20 06:10:13'),
(65, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 44, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":19,\"contact_number\":\"09123456789\",\"reference_id\":\"67142f4420353\",\"status_id\":1,\"id\":44}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 06:14:28', '2024-10-20 06:14:28'),
(66, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 22, '[]', '{\"transaction_id\":44,\"store_id\":\"6\",\"item_id\":52,\"item_name\":\"Delectus praesentium modi officiis ut omnis tenetur debitis.\",\"item_description\":\"Temporibus fugiat dignissimos et ipsum eveniet vel et consectetur suscipit nostrum et ullam asperiores voluptas ducimus hic.\",\"unit_id\":10,\"base_price\":13.4,\"store_price\":14.74,\"online_price\":16.21,\"qty\":1,\"id\":22}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 06:14:28', '2024-10-20 06:14:28'),
(67, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 45, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":19,\"contact_number\":\"09123456789\",\"reference_id\":\"67143004c1cac\",\"status_id\":1,\"id\":45}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 06:17:40', '2024-10-20 06:17:40'),
(68, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 23, '[]', '{\"transaction_id\":45,\"store_id\":\"6\",\"item_id\":52,\"item_name\":\"Delectus praesentium modi officiis ut omnis tenetur debitis.\",\"item_description\":\"Temporibus fugiat dignissimos et ipsum eveniet vel et consectetur suscipit nostrum et ullam asperiores voluptas ducimus hic.\",\"unit_id\":10,\"base_price\":13.4,\"store_price\":14.74,\"online_price\":16.21,\"qty\":1,\"id\":23}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 06:17:41', '2024-10-20 06:17:41'),
(69, 'App\\Models\\User', 24, 'created', 'App\\Models\\Transaction', 46, '[]', '{\"user_id\":24,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":19,\"contact_number\":\"09123456789\",\"reference_id\":\"67144a9fedd55\",\"status_id\":1,\"id\":46}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 08:11:12', '2024-10-20 08:11:12'),
(70, 'App\\Models\\User', 24, 'created', 'App\\Models\\Order', 24, '[]', '{\"transaction_id\":46,\"store_id\":\"6\",\"item_id\":52,\"item_name\":\"Delectus praesentium modi officiis ut omnis tenetur debitis.\",\"item_description\":\"Temporibus fugiat dignissimos et ipsum eveniet vel et consectetur suscipit nostrum et ullam asperiores voluptas ducimus hic.\",\"unit_id\":10,\"base_price\":13.4,\"store_price\":14.74,\"online_price\":16.21,\"qty\":1,\"id\":24}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-20 08:11:12', '2024-10-20 08:11:12'),
(71, 'App\\Models\\User', 26, 'created', 'App\\Models\\Transaction', 47, '[]', '{\"user_id\":26,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":19,\"contact_number\":\"09270079123\",\"reference_id\":\"67157fb6ecd9d\",\"status_id\":1,\"id\":47}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-21 06:09:59', '2024-10-21 06:09:59'),
(72, 'App\\Models\\User', 26, 'created', 'App\\Models\\Order', 25, '[]', '{\"transaction_id\":47,\"store_id\":\"6\",\"item_id\":23,\"item_name\":\"Saepe velit sit consectetur maxime deserunt.\",\"item_description\":\"Corrupti quos aut iste quod a autem amet sed laborum.\",\"unit_id\":5,\"base_price\":50.2,\"store_price\":55.22,\"online_price\":60.74,\"qty\":2,\"id\":25}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-21 06:09:59', '2024-10-21 06:09:59'),
(73, 'App\\Models\\User', 26, 'created', 'App\\Models\\Order', 26, '[]', '{\"transaction_id\":47,\"store_id\":\"6\",\"item_id\":52,\"item_name\":\"Delectus praesentium modi officiis ut omnis tenetur debitis.\",\"item_description\":\"Temporibus fugiat dignissimos et ipsum eveniet vel et consectetur suscipit nostrum et ullam asperiores voluptas ducimus hic.\",\"unit_id\":10,\"base_price\":13.4,\"store_price\":14.74,\"online_price\":16.21,\"qty\":1,\"id\":26}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-21 06:09:59', '2024-10-21 06:09:59'),
(74, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 48, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":19,\"contact_number\":\"09270079301\",\"reference_id\":\"67158181131aa\",\"status_id\":1,\"id\":48}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-21 06:17:37', '2024-10-21 06:17:37'),
(75, 'App\\Models\\User', 27, 'created', 'App\\Models\\Order', 27, '[]', '{\"transaction_id\":48,\"store_id\":\"6\",\"item_id\":52,\"item_name\":\"Delectus praesentium modi officiis ut omnis tenetur debitis.\",\"item_description\":\"Temporibus fugiat dignissimos et ipsum eveniet vel et consectetur suscipit nostrum et ullam asperiores voluptas ducimus hic.\",\"unit_id\":10,\"base_price\":13.4,\"store_price\":14.74,\"online_price\":16.21,\"qty\":1,\"id\":27}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-21 06:17:37', '2024-10-21 06:17:37'),
(76, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 49, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":19,\"contact_number\":\"09270079301\",\"reference_id\":\"671c1ef9a8d98\",\"status_id\":1,\"id\":49}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-26 06:43:05', '2024-10-26 06:43:05'),
(77, 'App\\Models\\User', 27, 'created', 'App\\Models\\Order', 28, '[]', '{\"transaction_id\":49,\"store_id\":\"6\",\"item_id\":23,\"item_name\":\"Saepe velit sit consectetur maxime deserunt.\",\"item_description\":\"Corrupti quos aut iste quod a autem amet sed laborum.\",\"unit_id\":5,\"base_price\":50.2,\"store_price\":55.22,\"online_price\":60.74,\"qty\":1,\"id\":28}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-26 06:43:06', '2024-10-26 06:43:06'),
(78, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 50, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":19,\"contact_number\":\"09270079301\",\"reference_id\":\"671d941f66003\",\"status_id\":1,\"id\":50}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-27 09:15:11', '2024-10-27 09:15:11'),
(79, 'App\\Models\\User', 27, 'created', 'App\\Models\\Order', 29, '[]', '{\"transaction_id\":50,\"store_id\":\"6\",\"item_id\":23,\"item_name\":\"Saepe velit sit consectetur maxime deserunt.\",\"item_description\":\"Corrupti quos aut iste quod a autem amet sed laborum.\",\"unit_id\":5,\"base_price\":50.2,\"store_price\":55.22,\"online_price\":60.74,\"qty\":1,\"id\":29}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-27 09:15:11', '2024-10-27 09:15:11'),
(80, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 51, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":19,\"contact_number\":\"09270079301\",\"reference_id\":\"671d999849e33\",\"total\":60.74,\"status_id\":1,\"id\":51}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-27 09:38:32', '2024-10-27 09:38:32'),
(81, 'App\\Models\\User', 27, 'created', 'App\\Models\\Order', 30, '[]', '{\"transaction_id\":51,\"store_id\":\"6\",\"item_id\":23,\"item_name\":\"Saepe velit sit consectetur maxime deserunt.\",\"item_description\":\"Corrupti quos aut iste quod a autem amet sed laborum.\",\"unit_id\":5,\"base_price\":50.2,\"store_price\":55.22,\"online_price\":60.74,\"qty\":1,\"id\":30}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-27 09:38:32', '2024-10-27 09:38:32'),
(82, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 52, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":19,\"contact_number\":\"09270079301\",\"reference_id\":\"671d9bbdaa48c\",\"total\":60.74,\"grand_total\":79.74000000000001,\"status_id\":1,\"id\":52}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-27 09:47:41', '2024-10-27 09:47:41'),
(83, 'App\\Models\\User', 27, 'created', 'App\\Models\\Order', 31, '[]', '{\"transaction_id\":52,\"store_id\":\"6\",\"item_id\":23,\"item_name\":\"Saepe velit sit consectetur maxime deserunt.\",\"item_description\":\"Corrupti quos aut iste quod a autem amet sed laborum.\",\"unit_id\":5,\"base_price\":50.2,\"store_price\":55.22,\"online_price\":60.74,\"qty\":1,\"id\":31}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-27 09:47:41', '2024-10-27 09:47:41'),
(84, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 53, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":19,\"contact_number\":\"09270079301\",\"reference_id\":\"671e0e23663e2\",\"total\":16.21,\"grand_total\":35.21,\"status_id\":1,\"id\":53}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-27 17:55:47', '2024-10-27 17:55:47'),
(85, 'App\\Models\\User', 27, 'created', 'App\\Models\\Order', 32, '[]', '{\"transaction_id\":53,\"store_id\":\"6\",\"item_id\":52,\"item_name\":\"Delectus praesentium modi officiis ut omnis tenetur debitis.\",\"item_description\":\"Temporibus fugiat dignissimos et ipsum eveniet vel et consectetur suscipit nostrum et ullam asperiores voluptas ducimus hic.\",\"unit_id\":10,\"base_price\":13.4,\"store_price\":14.74,\"online_price\":16.21,\"qty\":1,\"id\":32}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-27 17:55:47', '2024-10-27 17:55:47'),
(86, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 54, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":19,\"contact_number\":\"09270079301\",\"reference_id\":\"671e0e924bbcf\",\"total\":16.21,\"grand_total\":35.21,\"status_id\":1,\"id\":54}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-27 17:57:38', '2024-10-27 17:57:38'),
(87, 'App\\Models\\User', 27, 'created', 'App\\Models\\Order', 33, '[]', '{\"transaction_id\":54,\"store_id\":\"6\",\"item_id\":52,\"item_name\":\"Delectus praesentium modi officiis ut omnis tenetur debitis.\",\"item_description\":\"Temporibus fugiat dignissimos et ipsum eveniet vel et consectetur suscipit nostrum et ullam asperiores voluptas ducimus hic.\",\"unit_id\":10,\"base_price\":13.4,\"store_price\":14.74,\"online_price\":16.21,\"qty\":1,\"id\":33}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-10-27 17:57:38', '2024-10-27 17:57:38'),
(88, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 55, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":37,\"contact_number\":\"09270079301\",\"reference_id\":\"6724931f03975\",\"total\":121.36,\"grand_total\":158.36,\"status_id\":1,\"id\":55}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-11-01 16:36:47', '2024-11-01 16:36:47'),
(89, 'App\\Models\\User', 27, 'created', 'App\\Models\\Order', 34, '[]', '{\"transaction_id\":55,\"store_id\":\"4\",\"item_id\":133,\"item_name\":\"Aspernatur eaque sit dolore nisi aut deserunt voluptate.\",\"item_description\":\"Officia dolor facilis sequi minima dolorum cumque laudantium officia veniam dignissimos harum quis sed.\",\"unit_id\":14,\"base_price\":50.1,\"store_price\":55.11,\"online_price\":60.62,\"qty\":1,\"id\":34}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-11-01 16:36:47', '2024-11-01 16:36:47'),
(90, 'App\\Models\\User', 27, 'created', 'App\\Models\\Order', 35, '[]', '{\"transaction_id\":55,\"store_id\":\"6\",\"item_id\":23,\"item_name\":\"Saepe velit sit consectetur maxime deserunt.\",\"item_description\":\"Corrupti quos aut iste quod a autem amet sed laborum.\",\"unit_id\":5,\"base_price\":50.2,\"store_price\":55.22,\"online_price\":60.74,\"qty\":1,\"id\":35}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-11-01 16:36:47', '2024-11-01 16:36:47'),
(91, 'App\\Models\\User', 22, 'created', 'App\\Models\\Transaction', 56, '[]', '{\"user_id\":22,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":19,\"contact_number\":\"09289828272\",\"reference_id\":\"6725cf0a73694\",\"total\":17.91,\"grand_total\":36.91,\"status_id\":1,\"id\":56}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-11-02 15:04:42', '2024-11-02 15:04:42'),
(92, 'App\\Models\\User', 22, 'created', 'App\\Models\\Order', 36, '[]', '{\"transaction_id\":56,\"store_id\":\"6\",\"item_id\":452,\"item_name\":\"Quisquam illo saepe fugiat ipsum quis rem.\",\"item_description\":\"Eum enim quidem nemo ut rerum ea perferendis omnis.\",\"unit_id\":16,\"base_price\":14.8,\"store_price\":16.28,\"online_price\":17.91,\"qty\":1,\"id\":36}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-11-02 15:04:42', '2024-11-02 15:04:42'),
(93, 'App\\Models\\User', 11, 'created', 'App\\Models\\Transaction', 57, '[]', '{\"user_id\":11,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":115,\"contact_number\":\"09993088141\",\"reference_id\":\"6725dae09283d\",\"total\":325.37,\"grand_total\":440.37,\"status_id\":1,\"id\":57}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-11-02 15:55:12', '2024-11-02 15:55:12'),
(94, 'App\\Models\\User', 11, 'created', 'App\\Models\\Order', 37, '[]', '{\"transaction_id\":57,\"store_id\":\"3\",\"item_id\":142,\"item_name\":\"Eos qui praesentium voluptatem voluptas iusto nesciunt odit.\",\"item_description\":\"Et ut qui aspernatur quia ipsum quod soluta totam sit non.\",\"unit_id\":19,\"base_price\":83,\"store_price\":91.3,\"online_price\":100.43,\"qty\":1,\"id\":37}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-11-02 15:55:12', '2024-11-02 15:55:12'),
(95, 'App\\Models\\User', 11, 'created', 'App\\Models\\Order', 38, '[]', '{\"transaction_id\":57,\"store_id\":\"3\",\"item_id\":194,\"item_name\":\"Iste natus culpa blanditiis ex unde voluptas maxime repudiandae.\",\"item_description\":\"Est id nihil nostrum ut eum porro consequatur qui dolor quaerat laborum et.\",\"unit_id\":2,\"base_price\":43.9,\"store_price\":48.29,\"online_price\":53.12,\"qty\":1,\"id\":38}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-11-02 15:55:13', '2024-11-02 15:55:13');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(96, 'App\\Models\\User', 11, 'created', 'App\\Models\\Order', 39, '[]', '{\"transaction_id\":57,\"store_id\":\"3\",\"item_id\":620,\"item_name\":\"Iste sit sunt delectus voluptas nobis.\",\"item_description\":\"Quam omnis aliquid magnam aut rerum qui culpa quaerat quas unde harum.\",\"unit_id\":3,\"base_price\":91.8,\"store_price\":100.98,\"online_price\":111.08,\"qty\":1,\"id\":39}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-11-02 15:55:13', '2024-11-02 15:55:13'),
(97, 'App\\Models\\User', 11, 'created', 'App\\Models\\Order', 40, '[]', '{\"transaction_id\":57,\"store_id\":\"6\",\"item_id\":23,\"item_name\":\"Saepe velit sit consectetur maxime deserunt.\",\"item_description\":\"Corrupti quos aut iste quod a autem amet sed laborum.\",\"unit_id\":5,\"base_price\":50.2,\"store_price\":55.22,\"online_price\":60.74,\"qty\":1,\"id\":40}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-11-02 15:55:13', '2024-11-02 15:55:13'),
(98, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 58, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":19,\"contact_number\":\"09270079301\",\"reference_id\":\"672ea4347a491\",\"total\":78.65,\"grand_total\":97.65,\"status_id\":1,\"id\":58}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-11-09 07:52:20', '2024-11-09 07:52:20'),
(99, 'App\\Models\\User', 27, 'created', 'App\\Models\\Order', 41, '[]', '{\"transaction_id\":58,\"store_id\":\"6\",\"item_id\":370,\"item_name\":\"Natus temporibus dicta nisi quia omnis nobis.\",\"item_description\":\"Qui perferendis qui saepe eveniet saepe nostrum itaque tenetur quos omnis sed quaerat nemo maxime.\",\"unit_id\":16,\"base_price\":65,\"store_price\":71.5,\"online_price\":78.65,\"qty\":1,\"id\":41}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-11-09 07:52:20', '2024-11-09 07:52:20'),
(100, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 59, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":27,\"contact_number\":\"09270079301\",\"reference_id\":\"672eae945c8d6\",\"total\":60.62,\"grand_total\":87.62,\"status_id\":1,\"id\":59}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-11-09 08:36:36', '2024-11-09 08:36:36'),
(101, 'App\\Models\\User', 27, 'created', 'App\\Models\\Order', 42, '[]', '{\"transaction_id\":59,\"store_id\":\"4\",\"item_id\":133,\"item_name\":\"Aspernatur eaque sit dolore nisi aut deserunt voluptate.\",\"item_description\":\"Officia dolor facilis sequi minima dolorum cumque laudantium officia veniam dignissimos harum quis sed.\",\"unit_id\":14,\"base_price\":50.1,\"store_price\":55.11,\"online_price\":60.62,\"qty\":1,\"id\":42}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-11-09 08:36:36', '2024-11-09 08:36:36'),
(102, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 60, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":106,\"contact_number\":\"09270079301\",\"reference_id\":\"672ed536dbc31\",\"total\":93.9,\"grand_total\":199.9,\"status_id\":1,\"id\":60}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-11-09 11:21:26', '2024-11-09 11:21:26'),
(103, 'App\\Models\\User', 27, 'created', 'App\\Models\\Order', 43, '[]', '{\"transaction_id\":60,\"store_id\":\"7\",\"item_id\":27,\"item_name\":\"Sed est ratione repudiandae nihil doloremque atque sunt.\",\"item_description\":\"Dolorem minus mollitia inventore velit dolores aspernatur nobis aliquid nihil nihil.\",\"unit_id\":1,\"base_price\":77.6,\"store_price\":85.36,\"online_price\":93.9,\"qty\":1,\"id\":43}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-11-09 11:21:27', '2024-11-09 11:21:27'),
(104, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 61, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":19,\"contact_number\":\"09270079301\",\"reference_id\":\"673026e02617f\",\"total\":60.74,\"grand_total\":79.74000000000001,\"status_id\":1,\"id\":61}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-11-10 11:22:08', '2024-11-10 11:22:08'),
(105, 'App\\Models\\User', 27, 'created', 'App\\Models\\Order', 44, '[]', '{\"transaction_id\":61,\"store_id\":\"6\",\"item_id\":23,\"item_name\":\"Saepe velit sit consectetur maxime deserunt.\",\"item_description\":\"Corrupti quos aut iste quod a autem amet sed laborum.\",\"unit_id\":5,\"base_price\":50.2,\"store_price\":55.22,\"online_price\":60.74,\"qty\":1,\"id\":44}', 'http://127.0.0.1:8000/api/transactions', '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '2024-11-10 11:22:08', '2024-11-10 11:22:08'),
(106, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Store', 1, '{\"desc\":\"Ex voluptas maiores et sit id minus ab voluptates eos odit sequi pariatur tenetur inventore ut dolor.\"}', '{\"desc\":\"Ex voluptas maiores e\"}', 'http://127.0.0.1:8000/api/my-stores/458047115', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-01 08:17:47', '2024-12-01 08:17:47'),
(107, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Store', 1, '{\"name\":\"Sed et fugiat voluptates.\"}', '{\"name\":\"Sed et fugia\"}', 'http://127.0.0.1:8000/api/my-stores/458047115', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-01 08:18:02', '2024-12-01 08:18:02'),
(108, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Store', 1, '{\"latitude\":10.361331939697266,\"longitude\":123.98124694824219}', '{\"latitude\":10.35809539954931,\"longitude\":123.98330688468138}', 'http://127.0.0.1:8000/api/my-stores/458047115', '127.0.0.1', 'PostmanRuntime/7.42.0', NULL, '2024-12-01 08:50:34', '2024-12-01 08:50:34'),
(109, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Store', 1, '{\"latitude\":10.358095399549,\"longitude\":123.98330688468}', '{\"latitude\":10.361151515915346,\"longitude\":123.98294666036553}', 'http://127.0.0.1:8000/api/my-stores/458047115', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-01 08:52:23', '2024-12-01 08:52:23'),
(110, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Store', 1, '{\"latitude\":10.361151515915,\"longitude\":123.98294666037}', '{\"latitude\":10.356506162573638,\"longitude\":123.98492419488886}', 'http://127.0.0.1:8000/api/my-stores/458047115', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-01 11:06:32', '2024-12-01 11:06:32'),
(111, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Store', 1, '{\"latitude\":10.356506162574,\"longitude\":123.98492419489}', '{\"latitude\":10.35131786920026,\"longitude\":123.97168502345956}', 'http://127.0.0.1:8000/api/my-stores/458047115', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-01 11:06:58', '2024-12-01 11:06:58'),
(112, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Store', 1, '{\"name\":\"Sed et fugia\"}', '{\"name\":\"Molestias id delectus harum.\"}', 'http://127.0.0.1:8000/api/my-stores/458047115', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-15 04:35:04', '2024-12-15 04:35:04'),
(113, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Item', 94, '{\"name\":\"Molestias id delectus harum.\"}', '{\"name\":\"Molestias id delectus harum.vvv\"}', 'http://127.0.0.1:8000/api/item-update/1371981680?filters=store_id%3A458047115', '127.0.0.1', 'PostmanRuntime/7.43.0', NULL, '2024-12-15 08:32:35', '2024-12-15 08:32:35'),
(114, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Item', 98, '{\"store_id\":1}', '{\"store_id\":\"458047115\"}', 'http://127.0.0.1:8000/api/item-update/1211917004?filters=store_id%3A458047115', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-23 07:46:54', '2024-12-23 07:46:54'),
(115, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Item', 94, '{\"category_id\":17,\"store_id\":1}', '{\"category_id\":\"18\",\"store_id\":\"458047115\"}', 'http://127.0.0.1:8000/api/item-update/1371981680?filters=store_id%3A458047115', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-23 07:49:21', '2024-12-23 07:49:21'),
(116, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Item', 248, '{\"name\":\"Et beatae velit occaecati earum dicta.\",\"description\":\"In consequatur mollitia dolor ad consequatur vitae aut corrupti.\",\"store_id\":1}', '{\"name\":\"Et beatae velit occaecati earum dicta.vvv\",\"description\":\"In consequatur mollitia dolor ad consequatur vitae aut corrupti.vv\",\"store_id\":\"458047115\"}', 'http://127.0.0.1:8000/api/item-update/2123264078?filters=store_id%3A458047115', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-23 07:51:06', '2024-12-23 07:51:06'),
(117, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Item', 289, '{\"name\":\"Quod illo dolores laborum quisquam.\",\"description\":\"Deserunt est sint asperiores tempora culpa beatae eum.\",\"store_id\":1}', '{\"name\":\"Quod illo dolores laborum quisquam.vv\",\"description\":\"Deserunt est sint asperiores tempora culpa beatae eum.vv\",\"store_id\":\"458047115\"}', 'http://127.0.0.1:8000/api/item-update/340866859?filters=store_id%3A458047115', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-23 07:55:08', '2024-12-23 07:55:08'),
(118, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Item', 293, '{\"name\":\"Consequatur veniam consequuntur eligendi omnis minima in nihil.\",\"description\":\"Optio consequatur sit aut unde ex cumque tempora et cupiditate earum.\",\"store_id\":1}', '{\"name\":\"Consequatur veniam consequuntur eligendi omnis minima in nihil.vv\",\"description\":\"Optio consequatur sit aut unde ex cumque tempora et cupiditate earum.vvv\",\"store_id\":\"458047115\"}', 'http://127.0.0.1:8000/api/item-update/210162343?filters=store_id%3A458047115', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-23 07:59:12', '2024-12-23 07:59:12'),
(119, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Item', 349, '{\"name\":\"Ipsam provident doloribus quas omnis eius.\",\"description\":\"Aut ut recusandae exercitationem ea error facilis et vero ipsum nobis quibusdam provident voluptates eos nihil.\",\"store_id\":1}', '{\"name\":\"Ipsam provident doloribus quas omnis eius.vvv\",\"description\":\"Aut ut recusandae exercitationem ea error facilis et vero ipsum nobis quibusdam provident voluptates eos nihil.vvv\",\"store_id\":\"458047115\"}', 'http://127.0.0.1:8000/api/item-update/649216799?filters=store_id%3A458047115', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-23 08:00:15', '2024-12-23 08:00:15'),
(120, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Item', 357, '{\"name\":\"Aspernatur velit quasi autem est consectetur fugit.\",\"description\":\"Vel sequi beatae aperiam earum doloribus commodi dolorem debitis ullam eum voluptas culpa quae.\",\"store_id\":1}', '{\"name\":\"Aspernatur velit quasi autem est consectetur fugit.vvvv\",\"description\":\"Vel sequi beatae aperiam earum doloribus commodi dolorem debitis ullam eum voluptas culpa quae.vvv\",\"store_id\":\"458047115\"}', 'http://127.0.0.1:8000/api/item-update/274500199?filters=store_id%3A458047115', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-23 08:02:14', '2024-12-23 08:02:14'),
(121, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Item', 494, '{\"name\":\"Dolor tempora cum dolorem sint.\",\"description\":\"Ea eos repellendus saepe exercitationem consequuntur voluptatem impedit enim quasi consectetur sed vitae.\",\"store_id\":1}', '{\"name\":\"Dolor tempora cum dolorem sint.vvv\",\"description\":\"Ea eos repellendus saepe exercitationem consequuntur voluptatem impedit enim quasi consectetur sed vitae.vvv\",\"store_id\":\"458047115\"}', 'http://127.0.0.1:8000/api/item-update/2128682016?filters=store_id%3A458047115', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-23 08:05:58', '2024-12-23 08:05:58'),
(122, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Item', 602, '{\"name\":\"Qui sit ut repellat itaque fugiat sit consequatur.\",\"description\":\"Totam sed laudantium eum culpa voluptas aut doloremque pariatur dicta.\",\"store_id\":1}', '{\"name\":\"Qui sit ut repellat itaque fugiat sit consequatur.vvv\",\"description\":\"Totam sed laudantium eum culpa voluptas aut doloremque pariatur dicta.vvv\",\"store_id\":\"458047115\"}', 'http://127.0.0.1:8000/api/item-update/868389348?filters=store_id%3A458047115', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-23 08:07:58', '2024-12-23 08:07:58'),
(123, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Item', 717, '{\"name\":\"Maxime eos id unde vel.\",\"description\":\"Velit veniam earum nulla repellendus ea veniam provident commodi cum optio aut.\"}', '{\"name\":\"Molestias id delectus harum.vvv\",\"description\":\"In et sit alias sequi enim quisquam consectetur atque eaque possimus ab dolor maiores.\"}', 'http://127.0.0.1:8000/api/item-update/6390959?filters=store_id%3A458047115', '127.0.0.1', 'PostmanRuntime/7.43.0', NULL, '2024-12-24 07:15:22', '2024-12-24 07:15:22'),
(124, 'App\\Models\\User', 26, 'updated', 'App\\Models\\Item', 717, '{\"name\":\"Molestias id delectus harum.vvv\",\"description\":\"In et sit alias sequi enim quisquam consectetur atque eaque possimus ab dolor maiores.\"}', '{\"name\":\"Maxime eos id unde vel.\",\"description\":\"Velit veniam earum nulla repellendus ea veniam provident commodi cum optio aut.\"}', 'http://127.0.0.1:8000/api/item-update/6390959?filters=store_id%3A458047115', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-24 07:56:09', '2024-12-24 07:56:09'),
(125, 'App\\Models\\User', 26, 'deleted', 'App\\Models\\ItemPrice', 672, '{\"id\":672,\"item_id\":672,\"unit_id\":16,\"color_id\":0,\"size_id\":0,\"qty\":0,\"delivery_charge_id\":1,\"original_price\":\"76.30\",\"selling_price\":\"83.93\",\"online_price\":\"92.32\"}', '[]', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-27 06:58:04', '2024-12-27 06:58:04'),
(126, 'App\\Models\\User', 26, 'created', 'App\\Models\\ItemPrice', 1001, '[]', '{\"item_id\":672,\"color_id\":3,\"size_id\":3,\"unit_id\":2,\"original_price\":0,\"selling_price\":0,\"online_price\":0,\"qty\":\"2\",\"id\":1001}', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-27 07:42:08', '2024-12-27 07:42:08'),
(127, 'App\\Models\\User', 26, 'deleted', 'App\\Models\\ItemPrice', 1001, '{\"id\":1001,\"item_id\":672,\"unit_id\":2,\"color_id\":3,\"size_id\":3,\"qty\":2,\"delivery_charge_id\":1,\"original_price\":\"0.00\",\"selling_price\":\"0.00\",\"online_price\":\"0.00\"}', '[]', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-27 07:43:09', '2024-12-27 07:43:09'),
(128, 'App\\Models\\User', 26, 'created', 'App\\Models\\ItemPrice', 1002, '[]', '{\"item_id\":672,\"color_id\":3,\"size_id\":4,\"unit_id\":2,\"original_price\":56,\"selling_price\":100,\"online_price\":89.9,\"qty\":2,\"id\":1002}', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-27 07:43:09', '2024-12-27 07:43:09'),
(129, 'App\\Models\\User', 26, 'created', 'App\\Models\\ItemPrice', 1003, '[]', '{\"item_id\":672,\"color_id\":4,\"size_id\":3,\"unit_id\":5,\"original_price\":1,\"selling_price\":3,\"online_price\":2,\"qty\":\"6\",\"id\":1003}', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-27 07:43:09', '2024-12-27 07:43:09'),
(130, 'App\\Models\\User', 26, 'deleted', 'App\\Models\\ItemPrice', 1002, '{\"id\":1002,\"item_id\":672,\"unit_id\":2,\"color_id\":3,\"size_id\":4,\"qty\":2,\"delivery_charge_id\":1,\"original_price\":\"56.00\",\"selling_price\":\"100.00\",\"online_price\":\"89.90\"}', '[]', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-27 07:49:48', '2024-12-27 07:49:48'),
(131, 'App\\Models\\User', 26, 'deleted', 'App\\Models\\ItemPrice', 1003, '{\"id\":1003,\"item_id\":672,\"unit_id\":5,\"color_id\":4,\"size_id\":3,\"qty\":6,\"delivery_charge_id\":1,\"original_price\":\"1.00\",\"selling_price\":\"3.00\",\"online_price\":\"2.00\"}', '[]', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-27 07:49:48', '2024-12-27 07:49:48'),
(132, 'App\\Models\\User', 26, 'created', 'App\\Models\\ItemPrice', 1004, '[]', '{\"item_id\":672,\"color_id\":3,\"size_id\":4,\"unit_id\":2,\"original_price\":56,\"selling_price\":100,\"online_price\":89.9,\"qty\":2,\"id\":1004}', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-27 07:49:48', '2024-12-27 07:49:48'),
(133, 'App\\Models\\User', 26, 'created', 'App\\Models\\ItemPrice', 1005, '[]', '{\"item_id\":672,\"color_id\":4,\"size_id\":3,\"unit_id\":5,\"original_price\":1,\"selling_price\":3,\"online_price\":2,\"qty\":6,\"id\":1005}', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-27 07:49:48', '2024-12-27 07:49:48'),
(134, 'App\\Models\\User', 26, 'created', 'App\\Models\\ItemPrice', 1006, '[]', '{\"item_id\":672,\"color_id\":1,\"size_id\":2,\"unit_id\":6,\"original_price\":23,\"selling_price\":25,\"online_price\":24,\"qty\":\"5\",\"id\":1006}', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-27 07:49:48', '2024-12-27 07:49:48'),
(135, 'App\\Models\\User', 26, 'created', 'App\\Models\\StoreMenuAccess', 5, '[]', '{\"access_right_id\":1,\"store_menu_id\":1,\"store_id\":1,\"user_id\":4,\"id\":5}', 'http://127.0.0.1:8000/api/store-menu-access', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-30 08:56:21', '2024-12-30 08:56:21'),
(136, 'App\\Models\\User', 26, 'created', 'App\\Models\\StoreMenuAccess', 6, '[]', '{\"access_right_id\":1,\"store_menu_id\":1,\"store_id\":1,\"user_id\":4,\"id\":6}', 'http://127.0.0.1:8000/api/store-menu-access', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-30 09:04:33', '2024-12-30 09:04:33'),
(137, 'App\\Models\\User', 26, 'created', 'App\\Models\\StoreMenuAccess', 7, '[]', '{\"access_right_id\":1,\"store_menu_id\":1,\"store_id\":1,\"user_id\":4,\"id\":7}', 'http://127.0.0.1:8000/api/store-menu-access', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2024-12-30 09:40:51', '2024-12-30 09:40:51'),
(138, 'App\\Models\\User', 26, 'created', 'App\\Models\\StoreMenuAccess', 8, '[]', '{\"access_right_id\":1,\"store_menu_id\":4,\"store_id\":1,\"user_id\":4,\"id\":8}', 'http://127.0.0.1:8000/api/store-menu-access', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-03 05:20:07', '2025-01-03 05:20:07'),
(139, 'App\\Models\\User', 26, 'updated', 'App\\Models\\StoreMenuAccess', 5, '{\"access_right_id\":1}', '{\"access_right_id\":2}', 'http://127.0.0.1:8000/api/store-menu-access/327342599', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-03 07:37:59', '2025-01-03 07:37:59'),
(140, 'App\\Models\\User', 26, 'updated', 'App\\Models\\StoreMenuAccess', 5, '{\"access_right_id\":2}', '{\"access_right_id\":1}', 'http://127.0.0.1:8000/api/store-menu-access/327342599', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-03 07:38:29', '2025-01-03 07:38:29'),
(141, 'App\\Models\\User', 26, 'created', 'App\\Models\\StoreMenuAccess', 9, '[]', '{\"access_right_id\":2,\"store_menu_id\":2,\"store_id\":1,\"user_id\":4,\"id\":9}', 'http://127.0.0.1:8000/api/store-menu-access', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-03 07:45:17', '2025-01-03 07:45:17'),
(142, 'App\\Models\\User', 26, 'created', 'App\\Models\\StoreMenuAccess', 10, '[]', '{\"access_right_id\":1,\"store_menu_id\":2,\"store_id\":1,\"user_id\":4,\"id\":10}', 'http://127.0.0.1:8000/api/store-menu-access', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-03 08:01:10', '2025-01-03 08:01:10'),
(143, 'App\\Models\\User', 26, 'created', 'App\\Models\\StoreMenuAccess', 11, '[]', '{\"access_right_id\":2,\"store_menu_id\":2,\"store_id\":1,\"user_id\":4,\"id\":11}', 'http://127.0.0.1:8000/api/store-menu-access', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-03 08:06:52', '2025-01-03 08:06:52'),
(144, 'App\\Models\\User', 26, 'created', 'App\\Models\\StoreMenuAccess', 12, '[]', '{\"access_right_id\":1,\"store_menu_id\":2,\"store_id\":1,\"user_id\":4,\"id\":12}', 'http://127.0.0.1:8000/api/store-menu-access', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-03 08:10:01', '2025-01-03 08:10:01'),
(145, 'App\\Models\\User', 26, 'created', 'App\\Models\\StoreMenuAccess', 13, '[]', '{\"access_right_id\":1,\"store_menu_id\":2,\"store_id\":1,\"user_id\":4,\"id\":13}', 'http://127.0.0.1:8000/api/store-menu-access', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-03 08:11:22', '2025-01-03 08:11:22'),
(146, 'App\\Models\\User', 26, 'created', 'App\\Models\\StoreMenuAccess', 14, '[]', '{\"access_right_id\":1,\"store_menu_id\":2,\"store_id\":1,\"user_id\":4,\"id\":14}', 'http://127.0.0.1:8000/api/store-menu-access', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-03 08:11:45', '2025-01-03 08:11:45'),
(147, 'App\\Models\\User', 26, 'created', 'App\\Models\\StoreMenuAccess', 15, '[]', '{\"access_right_id\":1,\"store_menu_id\":3,\"store_id\":1,\"user_id\":4,\"id\":15}', 'http://127.0.0.1:8000/api/store-menu-access', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-03 08:11:57', '2025-01-03 08:11:57'),
(148, 'App\\Models\\User', 26, 'created', 'App\\Models\\StoreMenuAccess', 16, '[]', '{\"access_right_id\":1,\"store_menu_id\":3,\"store_id\":1,\"user_id\":4,\"id\":16}', 'http://127.0.0.1:8000/api/store-menu-access', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-03 08:12:31', '2025-01-03 08:12:31'),
(149, 'App\\Models\\User', 26, 'created', 'App\\Models\\StoreMenuAccess', 17, '[]', '{\"access_right_id\":2,\"store_menu_id\":2,\"store_id\":1,\"user_id\":4,\"id\":17}', 'http://127.0.0.1:8000/api/store-menu-access', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-03 08:13:36', '2025-01-03 08:13:36'),
(150, 'App\\Models\\User', 26, 'deleted', 'App\\Models\\ItemPrice', 666, '{\"id\":666,\"item_id\":666,\"unit_id\":17,\"color_id\":1,\"size_id\":1,\"qty\":1,\"delivery_charge_id\":1,\"original_price\":\"64.80\",\"selling_price\":\"71.28\",\"online_price\":\"78.41\"}', '[]', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-03 08:36:49', '2025-01-03 08:36:49'),
(151, 'App\\Models\\User', 26, 'created', 'App\\Models\\ItemPrice', 1007, '[]', '{\"item_id\":666,\"color_id\":1,\"size_id\":1,\"unit_id\":17,\"original_price\":64.8,\"selling_price\":71.28,\"online_price\":78.41,\"qty\":1,\"id\":1007}', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-03 08:36:49', '2025-01-03 08:36:49'),
(152, 'App\\Models\\User', 26, 'created', 'App\\Models\\ItemPrice', 1008, '[]', '{\"item_id\":666,\"color_id\":2,\"size_id\":2,\"unit_id\":2,\"original_price\":0,\"selling_price\":0,\"online_price\":0,\"qty\":\"6\",\"id\":1008}', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-03 08:36:49', '2025-01-03 08:36:49'),
(153, 'App\\Models\\User', 26, 'deleted', 'App\\Models\\ItemPrice', 1007, '{\"id\":1007,\"item_id\":666,\"unit_id\":17,\"color_id\":1,\"size_id\":1,\"qty\":1,\"delivery_charge_id\":1,\"original_price\":\"64.80\",\"selling_price\":\"71.28\",\"online_price\":\"78.41\"}', '[]', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-05 05:44:14', '2025-01-05 05:44:14'),
(154, 'App\\Models\\User', 26, 'deleted', 'App\\Models\\ItemPrice', 1008, '{\"id\":1008,\"item_id\":666,\"unit_id\":2,\"color_id\":2,\"size_id\":2,\"qty\":6,\"delivery_charge_id\":1,\"original_price\":\"0.00\",\"selling_price\":\"0.00\",\"online_price\":\"0.00\"}', '[]', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-05 05:44:14', '2025-01-05 05:44:14'),
(155, 'App\\Models\\User', 26, 'created', 'App\\Models\\ItemPrice', 1009, '[]', '{\"item_id\":666,\"color_id\":1,\"size_id\":1,\"unit_id\":17,\"original_price\":64.8,\"selling_price\":71.28,\"online_price\":78.41,\"qty\":1,\"id\":1009}', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-05 05:44:14', '2025-01-05 05:44:14'),
(156, 'App\\Models\\User', 26, 'deleted', 'App\\Models\\ItemPrice', 1009, '{\"id\":1009,\"item_id\":666,\"unit_id\":17,\"color_id\":1,\"size_id\":1,\"qty\":1,\"delivery_charge_id\":1,\"original_price\":\"64.80\",\"selling_price\":\"71.28\",\"online_price\":\"78.41\"}', '[]', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-05 05:44:25', '2025-01-05 05:44:25'),
(157, 'App\\Models\\User', 26, 'created', 'App\\Models\\ItemPrice', 1010, '[]', '{\"item_id\":666,\"color_id\":1,\"size_id\":1,\"unit_id\":17,\"original_price\":64.8,\"selling_price\":71.28,\"online_price\":78.41,\"qty\":1,\"id\":1010}', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-05 05:44:25', '2025-01-05 05:44:25'),
(158, 'App\\Models\\User', 26, 'deleted', 'App\\Models\\ItemPrice', 1010, '{\"id\":1010,\"item_id\":666,\"unit_id\":17,\"color_id\":1,\"size_id\":1,\"qty\":1,\"delivery_charge_id\":1,\"original_price\":\"64.80\",\"selling_price\":\"71.28\",\"online_price\":\"78.41\"}', '[]', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-05 05:45:25', '2025-01-05 05:45:25'),
(159, 'App\\Models\\User', 26, 'created', 'App\\Models\\ItemPrice', 1011, '[]', '{\"item_id\":666,\"color_id\":1,\"size_id\":1,\"unit_id\":17,\"original_price\":64.8,\"selling_price\":71.28,\"online_price\":78.41,\"qty\":1,\"id\":1011}', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-05 05:45:25', '2025-01-05 05:45:25'),
(160, 'App\\Models\\User', 26, 'deleted', 'App\\Models\\ItemPrice', 1011, '{\"id\":1011,\"item_id\":666,\"unit_id\":17,\"color_id\":1,\"size_id\":1,\"qty\":1,\"delivery_charge_id\":1,\"original_price\":\"64.80\",\"selling_price\":\"71.28\",\"online_price\":\"78.41\"}', '[]', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-05 08:29:07', '2025-01-05 08:29:07'),
(161, 'App\\Models\\User', 26, 'created', 'App\\Models\\ItemPrice', 1012, '[]', '{\"item_id\":666,\"color_id\":1,\"size_id\":1,\"unit_id\":17,\"original_price\":64.8,\"selling_price\":71.28,\"online_price\":78.41,\"qty\":1,\"id\":1012}', 'http://127.0.0.1:8000/api/item-prices', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '2025-01-05 08:29:07', '2025-01-05 08:29:07'),
(162, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 62, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":5,\"contact_number\":\"09270079301\",\"reference_id\":\"6955cb565401f\",\"total\":60.62,\"grand_total\":65.62,\"status_id\":1,\"id\":62}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'PostmanRuntime/7.45.0', NULL, '2026-01-01 09:18:14', '2026-01-01 09:18:14'),
(163, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 63, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":134,\"contact_number\":\"09270079301\",\"reference_id\":\"6955efb2c38ff\",\"total\":60.62,\"grand_total\":194.62,\"status_id\":1,\"id\":63}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', NULL, '2026-01-01 11:53:22', '2026-01-01 11:53:22'),
(164, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 64, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":5,\"contact_number\":\"09270079301\",\"reference_id\":\"6955f0930d892\",\"total\":60.62,\"grand_total\":65.62,\"status_id\":1,\"id\":64}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'PostmanRuntime/7.45.0', NULL, '2026-01-01 11:57:07', '2026-01-01 11:57:07'),
(165, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 65, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":5,\"contact_number\":\"09270079301\",\"reference_id\":\"6955f14977e00\",\"total\":60.62,\"grand_total\":65.62,\"status_id\":1,\"id\":65}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'PostmanRuntime/7.45.0', NULL, '2026-01-01 12:00:09', '2026-01-01 12:00:09'),
(166, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 66, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":5,\"contact_number\":\"09270079301\",\"reference_id\":\"6955f1baac624\",\"total\":60.62,\"grand_total\":65.62,\"status_id\":1,\"id\":66}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'PostmanRuntime/7.45.0', NULL, '2026-01-01 12:02:02', '2026-01-01 12:02:02'),
(167, 'App\\Models\\User', 27, 'created', 'App\\Models\\Order', 45, '[]', '{\"transaction_id\":66,\"store_id\":\"1037370658\",\"item_id\":133,\"item_name\":\"Aspernatur eaque sit dolore nisi aut deserunt voluptate.\",\"item_description\":\"Officia dolor facilis sequi minima dolorum cumque laudantium officia veniam dignissimos harum quis sed.\",\"unit_id\":14,\"base_price\":50.1,\"store_price\":55.11,\"online_price\":60.62,\"qty\":1,\"id\":45}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'PostmanRuntime/7.45.0', NULL, '2026-01-01 12:02:02', '2026-01-01 12:02:02'),
(168, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 67, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":134,\"contact_number\":\"09270079301\",\"reference_id\":\"6955f1c1d495f\",\"total\":60.62,\"grand_total\":194.62,\"status_id\":1,\"id\":67}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', NULL, '2026-01-01 12:02:09', '2026-01-01 12:02:09'),
(169, 'App\\Models\\User', 27, 'created', 'App\\Models\\Order', 46, '[]', '{\"transaction_id\":67,\"store_id\":\"1037370658\",\"item_id\":133,\"item_name\":\"Aspernatur eaque sit dolore nisi aut deserunt voluptate.\",\"item_description\":\"Officia dolor facilis sequi minima dolorum cumque laudantium officia veniam dignissimos harum quis sed.\",\"unit_id\":14,\"base_price\":50.1,\"store_price\":55.11,\"online_price\":60.62,\"qty\":1,\"id\":46}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', NULL, '2026-01-01 12:02:09', '2026-01-01 12:02:09'),
(170, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 68, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":14,\"contact_number\":\"09270079301\",\"reference_id\":\"69562bda2fd1d\",\"total\":117.13,\"grand_total\":131.13,\"status_id\":1,\"id\":68}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', NULL, '2026-01-01 16:10:02', '2026-01-01 16:10:02'),
(171, 'App\\Models\\User', 27, 'created', 'App\\Models\\Order', 47, '[]', '{\"transaction_id\":68,\"store_id\":\"2033899500\",\"item_id\":879,\"item_name\":\"Qui vero nesciunt impedit molestiae voluptas numquam.\",\"item_description\":\"Esse aperiam eveniet sit labore rerum molestias molestias eum est et quis aspernatur ipsam at sunt asperiores.\",\"unit_id\":2,\"base_price\":96.8,\"store_price\":106.48,\"online_price\":117.13,\"qty\":1,\"id\":47}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', NULL, '2026-01-01 16:10:02', '2026-01-01 16:10:02'),
(172, 'App\\Models\\User', 28, 'created', 'App\\Models\\Transaction', 69, '[]', '{\"user_id\":28,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":13,\"contact_number\":\"9270079301\",\"reference_id\":\"69576445c9692\",\"total\":62.92,\"grand_total\":75.92,\"status_id\":1,\"id\":69}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-02 14:23:01', '2026-01-02 14:23:01'),
(173, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 48, '[]', '{\"transaction_id\":69,\"store_id\":\"2033899500\",\"item_id\":943,\"item_name\":\"Consequatur assumenda et rem et eos.\",\"item_description\":\"Ut accusantium dolore aperiam tempora hic architecto rerum rerum voluptatem non consequatur ipsa nam.\",\"unit_id\":16,\"base_price\":26,\"store_price\":28.6,\"online_price\":31.46,\"qty\":2,\"id\":48}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-02 14:23:01', '2026-01-02 14:23:01'),
(174, 'App\\Models\\User', 28, 'created', 'App\\Models\\Transaction', 70, '[]', '{\"user_id\":28,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":13,\"contact_number\":\"9270079301\",\"reference_id\":\"695764c9c061e\",\"total\":305.04999999999995,\"grand_total\":318.04999999999995,\"status_id\":1,\"id\":70}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-02 14:25:13', '2026-01-02 14:25:13'),
(175, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 49, '[]', '{\"transaction_id\":70,\"store_id\":\"2033899500\",\"item_id\":949,\"item_name\":\"Enim dolores nulla id illum earum et vitae.\",\"item_description\":\"Molestias eum repellendus cupiditate natus debitis esse hic maiores.\",\"unit_id\":19,\"base_price\":85.5,\"store_price\":94.05,\"online_price\":103.46,\"qty\":2,\"id\":49}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-02 14:25:13', '2026-01-02 14:25:13'),
(176, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 50, '[]', '{\"transaction_id\":70,\"store_id\":\"2033899500\",\"item_id\":801,\"item_name\":\"Itaque neque eligendi ratione doloribus.\",\"item_description\":\"Aut asperiores eos sunt vitae ut ad fuga aspernatur.\",\"unit_id\":7,\"base_price\":81.1,\"store_price\":89.21,\"online_price\":98.13,\"qty\":1,\"id\":50}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-02 14:25:13', '2026-01-02 14:25:13'),
(177, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 71, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":120,\"contact_number\":\"09270079301\",\"reference_id\":\"69585b7bc4880\",\"total\":31.46,\"grand_total\":151.46,\"status_id\":1,\"id\":71}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-03 07:57:47', '2026-01-03 07:57:47'),
(178, 'App\\Models\\User', 27, 'created', 'App\\Models\\Order', 51, '[]', '{\"transaction_id\":71,\"store_id\":\"2033899500\",\"item_id\":943,\"item_name\":\"Consequatur assumenda et rem et eos.\",\"item_description\":\"Ut accusantium dolore aperiam tempora hic architecto rerum rerum voluptatem non consequatur ipsa nam.\",\"unit_id\":16,\"base_price\":26,\"store_price\":28.6,\"online_price\":31.46,\"qty\":1,\"id\":51}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-03 07:57:47', '2026-01-03 07:57:47'),
(179, 'App\\Models\\User', 28, 'created', 'App\\Models\\Transaction', 72, '[]', '{\"user_id\":28,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":10,\"contact_number\":\"9270079301\",\"reference_id\":\"69587d928c682\",\"total\":15.61,\"grand_total\":25.61,\"status_id\":1,\"id\":72}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-03 10:23:14', '2026-01-03 10:23:14'),
(180, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 52, '[]', '{\"transaction_id\":72,\"store_id\":\"1037370658\",\"item_id\":852,\"item_name\":\"Non ipsam est consequatur animi non atque.\",\"item_description\":\"Voluptas ducimus hic pariatur corporis nobis quia non repellendus nihil recusandae repellendus qui aut harum.\",\"unit_id\":11,\"base_price\":12.9,\"store_price\":14.19,\"online_price\":15.61,\"qty\":1,\"id\":52}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-03 10:23:14', '2026-01-03 10:23:14'),
(181, 'App\\Models\\User', 28, 'created', 'App\\Models\\Transaction', 73, '[]', '{\"user_id\":28,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":117,\"contact_number\":\"9270079301\",\"reference_id\":\"69587e4326b91\",\"total\":206.92,\"grand_total\":323.91999999999996,\"status_id\":1,\"id\":73}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-03 10:26:11', '2026-01-03 10:26:11'),
(182, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 53, '[]', '{\"transaction_id\":73,\"store_id\":\"2033899500\",\"item_id\":949,\"item_name\":\"Enim dolores nulla id illum earum et vitae.\",\"item_description\":\"Molestias eum repellendus cupiditate natus debitis esse hic maiores.\",\"unit_id\":19,\"base_price\":85.5,\"store_price\":94.05,\"online_price\":103.46,\"qty\":2,\"id\":53}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-03 10:26:11', '2026-01-03 10:26:11'),
(183, 'App\\Models\\User', 27, 'created', 'App\\Models\\Transaction', 74, '[]', '{\"user_id\":27,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":33,\"contact_number\":\"09270079301\",\"reference_id\":\"6959b70b8afdf\",\"total\":77.44,\"grand_total\":110.44,\"status_id\":1,\"id\":74}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', NULL, '2026-01-04 08:40:43', '2026-01-04 08:40:43'),
(184, 'App\\Models\\User', 27, 'created', 'App\\Models\\Order', 54, '[]', '{\"transaction_id\":74,\"store_id\":\"458047115\",\"item_id\":754,\"item_name\":\"Facere dolorum qui odio quibusdam.\",\"item_description\":\"Temporibus sint quaerat sunt sit est consequatur iure ullam magni cum quia.\",\"unit_id\":13,\"base_price\":64,\"store_price\":70.4,\"online_price\":77.44,\"qty\":1,\"id\":54}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', NULL, '2026-01-04 08:40:43', '2026-01-04 08:40:43'),
(185, 'App\\Models\\User', 28, 'created', 'App\\Models\\Transaction', 75, '[]', '{\"user_id\":28,\"payment_method_id\":3,\"receive_method_id\":3,\"delivery_charge\":465,\"contact_number\":\"9270079301\",\"reference_id\":\"6959b974c0894\",\"total\":32.31,\"grand_total\":497.31,\"status_id\":1,\"id\":75}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-04 08:51:00', '2026-01-04 08:51:00'),
(186, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 55, '[]', '{\"transaction_id\":75,\"store_id\":\"327342599\",\"item_id\":957,\"item_name\":\"Accusantium dolor explicabo et nulla ab sed.\",\"item_description\":\"Perspiciatis vero magnam quia quo sit at unde odit quia rerum magnam ad qui inventore.\",\"unit_id\":17,\"base_price\":26.7,\"store_price\":29.37,\"online_price\":32.31,\"qty\":1,\"id\":55}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-04 08:51:00', '2026-01-04 08:51:00'),
(187, 'App\\Models\\User', 28, 'created', 'App\\Models\\Transaction', 76, '[]', '{\"user_id\":28,\"payment_method_id\":3,\"receive_method_id\":3,\"delivery_charge\":7,\"contact_number\":\"9270079301\",\"reference_id\":\"6959beab21dc1\",\"total\":31.46,\"grand_total\":38.46,\"status_id\":1,\"id\":76}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-04 09:13:15', '2026-01-04 09:13:15'),
(188, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 56, '[]', '{\"transaction_id\":76,\"store_id\":\"2033899500\",\"item_id\":943,\"item_name\":\"Consequatur assumenda et rem et eos.\",\"item_description\":\"Ut accusantium dolore aperiam tempora hic architecto rerum rerum voluptatem non consequatur ipsa nam.\",\"unit_id\":16,\"base_price\":26,\"store_price\":28.6,\"online_price\":31.46,\"qty\":1,\"id\":56}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-04 09:13:15', '2026-01-04 09:13:15'),
(189, 'App\\Models\\User', 28, 'created', 'App\\Models\\Transaction', 77, '[]', '{\"user_id\":28,\"payment_method_id\":3,\"receive_method_id\":3,\"delivery_charge\":33,\"contact_number\":\"9270079301\",\"reference_id\":\"6959c025c56ba\",\"total\":99.1,\"grand_total\":132.1,\"status_id\":1,\"id\":77}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-04 09:19:33', '2026-01-04 09:19:33'),
(190, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 57, '[]', '{\"transaction_id\":77,\"store_id\":\"1609067713\",\"item_id\":858,\"item_name\":\"Dolore consectetur illo consequatur.\",\"item_description\":\"Dolorem voluptatum totam veniam et qui et dolorem mollitia ut nihil est quibusdam quae blanditiis nulla molestiae.\",\"unit_id\":18,\"base_price\":81.9,\"store_price\":90.09,\"online_price\":99.1,\"qty\":1,\"id\":57}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-04 09:19:33', '2026-01-04 09:19:33'),
(191, 'App\\Models\\User', 28, 'created', 'App\\Models\\Transaction', 78, '[]', '{\"user_id\":28,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":33,\"contact_number\":\"9270079301\",\"reference_id\":\"6959c2e76f59c\",\"total\":77.44,\"grand_total\":110.44,\"status_id\":1,\"id\":78}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', NULL, '2026-01-04 09:31:19', '2026-01-04 09:31:19');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(192, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 58, '[]', '{\"transaction_id\":78,\"store_id\":\"458047115\",\"item_id\":754,\"item_name\":\"Facere dolorum qui odio quibusdam.\",\"item_description\":\"Temporibus sint quaerat sunt sit est consequatur iure ullam magni cum quia.\",\"unit_id\":13,\"base_price\":64,\"store_price\":70.4,\"online_price\":77.44,\"qty\":1,\"id\":58}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Mobile Safari/537.36', NULL, '2026-01-04 09:31:19', '2026-01-04 09:31:19'),
(193, 'App\\Models\\User', 28, 'created', 'App\\Models\\Transaction', 79, '[]', '{\"user_id\":28,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":7,\"contact_number\":\"9270079301\",\"reference_id\":\"6959eaa84f3c1\",\"total\":103.46,\"grand_total\":110.46,\"status_id\":1,\"id\":79}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-04 12:20:56', '2026-01-04 12:20:56'),
(194, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 59, '[]', '{\"transaction_id\":79,\"store_id\":\"2033899500\",\"item_id\":949,\"item_name\":\"Enim dolores nulla id illum earum et vitae.\",\"item_description\":\"Molestias eum repellendus cupiditate natus debitis esse hic maiores.\",\"unit_id\":19,\"base_price\":85.5,\"store_price\":94.05,\"online_price\":103.46,\"qty\":1,\"id\":59}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-04 12:20:56', '2026-01-04 12:20:56'),
(195, 'App\\Models\\User', 28, 'created', 'App\\Models\\Transaction', 80, '[]', '{\"user_id\":28,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":7,\"contact_number\":\"9270079301\",\"reference_id\":\"6959ed8777d60\",\"total\":78.41,\"grand_total\":85.41,\"status_id\":1,\"id\":80}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-04 12:33:11', '2026-01-04 12:33:11'),
(196, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 60, '[]', '{\"transaction_id\":80,\"store_id\":2,\"item_id\":982,\"item_name\":\"Dignissimos omnis exercitationem sed sunt eligendi eos quia quia.\",\"item_description\":\"Odit suscipit aut numquam omnis culpa quia eos.\",\"unit_id\":10,\"base_price\":64.8,\"store_price\":71.28,\"online_price\":78.41,\"qty\":1,\"id\":60}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', NULL, '2026-01-04 12:33:11', '2026-01-04 12:33:11'),
(197, 'App\\Models\\User', 28, 'created', 'App\\Models\\Transaction', 81, '[]', '{\"store_id\":2033899500,\"user_id\":28,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":7,\"contact_number\":\"9270079301\",\"reference_id\":\"6973fdebadaf6\",\"lat\":\"10.361551653152\",\"lng\":\"123.98292150159\",\"total\":46.46,\"grand_total\":53.46,\"status_id\":1,\"id\":81}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', NULL, '2026-01-24 07:02:03', '2026-01-24 07:02:03'),
(198, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 61, '[]', '{\"transaction_id\":81,\"store_id\":2,\"item_id\":742,\"item_name\":\"Officiis ipsa quia magnam quaerat.\",\"item_description\":\"Et nostrum natus et quidem dolorum eum tenetur eius nihil delectus.\",\"unit_id\":12,\"base_price\":19.2,\"store_price\":21.12,\"online_price\":23.23,\"qty\":2,\"id\":61}', 'http://127.0.0.1:8080/api/transactions', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', NULL, '2026-01-24 07:02:03', '2026-01-24 07:02:03'),
(199, 'App\\Models\\User', 28, 'updated', 'App\\Models\\Store', 1, '{\"name\":\"Molestias id delectus harum.\",\"mobile\":\"98995816937\",\"latitude\":10.3513178692,\"longitude\":123.97168502346}', '{\"name\":\"A earum.\",\"mobile\":\"92332\",\"latitude\":14.5995,\"longitude\":120.9842}', 'http://127.0.0.1:8080/api/all_stores/495513597', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-01-24 08:39:36', '2026-01-24 08:39:36'),
(200, 'App\\Models\\User', 28, 'updated', 'App\\Models\\Store', 1, '{\"mobile\":\"92332\"}', '{\"mobile\":\"asdfsaf\"}', 'http://127.0.0.1:8080/api/all_stores/458047115', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', NULL, '2026-01-24 08:40:55', '2026-01-24 08:40:55'),
(201, 'App\\Models\\User', 28, 'updated', 'App\\Models\\Store', 1, '{\"mobile\":\"asdfsaf\"}', '{\"mobile\":\"09101\"}', 'http://127.0.0.1:8080/api/all_stores/458047115', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', NULL, '2026-01-24 08:42:30', '2026-01-24 08:42:30'),
(202, 'App\\Models\\User', 28, 'updated', 'App\\Models\\Store', 1, '{\"name\":\"A earum.\"}', '{\"name\":\"A earum.ggg\"}', 'http://127.0.0.1:8080/api/all_stores/458047115', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', NULL, '2026-01-24 08:50:05', '2026-01-24 08:50:05'),
(203, 'App\\Models\\User', 28, 'updated', 'App\\Models\\Store', 1, '{\"mobile\":\"09101\"}', '{\"mobile\":\"999\"}', 'http://127.0.0.1:8080/api/all_stores/458047115', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', NULL, '2026-01-24 08:51:15', '2026-01-24 08:51:15'),
(204, 'App\\Models\\User', 28, 'updated', 'App\\Models\\Store', 1, '{\"mobile\":\"999\"}', '{\"mobile\":\"asdf\"}', 'http://127.0.0.1:8080/api/all_stores/458047115', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', NULL, '2026-01-24 08:51:59', '2026-01-24 08:51:59'),
(205, 'App\\Models\\User', 28, 'updated', 'App\\Models\\Store', 1, '{\"name\":\"A earum.ggg\",\"mobile\":\"asdf\"}', '{\"name\":\"A earum.\",\"mobile\":\"9172292694700\"}', 'http://127.0.0.1:8080/api/all_stores/495513597', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', NULL, '2026-01-24 08:53:33', '2026-01-24 08:53:33'),
(206, 'App\\Models\\User', 28, 'updated', 'App\\Models\\Store', 1, '{\"mobile\":\"9172292694700\"}', '{\"mobile\":\"9172292694711\"}', 'http://127.0.0.1:8080/api/all_stores/458047115', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', NULL, '2026-01-24 08:54:02', '2026-01-24 08:54:02'),
(207, 'App\\Models\\User', 28, 'updated', 'App\\Models\\Store', 1, '{\"mobile\":\"9172292694711\"}', '{\"mobile\":\"9172292694712\"}', 'http://127.0.0.1:8080/api/all_stores/458047115', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', NULL, '2026-01-24 08:54:15', '2026-01-24 08:54:15'),
(208, 'App\\Models\\User', 28, 'created', 'App\\Models\\Transaction', 82, '[]', '{\"store_id\":2033899500,\"user_id\":28,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":13,\"contact_number\":\"9270079301\",\"reference_id\":\"6987f0928bed7\",\"lat\":\"10.361838904298\",\"lng\":\"123.98722652952\",\"total\":103.46,\"grand_total\":116.46,\"status_id\":1,\"id\":82}', 'http://127.0.0.1:8080/api/transactions', '192.168.65.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', NULL, '2026-02-08 10:10:26', '2026-02-08 10:10:26'),
(209, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 62, '[]', '{\"transaction_id\":82,\"store_id\":2,\"item_id\":949,\"item_name\":\"Enim dolores nulla id illum earum et vitae.\",\"item_description\":\"Molestias eum repellendus cupiditate natus debitis esse hic maiores.\",\"unit_id\":19,\"base_price\":85.5,\"store_price\":94.05,\"online_price\":103.46,\"qty\":1,\"id\":62}', 'http://127.0.0.1:8080/api/transactions', '192.168.65.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', NULL, '2026-02-08 10:10:26', '2026-02-08 10:10:26'),
(210, 'App\\Models\\User', 28, 'created', 'App\\Models\\Transaction', 83, '[]', '{\"store_id\":2033899500,\"user_id\":28,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":13,\"contact_number\":\"9270079301\",\"reference_id\":\"6987f17a2d1fc\",\"lat\":\"10.361838904298\",\"lng\":\"123.98722652952\",\"total\":31.46,\"grand_total\":44.46,\"status_id\":1,\"id\":83}', 'http://127.0.0.1:8080/api/transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-08 10:14:18', '2026-02-08 10:14:18'),
(211, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 63, '[]', '{\"transaction_id\":83,\"store_id\":2,\"item_id\":943,\"item_name\":\"Consequatur assumenda et rem et eos.\",\"item_description\":\"Ut accusantium dolore aperiam tempora hic architecto rerum rerum voluptatem non consequatur ipsa nam.\",\"unit_id\":16,\"base_price\":26,\"store_price\":28.6,\"online_price\":31.46,\"qty\":1,\"id\":63}', 'http://127.0.0.1:8080/api/transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-08 10:14:18', '2026-02-08 10:14:18'),
(212, 'App\\Models\\User', 28, 'updated', 'App\\Models\\Item', 952, '{\"name\":\"Qui nam aliquid dolor et voluptatum velit.\",\"description\":\"Veritatis reiciendis et esse distinctio cumque qui assumenda perferendis qui voluptatem sed qui.\",\"category_id\":1}', '{\"name\":\"Qui nam aliquid dolor et voluptatum velit.www\",\"description\":\"Veritatis reiciendis et esse distinctio cumque qui assumenda perferendis qui voluptatem sed qui.www\",\"category_id\":\"3\"}', 'http://127.0.0.1:8080/api/item-update/2109870990?filters=store_id%3A458047115', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-08 12:01:36', '2026-02-08 12:01:36'),
(213, 'App\\Models\\User', 28, 'deleted', 'App\\Models\\Item', 754, '{\"id\":754,\"name\":\"Facere dolorum qui odio quibusdam.\",\"description\":\"Temporibus sint quaerat sunt sit est consequatur iure ullam magni cum quia.\",\"category_id\":11,\"store_id\":1}', '[]', 'http://127.0.0.1:8080/api/items/619699388', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:04:10', '2026-02-17 06:04:10'),
(214, 'App\\Models\\User', 28, 'deleted', 'App\\Models\\ItemPrice', 952, '{\"id\":952,\"item_id\":952,\"unit_id\":15,\"color_id\":0,\"size_id\":0,\"qty\":0,\"delivery_charge_id\":1,\"original_price\":\"74.40\",\"selling_price\":\"81.84\",\"online_price\":\"90.02\"}', '[]', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'PostmanRuntime/7.51.0', NULL, '2026-02-17 06:31:19', '2026-02-17 06:31:19'),
(215, 'App\\Models\\User', 28, 'created', 'App\\Models\\ItemPrice', 1013, '[]', '{\"item_id\":952,\"color_id\":null,\"size_id\":null,\"unit_id\":14,\"original_price\":74.4,\"selling_price\":81.84,\"online_price\":90.02,\"qty\":0,\"id\":1013}', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'PostmanRuntime/7.51.0', NULL, '2026-02-17 06:34:26', '2026-02-17 06:34:26'),
(216, 'App\\Models\\User', 28, 'deleted', 'App\\Models\\ItemPrice', 1013, '{\"id\":1013,\"item_id\":952,\"unit_id\":14,\"color_id\":null,\"size_id\":null,\"qty\":0,\"delivery_charge_id\":1,\"original_price\":\"74.40\",\"selling_price\":\"81.84\",\"online_price\":\"90.02\"}', '[]', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', NULL, '2026-02-17 06:34:35', '2026-02-17 06:34:35'),
(217, 'App\\Models\\User', 28, 'created', 'App\\Models\\ItemPrice', 1014, '[]', '{\"item_id\":952,\"color_id\":null,\"size_id\":null,\"unit_id\":14,\"original_price\":74.4,\"selling_price\":81.84,\"online_price\":90.02,\"qty\":0,\"id\":1014}', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Mobile Safari/537.36', NULL, '2026-02-17 06:34:35', '2026-02-17 06:34:35'),
(218, 'App\\Models\\User', 28, 'deleted', 'App\\Models\\ItemPrice', 1014, '{\"id\":1014,\"item_id\":952,\"unit_id\":14,\"color_id\":null,\"size_id\":null,\"qty\":0,\"delivery_charge_id\":1,\"original_price\":\"74.40\",\"selling_price\":\"81.84\",\"online_price\":\"90.02\"}', '[]', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:34:55', '2026-02-17 06:34:55'),
(219, 'App\\Models\\User', 28, 'created', 'App\\Models\\ItemPrice', 1015, '[]', '{\"item_id\":952,\"color_id\":null,\"size_id\":null,\"unit_id\":17,\"original_price\":74.4,\"selling_price\":81.84,\"online_price\":90.02,\"qty\":\"3\",\"id\":1015}', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:35:08', '2026-02-17 06:35:08'),
(220, 'App\\Models\\User', 28, 'deleted', 'App\\Models\\ItemPrice', 1015, '{\"id\":1015,\"item_id\":952,\"unit_id\":17,\"color_id\":null,\"size_id\":null,\"qty\":3,\"delivery_charge_id\":1,\"original_price\":\"74.40\",\"selling_price\":\"81.84\",\"online_price\":\"90.02\"}', '[]', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:37:02', '2026-02-17 06:37:02'),
(221, 'App\\Models\\User', 28, 'created', 'App\\Models\\ItemPrice', 1016, '[]', '{\"item_id\":952,\"color_id\":null,\"size_id\":null,\"unit_id\":17,\"original_price\":74.4,\"selling_price\":81.84,\"online_price\":90.02,\"qty\":3,\"id\":1016}', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:37:02', '2026-02-17 06:37:02'),
(222, 'App\\Models\\User', 28, 'deleted', 'App\\Models\\ItemPrice', 1016, '{\"id\":1016,\"item_id\":952,\"unit_id\":17,\"color_id\":null,\"size_id\":null,\"qty\":3,\"delivery_charge_id\":1,\"original_price\":\"74.40\",\"selling_price\":\"81.84\",\"online_price\":\"90.02\"}', '[]', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:37:19', '2026-02-17 06:37:19'),
(223, 'App\\Models\\User', 28, 'created', 'App\\Models\\ItemPrice', 1017, '[]', '{\"item_id\":952,\"color_id\":null,\"size_id\":null,\"unit_id\":17,\"original_price\":74.4,\"selling_price\":81.84,\"online_price\":90.02,\"qty\":3,\"id\":1017}', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:37:19', '2026-02-17 06:37:19'),
(224, 'App\\Models\\User', 28, 'created', 'App\\Models\\ItemPrice', 1018, '[]', '{\"item_id\":952,\"color_id\":null,\"size_id\":null,\"unit_id\":7,\"original_price\":0,\"selling_price\":0,\"online_price\":0,\"qty\":\"5\",\"id\":1018}', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:37:19', '2026-02-17 06:37:19'),
(225, 'App\\Models\\User', 28, 'deleted', 'App\\Models\\ItemPrice', 1017, '{\"id\":1017,\"item_id\":952,\"unit_id\":17,\"color_id\":null,\"size_id\":null,\"qty\":3,\"delivery_charge_id\":1,\"original_price\":\"74.40\",\"selling_price\":\"81.84\",\"online_price\":\"90.02\"}', '[]', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:37:35', '2026-02-17 06:37:35'),
(226, 'App\\Models\\User', 28, 'deleted', 'App\\Models\\ItemPrice', 1018, '{\"id\":1018,\"item_id\":952,\"unit_id\":7,\"color_id\":null,\"size_id\":null,\"qty\":5,\"delivery_charge_id\":1,\"original_price\":\"0.00\",\"selling_price\":\"0.00\",\"online_price\":\"0.00\"}', '[]', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:37:35', '2026-02-17 06:37:35'),
(227, 'App\\Models\\User', 28, 'created', 'App\\Models\\ItemPrice', 1019, '[]', '{\"item_id\":952,\"color_id\":null,\"size_id\":null,\"unit_id\":17,\"original_price\":74.4,\"selling_price\":81.84,\"online_price\":90.02,\"qty\":3,\"id\":1019}', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:37:35', '2026-02-17 06:37:35'),
(228, 'App\\Models\\User', 28, 'created', 'App\\Models\\ItemPrice', 1020, '[]', '{\"item_id\":952,\"color_id\":null,\"size_id\":null,\"unit_id\":7,\"original_price\":0,\"selling_price\":0,\"online_price\":0,\"qty\":\"5\",\"id\":1020}', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:37:35', '2026-02-17 06:37:35'),
(229, 'App\\Models\\User', 28, 'deleted', 'App\\Models\\ItemPrice', 1019, '{\"id\":1019,\"item_id\":952,\"unit_id\":17,\"color_id\":null,\"size_id\":null,\"qty\":3,\"delivery_charge_id\":1,\"original_price\":\"74.40\",\"selling_price\":\"81.84\",\"online_price\":\"90.02\"}', '[]', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:39:25', '2026-02-17 06:39:25'),
(230, 'App\\Models\\User', 28, 'deleted', 'App\\Models\\ItemPrice', 1020, '{\"id\":1020,\"item_id\":952,\"unit_id\":7,\"color_id\":null,\"size_id\":null,\"qty\":5,\"delivery_charge_id\":1,\"original_price\":\"0.00\",\"selling_price\":\"0.00\",\"online_price\":\"0.00\"}', '[]', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:39:25', '2026-02-17 06:39:25'),
(231, 'App\\Models\\User', 28, 'created', 'App\\Models\\ItemPrice', 1021, '[]', '{\"item_id\":952,\"color_id\":null,\"size_id\":null,\"unit_id\":17,\"original_price\":74.4,\"selling_price\":81.84,\"online_price\":90.02,\"qty\":3,\"id\":1021}', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:39:25', '2026-02-17 06:39:25'),
(232, 'App\\Models\\User', 28, 'created', 'App\\Models\\ItemPrice', 1022, '[]', '{\"item_id\":952,\"color_id\":null,\"size_id\":null,\"unit_id\":7,\"original_price\":0,\"selling_price\":0,\"online_price\":0,\"qty\":5,\"id\":1022}', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:39:25', '2026-02-17 06:39:25'),
(233, 'App\\Models\\User', 28, 'created', 'App\\Models\\ItemPrice', 1023, '[]', '{\"item_id\":952,\"color_id\":null,\"size_id\":null,\"unit_id\":9,\"original_price\":3,\"selling_price\":6,\"online_price\":4,\"qty\":\"3\",\"id\":1023}', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:39:25', '2026-02-17 06:39:25'),
(234, 'App\\Models\\User', 28, 'deleted', 'App\\Models\\ItemPrice', 1021, '{\"id\":1021,\"item_id\":952,\"unit_id\":17,\"color_id\":null,\"size_id\":null,\"qty\":3,\"delivery_charge_id\":1,\"original_price\":\"74.40\",\"selling_price\":\"81.84\",\"online_price\":\"90.02\"}', '[]', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:42:06', '2026-02-17 06:42:06'),
(235, 'App\\Models\\User', 28, 'deleted', 'App\\Models\\ItemPrice', 1022, '{\"id\":1022,\"item_id\":952,\"unit_id\":7,\"color_id\":null,\"size_id\":null,\"qty\":5,\"delivery_charge_id\":1,\"original_price\":\"0.00\",\"selling_price\":\"0.00\",\"online_price\":\"0.00\"}', '[]', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:42:06', '2026-02-17 06:42:06'),
(236, 'App\\Models\\User', 28, 'deleted', 'App\\Models\\ItemPrice', 1023, '{\"id\":1023,\"item_id\":952,\"unit_id\":9,\"color_id\":null,\"size_id\":null,\"qty\":3,\"delivery_charge_id\":1,\"original_price\":\"3.00\",\"selling_price\":\"6.00\",\"online_price\":\"4.00\"}', '[]', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:42:06', '2026-02-17 06:42:06'),
(237, 'App\\Models\\User', 28, 'created', 'App\\Models\\ItemPrice', 1024, '[]', '{\"item_id\":952,\"color_id\":null,\"size_id\":null,\"unit_id\":17,\"original_price\":74.4,\"selling_price\":81.84,\"online_price\":90.02,\"qty\":3,\"id\":1024}', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:42:06', '2026-02-17 06:42:06'),
(238, 'App\\Models\\User', 28, 'created', 'App\\Models\\ItemPrice', 1025, '[]', '{\"item_id\":952,\"color_id\":null,\"size_id\":null,\"unit_id\":7,\"original_price\":23,\"selling_price\":0,\"online_price\":0,\"qty\":5,\"id\":1025}', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:42:06', '2026-02-17 06:42:06'),
(239, 'App\\Models\\User', 28, 'created', 'App\\Models\\ItemPrice', 1026, '[]', '{\"item_id\":952,\"color_id\":null,\"size_id\":null,\"unit_id\":9,\"original_price\":3,\"selling_price\":6,\"online_price\":4,\"qty\":3,\"id\":1026}', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:42:06', '2026-02-17 06:42:06'),
(240, 'App\\Models\\User', 28, 'deleted', 'App\\Models\\ItemPrice', 1024, '{\"id\":1024,\"item_id\":952,\"unit_id\":17,\"color_id\":null,\"size_id\":null,\"qty\":3,\"delivery_charge_id\":1,\"original_price\":\"74.40\",\"selling_price\":\"81.84\",\"online_price\":\"90.02\"}', '[]', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:42:55', '2026-02-17 06:42:55'),
(241, 'App\\Models\\User', 28, 'deleted', 'App\\Models\\ItemPrice', 1025, '{\"id\":1025,\"item_id\":952,\"unit_id\":7,\"color_id\":null,\"size_id\":null,\"qty\":5,\"delivery_charge_id\":1,\"original_price\":\"23.00\",\"selling_price\":\"0.00\",\"online_price\":\"0.00\"}', '[]', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:42:55', '2026-02-17 06:42:55'),
(242, 'App\\Models\\User', 28, 'deleted', 'App\\Models\\ItemPrice', 1026, '{\"id\":1026,\"item_id\":952,\"unit_id\":9,\"color_id\":null,\"size_id\":null,\"qty\":3,\"delivery_charge_id\":1,\"original_price\":\"3.00\",\"selling_price\":\"6.00\",\"online_price\":\"4.00\"}', '[]', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:42:55', '2026-02-17 06:42:55'),
(243, 'App\\Models\\User', 28, 'created', 'App\\Models\\ItemPrice', 1027, '[]', '{\"item_id\":952,\"color_id\":null,\"size_id\":null,\"unit_id\":17,\"original_price\":74.4,\"selling_price\":81.84,\"online_price\":90.02,\"qty\":3,\"id\":1027}', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:42:55', '2026-02-17 06:42:55'),
(244, 'App\\Models\\User', 28, 'created', 'App\\Models\\ItemPrice', 1028, '[]', '{\"item_id\":952,\"color_id\":null,\"size_id\":null,\"unit_id\":7,\"original_price\":23,\"selling_price\":1200,\"online_price\":1200,\"qty\":5,\"id\":1028}', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:42:55', '2026-02-17 06:42:55'),
(245, 'App\\Models\\User', 28, 'created', 'App\\Models\\ItemPrice', 1029, '[]', '{\"item_id\":952,\"color_id\":null,\"size_id\":null,\"unit_id\":9,\"original_price\":3,\"selling_price\":6,\"online_price\":4,\"qty\":3,\"id\":1029}', 'http://127.0.0.1:8080/api/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', NULL, '2026-02-17 06:42:55', '2026-02-17 06:42:55'),
(246, 'App\\Models\\User', 28, 'created', 'App\\Models\\Transaction', 84, '[]', '{\"store_id\":2033899500,\"user_id\":28,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":0,\"contact_number\":\"9270079301\",\"reference_id\":\"69e6e7041ddba\",\"lat\":\"10.361781119912\",\"lng\":\"123.98705290977\",\"total\":78.41,\"grand_total\":78.41,\"status_id\":1,\"id\":84}', 'http://localhost:8081/api/all-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, '2026-04-21 01:55:00', '2026-04-21 01:55:00'),
(247, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 64, '[]', '{\"transaction_id\":84,\"store_id\":2,\"item_id\":982,\"item_name\":\"Dignissimos omnis exercitationem sed sunt eligendi eos quia quia.\",\"item_description\":\"Odit suscipit aut numquam omnis culpa quia eos.\",\"unit_id\":10,\"base_price\":64.8,\"store_price\":71.28,\"online_price\":78.41,\"qty\":1,\"id\":64}', 'http://localhost:8081/api/all-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, '2026-04-21 01:55:00', '2026-04-21 01:55:00'),
(248, 'App\\Models\\User', 28, 'created', 'App\\Models\\Transaction', 85, '[]', '{\"store_id\":2033899500,\"user_id\":28,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":0,\"contact_number\":\"9270079301\",\"reference_id\":\"69e6e9440c559\",\"lat\":\"10.361781388927\",\"lng\":\"123.98705360923\",\"total\":103.46,\"grand_total\":103.46,\"status_id\":1,\"id\":85}', 'http://localhost:8081/api/all-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, '2026-04-21 02:04:36', '2026-04-21 02:04:36'),
(249, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 65, '[]', '{\"transaction_id\":85,\"store_id\":2,\"item_id\":949,\"item_name\":\"Enim dolores nulla id illum earum et vitae.\",\"item_description\":\"Molestias eum repellendus cupiditate natus debitis esse hic maiores.\",\"unit_id\":19,\"base_price\":85.5,\"store_price\":94.05,\"online_price\":103.46,\"qty\":1,\"id\":65}', 'http://localhost:8081/api/all-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, '2026-04-21 02:04:36', '2026-04-21 02:04:36'),
(250, 'App\\Models\\User', 28, 'created', 'App\\Models\\Transaction', 86, '[]', '{\"store_id\":2033899500,\"user_id\":28,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":0,\"contact_number\":\"9270079301\",\"reference_id\":\"69e6ee3797a53\",\"lat\":\"10.36178112\",\"lng\":\"123.98705291\",\"total\":103.46,\"grand_total\":103.46,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":86}', 'http://localhost:8081/api/all-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, '2026-04-21 02:25:43', '2026-04-21 02:25:43'),
(251, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 66, '[]', '{\"transaction_id\":86,\"store_id\":2,\"item_id\":949,\"item_name\":\"Enim dolores nulla id illum earum et vitae.\",\"item_description\":\"Molestias eum repellendus cupiditate natus debitis esse hic maiores.\",\"unit_id\":19,\"base_price\":85.5,\"store_price\":94.05,\"online_price\":103.46,\"qty\":1,\"id\":66}', 'http://localhost:8081/api/all-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, '2026-04-21 02:25:43', '2026-04-21 02:25:43'),
(252, 'App\\Models\\User', 28, 'created', 'App\\Models\\Transaction', 87, '[]', '{\"store_id\":2033899500,\"user_id\":28,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":145.4,\"contact_number\":\"9270079301\",\"reference_id\":\"69ed8350e59c8\",\"lat\":\"10.361899325615\",\"lng\":\"123.9873518347\",\"total\":211.16,\"grand_total\":356.56,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":87}', 'http://localhost:8081/api/all-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, '2026-04-26 02:15:29', '2026-04-26 02:15:29'),
(253, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 67, '[]', '{\"transaction_id\":87,\"store_id\":6,\"item_id\":958,\"item_name\":\"Sed veritatis sed qui consectetur omnis explicabo.\",\"item_description\":\"Natus eos est cum nostrum voluptatem sed quia quae.\",\"unit_id\":10,\"base_price\":27.5,\"store_price\":30.25,\"online_price\":33.28,\"qty\":1,\"id\":67}', 'http://localhost:8081/api/all-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, '2026-04-26 02:15:29', '2026-04-26 02:15:29'),
(254, 'App\\Models\\User', 28, 'created', 'App\\Models\\Order', 68, '[]', '{\"transaction_id\":87,\"store_id\":2,\"item_id\":88,\"item_name\":\"Ea soluta reiciendis ex explicabo voluptatum.\",\"item_description\":\"Quis et harum et omnis ut debitis omnis rerum nihil cumque asperiores ut tempore et incidunt impedit.\",\"unit_id\":13,\"base_price\":73.5,\"store_price\":80.85,\"online_price\":88.94,\"qty\":2,\"id\":68}', 'http://localhost:8081/api/all-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/147.0.0.0 Safari/537.36', NULL, '2026-04-26 02:15:29', '2026-04-26 02:15:29'),
(255, 'App\\Models\\User', 68, 'created', 'App\\Models\\Transaction', 88, '[]', '{\"store_id\":2033899500,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":13.600000000000001,\"contact_number\":\"9270079301\",\"reference_id\":\"6a0d2819137ae\",\"lat\":\"10.361313502344\",\"lng\":\"123.98709489986\",\"total\":88.94,\"grand_total\":102.53999999999999,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":88}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-20 02:18:49', '2026-05-20 02:18:49'),
(256, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 69, '[]', '{\"transaction_id\":88,\"store_id\":2,\"item_id\":88,\"item_name\":\"Ea soluta reiciendis ex explicabo voluptatum.\",\"item_description\":\"Quis et harum et omnis ut debitis omnis rerum nihil cumque asperiores ut tempore et incidunt impedit.\",\"unit_id\":13,\"base_price\":73.5,\"store_price\":80.85,\"online_price\":88.94,\"qty\":1,\"id\":69}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-20 02:18:49', '2026-05-20 02:18:49'),
(257, 'App\\Models\\User', 68, 'updated', 'App\\Models\\Transaction', 88, '{\"status_id\":1}', '{\"status_id\":5}', 'http://localhost:8081/my-transactions-marked-as-received/452390318', '192.168.65.1', 'PostmanRuntime/7.54.0', NULL, '2026-05-21 03:00:46', '2026-05-21 03:00:46'),
(258, 'App\\Models\\User', 68, 'updated', 'App\\Models\\Item', 666, '{\"category_id\":15}', '{\"category_id\":\"22\"}', 'http://localhost:8081/item-update/1150896292?filters=store_id%3A458047115', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-21 08:08:05', '2026-05-21 08:08:05'),
(259, 'App\\Models\\User', 68, 'updated', 'App\\Models\\Item', 666, '{\"name\":\"Nisi esse rem sint vel quidem ducimus tempora.\",\"description\":\"Pariatur voluptas dolore eaque voluptatem illo aliquam repellat placeat earum.\"}', '{\"name\":\"aus tempora.\",\"description\":\"a\"}', 'http://localhost:8081/item-update/1150896292', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 00:20:05', '2026-05-23 00:20:05'),
(260, 'App\\Models\\User', 68, 'updated', 'App\\Models\\Item', 666, '{\"description\":\"a\"}', '{\"description\":\"aasdfasdf\"}', 'http://localhost:8081/item-update/1150896292', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 03:18:29', '2026-05-23 03:18:29'),
(261, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1012, '{\"id\":1012,\"item_id\":666,\"unit_id\":17,\"color_id\":1,\"size_id\":1,\"qty\":1,\"delivery_charge_id\":1,\"original_price\":\"64.80\",\"selling_price\":\"71.28\",\"online_price\":\"78.41\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'PostmanRuntime/7.54.0', NULL, '2026-05-23 08:02:35', '2026-05-23 08:02:35'),
(262, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1030, '[]', '{\"item_id\":666,\"color_id\":1,\"size_id\":1,\"unit_id\":17,\"original_price\":70,\"selling_price\":76,\"online_price\":78.41,\"qty\":1,\"id\":1030}', 'http://localhost:8081/item-prices', '192.168.65.1', 'PostmanRuntime/7.54.0', NULL, '2026-05-23 08:02:35', '2026-05-23 08:02:35'),
(263, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1030, '{\"id\":1030,\"item_id\":666,\"unit_id\":17,\"color_id\":1,\"size_id\":1,\"qty\":1,\"delivery_charge_id\":1,\"original_price\":\"70.00\",\"selling_price\":\"76.00\",\"online_price\":\"78.41\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:02:54', '2026-05-23 08:02:54'),
(264, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1031, '[]', '{\"item_id\":666,\"color_id\":1,\"size_id\":1,\"unit_id\":17,\"original_price\":56,\"selling_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":1031}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:02:54', '2026-05-23 08:02:54'),
(265, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1031, '{\"id\":1031,\"item_id\":666,\"unit_id\":17,\"color_id\":1,\"size_id\":1,\"qty\":1,\"delivery_charge_id\":1,\"original_price\":\"56.00\",\"selling_price\":\"56.00\",\"online_price\":\"78.41\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'PostmanRuntime/7.54.0', NULL, '2026-05-23 08:03:45', '2026-05-23 08:03:45'),
(266, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1032, '[]', '{\"item_id\":666,\"color_id\":1,\"size_id\":1,\"unit_id\":17,\"original_price\":70,\"selling_price\":76,\"online_price\":78.41,\"qty\":1,\"id\":1032}', 'http://localhost:8081/item-prices', '192.168.65.1', 'PostmanRuntime/7.54.0', NULL, '2026-05-23 08:03:45', '2026-05-23 08:03:45'),
(267, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1032, '{\"id\":1032,\"item_id\":666,\"unit_id\":17,\"color_id\":1,\"size_id\":1,\"qty\":1,\"delivery_charge_id\":1,\"original_price\":\"70.00\",\"selling_price\":\"76.00\",\"online_price\":\"78.41\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:04:02', '2026-05-23 08:04:02'),
(268, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1033, '[]', '{\"item_id\":666,\"color_id\":1,\"size_id\":1,\"unit_id\":17,\"original_price\":4,\"selling_price\":2,\"online_price\":78.41,\"qty\":1,\"id\":1033}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:04:02', '2026-05-23 08:04:02'),
(269, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1033, '{\"id\":1033,\"item_id\":666,\"unit_id\":17,\"color_id\":1,\"size_id\":1,\"qty\":1,\"delivery_charge_id\":1,\"original_price\":\"4.00\",\"selling_price\":\"2.00\",\"online_price\":\"78.41\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'PostmanRuntime/7.54.0', NULL, '2026-05-23 08:09:46', '2026-05-23 08:09:46'),
(270, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1034, '[]', '{\"item_id\":666,\"color_id\":1,\"size_id\":1,\"unit_id\":17,\"original_price\":70,\"selling_price\":76,\"online_price\":78.41,\"qty\":1,\"id\":1034}', 'http://localhost:8081/item-prices', '192.168.65.1', 'PostmanRuntime/7.54.0', NULL, '2026-05-23 08:09:46', '2026-05-23 08:09:46'),
(271, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1034, '{\"id\":1034,\"item_id\":666,\"unit_id\":17,\"color_id\":1,\"size_id\":1,\"qty\":1,\"delivery_charge_id\":1,\"original_price\":\"70.00\",\"selling_price\":\"76.00\",\"online_price\":\"78.41\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:10:33', '2026-05-23 08:10:33'),
(272, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1035, '[]', '{\"item_id\":666,\"color_id\":1,\"size_id\":1,\"unit_id\":17,\"original_price\":56,\"selling_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":1035}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:10:39', '2026-05-23 08:10:39'),
(273, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1035, '{\"id\":1035,\"item_id\":666,\"unit_id\":17,\"color_id\":1,\"size_id\":1,\"qty\":1,\"delivery_charge_id\":1,\"original_price\":\"56.00\",\"selling_price\":\"56.00\",\"online_price\":\"78.41\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:10:51', '2026-05-23 08:10:51'),
(274, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1036, '[]', '{\"item_id\":666,\"color_id\":1,\"size_id\":1,\"unit_id\":17,\"original_price\":4,\"selling_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":1036}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:10:51', '2026-05-23 08:10:51'),
(275, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1036, '{\"id\":1036,\"item_id\":666,\"unit_id\":17,\"color_id\":1,\"size_id\":1,\"qty\":1,\"delivery_charge_id\":1,\"original_price\":\"4.00\",\"selling_price\":\"56.00\",\"online_price\":\"78.41\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:20:37', '2026-05-23 08:20:37'),
(276, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1037, '[]', '{\"item_id\":666,\"color_id\":1,\"size_id\":1,\"unit_id\":17,\"original_price\":4,\"selling_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":1037}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:20:37', '2026-05-23 08:20:37'),
(277, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1038, '[]', '{\"item_id\":666,\"color_id\":3,\"size_id\":3,\"unit_id\":4,\"original_price\":23,\"selling_price\":56,\"online_price\":25,\"qty\":\"5\",\"id\":1038}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:20:37', '2026-05-23 08:20:37'),
(278, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1037, '{\"id\":1037,\"item_id\":666,\"unit_id\":17,\"color_id\":1,\"size_id\":1,\"qty\":1,\"delivery_charge_id\":1,\"original_price\":\"4.00\",\"selling_price\":\"56.00\",\"online_price\":\"78.41\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:21:11', '2026-05-23 08:21:11'),
(279, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1038, '{\"id\":1038,\"item_id\":666,\"unit_id\":4,\"color_id\":3,\"size_id\":3,\"qty\":5,\"delivery_charge_id\":1,\"original_price\":\"23.00\",\"selling_price\":\"56.00\",\"online_price\":\"25.00\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:21:11', '2026-05-23 08:21:11'),
(280, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1039, '[]', '{\"item_id\":666,\"color_id\":1,\"size_id\":1,\"unit_id\":17,\"original_price\":4,\"selling_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":1039}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:21:11', '2026-05-23 08:21:11'),
(281, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1040, '[]', '{\"item_id\":666,\"color_id\":3,\"size_id\":3,\"unit_id\":4,\"original_price\":23,\"selling_price\":56,\"online_price\":25,\"qty\":\"5\",\"id\":1040}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:21:11', '2026-05-23 08:21:11'),
(282, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1041, '[]', '{\"item_id\":666,\"color_id\":5,\"size_id\":3,\"unit_id\":9,\"original_price\":45,\"selling_price\":90,\"online_price\":56,\"qty\":\"4\",\"id\":1041}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:21:11', '2026-05-23 08:21:11'),
(283, 'App\\Models\\User', 68, 'created', 'App\\Models\\Transaction', 89, '[]', '{\"store_id\":458047115,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":5.2,\"contact_number\":\"9270079301\",\"reference_id\":\"6a1173c779eaf\",\"lat\":\"10.361919027906\",\"lng\":\"123.98735561447\",\"total\":114.64,\"grand_total\":119.84,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":89}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:30:47', '2026-05-23 08:30:47'),
(284, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 70, '[]', '{\"transaction_id\":89,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"aasdfasdf\",\"unit_id\":9,\"base_price\":45,\"store_price\":90,\"online_price\":56,\"qty\":1,\"id\":70}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:30:47', '2026-05-23 08:30:47'),
(285, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 71, '[]', '{\"transaction_id\":89,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"aasdfasdf\",\"unit_id\":4,\"base_price\":23,\"store_price\":56,\"online_price\":25,\"qty\":1,\"id\":71}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:30:47', '2026-05-23 08:30:47'),
(286, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 72, '[]', '{\"transaction_id\":89,\"store_id\":1,\"item_id\":867,\"item_name\":\"Ut enim eos tenetur qui ratione voluptatem ducimus.\",\"item_description\":\"Voluptate consectetur quis modi perspiciatis culpa ut similique quod ab labore.\",\"unit_id\":2,\"base_price\":27.8,\"store_price\":30.58,\"online_price\":33.64,\"qty\":1,\"id\":72}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 08:30:47', '2026-05-23 08:30:47'),
(287, 'App\\Models\\User', 68, 'created', 'App\\Models\\Transaction', 90, '[]', '{\"store_id\":2033899500,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":13.799999999999999,\"contact_number\":\"9270079301\",\"reference_id\":\"6a119bb9d4d67\",\"lat\":\"10.361789699999\",\"lng\":\"123.98731994\",\"total\":156.82,\"grand_total\":170.62,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":90}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 11:21:13', '2026-05-23 11:21:13'),
(288, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 73, '[]', '{\"transaction_id\":90,\"store_id\":2,\"item_id\":982,\"item_name\":\"Dignissimos omnis exercitationem sed sunt eligendi eos quia quia.\",\"item_description\":\"Odit suscipit aut numquam omnis culpa quia eos.\",\"unit_id\":10,\"base_price\":64.8,\"store_price\":71.28,\"online_price\":78.41,\"qty\":2,\"id\":73}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 11:21:14', '2026-05-23 11:21:14');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(289, 'App\\Models\\User', 68, 'updated', 'App\\Models\\Item', 666, '{\"description\":\"aasdfasdf\"}', '{\"description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div>\"}', 'http://localhost:8081/item-update/1150896292', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 21:09:49', '2026-05-23 21:09:49'),
(290, 'App\\Models\\User', 68, 'updated', 'App\\Models\\Item', 666, '{\"description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div>\"}', '{\"description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\"}', 'http://localhost:8081/item-update/1150896292', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-23 21:18:47', '2026-05-23 21:18:47'),
(291, 'App\\Models\\User', 68, 'created', 'App\\Models\\Transaction', 91, '[]', '{\"store_id\":458047115,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.4,\"contact_number\":\"9270079301\",\"reference_id\":\"6a1290bbeaa80\",\"lat\":\"10.361761090808\",\"lng\":\"123.98703765204\",\"total\":103.41,\"grand_total\":107.81,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":91}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 04:46:36', '2026-05-24 04:46:36'),
(292, 'App\\Models\\User', 68, 'created', 'App\\Models\\Transaction', 92, '[]', '{\"store_id\":458047115,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.4,\"contact_number\":\"9270079301\",\"reference_id\":\"6a129422c4937\",\"lat\":\"10.361761090808\",\"lng\":\"123.98703765204\",\"total\":103.41,\"grand_total\":107.81,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":92}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 05:01:06', '2026-05-24 05:01:06'),
(293, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 74, '[]', '{\"transaction_id\":92,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":4,\"base_price\":23,\"store_price\":56,\"online_price\":25,\"qty\":1,\"id\":74}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 05:01:06', '2026-05-24 05:01:06'),
(294, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 75, '[]', '{\"transaction_id\":92,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":17,\"base_price\":4,\"store_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":75}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 05:01:06', '2026-05-24 05:01:06'),
(295, 'App\\Models\\User', 68, 'created', 'App\\Models\\Transaction', 93, '[]', '{\"store_id\":458047115,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.4,\"contact_number\":\"9270079301\",\"reference_id\":\"6a129523b580e\",\"lat\":\"10.36176109\",\"lng\":\"123.98703765\",\"total\":78.41,\"grand_total\":82.81,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":93}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 05:05:23', '2026-05-24 05:05:23'),
(296, 'App\\Models\\User', 68, 'updated', 'App\\Models\\Transaction', 93, '{\"store_id\":null,\"user_id\":null,\"payment_method_id\":null,\"receive_method_id\":null,\"delivery_charge\":null,\"contact_number\":null,\"reference_id\":null,\"lat\":null,\"lng\":null,\"total\":null,\"grand_total\":null,\"status_id\":null,\"receivers_mobile\":null,\"id\":null}', '{\"store_id\":1,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.4,\"contact_number\":\"9270079301\",\"reference_id\":\"6a129523b580e\",\"lat\":\"10.36176109\",\"lng\":\"123.98703765\",\"total\":78.41,\"grand_total\":82.81,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":93}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 05:05:23', '2026-05-24 05:05:23'),
(297, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 76, '[]', '{\"transaction_id\":93,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":17,\"base_price\":4,\"store_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":76}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 05:05:23', '2026-05-24 05:05:23'),
(298, 'App\\Models\\User', 68, 'created', 'App\\Models\\Transaction', 94, '[]', '{\"store_id\":458047115,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.4,\"contact_number\":\"9270079301\",\"reference_id\":\"6a1299ae2fbfe\",\"lat\":\"10.361761062475\",\"lng\":\"123.9870373314\",\"total\":78.41,\"grand_total\":82.81,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":94}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 05:24:46', '2026-05-24 05:24:46'),
(299, 'App\\Models\\User', 68, 'updated', 'App\\Models\\Transaction', 94, '{\"store_id\":null,\"user_id\":null,\"payment_method_id\":null,\"receive_method_id\":null,\"delivery_charge\":null,\"contact_number\":null,\"reference_id\":null,\"lat\":null,\"lng\":null,\"total\":null,\"grand_total\":null,\"status_id\":null,\"receivers_mobile\":null,\"id\":null}', '{\"store_id\":1,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.4,\"contact_number\":\"9270079301\",\"reference_id\":\"6a1299ae2fbfe\",\"lat\":\"10.361761062475\",\"lng\":\"123.9870373314\",\"total\":78.41,\"grand_total\":82.81,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":94}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 05:24:46', '2026-05-24 05:24:46'),
(300, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 77, '[]', '{\"transaction_id\":94,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":17,\"base_price\":4,\"store_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":77}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 05:24:46', '2026-05-24 05:24:46'),
(301, 'App\\Models\\User', 68, 'created', 'App\\Models\\Transaction', 95, '[]', '{\"store_id\":2033899500,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":17.6,\"contact_number\":\"9270079301\",\"reference_id\":\"6a129a0962d73\",\"lat\":\"10.361761090001\",\"lng\":\"123.98703765002\",\"total\":181.87,\"grand_total\":199.47,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":95}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 05:26:17', '2026-05-24 05:26:17'),
(302, 'App\\Models\\User', 68, 'updated', 'App\\Models\\Transaction', 95, '{\"store_id\":null,\"user_id\":null,\"payment_method_id\":null,\"receive_method_id\":null,\"delivery_charge\":null,\"contact_number\":null,\"reference_id\":null,\"lat\":null,\"lng\":null,\"total\":null,\"grand_total\":null,\"status_id\":null,\"receivers_mobile\":null,\"id\":null}', '{\"store_id\":2,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":17.6,\"contact_number\":\"9270079301\",\"reference_id\":\"6a129a0962d73\",\"lat\":\"10.361761090001\",\"lng\":\"123.98703765002\",\"total\":181.87,\"grand_total\":199.47,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":95}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 05:26:17', '2026-05-24 05:26:17'),
(303, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 78, '[]', '{\"transaction_id\":95,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":17,\"base_price\":4,\"store_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":78}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 05:26:17', '2026-05-24 05:26:17'),
(304, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 79, '[]', '{\"transaction_id\":95,\"store_id\":2,\"item_id\":949,\"item_name\":\"Enim dolores nulla id illum earum et vitae.\",\"item_description\":\"Molestias eum repellendus cupiditate natus debitis esse hic maiores.\",\"unit_id\":19,\"base_price\":85.5,\"store_price\":94.05,\"online_price\":103.46,\"qty\":1,\"id\":79}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 05:26:17', '2026-05-24 05:26:17'),
(305, 'App\\Models\\User', 68, 'created', 'App\\Models\\Transaction', 96, '[]', '{\"store_id\":458047115,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.4,\"contact_number\":\"9270079301\",\"reference_id\":\"6a129d24179ed\",\"lat\":\"10.3517929\",\"lng\":\"123.9801499\",\"total\":25,\"grand_total\":29.4,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":96}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 05:39:32', '2026-05-24 05:39:32'),
(306, 'App\\Models\\User', 68, 'updated', 'App\\Models\\Transaction', 96, '{\"store_id\":null,\"user_id\":null,\"payment_method_id\":null,\"receive_method_id\":null,\"delivery_charge\":null,\"contact_number\":null,\"reference_id\":null,\"lat\":null,\"lng\":null,\"total\":null,\"grand_total\":null,\"status_id\":null,\"receivers_mobile\":null,\"id\":null}', '{\"store_id\":1,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.4,\"contact_number\":\"9270079301\",\"reference_id\":\"6a129d24179ed\",\"lat\":\"10.3517929\",\"lng\":\"123.9801499\",\"total\":25,\"grand_total\":29.4,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":96}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 05:39:32', '2026-05-24 05:39:32'),
(307, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 80, '[]', '{\"transaction_id\":96,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":4,\"base_price\":23,\"store_price\":56,\"online_price\":25,\"qty\":1,\"id\":80}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 05:39:32', '2026-05-24 05:39:32'),
(308, 'App\\Models\\User', 68, 'created', 'App\\Models\\Transaction', 97, '[]', '{\"store_id\":458047115,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.6000000000000005,\"contact_number\":\"9270079301\",\"reference_id\":\"6a12e0759a866\",\"lat\":\"10.3669434\",\"lng\":\"123.9763597\",\"total\":78.41,\"grand_total\":83.00999999999999,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":97}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 10:26:45', '2026-05-24 10:26:45'),
(309, 'App\\Models\\User', 68, 'updated', 'App\\Models\\Transaction', 97, '{\"store_id\":null,\"user_id\":null,\"payment_method_id\":null,\"receive_method_id\":null,\"delivery_charge\":null,\"contact_number\":null,\"reference_id\":null,\"lat\":null,\"lng\":null,\"total\":null,\"grand_total\":null,\"status_id\":null,\"receivers_mobile\":null,\"id\":null}', '{\"store_id\":1,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.6000000000000005,\"contact_number\":\"9270079301\",\"reference_id\":\"6a12e0759a866\",\"lat\":\"10.3669434\",\"lng\":\"123.9763597\",\"total\":78.41,\"grand_total\":83.00999999999999,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":97}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 10:26:45', '2026-05-24 10:26:45'),
(310, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 81, '[]', '{\"transaction_id\":97,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":17,\"base_price\":4,\"store_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":81}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-24 10:26:45', '2026-05-24 10:26:45'),
(311, 'App\\Models\\User', 68, 'created', 'App\\Models\\Transaction', 98, '[]', '{\"store_id\":1886417784,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":135.4,\"contact_number\":\"9270079301\",\"reference_id\":\"6a14edbce3d8d\",\"lat\":\"10.39926\",\"lng\":\"124.0000198\",\"total\":55.06,\"grand_total\":190.46,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":98}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-25 23:47:57', '2026-05-25 23:47:57'),
(312, 'App\\Models\\User', 68, 'updated', 'App\\Models\\Transaction', 98, '{\"store_id\":null,\"user_id\":null,\"payment_method_id\":null,\"receive_method_id\":null,\"delivery_charge\":null,\"contact_number\":null,\"reference_id\":null,\"lat\":null,\"lng\":null,\"total\":null,\"grand_total\":null,\"status_id\":null,\"receivers_mobile\":null,\"id\":null}', '{\"store_id\":6,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":135.4,\"contact_number\":\"9270079301\",\"reference_id\":\"6a14edbce3d8d\",\"lat\":\"10.39926\",\"lng\":\"124.0000198\",\"total\":55.06,\"grand_total\":190.46,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":98}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-25 23:47:57', '2026-05-25 23:47:57'),
(313, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 82, '[]', '{\"transaction_id\":98,\"store_id\":6,\"item_id\":967,\"item_name\":\"Qui corrupti sint cupiditate doloremque harum quam.\",\"item_description\":\"Iusto sunt non optio at delectus a vitae omnis ut doloremque dolorem repellat alias aut et perferendis.\",\"unit_id\":6,\"base_price\":45.5,\"store_price\":50.05,\"online_price\":55.06,\"qty\":1,\"id\":82}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-25 23:47:57', '2026-05-25 23:47:57'),
(314, 'App\\Models\\User', 68, 'created', 'App\\Models\\Transaction', 99, '[]', '{\"store_id\":2033899500,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":18,\"contact_number\":\"9270079301\",\"reference_id\":\"6a196264af078\",\"lat\":\"10.3797702\",\"lng\":\"123.9945086\",\"total\":109.87,\"grand_total\":127.87,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":99}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-29 08:54:44', '2026-05-29 08:54:44'),
(315, 'App\\Models\\User', 68, 'updated', 'App\\Models\\Transaction', 99, '{\"store_id\":null,\"user_id\":null,\"payment_method_id\":null,\"receive_method_id\":null,\"delivery_charge\":null,\"contact_number\":null,\"reference_id\":null,\"lat\":null,\"lng\":null,\"total\":null,\"grand_total\":null,\"status_id\":null,\"receivers_mobile\":null,\"id\":null}', '{\"store_id\":2,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":18,\"contact_number\":\"9270079301\",\"reference_id\":\"6a196264af078\",\"lat\":\"10.3797702\",\"lng\":\"123.9945086\",\"total\":109.87,\"grand_total\":127.87,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":99}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-29 08:54:44', '2026-05-29 08:54:44'),
(316, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 83, '[]', '{\"transaction_id\":99,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":17,\"base_price\":4,\"store_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":83}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-29 08:54:44', '2026-05-29 08:54:44'),
(317, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 84, '[]', '{\"transaction_id\":99,\"store_id\":2,\"item_id\":943,\"item_name\":\"Consequatur assumenda et rem et eos.\",\"item_description\":\"Ut accusantium dolore aperiam tempora hic architecto rerum rerum voluptatem non consequatur ipsa nam.\",\"unit_id\":16,\"base_price\":26,\"store_price\":28.6,\"online_price\":31.46,\"qty\":1,\"id\":84}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-05-29 08:54:44', '2026-05-29 08:54:44'),
(318, 'App\\Models\\User', 68, 'created', 'App\\Models\\Transaction', 100, '[]', '{\"store_id\":2033899500,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":18,\"contact_number\":\"9270079301\",\"reference_id\":\"6a1d27a86a170\",\"lat\":\"10.361819259151\",\"lng\":\"123.98710631802\",\"total\":184.45999999999998,\"grand_total\":202.45999999999998,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":100}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 05:33:12', '2026-06-01 05:33:12'),
(319, 'App\\Models\\User', 68, 'updated', 'App\\Models\\Transaction', 100, '{\"store_id\":null,\"user_id\":null,\"payment_method_id\":null,\"receive_method_id\":null,\"delivery_charge\":null,\"contact_number\":null,\"reference_id\":null,\"lat\":null,\"lng\":null,\"total\":null,\"grand_total\":null,\"status_id\":null,\"receivers_mobile\":null,\"id\":null}', '{\"store_id\":2,\"user_id\":68,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":18,\"contact_number\":\"9270079301\",\"reference_id\":\"6a1d27a86a170\",\"lat\":\"10.361819259151\",\"lng\":\"123.98710631802\",\"total\":184.45999999999998,\"grand_total\":202.45999999999998,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":100}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 05:33:12', '2026-06-01 05:33:12'),
(320, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 85, '[]', '{\"transaction_id\":100,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":9,\"base_price\":45,\"store_price\":90,\"online_price\":56,\"qty\":1,\"id\":85}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 05:33:12', '2026-06-01 05:33:12'),
(321, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 86, '[]', '{\"transaction_id\":100,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":4,\"base_price\":23,\"store_price\":56,\"online_price\":25,\"qty\":1,\"id\":86}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 05:33:12', '2026-06-01 05:33:12'),
(322, 'App\\Models\\User', 68, 'created', 'App\\Models\\Order', 87, '[]', '{\"transaction_id\":100,\"store_id\":2,\"item_id\":949,\"item_name\":\"Enim dolores nulla id illum earum et vitae.\",\"item_description\":\"Molestias eum repellendus cupiditate natus debitis esse hic maiores.\",\"unit_id\":19,\"base_price\":85.5,\"store_price\":94.05,\"online_price\":103.46,\"qty\":1,\"id\":87}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 05:33:12', '2026-06-01 05:33:12'),
(323, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1039, '{\"id\":1039,\"item_id\":666,\"unit_id\":17,\"color_id\":1,\"size_id\":1,\"qty\":1,\"delivery_charge_id\":1,\"original_price\":\"4.00\",\"selling_price\":\"56.00\",\"online_price\":\"78.41\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 07:49:18', '2026-06-01 07:49:18'),
(324, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1040, '{\"id\":1040,\"item_id\":666,\"unit_id\":4,\"color_id\":3,\"size_id\":3,\"qty\":5,\"delivery_charge_id\":1,\"original_price\":\"23.00\",\"selling_price\":\"56.00\",\"online_price\":\"25.00\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 07:49:18', '2026-06-01 07:49:18'),
(325, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1041, '{\"id\":1041,\"item_id\":666,\"unit_id\":9,\"color_id\":5,\"size_id\":3,\"qty\":4,\"delivery_charge_id\":1,\"original_price\":\"45.00\",\"selling_price\":\"90.00\",\"online_price\":\"56.00\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 07:49:18', '2026-06-01 07:49:18'),
(326, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1042, '[]', '{\"item_id\":666,\"color_id\":1,\"size_id\":1,\"unit_id\":17,\"original_price\":4,\"selling_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":1042}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 07:49:18', '2026-06-01 07:49:18'),
(327, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1043, '[]', '{\"item_id\":666,\"color_id\":null,\"size_id\":null,\"unit_id\":4,\"original_price\":23,\"selling_price\":56,\"online_price\":25,\"qty\":5,\"id\":1043}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 07:49:18', '2026-06-01 07:49:18'),
(328, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1044, '[]', '{\"item_id\":666,\"color_id\":5,\"size_id\":3,\"unit_id\":9,\"original_price\":45,\"selling_price\":90,\"online_price\":56,\"qty\":4,\"id\":1044}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 07:49:18', '2026-06-01 07:49:18'),
(329, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1042, '{\"id\":1042,\"item_id\":666,\"unit_id\":17,\"color_id\":1,\"size_id\":1,\"qty\":1,\"delivery_charge_id\":1,\"original_price\":\"4.00\",\"selling_price\":\"56.00\",\"online_price\":\"78.41\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 07:49:29', '2026-06-01 07:49:29'),
(330, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1043, '{\"id\":1043,\"item_id\":666,\"unit_id\":4,\"color_id\":null,\"size_id\":null,\"qty\":5,\"delivery_charge_id\":1,\"original_price\":\"23.00\",\"selling_price\":\"56.00\",\"online_price\":\"25.00\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 07:49:29', '2026-06-01 07:49:29'),
(331, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1044, '{\"id\":1044,\"item_id\":666,\"unit_id\":9,\"color_id\":5,\"size_id\":3,\"qty\":4,\"delivery_charge_id\":1,\"original_price\":\"45.00\",\"selling_price\":\"90.00\",\"online_price\":\"56.00\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 07:49:29', '2026-06-01 07:49:29'),
(332, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1045, '[]', '{\"item_id\":666,\"color_id\":null,\"size_id\":null,\"unit_id\":17,\"original_price\":4,\"selling_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":1045}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 07:49:29', '2026-06-01 07:49:29'),
(333, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1046, '[]', '{\"item_id\":666,\"color_id\":null,\"size_id\":null,\"unit_id\":4,\"original_price\":23,\"selling_price\":56,\"online_price\":25,\"qty\":5,\"id\":1046}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 07:49:29', '2026-06-01 07:49:29'),
(334, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1047, '[]', '{\"item_id\":666,\"color_id\":null,\"size_id\":null,\"unit_id\":9,\"original_price\":45,\"selling_price\":90,\"online_price\":56,\"qty\":4,\"id\":1047}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 07:49:29', '2026-06-01 07:49:29'),
(335, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1045, '{\"id\":1045,\"item_id\":666,\"unit_id\":17,\"color_id\":null,\"size_id\":null,\"qty\":1,\"delivery_charge_id\":1,\"original_price\":\"4.00\",\"selling_price\":\"56.00\",\"online_price\":\"78.41\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 08:21:34', '2026-06-01 08:21:34'),
(336, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1046, '{\"id\":1046,\"item_id\":666,\"unit_id\":4,\"color_id\":null,\"size_id\":null,\"qty\":5,\"delivery_charge_id\":1,\"original_price\":\"23.00\",\"selling_price\":\"56.00\",\"online_price\":\"25.00\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 08:21:34', '2026-06-01 08:21:34'),
(337, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1047, '{\"id\":1047,\"item_id\":666,\"unit_id\":9,\"color_id\":null,\"size_id\":null,\"qty\":4,\"delivery_charge_id\":1,\"original_price\":\"45.00\",\"selling_price\":\"90.00\",\"online_price\":\"56.00\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 08:21:34', '2026-06-01 08:21:34'),
(338, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1048, '[]', '{\"item_id\":666,\"color_id\":null,\"size_id\":null,\"unit_id\":17,\"original_price\":4,\"selling_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":1048}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 08:21:34', '2026-06-01 08:21:34'),
(339, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1049, '[]', '{\"item_id\":666,\"color_id\":1,\"size_id\":2,\"unit_id\":4,\"original_price\":23,\"selling_price\":56,\"online_price\":25,\"qty\":5,\"id\":1049}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 08:21:34', '2026-06-01 08:21:34'),
(340, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1050, '[]', '{\"item_id\":666,\"color_id\":null,\"size_id\":null,\"unit_id\":9,\"original_price\":45,\"selling_price\":90,\"online_price\":56,\"qty\":4,\"id\":1050}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 08:21:34', '2026-06-01 08:21:34'),
(341, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1048, '{\"id\":1048,\"item_id\":666,\"unit_id\":17,\"color_id\":null,\"size_id\":null,\"qty\":1,\"delivery_charge_id\":1,\"original_price\":\"4.00\",\"selling_price\":\"56.00\",\"online_price\":\"78.41\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 08:28:50', '2026-06-01 08:28:50'),
(342, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1049, '{\"id\":1049,\"item_id\":666,\"unit_id\":4,\"color_id\":1,\"size_id\":2,\"qty\":5,\"delivery_charge_id\":1,\"original_price\":\"23.00\",\"selling_price\":\"56.00\",\"online_price\":\"25.00\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 08:28:50', '2026-06-01 08:28:50'),
(343, 'App\\Models\\User', 68, 'deleted', 'App\\Models\\ItemPrice', 1050, '{\"id\":1050,\"item_id\":666,\"unit_id\":9,\"color_id\":null,\"size_id\":null,\"qty\":4,\"delivery_charge_id\":1,\"original_price\":\"45.00\",\"selling_price\":\"90.00\",\"online_price\":\"56.00\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 08:28:50', '2026-06-01 08:28:50'),
(344, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1051, '[]', '{\"item_id\":666,\"color_id\":null,\"size_id\":null,\"unit_id\":17,\"original_price\":4,\"selling_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":1051}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 08:28:50', '2026-06-01 08:28:50'),
(345, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1052, '[]', '{\"item_id\":666,\"color_id\":1,\"size_id\":2,\"unit_id\":4,\"original_price\":23,\"selling_price\":56,\"online_price\":25,\"qty\":5,\"id\":1052}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 08:28:50', '2026-06-01 08:28:50'),
(346, 'App\\Models\\User', 68, 'created', 'App\\Models\\ItemPrice', 1053, '[]', '{\"item_id\":666,\"color_id\":null,\"size_id\":4,\"unit_id\":9,\"original_price\":45,\"selling_price\":90,\"online_price\":56,\"qty\":4,\"id\":1053}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, '2026-06-01 08:28:50', '2026-06-01 08:28:50'),
(347, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 1, '[]', '{\"store_id\":\"458047115\",\"email\":\"momshieroce@gmail.com\",\"id\":1}', 'http://localhost:8081/invite-user', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-03 00:01:22', '2026-06-03 00:01:22'),
(348, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 2, '[]', '{\"store_id\":1,\"email\":\"momshieroce@gmail.com\",\"verification_code\":\"6a1f7da345c0a\",\"is_verified\":false,\"id\":2}', 'http://localhost:8081/invite-user', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-03 00:04:35', '2026-06-03 00:04:35'),
(349, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 3, '[]', '{\"store_id\":1,\"email\":\"momshieroce@gmail.com\",\"verification_code\":\"6a1f92e6b6b91\",\"is_verified\":false,\"id\":3}', 'http://localhost:8081/invite-user', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-03 01:35:18', '2026-06-03 01:35:18'),
(350, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 4, '[]', '{\"store_id\":1,\"email\":\"momshieroce@gmail.com\",\"verification_code\":\"6a24b95dd4819\",\"is_verified\":false,\"id\":4}', 'https://api.mynearshops.com/invite-user', '112.208.71.217', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-07 12:20:45', '2026-06-07 12:20:45'),
(351, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 5, '[]', '{\"store_id\":1,\"email\":\"momshieroce@gmail.com\",\"verification_code\":\"6a24ba43e2a42\",\"is_verified\":false,\"id\":5}', 'https://api.mynearshops.com/invite-user', '112.208.71.217', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-07 12:24:35', '2026-06-07 12:24:35'),
(352, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 6, '[]', '{\"store_id\":1,\"email\":\"momshieroce@gmail.com\",\"verification_code\":\"6a24bf7ecaec7\",\"is_verified\":false,\"id\":6}', 'https://api.mynearshops.com/invite-user', '112.208.71.217', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-07 12:46:54', '2026-06-07 12:46:54'),
(353, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 7, '[]', '{\"store_id\":1,\"email\":\"bobby.gerez@yahoo.com\",\"verification_code\":\"6a24bf98a63a2\",\"is_verified\":false,\"id\":7}', 'https://api.mynearshops.com/invite-user', '112.208.71.217', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-07 12:47:20', '2026-06-07 12:47:20'),
(354, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 8, '[]', '{\"store_id\":1,\"email\":\"momshieroce@gmail.com\",\"verification_code\":\"6a24c46a8beb0\",\"is_verified\":false,\"id\":8}', 'https://api.mynearshops.com/invite-user', '112.208.71.217', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-07 13:07:54', '2026-06-07 13:07:54'),
(355, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 9, '[]', '{\"store_id\":1,\"email\":\"momshieroce@gmail.com\",\"verification_code\":\"6a24c5b43cafe\",\"is_verified\":false,\"id\":9}', 'https://api.mynearshops.com/invite-user', '112.208.71.217', 'PostmanRuntime/7.54.0', NULL, '2026-06-07 13:13:24', '2026-06-07 13:13:24'),
(356, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 10, '[]', '{\"store_id\":1,\"email\":\"momshieroce@gmail.com\",\"verification_code\":\"6a24c727458bd\",\"is_verified\":false,\"id\":10}', 'https://api.mynearshops.com/invite-user', '112.208.71.217', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-07 13:19:35', '2026-06-07 13:19:35'),
(357, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 11, '[]', '{\"store_id\":1,\"email\":\"momshieroce@gmail.com\",\"verification_code\":\"6a24c82a7fd7b\",\"is_verified\":false,\"id\":11}', 'https://api.mynearshops.com/invite-user', '112.208.71.217', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-07 13:23:54', '2026-06-07 13:23:54'),
(358, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 12, '[]', '{\"store_id\":1,\"email\":\"momshieroce@gmail.com\",\"verification_code\":\"6a24d60785871\",\"is_verified\":false,\"id\":12}', 'https://api.mynearshops.com/invite-user', '112.208.71.217', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-07 14:23:03', '2026-06-07 14:23:03'),
(359, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 13, '[]', '{\"store_id\":1,\"email\":\"momshieroce@gmail.com\",\"verification_code\":\"6a24d6725b680\",\"is_verified\":false,\"id\":13}', 'https://api.mynearshops.com/invite-user', '175.176.66.159', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-07 14:24:50', '2026-06-07 14:24:50'),
(360, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 14, '[]', '{\"store_id\":1,\"email\":\"momshieroce@gmail.com\",\"verification_code\":\"6a24d997ba60c\",\"is_verified\":false,\"id\":14}', 'https://api.mynearshops.com/invite-user', '175.176.66.159', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-07 14:38:15', '2026-06-07 14:38:15'),
(361, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 15, '[]', '{\"store_id\":1,\"email\":\"momshieroce@gmail.com\",\"verification_code\":\"6a24e318add58\",\"is_verified\":false,\"id\":15}', 'https://api.mynearshops.com/invite-user', '175.176.66.159', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-07 15:18:48', '2026-06-07 15:18:48'),
(362, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 16, '[]', '{\"store_id\":1,\"email\":\"momshieroce@gmail.com\",\"verification_code\":\"6a24e3c32985c\",\"is_verified\":false,\"id\":16}', 'https://api.mynearshops.com/invite-user', '175.176.66.159', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-07 15:21:39', '2026-06-07 15:21:39'),
(363, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 17, '[]', '{\"store_id\":1,\"email\":\"momshieroce@gmail.com\",\"verification_code\":\"6a24e3f46eee2\",\"is_verified\":false,\"id\":17}', 'https://api.mynearshops.com/invite-user', '175.176.66.159', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-07 15:22:28', '2026-06-07 15:22:28'),
(364, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 18, '[]', '{\"store_id\":1,\"email\":\"momshieroce@gmail.com\",\"verification_code\":\"6a24f1b4a1495\",\"is_verified\":false,\"id\":18}', 'https://api.mynearshops.com/invite-user', '112.208.71.217', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-07 16:21:08', '2026-06-07 16:21:08'),
(365, 'App\\Models\\User', 68, 'created', 'App\\Models\\StoreUser', 19, '[]', '{\"store_id\":1,\"email\":\"momshieroce@gmail.com\",\"verification_code\":\"6a26248c80319\",\"is_verified\":false,\"id\":19}', 'https://api.mynearshops.com/invite-user', '112.208.71.217', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-08 14:10:20', '2026-06-08 14:10:20'),
(366, NULL, NULL, 'updated', 'App\\Models\\StoreUser', 19, '{\"is_verified\":0}', '{\"is_verified\":1}', 'https://api.mynearshops.com/store-users/verification_code/6a26248c80319', '112.208.71.217', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-08 14:30:24', '2026-06-08 14:30:24'),
(367, NULL, NULL, 'updated', 'App\\Models\\StoreUser', 19, '{\"is_verified\":0}', '{\"is_verified\":1}', 'https://api.mynearshops.com/store-users/verification_code/6a26248c80319', '112.208.71.217', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-09 13:49:11', '2026-06-09 13:49:11'),
(368, 'App\\Models\\User', 66, 'created', 'App\\Models\\Transaction', 101, '[]', '{\"store_id\":458047115,\"user_id\":66,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.6000000000000005,\"contact_number\":\"9270079301\",\"reference_id\":\"6a2b4d9fb66a9\",\"lat\":\"10.36184024\",\"lng\":\"123.98712158\",\"total\":78.41,\"grand_total\":83.00999999999999,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":101}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'PostmanRuntime/7.54.0', NULL, '2026-06-11 23:06:55', '2026-06-11 23:06:55');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(369, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 101, '{\"store_id\":null,\"user_id\":null,\"payment_method_id\":null,\"receive_method_id\":null,\"delivery_charge\":null,\"contact_number\":null,\"reference_id\":null,\"lat\":null,\"lng\":null,\"total\":null,\"grand_total\":null,\"status_id\":null,\"receivers_mobile\":null,\"id\":null}', '{\"store_id\":1,\"user_id\":66,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.6000000000000005,\"contact_number\":\"9270079301\",\"reference_id\":\"6a2b4d9fb66a9\",\"lat\":\"10.36184024\",\"lng\":\"123.98712158\",\"total\":78.41,\"grand_total\":83.00999999999999,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":101}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'PostmanRuntime/7.54.0', NULL, '2026-06-11 23:06:55', '2026-06-11 23:06:55'),
(370, 'App\\Models\\User', 66, 'created', 'App\\Models\\Order', 88, '[]', '{\"transaction_id\":101,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":17,\"base_price\":4,\"store_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":88}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'PostmanRuntime/7.54.0', NULL, '2026-06-11 23:06:55', '2026-06-11 23:06:55'),
(371, 'App\\Models\\User', 66, 'created', 'App\\Models\\Transaction', 102, '[]', '{\"store_id\":458047115,\"user_id\":66,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.6000000000000005,\"contact_number\":\"9270079301\",\"reference_id\":\"6a2b4e16d5b7a\",\"lat\":\"10.36184024\",\"lng\":\"123.98712158\",\"total\":78.41,\"grand_total\":83.00999999999999,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":102}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'PostmanRuntime/7.54.0', NULL, '2026-06-11 23:08:54', '2026-06-11 23:08:54'),
(372, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 102, '{\"store_id\":null,\"user_id\":null,\"payment_method_id\":null,\"receive_method_id\":null,\"delivery_charge\":null,\"contact_number\":null,\"reference_id\":null,\"lat\":null,\"lng\":null,\"total\":null,\"grand_total\":null,\"status_id\":null,\"receivers_mobile\":null,\"id\":null}', '{\"store_id\":1,\"user_id\":66,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.6000000000000005,\"contact_number\":\"9270079301\",\"reference_id\":\"6a2b4e16d5b7a\",\"lat\":\"10.36184024\",\"lng\":\"123.98712158\",\"total\":78.41,\"grand_total\":83.00999999999999,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":102}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'PostmanRuntime/7.54.0', NULL, '2026-06-11 23:08:54', '2026-06-11 23:08:54'),
(373, 'App\\Models\\User', 66, 'created', 'App\\Models\\Order', 89, '[]', '{\"transaction_id\":102,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":17,\"base_price\":4,\"store_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":89}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'PostmanRuntime/7.54.0', NULL, '2026-06-11 23:08:55', '2026-06-11 23:08:55'),
(374, 'App\\Models\\User', 66, 'created', 'App\\Models\\Transaction', 103, '[]', '{\"store_id\":458047115,\"user_id\":66,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.6000000000000005,\"contact_number\":\"9270079301\",\"reference_id\":\"6a2b4ee203901\",\"lat\":\"10.36184024\",\"lng\":\"123.98712158\",\"total\":78.41,\"grand_total\":83.00999999999999,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":103}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'PostmanRuntime/7.54.0', NULL, '2026-06-11 23:12:18', '2026-06-11 23:12:18'),
(375, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 103, '{\"store_id\":null,\"user_id\":null,\"payment_method_id\":null,\"receive_method_id\":null,\"delivery_charge\":null,\"contact_number\":null,\"reference_id\":null,\"lat\":null,\"lng\":null,\"total\":null,\"grand_total\":null,\"status_id\":null,\"receivers_mobile\":null,\"id\":null}', '{\"store_id\":1,\"user_id\":66,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.6000000000000005,\"contact_number\":\"9270079301\",\"reference_id\":\"6a2b4ee203901\",\"lat\":\"10.36184024\",\"lng\":\"123.98712158\",\"total\":78.41,\"grand_total\":83.00999999999999,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":103}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'PostmanRuntime/7.54.0', NULL, '2026-06-11 23:12:18', '2026-06-11 23:12:18'),
(376, 'App\\Models\\User', 66, 'created', 'App\\Models\\Order', 90, '[]', '{\"transaction_id\":103,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":17,\"base_price\":4,\"store_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":90}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'PostmanRuntime/7.54.0', NULL, '2026-06-11 23:12:18', '2026-06-11 23:12:18'),
(377, 'App\\Models\\User', 66, 'created', 'App\\Models\\Transaction', 104, '[]', '{\"store_id\":458047115,\"user_id\":66,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.6000000000000005,\"contact_number\":\"9270079301\",\"reference_id\":\"6a2b4eed64975\",\"lat\":\"10.36184024\",\"lng\":\"123.98712158\",\"total\":78.41,\"grand_total\":83.00999999999999,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":104}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-11 23:12:29', '2026-06-11 23:12:29'),
(378, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 104, '{\"store_id\":null,\"user_id\":null,\"payment_method_id\":null,\"receive_method_id\":null,\"delivery_charge\":null,\"contact_number\":null,\"reference_id\":null,\"lat\":null,\"lng\":null,\"total\":null,\"grand_total\":null,\"status_id\":null,\"receivers_mobile\":null,\"id\":null}', '{\"store_id\":1,\"user_id\":66,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.6000000000000005,\"contact_number\":\"9270079301\",\"reference_id\":\"6a2b4eed64975\",\"lat\":\"10.36184024\",\"lng\":\"123.98712158\",\"total\":78.41,\"grand_total\":83.00999999999999,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":104}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-11 23:12:29', '2026-06-11 23:12:29'),
(379, 'App\\Models\\User', 66, 'created', 'App\\Models\\Order', 91, '[]', '{\"transaction_id\":104,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":17,\"base_price\":4,\"store_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":91}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-11 23:12:29', '2026-06-11 23:12:29'),
(380, 'App\\Models\\User', 66, 'deleted', 'App\\Models\\ItemPrice', 1004, '{\"id\":1004,\"item_id\":672,\"unit_id\":2,\"color_id\":3,\"size_id\":4,\"qty\":2,\"delivery_charge_id\":1,\"original_price\":\"56.00\",\"selling_price\":\"100.00\",\"online_price\":\"89.90\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:53:24', '2026-06-13 03:53:24'),
(381, 'App\\Models\\User', 66, 'deleted', 'App\\Models\\ItemPrice', 1005, '{\"id\":1005,\"item_id\":672,\"unit_id\":5,\"color_id\":4,\"size_id\":3,\"qty\":6,\"delivery_charge_id\":1,\"original_price\":\"1.00\",\"selling_price\":\"3.00\",\"online_price\":\"2.00\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:53:24', '2026-06-13 03:53:24'),
(382, 'App\\Models\\User', 66, 'deleted', 'App\\Models\\ItemPrice', 1006, '{\"id\":1006,\"item_id\":672,\"unit_id\":6,\"color_id\":1,\"size_id\":2,\"qty\":5,\"delivery_charge_id\":1,\"original_price\":\"23.00\",\"selling_price\":\"25.00\",\"online_price\":\"24.00\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:53:24', '2026-06-13 03:53:24'),
(383, 'App\\Models\\User', 66, 'created', 'App\\Models\\ItemPrice', 1054, '[]', '{\"item_id\":672,\"color_id\":3,\"size_id\":4,\"unit_id\":2,\"original_price\":56,\"selling_price\":100,\"online_price\":89.9,\"qty\":2,\"id\":1054}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:53:24', '2026-06-13 03:53:24'),
(384, 'App\\Models\\User', 66, 'created', 'App\\Models\\ItemPrice', 1055, '[]', '{\"item_id\":672,\"color_id\":null,\"size_id\":null,\"unit_id\":5,\"original_price\":1,\"selling_price\":3,\"online_price\":2,\"qty\":6,\"id\":1055}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:53:24', '2026-06-13 03:53:24'),
(385, 'App\\Models\\User', 66, 'created', 'App\\Models\\ItemPrice', 1056, '[]', '{\"item_id\":672,\"color_id\":1,\"size_id\":2,\"unit_id\":6,\"original_price\":23,\"selling_price\":25,\"online_price\":24,\"qty\":5,\"id\":1056}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:53:24', '2026-06-13 03:53:24'),
(386, 'App\\Models\\User', 66, 'deleted', 'App\\Models\\ItemPrice', 1054, '{\"id\":1054,\"item_id\":672,\"unit_id\":2,\"color_id\":3,\"size_id\":4,\"qty\":2,\"delivery_charge_id\":1,\"original_price\":\"56.00\",\"selling_price\":\"100.00\",\"online_price\":\"89.90\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:55:31', '2026-06-13 03:55:31'),
(387, 'App\\Models\\User', 66, 'deleted', 'App\\Models\\ItemPrice', 1055, '{\"id\":1055,\"item_id\":672,\"unit_id\":5,\"color_id\":null,\"size_id\":null,\"qty\":6,\"delivery_charge_id\":1,\"original_price\":\"1.00\",\"selling_price\":\"3.00\",\"online_price\":\"2.00\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:55:31', '2026-06-13 03:55:31'),
(388, 'App\\Models\\User', 66, 'deleted', 'App\\Models\\ItemPrice', 1056, '{\"id\":1056,\"item_id\":672,\"unit_id\":6,\"color_id\":1,\"size_id\":2,\"qty\":5,\"delivery_charge_id\":1,\"original_price\":\"23.00\",\"selling_price\":\"25.00\",\"online_price\":\"24.00\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:55:31', '2026-06-13 03:55:31'),
(389, 'App\\Models\\User', 66, 'created', 'App\\Models\\ItemPrice', 1057, '[]', '{\"item_id\":672,\"color_id\":3,\"size_id\":4,\"unit_id\":2,\"original_price\":56,\"selling_price\":100,\"online_price\":89.9,\"qty\":2,\"id\":1057}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:55:31', '2026-06-13 03:55:31'),
(390, 'App\\Models\\User', 66, 'created', 'App\\Models\\ItemPrice', 1058, '[]', '{\"item_id\":672,\"color_id\":null,\"size_id\":null,\"unit_id\":5,\"original_price\":1,\"selling_price\":3,\"online_price\":2,\"qty\":6,\"id\":1058}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:55:31', '2026-06-13 03:55:31'),
(391, 'App\\Models\\User', 66, 'created', 'App\\Models\\ItemPrice', 1059, '[]', '{\"item_id\":672,\"color_id\":1,\"size_id\":2,\"unit_id\":6,\"original_price\":23,\"selling_price\":25,\"online_price\":24,\"qty\":5,\"id\":1059}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:55:31', '2026-06-13 03:55:31'),
(392, 'App\\Models\\User', 66, 'deleted', 'App\\Models\\ItemPrice', 1057, '{\"id\":1057,\"item_id\":672,\"unit_id\":2,\"color_id\":3,\"size_id\":4,\"qty\":2,\"delivery_charge_id\":1,\"original_price\":\"56.00\",\"selling_price\":\"100.00\",\"online_price\":\"89.90\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:55:54', '2026-06-13 03:55:54'),
(393, 'App\\Models\\User', 66, 'deleted', 'App\\Models\\ItemPrice', 1058, '{\"id\":1058,\"item_id\":672,\"unit_id\":5,\"color_id\":null,\"size_id\":null,\"qty\":6,\"delivery_charge_id\":1,\"original_price\":\"1.00\",\"selling_price\":\"3.00\",\"online_price\":\"2.00\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:55:54', '2026-06-13 03:55:54'),
(394, 'App\\Models\\User', 66, 'deleted', 'App\\Models\\ItemPrice', 1059, '{\"id\":1059,\"item_id\":672,\"unit_id\":6,\"color_id\":1,\"size_id\":2,\"qty\":5,\"delivery_charge_id\":1,\"original_price\":\"23.00\",\"selling_price\":\"25.00\",\"online_price\":\"24.00\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:55:54', '2026-06-13 03:55:54'),
(395, 'App\\Models\\User', 66, 'created', 'App\\Models\\ItemPrice', 1060, '[]', '{\"item_id\":672,\"color_id\":3,\"size_id\":4,\"unit_id\":2,\"original_price\":56,\"selling_price\":100,\"online_price\":89.9,\"qty\":2,\"id\":1060}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:55:54', '2026-06-13 03:55:54'),
(396, 'App\\Models\\User', 66, 'created', 'App\\Models\\ItemPrice', 1061, '[]', '{\"item_id\":672,\"color_id\":null,\"size_id\":null,\"unit_id\":5,\"original_price\":1,\"selling_price\":3,\"online_price\":2,\"qty\":6,\"id\":1061}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:55:54', '2026-06-13 03:55:54'),
(397, 'App\\Models\\User', 66, 'created', 'App\\Models\\ItemPrice', 1062, '[]', '{\"item_id\":672,\"color_id\":1,\"size_id\":2,\"unit_id\":6,\"original_price\":23,\"selling_price\":25,\"online_price\":24,\"qty\":5,\"id\":1062}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:55:54', '2026-06-13 03:55:54'),
(398, 'App\\Models\\User', 66, 'deleted', 'App\\Models\\ItemPrice', 1060, '{\"id\":1060,\"item_id\":672,\"unit_id\":2,\"color_id\":3,\"size_id\":4,\"qty\":2,\"delivery_charge_id\":1,\"original_price\":\"56.00\",\"selling_price\":\"100.00\",\"online_price\":\"89.90\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:57:41', '2026-06-13 03:57:41'),
(399, 'App\\Models\\User', 66, 'deleted', 'App\\Models\\ItemPrice', 1061, '{\"id\":1061,\"item_id\":672,\"unit_id\":5,\"color_id\":null,\"size_id\":null,\"qty\":6,\"delivery_charge_id\":1,\"original_price\":\"1.00\",\"selling_price\":\"3.00\",\"online_price\":\"2.00\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:57:41', '2026-06-13 03:57:41'),
(400, 'App\\Models\\User', 66, 'deleted', 'App\\Models\\ItemPrice', 1062, '{\"id\":1062,\"item_id\":672,\"unit_id\":6,\"color_id\":1,\"size_id\":2,\"qty\":5,\"delivery_charge_id\":1,\"original_price\":\"23.00\",\"selling_price\":\"25.00\",\"online_price\":\"24.00\"}', '[]', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:57:41', '2026-06-13 03:57:41'),
(401, 'App\\Models\\User', 66, 'created', 'App\\Models\\ItemPrice', 1063, '[]', '{\"item_id\":672,\"color_id\":3,\"size_id\":4,\"unit_id\":2,\"original_price\":56,\"selling_price\":100,\"online_price\":89.9,\"qty\":2,\"id\":1063}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:57:41', '2026-06-13 03:57:41'),
(402, 'App\\Models\\User', 66, 'created', 'App\\Models\\ItemPrice', 1064, '[]', '{\"item_id\":672,\"color_id\":null,\"size_id\":null,\"unit_id\":5,\"original_price\":1,\"selling_price\":3,\"online_price\":2,\"qty\":6,\"id\":1064}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:57:41', '2026-06-13 03:57:41'),
(403, 'App\\Models\\User', 66, 'created', 'App\\Models\\ItemPrice', 1065, '[]', '{\"item_id\":672,\"color_id\":1,\"size_id\":2,\"unit_id\":6,\"original_price\":23,\"selling_price\":25,\"online_price\":24,\"qty\":5,\"id\":1065}', 'http://localhost:8081/item-prices', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-13 03:57:41', '2026-06-13 03:57:41'),
(404, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 104, '{\"status_id\":1}', '{\"status_id\":5}', 'http://localhost:8081/my-transactions-marked-as-received/118259614', '192.168.65.1', 'PostmanRuntime/7.54.0', NULL, '2026-06-14 06:57:20', '2026-06-14 06:57:20'),
(405, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 103, '{\"status_id\":1}', '{\"status_id\":5}', 'http://localhost:8081/my-transactions-marked-as-received/559851197', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-14 06:59:32', '2026-06-14 06:59:32'),
(406, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 101, '{\"status_id\":1}', '{\"status_id\":5}', 'http://localhost:8081/my-transactions-marked-as-received/1652844903', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-14 07:00:10', '2026-06-14 07:00:10'),
(407, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 102, '{\"status_id\":1}', '{\"status_id\":5}', 'http://localhost:8081/my-transactions-marked-as-received/1131482712', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-14 07:10:57', '2026-06-14 07:10:57'),
(408, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 104, '{\"status_id\":1}', '{\"status_id\":5}', 'http://localhost:8081/my-transactions-marked-as-received/118259614', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-14 07:13:32', '2026-06-14 07:13:32'),
(409, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 103, '{\"status_id\":1}', '{\"status_id\":5}', 'http://localhost:8081/my-transactions-marked-as-received/559851197', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-14 07:15:14', '2026-06-14 07:15:14'),
(410, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 102, '{\"status_id\":1}', '{\"status_id\":5}', 'http://localhost:8081/my-transactions-marked-as-received/1131482712', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-14 07:15:50', '2026-06-14 07:15:50'),
(411, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 101, '{\"status_id\":1}', '{\"status_id\":5}', 'http://localhost:8081/my-transactions-marked-as-received/1652844903', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-14 07:16:02', '2026-06-14 07:16:02'),
(412, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 104, '{\"status_id\":1}', '{\"status_id\":5}', 'http://localhost:8081/my-transactions-marked-as-received/118259614', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-14 07:17:59', '2026-06-14 07:17:59'),
(413, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 103, '{\"status_id\":1}', '{\"status_id\":5}', 'http://localhost:8081/my-transactions-marked-as-received/559851197', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-14 07:18:03', '2026-06-14 07:18:03'),
(414, 'App\\Models\\User', 66, 'created', 'App\\Models\\Transaction', 105, '[]', '{\"store_id\":458047115,\"user_id\":66,\"payment_method_id\":1,\"receive_method_id\":2,\"delivery_charge\":0,\"contact_number\":\"9270079301\",\"reference_id\":\"6a2e8a0543ea2\",\"lat\":\"10.36183929\",\"lng\":\"123.98711395\",\"total\":25,\"grand_total\":25,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":105}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-14 10:01:25', '2026-06-14 10:01:25'),
(415, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 105, '{\"store_id\":null,\"user_id\":null,\"payment_method_id\":null,\"receive_method_id\":null,\"delivery_charge\":null,\"contact_number\":null,\"reference_id\":null,\"lat\":null,\"lng\":null,\"total\":null,\"grand_total\":null,\"status_id\":null,\"receivers_mobile\":null,\"id\":null}', '{\"store_id\":1,\"user_id\":66,\"payment_method_id\":1,\"receive_method_id\":2,\"delivery_charge\":0,\"contact_number\":\"9270079301\",\"reference_id\":\"6a2e8a0543ea2\",\"lat\":\"10.36183929\",\"lng\":\"123.98711395\",\"total\":25,\"grand_total\":25,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":105}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-14 10:01:25', '2026-06-14 10:01:25'),
(416, 'App\\Models\\User', 66, 'created', 'App\\Models\\Order', 92, '[]', '{\"transaction_id\":105,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":4,\"base_price\":23,\"store_price\":56,\"online_price\":25,\"qty\":1,\"id\":92}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-14 10:01:25', '2026-06-14 10:01:25'),
(417, 'App\\Models\\User', 66, 'created', 'App\\Models\\StoreUserMenu', 18, '[]', '{\"store_user_id\":19,\"store_menu_id\":1,\"id\":18}', 'http://localhost:8081/store-user-menus', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-22 23:55:48', '2026-06-22 23:55:48'),
(418, 'App\\Models\\User', 66, 'created', 'App\\Models\\StoreUserMenu', 19, '[]', '{\"store_user_id\":19,\"store_menu_id\":4,\"id\":19}', 'http://localhost:8081/store-user-menus', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-23 00:17:31', '2026-06-23 00:17:31'),
(419, 'App\\Models\\User', 66, 'created', 'App\\Models\\StoreUserMenu', 20, '[]', '{\"store_user_id\":19,\"store_menu_id\":2,\"id\":20}', 'http://localhost:8081/store-user-menus', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-23 00:42:18', '2026-06-23 00:42:18'),
(420, 'App\\Models\\User', 66, 'created', 'App\\Models\\StoreUserMenu', 21, '[]', '{\"store_user_id\":19,\"store_menu_id\":2,\"id\":21}', 'http://localhost:8081/store-user-menus', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-23 00:46:27', '2026-06-23 00:46:27'),
(421, 'App\\Models\\User', 66, 'created', 'App\\Models\\StoreUserMenu', 22, '[]', '{\"store_user_id\":19,\"store_menu_id\":2,\"id\":22}', 'http://localhost:8081/store-user-menus', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-23 00:51:06', '2026-06-23 00:51:06'),
(422, 'App\\Models\\User', 66, 'created', 'App\\Models\\StoreUserMenu', 23, '[]', '{\"store_user_id\":19,\"store_menu_id\":1,\"id\":23}', 'http://localhost:8081/store-user-menus', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-23 01:27:32', '2026-06-23 01:27:32'),
(423, 'App\\Models\\User', 66, 'created', 'App\\Models\\StoreUserMenu', 24, '[]', '{\"store_user_id\":19,\"store_menu_id\":2,\"id\":24}', 'http://localhost:8081/store-user-menus', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-23 01:27:41', '2026-06-23 01:27:41'),
(424, 'App\\Models\\User', 66, 'created', 'App\\Models\\StoreUserMenu', 25, '[]', '{\"store_user_id\":19,\"store_menu_id\":3,\"id\":25}', 'http://localhost:8081/store-user-menus', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-23 01:33:25', '2026-06-23 01:33:25'),
(425, 'App\\Models\\User', 66, 'created', 'App\\Models\\StoreUserMenu', 26, '[]', '{\"store_user_id\":19,\"store_menu_id\":6,\"id\":26}', 'http://localhost:8081/store-user-menus', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-23 01:33:36', '2026-06-23 01:33:36'),
(426, 'App\\Models\\User', 66, 'created', 'App\\Models\\Transaction', 106, '[]', '{\"store_id\":458047115,\"user_id\":66,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":5.2,\"contact_number\":\"9270079301\",\"reference_id\":\"6a3e22bb9e3fb\",\"lat\":\"10.361936811331\",\"lng\":\"123.98734336216\",\"total\":78.41,\"grand_total\":83.61,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":106}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-26 05:56:59', '2026-06-26 05:56:59'),
(427, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 106, '{\"store_id\":null,\"user_id\":null,\"payment_method_id\":null,\"receive_method_id\":null,\"delivery_charge\":null,\"contact_number\":null,\"reference_id\":null,\"lat\":null,\"lng\":null,\"total\":null,\"grand_total\":null,\"status_id\":null,\"receivers_mobile\":null,\"id\":null}', '{\"store_id\":1,\"user_id\":66,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":5.2,\"contact_number\":\"9270079301\",\"reference_id\":\"6a3e22bb9e3fb\",\"lat\":\"10.361936811331\",\"lng\":\"123.98734336216\",\"total\":78.41,\"grand_total\":83.61,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":106}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-26 05:56:59', '2026-06-26 05:56:59'),
(428, 'App\\Models\\User', 66, 'created', 'App\\Models\\Order', 93, '[]', '{\"transaction_id\":106,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":17,\"base_price\":4,\"store_price\":56,\"online_price\":78.41,\"qty\":1,\"id\":93}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-26 05:57:00', '2026-06-26 05:57:00'),
(429, 'App\\Models\\User', 66, 'created', 'App\\Models\\Transaction', 107, '[]', '{\"store_id\":458047115,\"user_id\":66,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.6000000000000005,\"contact_number\":\"9270079301\",\"reference_id\":\"6a3e231069a9b\",\"lat\":\"10.361846865593\",\"lng\":\"123.98711380401\",\"total\":56,\"grand_total\":60.6,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":107}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-26 05:58:24', '2026-06-26 05:58:24'),
(430, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 107, '{\"store_id\":null,\"user_id\":null,\"payment_method_id\":null,\"receive_method_id\":null,\"delivery_charge\":null,\"contact_number\":null,\"reference_id\":null,\"lat\":null,\"lng\":null,\"total\":null,\"grand_total\":null,\"status_id\":null,\"receivers_mobile\":null,\"id\":null}', '{\"store_id\":1,\"user_id\":66,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":4.6000000000000005,\"contact_number\":\"9270079301\",\"reference_id\":\"6a3e231069a9b\",\"lat\":\"10.361846865593\",\"lng\":\"123.98711380401\",\"total\":56,\"grand_total\":60.6,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":107}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-26 05:58:24', '2026-06-26 05:58:24'),
(431, 'App\\Models\\User', 66, 'created', 'App\\Models\\Order', 94, '[]', '{\"transaction_id\":107,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":9,\"base_price\":45,\"store_price\":90,\"online_price\":56,\"qty\":1,\"id\":94}', 'http://localhost:8081/my-transactions', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-26 05:58:24', '2026-06-26 05:58:24'),
(432, 'App\\Models\\User', 66, 'created', 'App\\Models\\Store', 51, '[]', '{\"name\":\"Sample Store 1\",\"mobile\":\"09270079301\",\"desc\":\"This is a sample store 1\",\"latitude\":\"10.361846919999996\",\"longitude\":\"123.98710631999994\",\"user_id\":66,\"is_active\":false,\"id\":51}', 'http://localhost:8081/apply-store', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-27 06:24:53', '2026-06-27 06:24:53'),
(433, 'App\\Models\\User', 66, 'created', 'App\\Models\\Store', 52, '[]', '{\"name\":\"sample store 2\",\"mobile\":\"09270079301\",\"desc\":\"sample store 2\",\"latitude\":\"10.361846919999996\",\"longitude\":\"123.98710631999994\",\"user_id\":66,\"is_active\":false,\"id\":52}', 'http://localhost:8081/apply-store', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-27 10:53:02', '2026-06-27 10:53:02'),
(434, 'App\\Models\\User', 66, 'created', 'App\\Models\\Store', 53, '[]', '{\"name\":\"Sample store 4\",\"mobile\":\"09270079301\",\"desc\":\"Sample store 4\",\"latitude\":\"10.361846920003144\",\"longitude\":\"123.98710632000814\",\"user_id\":66,\"is_active\":false,\"id\":53}', 'http://localhost:8081/apply-store', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-28 01:11:30', '2026-06-28 01:11:30'),
(435, 'App\\Models\\User', 66, 'created', 'App\\Models\\StoreUser', 20, '[]', '{\"store_id\":53,\"email\":\"momshieroce@gmail.com\",\"verification_code\":\"6a41cd0c290c4\",\"is_verified\":false,\"id\":20}', 'http://localhost:8081/invite-user', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-29 00:40:28', '2026-06-29 00:40:28'),
(436, NULL, NULL, 'updated', 'App\\Models\\StoreUser', 20, '{\"verification_code\":\"6a41cd0c290c4\",\"is_verified\":0}', '{\"verification_code\":null,\"is_verified\":1}', 'http://localhost:8081/store-users/verification_code/6a41cd0c290c4', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-29 00:43:30', '2026-06-29 00:43:30'),
(437, 'App\\Models\\User', 66, 'created', 'App\\Models\\StoreUserMenu', 27, '[]', '{\"store_user_id\":20,\"store_menu_id\":6,\"id\":27}', 'http://localhost:8081/store-user-menus', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-29 01:22:48', '2026-06-29 01:22:48'),
(438, 'App\\Models\\User', 66, 'created', 'App\\Models\\StoreUserMenu', 28, '[]', '{\"store_user_id\":20,\"store_menu_id\":1,\"id\":28}', 'http://localhost:8081/store-user-menus', '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-29 01:27:14', '2026-06-29 01:27:14'),
(439, 'App\\Models\\User', 66, 'created', 'App\\Models\\Store', 54, '[]', '{\"name\":\"Sample store 7\",\"mobile\":\"09270079301\",\"desc\":\"Sample store 7\",\"latitude\":\"10.362229\",\"longitude\":\"123.98720700000001\",\"user_id\":66,\"is_active\":false,\"id\":54}', 'https://api.mynearshops.com/apply-store', '112.208.74.132', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-06-30 19:17:09', '2026-06-30 19:17:09'),
(440, 'App\\Models\\User', 66, 'created', 'App\\Models\\Transaction', 108, '[]', '{\"store_id\":458047115,\"user_id\":66,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":5.4,\"contact_number\":\"9270079301\",\"reference_id\":\"6a46101d15c00\",\"lat\":\"10.362214\",\"lng\":\"123.987247\",\"total\":56,\"grand_total\":61.4,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":108}', 'http://localhost:8081/my-transactions', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-02 06:15:41', '2026-07-02 06:15:41'),
(441, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 108, '{\"store_id\":null,\"user_id\":null,\"payment_method_id\":null,\"receive_method_id\":null,\"delivery_charge\":null,\"contact_number\":null,\"reference_id\":null,\"lat\":null,\"lng\":null,\"total\":null,\"grand_total\":null,\"status_id\":null,\"receivers_mobile\":null,\"id\":null}', '{\"store_id\":1,\"user_id\":66,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":5.4,\"contact_number\":\"9270079301\",\"reference_id\":\"6a46101d15c00\",\"lat\":\"10.362214\",\"lng\":\"123.987247\",\"total\":56,\"grand_total\":61.4,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":108}', 'http://localhost:8081/my-transactions', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-02 06:15:41', '2026-07-02 06:15:41'),
(442, 'App\\Models\\User', 66, 'created', 'App\\Models\\Order', 95, '[]', '{\"transaction_id\":108,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":9,\"base_price\":45,\"store_price\":90,\"online_price\":56,\"qty\":1,\"id\":95}', 'http://localhost:8081/my-transactions', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-02 06:15:41', '2026-07-02 06:15:41'),
(443, 'App\\Models\\User', 66, 'created', 'App\\Models\\Transaction', 109, '[]', '{\"store_id\":458047115,\"user_id\":66,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":5.4,\"contact_number\":\"9270079301\",\"reference_id\":\"6a46101e4819e\",\"lat\":\"10.362214\",\"lng\":\"123.987247\",\"total\":56,\"grand_total\":61.4,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":109}', 'http://localhost:8081/my-transactions', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-02 06:15:42', '2026-07-02 06:15:42'),
(444, 'App\\Models\\User', 66, 'updated', 'App\\Models\\Transaction', 109, '{\"store_id\":null,\"user_id\":null,\"payment_method_id\":null,\"receive_method_id\":null,\"delivery_charge\":null,\"contact_number\":null,\"reference_id\":null,\"lat\":null,\"lng\":null,\"total\":null,\"grand_total\":null,\"status_id\":null,\"receivers_mobile\":null,\"id\":null}', '{\"store_id\":1,\"user_id\":66,\"payment_method_id\":1,\"receive_method_id\":1,\"delivery_charge\":5.4,\"contact_number\":\"9270079301\",\"reference_id\":\"6a46101e4819e\",\"lat\":\"10.362214\",\"lng\":\"123.987247\",\"total\":56,\"grand_total\":61.4,\"status_id\":1,\"receivers_mobile\":\"9270079301\",\"id\":109}', 'http://localhost:8081/my-transactions', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-02 06:15:42', '2026-07-02 06:15:42'),
(445, 'App\\Models\\User', 66, 'created', 'App\\Models\\Order', 96, '[]', '{\"transaction_id\":109,\"store_id\":1,\"item_id\":666,\"item_name\":\"aus tempora.\",\"item_description\":\"The quick brown fox jumps over the lazy do.&nbsp;<div><ul><li>Height<\\/li><li>Deliver<\\/li><li>sample<\\/li><\\/ul><div>The quick brown fox jumps <b>over the lazy dog near the river<\\/b><\\/div><\\/div><div>The quick brown fox jumps <u style=\\\"\\\">over the lazy dog near the river<\\/u><\\/div><div>The quick brown fox jumps <i style=\\\"\\\">over the lazy dog near the river<\\/i><u style=\\\"\\\"><\\/u><\\/div><div>&lt;script&gt;&lt;\\/script&gt;<\\/div>\",\"unit_id\":9,\"base_price\":45,\"store_price\":90,\"online_price\":56,\"qty\":1,\"id\":96}', 'http://localhost:8081/my-transactions', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-02 06:15:42', '2026-07-02 06:15:42'),
(446, 'App\\Models\\User', 66, 'created', 'App\\Models\\Store', 55, '[]', '{\"name\":\"Sample store 6\",\"mobile\":\"09270079301\",\"desc\":\"This is a sample store\",\"latitude\":\"10.362214\",\"longitude\":\"123.98724699999998\",\"user_id\":66,\"is_active\":false,\"id\":55}', 'http://localhost:8081/apply-store', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-03 01:45:36', '2026-07-03 01:45:36'),
(447, 'App\\Models\\User', 66, 'created', 'App\\Models\\Store', 56, '[]', '{\"name\":\"Sample store 6\",\"mobile\":\"09270079301\",\"desc\":\"This is a sample store\",\"latitude\":\"10.362214\",\"longitude\":\"123.98724699999998\",\"user_id\":66,\"is_active\":false,\"id\":56}', 'http://localhost:8081/apply-store', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-03 01:46:04', '2026-07-03 01:46:04'),
(448, 'App\\Models\\User', 66, 'created', 'App\\Models\\Store', 57, '[]', '{\"name\":\"Sample store 6\",\"mobile\":\"09270079301\",\"desc\":\"This is a sample store\",\"latitude\":\"10.362214\",\"longitude\":\"123.98724699999998\",\"user_id\":66,\"is_active\":false,\"id\":57}', 'http://localhost:8081/apply-store', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-03 01:53:55', '2026-07-03 01:53:55'),
(449, 'App\\Models\\User', 66, 'created', 'App\\Models\\Item', 1001, '[]', '{\"store_id\":\"458047115\",\"name\":\"asdf\",\"description\":\"sadfsafd\",\"category_id\":\"3\",\"id\":1001}', 'http://localhost:8081/item-create', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-05 09:49:38', '2026-07-05 09:49:38'),
(450, 'App\\Models\\User', 66, 'created', 'App\\Models\\Item', 1002, '[]', '{\"store_id\":\"458047115\",\"name\":\"asdf\",\"description\":\"asdfdsaf\",\"category_id\":\"3\",\"id\":1002}', 'http://localhost:8081/item-create', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-05 09:58:22', '2026-07-05 09:58:22'),
(451, 'App\\Models\\User', 66, 'created', 'App\\Models\\Item', 1003, '[]', '{\"store_id\":1,\"name\":\"sadfsadf\",\"description\":\"sadfdsafsdf\",\"category_id\":\"2\",\"id\":1003}', 'http://localhost:8081/item-create', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-05 10:07:49', '2026-07-05 10:07:49'),
(452, 'App\\Models\\User', 66, 'created', 'App\\Models\\ItemPrice', 1066, '[]', '{\"item_id\":1001,\"color_id\":null,\"size_id\":null,\"unit_id\":3,\"original_price\":1,\"selling_price\":3,\"online_price\":2,\"qty\":\"5\",\"id\":1066}', 'http://localhost:8081/item-prices', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-05 10:11:52', '2026-07-05 10:11:52'),
(453, 'App\\Models\\User', 66, 'created', 'App\\Models\\Item', 1004, '[]', '{\"store_id\":1,\"name\":\"asdf\",\"description\":\"asdfsaf\",\"category_id\":\"2\",\"id\":1004}', 'http://localhost:8081/item-create', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-07 01:20:06', '2026-07-07 01:20:06'),
(454, 'App\\Models\\User', 66, 'created', 'App\\Models\\Item', 1005, '[]', '{\"store_id\":1,\"name\":\"new item with price\",\"description\":\"asdfasf\",\"category_id\":\"5\",\"id\":1005}', 'http://localhost:8081/item-create', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-07 01:28:46', '2026-07-07 01:28:46'),
(455, 'App\\Models\\User', 66, 'created', 'App\\Models\\Item', 1006, '[]', '{\"store_id\":1,\"name\":\"asdf\",\"description\":\"asdf\",\"category_id\":\"2\",\"id\":1006}', 'http://localhost:8081/item-create', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-07 02:11:28', '2026-07-07 02:11:28'),
(456, 'App\\Models\\User', 66, 'created', 'App\\Models\\Item', 1007, '[]', '{\"store_id\":1,\"name\":\"vvv\",\"description\":\"asdfsadf\",\"category_id\":\"4\",\"id\":1007}', 'http://localhost:8081/item-create', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-07 02:20:55', '2026-07-07 02:20:55'),
(457, 'App\\Models\\User', 66, 'created', 'App\\Models\\Item', 1008, '[]', '{\"store_id\":1,\"name\":\"aaaaa\",\"description\":\"sadfasdf\",\"category_id\":\"4\",\"id\":1008}', 'http://localhost:8081/item-create', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-07 02:22:50', '2026-07-07 02:22:50'),
(458, 'App\\Models\\User', 66, 'created', 'App\\Models\\ItemPrice', 1067, '[]', '{\"item_id\":1008,\"color_id\":null,\"size_id\":null,\"unit_id\":3,\"original_price\":1,\"selling_price\":1,\"online_price\":1,\"qty\":\"4\",\"id\":1067}', 'http://localhost:8081/item-create', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-07 02:22:50', '2026-07-07 02:22:50'),
(459, 'App\\Models\\User', 66, 'created', 'App\\Models\\ItemPrice', 1068, '[]', '{\"item_id\":1008,\"color_id\":null,\"size_id\":null,\"unit_id\":4,\"original_price\":1,\"selling_price\":1,\"online_price\":1,\"qty\":4,\"id\":1068}', 'http://localhost:8081/item-update/401440870', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-07 02:52:31', '2026-07-07 02:52:31');
INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(460, 'App\\Models\\User', 66, 'created', 'App\\Models\\ItemPrice', 1069, '[]', '{\"item_id\":1008,\"color_id\":null,\"size_id\":null,\"unit_id\":3,\"original_price\":1,\"selling_price\":1,\"online_price\":1,\"qty\":\"4\",\"id\":1069}', 'http://localhost:8081/item-update/401440870', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-07 02:52:31', '2026-07-07 02:52:31'),
(461, 'App\\Models\\User', 66, 'created', 'App\\Models\\ItemPrice', 1070, '[]', '{\"item_id\":1008,\"color_id\":null,\"size_id\":null,\"unit_id\":4,\"original_price\":1,\"selling_price\":1,\"online_price\":1,\"qty\":4,\"id\":1070}', 'http://localhost:8081/item-update/401440870', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-07 03:46:09', '2026-07-07 03:46:09'),
(462, 'App\\Models\\User', 66, 'created', 'App\\Models\\ItemPrice', 1071, '[]', '{\"item_id\":1008,\"color_id\":null,\"size_id\":null,\"unit_id\":3,\"original_price\":1,\"selling_price\":1,\"online_price\":1,\"qty\":4,\"id\":1071}', 'http://localhost:8081/item-update/401440870', '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', NULL, '2026-07-07 03:46:09', '2026-07-07 03:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `icon`, `desc`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Men\'s Apparel', NULL, NULL, '2024-08-09 21:38:49', '2024-08-09 21:38:49'),
(2, NULL, 'Women\'s Apparel', NULL, NULL, '2024-08-09 21:38:49', '2024-08-09 21:38:49'),
(3, NULL, 'Mobiles & Gadgets', NULL, NULL, '2024-08-09 21:38:49', '2024-08-09 21:38:49'),
(4, NULL, 'Health & Personal Care', NULL, NULL, '2024-08-09 21:38:49', '2024-08-09 21:38:49'),
(5, NULL, 'Makeup & Fragrances', NULL, NULL, '2024-08-09 21:38:49', '2024-08-09 21:38:49'),
(6, NULL, 'Home Entertainment', NULL, NULL, '2024-08-09 21:38:49', '2024-08-09 21:38:49'),
(7, NULL, 'Home Appliances', NULL, NULL, '2024-08-09 21:38:49', '2024-08-09 21:38:49'),
(8, NULL, 'Babies & Kids', NULL, NULL, '2024-08-09 21:38:49', '2024-08-09 21:38:49'),
(9, NULL, 'Laptops & Computers', NULL, NULL, '2024-08-09 21:38:49', '2024-08-09 21:38:49'),
(10, NULL, 'Home & Living', NULL, NULL, '2024-08-09 21:38:49', '2024-08-09 21:38:49'),
(11, NULL, 'Cameras', NULL, NULL, '2024-08-09 21:38:49', '2024-08-09 21:38:49'),
(12, NULL, 'Groceries', NULL, NULL, '2024-08-09 21:38:49', '2024-08-09 21:38:49'),
(13, NULL, 'Toys', NULL, NULL, '2024-08-09 21:38:49', '2024-08-09 21:38:49'),
(14, NULL, 'Games & Collectibles', NULL, NULL, '2024-08-09 21:38:50', '2024-08-09 21:38:50'),
(15, NULL, 'Men\'s Bags & Accessories', NULL, NULL, '2024-08-09 21:38:50', '2024-08-09 21:38:50'),
(16, NULL, 'Women\'s Bags', NULL, NULL, '2024-08-09 21:38:50', '2024-08-09 21:38:50'),
(17, NULL, 'Men\'s Shoes', NULL, NULL, '2024-08-09 21:38:50', '2024-08-09 21:38:50'),
(18, NULL, 'Women Accessories', NULL, NULL, '2024-08-09 21:38:50', '2024-08-09 21:38:50'),
(19, NULL, 'Motors', NULL, NULL, '2024-08-09 21:38:50', '2024-08-09 21:38:50'),
(20, NULL, 'Women\'s Shoes', NULL, NULL, '2024-08-09 21:38:50', '2024-08-09 21:38:50'),
(21, NULL, 'Hobbies & Stationery', NULL, NULL, '2024-08-09 21:38:50', '2024-08-09 21:38:50'),
(22, NULL, 'Audio', NULL, NULL, '2024-08-09 21:38:50', '2024-08-09 21:38:50'),
(23, NULL, 'Gaming', NULL, NULL, '2024-08-09 21:38:50', '2024-08-09 21:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `zipcode` int(11) NOT NULL,
  `province_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `zipcode`, `province_id`) VALUES
(1, 'Bangued', 2800, 1),
(2, 'Boliney', 2815, 1),
(3, 'Bucay', 2805, 1),
(4, 'Bucloc', 2817, 1),
(5, 'Daguioman', 2816, 1),
(6, 'Danglas', 2825, 1),
(7, 'Dolores', 2801, 1),
(8, 'La Paz', 2826, 1),
(9, 'Lacub', 2821, 1),
(10, 'Lagangilang', 2802, 1),
(11, 'Lagayan', 2824, 1),
(12, 'Langiden', 2807, 1),
(13, 'Licuan-Baay', 2819, 1),
(14, 'Luba', 2813, 1),
(15, 'Malibcong', 2820, 1),
(16, 'Manabo', 2810, 1),
(17, 'Peñarrubia', 2804, 1),
(18, 'Pidigan', 2806, 1),
(19, 'Pilar', 2812, 1),
(20, 'Sallapadan', 2818, 1),
(21, 'San Isidro', 2809, 1),
(22, 'San Juan', 2823, 1),
(23, 'San Quintin', 2808, 1),
(24, 'Tayum', 2803, 1),
(25, 'Tineg', 2822, 1),
(26, 'Tubo', 2814, 1),
(27, 'Villaviciosa', 2811, 1),
(28, 'Butuan City', 8600, 2),
(29, 'Buenavista', 8601, 2),
(30, 'Cabadbaran', 8605, 2),
(31, 'Carmen', 8603, 2),
(32, 'Jabonga', 8607, 2),
(33, 'Kitcharao', 8609, 2),
(34, 'Las Nieves', 8610, 2),
(35, 'Magallanes', 8604, 2),
(36, 'Nasipit', 8602, 2),
(37, 'Remedios T. Romualdez', 8611, 2),
(38, 'Santiago', 8608, 2),
(39, 'Tubay', 8606, 2),
(40, 'Bayugan', 8502, 3),
(41, 'Bunawan', 8506, 3),
(42, 'Esperanza', 8513, 3),
(43, 'La Paz', 8508, 3),
(44, 'Loreto', 8507, 3),
(45, 'Prosperidad', 8500, 3),
(46, 'Rosario', 8504, 3),
(47, 'San Francisco', 8501, 3),
(48, 'San Luis', 8511, 3),
(49, 'Santa Josefa', 8512, 3),
(50, 'Sibagat', 8503, 3),
(51, 'Talacogon', 8510, 3),
(52, 'Trento', 8505, 3),
(53, 'Veruela', 8509, 3),
(54, 'Altavas', 5616, 4),
(55, 'Balete', 5614, 4),
(56, 'Banga', 5601, 4),
(57, 'Batan', 5615, 4),
(58, 'Buruanga', 5609, 4),
(59, 'Ibajay', 5613, 4),
(60, 'Kalibo', 5600, 4),
(61, 'Lezo', 5605, 4),
(62, 'Libacao', 5602, 4),
(63, 'Madalag', 5603, 4),
(64, 'Makato', 5611, 4),
(65, 'Malay', 5608, 4),
(66, 'Malinao', 5606, 4),
(67, 'Nabas', 5607, 4),
(68, 'New Washington', 5610, 4),
(69, 'Numancia', 5604, 4),
(70, 'Tangalan', 5612, 4),
(71, 'Legazpi City', 4500, 5),
(72, 'Ligao City', 4504, 5),
(73, 'Tabaco City', 4511, 5),
(74, 'Bacacay', 4509, 5),
(75, 'Camalig', 4502, 5),
(76, 'Daraga', 4501, 5),
(77, 'Guinobatan', 4503, 5),
(78, 'Jovellar', 4515, 5),
(79, 'Libon', 4507, 5),
(80, 'Malilipot', 4510, 5),
(81, 'Malinao', 4512, 5),
(82, 'Manito', 4514, 5),
(83, 'Oas', 4504, 5),
(84, 'Pio Duran', 4516, 5),
(85, 'Polangui', 4506, 5),
(86, 'Rapu-Rapu', 4517, 5),
(87, 'Santo Domingo', 4508, 5),
(88, 'Tiwi', 4513, 5),
(89, 'Anini-y', 5717, 6),
(90, 'Barbaza', 5706, 6),
(91, 'Belison', 5701, 6),
(92, 'Bugasong', 5704, 6),
(93, 'Caluya', 5711, 6),
(94, 'Culasi', 5708, 6),
(95, 'Hamtic', 5715, 6),
(96, 'Laua-an', 5705, 6),
(97, 'Libertad', 5710, 6),
(98, 'Pandan', 5712, 6),
(99, 'Patnongon', 5702, 6),
(100, 'San Jose', 5700, 6),
(101, 'San Remigio', 5714, 6),
(102, 'Sebaste', 5709, 6),
(103, 'Sibalom', 5713, 6),
(104, 'Tibiao', 5707, 6),
(105, 'Tobias Fornier', 5716, 6),
(106, 'Valderrama', 5703, 6),
(107, 'Calanasan', 3814, 7),
(108, 'Conner', 3807, 7),
(109, 'Flora', 3807, 7),
(110, 'Kabugao', 3809, 7),
(111, 'Luna', 3813, 7),
(112, 'Pudtol', 3812, 7),
(113, 'Santa Marcela', 3811, 7),
(114, 'Baler', 3200, 8),
(115, 'Casiguran', 3204, 8),
(116, 'Dilasag', 3205, 8),
(117, 'Dinalungan', 3206, 8),
(118, 'Dingalan', 3207, 8),
(119, 'Dipaculao', 3203, 8),
(120, 'Maria Aurora', 3202, 8),
(121, 'San Luis', 3201, 8),
(122, 'Isabela City', 7300, 9),
(123, 'Akbar', 0, 9),
(124, 'Al-Barka', 0, 9),
(125, 'Hadji Mohammad Ajul', 0, 9),
(126, 'Hadji Muhtamad', 0, 9),
(127, 'Lamitan', 7302, 9),
(128, 'Lantawan', 7301, 9),
(129, 'Maluso', 7303, 9),
(130, 'Sumisip', 7305, 9),
(131, 'Tabuan-Lasa', 0, 9),
(132, 'Tipo-Tipo', 7304, 9),
(133, 'Tuburan', 7306, 9),
(134, 'Ungkaya Pukan', 0, 9),
(135, 'Balanga City', 2100, 10),
(136, 'Abucay', 2114, 10),
(137, 'Bagac', 2107, 10),
(138, 'Dinalupihan', 2110, 10),
(139, 'Hermosa', 2111, 10),
(140, 'Limay', 2103, 10),
(141, 'Mariveles', 2105, 10),
(142, 'Morong', 2108, 10),
(143, 'Orani', 2112, 10),
(144, 'Orion', 2102, 10),
(145, 'Pilar', 2101, 10),
(146, 'Samal', 2113, 10),
(147, 'Basco', 3900, 11),
(148, 'Itbayat', 3905, 11),
(149, 'Ivana', 3902, 11),
(150, 'Mahatao', 3901, 11),
(151, 'Sabtang', 3904, 11),
(152, 'Uyugan', 3903, 11),
(153, 'Batangas City', 4200, 12),
(154, 'Lipa City', 4217, 12),
(155, 'Tanauan City', 4232, 12),
(156, 'Agoncillo', 4211, 12),
(157, 'Alitagtag', 4205, 12),
(158, 'Balayan', 4213, 12),
(159, 'Balete', 4219, 12),
(160, 'Bauan', 4201, 12),
(161, 'Calaca', 4212, 12),
(162, 'Calatagan', 4215, 12),
(163, 'Cuenca', 4222, 12),
(164, 'Ibaan', 4230, 12),
(165, 'Laurel', 4221, 12),
(166, 'Lemery', 4209, 12),
(167, 'Lian', 4216, 12),
(168, 'Lobo', 4229, 12),
(169, 'Mabini', 4202, 12),
(170, 'Malvar', 4233, 12),
(171, 'Mataas na Kahoy', 4223, 12),
(172, 'Nasugbu', 4231, 12),
(173, 'Padre Garcia', 4224, 12),
(174, 'Rosario', 4225, 12),
(175, 'San Jose', 4227, 12),
(176, 'San Juan', 4226, 12),
(177, 'San Luis', 4210, 12),
(178, 'San Nicolas', 4207, 12),
(179, 'San Pascual', 4204, 12),
(180, 'Santa Teresita', 4206, 12),
(181, 'Santo Tomas', 4234, 12),
(182, 'Taal', 4208, 12),
(183, 'Talisay', 4220, 12),
(184, 'Taysan', 4228, 12),
(185, 'Tingloy', 4203, 12),
(186, 'Tuy', 4214, 12),
(187, 'Baguio City', 2600, 13),
(188, 'Atok', 2612, 13),
(189, 'Bakun', 2610, 13),
(190, 'Bokod', 2605, 13),
(191, 'Buguias', 2607, 13),
(192, 'Itogon', 2604, 13),
(193, 'Kabayan', 2606, 13),
(194, 'Kapangan', 2613, 13),
(195, 'Kibungan', 2611, 13),
(196, 'La Trinidad', 2601, 13),
(197, 'Mankayan', 2608, 13),
(198, 'Sablan', 2614, 13),
(199, 'Tuba', 2603, 13),
(200, 'Tublay', 2615, 13),
(201, 'Almeria', 6544, 14),
(202, 'Biliran', 6549, 14),
(203, 'Cabucgayan', 6550, 14),
(204, 'Caibiran', 6548, 14),
(205, 'Culaba', 6547, 14),
(206, 'Kawayan', 6545, 14),
(207, 'Maripipi', 6546, 14),
(208, 'Naval', 6543, 14),
(209, 'Tagbilaran City', 6300, 15),
(210, 'Alburquerque', 6302, 15),
(211, 'Alicia', 6314, 15),
(212, 'Anda', 6311, 15),
(213, 'Antequera', 6335, 15),
(214, 'Baclayon', 6301, 15),
(215, 'Balilihan', 6342, 15),
(216, 'Batuan', 6318, 15),
(217, 'Bien Unido', 6326, 15),
(218, 'Bilar', 6317, 15),
(219, 'Buenavista', 6333, 15),
(220, 'Calape', 6328, 15),
(221, 'Candijay', 6312, 15),
(222, 'Carmen', 6319, 15),
(223, 'Catigbian', 6343, 15),
(224, 'Clarin', 6330, 15),
(225, 'Corella', 6337, 15),
(226, 'Cortes', 6341, 15),
(227, 'Dagohoy', 6322, 15),
(228, 'Danao', 6344, 15),
(229, 'Dauis', 6339, 15),
(230, 'Dimiao', 6305, 15),
(231, 'Duero', 6309, 15),
(232, 'Garcia Hernandez', 6307, 15),
(233, 'Getafe', 6334, 15),
(234, 'Guindulman', 6310, 15),
(235, 'Inabanga', 6332, 15),
(236, 'Jagna', 6308, 15),
(237, 'Lila', 6304, 15),
(238, 'Loay', 6303, 15),
(239, 'Loboc', 6316, 15),
(240, 'Loon', 6327, 15),
(241, 'Mabini', 6313, 15),
(242, 'Maribojoc', 6336, 15),
(243, 'Panglao', 6340, 15),
(244, 'Pilar', 6321, 15),
(245, 'President Carlos P. Garcia', 6346, 15),
(246, 'Sagbayan', 6331, 15),
(247, 'San Isidro', 6345, 15),
(248, 'San Miguel', 6323, 15),
(249, 'Sevilla', 6347, 15),
(250, 'Sierra Bullones', 6320, 15),
(251, 'Sikatuna', 6338, 15),
(252, 'Talibon', 6325, 15),
(253, 'Trinidad', 6324, 15),
(254, 'Tubigon', 6329, 15),
(255, 'Ubay', 6315, 15),
(256, 'Valencia', 6306, 15),
(257, 'Malaybalay City', 8700, 16),
(258, 'Valencia City', 8709, 16),
(259, 'Baungon', 8707, 16),
(260, 'Cabanglasan', 8723, 16),
(261, 'Damulog', 8721, 16),
(262, 'Dangcagan', 8719, 16),
(263, 'Don Carlos', 8712, 16),
(264, 'Impasug-ong', 8702, 16),
(265, 'Kadingilan', 8713, 16),
(266, 'Kalilangan', 8718, 16),
(267, 'Kibawe', 8720, 16),
(268, 'Kitaotao', 8716, 16),
(269, 'Lantapan', 8722, 16),
(270, 'Libona', 8706, 16),
(271, 'Malitbog', 8704, 16),
(272, 'Manolo Fortich', 8703, 16),
(273, 'Maramag', 8714, 16),
(274, 'Pangantucan', 8717, 16),
(275, 'Quezon', 8715, 16),
(276, 'San Fernando', 8711, 16),
(277, 'Sumilao', 8701, 16),
(278, 'Talakag', 8708, 16),
(279, 'Malolos City', 3000, 17),
(280, 'Meycauayan City', 3020, 17),
(281, 'San Jose del Monte City', 3023, 17),
(282, 'Angat', 3012, 17),
(283, 'Balagtas', 3016, 17),
(284, 'Baliuag', 3006, 17),
(285, 'Bocaue', 3018, 17),
(286, 'Bulacan', 3017, 17),
(287, 'Bustos', 3007, 17),
(288, 'Calumpit', 3003, 17),
(289, 'Doña Remedios Trinidad', 3009, 17),
(290, 'Guiguinto', 3015, 17),
(291, 'Hagonoy', 3002, 17),
(292, 'Marilao', 3019, 17),
(293, 'Norzagaray', 3013, 17),
(294, 'Obando', 3021, 17),
(295, 'Pandi', 3014, 17),
(296, 'Paombong', 3001, 17),
(297, 'Plaridel', 3004, 17),
(298, 'Pulilan', 3005, 17),
(299, 'San Ildefonso', 3010, 17),
(300, 'San Miguel', 3011, 17),
(301, 'San Rafael', 3008, 17),
(302, 'Santa Maria', 3020, 17),
(303, 'Tuguegarao City', 3500, 18),
(304, 'Abulug', 3517, 18),
(305, 'Alcala', 3506, 18),
(306, 'Allacapan', 3523, 18),
(307, 'Amulung', 3505, 18),
(308, 'Aparri', 3515, 18),
(309, 'Baggao', 3506, 18),
(310, 'Ballesteros', 3516, 18),
(311, 'Buguey', 3511, 18),
(312, 'Calayan', 3520, 18),
(313, 'Camalaniugan', 3510, 18),
(314, 'Claveria', 3519, 18),
(315, 'Enrile', 3501, 18),
(316, 'Gattaran', 3508, 18),
(317, 'Gonzaga', 3511, 18),
(318, 'Iguig', 3504, 18),
(319, 'Lal-lo', 3509, 18),
(320, 'Lasam', 3524, 18),
(321, 'Pamplona', 3522, 18),
(322, 'Peñablanca', 3502, 18),
(323, 'Piat', 3527, 18),
(324, 'Rizal', 3526, 18),
(325, 'Sanchez-Mira', 3518, 18),
(326, 'Santa Ana', 3514, 18),
(327, 'Santa Praxedes', 3521, 18),
(328, 'Santa Teresita', 3512, 18),
(329, 'Santo Niño', 3525, 18),
(330, 'Solana', 3503, 18),
(331, 'Tuao', 3528, 18),
(332, 'Basud', 4608, 19),
(333, 'Capalonga', 4606, 19),
(334, 'Daet', 4600, 19),
(335, 'Jose Panganiban', 4606, 19),
(336, 'Labo', 4604, 19),
(337, 'Mercedes', 4601, 19),
(338, 'Paracale', 4605, 19),
(339, 'San Lorenzo Ruiz', 0, 19),
(340, 'San Vicente', 4609, 19),
(341, 'Santa Elena', 4611, 19),
(342, 'Talisay', 4602, 19),
(343, 'Vinzons', 4603, 19),
(344, 'Iriga City', 4431, 20),
(345, 'Naga City', 4400, 20),
(346, 'Baao', 4432, 20),
(347, 'Balatan', 4436, 20),
(348, 'Bato', 4435, 20),
(349, 'Bombon', 4404, 20),
(350, 'Buhi', 4433, 20),
(351, 'Bula', 4430, 20),
(352, 'Cabusao', 4406, 20),
(353, 'Calabanga', 4405, 20),
(354, 'Camaligan', 4401, 20),
(355, 'Canaman', 4402, 20),
(356, 'Caramoan', 4429, 20),
(357, 'Del Gallego', 4411, 20),
(358, 'Gainza', 4412, 20),
(359, 'Garchitorena', 4428, 20),
(360, 'Goa', 4422, 20),
(361, 'Lagonoy', 4425, 20),
(362, 'Libmanan', 4407, 20),
(363, 'Lupi', 4409, 20),
(364, 'Magarao', 4403, 20),
(365, 'Milaor', 4413, 20),
(366, 'Minalabac', 4414, 20),
(367, 'Nabua', 4434, 20),
(368, 'Ocampo', 4419, 20),
(369, 'Pamplona', 4416, 20),
(370, 'Pasacao', 4417, 20),
(371, 'Pili', 4418, 20),
(372, 'Presentacion', 4424, 20),
(373, 'Ragay', 4410, 20),
(374, 'Sagñay', 4421, 20),
(375, 'San Fernando', 4415, 20),
(376, 'San Jose', 4423, 20),
(377, 'Sipocot', 4408, 20),
(378, 'Siruma', 4427, 20),
(379, 'Tigaon', 4420, 20),
(380, 'Tinambac', 4426, 20),
(381, 'Catarman', 9104, 21),
(382, 'Guinsiliban', 9102, 21),
(383, 'Mahinog', 9101, 21),
(384, 'Mambajao', 9100, 21),
(385, 'Sagay', 9103, 21),
(386, 'Roxas City', 5800, 22),
(387, 'Cuartero', 5811, 22),
(388, 'Dao', 5810, 22),
(389, 'Dumalag', 5813, 22),
(390, 'Dumarao', 5812, 22),
(391, 'Ivisan', 5805, 22),
(392, 'Jamindan', 5808, 22),
(393, 'Ma-ayon', 5809, 22),
(394, 'Mambusao', 5807, 22),
(395, 'Panay', 5801, 22),
(396, 'Panitan', 5815, 22),
(397, 'Pilar', 5804, 22),
(398, 'Pontevedra', 5802, 22),
(399, 'President Roxas', 5803, 22),
(400, 'Sapi-an', 5816, 22),
(401, 'Sigma', 0, 22),
(402, 'Tapaz', 5814, 22),
(403, 'Bagamanoc', 4807, 23),
(404, 'Baras', 4803, 23),
(405, 'Bato', 4801, 23),
(406, 'Caramoran', 4808, 23),
(407, 'Gigmoto', 4804, 23),
(408, 'Pandan', 4809, 23),
(409, 'Panganiban', 4806, 23),
(410, 'San Andres', 4810, 23),
(411, 'San Miguel', 4802, 23),
(412, 'Viga', 4805, 23),
(413, 'Virac', 4800, 23),
(414, 'Cavite City', 4100, 24),
(415, 'Dasmariñas City', 4114, 24),
(416, 'Tagaytay City', 4120, 24),
(417, 'Trece Martires City', 4109, 24),
(418, 'Alfonso', 4123, 24),
(419, 'Amadeo', 4119, 24),
(420, 'Bacoor', 4102, 24),
(421, 'Carmona', 4116, 24),
(422, 'General Mariano Alvarez', 4117, 24),
(423, 'General Emilio Aguinaldo', 4124, 24),
(424, 'General Trias', 4107, 24),
(425, 'Imus', 4103, 24),
(426, 'Indang', 4122, 24),
(427, 'Kawit', 4104, 24),
(428, 'Magallanes', 4113, 24),
(429, 'Maragondon', 4112, 24),
(430, 'Mendez', 4121, 24),
(431, 'Naic', 4110, 24),
(432, 'Noveleta', 4105, 24),
(433, 'Rosario', 4106, 24),
(434, 'Silang', 4118, 24),
(435, 'Tanza', 4108, 24),
(436, 'Ternate', 4111, 24),
(437, 'Bogo City', 6010, 25),
(438, 'Cebu City', 6000, 25),
(439, 'Carcar City', 6019, 25),
(440, 'Danao City', 6004, 25),
(441, 'Lapu-Lapu City', 6015, 25),
(442, 'Mandaue City', 6014, 25),
(443, 'Naga City', 6037, 25),
(444, 'Talisay City', 6045, 25),
(445, 'Toledo City', 6038, 25),
(446, 'Alcantara', 6033, 25),
(447, 'Alcoy', 6023, 25),
(448, 'Alegria', 6030, 25),
(449, 'Aloguinsan', 6040, 25),
(450, 'Argao', 6021, 25),
(451, 'Asturias', 6042, 25),
(452, 'Badian', 6031, 25),
(453, 'Balamban', 6041, 25),
(454, 'Bantayan', 6042, 25),
(455, 'Barili', 6036, 25),
(456, 'Boljoon', 6010, 25),
(457, 'Borbon', 6008, 25),
(458, 'Carmen', 6005, 25),
(459, 'Catmon', 6006, 25),
(460, 'Compostela', 6003, 25),
(461, 'Consolacion', 6001, 25),
(462, 'Cordoba', 6017, 25),
(463, 'Daanbantayan', 6013, 25),
(464, 'Dalaguete', 6022, 25),
(465, 'Dumanjug', 6035, 25),
(466, 'Ginatilan', 6026, 25),
(467, 'Liloan', 6002, 25),
(468, 'Madridejos', 6053, 25),
(469, 'Malabuyoc', 6029, 25),
(470, 'Medellin', 6012, 25),
(471, 'Minglanilla', 6046, 25),
(472, 'Moalboal', 6032, 25),
(473, 'Oslob', 6025, 25),
(474, 'Pilar', 6048, 25),
(475, 'Pinamungahan', 6039, 25),
(476, 'Poro', 6049, 25),
(477, 'Ronda', 6034, 25),
(478, 'Samboan', 6027, 25),
(479, 'San Fernando', 6018, 25),
(480, 'San Francisco', 6050, 25),
(481, 'San Remigio', 6011, 25),
(482, 'Santa Fe', 6047, 25),
(483, 'Santander', 6026, 25),
(484, 'Sibonga', 6020, 25),
(485, 'Sogod', 6007, 25),
(486, 'Tabogon', 6009, 25),
(487, 'Tabuelan', 6044, 25),
(488, 'Tuburan', 6043, 25),
(489, 'Tudela', 6051, 25),
(490, 'Compostela', 6003, 26),
(491, 'Laak', 8810, 26),
(492, 'Mabini', 8807, 26),
(493, 'Maco', 8806, 26),
(494, 'Maragusan', 8808, 26),
(495, 'Mawab', 8802, 26),
(496, 'Monkayo', 8805, 26),
(497, 'Montevista', 8801, 26),
(498, 'Nabunturan', 8800, 26),
(499, 'New Bataan', 8804, 26),
(500, 'Pantukan', 8809, 26),
(501, 'Kidapawan City', 9400, 27),
(502, 'Alamada', 9413, 27),
(503, 'Aleosan', 9415, 27),
(504, 'Antipas', 9414, 27),
(505, 'Arakan', 9417, 27),
(506, 'Banisilan', 9416, 27),
(507, 'Carmen', 9408, 27),
(508, 'Kabacan', 9407, 27),
(509, 'Libungan', 9411, 27),
(510, 'M\'lang', 9402, 27),
(511, 'Magpet', 9404, 27),
(512, 'Makilala', 9401, 27),
(513, 'Matalam', 9406, 27),
(514, 'Midsayap', 9410, 27),
(515, 'Pigkawayan', 9412, 27),
(516, 'Pikit', 9409, 27),
(517, 'President Roxas', 9405, 27),
(518, 'Tulunan', 9403, 27),
(519, 'Panabo City', 8105, 28),
(520, 'Island Garden City of Samal', 0, 28),
(521, 'Tagum City', 8100, 28),
(522, 'Asuncion', 8102, 28),
(523, 'Braulio E. Dujali', 0, 28),
(524, 'Carmen', 8101, 28),
(525, 'Kapalong', 8113, 28),
(526, 'New Corella', 8104, 28),
(527, 'San Isidro', 8209, 28),
(528, 'Santo Tomas', 8112, 28),
(529, 'Talaingod', 0, 28),
(530, 'Davao City', 8000, 29),
(531, 'Digos City', 8002, 29),
(532, 'Bansalan', 8005, 29),
(533, 'Don Marcelino', 8013, 29),
(534, 'Hagonoy', 8006, 29),
(535, 'Jose Abad Santos', 8014, 29),
(536, 'Kiblawan', 8008, 29),
(537, 'Magsaysay', 8004, 29),
(538, 'Malalag', 8010, 29),
(539, 'Malita', 8012, 29),
(540, 'Matanao', 8003, 29),
(541, 'Padada', 8007, 29),
(542, 'Santa Cruz', 8001, 29),
(543, 'Santa Maria', 8011, 29),
(544, 'Sarangani', 8015, 29),
(545, 'Sulop', 0, 29),
(546, 'Mati City', 8200, 30),
(547, 'Baganga', 8204, 30),
(548, 'Banaybanay', 8208, 30),
(549, 'Boston', 8206, 30),
(550, 'Caraga', 8203, 30),
(551, 'Cateel', 8205, 30),
(552, 'Governor Generoso', 8210, 30),
(553, 'Lupon', 8207, 30),
(554, 'Manay', 8202, 30),
(555, 'San Isidro', 8209, 30),
(556, 'Tarragona', 8201, 30),
(557, 'Arteche', 6822, 31),
(558, 'Balangiga', 6812, 31),
(559, 'Balangkayan', 6801, 31),
(560, 'Borongan', 6800, 31),
(561, 'Can-avid', 6806, 31),
(562, 'Dolores', 6817, 31),
(563, 'General MacArthur', 6805, 31),
(564, 'Giporlos', 6811, 31),
(565, 'Guiuan', 6809, 31),
(566, 'Hernani', 6804, 31),
(567, 'Jipapad', 6819, 31),
(568, 'Lawaan', 6813, 31),
(569, 'Llorente', 6803, 31),
(570, 'Maslog', 6820, 31),
(571, 'Maydolong', 6802, 31),
(572, 'Mercedes', 6808, 31),
(573, 'Oras', 6818, 31),
(574, 'Quinapondan', 6810, 31),
(575, 'Salcedo', 6807, 31),
(576, 'San Julian', 6814, 31),
(577, 'San Policarpo', 6821, 31),
(578, 'Sulat', 6815, 31),
(579, 'Taft', 6816, 31),
(580, 'Buenavista', 5044, 32),
(581, 'Jordan', 5045, 32),
(582, 'Nueva Valencia', 5046, 32),
(583, 'San Lorenzo', 0, 32),
(584, 'Sibunag', 0, 32),
(585, 'Aguinaldo', 3606, 33),
(586, 'Alfonso Lista', 0, 33),
(587, 'Asipulo', 3610, 33),
(588, 'Banaue', 3601, 33),
(589, 'Hingyon', 3607, 33),
(590, 'Hungduan', 3603, 33),
(591, 'Kiangan', 3604, 33),
(592, 'Lagawe', 3600, 33),
(593, 'Lamut', 3605, 33),
(594, 'Mayoyao', 3602, 33),
(595, 'Tinoc', 3609, 33),
(596, 'Batac City', 2906, 34),
(597, 'Laoag City', 2900, 34),
(598, 'Adams', 2922, 34),
(599, 'Bacarra', 2916, 34),
(600, 'Badoc', 2904, 34),
(601, 'Bangui', 2920, 34),
(602, 'Banna', 0, 34),
(603, 'Burgos', 2918, 34),
(604, 'Carasi', 2911, 34),
(605, 'Currimao', 2903, 34),
(606, 'Dingras', 2913, 34),
(607, 'Dumalneg', 2921, 34),
(608, 'Marcos', 2907, 34),
(609, 'Nueva Era', 2909, 34),
(610, 'Pagudpud', 2919, 34),
(611, 'Paoay', 2902, 34),
(612, 'Pasuquin', 2917, 34),
(613, 'Piddig', 2912, 34),
(614, 'Pinili', 2905, 34),
(615, 'San Nicolas', 2901, 34),
(616, 'Sarrat', 2914, 34),
(617, 'Solsona', 2910, 34),
(618, 'Vintar', 2915, 34),
(619, 'Candon City', 2716, 35),
(620, 'Vigan City', 2700, 35),
(621, 'Alilem', 2716, 35),
(622, 'Banayoyo', 2708, 35),
(623, 'Bantay', 2727, 35),
(624, 'Burgos', 2724, 35),
(625, 'Cabugao', 2732, 35),
(626, 'Caoayan', 2702, 35),
(627, 'Cervantes', 2718, 35),
(628, 'Galimuyod', 2709, 35),
(629, 'Gregorio Del Pilar', 2720, 35),
(630, 'Lidlidda', 2723, 35),
(631, 'Magsingal', 2730, 35),
(632, 'Nagbukel', 2725, 35),
(633, 'Narvacan', 2704, 35),
(634, 'Quirino', 2721, 35),
(635, 'Salcedo', 2711, 35),
(636, 'San Emilio', 2722, 35),
(637, 'San Esteban', 2706, 35),
(638, 'San Ildefonso', 2728, 35),
(639, 'San Juan', 2731, 35),
(640, 'San Vicente', 2726, 35),
(641, 'Santa', 2703, 35),
(642, 'Santa Catalina', 2701, 35),
(643, 'Santa Cruz', 2713, 35),
(644, 'Santa Lucia', 2712, 35),
(645, 'Santa Maria', 2705, 35),
(646, 'Santiago', 2707, 35),
(647, 'Santo Domingo', 2729, 35),
(648, 'Sigay', 2719, 35),
(649, 'Sinait', 2733, 35),
(650, 'Sugpon', 2717, 35),
(651, 'Suyo', 2715, 35),
(652, 'Tagudin', 2714, 35),
(653, 'Iloilo City', 5000, 36),
(654, 'Passi City', 5037, 36),
(655, 'Ajuy', 5012, 36),
(656, 'Alimodian', 5028, 36),
(657, 'Anilao', 5009, 36),
(658, 'Badiangan', 5033, 36),
(659, 'Balasan', 5018, 36),
(660, 'Banate', 5010, 36),
(661, 'Barotac Nuevo', 5007, 36),
(662, 'Barotac Viejo', 5011, 36),
(663, 'Batad', 5016, 36),
(664, 'Bingawan', 5041, 36),
(665, 'Cabatuan', 5031, 36),
(666, 'Calinog', 5040, 36),
(667, 'Carles', 5019, 36),
(668, 'Concepcion', 5013, 36),
(669, 'Dingle', 5035, 36),
(670, 'Dueñas', 5038, 36),
(671, 'Dumangas', 5006, 36),
(672, 'Estancia', 5017, 36),
(673, 'Guimbal', 5022, 36),
(674, 'Igbaras', 5029, 36),
(675, 'Janiuay', 5034, 36),
(676, 'Lambunao', 5042, 36),
(677, 'Leganes', 5003, 36),
(678, 'Lemery', 5043, 36),
(679, 'Leon', 5026, 36),
(680, 'Maasin', 5030, 36),
(681, 'Miagao', 5023, 36),
(682, 'Mina', 5032, 36),
(683, 'New Lucena', 5005, 36),
(684, 'Oton', 5020, 36),
(685, 'Pavia', 5001, 36),
(686, 'Pototan', 5008, 36),
(687, 'San Dionisio', 5015, 36),
(688, 'San Enrique', 5036, 36),
(689, 'San Joaquin', 5024, 36),
(690, 'San Miguel', 5025, 36),
(691, 'San Rafael', 5039, 36),
(692, 'Santa Barbara', 5002, 36),
(693, 'Sara', 5014, 36),
(694, 'Tigbauan', 5021, 36),
(695, 'Tubungan', 5027, 36),
(696, 'Zarraga', 5004, 36),
(697, 'Cauayan City', 3305, 37),
(698, 'Santiago City', 3311, 37),
(699, 'Alicia', 3306, 37),
(700, 'Angadanan', 3307, 37),
(701, 'Aurora', 3316, 37),
(702, 'Benito Soliven', 3331, 37),
(703, 'Burgos', 3322, 37),
(704, 'Cabagan', 3328, 37),
(705, 'Cabatuan', 3315, 37),
(706, 'Cordon', 3312, 37),
(707, 'Delfin Albano', 3326, 37),
(708, 'Dinapigue', 3336, 37),
(709, 'Divilacan', 3335, 37),
(710, 'Echague', 3309, 37),
(711, 'Gamu', 3301, 37),
(712, 'Ilagan', 3300, 37),
(713, 'Jones', 3313, 37),
(714, 'Luna', 3304, 37),
(715, 'Maconacon', 3333, 37),
(716, 'Mallig', 3323, 37),
(717, 'Naguilian', 3302, 37),
(718, 'Palanan', 3334, 37),
(719, 'Quezon', 3324, 37),
(720, 'Quirino', 3321, 37),
(721, 'Ramon', 3319, 37),
(722, 'Reina Mercedes', 3303, 37),
(723, 'Roxas', 3320, 37),
(724, 'San Agustin', 3314, 37),
(725, 'San Guillermo', 3308, 37),
(726, 'San Isidro', 3310, 37),
(727, 'San Manuel', 3317, 37),
(728, 'San Mariano', 3332, 37),
(729, 'San Mateo', 3318, 37),
(730, 'San Pablo', 3329, 37),
(731, 'Santa Maria', 3330, 37),
(732, 'Santo Tomas', 3327, 37),
(733, 'Tumauini', 3325, 37),
(734, 'Tabuk', 3800, 38),
(735, 'Balbalan', 3801, 38),
(736, 'Lubuagan', 3802, 38),
(737, 'Pasil', 3803, 38),
(738, 'Pinukpuk', 3806, 38),
(739, 'Rizal', 3808, 38),
(740, 'Tanudan', 3805, 38),
(741, 'Tinglayan', 3804, 38),
(742, 'San Fernando City', 2500, 39),
(743, 'Agoo', 2504, 39),
(744, 'Aringay', 2503, 39),
(745, 'Bacnotan', 2515, 39),
(746, 'Bagulin', 2512, 39),
(747, 'Balaoan', 2517, 39),
(748, 'Bangar', 2519, 39),
(749, 'Bauang', 2501, 39),
(750, 'Burgos', 2510, 39),
(751, 'Caba', 2502, 39),
(752, 'Luna', 2518, 39),
(753, 'Naguilian', 2511, 39),
(754, 'Pugo', 2508, 39),
(755, 'Rosario', 2506, 39),
(756, 'San Gabriel', 2513, 39),
(757, 'San Juan', 2514, 39),
(758, 'Santo Tomas', 2505, 39),
(759, 'Santol', 2516, 39),
(760, 'Sudipen', 2520, 39),
(761, 'Tubao', 2509, 39),
(762, 'Biñan City', 4024, 40),
(763, 'Calamba City', 4027, 40),
(764, 'San Pablo City', 4000, 40),
(765, 'Santa Rosa City', 4026, 40),
(766, 'Alaminos', 4001, 40),
(767, 'Bay', 4033, 40),
(768, 'Cabuyao', 4025, 40),
(769, 'Calauan', 4012, 40),
(770, 'Cavinti', 4013, 40),
(771, 'Famy', 4021, 40),
(772, 'Kalayaan', 4015, 40),
(773, 'Liliw', 4004, 40),
(774, 'Los Baños', 4030, 40),
(775, 'Luisiana', 4032, 40),
(776, 'Lumban', 4014, 40),
(777, 'Mabitac', 4020, 40),
(778, 'Magdalena', 4007, 40),
(779, 'Majayjay', 4005, 40),
(780, 'Nagcarlan', 4002, 40),
(781, 'Paete', 4016, 40),
(782, 'Pagsanjan', 4008, 40),
(783, 'Pakil', 4017, 40),
(784, 'Pangil', 4018, 40),
(785, 'Pila', 4010, 40),
(786, 'Rizal', 4003, 40),
(787, 'San Pedro', 4023, 40),
(788, 'Santa Cruz', 4009, 40),
(789, 'Santa Maria', 4022, 40),
(790, 'Siniloan', 4019, 40),
(791, 'Victoria', 4011, 40),
(792, 'Iligan City', 9200, 41),
(793, 'Bacolod', 9205, 41),
(794, 'Baloi', 9217, 41),
(795, 'Baroy', 9210, 41),
(796, 'Kapatagan', 9214, 41),
(797, 'Kauswagan', 9202, 41),
(798, 'Kolambugan', 9207, 41),
(799, 'Lala', 9211, 41),
(800, 'Linamon', 9201, 41),
(801, 'Magsaysay', 9221, 41),
(802, 'Maigo', 9206, 41),
(803, 'Matungao', 9203, 41),
(804, 'Munai', 9219, 41),
(805, 'Nunungan', 9216, 41),
(806, 'Pantao Ragat', 9208, 41),
(807, 'Pantar', 9218, 41),
(808, 'Poona Piagapo', 9204, 41),
(809, 'Salvador', 9212, 41),
(810, 'Sapad', 9213, 41),
(811, 'Sultan Naga Dimaporo', 0, 41),
(812, 'Tagoloan', 9222, 41),
(813, 'Tangcal', 9220, 41),
(814, 'Tubod', 9209, 41),
(815, 'Marawi City', 0, 42),
(816, 'Bacolod-Kalawi', 0, 42),
(817, 'Balabagan', 0, 42),
(818, 'Balindong', 0, 42),
(819, 'Bayang', 0, 42),
(820, 'Binidayan', 0, 42),
(821, 'Buadiposo-Buntong', 0, 42),
(822, 'Bubong', 0, 42),
(823, 'Bumbaran', 0, 42),
(824, 'Butig', 0, 42),
(825, 'Calanogas', 0, 42),
(826, 'Ditsaan-Ramain', 0, 42),
(827, 'Ganassi', 0, 42),
(828, 'Kapai', 0, 42),
(829, 'Kapatagan', 0, 42),
(830, 'Lumba-Bayabao', 0, 42),
(831, 'Lumbaca-Unayan', 0, 42),
(832, 'Lumbatan', 0, 42),
(833, 'Lumbayanague', 0, 42),
(834, 'Madalum', 0, 42),
(835, 'Madamba', 0, 42),
(836, 'Maguing', 0, 42),
(837, 'Malabang', 0, 42),
(838, 'Marantao', 0, 42),
(839, 'Marogong', 0, 42),
(840, 'Masiu', 0, 42),
(841, 'Mulondo', 0, 42),
(842, 'Pagayawan', 0, 42),
(843, 'Piagapo', 0, 42),
(844, 'Poona Bayabao', 0, 42),
(845, 'Pualas', 0, 42),
(846, 'Saguiaran', 0, 42),
(847, 'Sultan Dumalondong', 0, 42),
(848, 'Picong', 0, 42),
(849, 'Tagoloan II', 0, 42),
(850, 'Tamparan', 0, 42),
(851, 'Taraka', 0, 42),
(852, 'Tubaran', 0, 42),
(853, 'Tugaya', 0, 42),
(854, 'Wao', 0, 42),
(855, 'Ormoc City', 6541, 43),
(856, 'Tacloban City', 6500, 43),
(857, 'Abuyog', 6510, 43),
(858, 'Alangalang', 6517, 43),
(859, 'Albuera', 6542, 43),
(860, 'Babatngon', 6520, 43),
(861, 'Barugo', 6519, 43),
(862, 'Bato', 6525, 43),
(863, 'Baybay', 6521, 43),
(864, 'Burauen', 6516, 43),
(865, 'Calubian', 6534, 43),
(866, 'Capoocan', 6530, 43),
(867, 'Carigara', 6529, 43),
(868, 'Dagami', 6515, 43),
(869, 'Dulag', 6505, 43),
(870, 'Hilongos', 6524, 43),
(871, 'Hindang', 6523, 43),
(872, 'Inopacan', 6522, 43),
(873, 'Isabel', 6539, 43),
(874, 'Jaro', 6527, 43),
(875, 'Javier', 6511, 43),
(876, 'Julita', 6506, 43),
(877, 'Kananga', 6531, 43),
(878, 'La Paz', 6508, 43),
(879, 'Leyte', 6533, 43),
(880, 'Liloan', 0, 43),
(881, 'MacArthur', 6509, 43),
(882, 'Mahaplag', 6512, 43),
(883, 'Matag-ob', 6532, 43),
(884, 'Matalom', 6526, 43),
(885, 'Mayorga', 6507, 43),
(886, 'Merida', 6540, 43),
(887, 'Palo', 6501, 43),
(888, 'Palompon', 6538, 43),
(889, 'Pastrana', 6514, 43),
(890, 'San Isidro', 6535, 43),
(891, 'San Miguel', 6518, 43),
(892, 'Santa Fe', 6513, 43),
(893, 'Sogod', 0, 43),
(894, 'Tabango', 6536, 43),
(895, 'Tabontabon', 6504, 43),
(896, 'Tanauan', 6502, 43),
(897, 'Tolosa', 6503, 43),
(898, 'Tunga', 6528, 43),
(899, 'Villaba', 6537, 43),
(900, 'Cotabato City', 9600, 44),
(901, 'Ampatuan', 9609, 44),
(902, 'Barira', 9614, 44),
(903, 'Buldon', 9615, 44),
(904, 'Buluan', 9616, 44),
(905, 'Datu Abdullah Sangki', 0, 44),
(906, 'Datu Anggal Midtimbang', 0, 44),
(907, 'Datu Blah T. Sinsuat', 9601, 44),
(908, 'Datu Hoffer Ampatuan', 0, 44),
(909, 'Datu Montawal', 0, 44),
(910, 'Datu Odin Sinsuat', 0, 44),
(911, 'Datu Paglas', 9617, 44),
(912, 'Datu Piang', 9607, 44),
(913, 'Datu Salibo', 0, 44),
(914, 'Datu Saudi-Ampatuan', 0, 44),
(915, 'Datu Unsay', 0, 44),
(916, 'General Salipada K. Pendatun', 0, 44),
(917, 'Guindulungan', 0, 44),
(918, 'Kabuntalan', 9606, 44),
(919, 'Mamasapano', 0, 44),
(920, 'Mangudadatu', 0, 44),
(921, 'Matanog', 9613, 44),
(922, 'Northern Kabuntalan', 0, 44),
(923, 'Pagalungan', 9610, 44),
(924, 'Paglat', 0, 44),
(925, 'Pandag', 0, 44),
(926, 'Parang', 9604, 44),
(927, 'Rajah Buayan', 0, 44),
(928, 'Shariff Aguak', 0, 44),
(929, 'Shariff Saydona Mustapha', 0, 44),
(930, 'South Upi', 0, 44),
(931, 'Sultan Kudarat', 9605, 44),
(932, 'Sultan Mastura', 0, 44),
(933, 'Sultan sa Barongis', 0, 44),
(934, 'Talayan', 9612, 44),
(935, 'Talitay', 0, 44),
(936, 'Upi', 9602, 44),
(937, 'Boac', 0, 45),
(938, 'Buenavista', 0, 45),
(939, 'Gasan', 0, 45),
(940, 'Mogpog', 0, 45),
(941, 'Santa Cruz', 0, 45),
(942, 'Torrijos', 0, 45),
(943, 'Masbate City', 5400, 46),
(944, 'Aroroy', 5414, 46),
(945, 'Baleno', 5413, 46),
(946, 'Balud', 5412, 46),
(947, 'Batuan', 5415, 46),
(948, 'Cataingan', 5405, 46),
(949, 'Cawayan', 5405, 46),
(950, 'Claveria', 5419, 46),
(951, 'Dimasalang', 5403, 46),
(952, 'Esperanza', 5407, 46),
(953, 'Mandaon', 5411, 46),
(954, 'Milagros', 5410, 46),
(955, 'Mobo', 5401, 46),
(956, 'Monreal', 5418, 46),
(957, 'Palanas', 5404, 46),
(958, 'Pio V. Corpuz', 5406, 46),
(959, 'Placer', 5408, 46),
(960, 'San Fernando', 5416, 46),
(961, 'San Jacinto', 5417, 46),
(962, 'San Pascual', 5420, 46),
(963, 'Uson', 5402, 46),
(964, 'Caloocan', 0, 47),
(965, 'Las Piñas', 0, 47),
(966, 'Makati', 0, 47),
(967, 'Malabon', 0, 47),
(968, 'Mandaluyong', 0, 47),
(969, 'Manila', 0, 47),
(970, 'Marikina', 0, 47),
(971, 'Muntinlupa', 0, 47),
(972, 'Navotas', 0, 47),
(973, 'Parañaque', 0, 47),
(974, 'Pasay', 0, 47),
(975, 'Pasig', 0, 47),
(976, 'Quezon City', 0, 47),
(977, 'San Juan City', 0, 47),
(978, 'Taguig', 0, 47),
(979, 'Valenzuela City', 0, 47),
(980, 'Pateros', 0, 47),
(981, 'Oroquieta City', 7207, 48),
(982, 'Ozamiz City', 7200, 48),
(983, 'Tangub City', 7214, 48),
(984, 'Aloran', 7206, 48),
(985, 'Baliangao', 7211, 48),
(986, 'Bonifacio', 7215, 48),
(987, 'Calamba', 7210, 48),
(988, 'Clarin', 7201, 48),
(989, 'Concepcion', 7213, 48),
(990, 'Don Victoriano Chiongbian', 0, 48),
(991, 'Jimenez', 7204, 48),
(992, 'Lopez Jaena', 7208, 48),
(993, 'Panaon', 7205, 48),
(994, 'Plaridel', 7209, 48),
(995, 'Sapang Dalaga', 7212, 48),
(996, 'Sinacaban', 7203, 48),
(997, 'Tudela', 7202, 48),
(998, 'Cagayan de Oro', 9000, 49),
(999, 'Gingoog City', 9014, 49),
(1000, 'Alubijid', 9018, 49),
(1001, 'Balingasag', 9005, 49),
(1002, 'Balingoan', 9011, 49),
(1003, 'Binuangan', 9008, 49),
(1004, 'Claveria', 9004, 49),
(1005, 'El Salvador', 9017, 49),
(1006, 'Gitagum', 9020, 49),
(1007, 'Initao', 9022, 49),
(1008, 'Jasaan', 9003, 49),
(1009, 'Kinoguitan', 9010, 49),
(1010, 'Lagonglong', 9006, 49),
(1011, 'Laguindingan', 9019, 49),
(1012, 'Libertad', 9021, 49),
(1013, 'Lugait', 9025, 49),
(1014, 'Magsaysay', 9015, 49),
(1015, 'Manticao', 9024, 49),
(1016, 'Medina', 9013, 49),
(1017, 'Naawan', 9023, 49),
(1018, 'Opol', 9016, 49),
(1019, 'Salay', 9007, 49),
(1020, 'Sugbongcogon', 9009, 49),
(1021, 'Tagoloan', 9001, 49),
(1022, 'Talisayan', 9012, 49),
(1023, 'Villanueva', 9002, 49),
(1024, 'Barlig', 2623, 50),
(1025, 'Bauko', 2621, 50),
(1026, 'Besao', 2618, 50),
(1027, 'Bontoc', 2616, 50),
(1028, 'Natonin', 2624, 50),
(1029, 'Paracelis', 2625, 50),
(1030, 'Sabangan', 2622, 50),
(1031, 'Sadanga', 2617, 50),
(1032, 'Sagada', 2619, 50),
(1033, 'Tadian', 2620, 50),
(1034, 'Bacolod City', 6100, 51),
(1035, 'Bago City', 6101, 51),
(1036, 'Cadiz City', 6121, 51),
(1037, 'Escalante City', 6124, 51),
(1038, 'Himamaylan City', 6108, 51),
(1039, 'Kabankalan City', 6100, 51),
(1040, 'La Carlota City', 6130, 51),
(1041, 'Sagay City', 6122, 51),
(1042, 'San Carlos City', 6127, 51),
(1043, 'Silay City', 6116, 51),
(1044, 'Sipalay City', 6113, 51),
(1045, 'Talisay City', 6115, 51),
(1046, 'Victorias City', 6119, 51),
(1047, 'Binalbagan', 6107, 51),
(1048, 'Calatrava', 6126, 51),
(1049, 'Candoni', 6110, 51),
(1050, 'Cauayan', 0, 51),
(1051, 'Enrique B. Magalona', 6118, 51),
(1052, 'Hinigaran', 6106, 51),
(1053, 'Hinoba-an', 6114, 51),
(1054, 'Ilog', 6109, 51),
(1055, 'Isabela', 6128, 51),
(1056, 'La Castellana', 6131, 51),
(1057, 'Manapla', 6120, 51),
(1058, 'Moises Padilla', 6132, 51),
(1059, 'Murcia', 6129, 51),
(1060, 'Pontevedra', 6105, 51),
(1061, 'Pulupandan', 6102, 51),
(1062, 'Salvador Benedicto', 0, 51),
(1063, 'San Enrique', 6104, 51),
(1064, 'Toboso', 6125, 51),
(1065, 'Valladolid', 6103, 51),
(1066, 'Bais City', 6206, 52),
(1067, 'Bayawan City', 6221, 52),
(1068, 'Canlaon City', 6223, 52),
(1069, 'Guihulngan City', 6214, 52),
(1070, 'Dumaguete City', 6200, 52),
(1071, 'Tanjay City', 6204, 52),
(1072, 'Amlan', 6203, 52),
(1073, 'Ayungon', 6210, 52),
(1074, 'Bacong', 6216, 52),
(1075, 'Basay', 6222, 52),
(1076, 'Bindoy', 6209, 52),
(1077, 'Dauin', 6217, 52),
(1078, 'Jimalalud', 6212, 52),
(1079, 'La Libertad', 6213, 52),
(1080, 'Mabinay', 6208, 52),
(1081, 'Manjuyod', 6208, 52),
(1082, 'Pamplona', 6205, 52),
(1083, 'San Jose', 6202, 52),
(1084, 'Santa Catalina', 6220, 52),
(1085, 'Siaton', 6219, 52),
(1086, 'Sibulan', 6201, 52),
(1087, 'Tayasan', 6211, 52),
(1088, 'Valencia', 6215, 52),
(1089, 'Vallehermoso', 6224, 52),
(1090, 'Zamboanguita', 6218, 52),
(1091, 'Allen', 6405, 53),
(1092, 'Biri', 6410, 53),
(1093, 'Bobon', 6401, 53),
(1094, 'Capul', 6408, 53),
(1095, 'Catarman', 6400, 53),
(1096, 'Catubig', 6418, 53),
(1097, 'Gamay', 6422, 53),
(1098, 'Laoang', 6411, 53),
(1099, 'Lapinig', 6423, 53),
(1100, 'Las Navas', 6420, 53),
(1101, 'Lavezares', 6404, 53),
(1102, 'Lope de Vega', 6403, 53),
(1103, 'Mapanas', 6412, 53),
(1104, 'Mondragon', 6417, 53),
(1105, 'Palapag', 6421, 53),
(1106, 'Pambujan', 6413, 53),
(1107, 'Rosario', 6416, 53),
(1108, 'San Antonio', 6407, 53),
(1109, 'San Isidro', 6409, 53),
(1110, 'San Jose', 6402, 53),
(1111, 'San Roque', 6415, 53),
(1112, 'San Vicente', 6419, 53),
(1113, 'Silvino Lobos', 6414, 53),
(1114, 'Victoria', 6406, 53),
(1115, 'Cabanatuan City', 3100, 54),
(1116, 'Gapan City', 3105, 54),
(1117, 'Science City of Muñoz', 0, 54),
(1118, 'Palayan City', 3132, 54),
(1119, 'San Jose City', 3121, 54),
(1120, 'Aliaga', 3111, 54),
(1121, 'Bongabon', 3128, 54),
(1122, 'Cabiao', 3107, 54),
(1123, 'Carranglan', 3123, 54),
(1124, 'Cuyapo', 3117, 54),
(1125, 'Gabaldon', 3131, 54),
(1126, 'General Mamerto Natividad', 3125, 54),
(1127, 'General Tinio', 3104, 54),
(1128, 'Guimba', 3115, 54),
(1129, 'Jaen', 3109, 54),
(1130, 'Laur', 3129, 54),
(1131, 'Licab', 3112, 54),
(1132, 'Llanera', 3126, 54),
(1133, 'Lupao', 3122, 54),
(1134, 'Nampicuan', 3116, 54),
(1135, 'Pantabangan', 3124, 54),
(1136, 'Peñaranda', 3103, 54),
(1137, 'Quezon', 3113, 54),
(1138, 'Rizal', 3127, 54),
(1139, 'San Antonio', 3108, 54),
(1140, 'San Isidro', 3106, 54),
(1141, 'San Leonardo', 3102, 54),
(1142, 'Santa Rosa', 3101, 54),
(1143, 'Santo Domingo', 3133, 54),
(1144, 'Talavera', 3114, 54),
(1145, 'Talugtug', 3118, 54),
(1146, 'Zaragoza', 3110, 54),
(1147, 'Alfonso Castaneda', 3714, 55),
(1148, 'Ambaguio', 3701, 55),
(1149, 'Aritao', 3704, 55),
(1150, 'Bagabag', 3711, 55),
(1151, 'Bambang', 3702, 55),
(1152, 'Bayombong', 3700, 55),
(1153, 'Diadi', 3712, 55),
(1154, 'Dupax del Norte', 3706, 55),
(1155, 'Dupax del Sur', 3707, 55),
(1156, 'Kasibu', 3703, 55),
(1157, 'Kayapa', 3708, 55),
(1158, 'Quezon', 3713, 55),
(1159, 'Santa Fe', 3705, 55),
(1160, 'Solano', 3709, 55),
(1161, 'Villaverde', 3710, 55),
(1162, 'Abra de Ilog', 5108, 56),
(1163, 'Calintaan', 5102, 56),
(1164, 'Looc', 5111, 56),
(1165, 'Lubang', 5109, 56),
(1166, 'Magsaysay', 5101, 56),
(1167, 'Mamburao', 5106, 56),
(1168, 'Paluan', 5107, 56),
(1169, 'Rizal', 5103, 56),
(1170, 'Sablayan', 5104, 56),
(1171, 'San Jose', 5100, 56),
(1172, 'Santa Cruz', 5105, 56),
(1173, 'Calapan City', 5200, 57),
(1174, 'Baco', 5201, 57),
(1175, 'Bansud', 5210, 57),
(1176, 'Bongabong', 5211, 57),
(1177, 'Bulalacao', 5214, 57),
(1178, 'Gloria', 5209, 57),
(1179, 'Mansalay', 5208, 57),
(1180, 'Naujan', 0, 57),
(1181, 'Pinamalayan', 0, 57),
(1182, 'Pola', 5206, 57),
(1183, 'Puerto Galera', 5203, 57),
(1184, 'Roxas', 5212, 57),
(1185, 'San Teodoro', 5202, 57),
(1186, 'Socorro', 5207, 57),
(1187, 'Victoria', 5205, 57),
(1188, 'Puerto Princesa City', 5300, 58),
(1189, 'Aborlan', 5302, 58),
(1190, 'Agutaya', 5320, 58),
(1191, 'Araceli', 5311, 58),
(1192, 'Balabac', 5307, 58),
(1193, 'Bataraza', 5306, 58),
(1194, 'Brooke\'s Point', 5305, 58),
(1195, 'Busuanga', 5317, 58),
(1196, 'Cagayancillo', 5321, 58),
(1197, 'Coron', 5316, 58),
(1198, 'Culion', 5315, 58),
(1199, 'Cuyo', 5318, 58),
(1200, 'Dumaran', 5310, 58),
(1201, 'El Nido', 5313, 58),
(1202, 'Kalayaan', 5322, 58),
(1203, 'Linapacan', 5314, 58),
(1204, 'Magsaysay', 5319, 58),
(1205, 'Narra', 5303, 58),
(1206, 'Quezon', 5304, 58),
(1207, 'Rizal', 0, 58),
(1208, 'Roxas', 5308, 58),
(1209, 'San Vicente', 5309, 58),
(1210, 'Sofronio Española', 0, 58),
(1211, 'Taytay', 5312, 58),
(1212, 'Angeles City', 2009, 59),
(1213, 'City of San Fernando', 2000, 59),
(1214, 'Apalit', 2016, 59),
(1215, 'Arayat', 2012, 59),
(1216, 'Bacolor', 2001, 59),
(1217, 'Candaba', 2013, 59),
(1218, 'Floridablanca', 2006, 59),
(1219, 'Guagua', 2003, 59),
(1220, 'Lubao', 2005, 59),
(1221, 'Mabalacat', 2010, 59),
(1222, 'Macabebe', 2018, 59),
(1223, 'Magalang', 2011, 59),
(1224, 'Masantol', 2017, 59),
(1225, 'Mexico', 2021, 59),
(1226, 'Minalin', 2019, 59),
(1227, 'Porac', 2008, 59),
(1228, 'San Luis', 2014, 59),
(1229, 'San Simon', 2015, 59),
(1230, 'Santa Ana', 2022, 59),
(1231, 'Santa Rita', 2002, 59),
(1232, 'Santo Tomas', 2020, 59),
(1233, 'Sasmuan', 2004, 59),
(1234, 'Alaminos City', 2404, 60),
(1235, 'Dagupan City', 2400, 60),
(1236, 'San Carlos City', 2420, 60),
(1237, 'Urdaneta City', 2428, 60),
(1238, 'Agno', 2408, 60),
(1239, 'Aguilar', 2415, 60),
(1240, 'Alcala', 2425, 60),
(1241, 'Anda', 2405, 60),
(1242, 'Asingan', 2439, 60),
(1243, 'Balungao', 2442, 60),
(1244, 'Bani', 2407, 60),
(1245, 'Basista', 2422, 60),
(1246, 'Bautista', 2424, 60),
(1247, 'Bayambang', 2423, 60),
(1248, 'Binalonan', 2436, 60),
(1249, 'Binmaley', 2417, 60),
(1250, 'Bolinao', 2406, 60),
(1251, 'Bugallon', 2416, 60),
(1252, 'Burgos', 2410, 60),
(1253, 'Calasiao', 2418, 60),
(1254, 'Dasol', 2411, 60),
(1255, 'Infanta', 2412, 60),
(1256, 'Labrador', 2402, 60),
(1257, 'Laoac', 2437, 60),
(1258, 'Lingayen', 2401, 60),
(1259, 'Mabini', 2409, 60),
(1260, 'Malasiqui', 2421, 60),
(1261, 'Manaoag', 2430, 60),
(1262, 'Mangaldan', 2432, 60),
(1263, 'Mangatarem', 2413, 60),
(1264, 'Mapandan', 2429, 60),
(1265, 'Natividad', 2446, 60),
(1266, 'Pozzorubio', 2435, 60),
(1267, 'Rosales', 2441, 60),
(1268, 'San Fabian', 2433, 60),
(1269, 'San Jacinto', 2431, 60),
(1270, 'San Manuel', 2438, 60),
(1271, 'San Nicolas', 2447, 60),
(1272, 'San Quintin', 2444, 60),
(1273, 'Santa Barbara', 2419, 60),
(1274, 'Santa Maria', 2440, 60),
(1275, 'Santo Tomas', 2426, 60),
(1276, 'Sison', 2434, 60),
(1277, 'Sual', 2403, 60),
(1278, 'Tayug', 2445, 60),
(1279, 'Umingan', 2443, 60),
(1280, 'Urbiztondo', 2414, 60),
(1281, 'Villasis', 2427, 60),
(1282, 'Lucena City', 4301, 61),
(1283, 'Tayabas City', 4327, 61),
(1284, 'Agdangan', 4304, 61),
(1285, 'Alabat', 4333, 61),
(1286, 'Atimonan', 4331, 61),
(1287, 'Buenavista', 4320, 61),
(1288, 'Burdeos', 4340, 61),
(1289, 'Calauag', 4318, 61),
(1290, 'Candelaria', 4323, 61),
(1291, 'Catanauan', 4311, 61),
(1292, 'Dolores', 4326, 61),
(1293, 'General Luna', 4310, 61),
(1294, 'General Nakar', 4338, 61),
(1295, 'Guinayangan', 4319, 61),
(1296, 'Gumaca', 4306, 61),
(1297, 'Infanta', 4336, 61),
(1298, 'Jomalig', 4342, 61),
(1299, 'Lopez', 4316, 61),
(1300, 'Lucban', 4328, 61),
(1301, 'Macalelon', 4309, 61),
(1302, 'Mauban', 4330, 61),
(1303, 'Mulanay', 4312, 61),
(1304, 'Padre Burgos', 4303, 61),
(1305, 'Pagbilao', 4302, 61),
(1306, 'Panukulan', 4337, 61),
(1307, 'Patnanungan', 4341, 61),
(1308, 'Perez', 4334, 61),
(1309, 'Pitogo', 4308, 61),
(1310, 'Plaridel', 4306, 61),
(1311, 'Polillo', 4339, 61),
(1312, 'Quezon', 4332, 61),
(1313, 'Real', 4335, 61),
(1314, 'Sampaloc', 4329, 61),
(1315, 'San Andres', 4314, 61),
(1316, 'San Antonio', 4324, 61),
(1317, 'San Francisco', 4315, 61),
(1318, 'San Narciso', 4313, 61),
(1319, 'Sariaya', 4322, 61),
(1320, 'Tagkawayan', 4321, 61),
(1321, 'Tiaong', 4325, 61),
(1322, 'Unisan', 4305, 61),
(1323, 'Aglipay', 3403, 62),
(1324, 'Cabarroguis', 3400, 62),
(1325, 'Diffun', 3401, 62),
(1326, 'Maddela', 3404, 62),
(1327, 'Nagtipunan', 3405, 62),
(1328, 'Saguday', 3402, 62),
(1329, 'Antipolo City', 1870, 63),
(1330, 'Angono', 1930, 63),
(1331, 'Baras', 1970, 63),
(1332, 'Binangonan', 1940, 63),
(1333, 'Cainta', 1900, 63),
(1334, 'Cardona', 1950, 63),
(1335, 'Jalajala', 1990, 63),
(1336, 'Morong', 1960, 63),
(1337, 'Pililla', 1910, 63),
(1338, 'Rodriguez', 1860, 63),
(1339, 'San Mateo', 1850, 63),
(1340, 'Tanay', 1980, 63),
(1341, 'Taytay', 1920, 63),
(1342, 'Teresa', 0, 63),
(1343, 'Alcantara', 5509, 64),
(1344, 'Banton', 5515, 64),
(1345, 'Cajidiocan', 5512, 64),
(1346, 'Calatrava', 5503, 64),
(1347, 'Concepcion', 5516, 64),
(1348, 'Corcuera', 5514, 64),
(1349, 'Ferrol', 5506, 64),
(1350, 'Looc', 5507, 64),
(1351, 'Magdiwang', 5511, 64),
(1352, 'Odiongan', 5505, 64),
(1353, 'Romblon', 5500, 64),
(1354, 'San Agustin', 5501, 64),
(1355, 'San Andres', 5504, 64),
(1356, 'San Fernando', 5513, 64),
(1357, 'San Jose', 5510, 64),
(1358, 'Santa Fe', 5508, 64),
(1359, 'Santa Maria', 0, 64),
(1360, 'Calbayog City', 6710, 65),
(1361, 'Catbalogan City', 6700, 65),
(1362, 'Almagro', 6724, 65),
(1363, 'Basey', 6720, 65),
(1364, 'Calbiga', 6715, 65),
(1365, 'Daram', 6722, 65),
(1366, 'Gandara', 6706, 65),
(1367, 'Hinabangan', 6713, 65),
(1368, 'Jiabong', 6701, 65),
(1369, 'Marabut', 6721, 65),
(1370, 'Matuguinao', 6708, 65),
(1371, 'Motiong', 6702, 65),
(1372, 'Pagsanghan', 6705, 65),
(1373, 'Paranas', 0, 65),
(1374, 'Pinabacdao', 6716, 65),
(1375, 'San Jorge', 6707, 65),
(1376, 'San Jose De Buan', 6723, 65),
(1377, 'San Sebastian', 6714, 65),
(1378, 'Santa Margarita', 6709, 65),
(1379, 'Santa Rita', 6718, 65),
(1380, 'Santo Niño', 6711, 65),
(1381, 'Tagapul-an', 6712, 65),
(1382, 'Talalora', 6719, 65),
(1383, 'Tarangnan', 6704, 65),
(1384, 'Villareal', 6717, 65),
(1385, 'Zumarraga', 6725, 65),
(1386, 'Alabel', 9501, 66),
(1387, 'Glan', 9517, 66),
(1388, 'Kiamba', 9514, 66),
(1389, 'Maasim', 9502, 66),
(1390, 'Maitum', 9515, 66),
(1391, 'Malapatan', 9516, 66),
(1392, 'Malungon', 9503, 66),
(1393, 'Enrique Villanueva', 6230, 67),
(1394, 'Larena', 6226, 67),
(1395, 'Lazi', 6228, 67),
(1396, 'Maria', 6229, 67),
(1397, 'San Juan', 6227, 67),
(1398, 'Siquijor', 6225, 67),
(1399, 'Sorsogon City', 4700, 68),
(1400, 'Barcelona', 4712, 68),
(1401, 'Bulan', 4706, 68),
(1402, 'Bulusan', 4704, 68),
(1403, 'Casiguran', 4702, 68),
(1404, 'Castilla', 4713, 68),
(1405, 'Donsol', 4715, 68),
(1406, 'Gubat', 4710, 68),
(1407, 'Irosin', 4707, 68),
(1408, 'Juban', 4703, 68),
(1409, 'Magallanes', 4705, 68),
(1410, 'Matnog', 4708, 68),
(1411, 'Pilar', 4714, 68),
(1412, 'Prieto Diaz', 4711, 68),
(1413, 'Santa Magdalena', 4709, 68),
(1414, 'General Santos City', 9500, 69),
(1415, 'Koronadal City', 9506, 69),
(1416, 'Banga', 9511, 69),
(1417, 'Lake Sebu', 0, 69),
(1418, 'Norala', 9508, 69),
(1419, 'Polomolok', 9504, 69),
(1420, 'Santo Niño', 9509, 69),
(1421, 'Surallah', 9512, 69),
(1422, 'T\'boli', 9513, 69),
(1423, 'Tampakan', 0, 69),
(1424, 'Tantangan', 9510, 69),
(1425, 'Tupi', 9505, 69),
(1426, 'Maasin City', 6600, 70),
(1427, 'Anahawan', 6610, 70),
(1428, 'Bontoc', 6604, 70),
(1429, 'Hinunangan', 6608, 70),
(1430, 'Hinundayan', 6609, 70),
(1431, 'Libagon', 6615, 70),
(1432, 'Liloan', 6612, 70),
(1433, 'Limasawa', 0, 70),
(1434, 'Macrohon', 6601, 70),
(1435, 'Malitbog', 6603, 70),
(1436, 'Padre Burgos', 6602, 70),
(1437, 'Pintuyan', 6614, 70),
(1438, 'Saint Bernard', 6616, 70),
(1439, 'San Francisco', 6613, 70),
(1440, 'San Juan', 6611, 70),
(1441, 'San Ricardo', 6617, 70),
(1442, 'Silago', 6607, 70),
(1443, 'Sogod', 6606, 70),
(1444, 'Tomas Oppus', 6605, 70),
(1445, 'Tacurong City', 0, 71),
(1446, 'Bagumbayan', 9810, 71),
(1447, 'Columbio', 9801, 71),
(1448, 'Esperanza', 9806, 71),
(1449, 'Isulan', 9805, 71),
(1450, 'Kalamansig', 9808, 71),
(1451, 'Lambayong', 0, 71),
(1452, 'Lebak', 9807, 71),
(1453, 'Lutayan', 9803, 71),
(1454, 'Palimbang', 9809, 71),
(1455, 'President Quirino', 9804, 71),
(1456, 'Senator Ninoy Aquino', 9811, 71),
(1457, 'Banguingui', 0, 72),
(1458, 'Hadji Panglima Tahil', 0, 72),
(1459, 'Indanan', 7407, 72),
(1460, 'Jolo', 7400, 72),
(1461, 'Kalingalan Caluang', 7416, 72),
(1462, 'Lugus', 7411, 72),
(1463, 'Luuk', 7404, 72),
(1464, 'Maimbung', 7409, 72),
(1465, 'Old Panamao', 7402, 72),
(1466, 'Omar', 0, 72),
(1467, 'Pandami', 0, 72),
(1468, 'Panglima Estino', 7415, 72),
(1469, 'Pangutaran', 7414, 72),
(1470, 'Parang', 7408, 72),
(1471, 'Pata', 7405, 72),
(1472, 'Patikul', 7401, 72),
(1473, 'Siasi', 7412, 72),
(1474, 'Talipao', 7403, 72),
(1475, 'Tapul', 7410, 72),
(1476, 'Surigao City', 8400, 73),
(1477, 'Alegria', 8425, 73),
(1478, 'Bacuag', 8408, 73),
(1479, 'Basilisa', 8413, 73),
(1480, 'Burgos', 8424, 73),
(1481, 'Cagdianao', 8411, 73),
(1482, 'Claver', 8410, 73),
(1483, 'Dapa', 8417, 73),
(1484, 'Del Carmen', 8418, 73),
(1485, 'Dinagat', 8412, 73),
(1486, 'General Luna', 8419, 73),
(1487, 'Gigaquit', 8409, 73),
(1488, 'Libjo', 8414, 73),
(1489, 'Loreto', 8415, 73),
(1490, 'Mainit', 8407, 73),
(1491, 'Malimono', 8402, 73),
(1492, 'Pilar', 8420, 73),
(1493, 'Placer', 8405, 73),
(1494, 'San Benito', 8423, 73),
(1495, 'San Francisco', 8401, 73),
(1496, 'San Isidro', 8421, 73),
(1497, 'San Jose', 8427, 73),
(1498, 'Santa Monica', 8422, 73),
(1499, 'Sison', 8404, 73),
(1500, 'Socorro', 8416, 73),
(1501, 'Tagana-an', 8403, 73),
(1502, 'Tubajon', 8426, 73),
(1503, 'Tubod', 8406, 73),
(1504, 'Bislig City', 8311, 74),
(1505, 'Tandag City', 8300, 74),
(1506, 'Barobo', 8309, 74),
(1507, 'Bayabas', 8303, 74),
(1508, 'Cagwait', 8311, 74),
(1509, 'Cantilan', 8317, 74),
(1510, 'Carmen', 8315, 74),
(1511, 'Carrascal', 8318, 74),
(1512, 'Cortes', 8313, 74),
(1513, 'Hinatuan', 8310, 74),
(1514, 'Lanuza', 8314, 74),
(1515, 'Lianga', 8307, 74),
(1516, 'Lingig', 8312, 74),
(1517, 'Madrid', 8316, 74),
(1518, 'Marihatag', 8306, 74),
(1519, 'San Agustin', 8305, 74),
(1520, 'San Miguel', 8301, 74),
(1521, 'Tagbina', 8308, 74),
(1522, 'Tago', 8302, 74),
(1523, 'Tarlac City', 2300, 75),
(1524, 'Anao', 2310, 75),
(1525, 'Bamban', 2317, 75),
(1526, 'Camiling', 2306, 75),
(1527, 'Capas', 2315, 75),
(1528, 'Concepcion', 2316, 75),
(1529, 'Gerona', 2302, 75),
(1530, 'La Paz', 2314, 75),
(1531, 'Mayantoc', 2304, 75),
(1532, 'Moncada', 2308, 75),
(1533, 'Paniqui', 2307, 75),
(1534, 'Pura', 2312, 75),
(1535, 'Ramos', 2311, 75),
(1536, 'San Clemente', 2305, 75),
(1537, 'San Jose', 0, 75),
(1538, 'San Manuel', 2309, 75),
(1539, 'Santa Ignacia', 2303, 75),
(1540, 'Victoria', 2313, 75),
(1541, 'Bongao', 7500, 76),
(1542, 'Languyan', 7509, 76),
(1543, 'Mapun', 0, 76),
(1544, 'Panglima Sugala', 0, 76),
(1545, 'Sapa-Sapa', 7503, 76),
(1546, 'Sibutu', 0, 76),
(1547, 'Simunul', 7505, 76),
(1548, 'Sitangkai', 7506, 76),
(1549, 'South Ubian', 7504, 76),
(1550, 'Tandubas', 7502, 76),
(1551, 'Turtle Islands', 7507, 76),
(1552, 'Olongapo City', 7507, 77),
(1553, 'Botolan', 2202, 77),
(1554, 'Cabangan', 2203, 77),
(1555, 'Candelaria', 2212, 77),
(1556, 'Castillejos', 2208, 77),
(1557, 'Iba', 2201, 77),
(1558, 'Masinloc', 2211, 77),
(1559, 'Palauig', 2210, 77),
(1560, 'San Antonio', 2206, 77),
(1561, 'San Felipe', 2204, 77),
(1562, 'San Marcelino', 2207, 77),
(1563, 'San Narciso', 2205, 77),
(1564, 'Santa Cruz', 2213, 77),
(1565, 'Subic', 2209, 77),
(1566, 'Dapitan City', 7101, 78),
(1567, 'Dipolog City', 7100, 78),
(1568, 'Bacungan', 0, 78),
(1569, 'Baliguian', 7123, 78),
(1570, 'Godod', 0, 78),
(1571, 'Gutalac', 7108, 78),
(1572, 'Jose Dalman', 7111, 78),
(1573, 'Kalawit', 7124, 78),
(1574, 'Katipunan', 7109, 78),
(1575, 'La Libertad', 7119, 78),
(1576, 'Labason', 7117, 78),
(1577, 'Liloy', 7115, 78),
(1578, 'Manukan', 7110, 78),
(1579, 'Mutia', 7107, 78),
(1580, 'Piñan', 7105, 78),
(1581, 'Polanco', 7106, 78),
(1582, 'President Manuel A. Roxas', 7102, 78),
(1583, 'Rizal', 7104, 78),
(1584, 'Salug', 7114, 78),
(1585, 'Sergio Osmeña Sr.', 7108, 78),
(1586, 'Siayan', 7113, 78),
(1587, 'Sibuco', 7122, 78),
(1588, 'Sibutad', 7103, 78),
(1589, 'Sindangan', 7112, 78),
(1590, 'Siocon', 7120, 78),
(1591, 'Sirawai', 7121, 78),
(1592, 'Tampilisan', 7116, 78),
(1593, 'Pagadian City', 7016, 79),
(1594, 'Zamboanga City', 7000, 79),
(1595, 'Aurora', 7020, 79),
(1596, 'Bayog', 7011, 79),
(1597, 'Dimataling', 7032, 79),
(1598, 'Dinas', 7030, 79),
(1599, 'Dumalinao', 7015, 79),
(1600, 'Dumingag', 7028, 79),
(1601, 'Guipos', 7042, 79),
(1602, 'Josefina', 7027, 79),
(1603, 'Kumalarang', 7013, 79),
(1604, 'Labangan', 7017, 79),
(1605, 'Lakewood', 7014, 79),
(1606, 'Lapuyan', 7037, 79),
(1607, 'Mahayag', 7026, 79),
(1608, 'Margosatubig', 7035, 79),
(1609, 'Midsalip', 7021, 79),
(1610, 'Molave', 7023, 79),
(1611, 'Pitogo', 7033, 79),
(1612, 'Ramon Magsaysay', 7024, 79),
(1613, 'San Miguel', 7029, 79),
(1614, 'San Pablo', 7031, 79),
(1615, 'Sominot', 0, 79),
(1616, 'Tabina', 7034, 79),
(1617, 'Tambulig', 7025, 79),
(1618, 'Tigbao', 7043, 79),
(1619, 'Tukuran', 7019, 79),
(1620, 'Vincenzo A. Sagun', 0, 79),
(1621, 'Alicia', 7040, 80),
(1622, 'Buug', 7009, 80),
(1623, 'Diplahan', 7039, 80),
(1624, 'Imelda', 7007, 80),
(1625, 'Ipil', 7001, 80),
(1626, 'Kabasalan', 7005, 80),
(1627, 'Mabuhay', 7010, 80),
(1628, 'Malangas', 7038, 80),
(1629, 'Naga', 7004, 80),
(1630, 'Olutanga', 7041, 80),
(1631, 'Payao', 7008, 80),
(1632, 'Roseller Lim', 7002, 80),
(1633, 'Siay', 7006, 80),
(1634, 'Talusan', 7012, 80),
(1635, 'Titay', 7003, 80),
(1636, 'Tungawan', 7018, 80),
(1637, 'Danao', 6004, 25);

-- --------------------------------------------------------

--
-- Table structure for table `cloud_tokens`
--

CREATE TABLE `cloud_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) NOT NULL,
  `tokenable_id` int(11) NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'R', 'Hic eaque illum voluptatibus maxime fugiat rem.', '2024-08-09 21:39:00', '2024-08-09 21:39:00'),
(2, 'G', 'Vero et velit soluta sed.', '2024-08-09 21:39:00', '2024-08-09 21:39:00'),
(3, 'B', 'Eveniet unde maiores veniam dolore dolores.', '2024-08-09 21:39:00', '2024-08-09 21:39:00'),
(4, 'OR', 'Assumenda harum incidunt et blanditiis.', '2024-08-09 21:39:00', '2024-08-09 21:39:00'),
(5, 'BL', 'Aliquam ex mollitia ea.', '2024-08-09 21:39:00', '2024-08-09 21:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_menus`
--

CREATE TABLE `dashboard_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_menus`
--

INSERT INTO `dashboard_menus` (`id`, `name`, `icon`, `path`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'fa-solid fa-house', '/', '2024-08-09 21:42:03', '2024-08-09 21:42:03'),
(2, 'Dashboard', 'dashboard', '/dashboard', '2024-08-09 21:42:03', '2024-08-09 21:42:03'),
(3, 'Profile', 'fa-solid fa-user', '/dashboard/profile', '2024-08-09 21:42:03', '2024-08-09 21:42:03'),
(4, 'Transactions', 'fas fa-file-invoice-dollar', '/dashboard/my-transactions', '2024-08-09 21:42:03', '2024-08-09 21:42:03'),
(5, 'Stores', 'fa-solid fa-store', '/dashboard/my-stores', '2024-08-09 21:42:03', '2024-08-09 21:42:03'),
(6, 'Acct', 'fa-solid fa-receipt', '/dashboard/my-accounting', '2024-08-09 21:42:03', '2024-08-09 21:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_charges`
--

CREATE TABLE `delivery_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `base_amount` double(8,2) NOT NULL,
  `per_store_pick_up_amount` double(8,2) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_charges`
--

INSERT INTO `delivery_charges` (`id`, `name`, `base_amount`, `per_store_pick_up_amount`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Motorcycle', 20.00, 10.00, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_franchisee`
--

CREATE TABLE `delivery_franchisee` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `franchisee_id` int(11) NOT NULL,
  `refprovince_id` int(11) NOT NULL,
  `refcitymun_id` int(11) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `franchisees`
--

CREATE TABLE `franchisees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `refprovince_id` int(11) NOT NULL,
  `refcitymun_id` int(11) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` text NOT NULL,
  `path` text NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(255) NOT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `thumbnail`, `path`, `imageable_id`, `imageable_type`, `is_primary`, `name`, `size`, `type`, `created_at`, `updated_at`) VALUES
(1, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 1, 'App\\Models\\Item', 1, 'Autem praesentium voluptatem.', NULL, 'logo', '2024-08-09 21:41:00', '2024-08-09 21:41:00'),
(2, 'images/uploads/5.jpg', 'images/uploads/5.jpg', 23, 'App\\Models\\Item', 1, 'Sint maiores vel.', NULL, 'logo', '2024-08-09 21:41:00', '2024-08-09 21:41:00'),
(3, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 2, 'App\\Models\\Item', 1, 'Occaecati iure.', NULL, 'logo', '2024-08-09 21:41:00', '2024-08-09 21:41:00'),
(4, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 23, 'App\\Models\\Item', 1, 'Adipisci ut.', NULL, 'logo', '2024-08-09 21:41:00', '2024-08-09 21:41:00'),
(5, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 4, 'App\\Models\\Item', 1, 'Eveniet assumenda sit.', NULL, 'logo', '2024-08-09 21:41:00', '2024-08-09 21:41:00'),
(6, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 5, 'App\\Models\\Item', 1, 'Esse laborum.', NULL, 'logo', '2024-08-09 21:41:00', '2024-08-09 21:41:00'),
(7, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 6, 'App\\Models\\Item', 1, 'Sed qui.', NULL, 'logo', '2024-08-09 21:41:00', '2024-08-09 21:41:00'),
(8, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 7, 'App\\Models\\Item', 1, 'Ut neque consequuntur.', NULL, 'logo', '2024-08-09 21:41:00', '2024-08-09 21:41:00'),
(9, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 8, 'App\\Models\\Item', 1, 'Tempore eos.', NULL, 'logo', '2024-08-09 21:41:00', '2024-08-09 21:41:00'),
(10, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 9, 'App\\Models\\Item', 1, 'Eum tempora.', NULL, 'logo', '2024-08-09 21:41:00', '2024-08-09 21:41:00'),
(11, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 10, 'App\\Models\\Item', 1, 'Tenetur ipsa laboriosam.', NULL, 'logo', '2024-08-09 21:41:00', '2024-08-09 21:41:00'),
(12, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 11, 'App\\Models\\Item', 1, 'Omnis nihil.', NULL, 'logo', '2024-08-09 21:41:00', '2024-08-09 21:41:00'),
(13, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 12, 'App\\Models\\Item', 1, 'Facere maiores odio.', NULL, 'logo', '2024-08-09 21:41:00', '2024-08-09 21:41:00'),
(14, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 13, 'App\\Models\\Item', 1, 'Possimus aut dolorum.', NULL, 'logo', '2024-08-09 21:41:00', '2024-08-09 21:41:00'),
(15, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 14, 'App\\Models\\Item', 1, 'Architecto necessitatibus adipisci.', NULL, 'logo', '2024-08-09 21:41:00', '2024-08-09 21:41:00'),
(16, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 15, 'App\\Models\\Item', 1, 'Placeat doloremque.', NULL, 'logo', '2024-08-09 21:41:01', '2024-08-09 21:41:01'),
(17, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 16, 'App\\Models\\Item', 1, 'Exercitationem temporibus consectetur.', NULL, 'logo', '2024-08-09 21:41:01', '2024-08-09 21:41:01'),
(18, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 17, 'App\\Models\\Item', 1, 'Aliquam voluptatem animi.', NULL, 'logo', '2024-08-09 21:41:01', '2024-08-09 21:41:01'),
(19, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 18, 'App\\Models\\Item', 1, 'Sunt vel.', NULL, 'logo', '2024-08-09 21:41:01', '2024-08-09 21:41:01'),
(20, 'images/uploads/26.jpg', 'images/uploads/26.jpg', 19, 'App\\Models\\Item', 1, 'Incidunt veniam.', NULL, 'logo', '2024-08-09 21:41:01', '2024-08-09 21:41:01'),
(21, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 20, 'App\\Models\\Item', 1, 'Ut soluta.', NULL, 'logo', '2024-08-09 21:41:01', '2024-08-09 21:41:01'),
(22, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 21, 'App\\Models\\Item', 1, 'Laboriosam ad ipsam.', NULL, 'logo', '2024-08-09 21:41:01', '2024-08-09 21:41:01'),
(23, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 22, 'App\\Models\\Item', 1, 'Neque rem.', NULL, 'logo', '2024-08-09 21:41:01', '2024-08-09 21:41:01'),
(24, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 23, 'App\\Models\\Item', 1, 'Sint voluptatem.', NULL, 'logo', '2024-08-09 21:41:01', '2024-08-09 21:41:01'),
(25, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 24, 'App\\Models\\Item', 1, 'Laboriosam officia et.', NULL, 'logo', '2024-08-09 21:41:01', '2024-08-09 21:41:01'),
(26, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 25, 'App\\Models\\Item', 1, 'Aut eum ratione.', NULL, 'logo', '2024-08-09 21:41:01', '2024-08-09 21:41:01'),
(27, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 26, 'App\\Models\\Item', 1, 'Eius rerum.', NULL, 'logo', '2024-08-09 21:41:01', '2024-08-09 21:41:01'),
(28, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 27, 'App\\Models\\Item', 1, 'Est dicta.', NULL, 'logo', '2024-08-09 21:41:01', '2024-08-09 21:41:01'),
(29, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 28, 'App\\Models\\Item', 1, 'Occaecati voluptas.', NULL, 'logo', '2024-08-09 21:41:01', '2024-08-09 21:41:01'),
(30, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 29, 'App\\Models\\Item', 1, 'Reprehenderit necessitatibus voluptas.', NULL, 'logo', '2024-08-09 21:41:01', '2024-08-09 21:41:01'),
(31, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 30, 'App\\Models\\Item', 1, 'Ipsa nostrum sit.', NULL, 'logo', '2024-08-09 21:41:01', '2024-08-09 21:41:01'),
(32, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 31, 'App\\Models\\Item', 1, 'Aliquid perspiciatis.', NULL, 'logo', '2024-08-09 21:41:02', '2024-08-09 21:41:02'),
(33, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 32, 'App\\Models\\Item', 1, 'Accusamus occaecati nostrum.', NULL, 'logo', '2024-08-09 21:41:02', '2024-08-09 21:41:02'),
(34, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 33, 'App\\Models\\Item', 1, 'Non sunt.', NULL, 'logo', '2024-08-09 21:41:02', '2024-08-09 21:41:02'),
(35, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 34, 'App\\Models\\Item', 1, 'Modi recusandae.', NULL, 'logo', '2024-08-09 21:41:02', '2024-08-09 21:41:02'),
(36, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 35, 'App\\Models\\Item', 1, 'Tempore suscipit temporibus.', NULL, 'logo', '2024-08-09 21:41:02', '2024-08-09 21:41:02'),
(37, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 36, 'App\\Models\\Item', 1, 'Sint et.', NULL, 'logo', '2024-08-09 21:41:02', '2024-08-09 21:41:02'),
(38, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 37, 'App\\Models\\Item', 1, 'Natus et sed.', NULL, 'logo', '2024-08-09 21:41:02', '2024-08-09 21:41:02'),
(39, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 38, 'App\\Models\\Item', 1, 'Et eos.', NULL, 'logo', '2024-08-09 21:41:02', '2024-08-09 21:41:02'),
(40, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 39, 'App\\Models\\Item', 1, 'Qui sit minima.', NULL, 'logo', '2024-08-09 21:41:02', '2024-08-09 21:41:02'),
(41, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 40, 'App\\Models\\Item', 1, 'Odio perspiciatis.', NULL, 'logo', '2024-08-09 21:41:02', '2024-08-09 21:41:02'),
(42, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 41, 'App\\Models\\Item', 1, 'Consectetur odio et.', NULL, 'logo', '2024-08-09 21:41:02', '2024-08-09 21:41:02'),
(43, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 42, 'App\\Models\\Item', 1, 'Tempora consectetur.', NULL, 'logo', '2024-08-09 21:41:02', '2024-08-09 21:41:02'),
(44, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 43, 'App\\Models\\Item', 1, 'Rem voluptatem magnam.', NULL, 'logo', '2024-08-09 21:41:02', '2024-08-09 21:41:02'),
(45, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 44, 'App\\Models\\Item', 1, 'Quas velit autem.', NULL, 'logo', '2024-08-09 21:41:02', '2024-08-09 21:41:02'),
(46, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 45, 'App\\Models\\Item', 1, 'Soluta qui.', NULL, 'logo', '2024-08-09 21:41:02', '2024-08-09 21:41:02'),
(47, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 46, 'App\\Models\\Item', 1, 'Rem cupiditate aut.', NULL, 'logo', '2024-08-09 21:41:02', '2024-08-09 21:41:02'),
(48, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 47, 'App\\Models\\Item', 1, 'Voluptas est.', NULL, 'logo', '2024-08-09 21:41:02', '2024-08-09 21:41:02'),
(49, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 48, 'App\\Models\\Item', 1, 'Laborum at.', NULL, 'logo', '2024-08-09 21:41:03', '2024-08-09 21:41:03'),
(50, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 49, 'App\\Models\\Item', 1, 'Voluptatem adipisci omnis.', NULL, 'logo', '2024-08-09 21:41:03', '2024-08-09 21:41:03'),
(51, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 50, 'App\\Models\\Item', 1, 'Et officia dolorem.', NULL, 'logo', '2024-08-09 21:41:03', '2024-08-09 21:41:03'),
(52, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 51, 'App\\Models\\Item', 1, 'Vel minus dolores.', NULL, 'logo', '2024-08-09 21:41:03', '2024-08-09 21:41:03'),
(53, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 52, 'App\\Models\\Item', 1, 'Ullam dolor debitis.', NULL, 'logo', '2024-08-09 21:41:03', '2024-08-09 21:41:03'),
(54, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 53, 'App\\Models\\Item', 1, 'Exercitationem ut beatae.', NULL, 'logo', '2024-08-09 21:41:03', '2024-08-09 21:41:03'),
(55, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 54, 'App\\Models\\Item', 1, 'Est dolorem.', NULL, 'logo', '2024-08-09 21:41:03', '2024-08-09 21:41:03'),
(56, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 55, 'App\\Models\\Item', 1, 'Eius est.', NULL, 'logo', '2024-08-09 21:41:03', '2024-08-09 21:41:03'),
(57, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 56, 'App\\Models\\Item', 1, 'Sunt mollitia.', NULL, 'logo', '2024-08-09 21:41:03', '2024-08-09 21:41:03'),
(58, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 57, 'App\\Models\\Item', 1, 'Reiciendis aspernatur.', NULL, 'logo', '2024-08-09 21:41:03', '2024-08-09 21:41:03'),
(59, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 58, 'App\\Models\\Item', 1, 'Non qui.', NULL, 'logo', '2024-08-09 21:41:03', '2024-08-09 21:41:03'),
(60, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 59, 'App\\Models\\Item', 1, 'Iusto molestias est.', NULL, 'logo', '2024-08-09 21:41:03', '2024-08-09 21:41:03'),
(61, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 60, 'App\\Models\\Item', 1, 'Maiores aliquid.', NULL, 'logo', '2024-08-09 21:41:03', '2024-08-09 21:41:03'),
(62, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 61, 'App\\Models\\Item', 1, 'Est non.', NULL, 'logo', '2024-08-09 21:41:03', '2024-08-09 21:41:03'),
(63, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 62, 'App\\Models\\Item', 1, 'Suscipit et.', NULL, 'logo', '2024-08-09 21:41:03', '2024-08-09 21:41:03'),
(64, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 63, 'App\\Models\\Item', 1, 'Exercitationem qui.', NULL, 'logo', '2024-08-09 21:41:03', '2024-08-09 21:41:03'),
(65, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 64, 'App\\Models\\Item', 1, 'Fuga quod iste.', NULL, 'logo', '2024-08-09 21:41:04', '2024-08-09 21:41:04'),
(66, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 65, 'App\\Models\\Item', 1, 'Voluptatibus culpa.', NULL, 'logo', '2024-08-09 21:41:04', '2024-08-09 21:41:04'),
(67, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 66, 'App\\Models\\Item', 1, 'Nulla autem illum.', NULL, 'logo', '2024-08-09 21:41:04', '2024-08-09 21:41:04'),
(68, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 67, 'App\\Models\\Item', 1, 'Amet vitae.', NULL, 'logo', '2024-08-09 21:41:04', '2024-08-09 21:41:04'),
(69, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 68, 'App\\Models\\Item', 1, 'Sint exercitationem omnis.', NULL, 'logo', '2024-08-09 21:41:04', '2024-08-09 21:41:04'),
(70, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 69, 'App\\Models\\Item', 1, 'Velit atque maxime.', NULL, 'logo', '2024-08-09 21:41:04', '2024-08-09 21:41:04'),
(71, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 70, 'App\\Models\\Item', 1, 'Ratione omnis.', NULL, 'logo', '2024-08-09 21:41:04', '2024-08-09 21:41:04'),
(72, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 71, 'App\\Models\\Item', 1, 'Temporibus est provident.', NULL, 'logo', '2024-08-09 21:41:04', '2024-08-09 21:41:04'),
(73, 'images/uploads/5.jpg', 'images/uploads/5.jpg', 72, 'App\\Models\\Item', 1, 'Consequatur hic vel.', NULL, 'logo', '2024-08-09 21:41:04', '2024-08-09 21:41:04'),
(74, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 73, 'App\\Models\\Item', 1, 'Repellat quas fuga.', NULL, 'logo', '2024-08-09 21:41:04', '2024-08-09 21:41:04'),
(75, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 74, 'App\\Models\\Item', 1, 'Voluptates velit iste.', NULL, 'logo', '2024-08-09 21:41:04', '2024-08-09 21:41:04'),
(76, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 75, 'App\\Models\\Item', 1, 'Animi deserunt voluptas.', NULL, 'logo', '2024-08-09 21:41:04', '2024-08-09 21:41:04'),
(77, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 76, 'App\\Models\\Item', 1, 'Iusto blanditiis.', NULL, 'logo', '2024-08-09 21:41:04', '2024-08-09 21:41:04'),
(78, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 77, 'App\\Models\\Item', 1, 'In assumenda.', NULL, 'logo', '2024-08-09 21:41:04', '2024-08-09 21:41:04'),
(79, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 78, 'App\\Models\\Item', 1, 'Repellendus fugit.', NULL, 'logo', '2024-08-09 21:41:04', '2024-08-09 21:41:04'),
(80, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 79, 'App\\Models\\Item', 1, 'Dolorem et.', NULL, 'logo', '2024-08-09 21:41:04', '2024-08-09 21:41:04'),
(81, 'images/uploads/26.jpg', 'images/uploads/26.jpg', 80, 'App\\Models\\Item', 1, 'Atque rem et.', NULL, 'logo', '2024-08-09 21:41:04', '2024-08-09 21:41:04'),
(82, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 81, 'App\\Models\\Item', 1, 'Itaque placeat omnis.', NULL, 'logo', '2024-08-09 21:41:05', '2024-08-09 21:41:05'),
(83, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 82, 'App\\Models\\Item', 1, 'Iure quia.', NULL, 'logo', '2024-08-09 21:41:05', '2024-08-09 21:41:05'),
(84, 'images/uploads/5.jpg', 'images/uploads/5.jpg', 83, 'App\\Models\\Item', 1, 'Sit dolores saepe.', NULL, 'logo', '2024-08-09 21:41:05', '2024-08-09 21:41:05'),
(85, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 84, 'App\\Models\\Item', 1, 'Veniam aperiam quisquam.', NULL, 'logo', '2024-08-09 21:41:05', '2024-08-09 21:41:05'),
(86, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 85, 'App\\Models\\Item', 1, 'Aut voluptate a.', NULL, 'logo', '2024-08-09 21:41:05', '2024-08-09 21:41:05'),
(87, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 86, 'App\\Models\\Item', 1, 'Cumque cupiditate.', NULL, 'logo', '2024-08-09 21:41:05', '2024-08-09 21:41:05'),
(88, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 87, 'App\\Models\\Item', 1, 'Praesentium et quos.', NULL, 'logo', '2024-08-09 21:41:05', '2024-08-09 21:41:05'),
(89, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 88, 'App\\Models\\Item', 1, 'Qui similique aut.', NULL, 'logo', '2024-08-09 21:41:05', '2024-08-09 21:41:05'),
(90, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 89, 'App\\Models\\Item', 1, 'Pariatur suscipit adipisci.', NULL, 'logo', '2024-08-09 21:41:05', '2024-08-09 21:41:05'),
(91, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 90, 'App\\Models\\Item', 1, 'Aspernatur aliquam.', NULL, 'logo', '2024-08-09 21:41:05', '2024-08-09 21:41:05'),
(92, 'images/uploads/26.jpg', 'images/uploads/26.jpg', 91, 'App\\Models\\Item', 1, 'Quia autem.', NULL, 'logo', '2024-08-09 21:41:05', '2024-08-09 21:41:05'),
(93, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 92, 'App\\Models\\Item', 1, 'Quas cupiditate aut.', NULL, 'logo', '2024-08-09 21:41:05', '2024-08-09 21:41:05'),
(94, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 93, 'App\\Models\\Item', 1, 'Consectetur non cumque.', NULL, 'logo', '2024-08-09 21:41:05', '2024-08-09 21:41:05'),
(95, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 94, 'App\\Models\\Item', 1, 'Enim ipsam.', NULL, 'logo', '2024-08-09 21:41:05', '2024-08-09 21:41:05'),
(96, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 95, 'App\\Models\\Item', 1, 'Eaque ab.', NULL, 'logo', '2024-08-09 21:41:05', '2024-08-09 21:41:05'),
(97, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 96, 'App\\Models\\Item', 1, 'Illo ut nihil.', NULL, 'logo', '2024-08-09 21:41:05', '2024-08-09 21:41:05'),
(98, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 97, 'App\\Models\\Item', 1, 'Odit aut.', NULL, 'logo', '2024-08-09 21:41:05', '2024-08-09 21:41:05'),
(99, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 98, 'App\\Models\\Item', 1, 'Rerum nam earum.', NULL, 'logo', '2024-08-09 21:41:06', '2024-08-09 21:41:06'),
(100, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 99, 'App\\Models\\Item', 1, 'Enim sapiente ut.', NULL, 'logo', '2024-08-09 21:41:06', '2024-08-09 21:41:06'),
(101, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 100, 'App\\Models\\Item', 1, 'Est exercitationem.', NULL, 'logo', '2024-08-09 21:41:06', '2024-08-09 21:41:06'),
(102, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 101, 'App\\Models\\Item', 1, 'Consequatur nihil.', NULL, 'logo', '2024-08-09 21:41:06', '2024-08-09 21:41:06'),
(103, 'images/uploads/5.jpg', 'images/uploads/5.jpg', 102, 'App\\Models\\Item', 1, 'Quidem quo.', NULL, 'logo', '2024-08-09 21:41:06', '2024-08-09 21:41:06'),
(104, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 103, 'App\\Models\\Item', 1, 'Iure tempore sit.', NULL, 'logo', '2024-08-09 21:41:06', '2024-08-09 21:41:06'),
(105, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 104, 'App\\Models\\Item', 1, 'Dolores nihil.', NULL, 'logo', '2024-08-09 21:41:06', '2024-08-09 21:41:06'),
(106, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 105, 'App\\Models\\Item', 1, 'Omnis nihil.', NULL, 'logo', '2024-08-09 21:41:06', '2024-08-09 21:41:06'),
(107, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 106, 'App\\Models\\Item', 1, 'A aut.', NULL, 'logo', '2024-08-09 21:41:06', '2024-08-09 21:41:06'),
(108, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 107, 'App\\Models\\Item', 1, 'Quidem et.', NULL, 'logo', '2024-08-09 21:41:06', '2024-08-09 21:41:06'),
(109, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 108, 'App\\Models\\Item', 1, 'Quia voluptas voluptas.', NULL, 'logo', '2024-08-09 21:41:06', '2024-08-09 21:41:06'),
(110, 'images/uploads/26.jpg', 'images/uploads/26.jpg', 109, 'App\\Models\\Item', 1, 'Quo et.', NULL, 'logo', '2024-08-09 21:41:06', '2024-08-09 21:41:06'),
(111, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 110, 'App\\Models\\Item', 1, 'Quibusdam ut id.', NULL, 'logo', '2024-08-09 21:41:06', '2024-08-09 21:41:06'),
(112, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 111, 'App\\Models\\Item', 1, 'Reiciendis id soluta.', NULL, 'logo', '2024-08-09 21:41:06', '2024-08-09 21:41:06'),
(113, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 112, 'App\\Models\\Item', 1, 'Mollitia fugit dolor.', NULL, 'logo', '2024-08-09 21:41:06', '2024-08-09 21:41:06'),
(114, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 113, 'App\\Models\\Item', 1, 'Atque voluptatem quia.', NULL, 'logo', '2024-08-09 21:41:06', '2024-08-09 21:41:06'),
(115, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 114, 'App\\Models\\Item', 1, 'Fugit non eum.', NULL, 'logo', '2024-08-09 21:41:06', '2024-08-09 21:41:06'),
(116, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 115, 'App\\Models\\Item', 1, 'Vitae ea debitis.', NULL, 'logo', '2024-08-09 21:41:07', '2024-08-09 21:41:07'),
(117, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 116, 'App\\Models\\Item', 1, 'Saepe et.', NULL, 'logo', '2024-08-09 21:41:07', '2024-08-09 21:41:07'),
(118, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 117, 'App\\Models\\Item', 1, 'Excepturi incidunt.', NULL, 'logo', '2024-08-09 21:41:07', '2024-08-09 21:41:07'),
(119, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 118, 'App\\Models\\Item', 1, 'Eligendi autem.', NULL, 'logo', '2024-08-09 21:41:07', '2024-08-09 21:41:07'),
(120, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 119, 'App\\Models\\Item', 1, 'Autem rem.', NULL, 'logo', '2024-08-09 21:41:07', '2024-08-09 21:41:07'),
(121, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 120, 'App\\Models\\Item', 1, 'Ullam nihil.', NULL, 'logo', '2024-08-09 21:41:07', '2024-08-09 21:41:07'),
(122, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 121, 'App\\Models\\Item', 1, 'Culpa ullam mollitia.', NULL, 'logo', '2024-08-09 21:41:07', '2024-08-09 21:41:07'),
(123, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 122, 'App\\Models\\Item', 1, 'Error repellat consequuntur.', NULL, 'logo', '2024-08-09 21:41:07', '2024-08-09 21:41:07'),
(124, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 123, 'App\\Models\\Item', 1, 'Voluptate eaque.', NULL, 'logo', '2024-08-09 21:41:07', '2024-08-09 21:41:07'),
(125, 'images/uploads/5.jpg', 'images/uploads/5.jpg', 124, 'App\\Models\\Item', 1, 'Dignissimos qui.', NULL, 'logo', '2024-08-09 21:41:07', '2024-08-09 21:41:07'),
(126, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 125, 'App\\Models\\Item', 1, 'At vel.', NULL, 'logo', '2024-08-09 21:41:07', '2024-08-09 21:41:07'),
(127, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 126, 'App\\Models\\Item', 1, 'Consequatur atque et.', NULL, 'logo', '2024-08-09 21:41:07', '2024-08-09 21:41:07'),
(128, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 127, 'App\\Models\\Item', 1, 'Similique placeat.', NULL, 'logo', '2024-08-09 21:41:07', '2024-08-09 21:41:07'),
(129, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 128, 'App\\Models\\Item', 1, 'Molestiae fugit.', NULL, 'logo', '2024-08-09 21:41:07', '2024-08-09 21:41:07'),
(130, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 129, 'App\\Models\\Item', 1, 'Aut ipsa.', NULL, 'logo', '2024-08-09 21:41:07', '2024-08-09 21:41:07'),
(131, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 130, 'App\\Models\\Item', 1, 'Vitae nisi laborum.', NULL, 'logo', '2024-08-09 21:41:07', '2024-08-09 21:41:07'),
(132, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 131, 'App\\Models\\Item', 1, 'Voluptatibus amet id.', NULL, 'logo', '2024-08-09 21:41:07', '2024-08-09 21:41:07'),
(133, 'images/uploads/5.jpg', 'images/uploads/5.jpg', 132, 'App\\Models\\Item', 1, 'In autem quia.', NULL, 'logo', '2024-08-09 21:41:08', '2024-08-09 21:41:08'),
(134, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 133, 'App\\Models\\Item', 1, 'Aut sapiente ullam.', NULL, 'logo', '2024-08-09 21:41:08', '2024-08-09 21:41:08'),
(135, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 134, 'App\\Models\\Item', 1, 'Quo quo.', NULL, 'logo', '2024-08-09 21:41:08', '2024-08-09 21:41:08'),
(136, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 135, 'App\\Models\\Item', 1, 'Laborum natus accusamus.', NULL, 'logo', '2024-08-09 21:41:08', '2024-08-09 21:41:08'),
(137, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 136, 'App\\Models\\Item', 1, 'Provident voluptatem.', NULL, 'logo', '2024-08-09 21:41:08', '2024-08-09 21:41:08'),
(138, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 137, 'App\\Models\\Item', 1, 'Quam quisquam.', NULL, 'logo', '2024-08-09 21:41:08', '2024-08-09 21:41:08'),
(139, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 138, 'App\\Models\\Item', 1, 'Eos delectus.', NULL, 'logo', '2024-08-09 21:41:08', '2024-08-09 21:41:08'),
(140, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 139, 'App\\Models\\Item', 1, 'Sed ducimus.', NULL, 'logo', '2024-08-09 21:41:08', '2024-08-09 21:41:08'),
(141, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 140, 'App\\Models\\Item', 1, 'Eum quasi.', NULL, 'logo', '2024-08-09 21:41:08', '2024-08-09 21:41:08'),
(142, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 141, 'App\\Models\\Item', 1, 'Voluptatem iusto.', NULL, 'logo', '2024-08-09 21:41:08', '2024-08-09 21:41:08'),
(143, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 142, 'App\\Models\\Item', 1, 'Est quas.', NULL, 'logo', '2024-08-09 21:41:08', '2024-08-09 21:41:08'),
(144, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 143, 'App\\Models\\Item', 1, 'Corporis omnis.', NULL, 'logo', '2024-08-09 21:41:08', '2024-08-09 21:41:08'),
(145, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 144, 'App\\Models\\Item', 1, 'Eaque eveniet.', NULL, 'logo', '2024-08-09 21:41:08', '2024-08-09 21:41:08'),
(146, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 145, 'App\\Models\\Item', 1, 'Ab et accusantium.', NULL, 'logo', '2024-08-09 21:41:08', '2024-08-09 21:41:08'),
(147, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 146, 'App\\Models\\Item', 1, 'Qui recusandae libero.', NULL, 'logo', '2024-08-09 21:41:08', '2024-08-09 21:41:08'),
(148, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 147, 'App\\Models\\Item', 1, 'Molestiae ipsa modi.', NULL, 'logo', '2024-08-09 21:41:08', '2024-08-09 21:41:08'),
(149, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 148, 'App\\Models\\Item', 1, 'Nesciunt a.', NULL, 'logo', '2024-08-09 21:41:09', '2024-08-09 21:41:09'),
(150, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 149, 'App\\Models\\Item', 1, 'Quia perspiciatis expedita.', NULL, 'logo', '2024-08-09 21:41:09', '2024-08-09 21:41:09'),
(151, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 150, 'App\\Models\\Item', 1, 'Iste voluptatem.', NULL, 'logo', '2024-08-09 21:41:09', '2024-08-09 21:41:09'),
(152, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 151, 'App\\Models\\Item', 1, 'Unde velit.', NULL, 'logo', '2024-08-09 21:41:09', '2024-08-09 21:41:09'),
(153, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 152, 'App\\Models\\Item', 1, 'Rem debitis in.', NULL, 'logo', '2024-08-09 21:41:09', '2024-08-09 21:41:09'),
(154, 'images/uploads/5.jpg', 'images/uploads/5.jpg', 153, 'App\\Models\\Item', 1, 'Ad odit aut.', NULL, 'logo', '2024-08-09 21:41:09', '2024-08-09 21:41:09'),
(155, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 154, 'App\\Models\\Item', 1, 'Voluptate consequatur quod.', NULL, 'logo', '2024-08-09 21:41:09', '2024-08-09 21:41:09'),
(156, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 155, 'App\\Models\\Item', 1, 'Quasi numquam.', NULL, 'logo', '2024-08-09 21:41:09', '2024-08-09 21:41:09'),
(157, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 156, 'App\\Models\\Item', 1, 'Corporis ut.', NULL, 'logo', '2024-08-09 21:41:09', '2024-08-09 21:41:09'),
(158, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 157, 'App\\Models\\Item', 1, 'Officiis et.', NULL, 'logo', '2024-08-09 21:41:09', '2024-08-09 21:41:09'),
(159, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 158, 'App\\Models\\Item', 1, 'Nostrum aut quia.', NULL, 'logo', '2024-08-09 21:41:09', '2024-08-09 21:41:09'),
(160, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 159, 'App\\Models\\Item', 1, 'Autem numquam.', NULL, 'logo', '2024-08-09 21:41:09', '2024-08-09 21:41:09'),
(161, 'images/uploads/5.jpg', 'images/uploads/5.jpg', 160, 'App\\Models\\Item', 1, 'Officiis suscipit.', NULL, 'logo', '2024-08-09 21:41:09', '2024-08-09 21:41:09'),
(162, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 161, 'App\\Models\\Item', 1, 'Esse similique sunt.', NULL, 'logo', '2024-08-09 21:41:09', '2024-08-09 21:41:09'),
(163, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 162, 'App\\Models\\Item', 1, 'Excepturi exercitationem aut.', NULL, 'logo', '2024-08-09 21:41:09', '2024-08-09 21:41:09'),
(164, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 163, 'App\\Models\\Item', 1, 'Facere id dolorum.', NULL, 'logo', '2024-08-09 21:41:09', '2024-08-09 21:41:09'),
(165, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 164, 'App\\Models\\Item', 1, 'Dolorem et saepe.', NULL, 'logo', '2024-08-09 21:41:09', '2024-08-09 21:41:09'),
(166, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 165, 'App\\Models\\Item', 1, 'Voluptatem quis.', NULL, 'logo', '2024-08-09 21:41:10', '2024-08-09 21:41:10'),
(167, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 166, 'App\\Models\\Item', 1, 'Esse harum at.', NULL, 'logo', '2024-08-09 21:41:10', '2024-08-09 21:41:10'),
(168, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 167, 'App\\Models\\Item', 1, 'Non accusamus.', NULL, 'logo', '2024-08-09 21:41:10', '2024-08-09 21:41:10'),
(169, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 168, 'App\\Models\\Item', 1, 'Deleniti laudantium eum.', NULL, 'logo', '2024-08-09 21:41:10', '2024-08-09 21:41:10'),
(170, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 169, 'App\\Models\\Item', 1, 'Aut saepe eum.', NULL, 'logo', '2024-08-09 21:41:10', '2024-08-09 21:41:10'),
(171, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 170, 'App\\Models\\Item', 1, 'Deleniti aut error.', NULL, 'logo', '2024-08-09 21:41:10', '2024-08-09 21:41:10'),
(172, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 171, 'App\\Models\\Item', 1, 'Iure itaque vero.', NULL, 'logo', '2024-08-09 21:41:10', '2024-08-09 21:41:10'),
(173, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 172, 'App\\Models\\Item', 1, 'Eos consectetur.', NULL, 'logo', '2024-08-09 21:41:10', '2024-08-09 21:41:10'),
(174, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 173, 'App\\Models\\Item', 1, 'Ea impedit velit.', NULL, 'logo', '2024-08-09 21:41:10', '2024-08-09 21:41:10'),
(175, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 174, 'App\\Models\\Item', 1, 'Voluptas tempore voluptas.', NULL, 'logo', '2024-08-09 21:41:10', '2024-08-09 21:41:10'),
(176, 'images/uploads/5.jpg', 'images/uploads/5.jpg', 175, 'App\\Models\\Item', 1, 'Incidunt harum.', NULL, 'logo', '2024-08-09 21:41:10', '2024-08-09 21:41:10'),
(177, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 176, 'App\\Models\\Item', 1, 'Quod consequuntur.', NULL, 'logo', '2024-08-09 21:41:10', '2024-08-09 21:41:10'),
(178, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 177, 'App\\Models\\Item', 1, 'Numquam modi.', NULL, 'logo', '2024-08-09 21:41:10', '2024-08-09 21:41:10'),
(179, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 178, 'App\\Models\\Item', 1, 'Autem ut.', NULL, 'logo', '2024-08-09 21:41:10', '2024-08-09 21:41:10'),
(180, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 179, 'App\\Models\\Item', 1, 'Aut enim inventore.', NULL, 'logo', '2024-08-09 21:41:10', '2024-08-09 21:41:10'),
(181, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 180, 'App\\Models\\Item', 1, 'Atque explicabo.', NULL, 'logo', '2024-08-09 21:41:10', '2024-08-09 21:41:10'),
(182, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 181, 'App\\Models\\Item', 1, 'Sunt dolorem.', NULL, 'logo', '2024-08-09 21:41:10', '2024-08-09 21:41:10'),
(183, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 182, 'App\\Models\\Item', 1, 'Tempora qui totam.', NULL, 'logo', '2024-08-09 21:41:11', '2024-08-09 21:41:11'),
(184, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 183, 'App\\Models\\Item', 1, 'Architecto debitis.', NULL, 'logo', '2024-08-09 21:41:11', '2024-08-09 21:41:11'),
(185, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 184, 'App\\Models\\Item', 1, 'Doloremque quos accusantium.', NULL, 'logo', '2024-08-09 21:41:11', '2024-08-09 21:41:11'),
(186, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 185, 'App\\Models\\Item', 1, 'Consequatur culpa non.', NULL, 'logo', '2024-08-09 21:41:11', '2024-08-09 21:41:11'),
(187, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 186, 'App\\Models\\Item', 1, 'Repellat id.', NULL, 'logo', '2024-08-09 21:41:11', '2024-08-09 21:41:11'),
(188, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 187, 'App\\Models\\Item', 1, 'Aperiam est numquam.', NULL, 'logo', '2024-08-09 21:41:11', '2024-08-09 21:41:11'),
(189, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 188, 'App\\Models\\Item', 1, 'Neque autem velit.', NULL, 'logo', '2024-08-09 21:41:11', '2024-08-09 21:41:11'),
(190, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 189, 'App\\Models\\Item', 1, 'Dolor quisquam quo.', NULL, 'logo', '2024-08-09 21:41:11', '2024-08-09 21:41:11'),
(191, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 190, 'App\\Models\\Item', 1, 'Quo aliquid labore.', NULL, 'logo', '2024-08-09 21:41:11', '2024-08-09 21:41:11'),
(192, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 191, 'App\\Models\\Item', 1, 'Explicabo occaecati quisquam.', NULL, 'logo', '2024-08-09 21:41:11', '2024-08-09 21:41:11'),
(193, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 192, 'App\\Models\\Item', 1, 'Natus cumque.', NULL, 'logo', '2024-08-09 21:41:11', '2024-08-09 21:41:11'),
(194, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 193, 'App\\Models\\Item', 1, 'Doloribus perspiciatis.', NULL, 'logo', '2024-08-09 21:41:11', '2024-08-09 21:41:11'),
(195, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 194, 'App\\Models\\Item', 1, 'Deleniti alias.', NULL, 'logo', '2024-08-09 21:41:11', '2024-08-09 21:41:11'),
(196, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 195, 'App\\Models\\Item', 1, 'Voluptas sint.', NULL, 'logo', '2024-08-09 21:41:11', '2024-08-09 21:41:11'),
(197, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 196, 'App\\Models\\Item', 1, 'Et illum.', NULL, 'logo', '2024-08-09 21:41:11', '2024-08-09 21:41:11'),
(198, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 197, 'App\\Models\\Item', 1, 'Magnam recusandae.', NULL, 'logo', '2024-08-09 21:41:11', '2024-08-09 21:41:11'),
(199, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 198, 'App\\Models\\Item', 1, 'Quia in.', NULL, 'logo', '2024-08-09 21:41:11', '2024-08-09 21:41:11'),
(200, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 199, 'App\\Models\\Item', 1, 'Odit ut.', NULL, 'logo', '2024-08-09 21:41:11', '2024-08-09 21:41:11'),
(201, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 200, 'App\\Models\\Item', 1, 'Consequatur sapiente provident.', NULL, 'logo', '2024-08-09 21:41:12', '2024-08-09 21:41:12'),
(202, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 201, 'App\\Models\\Item', 1, 'Quia distinctio nobis.', NULL, 'logo', '2024-08-09 21:41:12', '2024-08-09 21:41:12'),
(203, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 202, 'App\\Models\\Item', 1, 'At delectus sunt.', NULL, 'logo', '2024-08-09 21:41:12', '2024-08-09 21:41:12'),
(204, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 203, 'App\\Models\\Item', 1, 'Autem corrupti.', NULL, 'logo', '2024-08-09 21:41:12', '2024-08-09 21:41:12'),
(205, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 204, 'App\\Models\\Item', 1, 'Modi hic ex.', NULL, 'logo', '2024-08-09 21:41:12', '2024-08-09 21:41:12'),
(206, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 205, 'App\\Models\\Item', 1, 'Voluptatem dolores.', NULL, 'logo', '2024-08-09 21:41:12', '2024-08-09 21:41:12'),
(207, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 206, 'App\\Models\\Item', 1, 'Ab nihil.', NULL, 'logo', '2024-08-09 21:41:12', '2024-08-09 21:41:12'),
(208, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 207, 'App\\Models\\Item', 1, 'Facilis voluptas possimus.', NULL, 'logo', '2024-08-09 21:41:12', '2024-08-09 21:41:12'),
(209, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 208, 'App\\Models\\Item', 1, 'Sit nemo veniam.', NULL, 'logo', '2024-08-09 21:41:12', '2024-08-09 21:41:12'),
(210, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 209, 'App\\Models\\Item', 1, 'Sed maxime.', NULL, 'logo', '2024-08-09 21:41:12', '2024-08-09 21:41:12'),
(211, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 210, 'App\\Models\\Item', 1, 'Aspernatur qui molestiae.', NULL, 'logo', '2024-08-09 21:41:12', '2024-08-09 21:41:12'),
(212, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 211, 'App\\Models\\Item', 1, 'Et placeat.', NULL, 'logo', '2024-08-09 21:41:12', '2024-08-09 21:41:12'),
(213, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 212, 'App\\Models\\Item', 1, 'Eos minima explicabo.', NULL, 'logo', '2024-08-09 21:41:12', '2024-08-09 21:41:12'),
(214, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 213, 'App\\Models\\Item', 1, 'Est explicabo.', NULL, 'logo', '2024-08-09 21:41:12', '2024-08-09 21:41:12'),
(215, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 214, 'App\\Models\\Item', 1, 'Id perferendis illo.', NULL, 'logo', '2024-08-09 21:41:12', '2024-08-09 21:41:12'),
(216, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 215, 'App\\Models\\Item', 1, 'Expedita perspiciatis officia.', NULL, 'logo', '2024-08-09 21:41:12', '2024-08-09 21:41:12'),
(217, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 216, 'App\\Models\\Item', 1, 'Nulla ut et.', NULL, 'logo', '2024-08-09 21:41:13', '2024-08-09 21:41:13'),
(218, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 217, 'App\\Models\\Item', 1, 'Soluta quo.', NULL, 'logo', '2024-08-09 21:41:13', '2024-08-09 21:41:13'),
(219, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 218, 'App\\Models\\Item', 1, 'Recusandae quia vel.', NULL, 'logo', '2024-08-09 21:41:13', '2024-08-09 21:41:13'),
(220, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 219, 'App\\Models\\Item', 1, 'Ut illum alias.', NULL, 'logo', '2024-08-09 21:41:13', '2024-08-09 21:41:13'),
(221, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 220, 'App\\Models\\Item', 1, 'Veniam impedit.', NULL, 'logo', '2024-08-09 21:41:13', '2024-08-09 21:41:13'),
(222, 'images/uploads/5.jpg', 'images/uploads/5.jpg', 221, 'App\\Models\\Item', 1, 'Quod quam id.', NULL, 'logo', '2024-08-09 21:41:13', '2024-08-09 21:41:13'),
(223, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 222, 'App\\Models\\Item', 1, 'Nihil vel quis.', NULL, 'logo', '2024-08-09 21:41:13', '2024-08-09 21:41:13'),
(224, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 223, 'App\\Models\\Item', 1, 'Modi eveniet.', NULL, 'logo', '2024-08-09 21:41:13', '2024-08-09 21:41:13'),
(225, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 224, 'App\\Models\\Item', 1, 'Consequuntur velit saepe.', NULL, 'logo', '2024-08-09 21:41:13', '2024-08-09 21:41:13'),
(226, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 225, 'App\\Models\\Item', 1, 'Architecto architecto.', NULL, 'logo', '2024-08-09 21:41:13', '2024-08-09 21:41:13'),
(227, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 226, 'App\\Models\\Item', 1, 'Explicabo occaecati.', NULL, 'logo', '2024-08-09 21:41:13', '2024-08-09 21:41:13'),
(228, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 227, 'App\\Models\\Item', 1, 'Fugiat accusantium quia.', NULL, 'logo', '2024-08-09 21:41:13', '2024-08-09 21:41:13'),
(229, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 228, 'App\\Models\\Item', 1, 'Excepturi sunt dicta.', NULL, 'logo', '2024-08-09 21:41:13', '2024-08-09 21:41:13'),
(230, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 229, 'App\\Models\\Item', 1, 'Odio et.', NULL, 'logo', '2024-08-09 21:41:13', '2024-08-09 21:41:13'),
(231, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 230, 'App\\Models\\Item', 1, 'Assumenda est.', NULL, 'logo', '2024-08-09 21:41:13', '2024-08-09 21:41:13'),
(232, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 231, 'App\\Models\\Item', 1, 'Iste adipisci sit.', NULL, 'logo', '2024-08-09 21:41:13', '2024-08-09 21:41:13'),
(233, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 232, 'App\\Models\\Item', 1, 'Perspiciatis debitis dolores.', NULL, 'logo', '2024-08-09 21:41:13', '2024-08-09 21:41:13'),
(234, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 233, 'App\\Models\\Item', 1, 'Nemo veniam.', NULL, 'logo', '2024-08-09 21:41:14', '2024-08-09 21:41:14'),
(235, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 234, 'App\\Models\\Item', 1, 'Eum ad placeat.', NULL, 'logo', '2024-08-09 21:41:14', '2024-08-09 21:41:14'),
(236, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 235, 'App\\Models\\Item', 1, 'Ut illo recusandae.', NULL, 'logo', '2024-08-09 21:41:14', '2024-08-09 21:41:14'),
(237, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 236, 'App\\Models\\Item', 1, 'Autem eaque praesentium.', NULL, 'logo', '2024-08-09 21:41:14', '2024-08-09 21:41:14'),
(238, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 237, 'App\\Models\\Item', 1, 'Itaque excepturi.', NULL, 'logo', '2024-08-09 21:41:14', '2024-08-09 21:41:14'),
(239, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 238, 'App\\Models\\Item', 1, 'Facilis laudantium cumque.', NULL, 'logo', '2024-08-09 21:41:14', '2024-08-09 21:41:14'),
(240, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 239, 'App\\Models\\Item', 1, 'Incidunt eum fugit.', NULL, 'logo', '2024-08-09 21:41:14', '2024-08-09 21:41:14'),
(241, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 240, 'App\\Models\\Item', 1, 'Voluptatum maiores.', NULL, 'logo', '2024-08-09 21:41:14', '2024-08-09 21:41:14'),
(242, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 241, 'App\\Models\\Item', 1, 'Harum enim voluptatem.', NULL, 'logo', '2024-08-09 21:41:14', '2024-08-09 21:41:14'),
(243, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 242, 'App\\Models\\Item', 1, 'Neque quo.', NULL, 'logo', '2024-08-09 21:41:14', '2024-08-09 21:41:14'),
(244, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 243, 'App\\Models\\Item', 1, 'Doloremque adipisci.', NULL, 'logo', '2024-08-09 21:41:14', '2024-08-09 21:41:14'),
(245, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 244, 'App\\Models\\Item', 1, 'Rerum optio.', NULL, 'logo', '2024-08-09 21:41:14', '2024-08-09 21:41:14'),
(246, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 245, 'App\\Models\\Item', 1, 'Laborum omnis sit.', NULL, 'logo', '2024-08-09 21:41:14', '2024-08-09 21:41:14'),
(247, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 246, 'App\\Models\\Item', 1, 'Autem velit blanditiis.', NULL, 'logo', '2024-08-09 21:41:14', '2024-08-09 21:41:14'),
(248, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 247, 'App\\Models\\Item', 1, 'Libero ut dolor.', NULL, 'logo', '2024-08-09 21:41:14', '2024-08-09 21:41:14'),
(249, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 248, 'App\\Models\\Item', 1, 'Nam et quia.', NULL, 'logo', '2024-08-09 21:41:14', '2024-08-09 21:41:14'),
(250, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 249, 'App\\Models\\Item', 1, 'Nemo labore.', NULL, 'logo', '2024-08-09 21:41:14', '2024-08-09 21:41:14'),
(251, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 250, 'App\\Models\\Item', 1, 'Unde illum voluptas.', NULL, 'logo', '2024-08-09 21:41:15', '2024-08-09 21:41:15'),
(252, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 251, 'App\\Models\\Item', 1, 'Veritatis eveniet molestias.', NULL, 'logo', '2024-08-09 21:41:15', '2024-08-09 21:41:15'),
(253, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 252, 'App\\Models\\Item', 1, 'Consequuntur eos.', NULL, 'logo', '2024-08-09 21:41:15', '2024-08-09 21:41:15'),
(254, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 253, 'App\\Models\\Item', 1, 'Officia possimus quia.', NULL, 'logo', '2024-08-09 21:41:15', '2024-08-09 21:41:15'),
(255, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 254, 'App\\Models\\Item', 1, 'Dolores qui repudiandae.', NULL, 'logo', '2024-08-09 21:41:15', '2024-08-09 21:41:15'),
(256, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 255, 'App\\Models\\Item', 1, 'Eligendi neque.', NULL, 'logo', '2024-08-09 21:41:15', '2024-08-09 21:41:15'),
(257, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 256, 'App\\Models\\Item', 1, 'Quae alias architecto.', NULL, 'logo', '2024-08-09 21:41:15', '2024-08-09 21:41:15'),
(258, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 257, 'App\\Models\\Item', 1, 'Doloribus ea blanditiis.', NULL, 'logo', '2024-08-09 21:41:15', '2024-08-09 21:41:15'),
(259, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 258, 'App\\Models\\Item', 1, 'Quo ut rerum.', NULL, 'logo', '2024-08-09 21:41:15', '2024-08-09 21:41:15'),
(260, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 259, 'App\\Models\\Item', 1, 'Ut cum.', NULL, 'logo', '2024-08-09 21:41:15', '2024-08-09 21:41:15'),
(261, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 260, 'App\\Models\\Item', 1, 'Doloremque perferendis.', NULL, 'logo', '2024-08-09 21:41:15', '2024-08-09 21:41:15'),
(262, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 261, 'App\\Models\\Item', 1, 'Et fugit quo.', NULL, 'logo', '2024-08-09 21:41:15', '2024-08-09 21:41:15'),
(263, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 262, 'App\\Models\\Item', 1, 'Quia sed.', NULL, 'logo', '2024-08-09 21:41:15', '2024-08-09 21:41:15'),
(264, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 263, 'App\\Models\\Item', 1, 'Et eos.', NULL, 'logo', '2024-08-09 21:41:15', '2024-08-09 21:41:15'),
(265, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 264, 'App\\Models\\Item', 1, 'Et error.', NULL, 'logo', '2024-08-09 21:41:16', '2024-08-09 21:41:16'),
(266, 'images/uploads/26.jpg', 'images/uploads/26.jpg', 265, 'App\\Models\\Item', 1, 'Fugiat ratione doloribus.', NULL, 'logo', '2024-08-09 21:41:16', '2024-08-09 21:41:16'),
(267, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 266, 'App\\Models\\Item', 1, 'Consequatur ipsam.', NULL, 'logo', '2024-08-09 21:41:16', '2024-08-09 21:41:16'),
(268, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 267, 'App\\Models\\Item', 1, 'Aut ducimus.', NULL, 'logo', '2024-08-09 21:41:16', '2024-08-09 21:41:16'),
(269, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 268, 'App\\Models\\Item', 1, 'Ut alias.', NULL, 'logo', '2024-08-09 21:41:16', '2024-08-09 21:41:16'),
(270, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 269, 'App\\Models\\Item', 1, 'Deserunt dolore fugiat.', NULL, 'logo', '2024-08-09 21:41:16', '2024-08-09 21:41:16'),
(271, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 270, 'App\\Models\\Item', 1, 'Est accusamus.', NULL, 'logo', '2024-08-09 21:41:16', '2024-08-09 21:41:16'),
(272, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 271, 'App\\Models\\Item', 1, 'Inventore animi distinctio.', NULL, 'logo', '2024-08-09 21:41:16', '2024-08-09 21:41:16'),
(273, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 272, 'App\\Models\\Item', 1, 'Hic asperiores.', NULL, 'logo', '2024-08-09 21:41:16', '2024-08-09 21:41:16'),
(274, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 273, 'App\\Models\\Item', 1, 'Non nulla qui.', NULL, 'logo', '2024-08-09 21:41:16', '2024-08-09 21:41:16'),
(275, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 274, 'App\\Models\\Item', 1, 'Quisquam consequatur consequatur.', NULL, 'logo', '2024-08-09 21:41:16', '2024-08-09 21:41:16'),
(276, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 275, 'App\\Models\\Item', 1, 'Natus voluptatem autem.', NULL, 'logo', '2024-08-09 21:41:16', '2024-08-09 21:41:16'),
(277, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 276, 'App\\Models\\Item', 1, 'Non enim.', NULL, 'logo', '2024-08-09 21:41:16', '2024-08-09 21:41:16'),
(278, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 277, 'App\\Models\\Item', 1, 'Eum nam.', NULL, 'logo', '2024-08-09 21:41:16', '2024-08-09 21:41:16'),
(279, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 278, 'App\\Models\\Item', 1, 'Aspernatur illum voluptates.', NULL, 'logo', '2024-08-09 21:41:16', '2024-08-09 21:41:16'),
(280, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 279, 'App\\Models\\Item', 1, 'Quidem pariatur aliquam.', NULL, 'logo', '2024-08-09 21:41:16', '2024-08-09 21:41:16'),
(281, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 280, 'App\\Models\\Item', 1, 'Voluptate natus et.', NULL, 'logo', '2024-08-09 21:41:16', '2024-08-09 21:41:16'),
(282, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 281, 'App\\Models\\Item', 1, 'Nesciunt vitae aliquam.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(283, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 282, 'App\\Models\\Item', 1, 'Mollitia nihil.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(284, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 283, 'App\\Models\\Item', 1, 'Mollitia sequi.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(285, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 284, 'App\\Models\\Item', 1, 'Maxime dignissimos voluptas.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(286, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 285, 'App\\Models\\Item', 1, 'Rem vel sint.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(287, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 286, 'App\\Models\\Item', 1, 'Aut aspernatur.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(288, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 287, 'App\\Models\\Item', 1, 'Non dolorem atque.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(289, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 288, 'App\\Models\\Item', 1, 'Aspernatur nulla dolorem.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(290, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 289, 'App\\Models\\Item', 1, 'Quia distinctio.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(291, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 290, 'App\\Models\\Item', 1, 'Repellendus velit asperiores.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(292, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 291, 'App\\Models\\Item', 1, 'Quisquam placeat perferendis.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(293, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 292, 'App\\Models\\Item', 1, 'Ducimus commodi officiis.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(294, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 293, 'App\\Models\\Item', 1, 'Quos dolor quasi.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(295, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 294, 'App\\Models\\Item', 1, 'Veritatis rerum soluta.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(296, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 295, 'App\\Models\\Item', 1, 'Ut repellat voluptas.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(297, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 296, 'App\\Models\\Item', 1, 'Magni beatae.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(298, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 297, 'App\\Models\\Item', 1, 'Enim ab.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(299, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 298, 'App\\Models\\Item', 1, 'Doloremque quis enim.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(300, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 299, 'App\\Models\\Item', 1, 'Iure earum.', NULL, 'logo', '2024-08-09 21:41:17', '2024-08-09 21:41:17'),
(301, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 300, 'App\\Models\\Item', 1, 'Ut quisquam ullam.', NULL, 'logo', '2024-08-09 21:41:18', '2024-08-09 21:41:18'),
(302, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 301, 'App\\Models\\Item', 1, 'Esse vero aut.', NULL, 'logo', '2024-08-09 21:41:18', '2024-08-09 21:41:18'),
(303, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 302, 'App\\Models\\Item', 1, 'Veniam quos ipsam.', NULL, 'logo', '2024-08-09 21:41:18', '2024-08-09 21:41:18');
INSERT INTO `images` (`id`, `thumbnail`, `path`, `imageable_id`, `imageable_type`, `is_primary`, `name`, `size`, `type`, `created_at`, `updated_at`) VALUES
(304, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 303, 'App\\Models\\Item', 1, 'Consequatur recusandae et.', NULL, 'logo', '2024-08-09 21:41:18', '2024-08-09 21:41:18'),
(305, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 304, 'App\\Models\\Item', 1, 'Fugit consequatur.', NULL, 'logo', '2024-08-09 21:41:18', '2024-08-09 21:41:18'),
(306, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 305, 'App\\Models\\Item', 1, 'Corporis rem.', NULL, 'logo', '2024-08-09 21:41:18', '2024-08-09 21:41:18'),
(307, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 306, 'App\\Models\\Item', 1, 'Dolores nesciunt.', NULL, 'logo', '2024-08-09 21:41:18', '2024-08-09 21:41:18'),
(308, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 307, 'App\\Models\\Item', 1, 'Odio maxime suscipit.', NULL, 'logo', '2024-08-09 21:41:18', '2024-08-09 21:41:18'),
(309, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 308, 'App\\Models\\Item', 1, 'Voluptatum velit eum.', NULL, 'logo', '2024-08-09 21:41:18', '2024-08-09 21:41:18'),
(310, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 309, 'App\\Models\\Item', 1, 'Alias voluptate.', NULL, 'logo', '2024-08-09 21:41:18', '2024-08-09 21:41:18'),
(311, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 310, 'App\\Models\\Item', 1, 'Eius repellat.', NULL, 'logo', '2024-08-09 21:41:18', '2024-08-09 21:41:18'),
(312, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 311, 'App\\Models\\Item', 1, 'Voluptates pariatur.', NULL, 'logo', '2024-08-09 21:41:18', '2024-08-09 21:41:18'),
(313, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 312, 'App\\Models\\Item', 1, 'Assumenda maiores.', NULL, 'logo', '2024-08-09 21:41:18', '2024-08-09 21:41:18'),
(314, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 313, 'App\\Models\\Item', 1, 'Expedita quia molestias.', NULL, 'logo', '2024-08-09 21:41:18', '2024-08-09 21:41:18'),
(315, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 314, 'App\\Models\\Item', 1, 'Quam consequuntur est.', NULL, 'logo', '2024-08-09 21:41:18', '2024-08-09 21:41:18'),
(316, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 315, 'App\\Models\\Item', 1, 'Expedita a.', NULL, 'logo', '2024-08-09 21:41:18', '2024-08-09 21:41:18'),
(317, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 316, 'App\\Models\\Item', 1, 'Architecto voluptate qui.', NULL, 'logo', '2024-08-09 21:41:18', '2024-08-09 21:41:18'),
(318, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 317, 'App\\Models\\Item', 1, 'Eius doloremque.', NULL, 'logo', '2024-08-09 21:41:18', '2024-08-09 21:41:18'),
(319, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 318, 'App\\Models\\Item', 1, 'Aut impedit facilis.', NULL, 'logo', '2024-08-09 21:41:19', '2024-08-09 21:41:19'),
(320, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 319, 'App\\Models\\Item', 1, 'Qui quod quas.', NULL, 'logo', '2024-08-09 21:41:19', '2024-08-09 21:41:19'),
(321, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 320, 'App\\Models\\Item', 1, 'Deleniti repudiandae libero.', NULL, 'logo', '2024-08-09 21:41:19', '2024-08-09 21:41:19'),
(322, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 321, 'App\\Models\\Item', 1, 'Atque eius facere.', NULL, 'logo', '2024-08-09 21:41:19', '2024-08-09 21:41:19'),
(323, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 322, 'App\\Models\\Item', 1, 'Facere enim.', NULL, 'logo', '2024-08-09 21:41:19', '2024-08-09 21:41:19'),
(324, 'images/uploads/26.jpg', 'images/uploads/26.jpg', 323, 'App\\Models\\Item', 1, 'Et eum.', NULL, 'logo', '2024-08-09 21:41:19', '2024-08-09 21:41:19'),
(325, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 324, 'App\\Models\\Item', 1, 'Recusandae doloribus numquam.', NULL, 'logo', '2024-08-09 21:41:19', '2024-08-09 21:41:19'),
(326, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 325, 'App\\Models\\Item', 1, 'Temporibus quo.', NULL, 'logo', '2024-08-09 21:41:19', '2024-08-09 21:41:19'),
(327, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 326, 'App\\Models\\Item', 1, 'Repellendus vitae eum.', NULL, 'logo', '2024-08-09 21:41:19', '2024-08-09 21:41:19'),
(328, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 327, 'App\\Models\\Item', 1, 'Id quia.', NULL, 'logo', '2024-08-09 21:41:19', '2024-08-09 21:41:19'),
(329, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 328, 'App\\Models\\Item', 1, 'Similique tenetur facilis.', NULL, 'logo', '2024-08-09 21:41:19', '2024-08-09 21:41:19'),
(330, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 329, 'App\\Models\\Item', 1, 'Omnis aliquam.', NULL, 'logo', '2024-08-09 21:41:19', '2024-08-09 21:41:19'),
(331, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 330, 'App\\Models\\Item', 1, 'Nesciunt nulla.', NULL, 'logo', '2024-08-09 21:41:19', '2024-08-09 21:41:19'),
(332, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 331, 'App\\Models\\Item', 1, 'Non rerum.', NULL, 'logo', '2024-08-09 21:41:19', '2024-08-09 21:41:19'),
(333, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 332, 'App\\Models\\Item', 1, 'Modi cumque.', NULL, 'logo', '2024-08-09 21:41:19', '2024-08-09 21:41:19'),
(334, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 333, 'App\\Models\\Item', 1, 'Qui maxime.', NULL, 'logo', '2024-08-09 21:41:19', '2024-08-09 21:41:19'),
(335, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 334, 'App\\Models\\Item', 1, 'Iusto quia.', NULL, 'logo', '2024-08-09 21:41:19', '2024-08-09 21:41:19'),
(336, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 335, 'App\\Models\\Item', 1, 'Veniam enim.', NULL, 'logo', '2024-08-09 21:41:20', '2024-08-09 21:41:20'),
(337, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 336, 'App\\Models\\Item', 1, 'Laboriosam rerum.', NULL, 'logo', '2024-08-09 21:41:20', '2024-08-09 21:41:20'),
(338, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 337, 'App\\Models\\Item', 1, 'Assumenda asperiores reprehenderit.', NULL, 'logo', '2024-08-09 21:41:20', '2024-08-09 21:41:20'),
(339, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 338, 'App\\Models\\Item', 1, 'Vel enim.', NULL, 'logo', '2024-08-09 21:41:20', '2024-08-09 21:41:20'),
(340, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 339, 'App\\Models\\Item', 1, 'Consequatur nobis.', NULL, 'logo', '2024-08-09 21:41:20', '2024-08-09 21:41:20'),
(341, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 340, 'App\\Models\\Item', 1, 'Voluptas sit.', NULL, 'logo', '2024-08-09 21:41:20', '2024-08-09 21:41:20'),
(342, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 341, 'App\\Models\\Item', 1, 'Omnis suscipit accusantium.', NULL, 'logo', '2024-08-09 21:41:20', '2024-08-09 21:41:20'),
(343, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 342, 'App\\Models\\Item', 1, 'Sed accusantium.', NULL, 'logo', '2024-08-09 21:41:20', '2024-08-09 21:41:20'),
(344, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 343, 'App\\Models\\Item', 1, 'Eos earum.', NULL, 'logo', '2024-08-09 21:41:20', '2024-08-09 21:41:20'),
(345, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 344, 'App\\Models\\Item', 1, 'Molestiae hic sed.', NULL, 'logo', '2024-08-09 21:41:20', '2024-08-09 21:41:20'),
(346, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 345, 'App\\Models\\Item', 1, 'Quod ut eius.', NULL, 'logo', '2024-08-09 21:41:20', '2024-08-09 21:41:20'),
(347, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 346, 'App\\Models\\Item', 1, 'Consequuntur dicta.', NULL, 'logo', '2024-08-09 21:41:20', '2024-08-09 21:41:20'),
(348, 'images/uploads/26.jpg', 'images/uploads/26.jpg', 347, 'App\\Models\\Item', 1, 'Aut libero molestias.', NULL, 'logo', '2024-08-09 21:41:20', '2024-08-09 21:41:20'),
(349, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 348, 'App\\Models\\Item', 1, 'Perspiciatis molestiae.', NULL, 'logo', '2024-08-09 21:41:20', '2024-08-09 21:41:20'),
(350, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 349, 'App\\Models\\Item', 1, 'In hic.', NULL, 'logo', '2024-08-09 21:41:20', '2024-08-09 21:41:20'),
(351, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 350, 'App\\Models\\Item', 1, 'Quo quia.', NULL, 'logo', '2024-08-09 21:41:20', '2024-08-09 21:41:20'),
(352, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 351, 'App\\Models\\Item', 1, 'Quaerat est.', NULL, 'logo', '2024-08-09 21:41:20', '2024-08-09 21:41:20'),
(353, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 352, 'App\\Models\\Item', 1, 'Ut dolorem.', NULL, 'logo', '2024-08-09 21:41:21', '2024-08-09 21:41:21'),
(354, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 353, 'App\\Models\\Item', 1, 'Autem perspiciatis porro.', NULL, 'logo', '2024-08-09 21:41:21', '2024-08-09 21:41:21'),
(355, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 354, 'App\\Models\\Item', 1, 'Eos vel.', NULL, 'logo', '2024-08-09 21:41:21', '2024-08-09 21:41:21'),
(356, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 355, 'App\\Models\\Item', 1, 'Sunt voluptate molestiae.', NULL, 'logo', '2024-08-09 21:41:21', '2024-08-09 21:41:21'),
(357, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 356, 'App\\Models\\Item', 1, 'Iusto voluptatem mollitia.', NULL, 'logo', '2024-08-09 21:41:21', '2024-08-09 21:41:21'),
(358, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 357, 'App\\Models\\Item', 1, 'Libero voluptate et.', NULL, 'logo', '2024-08-09 21:41:21', '2024-08-09 21:41:21'),
(359, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 358, 'App\\Models\\Item', 1, 'Nihil libero.', NULL, 'logo', '2024-08-09 21:41:21', '2024-08-09 21:41:21'),
(360, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 359, 'App\\Models\\Item', 1, 'Modi delectus commodi.', NULL, 'logo', '2024-08-09 21:41:21', '2024-08-09 21:41:21'),
(361, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 360, 'App\\Models\\Item', 1, 'Sed est corrupti.', NULL, 'logo', '2024-08-09 21:41:21', '2024-08-09 21:41:21'),
(362, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 361, 'App\\Models\\Item', 1, 'Quaerat eius.', NULL, 'logo', '2024-08-09 21:41:21', '2024-08-09 21:41:21'),
(363, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 362, 'App\\Models\\Item', 1, 'Necessitatibus asperiores quia.', NULL, 'logo', '2024-08-09 21:41:21', '2024-08-09 21:41:21'),
(364, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 363, 'App\\Models\\Item', 1, 'Fuga enim.', NULL, 'logo', '2024-08-09 21:41:21', '2024-08-09 21:41:21'),
(365, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 364, 'App\\Models\\Item', 1, 'Quia provident necessitatibus.', NULL, 'logo', '2024-08-09 21:41:21', '2024-08-09 21:41:21'),
(366, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 365, 'App\\Models\\Item', 1, 'Blanditiis et illum.', NULL, 'logo', '2024-08-09 21:41:21', '2024-08-09 21:41:21'),
(367, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 366, 'App\\Models\\Item', 1, 'Et sed.', NULL, 'logo', '2024-08-09 21:41:21', '2024-08-09 21:41:21'),
(368, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 367, 'App\\Models\\Item', 1, 'Voluptates in facilis.', NULL, 'logo', '2024-08-09 21:41:21', '2024-08-09 21:41:21'),
(369, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 368, 'App\\Models\\Item', 1, 'Libero et.', NULL, 'logo', '2024-08-09 21:41:22', '2024-08-09 21:41:22'),
(370, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 369, 'App\\Models\\Item', 1, 'Et nisi.', NULL, 'logo', '2024-08-09 21:41:22', '2024-08-09 21:41:22'),
(371, 'images/uploads/5.jpg', 'images/uploads/5.jpg', 370, 'App\\Models\\Item', 1, 'Aperiam quo voluptatem.', NULL, 'logo', '2024-08-09 21:41:22', '2024-08-09 21:41:22'),
(372, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 371, 'App\\Models\\Item', 1, 'Amet esse.', NULL, 'logo', '2024-08-09 21:41:22', '2024-08-09 21:41:22'),
(373, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 372, 'App\\Models\\Item', 1, 'Non doloremque.', NULL, 'logo', '2024-08-09 21:41:22', '2024-08-09 21:41:22'),
(374, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 373, 'App\\Models\\Item', 1, 'Dolor vel.', NULL, 'logo', '2024-08-09 21:41:22', '2024-08-09 21:41:22'),
(375, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 374, 'App\\Models\\Item', 1, 'Cumque et autem.', NULL, 'logo', '2024-08-09 21:41:22', '2024-08-09 21:41:22'),
(376, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 375, 'App\\Models\\Item', 1, 'Numquam et praesentium.', NULL, 'logo', '2024-08-09 21:41:22', '2024-08-09 21:41:22'),
(377, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 376, 'App\\Models\\Item', 1, 'Aperiam eum.', NULL, 'logo', '2024-08-09 21:41:22', '2024-08-09 21:41:22'),
(378, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 377, 'App\\Models\\Item', 1, 'Dolorem qui.', NULL, 'logo', '2024-08-09 21:41:22', '2024-08-09 21:41:22'),
(379, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 378, 'App\\Models\\Item', 1, 'Mollitia ex.', NULL, 'logo', '2024-08-09 21:41:22', '2024-08-09 21:41:22'),
(380, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 379, 'App\\Models\\Item', 1, 'Perferendis fuga.', NULL, 'logo', '2024-08-09 21:41:22', '2024-08-09 21:41:22'),
(381, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 380, 'App\\Models\\Item', 1, 'Sequi qui.', NULL, 'logo', '2024-08-09 21:41:22', '2024-08-09 21:41:22'),
(382, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 381, 'App\\Models\\Item', 1, 'Aperiam odio.', NULL, 'logo', '2024-08-09 21:41:22', '2024-08-09 21:41:22'),
(383, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 382, 'App\\Models\\Item', 1, 'Vero tenetur ducimus.', NULL, 'logo', '2024-08-09 21:41:22', '2024-08-09 21:41:22'),
(384, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 383, 'App\\Models\\Item', 1, 'Earum rerum necessitatibus.', NULL, 'logo', '2024-08-09 21:41:22', '2024-08-09 21:41:22'),
(385, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 384, 'App\\Models\\Item', 1, 'Sint aut.', NULL, 'logo', '2024-08-09 21:41:22', '2024-08-09 21:41:22'),
(386, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 385, 'App\\Models\\Item', 1, 'Et accusantium.', NULL, 'logo', '2024-08-09 21:41:23', '2024-08-09 21:41:23'),
(387, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 386, 'App\\Models\\Item', 1, 'Molestiae sit.', NULL, 'logo', '2024-08-09 21:41:23', '2024-08-09 21:41:23'),
(388, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 387, 'App\\Models\\Item', 1, 'Totam voluptatem.', NULL, 'logo', '2024-08-09 21:41:23', '2024-08-09 21:41:23'),
(389, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 388, 'App\\Models\\Item', 1, 'Dolores provident.', NULL, 'logo', '2024-08-09 21:41:23', '2024-08-09 21:41:23'),
(390, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 389, 'App\\Models\\Item', 1, 'Qui aut.', NULL, 'logo', '2024-08-09 21:41:23', '2024-08-09 21:41:23'),
(391, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 390, 'App\\Models\\Item', 1, 'Et debitis nisi.', NULL, 'logo', '2024-08-09 21:41:23', '2024-08-09 21:41:23'),
(392, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 391, 'App\\Models\\Item', 1, 'Rerum ut.', NULL, 'logo', '2024-08-09 21:41:23', '2024-08-09 21:41:23'),
(393, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 392, 'App\\Models\\Item', 1, 'Libero voluptas.', NULL, 'logo', '2024-08-09 21:41:23', '2024-08-09 21:41:23'),
(394, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 393, 'App\\Models\\Item', 1, 'Quia debitis.', NULL, 'logo', '2024-08-09 21:41:23', '2024-08-09 21:41:23'),
(395, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 394, 'App\\Models\\Item', 1, 'Delectus atque.', NULL, 'logo', '2024-08-09 21:41:23', '2024-08-09 21:41:23'),
(396, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 395, 'App\\Models\\Item', 1, 'Aut commodi.', NULL, 'logo', '2024-08-09 21:41:23', '2024-08-09 21:41:23'),
(397, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 396, 'App\\Models\\Item', 1, 'Sequi consequatur aperiam.', NULL, 'logo', '2024-08-09 21:41:23', '2024-08-09 21:41:23'),
(398, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 397, 'App\\Models\\Item', 1, 'Voluptatem blanditiis blanditiis.', NULL, 'logo', '2024-08-09 21:41:23', '2024-08-09 21:41:23'),
(399, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 398, 'App\\Models\\Item', 1, 'Maxime ipsa.', NULL, 'logo', '2024-08-09 21:41:23', '2024-08-09 21:41:23'),
(400, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 399, 'App\\Models\\Item', 1, 'Et ducimus ut.', NULL, 'logo', '2024-08-09 21:41:23', '2024-08-09 21:41:23'),
(401, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 400, 'App\\Models\\Item', 1, 'Blanditiis enim qui.', NULL, 'logo', '2024-08-09 21:41:23', '2024-08-09 21:41:23'),
(402, 'images/uploads/26.jpg', 'images/uploads/26.jpg', 401, 'App\\Models\\Item', 1, 'Ratione quisquam.', NULL, 'logo', '2024-08-09 21:41:23', '2024-08-09 21:41:23'),
(403, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 402, 'App\\Models\\Item', 1, 'Voluptas qui est.', NULL, 'logo', '2024-08-09 21:41:24', '2024-08-09 21:41:24'),
(404, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 403, 'App\\Models\\Item', 1, 'Incidunt blanditiis non.', NULL, 'logo', '2024-08-09 21:41:24', '2024-08-09 21:41:24'),
(405, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 404, 'App\\Models\\Item', 1, 'Maxime temporibus qui.', NULL, 'logo', '2024-08-09 21:41:24', '2024-08-09 21:41:24'),
(406, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 405, 'App\\Models\\Item', 1, 'Aut et.', NULL, 'logo', '2024-08-09 21:41:24', '2024-08-09 21:41:24'),
(407, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 406, 'App\\Models\\Item', 1, 'Incidunt numquam.', NULL, 'logo', '2024-08-09 21:41:24', '2024-08-09 21:41:24'),
(408, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 407, 'App\\Models\\Item', 1, 'Quia tempora at.', NULL, 'logo', '2024-08-09 21:41:24', '2024-08-09 21:41:24'),
(409, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 408, 'App\\Models\\Item', 1, 'Tempora maxime est.', NULL, 'logo', '2024-08-09 21:41:24', '2024-08-09 21:41:24'),
(410, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 409, 'App\\Models\\Item', 1, 'Sapiente nisi necessitatibus.', NULL, 'logo', '2024-08-09 21:41:24', '2024-08-09 21:41:24'),
(411, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 410, 'App\\Models\\Item', 1, 'Exercitationem tenetur.', NULL, 'logo', '2024-08-09 21:41:24', '2024-08-09 21:41:24'),
(412, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 411, 'App\\Models\\Item', 1, 'Est fugiat et.', NULL, 'logo', '2024-08-09 21:41:24', '2024-08-09 21:41:24'),
(413, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 412, 'App\\Models\\Item', 1, 'Maiores praesentium.', NULL, 'logo', '2024-08-09 21:41:24', '2024-08-09 21:41:24'),
(414, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 413, 'App\\Models\\Item', 1, 'Omnis nostrum.', NULL, 'logo', '2024-08-09 21:41:24', '2024-08-09 21:41:24'),
(415, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 414, 'App\\Models\\Item', 1, 'Omnis et quis.', NULL, 'logo', '2024-08-09 21:41:24', '2024-08-09 21:41:24'),
(416, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 415, 'App\\Models\\Item', 1, 'Nihil exercitationem et.', NULL, 'logo', '2024-08-09 21:41:24', '2024-08-09 21:41:24'),
(417, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 416, 'App\\Models\\Item', 1, 'Et odit nam.', NULL, 'logo', '2024-08-09 21:41:24', '2024-08-09 21:41:24'),
(418, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 417, 'App\\Models\\Item', 1, 'Facilis at.', NULL, 'logo', '2024-08-09 21:41:24', '2024-08-09 21:41:24'),
(419, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 418, 'App\\Models\\Item', 1, 'Deserunt consequatur voluptatibus.', NULL, 'logo', '2024-08-09 21:41:24', '2024-08-09 21:41:24'),
(420, 'images/uploads/5.jpg', 'images/uploads/5.jpg', 419, 'App\\Models\\Item', 1, 'Repellendus quo.', NULL, 'logo', '2024-08-09 21:41:25', '2024-08-09 21:41:25'),
(421, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 420, 'App\\Models\\Item', 1, 'Ipsam molestiae.', NULL, 'logo', '2024-08-09 21:41:25', '2024-08-09 21:41:25'),
(422, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 421, 'App\\Models\\Item', 1, 'Dolorem soluta.', NULL, 'logo', '2024-08-09 21:41:25', '2024-08-09 21:41:25'),
(423, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 422, 'App\\Models\\Item', 1, 'Hic voluptates.', NULL, 'logo', '2024-08-09 21:41:25', '2024-08-09 21:41:25'),
(424, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 423, 'App\\Models\\Item', 1, 'Dolor est reiciendis.', NULL, 'logo', '2024-08-09 21:41:25', '2024-08-09 21:41:25'),
(425, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 424, 'App\\Models\\Item', 1, 'Dolore occaecati cumque.', NULL, 'logo', '2024-08-09 21:41:25', '2024-08-09 21:41:25'),
(426, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 425, 'App\\Models\\Item', 1, 'Officia error.', NULL, 'logo', '2024-08-09 21:41:25', '2024-08-09 21:41:25'),
(427, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 426, 'App\\Models\\Item', 1, 'Voluptas ipsam et.', NULL, 'logo', '2024-08-09 21:41:25', '2024-08-09 21:41:25'),
(428, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 427, 'App\\Models\\Item', 1, 'Ipsam iste.', NULL, 'logo', '2024-08-09 21:41:25', '2024-08-09 21:41:25'),
(429, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 428, 'App\\Models\\Item', 1, 'Aliquid quae.', NULL, 'logo', '2024-08-09 21:41:25', '2024-08-09 21:41:25'),
(430, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 429, 'App\\Models\\Item', 1, 'Aut ducimus.', NULL, 'logo', '2024-08-09 21:41:25', '2024-08-09 21:41:25'),
(431, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 430, 'App\\Models\\Item', 1, 'Ipsam ut.', NULL, 'logo', '2024-08-09 21:41:25', '2024-08-09 21:41:25'),
(432, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 431, 'App\\Models\\Item', 1, 'Non quae.', NULL, 'logo', '2024-08-09 21:41:25', '2024-08-09 21:41:25'),
(433, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 432, 'App\\Models\\Item', 1, 'Quos dolore.', NULL, 'logo', '2024-08-09 21:41:25', '2024-08-09 21:41:25'),
(434, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 433, 'App\\Models\\Item', 1, 'Explicabo qui voluptatum.', NULL, 'logo', '2024-08-09 21:41:25', '2024-08-09 21:41:25'),
(435, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 434, 'App\\Models\\Item', 1, 'Perspiciatis aperiam officia.', NULL, 'logo', '2024-08-09 21:41:25', '2024-08-09 21:41:25'),
(436, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 435, 'App\\Models\\Item', 1, 'Non ducimus magnam.', NULL, 'logo', '2024-08-09 21:41:25', '2024-08-09 21:41:25'),
(437, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 436, 'App\\Models\\Item', 1, 'Accusantium reiciendis sed.', NULL, 'logo', '2024-08-09 21:41:26', '2024-08-09 21:41:26'),
(438, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 437, 'App\\Models\\Item', 1, 'Quis sed.', NULL, 'logo', '2024-08-09 21:41:26', '2024-08-09 21:41:26'),
(439, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 438, 'App\\Models\\Item', 1, 'Perferendis fugiat minima.', NULL, 'logo', '2024-08-09 21:41:26', '2024-08-09 21:41:26'),
(440, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 439, 'App\\Models\\Item', 1, 'Quo dolore.', NULL, 'logo', '2024-08-09 21:41:26', '2024-08-09 21:41:26'),
(441, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 440, 'App\\Models\\Item', 1, 'Perferendis dolore.', NULL, 'logo', '2024-08-09 21:41:26', '2024-08-09 21:41:26'),
(442, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 441, 'App\\Models\\Item', 1, 'Expedita ea dolores.', NULL, 'logo', '2024-08-09 21:41:26', '2024-08-09 21:41:26'),
(443, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 442, 'App\\Models\\Item', 1, 'Qui aut tempora.', NULL, 'logo', '2024-08-09 21:41:26', '2024-08-09 21:41:26'),
(444, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 443, 'App\\Models\\Item', 1, 'Accusamus sapiente et.', NULL, 'logo', '2024-08-09 21:41:26', '2024-08-09 21:41:26'),
(445, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 444, 'App\\Models\\Item', 1, 'Quia dicta labore.', NULL, 'logo', '2024-08-09 21:41:26', '2024-08-09 21:41:26'),
(446, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 445, 'App\\Models\\Item', 1, 'Quis fuga harum.', NULL, 'logo', '2024-08-09 21:41:26', '2024-08-09 21:41:26'),
(447, 'images/uploads/26.jpg', 'images/uploads/26.jpg', 446, 'App\\Models\\Item', 1, 'Illum maiores sunt.', NULL, 'logo', '2024-08-09 21:41:26', '2024-08-09 21:41:26'),
(448, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 447, 'App\\Models\\Item', 1, 'Mollitia voluptas similique.', NULL, 'logo', '2024-08-09 21:41:26', '2024-08-09 21:41:26'),
(449, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 448, 'App\\Models\\Item', 1, 'Beatae qui.', NULL, 'logo', '2024-08-09 21:41:26', '2024-08-09 21:41:26'),
(450, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 449, 'App\\Models\\Item', 1, 'Fuga tenetur.', NULL, 'logo', '2024-08-09 21:41:26', '2024-08-09 21:41:26'),
(451, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 450, 'App\\Models\\Item', 1, 'Cumque consectetur hic.', NULL, 'logo', '2024-08-09 21:41:26', '2024-08-09 21:41:26'),
(452, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 451, 'App\\Models\\Item', 1, 'Eos voluptate molestias.', NULL, 'logo', '2024-08-09 21:41:26', '2024-08-09 21:41:26'),
(453, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 452, 'App\\Models\\Item', 1, 'Cumque nisi.', NULL, 'logo', '2024-08-09 21:41:27', '2024-08-09 21:41:27'),
(454, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 453, 'App\\Models\\Item', 1, 'Quia autem.', NULL, 'logo', '2024-08-09 21:41:27', '2024-08-09 21:41:27'),
(455, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 454, 'App\\Models\\Item', 1, 'Similique cumque ut.', NULL, 'logo', '2024-08-09 21:41:27', '2024-08-09 21:41:27'),
(456, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 455, 'App\\Models\\Item', 1, 'Velit fugit nesciunt.', NULL, 'logo', '2024-08-09 21:41:27', '2024-08-09 21:41:27'),
(457, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 456, 'App\\Models\\Item', 1, 'Explicabo odit.', NULL, 'logo', '2024-08-09 21:41:27', '2024-08-09 21:41:27'),
(458, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 457, 'App\\Models\\Item', 1, 'Cum at.', NULL, 'logo', '2024-08-09 21:41:27', '2024-08-09 21:41:27'),
(459, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 458, 'App\\Models\\Item', 1, 'Minima non.', NULL, 'logo', '2024-08-09 21:41:27', '2024-08-09 21:41:27'),
(460, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 459, 'App\\Models\\Item', 1, 'Ad et mollitia.', NULL, 'logo', '2024-08-09 21:41:27', '2024-08-09 21:41:27'),
(461, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 460, 'App\\Models\\Item', 1, 'Illo ut.', NULL, 'logo', '2024-08-09 21:41:27', '2024-08-09 21:41:27'),
(462, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 461, 'App\\Models\\Item', 1, 'Ex nemo.', NULL, 'logo', '2024-08-09 21:41:27', '2024-08-09 21:41:27'),
(463, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 462, 'App\\Models\\Item', 1, 'Ea aut et.', NULL, 'logo', '2024-08-09 21:41:27', '2024-08-09 21:41:27'),
(464, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 463, 'App\\Models\\Item', 1, 'Labore provident.', NULL, 'logo', '2024-08-09 21:41:27', '2024-08-09 21:41:27'),
(465, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 464, 'App\\Models\\Item', 1, 'Possimus et.', NULL, 'logo', '2024-08-09 21:41:27', '2024-08-09 21:41:27'),
(466, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 465, 'App\\Models\\Item', 1, 'Dolores autem minima.', NULL, 'logo', '2024-08-09 21:41:27', '2024-08-09 21:41:27'),
(467, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 466, 'App\\Models\\Item', 1, 'Aut tenetur autem.', NULL, 'logo', '2024-08-09 21:41:27', '2024-08-09 21:41:27'),
(468, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 467, 'App\\Models\\Item', 1, 'Incidunt corporis.', NULL, 'logo', '2024-08-09 21:41:27', '2024-08-09 21:41:27'),
(469, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 468, 'App\\Models\\Item', 1, 'Modi molestias.', NULL, 'logo', '2024-08-09 21:41:27', '2024-08-09 21:41:27'),
(470, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 469, 'App\\Models\\Item', 1, 'Rerum et magni.', NULL, 'logo', '2024-08-09 21:41:28', '2024-08-09 21:41:28'),
(471, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 470, 'App\\Models\\Item', 1, 'Vero amet aut.', NULL, 'logo', '2024-08-09 21:41:28', '2024-08-09 21:41:28'),
(472, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 471, 'App\\Models\\Item', 1, 'Perspiciatis est et.', NULL, 'logo', '2024-08-09 21:41:28', '2024-08-09 21:41:28'),
(473, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 472, 'App\\Models\\Item', 1, 'Ad voluptas.', NULL, 'logo', '2024-08-09 21:41:28', '2024-08-09 21:41:28'),
(474, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 473, 'App\\Models\\Item', 1, 'Rerum non voluptas.', NULL, 'logo', '2024-08-09 21:41:28', '2024-08-09 21:41:28'),
(475, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 474, 'App\\Models\\Item', 1, 'Itaque sequi.', NULL, 'logo', '2024-08-09 21:41:28', '2024-08-09 21:41:28'),
(476, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 475, 'App\\Models\\Item', 1, 'Sint qui.', NULL, 'logo', '2024-08-09 21:41:28', '2024-08-09 21:41:28'),
(477, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 476, 'App\\Models\\Item', 1, 'Incidunt modi.', NULL, 'logo', '2024-08-09 21:41:28', '2024-08-09 21:41:28'),
(478, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 477, 'App\\Models\\Item', 1, 'Ut veritatis.', NULL, 'logo', '2024-08-09 21:41:28', '2024-08-09 21:41:28'),
(479, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 478, 'App\\Models\\Item', 1, 'Nihil quidem et.', NULL, 'logo', '2024-08-09 21:41:28', '2024-08-09 21:41:28'),
(480, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 479, 'App\\Models\\Item', 1, 'Eos qui.', NULL, 'logo', '2024-08-09 21:41:28', '2024-08-09 21:41:28'),
(481, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 480, 'App\\Models\\Item', 1, 'Quia minima debitis.', NULL, 'logo', '2024-08-09 21:41:28', '2024-08-09 21:41:28'),
(482, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 481, 'App\\Models\\Item', 1, 'Officia voluptate aliquid.', NULL, 'logo', '2024-08-09 21:41:28', '2024-08-09 21:41:28'),
(483, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 482, 'App\\Models\\Item', 1, 'Quasi omnis aliquid.', NULL, 'logo', '2024-08-09 21:41:28', '2024-08-09 21:41:28'),
(484, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 483, 'App\\Models\\Item', 1, 'Dolor ab.', NULL, 'logo', '2024-08-09 21:41:28', '2024-08-09 21:41:28'),
(485, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 484, 'App\\Models\\Item', 1, 'Veniam exercitationem.', NULL, 'logo', '2024-08-09 21:41:28', '2024-08-09 21:41:28'),
(486, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 485, 'App\\Models\\Item', 1, 'Autem et alias.', NULL, 'logo', '2024-08-09 21:41:28', '2024-08-09 21:41:28'),
(487, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 486, 'App\\Models\\Item', 1, 'Sit rerum eveniet.', NULL, 'logo', '2024-08-09 21:41:29', '2024-08-09 21:41:29'),
(488, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 487, 'App\\Models\\Item', 1, 'Voluptatem similique consequatur.', NULL, 'logo', '2024-08-09 21:41:29', '2024-08-09 21:41:29'),
(489, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 488, 'App\\Models\\Item', 1, 'Eum rerum.', NULL, 'logo', '2024-08-09 21:41:29', '2024-08-09 21:41:29'),
(490, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 489, 'App\\Models\\Item', 1, 'Id fugiat repellendus.', NULL, 'logo', '2024-08-09 21:41:29', '2024-08-09 21:41:29'),
(491, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 490, 'App\\Models\\Item', 1, 'Cumque rerum.', NULL, 'logo', '2024-08-09 21:41:29', '2024-08-09 21:41:29'),
(492, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 491, 'App\\Models\\Item', 1, 'Iste deserunt.', NULL, 'logo', '2024-08-09 21:41:29', '2024-08-09 21:41:29'),
(493, 'images/uploads/5.jpg', 'images/uploads/5.jpg', 492, 'App\\Models\\Item', 1, 'Incidunt fugit.', NULL, 'logo', '2024-08-09 21:41:29', '2024-08-09 21:41:29'),
(494, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 493, 'App\\Models\\Item', 1, 'Labore hic.', NULL, 'logo', '2024-08-09 21:41:29', '2024-08-09 21:41:29'),
(495, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 494, 'App\\Models\\Item', 1, 'Qui dolor.', NULL, 'logo', '2024-08-09 21:41:29', '2024-08-09 21:41:29'),
(496, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 495, 'App\\Models\\Item', 1, 'Voluptas voluptatem.', NULL, 'logo', '2024-08-09 21:41:29', '2024-08-09 21:41:29'),
(497, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 496, 'App\\Models\\Item', 1, 'Voluptas pariatur magnam.', NULL, 'logo', '2024-08-09 21:41:29', '2024-08-09 21:41:29'),
(498, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 497, 'App\\Models\\Item', 1, 'Non impedit.', NULL, 'logo', '2024-08-09 21:41:29', '2024-08-09 21:41:29'),
(499, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 498, 'App\\Models\\Item', 1, 'Architecto omnis ea.', NULL, 'logo', '2024-08-09 21:41:29', '2024-08-09 21:41:29'),
(500, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 499, 'App\\Models\\Item', 1, 'Assumenda qui et.', NULL, 'logo', '2024-08-09 21:41:29', '2024-08-09 21:41:29'),
(501, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 500, 'App\\Models\\Item', 1, 'Ea distinctio nihil.', NULL, 'logo', '2024-08-09 21:41:29', '2024-08-09 21:41:29'),
(502, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 501, 'App\\Models\\Item', 1, 'Praesentium distinctio quos.', NULL, 'logo', '2024-08-09 21:41:29', '2024-08-09 21:41:29'),
(503, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 502, 'App\\Models\\Item', 1, 'Eum odit.', NULL, 'logo', '2024-08-09 21:41:30', '2024-08-09 21:41:30'),
(504, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 503, 'App\\Models\\Item', 1, 'Porro modi.', NULL, 'logo', '2024-08-09 21:41:30', '2024-08-09 21:41:30'),
(505, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 504, 'App\\Models\\Item', 1, 'Ut commodi adipisci.', NULL, 'logo', '2024-08-09 21:41:30', '2024-08-09 21:41:30'),
(506, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 505, 'App\\Models\\Item', 1, 'Ut nam.', NULL, 'logo', '2024-08-09 21:41:30', '2024-08-09 21:41:30'),
(507, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 506, 'App\\Models\\Item', 1, 'Dolorum inventore iure.', NULL, 'logo', '2024-08-09 21:41:30', '2024-08-09 21:41:30'),
(508, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 507, 'App\\Models\\Item', 1, 'Eum unde eos.', NULL, 'logo', '2024-08-09 21:41:30', '2024-08-09 21:41:30'),
(509, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 508, 'App\\Models\\Item', 1, 'Voluptas voluptas quibusdam.', NULL, 'logo', '2024-08-09 21:41:30', '2024-08-09 21:41:30'),
(510, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 509, 'App\\Models\\Item', 1, 'Et dignissimos dolorum.', NULL, 'logo', '2024-08-09 21:41:30', '2024-08-09 21:41:30'),
(511, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 510, 'App\\Models\\Item', 1, 'Mollitia et.', NULL, 'logo', '2024-08-09 21:41:30', '2024-08-09 21:41:30'),
(512, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 511, 'App\\Models\\Item', 1, 'Et nam harum.', NULL, 'logo', '2024-08-09 21:41:30', '2024-08-09 21:41:30'),
(513, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 512, 'App\\Models\\Item', 1, 'Facilis quo saepe.', NULL, 'logo', '2024-08-09 21:41:30', '2024-08-09 21:41:30'),
(514, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 513, 'App\\Models\\Item', 1, 'Fugit qui quia.', NULL, 'logo', '2024-08-09 21:41:30', '2024-08-09 21:41:30'),
(515, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 514, 'App\\Models\\Item', 1, 'Ipsam dicta.', NULL, 'logo', '2024-08-09 21:41:30', '2024-08-09 21:41:30'),
(516, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 515, 'App\\Models\\Item', 1, 'Ut vitae.', NULL, 'logo', '2024-08-09 21:41:30', '2024-08-09 21:41:30'),
(517, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 516, 'App\\Models\\Item', 1, 'Id quisquam aut.', NULL, 'logo', '2024-08-09 21:41:30', '2024-08-09 21:41:30'),
(518, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 517, 'App\\Models\\Item', 1, 'Placeat voluptatem eum.', NULL, 'logo', '2024-08-09 21:41:30', '2024-08-09 21:41:30'),
(519, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 518, 'App\\Models\\Item', 1, 'Autem quo.', NULL, 'logo', '2024-08-09 21:41:30', '2024-08-09 21:41:30'),
(520, 'images/uploads/5.jpg', 'images/uploads/5.jpg', 519, 'App\\Models\\Item', 1, 'Tempore et omnis.', NULL, 'logo', '2024-08-09 21:41:31', '2024-08-09 21:41:31'),
(521, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 520, 'App\\Models\\Item', 1, 'Officia amet.', NULL, 'logo', '2024-08-09 21:41:31', '2024-08-09 21:41:31'),
(522, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 521, 'App\\Models\\Item', 1, 'Maiores aut.', NULL, 'logo', '2024-08-09 21:41:31', '2024-08-09 21:41:31'),
(523, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 522, 'App\\Models\\Item', 1, 'Nesciunt natus.', NULL, 'logo', '2024-08-09 21:41:31', '2024-08-09 21:41:31'),
(524, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 523, 'App\\Models\\Item', 1, 'Debitis corrupti.', NULL, 'logo', '2024-08-09 21:41:31', '2024-08-09 21:41:31'),
(525, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 524, 'App\\Models\\Item', 1, 'Ab et neque.', NULL, 'logo', '2024-08-09 21:41:31', '2024-08-09 21:41:31'),
(526, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 525, 'App\\Models\\Item', 1, 'Dicta velit.', NULL, 'logo', '2024-08-09 21:41:31', '2024-08-09 21:41:31'),
(527, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 526, 'App\\Models\\Item', 1, 'Doloremque id.', NULL, 'logo', '2024-08-09 21:41:31', '2024-08-09 21:41:31'),
(528, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 527, 'App\\Models\\Item', 1, 'Illo sapiente expedita.', NULL, 'logo', '2024-08-09 21:41:31', '2024-08-09 21:41:31'),
(529, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 528, 'App\\Models\\Item', 1, 'Non quia laborum.', NULL, 'logo', '2024-08-09 21:41:31', '2024-08-09 21:41:31'),
(530, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 529, 'App\\Models\\Item', 1, 'Quia dolores.', NULL, 'logo', '2024-08-09 21:41:31', '2024-08-09 21:41:31'),
(531, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 530, 'App\\Models\\Item', 1, 'Autem accusantium expedita.', NULL, 'logo', '2024-08-09 21:41:31', '2024-08-09 21:41:31'),
(532, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 531, 'App\\Models\\Item', 1, 'Commodi qui numquam.', NULL, 'logo', '2024-08-09 21:41:31', '2024-08-09 21:41:31'),
(533, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 532, 'App\\Models\\Item', 1, 'Voluptatem alias voluptates.', NULL, 'logo', '2024-08-09 21:41:31', '2024-08-09 21:41:31'),
(534, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 533, 'App\\Models\\Item', 1, 'Tempore nulla.', NULL, 'logo', '2024-08-09 21:41:31', '2024-08-09 21:41:31'),
(535, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 534, 'App\\Models\\Item', 1, 'Praesentium quisquam.', NULL, 'logo', '2024-08-09 21:41:31', '2024-08-09 21:41:31'),
(536, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 535, 'App\\Models\\Item', 1, 'Doloremque voluptatum.', NULL, 'logo', '2024-08-09 21:41:32', '2024-08-09 21:41:32'),
(537, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 536, 'App\\Models\\Item', 1, 'Corporis facilis aut.', NULL, 'logo', '2024-08-09 21:41:32', '2024-08-09 21:41:32'),
(538, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 537, 'App\\Models\\Item', 1, 'Consequatur repellendus pariatur.', NULL, 'logo', '2024-08-09 21:41:32', '2024-08-09 21:41:32'),
(539, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 538, 'App\\Models\\Item', 1, 'Non ducimus.', NULL, 'logo', '2024-08-09 21:41:32', '2024-08-09 21:41:32'),
(540, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 539, 'App\\Models\\Item', 1, 'Ipsum molestiae ipsa.', NULL, 'logo', '2024-08-09 21:41:32', '2024-08-09 21:41:32'),
(541, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 540, 'App\\Models\\Item', 1, 'Omnis fugit.', NULL, 'logo', '2024-08-09 21:41:32', '2024-08-09 21:41:32'),
(542, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 541, 'App\\Models\\Item', 1, 'Neque tempore.', NULL, 'logo', '2024-08-09 21:41:32', '2024-08-09 21:41:32'),
(543, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 542, 'App\\Models\\Item', 1, 'Ut voluptatem quas.', NULL, 'logo', '2024-08-09 21:41:32', '2024-08-09 21:41:32'),
(544, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 543, 'App\\Models\\Item', 1, 'Vitae aut.', NULL, 'logo', '2024-08-09 21:41:32', '2024-08-09 21:41:32'),
(545, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 544, 'App\\Models\\Item', 1, 'Sequi doloremque omnis.', NULL, 'logo', '2024-08-09 21:41:32', '2024-08-09 21:41:32'),
(546, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 545, 'App\\Models\\Item', 1, 'Qui consequatur nobis.', NULL, 'logo', '2024-08-09 21:41:32', '2024-08-09 21:41:32'),
(547, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 546, 'App\\Models\\Item', 1, 'Cumque expedita.', NULL, 'logo', '2024-08-09 21:41:32', '2024-08-09 21:41:32'),
(548, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 547, 'App\\Models\\Item', 1, 'Quis laudantium qui.', NULL, 'logo', '2024-08-09 21:41:32', '2024-08-09 21:41:32'),
(549, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 548, 'App\\Models\\Item', 1, 'Iste reiciendis aut.', NULL, 'logo', '2024-08-09 21:41:32', '2024-08-09 21:41:32'),
(550, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 549, 'App\\Models\\Item', 1, 'Commodi sequi.', NULL, 'logo', '2024-08-09 21:41:32', '2024-08-09 21:41:32'),
(551, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 550, 'App\\Models\\Item', 1, 'Sapiente amet.', NULL, 'logo', '2024-08-09 21:41:32', '2024-08-09 21:41:32'),
(552, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 551, 'App\\Models\\Item', 1, 'Aliquam voluptatibus.', NULL, 'logo', '2024-08-09 21:41:32', '2024-08-09 21:41:32'),
(553, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 552, 'App\\Models\\Item', 1, 'Porro incidunt.', NULL, 'logo', '2024-08-09 21:41:33', '2024-08-09 21:41:33'),
(554, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 553, 'App\\Models\\Item', 1, 'Aut velit quae.', NULL, 'logo', '2024-08-09 21:41:33', '2024-08-09 21:41:33'),
(555, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 554, 'App\\Models\\Item', 1, 'Natus quibusdam reprehenderit.', NULL, 'logo', '2024-08-09 21:41:33', '2024-08-09 21:41:33'),
(556, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 555, 'App\\Models\\Item', 1, 'Repellat mollitia iure.', NULL, 'logo', '2024-08-09 21:41:33', '2024-08-09 21:41:33'),
(557, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 556, 'App\\Models\\Item', 1, 'Aut ducimus velit.', NULL, 'logo', '2024-08-09 21:41:33', '2024-08-09 21:41:33'),
(558, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 557, 'App\\Models\\Item', 1, 'Illum voluptatem.', NULL, 'logo', '2024-08-09 21:41:33', '2024-08-09 21:41:33'),
(559, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 558, 'App\\Models\\Item', 1, 'Numquam delectus dolorem.', NULL, 'logo', '2024-08-09 21:41:33', '2024-08-09 21:41:33'),
(560, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 559, 'App\\Models\\Item', 1, 'Officiis quia et.', NULL, 'logo', '2024-08-09 21:41:33', '2024-08-09 21:41:33'),
(561, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 560, 'App\\Models\\Item', 1, 'Impedit quasi assumenda.', NULL, 'logo', '2024-08-09 21:41:33', '2024-08-09 21:41:33'),
(562, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 561, 'App\\Models\\Item', 1, 'Non dolorem.', NULL, 'logo', '2024-08-09 21:41:33', '2024-08-09 21:41:33'),
(563, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 562, 'App\\Models\\Item', 1, 'Expedita ut dolorem.', NULL, 'logo', '2024-08-09 21:41:33', '2024-08-09 21:41:33'),
(564, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 563, 'App\\Models\\Item', 1, 'Aperiam dolor.', NULL, 'logo', '2024-08-09 21:41:33', '2024-08-09 21:41:33'),
(565, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 564, 'App\\Models\\Item', 1, 'Reprehenderit exercitationem aliquid.', NULL, 'logo', '2024-08-09 21:41:33', '2024-08-09 21:41:33'),
(566, 'images/uploads/26.jpg', 'images/uploads/26.jpg', 565, 'App\\Models\\Item', 1, 'Eos vel.', NULL, 'logo', '2024-08-09 21:41:33', '2024-08-09 21:41:33'),
(567, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 566, 'App\\Models\\Item', 1, 'Praesentium assumenda.', NULL, 'logo', '2024-08-09 21:41:33', '2024-08-09 21:41:33'),
(568, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 567, 'App\\Models\\Item', 1, 'Sed totam id.', NULL, 'logo', '2024-08-09 21:41:33', '2024-08-09 21:41:33'),
(569, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 568, 'App\\Models\\Item', 1, 'Consectetur iure.', NULL, 'logo', '2024-08-09 21:41:34', '2024-08-09 21:41:34'),
(570, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 569, 'App\\Models\\Item', 1, 'Ipsa ut.', NULL, 'logo', '2024-08-09 21:41:34', '2024-08-09 21:41:34'),
(571, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 570, 'App\\Models\\Item', 1, 'Ducimus omnis debitis.', NULL, 'logo', '2024-08-09 21:41:34', '2024-08-09 21:41:34'),
(572, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 571, 'App\\Models\\Item', 1, 'Animi porro soluta.', NULL, 'logo', '2024-08-09 21:41:34', '2024-08-09 21:41:34'),
(573, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 572, 'App\\Models\\Item', 1, 'Non sint natus.', NULL, 'logo', '2024-08-09 21:41:34', '2024-08-09 21:41:34'),
(574, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 573, 'App\\Models\\Item', 1, 'Voluptate dignissimos in.', NULL, 'logo', '2024-08-09 21:41:34', '2024-08-09 21:41:34'),
(575, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 574, 'App\\Models\\Item', 1, 'Quisquam qui debitis.', NULL, 'logo', '2024-08-09 21:41:34', '2024-08-09 21:41:34'),
(576, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 575, 'App\\Models\\Item', 1, 'A facilis.', NULL, 'logo', '2024-08-09 21:41:34', '2024-08-09 21:41:34'),
(577, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 576, 'App\\Models\\Item', 1, 'Et et.', NULL, 'logo', '2024-08-09 21:41:34', '2024-08-09 21:41:34'),
(578, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 577, 'App\\Models\\Item', 1, 'Voluptatibus esse aut.', NULL, 'logo', '2024-08-09 21:41:34', '2024-08-09 21:41:34'),
(579, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 578, 'App\\Models\\Item', 1, 'Veritatis ut.', NULL, 'logo', '2024-08-09 21:41:34', '2024-08-09 21:41:34'),
(580, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 579, 'App\\Models\\Item', 1, 'Placeat beatae veritatis.', NULL, 'logo', '2024-08-09 21:41:34', '2024-08-09 21:41:34'),
(581, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 580, 'App\\Models\\Item', 1, 'Aperiam qui minima.', NULL, 'logo', '2024-08-09 21:41:34', '2024-08-09 21:41:34'),
(582, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 581, 'App\\Models\\Item', 1, 'Est quis qui.', NULL, 'logo', '2024-08-09 21:41:34', '2024-08-09 21:41:34'),
(583, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 582, 'App\\Models\\Item', 1, 'Corporis iusto ullam.', NULL, 'logo', '2024-08-09 21:41:34', '2024-08-09 21:41:34'),
(584, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 583, 'App\\Models\\Item', 1, 'Fuga maiores.', NULL, 'logo', '2024-08-09 21:41:34', '2024-08-09 21:41:34'),
(585, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 584, 'App\\Models\\Item', 1, 'Voluptas maxime a.', NULL, 'logo', '2024-08-09 21:41:34', '2024-08-09 21:41:34'),
(586, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 585, 'App\\Models\\Item', 1, 'Et sunt libero.', NULL, 'logo', '2024-08-09 21:41:35', '2024-08-09 21:41:35'),
(587, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 586, 'App\\Models\\Item', 1, 'Aliquid aliquam.', NULL, 'logo', '2024-08-09 21:41:35', '2024-08-09 21:41:35'),
(588, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 587, 'App\\Models\\Item', 1, 'Nihil aut.', NULL, 'logo', '2024-08-09 21:41:35', '2024-08-09 21:41:35'),
(589, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 588, 'App\\Models\\Item', 1, 'Ut dolore.', NULL, 'logo', '2024-08-09 21:41:35', '2024-08-09 21:41:35'),
(590, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 589, 'App\\Models\\Item', 1, 'Corporis deleniti.', NULL, 'logo', '2024-08-09 21:41:35', '2024-08-09 21:41:35'),
(591, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 590, 'App\\Models\\Item', 1, 'Ea harum voluptas.', NULL, 'logo', '2024-08-09 21:41:35', '2024-08-09 21:41:35'),
(592, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 591, 'App\\Models\\Item', 1, 'Voluptas qui ut.', NULL, 'logo', '2024-08-09 21:41:35', '2024-08-09 21:41:35'),
(593, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 592, 'App\\Models\\Item', 1, 'Ipsa eos ut.', NULL, 'logo', '2024-08-09 21:41:35', '2024-08-09 21:41:35'),
(594, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 593, 'App\\Models\\Item', 1, 'Assumenda ratione perferendis.', NULL, 'logo', '2024-08-09 21:41:35', '2024-08-09 21:41:35'),
(595, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 594, 'App\\Models\\Item', 1, 'Rerum in et.', NULL, 'logo', '2024-08-09 21:41:35', '2024-08-09 21:41:35'),
(596, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 595, 'App\\Models\\Item', 1, 'Molestias in repellat.', NULL, 'logo', '2024-08-09 21:41:35', '2024-08-09 21:41:35'),
(597, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 596, 'App\\Models\\Item', 1, 'Est et quia.', NULL, 'logo', '2024-08-09 21:41:35', '2024-08-09 21:41:35'),
(598, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 597, 'App\\Models\\Item', 1, 'Sunt beatae laudantium.', NULL, 'logo', '2024-08-09 21:41:35', '2024-08-09 21:41:35'),
(599, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 598, 'App\\Models\\Item', 1, 'Deleniti pariatur cupiditate.', NULL, 'logo', '2024-08-09 21:41:35', '2024-08-09 21:41:35'),
(600, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 599, 'App\\Models\\Item', 1, 'Molestiae dolores.', NULL, 'logo', '2024-08-09 21:41:35', '2024-08-09 21:41:35'),
(601, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 600, 'App\\Models\\Item', 1, 'Recusandae illum aliquam.', NULL, 'logo', '2024-08-09 21:41:35', '2024-08-09 21:41:35'),
(602, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 601, 'App\\Models\\Item', 1, 'Et velit.', NULL, 'logo', '2024-08-09 21:41:36', '2024-08-09 21:41:36'),
(603, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 602, 'App\\Models\\Item', 1, 'Perferendis voluptas iste.', NULL, 'logo', '2024-08-09 21:41:36', '2024-08-09 21:41:36'),
(604, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 603, 'App\\Models\\Item', 1, 'Sit rerum eaque.', NULL, 'logo', '2024-08-09 21:41:36', '2024-08-09 21:41:36'),
(605, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 604, 'App\\Models\\Item', 1, 'Eum repellat est.', NULL, 'logo', '2024-08-09 21:41:36', '2024-08-09 21:41:36');
INSERT INTO `images` (`id`, `thumbnail`, `path`, `imageable_id`, `imageable_type`, `is_primary`, `name`, `size`, `type`, `created_at`, `updated_at`) VALUES
(606, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 605, 'App\\Models\\Item', 1, 'Tempora id.', NULL, 'logo', '2024-08-09 21:41:36', '2024-08-09 21:41:36'),
(607, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 606, 'App\\Models\\Item', 1, 'Tenetur atque.', NULL, 'logo', '2024-08-09 21:41:36', '2024-08-09 21:41:36'),
(608, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 607, 'App\\Models\\Item', 1, 'Mollitia adipisci qui.', NULL, 'logo', '2024-08-09 21:41:36', '2024-08-09 21:41:36'),
(609, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 608, 'App\\Models\\Item', 1, 'Est illum aliquam.', NULL, 'logo', '2024-08-09 21:41:36', '2024-08-09 21:41:36'),
(610, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 609, 'App\\Models\\Item', 1, 'Odio quia quo.', NULL, 'logo', '2024-08-09 21:41:36', '2024-08-09 21:41:36'),
(611, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 610, 'App\\Models\\Item', 1, 'Eius at assumenda.', NULL, 'logo', '2024-08-09 21:41:36', '2024-08-09 21:41:36'),
(612, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 611, 'App\\Models\\Item', 1, 'Vel et eum.', NULL, 'logo', '2024-08-09 21:41:36', '2024-08-09 21:41:36'),
(613, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 612, 'App\\Models\\Item', 1, 'Illum ipsa.', NULL, 'logo', '2024-08-09 21:41:36', '2024-08-09 21:41:36'),
(614, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 613, 'App\\Models\\Item', 1, 'Ipsa nobis.', NULL, 'logo', '2024-08-09 21:41:36', '2024-08-09 21:41:36'),
(615, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 614, 'App\\Models\\Item', 1, 'Sunt esse.', NULL, 'logo', '2024-08-09 21:41:36', '2024-08-09 21:41:36'),
(616, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 615, 'App\\Models\\Item', 1, 'Voluptatem possimus.', NULL, 'logo', '2024-08-09 21:41:36', '2024-08-09 21:41:36'),
(617, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 616, 'App\\Models\\Item', 1, 'Maiores blanditiis recusandae.', NULL, 'logo', '2024-08-09 21:41:36', '2024-08-09 21:41:36'),
(618, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 617, 'App\\Models\\Item', 1, 'Est qui est.', NULL, 'logo', '2024-08-09 21:41:36', '2024-08-09 21:41:36'),
(619, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 618, 'App\\Models\\Item', 1, 'Nulla ipsum.', NULL, 'logo', '2024-08-09 21:41:37', '2024-08-09 21:41:37'),
(620, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 619, 'App\\Models\\Item', 1, 'Consectetur inventore unde.', NULL, 'logo', '2024-08-09 21:41:37', '2024-08-09 21:41:37'),
(621, 'images/uploads/26.jpg', 'images/uploads/26.jpg', 620, 'App\\Models\\Item', 1, 'Laboriosam fugit fuga.', NULL, 'logo', '2024-08-09 21:41:37', '2024-08-09 21:41:37'),
(622, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 621, 'App\\Models\\Item', 1, 'Ipsam omnis.', NULL, 'logo', '2024-08-09 21:41:37', '2024-08-09 21:41:37'),
(623, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 622, 'App\\Models\\Item', 1, 'Ducimus qui deleniti.', NULL, 'logo', '2024-08-09 21:41:37', '2024-08-09 21:41:37'),
(624, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 623, 'App\\Models\\Item', 1, 'Voluptates ipsam.', NULL, 'logo', '2024-08-09 21:41:37', '2024-08-09 21:41:37'),
(625, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 624, 'App\\Models\\Item', 1, 'Recusandae in voluptatum.', NULL, 'logo', '2024-08-09 21:41:37', '2024-08-09 21:41:37'),
(626, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 625, 'App\\Models\\Item', 1, 'Sit eveniet non.', NULL, 'logo', '2024-08-09 21:41:37', '2024-08-09 21:41:37'),
(627, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 626, 'App\\Models\\Item', 1, 'Reiciendis non fuga.', NULL, 'logo', '2024-08-09 21:41:37', '2024-08-09 21:41:37'),
(628, 'images/uploads/26.jpg', 'images/uploads/26.jpg', 627, 'App\\Models\\Item', 1, 'Atque voluptate magni.', NULL, 'logo', '2024-08-09 21:41:37', '2024-08-09 21:41:37'),
(629, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 628, 'App\\Models\\Item', 1, 'Hic repellat.', NULL, 'logo', '2024-08-09 21:41:37', '2024-08-09 21:41:37'),
(630, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 629, 'App\\Models\\Item', 1, 'Ullam vitae odio.', NULL, 'logo', '2024-08-09 21:41:37', '2024-08-09 21:41:37'),
(631, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 630, 'App\\Models\\Item', 1, 'Quia veniam.', NULL, 'logo', '2024-08-09 21:41:37', '2024-08-09 21:41:37'),
(632, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 631, 'App\\Models\\Item', 1, 'Praesentium molestiae sint.', NULL, 'logo', '2024-08-09 21:41:37', '2024-08-09 21:41:37'),
(633, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 632, 'App\\Models\\Item', 1, 'Et vero et.', NULL, 'logo', '2024-08-09 21:41:37', '2024-08-09 21:41:37'),
(634, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 633, 'App\\Models\\Item', 1, 'Quia illo.', NULL, 'logo', '2024-08-09 21:41:37', '2024-08-09 21:41:37'),
(635, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 634, 'App\\Models\\Item', 1, 'Exercitationem culpa.', NULL, 'logo', '2024-08-09 21:41:37', '2024-08-09 21:41:37'),
(636, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 635, 'App\\Models\\Item', 1, 'Neque voluptas quia.', NULL, 'logo', '2024-08-09 21:41:38', '2024-08-09 21:41:38'),
(637, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 636, 'App\\Models\\Item', 1, 'Et quidem necessitatibus.', NULL, 'logo', '2024-08-09 21:41:38', '2024-08-09 21:41:38'),
(638, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 637, 'App\\Models\\Item', 1, 'Aut nihil autem.', NULL, 'logo', '2024-08-09 21:41:38', '2024-08-09 21:41:38'),
(639, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 638, 'App\\Models\\Item', 1, 'Aspernatur et.', NULL, 'logo', '2024-08-09 21:41:38', '2024-08-09 21:41:38'),
(640, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 639, 'App\\Models\\Item', 1, 'Amet praesentium nulla.', NULL, 'logo', '2024-08-09 21:41:38', '2024-08-09 21:41:38'),
(641, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 640, 'App\\Models\\Item', 1, 'Rerum tempore veniam.', NULL, 'logo', '2024-08-09 21:41:38', '2024-08-09 21:41:38'),
(642, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 641, 'App\\Models\\Item', 1, 'Quidem est.', NULL, 'logo', '2024-08-09 21:41:38', '2024-08-09 21:41:38'),
(643, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 642, 'App\\Models\\Item', 1, 'Fuga dicta inventore.', NULL, 'logo', '2024-08-09 21:41:38', '2024-08-09 21:41:38'),
(644, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 643, 'App\\Models\\Item', 1, 'Vel qui ab.', NULL, 'logo', '2024-08-09 21:41:38', '2024-08-09 21:41:38'),
(645, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 644, 'App\\Models\\Item', 1, 'Autem alias.', NULL, 'logo', '2024-08-09 21:41:38', '2024-08-09 21:41:38'),
(646, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 645, 'App\\Models\\Item', 1, 'Illo sit odio.', NULL, 'logo', '2024-08-09 21:41:38', '2024-08-09 21:41:38'),
(647, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 646, 'App\\Models\\Item', 1, 'Porro dicta rem.', NULL, 'logo', '2024-08-09 21:41:38', '2024-08-09 21:41:38'),
(648, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 647, 'App\\Models\\Item', 1, 'Aut deserunt.', NULL, 'logo', '2024-08-09 21:41:38', '2024-08-09 21:41:38'),
(649, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 648, 'App\\Models\\Item', 1, 'Saepe dolores esse.', NULL, 'logo', '2024-08-09 21:41:38', '2024-08-09 21:41:38'),
(650, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 649, 'App\\Models\\Item', 1, 'Corrupti labore ut.', NULL, 'logo', '2024-08-09 21:41:38', '2024-08-09 21:41:38'),
(651, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 650, 'App\\Models\\Item', 1, 'Facere a harum.', NULL, 'logo', '2024-08-09 21:41:38', '2024-08-09 21:41:38'),
(652, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 651, 'App\\Models\\Item', 1, 'Quisquam voluptate odio.', NULL, 'logo', '2024-08-09 21:41:38', '2024-08-09 21:41:38'),
(653, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 652, 'App\\Models\\Item', 1, 'Dolorem voluptates.', NULL, 'logo', '2024-08-09 21:41:39', '2024-08-09 21:41:39'),
(654, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 653, 'App\\Models\\Item', 1, 'Beatae voluptatem eveniet.', NULL, 'logo', '2024-08-09 21:41:39', '2024-08-09 21:41:39'),
(655, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 654, 'App\\Models\\Item', 1, 'Necessitatibus fuga.', NULL, 'logo', '2024-08-09 21:41:39', '2024-08-09 21:41:39'),
(656, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 655, 'App\\Models\\Item', 1, 'Fuga in.', NULL, 'logo', '2024-08-09 21:41:39', '2024-08-09 21:41:39'),
(657, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 656, 'App\\Models\\Item', 1, 'Fugiat atque.', NULL, 'logo', '2024-08-09 21:41:39', '2024-08-09 21:41:39'),
(658, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 657, 'App\\Models\\Item', 1, 'Quas sequi optio.', NULL, 'logo', '2024-08-09 21:41:39', '2024-08-09 21:41:39'),
(659, 'images/uploads/26.jpg', 'images/uploads/26.jpg', 658, 'App\\Models\\Item', 1, 'Deserunt sint.', NULL, 'logo', '2024-08-09 21:41:39', '2024-08-09 21:41:39'),
(660, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 659, 'App\\Models\\Item', 1, 'Error non.', NULL, 'logo', '2024-08-09 21:41:39', '2024-08-09 21:41:39'),
(661, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 660, 'App\\Models\\Item', 1, 'Inventore occaecati.', NULL, 'logo', '2024-08-09 21:41:39', '2024-08-09 21:41:39'),
(662, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 661, 'App\\Models\\Item', 1, 'Corrupti nobis temporibus.', NULL, 'logo', '2024-08-09 21:41:39', '2024-08-09 21:41:39'),
(663, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 662, 'App\\Models\\Item', 1, 'Eius quia.', NULL, 'logo', '2024-08-09 21:41:39', '2024-08-09 21:41:39'),
(664, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 663, 'App\\Models\\Item', 1, 'Ipsam sunt.', NULL, 'logo', '2024-08-09 21:41:39', '2024-08-09 21:41:39'),
(665, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 664, 'App\\Models\\Item', 1, 'Corrupti tenetur.', NULL, 'logo', '2024-08-09 21:41:39', '2024-08-09 21:41:39'),
(666, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 665, 'App\\Models\\Item', 1, 'Nulla deleniti.', NULL, 'logo', '2024-08-09 21:41:39', '2024-08-09 21:41:39'),
(668, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 667, 'App\\Models\\Item', 1, 'Assumenda officia et.', NULL, 'logo', '2024-08-09 21:41:39', '2024-08-09 21:41:39'),
(669, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 668, 'App\\Models\\Item', 1, 'Eligendi aliquam.', NULL, 'logo', '2024-08-09 21:41:40', '2024-08-09 21:41:40'),
(670, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 669, 'App\\Models\\Item', 1, 'Deleniti et ratione.', NULL, 'logo', '2024-08-09 21:41:40', '2024-08-09 21:41:40'),
(671, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 670, 'App\\Models\\Item', 1, 'Earum laudantium.', NULL, 'logo', '2024-08-09 21:41:40', '2024-08-09 21:41:40'),
(672, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 671, 'App\\Models\\Item', 1, 'Officia velit asperiores.', NULL, 'logo', '2024-08-09 21:41:40', '2024-08-09 21:41:40'),
(673, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 672, 'App\\Models\\Item', 1, 'Maxime ea.', NULL, 'logo', '2024-08-09 21:41:40', '2024-08-09 21:41:40'),
(674, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 673, 'App\\Models\\Item', 1, 'Corporis accusantium.', NULL, 'logo', '2024-08-09 21:41:40', '2024-08-09 21:41:40'),
(675, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 674, 'App\\Models\\Item', 1, 'Dicta qui sunt.', NULL, 'logo', '2024-08-09 21:41:40', '2024-08-09 21:41:40'),
(676, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 675, 'App\\Models\\Item', 1, 'In animi.', NULL, 'logo', '2024-08-09 21:41:40', '2024-08-09 21:41:40'),
(677, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 676, 'App\\Models\\Item', 1, 'Est quidem.', NULL, 'logo', '2024-08-09 21:41:40', '2024-08-09 21:41:40'),
(678, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 677, 'App\\Models\\Item', 1, 'Consectetur hic et.', NULL, 'logo', '2024-08-09 21:41:40', '2024-08-09 21:41:40'),
(679, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 678, 'App\\Models\\Item', 1, 'Et quo.', NULL, 'logo', '2024-08-09 21:41:40', '2024-08-09 21:41:40'),
(680, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 679, 'App\\Models\\Item', 1, 'Aliquam ipsa.', NULL, 'logo', '2024-08-09 21:41:40', '2024-08-09 21:41:40'),
(681, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 680, 'App\\Models\\Item', 1, 'Modi ut.', NULL, 'logo', '2024-08-09 21:41:40', '2024-08-09 21:41:40'),
(682, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 681, 'App\\Models\\Item', 1, 'Incidunt dicta nisi.', NULL, 'logo', '2024-08-09 21:41:40', '2024-08-09 21:41:40'),
(683, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 682, 'App\\Models\\Item', 1, 'Molestias debitis.', NULL, 'logo', '2024-08-09 21:41:40', '2024-08-09 21:41:40'),
(684, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 683, 'App\\Models\\Item', 1, 'Vel omnis.', NULL, 'logo', '2024-08-09 21:41:40', '2024-08-09 21:41:40'),
(685, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 684, 'App\\Models\\Item', 1, 'Sit accusantium.', NULL, 'logo', '2024-08-09 21:41:41', '2024-08-09 21:41:41'),
(686, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 685, 'App\\Models\\Item', 1, 'Dolor alias aliquid.', NULL, 'logo', '2024-08-09 21:41:41', '2024-08-09 21:41:41'),
(687, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 686, 'App\\Models\\Item', 1, 'Debitis est saepe.', NULL, 'logo', '2024-08-09 21:41:41', '2024-08-09 21:41:41'),
(688, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 687, 'App\\Models\\Item', 1, 'Et voluptas odio.', NULL, 'logo', '2024-08-09 21:41:41', '2024-08-09 21:41:41'),
(689, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 688, 'App\\Models\\Item', 1, 'Magni similique.', NULL, 'logo', '2024-08-09 21:41:41', '2024-08-09 21:41:41'),
(690, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 689, 'App\\Models\\Item', 1, 'Temporibus illum.', NULL, 'logo', '2024-08-09 21:41:41', '2024-08-09 21:41:41'),
(691, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 690, 'App\\Models\\Item', 1, 'Culpa consequuntur.', NULL, 'logo', '2024-08-09 21:41:41', '2024-08-09 21:41:41'),
(692, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 691, 'App\\Models\\Item', 1, 'Cum ut perferendis.', NULL, 'logo', '2024-08-09 21:41:41', '2024-08-09 21:41:41'),
(693, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 692, 'App\\Models\\Item', 1, 'Laborum eum ab.', NULL, 'logo', '2024-08-09 21:41:41', '2024-08-09 21:41:41'),
(694, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 693, 'App\\Models\\Item', 1, 'Quas rerum itaque.', NULL, 'logo', '2024-08-09 21:41:41', '2024-08-09 21:41:41'),
(695, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 694, 'App\\Models\\Item', 1, 'Delectus tempora commodi.', NULL, 'logo', '2024-08-09 21:41:41', '2024-08-09 21:41:41'),
(696, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 695, 'App\\Models\\Item', 1, 'Magnam harum ducimus.', NULL, 'logo', '2024-08-09 21:41:41', '2024-08-09 21:41:41'),
(697, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 696, 'App\\Models\\Item', 1, 'Facere modi aperiam.', NULL, 'logo', '2024-08-09 21:41:41', '2024-08-09 21:41:41'),
(698, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 697, 'App\\Models\\Item', 1, 'Qui est.', NULL, 'logo', '2024-08-09 21:41:41', '2024-08-09 21:41:41'),
(699, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 698, 'App\\Models\\Item', 1, 'Fugit harum.', NULL, 'logo', '2024-08-09 21:41:41', '2024-08-09 21:41:41'),
(700, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 699, 'App\\Models\\Item', 1, 'Exercitationem maxime.', NULL, 'logo', '2024-08-09 21:41:41', '2024-08-09 21:41:41'),
(701, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 700, 'App\\Models\\Item', 1, 'Deserunt occaecati.', NULL, 'logo', '2024-08-09 21:41:41', '2024-08-09 21:41:41'),
(702, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 701, 'App\\Models\\Item', 1, 'Est voluptas cupiditate.', NULL, 'logo', '2024-08-09 21:41:41', '2024-08-09 21:41:41'),
(703, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 702, 'App\\Models\\Item', 1, 'Nisi eum est.', NULL, 'logo', '2024-08-09 21:41:42', '2024-08-09 21:41:42'),
(704, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 703, 'App\\Models\\Item', 1, 'Placeat et.', NULL, 'logo', '2024-08-09 21:41:42', '2024-08-09 21:41:42'),
(705, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 704, 'App\\Models\\Item', 1, 'Commodi praesentium.', NULL, 'logo', '2024-08-09 21:41:42', '2024-08-09 21:41:42'),
(706, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 705, 'App\\Models\\Item', 1, 'Ipsa earum.', NULL, 'logo', '2024-08-09 21:41:42', '2024-08-09 21:41:42'),
(707, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 706, 'App\\Models\\Item', 1, 'Quos architecto.', NULL, 'logo', '2024-08-09 21:41:42', '2024-08-09 21:41:42'),
(708, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 707, 'App\\Models\\Item', 1, 'Ratione vitae.', NULL, 'logo', '2024-08-09 21:41:42', '2024-08-09 21:41:42'),
(709, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 708, 'App\\Models\\Item', 1, 'Sed praesentium.', NULL, 'logo', '2024-08-09 21:41:42', '2024-08-09 21:41:42'),
(710, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 709, 'App\\Models\\Item', 1, 'Explicabo reprehenderit.', NULL, 'logo', '2024-08-09 21:41:42', '2024-08-09 21:41:42'),
(711, 'images/uploads/26.jpg', 'images/uploads/26.jpg', 710, 'App\\Models\\Item', 1, 'Aliquid nobis modi.', NULL, 'logo', '2024-08-09 21:41:42', '2024-08-09 21:41:42'),
(712, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 711, 'App\\Models\\Item', 1, 'Quibusdam ducimus enim.', NULL, 'logo', '2024-08-09 21:41:42', '2024-08-09 21:41:42'),
(713, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 712, 'App\\Models\\Item', 1, 'Id ipsa.', NULL, 'logo', '2024-08-09 21:41:42', '2024-08-09 21:41:42'),
(714, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 713, 'App\\Models\\Item', 1, 'Non qui.', NULL, 'logo', '2024-08-09 21:41:42', '2024-08-09 21:41:42'),
(715, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 714, 'App\\Models\\Item', 1, 'Consequuntur possimus ipsam.', NULL, 'logo', '2024-08-09 21:41:42', '2024-08-09 21:41:42'),
(716, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 715, 'App\\Models\\Item', 1, 'Soluta eum.', NULL, 'logo', '2024-08-09 21:41:42', '2024-08-09 21:41:42'),
(717, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 716, 'App\\Models\\Item', 1, 'Sunt praesentium corporis.', NULL, 'logo', '2024-08-09 21:41:42', '2024-08-09 21:41:42'),
(719, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 718, 'App\\Models\\Item', 1, 'Cumque et.', NULL, 'logo', '2024-08-09 21:41:42', '2024-08-09 21:41:42'),
(720, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 719, 'App\\Models\\Item', 1, 'Nobis et sit.', NULL, 'logo', '2024-08-09 21:41:43', '2024-08-09 21:41:43'),
(721, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 720, 'App\\Models\\Item', 1, 'Aliquam ut.', NULL, 'logo', '2024-08-09 21:41:43', '2024-08-09 21:41:43'),
(722, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 721, 'App\\Models\\Item', 1, 'Fugit aut.', NULL, 'logo', '2024-08-09 21:41:43', '2024-08-09 21:41:43'),
(723, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 722, 'App\\Models\\Item', 1, 'Enim unde velit.', NULL, 'logo', '2024-08-09 21:41:43', '2024-08-09 21:41:43'),
(724, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 723, 'App\\Models\\Item', 1, 'Ipsum id.', NULL, 'logo', '2024-08-09 21:41:43', '2024-08-09 21:41:43'),
(725, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 724, 'App\\Models\\Item', 1, 'Assumenda necessitatibus minima.', NULL, 'logo', '2024-08-09 21:41:43', '2024-08-09 21:41:43'),
(726, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 725, 'App\\Models\\Item', 1, 'Repellendus eum.', NULL, 'logo', '2024-08-09 21:41:43', '2024-08-09 21:41:43'),
(727, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 726, 'App\\Models\\Item', 1, 'Distinctio quas sapiente.', NULL, 'logo', '2024-08-09 21:41:43', '2024-08-09 21:41:43'),
(728, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 727, 'App\\Models\\Item', 1, 'Voluptatem numquam.', NULL, 'logo', '2024-08-09 21:41:43', '2024-08-09 21:41:43'),
(729, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 728, 'App\\Models\\Item', 1, 'Ipsa delectus.', NULL, 'logo', '2024-08-09 21:41:43', '2024-08-09 21:41:43'),
(730, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 729, 'App\\Models\\Item', 1, 'Similique ut.', NULL, 'logo', '2024-08-09 21:41:43', '2024-08-09 21:41:43'),
(731, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 730, 'App\\Models\\Item', 1, 'Provident accusamus.', NULL, 'logo', '2024-08-09 21:41:43', '2024-08-09 21:41:43'),
(732, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 731, 'App\\Models\\Item', 1, 'Omnis sed.', NULL, 'logo', '2024-08-09 21:41:43', '2024-08-09 21:41:43'),
(733, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 732, 'App\\Models\\Item', 1, 'Provident dolor blanditiis.', NULL, 'logo', '2024-08-09 21:41:43', '2024-08-09 21:41:43'),
(734, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 733, 'App\\Models\\Item', 1, 'Deserunt aliquam fuga.', NULL, 'logo', '2024-08-09 21:41:43', '2024-08-09 21:41:43'),
(735, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 734, 'App\\Models\\Item', 1, 'Sed asperiores.', NULL, 'logo', '2024-08-09 21:41:43', '2024-08-09 21:41:43'),
(736, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 735, 'App\\Models\\Item', 1, 'Maiores eius omnis.', NULL, 'logo', '2024-08-09 21:41:43', '2024-08-09 21:41:43'),
(737, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 736, 'App\\Models\\Item', 1, 'Ipsum rem molestiae.', NULL, 'logo', '2024-08-09 21:41:44', '2024-08-09 21:41:44'),
(738, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 737, 'App\\Models\\Item', 1, 'Iure consectetur.', NULL, 'logo', '2024-08-09 21:41:44', '2024-08-09 21:41:44'),
(739, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 738, 'App\\Models\\Item', 1, 'Laboriosam quia.', NULL, 'logo', '2024-08-09 21:41:44', '2024-08-09 21:41:44'),
(740, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 739, 'App\\Models\\Item', 1, 'Cumque suscipit maxime.', NULL, 'logo', '2024-08-09 21:41:44', '2024-08-09 21:41:44'),
(741, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 740, 'App\\Models\\Item', 1, 'Neque natus.', NULL, 'logo', '2024-08-09 21:41:44', '2024-08-09 21:41:44'),
(742, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 741, 'App\\Models\\Item', 1, 'Magnam consectetur maiores.', NULL, 'logo', '2024-08-09 21:41:44', '2024-08-09 21:41:44'),
(743, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 742, 'App\\Models\\Item', 1, 'Provident fugit numquam.', NULL, 'logo', '2024-08-09 21:41:44', '2024-08-09 21:41:44'),
(744, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 743, 'App\\Models\\Item', 1, 'Placeat debitis.', NULL, 'logo', '2024-08-09 21:41:44', '2024-08-09 21:41:44'),
(745, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 744, 'App\\Models\\Item', 1, 'Qui culpa.', NULL, 'logo', '2024-08-09 21:41:44', '2024-08-09 21:41:44'),
(746, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 745, 'App\\Models\\Item', 1, 'Sint aut.', NULL, 'logo', '2024-08-09 21:41:44', '2024-08-09 21:41:44'),
(747, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 746, 'App\\Models\\Item', 1, 'Quia aperiam sunt.', NULL, 'logo', '2024-08-09 21:41:44', '2024-08-09 21:41:44'),
(748, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 747, 'App\\Models\\Item', 1, 'Ut aut.', NULL, 'logo', '2024-08-09 21:41:44', '2024-08-09 21:41:44'),
(749, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 748, 'App\\Models\\Item', 1, 'Eum dolorum in.', NULL, 'logo', '2024-08-09 21:41:44', '2024-08-09 21:41:44'),
(750, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 749, 'App\\Models\\Item', 1, 'Dolorem quia quo.', NULL, 'logo', '2024-08-09 21:41:44', '2024-08-09 21:41:44'),
(751, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 750, 'App\\Models\\Item', 1, 'Ipsam consequatur.', NULL, 'logo', '2024-08-09 21:41:44', '2024-08-09 21:41:44'),
(752, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 751, 'App\\Models\\Item', 1, 'Sed quidem rem.', NULL, 'logo', '2024-08-09 21:41:44', '2024-08-09 21:41:44'),
(753, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 752, 'App\\Models\\Item', 1, 'Nisi quod sed.', NULL, 'logo', '2024-08-09 21:41:44', '2024-08-09 21:41:44'),
(754, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 753, 'App\\Models\\Item', 1, 'Maiores vel.', NULL, 'logo', '2024-08-09 21:41:45', '2024-08-09 21:41:45'),
(755, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 754, 'App\\Models\\Item', 1, 'Qui porro error.', NULL, 'logo', '2024-08-09 21:41:45', '2024-08-09 21:41:45'),
(756, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 755, 'App\\Models\\Item', 1, 'Est vel.', NULL, 'logo', '2024-08-09 21:41:45', '2024-08-09 21:41:45'),
(757, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 756, 'App\\Models\\Item', 1, 'Quis alias.', NULL, 'logo', '2024-08-09 21:41:45', '2024-08-09 21:41:45'),
(758, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 757, 'App\\Models\\Item', 1, 'Modi nostrum rerum.', NULL, 'logo', '2024-08-09 21:41:45', '2024-08-09 21:41:45'),
(759, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 758, 'App\\Models\\Item', 1, 'Commodi ipsum.', NULL, 'logo', '2024-08-09 21:41:45', '2024-08-09 21:41:45'),
(760, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 759, 'App\\Models\\Item', 1, 'Rerum dolorum.', NULL, 'logo', '2024-08-09 21:41:45', '2024-08-09 21:41:45'),
(761, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 760, 'App\\Models\\Item', 1, 'Qui earum ipsum.', NULL, 'logo', '2024-08-09 21:41:45', '2024-08-09 21:41:45'),
(762, 'images/uploads/5.jpg', 'images/uploads/5.jpg', 761, 'App\\Models\\Item', 1, 'Provident commodi dolorum.', NULL, 'logo', '2024-08-09 21:41:45', '2024-08-09 21:41:45'),
(763, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 762, 'App\\Models\\Item', 1, 'Temporibus ad.', NULL, 'logo', '2024-08-09 21:41:45', '2024-08-09 21:41:45'),
(764, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 763, 'App\\Models\\Item', 1, 'Similique suscipit cum.', NULL, 'logo', '2024-08-09 21:41:45', '2024-08-09 21:41:45'),
(765, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 764, 'App\\Models\\Item', 1, 'Reiciendis dolor hic.', NULL, 'logo', '2024-08-09 21:41:45', '2024-08-09 21:41:45'),
(766, 'images/uploads/5.jpg', 'images/uploads/5.jpg', 765, 'App\\Models\\Item', 1, 'Repudiandae officiis necessitatibus.', NULL, 'logo', '2024-08-09 21:41:45', '2024-08-09 21:41:45'),
(767, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 766, 'App\\Models\\Item', 1, 'Consequuntur animi.', NULL, 'logo', '2024-08-09 21:41:45', '2024-08-09 21:41:45'),
(768, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 767, 'App\\Models\\Item', 1, 'Aut consequatur.', NULL, 'logo', '2024-08-09 21:41:45', '2024-08-09 21:41:45'),
(769, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 768, 'App\\Models\\Item', 1, 'Quam reprehenderit omnis.', NULL, 'logo', '2024-08-09 21:41:45', '2024-08-09 21:41:45'),
(770, 'images/uploads/26.jpg', 'images/uploads/26.jpg', 769, 'App\\Models\\Item', 1, 'A natus.', NULL, 'logo', '2024-08-09 21:41:45', '2024-08-09 21:41:45'),
(771, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 770, 'App\\Models\\Item', 1, 'Assumenda aut voluptates.', NULL, 'logo', '2024-08-09 21:41:46', '2024-08-09 21:41:46'),
(772, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 771, 'App\\Models\\Item', 1, 'Vitae mollitia.', NULL, 'logo', '2024-08-09 21:41:46', '2024-08-09 21:41:46'),
(773, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 772, 'App\\Models\\Item', 1, 'Optio vel.', NULL, 'logo', '2024-08-09 21:41:46', '2024-08-09 21:41:46'),
(774, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 773, 'App\\Models\\Item', 1, 'Ea quis numquam.', NULL, 'logo', '2024-08-09 21:41:46', '2024-08-09 21:41:46'),
(775, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 774, 'App\\Models\\Item', 1, 'Ut molestiae.', NULL, 'logo', '2024-08-09 21:41:46', '2024-08-09 21:41:46'),
(776, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 775, 'App\\Models\\Item', 1, 'Dolores aspernatur.', NULL, 'logo', '2024-08-09 21:41:46', '2024-08-09 21:41:46'),
(777, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 776, 'App\\Models\\Item', 1, 'Dolores totam.', NULL, 'logo', '2024-08-09 21:41:46', '2024-08-09 21:41:46'),
(778, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 777, 'App\\Models\\Item', 1, 'Labore ad.', NULL, 'logo', '2024-08-09 21:41:46', '2024-08-09 21:41:46'),
(779, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 778, 'App\\Models\\Item', 1, 'Autem incidunt.', NULL, 'logo', '2024-08-09 21:41:46', '2024-08-09 21:41:46'),
(780, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 779, 'App\\Models\\Item', 1, 'Consectetur aut.', NULL, 'logo', '2024-08-09 21:41:46', '2024-08-09 21:41:46'),
(781, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 780, 'App\\Models\\Item', 1, 'Quasi modi labore.', NULL, 'logo', '2024-08-09 21:41:46', '2024-08-09 21:41:46'),
(782, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 781, 'App\\Models\\Item', 1, 'Eaque est vero.', NULL, 'logo', '2024-08-09 21:41:46', '2024-08-09 21:41:46'),
(783, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 782, 'App\\Models\\Item', 1, 'Deserunt nulla ducimus.', NULL, 'logo', '2024-08-09 21:41:46', '2024-08-09 21:41:46'),
(784, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 783, 'App\\Models\\Item', 1, 'Voluptates inventore.', NULL, 'logo', '2024-08-09 21:41:46', '2024-08-09 21:41:46'),
(785, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 784, 'App\\Models\\Item', 1, 'Blanditiis inventore et.', NULL, 'logo', '2024-08-09 21:41:46', '2024-08-09 21:41:46'),
(786, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 785, 'App\\Models\\Item', 1, 'Fuga inventore eum.', NULL, 'logo', '2024-08-09 21:41:46', '2024-08-09 21:41:46'),
(787, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 786, 'App\\Models\\Item', 1, 'Facere nihil.', NULL, 'logo', '2024-08-09 21:41:47', '2024-08-09 21:41:47'),
(788, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 787, 'App\\Models\\Item', 1, 'Iste eos.', NULL, 'logo', '2024-08-09 21:41:47', '2024-08-09 21:41:47'),
(789, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 788, 'App\\Models\\Item', 1, 'Illo ad.', NULL, 'logo', '2024-08-09 21:41:47', '2024-08-09 21:41:47'),
(790, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 789, 'App\\Models\\Item', 1, 'Porro est quia.', NULL, 'logo', '2024-08-09 21:41:47', '2024-08-09 21:41:47'),
(791, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 790, 'App\\Models\\Item', 1, 'Odio odio commodi.', NULL, 'logo', '2024-08-09 21:41:47', '2024-08-09 21:41:47'),
(792, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 791, 'App\\Models\\Item', 1, 'Consequatur aut.', NULL, 'logo', '2024-08-09 21:41:47', '2024-08-09 21:41:47'),
(793, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 792, 'App\\Models\\Item', 1, 'Vel possimus.', NULL, 'logo', '2024-08-09 21:41:47', '2024-08-09 21:41:47'),
(794, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 793, 'App\\Models\\Item', 1, 'Tempora voluptate.', NULL, 'logo', '2024-08-09 21:41:47', '2024-08-09 21:41:47'),
(795, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 794, 'App\\Models\\Item', 1, 'Labore quo.', NULL, 'logo', '2024-08-09 21:41:47', '2024-08-09 21:41:47'),
(796, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 795, 'App\\Models\\Item', 1, 'Ducimus quae dolore.', NULL, 'logo', '2024-08-09 21:41:47', '2024-08-09 21:41:47'),
(797, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 796, 'App\\Models\\Item', 1, 'Ad sit qui.', NULL, 'logo', '2024-08-09 21:41:47', '2024-08-09 21:41:47'),
(798, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 797, 'App\\Models\\Item', 1, 'Aut quo.', NULL, 'logo', '2024-08-09 21:41:47', '2024-08-09 21:41:47'),
(799, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 798, 'App\\Models\\Item', 1, 'Sapiente dolorum.', NULL, 'logo', '2024-08-09 21:41:47', '2024-08-09 21:41:47'),
(800, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 799, 'App\\Models\\Item', 1, 'Molestias est.', NULL, 'logo', '2024-08-09 21:41:47', '2024-08-09 21:41:47'),
(801, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 800, 'App\\Models\\Item', 1, 'Et sunt atque.', NULL, 'logo', '2024-08-09 21:41:47', '2024-08-09 21:41:47'),
(802, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 801, 'App\\Models\\Item', 1, 'Quam consequatur.', NULL, 'logo', '2024-08-09 21:41:47', '2024-08-09 21:41:47'),
(803, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 802, 'App\\Models\\Item', 1, 'Placeat neque cupiditate.', NULL, 'logo', '2024-08-09 21:41:48', '2024-08-09 21:41:48'),
(804, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 803, 'App\\Models\\Item', 1, 'Sit eos nobis.', NULL, 'logo', '2024-08-09 21:41:48', '2024-08-09 21:41:48'),
(805, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 804, 'App\\Models\\Item', 1, 'Laudantium earum.', NULL, 'logo', '2024-08-09 21:41:48', '2024-08-09 21:41:48'),
(806, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 805, 'App\\Models\\Item', 1, 'Molestiae et necessitatibus.', NULL, 'logo', '2024-08-09 21:41:48', '2024-08-09 21:41:48'),
(807, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 806, 'App\\Models\\Item', 1, 'Sapiente et.', NULL, 'logo', '2024-08-09 21:41:48', '2024-08-09 21:41:48'),
(808, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 807, 'App\\Models\\Item', 1, 'Eligendi non nemo.', NULL, 'logo', '2024-08-09 21:41:48', '2024-08-09 21:41:48'),
(809, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 808, 'App\\Models\\Item', 1, 'A laudantium earum.', NULL, 'logo', '2024-08-09 21:41:48', '2024-08-09 21:41:48'),
(810, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 809, 'App\\Models\\Item', 1, 'Ut ratione.', NULL, 'logo', '2024-08-09 21:41:48', '2024-08-09 21:41:48'),
(811, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 810, 'App\\Models\\Item', 1, 'Expedita quas.', NULL, 'logo', '2024-08-09 21:41:48', '2024-08-09 21:41:48'),
(812, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 811, 'App\\Models\\Item', 1, 'Cum in.', NULL, 'logo', '2024-08-09 21:41:48', '2024-08-09 21:41:48'),
(813, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 812, 'App\\Models\\Item', 1, 'Vero iusto.', NULL, 'logo', '2024-08-09 21:41:48', '2024-08-09 21:41:48'),
(814, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 813, 'App\\Models\\Item', 1, 'Ullam repellat expedita.', NULL, 'logo', '2024-08-09 21:41:48', '2024-08-09 21:41:48'),
(815, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 814, 'App\\Models\\Item', 1, 'Vel dolorum hic.', NULL, 'logo', '2024-08-09 21:41:48', '2024-08-09 21:41:48'),
(816, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 815, 'App\\Models\\Item', 1, 'Atque quia sit.', NULL, 'logo', '2024-08-09 21:41:48', '2024-08-09 21:41:48'),
(817, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 816, 'App\\Models\\Item', 1, 'Aut eaque aspernatur.', NULL, 'logo', '2024-08-09 21:41:48', '2024-08-09 21:41:48'),
(818, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 817, 'App\\Models\\Item', 1, 'Quia et.', NULL, 'logo', '2024-08-09 21:41:48', '2024-08-09 21:41:48'),
(819, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 818, 'App\\Models\\Item', 1, 'Non culpa consequuntur.', NULL, 'logo', '2024-08-09 21:41:48', '2024-08-09 21:41:48'),
(820, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 819, 'App\\Models\\Item', 1, 'Quo et eos.', NULL, 'logo', '2024-08-09 21:41:49', '2024-08-09 21:41:49'),
(821, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 820, 'App\\Models\\Item', 1, 'Culpa minima.', NULL, 'logo', '2024-08-09 21:41:49', '2024-08-09 21:41:49'),
(822, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 821, 'App\\Models\\Item', 1, 'Deleniti ut autem.', NULL, 'logo', '2024-08-09 21:41:49', '2024-08-09 21:41:49'),
(823, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 822, 'App\\Models\\Item', 1, 'Error aperiam et.', NULL, 'logo', '2024-08-09 21:41:49', '2024-08-09 21:41:49'),
(824, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 823, 'App\\Models\\Item', 1, 'Sed expedita consequatur.', NULL, 'logo', '2024-08-09 21:41:49', '2024-08-09 21:41:49'),
(825, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 824, 'App\\Models\\Item', 1, 'Molestiae quo.', NULL, 'logo', '2024-08-09 21:41:49', '2024-08-09 21:41:49'),
(826, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 825, 'App\\Models\\Item', 1, 'Et ullam.', NULL, 'logo', '2024-08-09 21:41:49', '2024-08-09 21:41:49'),
(827, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 826, 'App\\Models\\Item', 1, 'Maiores ex voluptas.', NULL, 'logo', '2024-08-09 21:41:49', '2024-08-09 21:41:49'),
(828, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 827, 'App\\Models\\Item', 1, 'Excepturi voluptas.', NULL, 'logo', '2024-08-09 21:41:49', '2024-08-09 21:41:49'),
(829, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 828, 'App\\Models\\Item', 1, 'Animi quidem.', NULL, 'logo', '2024-08-09 21:41:49', '2024-08-09 21:41:49'),
(830, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 829, 'App\\Models\\Item', 1, 'In optio.', NULL, 'logo', '2024-08-09 21:41:49', '2024-08-09 21:41:49'),
(831, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 830, 'App\\Models\\Item', 1, 'Sint a.', NULL, 'logo', '2024-08-09 21:41:49', '2024-08-09 21:41:49'),
(832, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 831, 'App\\Models\\Item', 1, 'Et consequatur molestiae.', NULL, 'logo', '2024-08-09 21:41:49', '2024-08-09 21:41:49'),
(833, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 832, 'App\\Models\\Item', 1, 'Molestias non assumenda.', NULL, 'logo', '2024-08-09 21:41:49', '2024-08-09 21:41:49'),
(834, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 833, 'App\\Models\\Item', 1, 'Voluptatibus asperiores.', NULL, 'logo', '2024-08-09 21:41:49', '2024-08-09 21:41:49'),
(835, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 834, 'App\\Models\\Item', 1, 'Et enim.', NULL, 'logo', '2024-08-09 21:41:49', '2024-08-09 21:41:49'),
(836, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 835, 'App\\Models\\Item', 1, 'Voluptatem qui ab.', NULL, 'logo', '2024-08-09 21:41:49', '2024-08-09 21:41:49'),
(837, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 836, 'App\\Models\\Item', 1, 'Voluptas sit et.', NULL, 'logo', '2024-08-09 21:41:50', '2024-08-09 21:41:50'),
(838, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 837, 'App\\Models\\Item', 1, 'Mollitia eaque.', NULL, 'logo', '2024-08-09 21:41:50', '2024-08-09 21:41:50'),
(839, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 838, 'App\\Models\\Item', 1, 'Occaecati nam.', NULL, 'logo', '2024-08-09 21:41:50', '2024-08-09 21:41:50'),
(840, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 839, 'App\\Models\\Item', 1, 'Necessitatibus sit aut.', NULL, 'logo', '2024-08-09 21:41:50', '2024-08-09 21:41:50'),
(841, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 840, 'App\\Models\\Item', 1, 'Nemo animi error.', NULL, 'logo', '2024-08-09 21:41:50', '2024-08-09 21:41:50'),
(842, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 841, 'App\\Models\\Item', 1, 'Minima consequatur.', NULL, 'logo', '2024-08-09 21:41:50', '2024-08-09 21:41:50'),
(843, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 842, 'App\\Models\\Item', 1, 'Minima ut et.', NULL, 'logo', '2024-08-09 21:41:50', '2024-08-09 21:41:50'),
(844, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 843, 'App\\Models\\Item', 1, 'Aut et.', NULL, 'logo', '2024-08-09 21:41:50', '2024-08-09 21:41:50'),
(845, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 844, 'App\\Models\\Item', 1, 'Ut deleniti.', NULL, 'logo', '2024-08-09 21:41:50', '2024-08-09 21:41:50'),
(846, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 845, 'App\\Models\\Item', 1, 'Eos enim.', NULL, 'logo', '2024-08-09 21:41:50', '2024-08-09 21:41:50'),
(847, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 846, 'App\\Models\\Item', 1, 'Inventore consequatur harum.', NULL, 'logo', '2024-08-09 21:41:50', '2024-08-09 21:41:50'),
(848, 'images/uploads/5.jpg', 'images/uploads/5.jpg', 847, 'App\\Models\\Item', 1, 'Minus explicabo.', NULL, 'logo', '2024-08-09 21:41:50', '2024-08-09 21:41:50'),
(849, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 848, 'App\\Models\\Item', 1, 'Dolor distinctio.', NULL, 'logo', '2024-08-09 21:41:50', '2024-08-09 21:41:50'),
(850, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 849, 'App\\Models\\Item', 1, 'Dolores quasi quos.', NULL, 'logo', '2024-08-09 21:41:50', '2024-08-09 21:41:50'),
(851, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 850, 'App\\Models\\Item', 1, 'Ea totam.', NULL, 'logo', '2024-08-09 21:41:50', '2024-08-09 21:41:50'),
(852, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 851, 'App\\Models\\Item', 1, 'Deserunt magnam error.', NULL, 'logo', '2024-08-09 21:41:50', '2024-08-09 21:41:50'),
(853, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 852, 'App\\Models\\Item', 1, 'Est qui.', NULL, 'logo', '2024-08-09 21:41:51', '2024-08-09 21:41:51'),
(854, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 853, 'App\\Models\\Item', 1, 'Asperiores mollitia.', NULL, 'logo', '2024-08-09 21:41:51', '2024-08-09 21:41:51'),
(855, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 854, 'App\\Models\\Item', 1, 'Sed dicta voluptas.', NULL, 'logo', '2024-08-09 21:41:51', '2024-08-09 21:41:51'),
(856, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 855, 'App\\Models\\Item', 1, 'Temporibus pariatur.', NULL, 'logo', '2024-08-09 21:41:51', '2024-08-09 21:41:51'),
(857, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 856, 'App\\Models\\Item', 1, 'Dolor fugiat dolor.', NULL, 'logo', '2024-08-09 21:41:51', '2024-08-09 21:41:51'),
(858, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 857, 'App\\Models\\Item', 1, 'Magnam corporis.', NULL, 'logo', '2024-08-09 21:41:51', '2024-08-09 21:41:51'),
(859, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 858, 'App\\Models\\Item', 1, 'Tempore velit.', NULL, 'logo', '2024-08-09 21:41:51', '2024-08-09 21:41:51'),
(860, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 859, 'App\\Models\\Item', 1, 'Quos dolorem ratione.', NULL, 'logo', '2024-08-09 21:41:51', '2024-08-09 21:41:51'),
(861, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 860, 'App\\Models\\Item', 1, 'Nam dolore et.', NULL, 'logo', '2024-08-09 21:41:51', '2024-08-09 21:41:51'),
(862, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 861, 'App\\Models\\Item', 1, 'Omnis ea.', NULL, 'logo', '2024-08-09 21:41:51', '2024-08-09 21:41:51'),
(863, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 862, 'App\\Models\\Item', 1, 'Quo amet pariatur.', NULL, 'logo', '2024-08-09 21:41:51', '2024-08-09 21:41:51'),
(864, 'images/uploads/14.jpg', 'images/uploads/14.jpg', 863, 'App\\Models\\Item', 1, 'Possimus adipisci.', NULL, 'logo', '2024-08-09 21:41:51', '2024-08-09 21:41:51'),
(865, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 864, 'App\\Models\\Item', 1, 'Quam debitis dolor.', NULL, 'logo', '2024-08-09 21:41:51', '2024-08-09 21:41:51'),
(866, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 865, 'App\\Models\\Item', 1, 'Porro quasi quia.', NULL, 'logo', '2024-08-09 21:41:51', '2024-08-09 21:41:51'),
(867, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 866, 'App\\Models\\Item', 1, 'Tempora vitae quo.', NULL, 'logo', '2024-08-09 21:41:51', '2024-08-09 21:41:51'),
(868, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 867, 'App\\Models\\Item', 1, 'Occaecati sed.', NULL, 'logo', '2024-08-09 21:41:51', '2024-08-09 21:41:51'),
(869, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 868, 'App\\Models\\Item', 1, 'Beatae labore possimus.', NULL, 'logo', '2024-08-09 21:41:51', '2024-08-09 21:41:51'),
(870, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 869, 'App\\Models\\Item', 1, 'Sit consequuntur.', NULL, 'logo', '2024-08-09 21:41:52', '2024-08-09 21:41:52'),
(871, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 870, 'App\\Models\\Item', 1, 'Reprehenderit consequatur quasi.', NULL, 'logo', '2024-08-09 21:41:52', '2024-08-09 21:41:52'),
(872, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 871, 'App\\Models\\Item', 1, 'Et quisquam.', NULL, 'logo', '2024-08-09 21:41:52', '2024-08-09 21:41:52'),
(873, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 872, 'App\\Models\\Item', 1, 'Impedit dolore.', NULL, 'logo', '2024-08-09 21:41:52', '2024-08-09 21:41:52'),
(874, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 873, 'App\\Models\\Item', 1, 'Delectus ratione et.', NULL, 'logo', '2024-08-09 21:41:52', '2024-08-09 21:41:52'),
(875, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 874, 'App\\Models\\Item', 1, 'Optio omnis.', NULL, 'logo', '2024-08-09 21:41:52', '2024-08-09 21:41:52'),
(876, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 875, 'App\\Models\\Item', 1, 'Ad aut.', NULL, 'logo', '2024-08-09 21:41:52', '2024-08-09 21:41:52'),
(877, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 876, 'App\\Models\\Item', 1, 'Minus nisi quo.', NULL, 'logo', '2024-08-09 21:41:52', '2024-08-09 21:41:52'),
(878, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 877, 'App\\Models\\Item', 1, 'Repudiandae voluptatem.', NULL, 'logo', '2024-08-09 21:41:52', '2024-08-09 21:41:52'),
(879, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 878, 'App\\Models\\Item', 1, 'Culpa impedit optio.', NULL, 'logo', '2024-08-09 21:41:52', '2024-08-09 21:41:52'),
(880, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 879, 'App\\Models\\Item', 1, 'Et occaecati.', NULL, 'logo', '2024-08-09 21:41:52', '2024-08-09 21:41:52'),
(881, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 880, 'App\\Models\\Item', 1, 'Enim voluptates.', NULL, 'logo', '2024-08-09 21:41:52', '2024-08-09 21:41:52'),
(882, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 881, 'App\\Models\\Item', 1, 'Quia ut qui.', NULL, 'logo', '2024-08-09 21:41:52', '2024-08-09 21:41:52'),
(883, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 882, 'App\\Models\\Item', 1, 'Non temporibus expedita.', NULL, 'logo', '2024-08-09 21:41:52', '2024-08-09 21:41:52'),
(884, 'images/uploads/17.jpg', 'images/uploads/17.jpg', 883, 'App\\Models\\Item', 1, 'Dicta sed voluptatem.', NULL, 'logo', '2024-08-09 21:41:52', '2024-08-09 21:41:52'),
(885, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 884, 'App\\Models\\Item', 1, 'Ad quae est.', NULL, 'logo', '2024-08-09 21:41:52', '2024-08-09 21:41:52'),
(886, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 885, 'App\\Models\\Item', 1, 'Cum sunt.', NULL, 'logo', '2024-08-09 21:41:53', '2024-08-09 21:41:53'),
(887, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 886, 'App\\Models\\Item', 1, 'Ea dicta laborum.', NULL, 'logo', '2024-08-09 21:41:53', '2024-08-09 21:41:53'),
(888, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 887, 'App\\Models\\Item', 1, 'Explicabo perspiciatis adipisci.', NULL, 'logo', '2024-08-09 21:41:53', '2024-08-09 21:41:53'),
(889, 'images/uploads/26.jpg', 'images/uploads/26.jpg', 888, 'App\\Models\\Item', 1, 'Similique et excepturi.', NULL, 'logo', '2024-08-09 21:41:53', '2024-08-09 21:41:53'),
(890, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 889, 'App\\Models\\Item', 1, 'Dicta consequatur ullam.', NULL, 'logo', '2024-08-09 21:41:53', '2024-08-09 21:41:53'),
(891, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 890, 'App\\Models\\Item', 1, 'Rerum autem.', NULL, 'logo', '2024-08-09 21:41:53', '2024-08-09 21:41:53'),
(892, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 891, 'App\\Models\\Item', 1, 'Omnis autem ullam.', NULL, 'logo', '2024-08-09 21:41:53', '2024-08-09 21:41:53'),
(893, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 892, 'App\\Models\\Item', 1, 'Ut commodi.', NULL, 'logo', '2024-08-09 21:41:53', '2024-08-09 21:41:53'),
(894, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 893, 'App\\Models\\Item', 1, 'Et nisi.', NULL, 'logo', '2024-08-09 21:41:53', '2024-08-09 21:41:53'),
(895, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 894, 'App\\Models\\Item', 1, 'Rerum ut.', NULL, 'logo', '2024-08-09 21:41:53', '2024-08-09 21:41:53'),
(896, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 895, 'App\\Models\\Item', 1, 'Quod totam.', NULL, 'logo', '2024-08-09 21:41:53', '2024-08-09 21:41:53'),
(897, 'images/uploads/37.jpg', 'images/uploads/37.jpg', 896, 'App\\Models\\Item', 1, 'Nihil quia dolores.', NULL, 'logo', '2024-08-09 21:41:53', '2024-08-09 21:41:53'),
(898, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 897, 'App\\Models\\Item', 1, 'Commodi aut.', NULL, 'logo', '2024-08-09 21:41:53', '2024-08-09 21:41:53'),
(899, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 898, 'App\\Models\\Item', 1, 'Esse ipsa.', NULL, 'logo', '2024-08-09 21:41:53', '2024-08-09 21:41:53'),
(900, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 899, 'App\\Models\\Item', 1, 'Exercitationem corrupti.', NULL, 'logo', '2024-08-09 21:41:53', '2024-08-09 21:41:53'),
(901, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 900, 'App\\Models\\Item', 1, 'Ut non corporis.', NULL, 'logo', '2024-08-09 21:41:53', '2024-08-09 21:41:53'),
(902, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 901, 'App\\Models\\Item', 1, 'Porro optio.', NULL, 'logo', '2024-08-09 21:41:53', '2024-08-09 21:41:53'),
(903, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 902, 'App\\Models\\Item', 1, 'Id aspernatur.', NULL, 'logo', '2024-08-09 21:41:54', '2024-08-09 21:41:54'),
(904, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 903, 'App\\Models\\Item', 1, 'Sit mollitia ad.', NULL, 'logo', '2024-08-09 21:41:54', '2024-08-09 21:41:54'),
(905, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 904, 'App\\Models\\Item', 1, 'Ut sed.', NULL, 'logo', '2024-08-09 21:41:54', '2024-08-09 21:41:54'),
(906, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 905, 'App\\Models\\Item', 1, 'Sunt in.', NULL, 'logo', '2024-08-09 21:41:54', '2024-08-09 21:41:54'),
(907, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 906, 'App\\Models\\Item', 1, 'Voluptatum eum praesentium.', NULL, 'logo', '2024-08-09 21:41:54', '2024-08-09 21:41:54'),
(908, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 907, 'App\\Models\\Item', 1, 'Perferendis atque.', NULL, 'logo', '2024-08-09 21:41:54', '2024-08-09 21:41:54'),
(909, 'images/uploads/21.jpg', 'images/uploads/21.jpg', 908, 'App\\Models\\Item', 1, 'Rerum expedita.', NULL, 'logo', '2024-08-09 21:41:54', '2024-08-09 21:41:54'),
(910, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 909, 'App\\Models\\Item', 1, 'Quibusdam debitis consequatur.', NULL, 'logo', '2024-08-09 21:41:54', '2024-08-09 21:41:54');
INSERT INTO `images` (`id`, `thumbnail`, `path`, `imageable_id`, `imageable_type`, `is_primary`, `name`, `size`, `type`, `created_at`, `updated_at`) VALUES
(911, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 910, 'App\\Models\\Item', 1, 'Temporibus alias.', NULL, 'logo', '2024-08-09 21:41:54', '2024-08-09 21:41:54'),
(912, 'images/uploads/13.jpg', 'images/uploads/13.jpg', 911, 'App\\Models\\Item', 1, 'Eius laboriosam beatae.', NULL, 'logo', '2024-08-09 21:41:54', '2024-08-09 21:41:54'),
(913, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 912, 'App\\Models\\Item', 1, 'Consequuntur eius rem.', NULL, 'logo', '2024-08-09 21:41:54', '2024-08-09 21:41:54'),
(914, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 913, 'App\\Models\\Item', 1, 'Non quo corporis.', NULL, 'logo', '2024-08-09 21:41:54', '2024-08-09 21:41:54'),
(915, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 914, 'App\\Models\\Item', 1, 'Vel quia.', NULL, 'logo', '2024-08-09 21:41:54', '2024-08-09 21:41:54'),
(916, 'images/uploads/5.jpg', 'images/uploads/5.jpg', 915, 'App\\Models\\Item', 1, 'Et possimus odit.', NULL, 'logo', '2024-08-09 21:41:54', '2024-08-09 21:41:54'),
(917, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 916, 'App\\Models\\Item', 1, 'Illum qui est.', NULL, 'logo', '2024-08-09 21:41:54', '2024-08-09 21:41:54'),
(918, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 917, 'App\\Models\\Item', 1, 'Ut et esse.', NULL, 'logo', '2024-08-09 21:41:54', '2024-08-09 21:41:54'),
(919, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 918, 'App\\Models\\Item', 1, 'Est quae repudiandae.', NULL, 'logo', '2024-08-09 21:41:55', '2024-08-09 21:41:55'),
(920, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 919, 'App\\Models\\Item', 1, 'Voluptatem et fuga.', NULL, 'logo', '2024-08-09 21:41:55', '2024-08-09 21:41:55'),
(921, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 920, 'App\\Models\\Item', 1, 'Earum qui et.', NULL, 'logo', '2024-08-09 21:41:55', '2024-08-09 21:41:55'),
(922, 'images/uploads/3.jpg', 'images/uploads/3.jpg', 921, 'App\\Models\\Item', 1, 'Odit quia voluptatum.', NULL, 'logo', '2024-08-09 21:41:55', '2024-08-09 21:41:55'),
(923, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 922, 'App\\Models\\Item', 1, 'Quis voluptates voluptas.', NULL, 'logo', '2024-08-09 21:41:55', '2024-08-09 21:41:55'),
(924, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 923, 'App\\Models\\Item', 1, 'Cum saepe.', NULL, 'logo', '2024-08-09 21:41:55', '2024-08-09 21:41:55'),
(925, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 924, 'App\\Models\\Item', 1, 'Doloremque ut.', NULL, 'logo', '2024-08-09 21:41:55', '2024-08-09 21:41:55'),
(926, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 925, 'App\\Models\\Item', 1, 'Sapiente asperiores dolore.', NULL, 'logo', '2024-08-09 21:41:55', '2024-08-09 21:41:55'),
(927, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 926, 'App\\Models\\Item', 1, 'Sint quidem ea.', NULL, 'logo', '2024-08-09 21:41:55', '2024-08-09 21:41:55'),
(928, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 927, 'App\\Models\\Item', 1, 'Est eos iure.', NULL, 'logo', '2024-08-09 21:41:55', '2024-08-09 21:41:55'),
(929, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 928, 'App\\Models\\Item', 1, 'Saepe dolore praesentium.', NULL, 'logo', '2024-08-09 21:41:55', '2024-08-09 21:41:55'),
(930, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 929, 'App\\Models\\Item', 1, 'Et quis.', NULL, 'logo', '2024-08-09 21:41:55', '2024-08-09 21:41:55'),
(931, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 930, 'App\\Models\\Item', 1, 'Et corporis.', NULL, 'logo', '2024-08-09 21:41:55', '2024-08-09 21:41:55'),
(932, 'images/uploads/12.jpg', 'images/uploads/12.jpg', 931, 'App\\Models\\Item', 1, 'Excepturi quae.', NULL, 'logo', '2024-08-09 21:41:55', '2024-08-09 21:41:55'),
(933, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 932, 'App\\Models\\Item', 1, 'Rerum voluptates iste.', NULL, 'logo', '2024-08-09 21:41:55', '2024-08-09 21:41:55'),
(934, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 933, 'App\\Models\\Item', 1, 'Voluptatum et sunt.', NULL, 'logo', '2024-08-09 21:41:55', '2024-08-09 21:41:55'),
(935, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 934, 'App\\Models\\Item', 1, 'Autem tenetur.', NULL, 'logo', '2024-08-09 21:41:55', '2024-08-09 21:41:55'),
(936, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 935, 'App\\Models\\Item', 1, 'Ea pariatur.', NULL, 'logo', '2024-08-09 21:41:56', '2024-08-09 21:41:56'),
(937, 'images/uploads/22.jpg', 'images/uploads/22.jpg', 936, 'App\\Models\\Item', 1, 'Blanditiis non.', NULL, 'logo', '2024-08-09 21:41:56', '2024-08-09 21:41:56'),
(938, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 937, 'App\\Models\\Item', 1, 'Eum ut.', NULL, 'logo', '2024-08-09 21:41:56', '2024-08-09 21:41:56'),
(939, 'images/uploads/15.jpg', 'images/uploads/15.jpg', 938, 'App\\Models\\Item', 1, 'Sed voluptate tempore.', NULL, 'logo', '2024-08-09 21:41:56', '2024-08-09 21:41:56'),
(940, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 939, 'App\\Models\\Item', 1, 'Non illum.', NULL, 'logo', '2024-08-09 21:41:56', '2024-08-09 21:41:56'),
(941, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 940, 'App\\Models\\Item', 1, 'Harum et.', NULL, 'logo', '2024-08-09 21:41:56', '2024-08-09 21:41:56'),
(942, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 941, 'App\\Models\\Item', 1, 'Odit fugiat id.', NULL, 'logo', '2024-08-09 21:41:56', '2024-08-09 21:41:56'),
(943, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 942, 'App\\Models\\Item', 1, 'Assumenda veritatis magnam.', NULL, 'logo', '2024-08-09 21:41:56', '2024-08-09 21:41:56'),
(944, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 943, 'App\\Models\\Item', 1, 'Pariatur blanditiis explicabo.', NULL, 'logo', '2024-08-09 21:41:56', '2024-08-09 21:41:56'),
(945, 'images/uploads/29.jpg', 'images/uploads/29.jpg', 944, 'App\\Models\\Item', 1, 'Recusandae nesciunt.', NULL, 'logo', '2024-08-09 21:41:56', '2024-08-09 21:41:56'),
(946, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 945, 'App\\Models\\Item', 1, 'Non voluptatibus.', NULL, 'logo', '2024-08-09 21:41:56', '2024-08-09 21:41:56'),
(947, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 946, 'App\\Models\\Item', 1, 'Et quo quo.', NULL, 'logo', '2024-08-09 21:41:56', '2024-08-09 21:41:56'),
(948, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 947, 'App\\Models\\Item', 1, 'Laudantium non.', NULL, 'logo', '2024-08-09 21:41:56', '2024-08-09 21:41:56'),
(949, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 948, 'App\\Models\\Item', 1, 'Molestiae nemo ea.', NULL, 'logo', '2024-08-09 21:41:56', '2024-08-09 21:41:56'),
(950, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 949, 'App\\Models\\Item', 1, 'Expedita aut sed.', NULL, 'logo', '2024-08-09 21:41:56', '2024-08-09 21:41:56'),
(951, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 950, 'App\\Models\\Item', 1, 'Quam doloremque.', NULL, 'logo', '2024-08-09 21:41:56', '2024-08-09 21:41:56'),
(952, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 951, 'App\\Models\\Item', 1, 'In qui tenetur.', NULL, 'logo', '2024-08-09 21:41:57', '2024-08-09 21:41:57'),
(953, 'images/uploads/11.jpg', 'images/uploads/11.jpg', 952, 'App\\Models\\Item', 0, 'Accusamus similique.', NULL, 'logo', '2024-08-09 21:41:57', '2026-02-17 08:30:57'),
(954, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 953, 'App\\Models\\Item', 1, 'Odit voluptatum.', NULL, 'logo', '2024-08-09 21:41:57', '2024-08-09 21:41:57'),
(955, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 954, 'App\\Models\\Item', 1, 'Autem non.', NULL, 'logo', '2024-08-09 21:41:57', '2024-08-09 21:41:57'),
(956, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 955, 'App\\Models\\Item', 1, 'Voluptatem quod.', NULL, 'logo', '2024-08-09 21:41:57', '2024-08-09 21:41:57'),
(957, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 956, 'App\\Models\\Item', 1, 'A blanditiis sed.', NULL, 'logo', '2024-08-09 21:41:57', '2024-08-09 21:41:57'),
(958, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 957, 'App\\Models\\Item', 1, 'Omnis consequatur quaerat.', NULL, 'logo', '2024-08-09 21:41:57', '2024-08-09 21:41:57'),
(959, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 958, 'App\\Models\\Item', 1, 'Dolorem corporis.', NULL, 'logo', '2024-08-09 21:41:57', '2024-08-09 21:41:57'),
(960, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 959, 'App\\Models\\Item', 1, 'Animi animi praesentium.', NULL, 'logo', '2024-08-09 21:41:57', '2024-08-09 21:41:57'),
(961, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 960, 'App\\Models\\Item', 1, 'Aliquam quam.', NULL, 'logo', '2024-08-09 21:41:57', '2024-08-09 21:41:57'),
(962, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 961, 'App\\Models\\Item', 1, 'Reprehenderit consequuntur vitae.', NULL, 'logo', '2024-08-09 21:41:57', '2024-08-09 21:41:57'),
(963, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 962, 'App\\Models\\Item', 1, 'Quia a.', NULL, 'logo', '2024-08-09 21:41:57', '2024-08-09 21:41:57'),
(964, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 963, 'App\\Models\\Item', 1, 'Architecto accusantium.', NULL, 'logo', '2024-08-09 21:41:57', '2024-08-09 21:41:57'),
(965, 'images/uploads/32.jpg', 'images/uploads/32.jpg', 964, 'App\\Models\\Item', 1, 'Quia accusantium.', NULL, 'logo', '2024-08-09 21:41:57', '2024-08-09 21:41:57'),
(966, 'images/uploads/16.jpg', 'images/uploads/16.jpg', 965, 'App\\Models\\Item', 1, 'Consequuntur sequi et.', NULL, 'logo', '2024-08-09 21:41:57', '2024-08-09 21:41:57'),
(967, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 966, 'App\\Models\\Item', 1, 'Optio recusandae.', NULL, 'logo', '2024-08-09 21:41:57', '2024-08-09 21:41:57'),
(968, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 967, 'App\\Models\\Item', 1, 'Repellat voluptatum.', NULL, 'logo', '2024-08-09 21:41:57', '2024-08-09 21:41:57'),
(969, 'images/uploads/2.jpg', 'images/uploads/2.jpg', 968, 'App\\Models\\Item', 1, 'Consequatur consectetur ad.', NULL, 'logo', '2024-08-09 21:41:58', '2024-08-09 21:41:58'),
(970, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 969, 'App\\Models\\Item', 1, 'Perferendis neque est.', NULL, 'logo', '2024-08-09 21:41:58', '2024-08-09 21:41:58'),
(971, 'images/uploads/19.jpg', 'images/uploads/19.jpg', 970, 'App\\Models\\Item', 1, 'Delectus ut esse.', NULL, 'logo', '2024-08-09 21:41:58', '2024-08-09 21:41:58'),
(972, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 971, 'App\\Models\\Item', 1, 'Aspernatur reiciendis.', NULL, 'logo', '2024-08-09 21:41:58', '2024-08-09 21:41:58'),
(973, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 972, 'App\\Models\\Item', 1, 'Doloremque quis voluptatem.', NULL, 'logo', '2024-08-09 21:41:58', '2024-08-09 21:41:58'),
(974, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 973, 'App\\Models\\Item', 1, 'Laudantium qui a.', NULL, 'logo', '2024-08-09 21:41:58', '2024-08-09 21:41:58'),
(975, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 974, 'App\\Models\\Item', 1, 'Explicabo qui placeat.', NULL, 'logo', '2024-08-09 21:41:58', '2024-08-09 21:41:58'),
(976, 'images/uploads/27.jpg', 'images/uploads/27.jpg', 975, 'App\\Models\\Item', 1, 'Facilis sed.', NULL, 'logo', '2024-08-09 21:41:58', '2024-08-09 21:41:58'),
(977, 'images/uploads/23.jpg', 'images/uploads/23.jpg', 976, 'App\\Models\\Item', 1, 'Nihil quod laboriosam.', NULL, 'logo', '2024-08-09 21:41:58', '2024-08-09 21:41:58'),
(978, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 977, 'App\\Models\\Item', 1, 'Ut id.', NULL, 'logo', '2024-08-09 21:41:58', '2024-08-09 21:41:58'),
(979, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 978, 'App\\Models\\Item', 1, 'Error quo.', NULL, 'logo', '2024-08-09 21:41:58', '2024-08-09 21:41:58'),
(980, 'images/uploads/31.jpg', 'images/uploads/31.jpg', 979, 'App\\Models\\Item', 1, 'Veritatis vel aut.', NULL, 'logo', '2024-08-09 21:41:58', '2024-08-09 21:41:58'),
(981, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 980, 'App\\Models\\Item', 1, 'Molestiae doloribus tempora.', NULL, 'logo', '2024-08-09 21:41:58', '2024-08-09 21:41:58'),
(982, 'images/uploads/4.jpg', 'images/uploads/4.jpg', 981, 'App\\Models\\Item', 1, 'Ea provident eligendi.', NULL, 'logo', '2024-08-09 21:41:58', '2024-08-09 21:41:58'),
(983, 'images/uploads/8.jpg', 'images/uploads/8.jpg', 982, 'App\\Models\\Item', 0, 'Consequatur delectus ut.', NULL, 'logo', '2024-08-09 21:41:58', '2026-02-08 13:28:34'),
(984, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 983, 'App\\Models\\Item', 1, 'Tenetur ab culpa.', NULL, 'logo', '2024-08-09 21:41:58', '2024-08-09 21:41:58'),
(985, 'images/uploads/30.jpg', 'images/uploads/30.jpg', 984, 'App\\Models\\Item', 1, 'Perferendis facere.', NULL, 'logo', '2024-08-09 21:41:58', '2024-08-09 21:41:58'),
(986, 'images/uploads/35.jpg', 'images/uploads/35.jpg', 985, 'App\\Models\\Item', 1, 'Voluptas quis ut.', NULL, 'logo', '2024-08-09 21:41:59', '2024-08-09 21:41:59'),
(987, 'images/uploads/9.jpg', 'images/uploads/9.jpg', 986, 'App\\Models\\Item', 1, 'Voluptatem numquam et.', NULL, 'logo', '2024-08-09 21:41:59', '2024-08-09 21:41:59'),
(988, 'images/uploads/24.jpg', 'images/uploads/24.jpg', 987, 'App\\Models\\Item', 1, 'Quam aliquam et.', NULL, 'logo', '2024-08-09 21:41:59', '2024-08-09 21:41:59'),
(989, 'images/uploads/36.jpg', 'images/uploads/36.jpg', 988, 'App\\Models\\Item', 1, 'Deserunt ex veritatis.', NULL, 'logo', '2024-08-09 21:41:59', '2024-08-09 21:41:59'),
(990, 'images/uploads/18.jpg', 'images/uploads/18.jpg', 989, 'App\\Models\\Item', 1, 'Aut saepe.', NULL, 'logo', '2024-08-09 21:41:59', '2024-08-09 21:41:59'),
(991, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 990, 'App\\Models\\Item', 1, 'Quam consequuntur harum.', NULL, 'logo', '2024-08-09 21:41:59', '2024-08-09 21:41:59'),
(992, 'images/uploads/10.jpg', 'images/uploads/10.jpg', 991, 'App\\Models\\Item', 1, 'Dolorem ut et.', NULL, 'logo', '2024-08-09 21:41:59', '2024-08-09 21:41:59'),
(993, 'images/uploads/6.jpg', 'images/uploads/6.jpg', 992, 'App\\Models\\Item', 1, 'Laboriosam quia.', NULL, 'logo', '2024-08-09 21:41:59', '2024-08-09 21:41:59'),
(994, 'images/uploads/33.jpg', 'images/uploads/33.jpg', 993, 'App\\Models\\Item', 1, 'Numquam et animi.', NULL, 'logo', '2024-08-09 21:41:59', '2024-08-09 21:41:59'),
(995, 'images/uploads/20.jpg', 'images/uploads/20.jpg', 994, 'App\\Models\\Item', 1, 'Occaecati aut.', NULL, 'logo', '2024-08-09 21:41:59', '2024-08-09 21:41:59'),
(996, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 995, 'App\\Models\\Item', 1, 'Repellat aliquam.', NULL, 'logo', '2024-08-09 21:41:59', '2024-08-09 21:41:59'),
(997, 'images/uploads/25.jpg', 'images/uploads/25.jpg', 996, 'App\\Models\\Item', 1, 'Voluptatem mollitia enim.', NULL, 'logo', '2024-08-09 21:41:59', '2024-08-09 21:41:59'),
(998, 'images/uploads/1.jpg', 'images/uploads/1.jpg', 997, 'App\\Models\\Item', 1, 'Aut sapiente rerum.', NULL, 'logo', '2024-08-09 21:41:59', '2024-08-09 21:41:59'),
(999, 'images/uploads/34.jpg', 'images/uploads/34.jpg', 998, 'App\\Models\\Item', 1, 'Assumenda eligendi quos.', NULL, 'logo', '2024-08-09 21:41:59', '2024-08-09 21:41:59'),
(1000, 'images/uploads/28.jpg', 'images/uploads/28.jpg', 999, 'App\\Models\\Item', 1, 'Cupiditate voluptas.', NULL, 'logo', '2024-08-09 21:41:59', '2024-08-09 21:41:59'),
(1001, 'images/uploads/7.jpg', 'images/uploads/7.jpg', 1000, 'App\\Models\\Item', 1, 'Rerum neque.', NULL, 'logo', '2024-08-09 21:41:59', '2024-08-09 21:41:59'),
(1002, 'images/uploads/logo15.jpg', 'images/uploads/logo15.jpg', 0, 'App\\Models\\Store', 1, 'Autem corporis quo.', NULL, 'logo', '2024-08-09 21:42:00', '2024-08-09 21:42:00'),
(1003, 'images/uploads/logo20.jpg', 'images/uploads/logo20.jpg', 1, 'App\\Models\\Store', 1, 'Aliquam optio.', NULL, 'logo', '2024-08-09 21:42:00', '2024-08-09 21:42:00'),
(1004, 'images/uploads/logo13.jpg', 'images/uploads/logo13.jpg', 2, 'App\\Models\\Store', 1, 'Voluptas veritatis.', NULL, 'logo', '2024-08-09 21:42:00', '2024-08-09 21:42:00'),
(1005, 'images/uploads/logo19.jpg', 'images/uploads/logo19.jpg', 3, 'App\\Models\\Store', 1, 'Fugiat sequi voluptate.', NULL, 'logo', '2024-08-09 21:42:00', '2024-08-09 21:42:00'),
(1006, 'images/uploads/logo9.jpg', 'images/uploads/logo9.jpg', 4, 'App\\Models\\Store', 1, 'Error est.', NULL, 'logo', '2024-08-09 21:42:00', '2024-08-09 21:42:00'),
(1007, 'images/uploads/logo11.jpg', 'images/uploads/logo11.jpg', 5, 'App\\Models\\Store', 1, 'Aut nostrum necessitatibus.', NULL, 'logo', '2024-08-09 21:42:00', '2024-08-09 21:42:00'),
(1008, 'images/uploads/logo14.jpg', 'images/uploads/logo14.jpg', 6, 'App\\Models\\Store', 1, 'Nostrum at minima.', NULL, 'logo', '2024-08-09 21:42:00', '2024-08-09 21:42:00'),
(1009, 'images/uploads/logo6.jpg', 'images/uploads/logo6.jpg', 7, 'App\\Models\\Store', 1, 'Voluptate ratione.', NULL, 'logo', '2024-08-09 21:42:00', '2024-08-09 21:42:00'),
(1010, 'images/uploads/logo6.jpg', 'images/uploads/logo6.jpg', 8, 'App\\Models\\Store', 1, 'Voluptatem magnam dolorem.', NULL, 'logo', '2024-08-09 21:42:00', '2024-08-09 21:42:00'),
(1011, 'images/uploads/logo20.jpg', 'images/uploads/logo20.jpg', 9, 'App\\Models\\Store', 1, 'Aliquid repellat.', NULL, 'logo', '2024-08-09 21:42:00', '2024-08-09 21:42:00'),
(1012, 'images/uploads/logo8.jpg', 'images/uploads/logo8.jpg', 10, 'App\\Models\\Store', 1, 'Amet magni rerum.', NULL, 'logo', '2024-08-09 21:42:00', '2024-08-09 21:42:00'),
(1013, 'images/uploads/logo3.jpg', 'images/uploads/logo3.jpg', 11, 'App\\Models\\Store', 1, 'Cupiditate veniam.', NULL, 'logo', '2024-08-09 21:42:00', '2024-08-09 21:42:00'),
(1014, 'images/uploads/logo18.jpg', 'images/uploads/logo18.jpg', 12, 'App\\Models\\Store', 1, 'Sequi fugit.', NULL, 'logo', '2024-08-09 21:42:00', '2024-08-09 21:42:00'),
(1015, 'images/uploads/logo4.jpg', 'images/uploads/logo4.jpg', 13, 'App\\Models\\Store', 1, 'Placeat accusantium.', NULL, 'logo', '2024-08-09 21:42:00', '2024-08-09 21:42:00'),
(1016, 'images/uploads/logo6.jpg', 'images/uploads/logo6.jpg', 14, 'App\\Models\\Store', 1, 'Et est assumenda.', NULL, 'logo', '2024-08-09 21:42:00', '2024-08-09 21:42:00'),
(1017, 'images/uploads/logo19.jpg', 'images/uploads/logo19.jpg', 15, 'App\\Models\\Store', 1, 'Maiores ut.', NULL, 'logo', '2024-08-09 21:42:00', '2024-08-09 21:42:00'),
(1018, 'images/uploads/logo12.jpg', 'images/uploads/logo12.jpg', 16, 'App\\Models\\Store', 1, 'Reprehenderit harum quo.', NULL, 'logo', '2024-08-09 21:42:00', '2024-08-09 21:42:00'),
(1019, 'images/uploads/logo4.jpg', 'images/uploads/logo4.jpg', 17, 'App\\Models\\Store', 1, 'Esse sequi voluptas.', NULL, 'logo', '2024-08-09 21:42:01', '2024-08-09 21:42:01'),
(1020, 'images/uploads/logo10.jpg', 'images/uploads/logo10.jpg', 18, 'App\\Models\\Store', 1, 'Laboriosam commodi.', NULL, 'logo', '2024-08-09 21:42:01', '2024-08-09 21:42:01'),
(1021, 'images/uploads/logo5.jpg', 'images/uploads/logo5.jpg', 19, 'App\\Models\\Store', 1, 'Provident consectetur.', NULL, 'logo', '2024-08-09 21:42:01', '2024-08-09 21:42:01'),
(1022, 'images/uploads/logo8.jpg', 'images/uploads/logo8.jpg', 20, 'App\\Models\\Store', 1, 'Quis quia aspernatur.', NULL, 'logo', '2024-08-09 21:42:01', '2024-08-09 21:42:01'),
(1023, 'images/uploads/logo9.jpg', 'images/uploads/logo9.jpg', 21, 'App\\Models\\Store', 1, 'Beatae nam.', NULL, 'logo', '2024-08-09 21:42:01', '2024-08-09 21:42:01'),
(1024, 'images/uploads/logo4.jpg', 'images/uploads/logo4.jpg', 22, 'App\\Models\\Store', 1, 'Et quia accusantium.', NULL, 'logo', '2024-08-09 21:42:01', '2024-08-09 21:42:01'),
(1025, 'images/uploads/logo19.jpg', 'images/uploads/logo19.jpg', 23, 'App\\Models\\Store', 1, 'Ab ratione rerum.', NULL, 'logo', '2024-08-09 21:42:01', '2024-08-09 21:42:01'),
(1026, 'images/uploads/logo17.jpg', 'images/uploads/logo17.jpg', 24, 'App\\Models\\Store', 1, 'Illo blanditiis.', NULL, 'logo', '2024-08-09 21:42:01', '2024-08-09 21:42:01'),
(1027, 'images/uploads/logo4.jpg', 'images/uploads/logo4.jpg', 25, 'App\\Models\\Store', 1, 'Eveniet sed in.', NULL, 'logo', '2024-08-09 21:42:01', '2024-08-09 21:42:01'),
(1028, 'images/uploads/logo5.jpg', 'images/uploads/logo5.jpg', 26, 'App\\Models\\Store', 1, 'Dolores ipsum.', NULL, 'logo', '2024-08-09 21:42:01', '2024-08-09 21:42:01'),
(1029, 'images/uploads/logo10.jpg', 'images/uploads/logo10.jpg', 27, 'App\\Models\\Store', 1, 'Sunt quis.', NULL, 'logo', '2024-08-09 21:42:01', '2024-08-09 21:42:01'),
(1030, 'images/uploads/logo12.jpg', 'images/uploads/logo12.jpg', 28, 'App\\Models\\Store', 1, 'Est ducimus praesentium.', NULL, 'logo', '2024-08-09 21:42:01', '2024-08-09 21:42:01'),
(1031, 'images/uploads/logo6.jpg', 'images/uploads/logo6.jpg', 29, 'App\\Models\\Store', 1, 'Autem harum magni.', NULL, 'logo', '2024-08-09 21:42:01', '2024-08-09 21:42:01'),
(1032, 'images/uploads/logo4.jpg', 'images/uploads/logo4.jpg', 30, 'App\\Models\\Store', 1, 'Dolorem aut suscipit.', NULL, 'logo', '2024-08-09 21:42:01', '2024-08-09 21:42:01'),
(1033, 'images/uploads/logo20.jpg', 'images/uploads/logo20.jpg', 31, 'App\\Models\\Store', 1, 'Natus eos.', NULL, 'logo', '2024-08-09 21:42:01', '2024-08-09 21:42:01'),
(1034, 'images/uploads/logo6.jpg', 'images/uploads/logo6.jpg', 32, 'App\\Models\\Store', 1, 'Optio ex.', NULL, 'logo', '2024-08-09 21:42:01', '2024-08-09 21:42:01'),
(1035, 'images/uploads/logo20.jpg', 'images/uploads/logo20.jpg', 33, 'App\\Models\\Store', 1, 'Aperiam iure quae.', NULL, 'logo', '2024-08-09 21:42:01', '2024-08-09 21:42:01'),
(1036, 'images/uploads/logo10.jpg', 'images/uploads/logo10.jpg', 34, 'App\\Models\\Store', 1, 'Atque voluptatum sint.', NULL, 'logo', '2024-08-09 21:42:01', '2024-08-09 21:42:01'),
(1037, 'images/uploads/logo6.jpg', 'images/uploads/logo6.jpg', 35, 'App\\Models\\Store', 1, 'Nam dolores.', NULL, 'logo', '2024-08-09 21:42:02', '2024-08-09 21:42:02'),
(1038, 'images/uploads/logo12.jpg', 'images/uploads/logo12.jpg', 36, 'App\\Models\\Store', 1, 'Ad itaque ut.', NULL, 'logo', '2024-08-09 21:42:02', '2024-08-09 21:42:02'),
(1039, 'images/uploads/logo14.jpg', 'images/uploads/logo14.jpg', 37, 'App\\Models\\Store', 1, 'Soluta culpa.', NULL, 'logo', '2024-08-09 21:42:02', '2024-08-09 21:42:02'),
(1040, 'images/uploads/logo16.jpg', 'images/uploads/logo16.jpg', 38, 'App\\Models\\Store', 1, 'Enim earum accusantium.', NULL, 'logo', '2024-08-09 21:42:02', '2024-08-09 21:42:02'),
(1041, 'images/uploads/logo18.jpg', 'images/uploads/logo18.jpg', 39, 'App\\Models\\Store', 1, 'Officiis dolor.', NULL, 'logo', '2024-08-09 21:42:02', '2024-08-09 21:42:02'),
(1042, 'images/uploads/logo10.jpg', 'images/uploads/logo10.jpg', 40, 'App\\Models\\Store', 1, 'Minima laboriosam.', NULL, 'logo', '2024-08-09 21:42:02', '2024-08-09 21:42:02'),
(1043, 'images/uploads/logo2.jpg', 'images/uploads/logo2.jpg', 41, 'App\\Models\\Store', 1, 'Soluta qui optio.', NULL, 'logo', '2024-08-09 21:42:02', '2024-08-09 21:42:02'),
(1044, 'images/uploads/logo20.jpg', 'images/uploads/logo20.jpg', 42, 'App\\Models\\Store', 1, 'Quaerat officiis in.', NULL, 'logo', '2024-08-09 21:42:02', '2024-08-09 21:42:02'),
(1045, 'images/uploads/logo16.jpg', 'images/uploads/logo16.jpg', 43, 'App\\Models\\Store', 1, 'Delectus veniam quos.', NULL, 'logo', '2024-08-09 21:42:02', '2024-08-09 21:42:02'),
(1046, 'images/uploads/logo17.jpg', 'images/uploads/logo17.jpg', 44, 'App\\Models\\Store', 1, 'In perferendis nisi.', NULL, 'logo', '2024-08-09 21:42:02', '2024-08-09 21:42:02'),
(1047, 'images/uploads/logo18.jpg', 'images/uploads/logo18.jpg', 45, 'App\\Models\\Store', 1, 'Eum at.', NULL, 'logo', '2024-08-09 21:42:02', '2024-08-09 21:42:02'),
(1048, 'images/uploads/logo8.jpg', 'images/uploads/logo8.jpg', 46, 'App\\Models\\Store', 1, 'Aut assumenda.', NULL, 'logo', '2024-08-09 21:42:02', '2024-08-09 21:42:02'),
(1049, 'images/uploads/logo20.jpg', 'images/uploads/logo20.jpg', 47, 'App\\Models\\Store', 1, 'At nihil ea.', NULL, 'logo', '2024-08-09 21:42:02', '2024-08-09 21:42:02'),
(1050, 'images/uploads/logo5.jpg', 'images/uploads/logo5.jpg', 48, 'App\\Models\\Store', 1, 'Soluta aut fugiat.', NULL, 'logo', '2024-08-09 21:42:02', '2024-08-09 21:42:02'),
(1051, 'images/uploads/logo7.jpg', 'images/uploads/logo7.jpg', 49, 'App\\Models\\Store', 1, 'Cum repudiandae illum.', NULL, 'logo', '2024-08-09 21:42:02', '2024-08-09 21:42:02'),
(1052, 'images/uploads/logo17.jpg', 'images/uploads/logo17.jpg', 50, 'App\\Models\\Store', 1, 'Aliquid tempora doloremque.', NULL, 'logo', '2024-08-09 21:42:02', '2024-08-09 21:42:02'),
(1092, 'images/uploads/1734999473-116353377242112_n.jpg', 'images/uploads/1734999473-116353377242112_n.jpg', 717, 'App\\Models\\Item', 0, '116353377242112_n.jpg', 136116, NULL, '2024-12-24 08:17:53', '2024-12-24 08:19:18'),
(1093, 'images/uploads/1734999558-049206836_n.jpg', 'images/uploads/1734999558-049206836_n.jpg', 717, 'App\\Models\\Item', 0, '049206836_n.jpg', 282873, NULL, '2024-12-24 08:19:18', '2024-12-24 08:19:18'),
(1097, 'images/uploads/1770526719-121.png', 'images/uploads/1770526719-121.png', 982, 'App\\Models\\Item', 0, '121.png', 224232, NULL, '2026-02-08 12:58:39', '2026-02-08 13:28:34'),
(1098, 'images/uploads/1770527774-1.png', 'images/uploads/1770527774-1.png', 982, 'App\\Models\\Item', 1, '1.png', 497671, NULL, '2026-02-08 13:16:14', '2026-02-08 13:28:34'),
(1099, 'images/uploads/1770528573-1.png', 'images/uploads/1770528573-1.png', 952, 'App\\Models\\Item', 1, '1.png', 497671, NULL, '2026-02-08 13:29:33', '2026-02-17 08:30:57'),
(1100, 'images/uploads/1770861423-111.jpeg', 'images/uploads/1770861423-111.jpeg', 952, 'App\\Models\\Item', 0, '111.jpeg', 164612, NULL, '2026-02-12 09:57:03', '2026-02-17 08:30:57'),
(1104, 'images/uploads/6a0ff8523ed88-1.jpg', 'images/uploads/6a0ff8523ed88-1.jpg', 666, 'App\\Models\\Item', 1, '1.jpg', 284706, NULL, '2026-05-22 05:31:46', '2026-06-13 04:05:39'),
(1105, 'images/uploads/6a0ff8524a313-2.jpg', 'images/uploads/6a0ff8524a313-2.jpg', 666, 'App\\Models\\Item', 0, '2.jpg', 274976, NULL, '2026-05-22 05:31:46', '2026-06-13 04:05:39'),
(1106, 'images/uploads/6a0ff91c37ccc-4.jpg', 'images/uploads/6a0ff91c37ccc-4.jpg', 666, 'App\\Models\\Item', 0, '4.jpg', 204225, NULL, '2026-05-22 05:35:08', '2026-06-13 04:05:39'),
(1107, 'images/uploads/6a10f928933b0-battery_charger1.jpg', 'images/uploads/6a10f928933b0-battery_charger1.jpg', 666, 'App\\Models\\Item', 0, 'battery_charger1.jpg', 155491, NULL, '2026-05-22 23:47:36', '2026-06-13 04:05:39'),
(1111, 'images/uploads/6a3fb99e2c9b7-11.jpg', 'images/uploads/6a3fb99e2c9b7-11.jpg', 52, 'App\\Models\\Store', 1, '11.jpg', 92441, NULL, '2026-06-27 10:53:02', '2026-06-27 10:53:02'),
(1112, 'images/uploads/6a3fb99e328c8-21.jpg', 'images/uploads/6a3fb99e328c8-21.jpg', 52, 'App\\Models\\Store', 1, '21.jpg', 98697, NULL, '2026-06-27 10:53:02', '2026-06-27 10:53:02'),
(1113, 'images/uploads/6a4082d2b8534-11.jpg', 'images/uploads/6a4082d2b8534-11.jpg', 53, 'App\\Models\\Store', 1, '11.jpg', 92441, NULL, '2026-06-28 01:11:30', '2026-06-28 01:11:30'),
(1114, 'images/uploads/6a4082d2bdaa1-21.jpg', 'images/uploads/6a4082d2bdaa1-21.jpg', 53, 'App\\Models\\Store', 1, '21.jpg', 98697, NULL, '2026-06-28 01:11:30', '2026-06-28 01:11:30'),
(1115, 'images/uploads/6a472443bd259-f7219c2420e7fc2b.png', 'images/uploads/6a472443bd259-f7219c2420e7fc2b.png', 57, 'App\\Models\\Store', 1, 'f7219c2420e7fc2b.png', 3253, NULL, '2026-07-03 01:53:58', '2026-07-03 01:53:58'),
(1116, 'images/uploads/6a4a36c2f19f5-41eb79dd9da52b83.png', 'images/uploads/6a4a36c2f19f5-41eb79dd9da52b83.png', 1001, 'App\\Models\\Item', 0, '41eb79dd9da52b83.png', 2599, NULL, '2026-07-05 09:49:46', '2026-07-05 09:49:46'),
(1117, 'images/uploads/6a4a36ca3c639-f7219c2420e7fc2b.png', 'images/uploads/6a4a36ca3c639-f7219c2420e7fc2b.png', 1001, 'App\\Models\\Item', 0, 'f7219c2420e7fc2b.png', 3253, NULL, '2026-07-05 09:49:46', '2026-07-05 09:49:46'),
(1118, 'images/uploads/6a4a38ce615f1-41eb79dd9da52b83.png', 'images/uploads/6a4a38ce615f1-41eb79dd9da52b83.png', 1002, 'App\\Models\\Item', 0, '41eb79dd9da52b83.png', 2599, NULL, '2026-07-05 09:58:23', '2026-07-05 09:58:23'),
(1119, 'images/uploads/6a4a3b05d85c6-41eb79dd9da52b83.png', 'images/uploads/6a4a3b05d85c6-41eb79dd9da52b83.png', 1003, 'App\\Models\\Item', 1, '41eb79dd9da52b83.png', 2599, NULL, '2026-07-05 10:07:51', '2026-07-05 10:10:42'),
(1120, 'images/uploads/6a4c6256f0c98-6a4729ea91ff8-f7219c2420e7fc2b.png', 'images/uploads/6a4c6256f0c98-6a4729ea91ff8-f7219c2420e7fc2b.png', 1004, 'App\\Models\\Item', 0, '6a4729ea91ff8-f7219c2420e7fc2b.png', 3253, NULL, '2026-07-07 01:20:13', '2026-07-07 01:20:13'),
(1121, 'images/uploads/6a4c625d89cf7-63fgw.png', 'images/uploads/6a4c625d89cf7-63fgw.png', 1004, 'App\\Models\\Item', 0, '63fgw.png', 98018, NULL, '2026-07-07 01:20:13', '2026-07-07 01:20:13'),
(1122, 'images/uploads/6a4c645e773f7-63fgw.png', 'images/uploads/6a4c645e773f7-63fgw.png', 1005, 'App\\Models\\Item', 0, '63fgw.png', 98018, NULL, '2026-07-07 01:28:47', '2026-07-07 01:28:47'),
(1123, 'images/uploads/6a4c848f900c3-6a4729ea91ff8-f7219c2420e7fc2b.png', 'images/uploads/6a4c848f900c3-6a4729ea91ff8-f7219c2420e7fc2b.png', 1008, 'App\\Models\\Item', 0, '6a4729ea91ff8-f7219c2420e7fc2b.png', 3253, NULL, '2026-07-07 03:46:09', '2026-07-07 03:46:49'),
(1124, 'images/uploads/6a4c8491375b1-63fgw.png', 'images/uploads/6a4c8491375b1-63fgw.png', 1008, 'App\\Models\\Item', 1, '63fgw.png', 98018, NULL, '2026-07-07 03:46:09', '2026-07-07 03:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `interconnected_cities`
--

CREATE TABLE `interconnected_cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `main_city_id` int(11) NOT NULL,
  `connected_city_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interconnected_cities`
--

INSERT INTO `interconnected_cities` (`id`, `main_city_id`, `connected_city_id`, `created_at`, `updated_at`) VALUES
(1, 442, 461, '2024-09-25 07:41:45', '2024-09-25 07:41:45'),
(2, 442, 438, '2024-09-08 07:44:05', '2024-09-08 07:44:05'),
(3, 442, 441, '2024-09-08 07:44:23', '2024-09-08 07:44:23'),
(4, 442, 442, '2024-09-08 07:44:39', '2024-09-08 07:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` tinyint(1) DEFAULT NULL,
  `updated_by` tinyint(1) DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_prices`
--

CREATE TABLE `item_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `delivery_charge_id` int(11) DEFAULT 1,
  `original_price` decimal(8,2) NOT NULL,
  `selling_price` decimal(8,2) NOT NULL,
  `online_price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `icon`, `name`, `path`, `is_visible`, `created_at`, `updated_at`) VALUES
(1, 0, 'fas fa-home', 'Home', '/', 1, '2024-08-09 21:38:50', '2024-08-09 21:38:50'),
(2, 0, 'fas fa-user-alt', 'Profile', '/dashboard/profile', 1, '2024-08-09 21:38:50', '2024-08-09 21:38:50'),
(3, 0, 'fas fa-list-ul', 'My transactions', '/dashboard/my-transactions', 1, '2024-08-09 21:38:50', '2024-08-09 21:38:50'),
(4, 0, 'fas fa-users-cog', 'Users', '/dashboard/users', 1, '2024-08-09 21:38:50', '2024-08-09 21:38:50'),
(5, 0, 'fa-solid fa-store', 'My Stores', '/dashboard/my-stores', 1, '2024-08-09 21:38:50', '2024-08-09 21:38:50'),
(6, 0, 'fa-solid fa-store', 'Store Access', '/dashboard/shared-store-access', 1, '2024-08-09 21:38:51', '2024-08-09 21:38:51'),
(7, 0, 'fa-solid fa-mobile-screen', 'Shared Stores', '/dashboard/shared-stores', 0, '2024-08-09 21:38:51', '2024-08-09 21:38:51'),
(8, 0, '', 'Invoices', '/dashboard/invoices', 0, '2024-08-09 21:38:51', '2024-08-09 21:38:51'),
(9, 0, 'fas fa-list-ul', 'Menus', '/dashboard/menus', 0, '2024-08-09 21:38:51', '2024-08-09 21:38:51'),
(10, 0, 'shopping_bag', 'Items', '/dashboard/items', 0, '2024-08-09 21:38:51', '2024-08-09 21:38:51'),
(11, 0, 'fa-solid fa-truck', 'Deliveries', '/dashboard/deliveries', 1, '2024-08-09 21:38:51', '2024-08-09 21:38:51'),
(12, 0, 'fas fa-list-ul', 'Transactions', '/dashboard/transactions', 1, '2024-08-09 21:38:51', '2024-08-09 21:38:51'),
(13, 0, 'far fa-address-card', 'Store Access', '/dashboard/shared-store-access', 1, '2024-08-09 21:38:51', '2024-08-09 21:38:51'),
(14, 0, 'far fa-address-card', 'My Franchisee', '/dashboard/franchisees', 1, '2024-08-09 21:38:51', '2024-08-09 21:38:51'),
(15, 0, 'fas fa-list-ul', 'All Transactions', '/dashboard/all-transactions', 1, '2024-08-09 21:38:51', '2024-08-09 21:38:51'),
(16, 0, 'fa-solid fa-store', 'All Stores', '/dashboard/all-stores', 1, '2024-08-09 21:38:51', '2024-08-09 21:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `menu_role`
--

CREATE TABLE `menu_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_role`
--

INSERT INTO `menu_role` (`id`, `menu_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-11-08 08:19:06', '2024-11-01 08:19:08'),
(2, 2, 1, '2024-11-01 08:19:01', '2024-11-01 08:19:04'),
(3, 3, 1, '2024-11-08 08:18:53', '2024-11-15 08:18:58'),
(19, 4, 1, '2024-01-04 06:52:45', '2024-01-04 06:52:45'),
(20, 5, 1, '2024-07-07 08:59:53', '2024-07-07 08:59:53'),
(23, 11, 1, '2024-11-29 08:19:37', '2024-11-29 08:19:37'),
(24, 15, 1, '2026-01-25 06:19:12', '2026-01-25 06:19:12'),
(26, 16, 1, '2026-05-08 16:19:25', '2026-05-08 16:19:25'),
(27, 1, 2, '2026-05-09 16:30:21', '2026-05-09 16:30:21'),
(28, 2, 2, '2026-05-09 16:30:21', '2026-05-09 16:30:21'),
(31, 3, 2, '2026-05-08 16:19:25', '2026-05-08 16:19:25'),
(32, 4, 2, '2026-05-09 16:30:21', '2026-05-09 16:30:21'),
(33, 8, 2, '2026-05-08 16:19:25', '2026-05-08 16:19:25'),
(34, 9, 2, '2026-05-09 16:30:21', '2026-05-09 16:30:21'),
(35, 11, 2, '2026-05-08 16:19:25', '2026-05-08 16:19:25'),
(36, 15, 2, '2026-05-09 16:30:21', '2026-05-09 16:30:21'),
(37, 16, 2, '2026-05-08 16:19:25', '2026-05-08 16:19:25'),
(38, 1, 3, '2026-05-08 16:19:25', '2026-05-08 16:19:25'),
(39, 2, 3, '2026-05-08 16:19:25', '2026-05-08 16:19:25'),
(40, 3, 3, '2026-05-09 16:30:21', '2026-05-09 16:30:21'),
(41, 5, 3, '2026-05-08 16:19:25', '2026-05-08 16:19:25'),
(42, 6, 3, '2026-05-09 16:30:21', '2026-05-09 16:30:21'),
(44, 11, 3, '2026-05-08 16:19:25', '2026-05-08 16:19:25'),
(45, 12, 3, '2026-05-09 16:30:21', '2026-05-09 16:30:21'),
(46, 1, 7, '2026-05-08 16:19:25', '2026-05-08 16:19:25'),
(47, 2, 7, '2026-05-09 16:30:21', '2026-05-09 16:30:21'),
(48, 3, 7, '2026-05-08 16:19:25', '2026-05-08 16:19:25'),
(49, 1, 4, '2026-05-08 03:19:25', '2026-05-08 03:19:25'),
(50, 2, 4, '2026-05-09 03:30:21', '2026-05-09 03:30:21'),
(51, 6, 4, '2026-05-08 03:19:25', '2026-05-08 03:19:25');

-- --------------------------------------------------------

--
-- Table structure for table `menu_role_access_right`
--

CREATE TABLE `menu_role_access_right` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_role_id` bigint(20) NOT NULL,
  `access_right_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_role_access_right`
--

INSERT INTO `menu_role_access_right` (`id`, `menu_role_id`, `access_right_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-08-09 21:42:07', '2024-08-09 21:42:07'),
(2, 1, 2, '2024-08-09 21:42:08', '2024-08-09 21:42:08'),
(3, 1, 3, '2024-08-09 21:42:08', '2024-08-09 21:42:08'),
(4, 1, 4, '2024-08-09 21:42:08', '2024-08-09 21:42:08'),
(5, 1, 5, '2024-08-09 21:42:08', '2024-08-09 21:42:08'),
(6, 2, 1, '2024-08-09 21:42:08', '2024-08-09 21:42:08'),
(7, 2, 2, '2024-08-09 21:42:08', '2024-08-09 21:42:08'),
(8, 2, 3, '2024-08-09 21:42:08', '2024-08-09 21:42:08'),
(9, 2, 4, '2024-08-09 21:42:08', '2024-08-09 21:42:08'),
(10, 2, 5, '2024-08-09 21:42:08', '2024-08-09 21:42:08'),
(11, 3, 1, '2024-08-09 21:42:08', '2024-08-09 21:42:08'),
(12, 3, 2, '2024-08-09 21:42:08', '2024-08-09 21:42:08'),
(13, 3, 3, '2024-08-09 21:42:08', '2024-08-09 21:42:08'),
(14, 3, 4, '2024-08-09 21:42:08', '2024-08-09 21:42:08'),
(15, 3, 5, '2024-08-09 21:42:08', '2024-08-09 21:42:08'),
(16, 4, 1, '2024-08-09 21:42:09', '2024-08-09 21:42:09'),
(17, 4, 2, '2024-08-09 21:42:09', '2024-08-09 21:42:09'),
(18, 4, 3, '2024-08-09 21:42:09', '2024-08-09 21:42:09'),
(19, 4, 4, '2024-08-09 21:42:09', '2024-08-09 21:42:09'),
(20, 4, 5, '2024-08-09 21:42:09', '2024-08-09 21:42:09'),
(21, 5, 1, '2024-08-09 21:42:09', '2024-08-09 21:42:09'),
(22, 5, 2, '2024-08-09 21:42:09', '2024-08-09 21:42:09'),
(23, 5, 3, '2024-08-09 21:42:09', '2024-08-09 21:42:09'),
(24, 5, 4, '2024-08-09 21:42:09', '2024-08-09 21:42:09'),
(25, 5, 5, '2024-08-09 21:42:09', '2024-08-09 21:42:09'),
(26, 6, 1, '2024-08-09 21:42:09', '2024-08-09 21:42:09'),
(27, 6, 2, '2024-08-09 21:42:09', '2024-08-09 21:42:09'),
(28, 6, 3, '2024-08-09 21:42:09', '2024-08-09 21:42:09'),
(29, 6, 4, '2024-08-09 21:42:09', '2024-08-09 21:42:09'),
(30, 6, 5, '2024-08-09 21:42:09', '2024-08-09 21:42:09'),
(31, 7, 1, '2024-08-09 21:42:10', '2024-08-09 21:42:10'),
(32, 7, 2, '2024-08-09 21:42:10', '2024-08-09 21:42:10'),
(33, 7, 3, '2024-08-09 21:42:10', '2024-08-09 21:42:10'),
(34, 7, 4, '2024-08-09 21:42:10', '2024-08-09 21:42:10'),
(35, 7, 5, '2024-08-09 21:42:10', '2024-08-09 21:42:10'),
(36, 8, 1, '2024-08-09 21:42:10', '2024-08-09 21:42:10'),
(37, 8, 2, '2024-08-09 21:42:10', '2024-08-09 21:42:10'),
(38, 8, 3, '2024-08-09 21:42:10', '2024-08-09 21:42:10'),
(39, 8, 4, '2024-08-09 21:42:10', '2024-08-09 21:42:10'),
(40, 8, 5, '2024-08-09 21:42:10', '2024-08-09 21:42:10'),
(41, 9, 1, '2024-08-09 21:42:10', '2024-08-09 21:42:10'),
(42, 9, 2, '2024-08-09 21:42:10', '2024-08-09 21:42:10'),
(43, 9, 3, '2024-08-09 21:42:10', '2024-08-09 21:42:10'),
(44, 9, 4, '2024-08-09 21:42:10', '2024-08-09 21:42:10'),
(45, 9, 5, '2024-08-09 21:42:11', '2024-08-09 21:42:11'),
(46, 10, 1, '2024-08-09 21:42:11', '2024-08-09 21:42:11'),
(47, 10, 2, '2024-08-09 21:42:11', '2024-08-09 21:42:11'),
(48, 10, 3, '2024-08-09 21:42:11', '2024-08-09 21:42:11'),
(49, 10, 4, '2024-08-09 21:42:11', '2024-08-09 21:42:11'),
(50, 10, 5, '2024-08-09 21:42:11', '2024-08-09 21:42:11'),
(51, 11, 1, '2024-08-09 21:42:11', '2024-08-09 21:42:11'),
(52, 11, 2, '2024-08-09 21:42:11', '2024-08-09 21:42:11'),
(53, 11, 3, '2024-08-09 21:42:11', '2024-08-09 21:42:11'),
(54, 11, 4, '2024-08-09 21:42:11', '2024-08-09 21:42:11'),
(55, 11, 5, '2024-08-09 21:42:11', '2024-08-09 21:42:11'),
(56, 12, 1, '2024-08-09 21:42:11', '2024-08-09 21:42:11'),
(57, 12, 2, '2024-08-09 21:42:11', '2024-08-09 21:42:11'),
(58, 12, 3, '2024-08-09 21:42:11', '2024-08-09 21:42:11'),
(59, 12, 4, '2024-08-09 21:42:12', '2024-08-09 21:42:12'),
(60, 12, 5, '2024-08-09 21:42:12', '2024-08-09 21:42:12'),
(61, 13, 1, '2024-08-09 21:42:12', '2024-08-09 21:42:12'),
(62, 13, 2, '2024-08-09 21:42:12', '2024-08-09 21:42:12'),
(63, 13, 3, '2024-08-09 21:42:12', '2024-08-09 21:42:12'),
(64, 13, 4, '2024-08-09 21:42:12', '2024-08-09 21:42:12'),
(65, 13, 5, '2024-08-09 21:42:12', '2024-08-09 21:42:12'),
(66, 14, 1, '2024-08-09 21:42:12', '2024-08-09 21:42:12'),
(67, 14, 2, '2024-08-09 21:42:12', '2024-08-09 21:42:12'),
(68, 14, 3, '2024-08-09 21:42:12', '2024-08-09 21:42:12'),
(69, 14, 4, '2024-08-09 21:42:12', '2024-08-09 21:42:12'),
(70, 14, 5, '2024-08-09 21:42:12', '2024-08-09 21:42:12'),
(71, 15, 1, '2024-08-09 21:42:12', '2024-08-09 21:42:12'),
(72, 15, 2, '2024-08-09 21:42:13', '2024-08-09 21:42:13'),
(73, 15, 3, '2024-08-09 21:42:13', '2024-08-09 21:42:13'),
(74, 15, 4, '2024-08-09 21:42:13', '2024-08-09 21:42:13'),
(75, 15, 5, '2024-08-09 21:42:13', '2024-08-09 21:42:13'),
(76, 16, 1, '2024-08-09 21:42:13', '2024-08-09 21:42:13'),
(77, 16, 2, '2024-08-09 21:42:13', '2024-08-09 21:42:13'),
(78, 16, 3, '2024-08-09 21:42:13', '2024-08-09 21:42:13'),
(79, 16, 4, '2024-08-09 21:42:13', '2024-08-09 21:42:13'),
(80, 16, 5, '2024-08-09 21:42:13', '2024-08-09 21:42:13'),
(81, 17, 1, '2024-08-09 21:42:13', '2024-08-09 21:42:13'),
(82, 17, 2, '2024-08-09 21:42:13', '2024-08-09 21:42:13'),
(83, 17, 3, '2024-08-09 21:42:14', '2024-08-09 21:42:14'),
(84, 17, 4, '2024-08-09 21:42:14', '2024-08-09 21:42:14'),
(85, 17, 5, '2024-08-09 21:42:14', '2024-08-09 21:42:14'),
(86, 18, 1, '2024-08-09 21:42:14', '2024-08-09 21:42:14'),
(87, 18, 2, '2024-08-09 21:42:14', '2024-08-09 21:42:14'),
(88, 18, 3, '2024-08-09 21:42:14', '2024-08-09 21:42:14'),
(89, 18, 4, '2024-08-09 21:42:14', '2024-08-09 21:42:14'),
(90, 18, 5, '2024-08-09 21:42:14', '2024-08-09 21:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mobile_otp`
--

CREATE TABLE `mobile_otp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `reset_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `normal_balance`
--

CREATE TABLE `normal_balance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `normal_balance`
--

INSERT INTO `normal_balance` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Debit', '2024-08-09 21:42:04', '2024-08-09 21:42:04'),
(2, 'Credit', '2024-08-09 21:42:04', '2024-08-09 21:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('064543e9b97e5964342ec60cd109b680c8e493313b72479a5dfde9ac8de8cefc10bb787403a525a2', 28, 1, 'MyApp', '[]', 1, '2026-01-02 11:38:14', '2026-04-27 07:28:27', '2027-01-02 11:38:14'),
('07ec07e758ebc73940fcc5543e19facdad296fc4cbc77ec4532a3a68070ba29cd8526977b9593665', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:17:16', '2026-04-27 07:28:27', '2027-01-03 08:17:16'),
('08dc80a72f980b7aa94a6629c938f24ed87c4a55c7052220e1c356758225bddea3655536500131d7', 26, 1, 'MyApp', '[]', 1, '2024-12-27 08:16:30', '2024-12-27 10:11:23', '2025-12-27 08:16:30'),
('0d693be89a6b2905b345816f76c70e9b78e9382c454cbd2d6ce744b3c79b1874b209670642bac991', 27, 1, 'MyApp', '[]', 1, '2026-01-04 08:40:43', '2026-01-04 08:42:12', '2027-01-04 08:40:43'),
('0e0d0624fdf40436f9480d1e9c973385284470c45f035e7570adfbaf07979930282bb9b5bb0b9a08', 28, 1, 'MyApp', '[]', 1, '2026-01-02 11:58:33', '2026-04-27 07:28:27', '2027-01-02 11:58:33'),
('0e5985ed6f4cffc9a12a22d0c913acdaf057de42a721d7f89aedb45410904dafa135d54f796486e2', 28, 1, 'MyApp', '[]', 1, '2026-01-02 11:31:59', '2026-04-27 07:28:27', '2027-01-02 11:31:59'),
('0e7cd543282dd95ef73fadb14e5b0bfc3844bd2cd80e2765237b1a0ff9c672667cbbc9972b18de06', 26, 1, 'MyApp', '[]', 1, '2024-11-17 06:37:17', '2024-12-27 10:11:23', '2025-11-17 06:37:17'),
('10081106e46a3e24711516b8e3257c4ad8a40a275929044cb8c622df6281936c14499166b8ecac70', 27, 1, 'MyApp', '[]', 1, '2024-11-09 08:16:41', '2026-01-04 08:42:12', '2025-11-09 08:16:41'),
('1008f4f07521284c7e17043b317c08584f8492d3a451df44b855f4180099d1bf7fadebf6ac782b4f', 26, 1, 'MyApp', '[]', 1, '2024-11-16 08:08:58', '2024-12-27 10:11:23', '2025-11-16 08:08:58'),
('11644d96ae94fe55f91b298c8b79345de122fa67f8904eaaaf1d3166e53035fea3069ffee68b811f', 24, 1, 'MyApp', '[]', 1, '2024-10-16 06:25:13', '2024-10-21 06:08:02', '2025-10-16 06:25:13'),
('17a5e786e0bd18930c0095ca7b1752630d0ea8691666ce0358f9a305f392bc07f9b0636622b1ede0', 66, 1, 'google-login', '[]', 1, '2026-05-20 11:48:19', '2026-07-05 04:24:19', '2027-05-20 07:48:19'),
('17d263466f9cfced2480dd0bee3226a1262241fc6347413df98918dda67aae022461d30db265a7bd', 66, 1, 'MyApp', '[]', 1, '2026-07-02 06:14:37', '2026-07-05 04:24:19', '2027-07-02 15:14:37'),
('17f6ba3a4db5eb71a2c0257747fedcd094fea2b8cb94a87596f17ffec21684e273de0390cd878c97', 27, 1, 'MyApp', '[]', 1, '2024-11-09 08:18:20', '2026-01-04 08:42:12', '2025-11-09 08:18:20'),
('19408563346c578755fc17f6a3bd10cd904e9787ae639ec295caeabeefd7c52a2c17d587e7699f9f', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:37:58', '2026-04-27 07:28:27', '2027-01-03 08:37:58'),
('1a3a4751731ebcee7c11a05c042503ddd378d7ae80af0a4b7001ee5c7cbd660bcb4325f37182c5b8', 27, 1, 'MyApp', '[]', 1, '2024-11-09 07:54:59', '2026-01-04 08:42:12', '2025-11-09 07:54:59'),
('1e2e92e2a63fbca9ea8cf6c19705c690600c2262210134cb5b3ada0cc4f525785b76d4452016456f', 27, 1, 'MyApp', '[]', 1, '2026-01-03 07:57:47', '2026-01-04 08:42:12', '2027-01-03 07:57:47'),
('1e72e53414e234bea7f57cdcf0ce3c0a18d701ded130b22ba16f818712302339addc8205f894e446', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:36:16', '2026-04-27 07:28:27', '2027-01-03 08:36:16'),
('1ebb9724c980200679b02bf276c7ad080d78f9eb7dd82a8ad495eae0cd47f85bc1dcbdcf73857e56', 68, 1, 'MyApp', '[]', 1, '2026-05-20 02:44:51', '2026-06-22 20:14:02', '2027-05-20 11:44:51'),
('21d0789251dc3dd482761978336bc026993561886a49bd01733ba3252f68dbe4d9a0dbcc7b59e3e0', 28, 1, 'MyApp', '[]', 1, '2026-04-27 07:14:56', '2026-04-27 07:28:27', '2027-04-27 16:14:56'),
('22e7a3295f9a2c597e2ce5d55a36b26c5d02808cb5d69bfc8cbc6cb971b9c1393abe390f9077e90d', 39, 1, 'MyApp', '[]', 0, '2026-05-14 00:55:47', '2026-05-14 00:55:47', '2027-05-14 09:55:47'),
('2420749a34d4c84867c148d03337f2e4b9c0d2dc09e282194447377882ad89784c95bf6bed9b4e60', 26, 1, 'MyApp', '[]', 1, '2024-12-23 10:07:37', '2024-12-27 10:11:23', '2025-12-23 10:07:37'),
('263b3960e4ba02f372fdd9e4bc4bac1aa2f52a265b573c6a838dabae4675c40357bf603427fdf26b', 36, 1, 'facebook-login', '[]', 0, '2026-05-09 16:23:40', '2026-05-09 16:23:40', '2027-05-09 12:23:40'),
('2708725498c3009a7a45798057934682bd1d979a2d2702a171a38fde7c6468bfd3d1363f943220c2', 28, 1, 'MyApp', '[]', 1, '2026-01-04 09:31:19', '2026-04-27 07:28:27', '2027-01-04 09:31:19'),
('2777c2d347f1258b7b88239a96959f406c266bbc7233877f63134e59b74d1ba8ab31096c1d1de39f', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:33:40', '2026-04-27 07:28:27', '2027-01-03 08:33:40'),
('278d9e54e7e50571dc2ddc2dfd5716b3b5ef01dc0f00228ec573eeca71e8c2566881c2cb92015c6d', 68, 1, 'MyApp', '[]', 1, '2026-05-20 02:20:19', '2026-06-22 20:14:02', '2027-05-20 11:20:19'),
('27fd36eec2a3e6ce014e2c4a403e8e38c21a5702138c0bb15aa662ca8e3eaaca3d29d1a7f8b18fcb', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:37:15', '2026-04-27 07:28:27', '2027-01-03 08:37:15'),
('29c14f491f59b7240a6c66d023bf2d38a0e82aba32d36330885ed6c56c9e65908a3a2b8b174a62a3', 28, 1, 'MyApp', '[]', 1, '2026-03-31 10:18:58', '2026-04-27 07:28:27', '2027-03-31 10:18:58'),
('2daac5065de5b214e513ebb8a649c6583ee70afd11a17b6aa2812e7cb6835e031ca2603123b538ae', 28, 1, 'MyApp', '[]', 1, '2026-01-02 11:41:40', '2026-04-27 07:28:27', '2027-01-02 11:41:40'),
('2de729b26beb70a47c598ab2681c580419752643a29106de0934144368ba89b4d3516dd2f28b784b', 27, 1, 'MyApp', '[]', 1, '2024-11-09 08:15:00', '2026-01-04 08:42:12', '2025-11-09 08:15:00'),
('2f15e591fbb22e4a1171b78e4fa276c4b1e9f9494e4eaf96e7d4cadbe370f539456bd56b80900bac', 22, 1, 'MyApp', '[]', 1, '2024-11-02 15:04:39', '2024-11-02 15:51:39', '2025-11-02 15:04:39'),
('319f3f429d1140bce872596dbc85ee417051dcadebcd7703a3c7106a121cc10ec140b00da3fe67d7', 68, 1, 'MyApp', '[]', 1, '2026-05-25 23:57:27', '2026-06-22 20:14:02', '2027-05-26 08:57:27'),
('3388358016d1d758698885c22188f6137e49c287c7c0cbf0f3e521e7e1f49de46abfd326a4969b43', 33, 1, 'facebook-login', '[]', 0, '2026-05-09 15:51:01', '2026-05-09 15:51:01', '2027-05-09 11:51:01'),
('33e1c28de0b645acd67f8d83e4750b620ab77c07eadc3adc831f7d8fd2cd5d03ed7d58cf1ab42fe7', 28, 1, 'MyApp', '[]', 1, '2026-02-08 12:51:18', '2026-04-27 07:28:27', '2027-02-08 12:51:18'),
('398b15860b85a0801b87e6a5551b799b7e457c18e01c699f9bf84cb9429ac1f516a0d8053a58399c', 26, 1, 'MyApp', '[]', 1, '2024-12-01 08:38:50', '2024-12-27 10:11:23', '2025-12-01 08:38:50'),
('3b7ddf7304219d31721222a22bfc48b47b9f0db5b87c70c60c33d61700aaf1121679b074db3c0c65', 33, 1, 'facebook-login', '[]', 0, '2026-05-09 15:44:19', '2026-05-09 15:44:19', '2027-05-09 11:44:19'),
('3bee9cb4389a6bda80c1465d43454edfdf4c9fa837e973efaf580a6c38742149ddd4bac4fee1da9e', 28, 1, 'MyApp', '[]', 1, '2026-04-27 07:09:47', '2026-04-27 07:28:27', '2027-04-27 16:09:47'),
('3cc4ef471b4e5d6a059a4f673d6374b160c4434f96606c63ea2a151b998fefb8494c8f985950a065', 25, 1, 'MyApp', '[]', 0, '2024-10-16 05:29:51', '2024-10-16 05:29:51', '2025-10-16 05:29:51'),
('40eb2ef42e85b84edec253014fdbf99cad9600a3be992fd4d6825f62eacf75219a556e3b0120df96', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:25:24', '2026-04-27 07:28:27', '2027-01-03 08:25:24'),
('40fcc5186228e9f612dd3c834332773b231625a293f72b7a79b52cab324cf94928cc94e7f88479fd', 28, 1, 'MyApp', '[]', 1, '2026-03-31 10:17:13', '2026-04-27 07:28:27', '2027-03-31 10:17:13'),
('417ffe7c610788d93d0eae8b2d7ae446298ae68cc411b2f2c5379a4b2fd90bab11d28b7154cb66fd', 68, 1, 'MyApp', '[]', 1, '2026-05-23 22:16:55', '2026-06-22 20:14:02', '2027-05-24 07:16:55'),
('419f506a30f79d338ffa4bc08352cf642a44e6936606b333864ed38a790dea1629b73f3d8e83476d', 26, 1, 'MyApp', '[]', 0, '2024-12-27 10:11:51', '2024-12-27 10:11:51', '2025-12-27 10:11:51'),
('41a0a6afc666f2c3e2e3f65d7a107edb29f411d72f3a8ffb1feb6fd61a1f00d1724d0c4242d75166', 34, 1, 'facebook-login', '[]', 0, '2026-05-09 16:04:35', '2026-05-09 16:04:35', '2027-05-09 12:04:35'),
('42fe3fe21ebb6a28499a8450bbd3057246572d10b62637a798c49a118e4f0fbf3cfcffafb29b8d8d', 26, 1, 'MyApp', '[]', 1, '2024-12-27 08:16:45', '2024-12-27 10:11:23', '2025-12-27 08:16:45'),
('453c9f023ddd895c7a25a77adaf763ae83aa3815acfa4277638091daa181a8605d1e0337b946725b', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:38:44', '2026-04-27 07:28:27', '2027-01-03 08:38:44'),
('46acae5386aa6ff7b491393c0ae3b6f119ff59ffc8c5cbdb32368a960566b4495d321b44dd5db327', 30, 1, 'facebook-login', '[]', 0, '2026-05-09 15:29:53', '2026-05-09 15:29:53', '2027-05-09 11:29:53'),
('477457618e9077e84d40507e09633a51087a7fd5703525c511df1cecc2c810587c03d64bfe4e9dcb', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:37:36', '2026-04-27 07:28:27', '2027-01-03 08:37:36'),
('48111d11a7cc0752747e8d9d006314e1693e10e8a32bb85b4079e2a7f1453823344171c83500bf2a', 28, 1, 'MyApp', '[]', 1, '2026-01-03 07:59:20', '2026-04-27 07:28:27', '2027-01-03 07:59:20'),
('481d3b88d098252fe4a22bfc3209cf68322f6ae978eaea35939b993c120cd493505d7dfe5a146e44', 28, 1, 'MyApp', '[]', 1, '2026-04-27 07:27:41', '2026-04-27 07:28:27', '2027-04-27 16:27:41'),
('48650a6c962bb5eaafed341b1c63effa394ea6383d5b52dc8d6e395e91c1f32d83c68ad670e71589', 66, 1, 'MyApp', '[]', 1, '2026-06-10 00:57:57', '2026-07-05 04:24:19', '2027-06-10 09:57:57'),
('4b8f9121c9f01408ba8ecfac65d5d25dddce344323a4aaf94b1a4204281897fca1875f1540f1aeda', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:36:47', '2026-04-27 07:28:27', '2027-01-03 08:36:47'),
('4bd2007d7151a9acc2df965ffb4504830e086469d5499dfe57162097dcb5108498141464949bfc23', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:24:45', '2026-04-27 07:28:27', '2027-01-03 08:24:45'),
('4d16abaa62e5c0374b208e34f2af8c256847f67d17c52ab45dcc950062863ee1b293dc960106c607', 27, 1, 'MyApp', '[]', 1, '2024-11-09 08:17:05', '2026-01-04 08:42:12', '2025-11-09 08:17:05'),
('4fc2287824c1d4a7728b195ebf5656df58d454de4e07ec433e4d147fd61d6a045164c5f5b49240bd', 26, 1, 'MyApp', '[]', 1, '2024-12-15 04:32:50', '2024-12-27 10:11:23', '2025-12-15 04:32:50'),
('5183829e514f2d8284f732b07718957b511eaa7f2e7e5de8c89415def592ab07094a67b2210b034f', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:31:23', '2026-04-27 07:28:27', '2027-01-03 08:31:23'),
('51bdc4ed215c773297dc3303c2ff9c77568a169d5f97332a8ba3de06cc16fdde053c527300f4e223', 37, 1, 'MyApp', '[]', 0, '2026-05-14 00:46:11', '2026-05-14 00:46:11', '2027-05-14 09:46:11'),
('52b301d2025ceebe4a01eaaa670ac95a64e36b0213d7112a3e8cf9e01218544015a071e37b392052', 26, 1, 'MyApp', '[]', 1, '2024-10-21 06:09:56', '2024-12-27 10:11:23', '2025-10-21 06:09:56'),
('53a096f7e3bbd1108b923a37135d0c24ce311d2c4a8c8ae7f22d91a131931a7384838ea21c857f4c', 28, 1, 'MyApp', '[]', 1, '2026-03-31 10:13:42', '2026-04-27 07:28:27', '2027-03-31 10:13:42'),
('53b150af4289f7e32dcf702d571e3c1aa3b0728fd4efb002640a6e41cc01babb2138f618902b06f0', 66, 1, 'google-login', '[]', 1, '2026-06-07 12:19:51', '2026-07-05 04:24:19', '2027-06-07 08:19:51'),
('5573e5e410180cea12939e726af44b6f1a102ba24173020988e8e5c058dd2a68220964c81707aa71', 28, 1, 'MyApp', '[]', 1, '2026-04-19 03:21:00', '2026-04-27 07:28:27', '2027-04-19 12:21:00'),
('5672843e461bc5548ae8ea92a7d6c6f5ba2d4fe0c47a2982d491e0e38f130db0c61c6e6616d34986', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:35:42', '2026-04-27 07:28:27', '2027-01-03 08:35:42'),
('576037debeaa758bf8e9ef1517c0930a3f6f106325a08ce0cc1527482711f9b13609bcf40809ad1d', 24, 1, 'MyApp', '[]', 1, '2024-10-13 06:55:13', '2024-10-21 06:08:02', '2025-10-13 06:55:13'),
('5970843354c52a61ae896de5c41eddca3e67a638c6ba8c497d36c19bcd40928062779f579c2852aa', 24, 1, 'MyApp', '[]', 1, '2024-10-13 06:53:32', '2024-10-21 06:08:02', '2025-10-13 06:53:32'),
('598d123291b1e173a2208bc854646d2226f112e01dc9f58a8696843579439c61b9e542ec076abdec', 33, 1, 'facebook-login', '[]', 0, '2026-05-09 15:45:31', '2026-05-09 15:45:31', '2027-05-09 11:45:31'),
('5af5e5ab1afc6da39838db6a129747569a5b2402231999646a843cd454eb56accb251935796ca509', 66, 1, 'MyApp', '[]', 1, '2026-06-22 20:15:02', '2026-07-05 04:24:19', '2027-06-23 05:15:02'),
('605ef3ff38b8242189f6d816836a1e3202c67c4746179abf9be69f09c66d5aee30684ad8d7bd1cde', 24, 1, 'MyApp', '[]', 1, '2024-10-18 08:29:46', '2024-10-21 06:08:02', '2025-10-18 08:29:46'),
('607753615fda77b416efa09c9dacbb1e110c243056cf4f333b7dbb361a77845bea45634b8763fe96', 34, 1, 'facebook-login', '[]', 0, '2026-05-09 16:03:53', '2026-05-09 16:03:53', '2027-05-09 12:03:53'),
('64cbf37f173e7c108ebf3bcc5f4370bf635f2e9df257dcc1f0e45658351362900fbb6d89382bc887', 27, 1, 'MyApp', '[]', 1, '2024-11-09 08:17:32', '2026-01-04 08:42:12', '2025-11-09 08:17:32'),
('6625c1ae255125cd526ba0933616c7dd6c769d3f9c663c847350830546a2579dd1642a17f52cc3b2', 66, 1, 'MyApp', '[]', 1, '2026-06-20 02:25:46', '2026-07-05 04:24:19', '2027-06-20 11:25:46'),
('66bd63aeff4fb3aa9d8bb60d797a161a7b6ff03e6489ff7684a56053e371c4c7832a70adbf746c22', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:32:44', '2026-04-27 07:28:27', '2027-01-03 08:32:44'),
('6793101e4b8b6e8f33c4b771cda4aad7e07c71b61c352a10349e2c2cbf1ec32b0d8ae5077e83d8a7', 27, 1, 'MyApp', '[]', 1, '2024-11-09 11:21:24', '2026-01-04 08:42:12', '2025-11-09 11:21:24'),
('684a6010dc575ab96498e9a394982fb859504f37701a408909c1370c414740d8047241e31efae806', 28, 1, 'MyApp', '[]', 1, '2026-01-24 09:09:25', '2026-04-27 07:28:27', '2027-01-24 09:09:25'),
('6bc897a4021a01790cc635ef695f110d0366600d460ebde68f6d63cc1d9d0b9d1fc050f8dfe9299d', 38, 1, 'MyApp', '[]', 0, '2026-05-14 00:53:29', '2026-05-14 00:53:29', '2027-05-14 09:53:29'),
('6f30369e5851881039eed749d19081c5016a8dac218a711c6ff1dc0a54d6977e75df8c354c23c8a0', 66, 1, 'MyApp', '[]', 0, '2026-07-05 08:33:25', '2026-07-05 08:33:27', '2027-07-05 17:33:25'),
('7023f2f68cf10bc00a024dc5640f5ef3385a2733670375ea9391fe86604ec55b3ad5cee2794686b6', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:35:00', '2026-04-27 07:28:27', '2027-01-03 08:35:00'),
('705a65c3c3d15d5ba237ea454bf975c03185b51a4f0674bbb8bd213e56aeb133ea37179b17eb5fb0', 66, 1, 'MyApp', '[]', 1, '2026-06-13 23:49:41', '2026-07-05 04:24:19', '2027-06-14 08:49:41'),
('73aacc0261a61a6a27ddfde32dcbcdde4a9c048f498cbee041694fc3bbdc7081b3eb621edee883ef', 27, 1, 'MyApp', '[]', 1, '2024-11-10 10:40:01', '2026-01-04 08:42:12', '2025-11-10 10:40:01'),
('749d5d4eb2362cc13610d62559cc6b467e6ba56baafcf4030393f111b6a03035508022c64eb50ff5', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:41:58', '2026-04-27 07:28:27', '2027-01-03 08:41:58'),
('74d0c8847d022adcfa94f55d07b0ae61eeb0ea57259f2f460173eab0719013854a33aed62a740af9', 31, 1, 'facebook-login', '[]', 0, '2026-05-09 15:33:53', '2026-05-09 15:33:53', '2027-05-09 11:33:53'),
('78bd59f1ae72d32b2af501a9ec5f3942577ade545c19b467a48cb21fdfbc60b794db6adc26e111a7', 28, 1, 'MyApp', '[]', 1, '2026-01-02 11:42:20', '2026-04-27 07:28:27', '2027-01-02 11:42:20'),
('7a002c114e833ca9c273e429f45245986b83e0c250d73ae147cd2cd8125c7d177227639c3c4b264e', 28, 1, 'MyApp', '[]', 1, '2026-01-02 11:39:10', '2026-04-27 07:28:27', '2027-01-02 11:39:10'),
('7c3e4deaea3372cb4da42257f4d64ced8ffd6797667852458cb124793bfdd67cad88eee23f25c81a', 36, 1, 'facebook-login', '[]', 0, '2026-05-10 19:41:39', '2026-05-10 19:41:39', '2027-05-10 15:41:39'),
('7ebb4b3cb84dc2dfef16ae8827f80ff2624dc53ec377800dde918b97e49f2fd7c3b7cd7037f98efe', 28, 1, 'MyApp', '[]', 1, '2026-01-25 06:55:24', '2026-04-27 07:28:27', '2027-01-25 06:55:24'),
('81342413f4087eb1ee3094067edbe2f2591600bd59b39c06a14eaf2c23f4f86fee797b19c9e6651c', 29, 1, 'facebook-login', '[]', 0, '2026-05-09 15:15:12', '2026-05-09 15:15:12', '2027-05-09 11:15:12'),
('81e70348462760e1b9578f69d864fbd332eb4e759a7cb3238df15a68dd483d5175b28945022de803', 27, 1, 'MyApp', '[]', 1, '2024-11-09 07:52:17', '2026-01-04 08:42:12', '2025-11-09 07:52:17'),
('84b97e2eaf0cd59034f5417269f79f834a03d59a472475be98d8387cf9c515941cd44a5763e8d083', 66, 1, 'MyApp', '[]', 1, '2026-06-19 03:46:15', '2026-07-05 04:24:19', '2027-06-19 12:46:15'),
('84c69f640fcf9d0f7ed2a11ca4b195b7a1962198d88ba456eeb3bc5ca81c3c3cccf9ee2fb9af4196', 28, 1, 'MyApp', '[]', 1, '2026-01-02 12:04:28', '2026-04-27 07:28:27', '2027-01-02 12:04:28'),
('84cd113fe921f3aae3e14ac2c82107f1cacec2ee280a2c31003eb5583e65a895dde8f1087e9f0e6d', 28, 1, 'MyApp', '[]', 1, '2026-01-25 06:16:09', '2026-04-27 07:28:27', '2027-01-25 06:16:09'),
('87a65251d2b06656d51e9f25012ba6319ae46657b11565d577c7f45ba8e650dae6c10b3909edb529', 23, 1, 'MyApp', '[]', 0, '2024-10-13 06:35:15', '2024-10-13 06:35:15', '2025-10-13 06:35:15'),
('87aec5d048f4293a100c83deb3eadffe694bdecd6b5882427083d513f41ebc776eed7c329bcb7493', 27, 1, 'MyApp', '[]', 1, '2025-12-30 08:59:27', '2026-01-04 08:42:12', '2026-12-30 08:59:27'),
('897c3ec58b37b29092e35226f8af0b2a6864d76f23203e5fdf45a273c043de1184b06fb7782c6e98', 28, 1, 'MyApp', '[]', 1, '2026-01-02 11:58:53', '2026-04-27 07:28:27', '2027-01-02 11:58:53'),
('8bbdd03adfd33d5e85d73fde3b2976a39d8c5eda64bbb9ec946c28923dfacaf8cc0cba22fcff5756', 28, 1, 'MyApp', '[]', 1, '2026-04-21 01:35:26', '2026-04-27 07:28:27', '2027-04-21 10:35:26'),
('8d59609d992514fe04c01b6b4773a4ce2afc3e8d47c3fbe1fb0dcccc30b458e27ef7b68851e5f3d5', 28, 1, 'MyApp', '[]', 1, '2026-01-02 11:59:34', '2026-04-27 07:28:27', '2027-01-02 11:59:34'),
('8d7169ffafe380572c9ddb7d7482c778532da60b661eebdfde65feb0f97e790008e32a27f06deede', 27, 1, 'MyApp', '[]', 1, '2024-11-09 07:54:07', '2026-01-04 08:42:12', '2025-11-09 07:54:07'),
('8dccd9060e406353ed1eaee602ff51bec74b868c7aba5a91b34d7e0655cc7250ba69d72b21accdde', 66, 1, 'MyApp', '[]', 1, '2026-06-10 00:59:36', '2026-07-05 04:24:19', '2027-06-10 09:59:36'),
('912ec3193a684f170e4ff796e19c0e79733c00654012dfcc7b51a91b751d2f4e131a0648076b760d', 26, 1, 'MyApp', '[]', 1, '2024-12-27 08:18:47', '2024-12-27 10:11:23', '2025-12-27 08:18:47'),
('99d91f4820b2024068933cdd2eacf4bb0d85c33f8e3794eaeb5a738dbd938964494bc23944f0a487', 26, 1, 'MyApp', '[]', 1, '2024-11-16 09:15:00', '2024-12-27 10:11:23', '2025-11-16 09:15:00'),
('9bccbbf00b32f80ba2e138f1d233158abdc69db8bfb5c7f8c7cd6d3cd0f91ec8fc4bb2e4bcbc9ac2', 41, 1, 'MyApp', '[]', 0, '2026-05-14 01:00:48', '2026-05-14 01:00:48', '2027-05-14 10:00:48'),
('9cdd62ddc6125d6d4b8910ca07f7e047d550d738ee2854222d679472c67b86a8dd1fd5fabc8492d2', 68, 1, 'MyApp', '[]', 1, '2026-05-21 02:01:14', '2026-06-22 20:14:02', '2027-05-21 11:01:14'),
('9d647f9e304ecfacdb3f362a72d0153227d21678c1090533e2914b95e62af6d723fde7edd73edad9', 27, 1, 'MyApp', '[]', 1, '2024-11-09 08:16:04', '2026-01-04 08:42:12', '2025-11-09 08:16:04'),
('9e3a70a2e3575c600e82be4cb348b86ccb34fecf6d8f961ca78be9b0921f96a947f9ea8e55a7dfd5', 66, 1, 'google-login', '[]', 1, '2026-06-30 19:16:00', '2026-07-05 04:24:19', '2027-06-30 15:16:00'),
('a4cd3ae6858682c3214c4d959505c979a9773e8df3c4210a6595e1e39c3365e1a7fff34fc37fa127', 68, 1, 'MyApp', '[]', 1, '2026-06-22 20:11:47', '2026-06-22 20:14:02', '2027-06-23 05:11:47'),
('a91c89e582cf94bd4e5ac4b2930d1ab42576f90028c0cf152a7171e2db84e95ccb68bdc20cb6828c', 68, 1, 'MyApp', '[]', 1, '2026-06-07 12:20:13', '2026-06-22 20:14:02', '2027-06-07 08:20:13'),
('a97b52dc4a10e69cb06656590132c2298ec6e9bc92fbf6b570f61beb1f261ed70b3dace4657fe974', 28, 1, 'MyApp', '[]', 1, '2026-01-04 08:51:00', '2026-04-27 07:28:27', '2027-01-04 08:51:00'),
('ac28a0356a0a92d8ef39c5ae70f9d12cbf3dc35b56bd209a4b31212783a5c4349abf8e832a6f72e7', 28, 1, 'MyApp', '[]', 1, '2026-03-31 10:16:08', '2026-04-27 07:28:27', '2027-03-31 10:16:08'),
('adcdaa91088144f6d4096a3c7750c281a14b6b41c49db40b8b249e6f0986db38d709e47d679012a6', 68, 1, 'MyApp', '[]', 1, '2026-05-20 02:19:30', '2026-06-22 20:14:02', '2027-05-20 11:19:30'),
('addc34f84de345442322abef9d9cd3c32e819cad317f3d6074e2f7e6cbde6128e37495e1bf6057bd', 28, 1, 'MyApp', '[]', 1, '2026-01-02 11:58:21', '2026-04-27 07:28:27', '2027-01-02 11:58:21'),
('ae92df663d19f1a93dcaacd0e2fd0dd5d372f21461dda738b323b49c72fd49d998f3569d8ad4c813', 28, 1, 'MyApp', '[]', 1, '2026-04-27 02:01:03', '2026-04-27 07:28:27', '2027-04-27 11:01:03'),
('ae9f7e815550c19616d5484d23b9a1bf70291c78fffb32620596283c917ccdc559d6b06270f5313a', 28, 1, 'MyApp', '[]', 1, '2026-04-18 06:19:18', '2026-04-27 07:28:27', '2027-04-18 15:19:18'),
('aed22c26f0486598455ff065d8a36bec12b259cdeb8fb9d32aa7867d10e4c72d7ab2fda1772af056', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:27:57', '2026-04-27 07:28:27', '2027-01-03 08:27:57'),
('b0b083a7a1776989a03c51835a21478db4b16a79fa6e6d13c42869a3a76505c3fb95dbdb088e30ee', 28, 1, 'MyApp', '[]', 1, '2026-04-27 07:26:28', '2026-04-27 07:28:27', '2027-04-27 16:26:28'),
('b21b0ac9396ab2d58b490f33c941c4f528aad6b405a5fa4d3884498c61b084060ff56d8c6d53bddf', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:26:33', '2026-04-27 07:28:27', '2027-01-03 08:26:33'),
('b26c46b4eacb29d320f09020e577fd04d877850130f23bd5bd6b98e87dfd8f53e70e99e21bb00543', 66, 1, 'MyApp', '[]', 1, '2026-06-26 02:41:30', '2026-07-05 04:24:19', '2027-06-26 11:41:30'),
('b3bf45a510ca423059a9380bcbf8f6f5f5f8b213ef81a8b0a3fbaa25bb75de64077a37317226e04d', 27, 1, 'MyApp', '[]', 1, '2024-11-09 07:54:27', '2026-01-04 08:42:12', '2025-11-09 07:54:27'),
('bc6a6484dbfe15bbc1f481d67569a6f7e47eb76b4cf6921356a2a1dcad7c7055655ad74d1d044f4d', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:33:59', '2026-04-27 07:28:27', '2027-01-03 08:33:59'),
('bd73558a74772ba7a9a8d5720c61fa3ed0ff9f9d4f2c16a9ff18640aa5c04a0cfeffd810e25d4b9a', 28, 1, 'MyApp', '[]', 1, '2026-03-31 10:21:21', '2026-04-27 07:28:27', '2027-03-31 10:21:21'),
('be8c7f239b907688cc369f1e6576a295c346d330fcadc159669e47f93910e07b12da3be791ed814b', 32, 1, 'facebook-login', '[]', 0, '2026-05-09 15:39:22', '2026-05-09 15:39:22', '2027-05-09 11:39:22'),
('c0c0e24c4820c844e7b4f1de956cef510ee47d87eae6dad0493a72399a07a965baa87bbd5e1cb425', 27, 1, 'MyApp', '[]', 1, '2024-11-09 08:13:04', '2026-01-04 08:42:12', '2025-11-09 08:13:04'),
('c129a824b209c65ecf6a276d0a430bea30a73936d28251fa4e2b2c552bfa30bf5b1124cc5b345413', 68, 1, 'MyApp', '[]', 1, '2026-05-20 02:32:37', '2026-06-22 20:14:02', '2027-05-20 11:32:37'),
('c26c68807dc164fab874c409ae970b584fd04d5b75d5091cc6cc8973f362e6e4eb7d1a30456d13e8', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:40:30', '2026-04-27 07:28:27', '2027-01-03 08:40:30'),
('c8c042e31f7f278de3f8b289e920b28030fa3bf16704c7a507882f4b935cf44e442b49cef7499f83', 68, 1, 'MyApp', '[]', 1, '2026-05-25 04:23:20', '2026-06-22 20:14:02', '2027-05-25 13:23:20'),
('cbcddd3bd5ff18f8227c4edf8698ab49005f84dcdd1e220a53d0c3828a59be774fcd433a986cbc28', 29, 1, 'facebook-login', '[]', 0, '2026-05-09 15:22:42', '2026-05-09 15:22:42', '2027-05-09 11:22:42'),
('cc824b2942c2d638645cad7db5058f85b5a9b3f0ddeffbd258fc3a5da9ea1c062ca97298c5b0f0cd', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:38:49', '2026-04-27 07:28:27', '2027-01-03 08:38:49'),
('d09877fdb46309a39f069609830a3f33768d31d03083533e57e94fa25f5f0b025d7cff8a1d92a825', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:39:09', '2026-04-27 07:28:27', '2027-01-03 08:39:09'),
('d0c5eb51c198db805992c3ccf98c5c875ec2e387bf41eaf1fc77b6b257fa448176c7f5004086c62d', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:42:26', '2026-04-27 07:28:27', '2027-01-03 08:42:26'),
('d10afa80df9b4e584652016dad3c46131b466ee7d3e7c7403cbe040f686f160d0de28811756d34ef', 35, 1, 'facebook-login', '[]', 0, '2026-05-09 16:08:53', '2026-05-09 16:08:53', '2027-05-09 12:08:53'),
('d24ff4c01787ac0a15d47b96c6ae2f0abaf21484eb9dba6146c8fdd822785299479c0cbe20dd1dee', 68, 1, 'MyApp', '[]', 1, '2026-05-20 02:29:14', '2026-06-22 20:14:02', '2027-05-20 11:29:14'),
('d490d081096e9519aeb3affb0ca3b4d71be71e5d51baee7d370b8658719ba9f13c5558b29064bd54', 28, 1, 'MyApp', '[]', 1, '2026-01-02 12:00:02', '2026-04-27 07:28:27', '2027-01-02 12:00:02'),
('d4b16831bc16bdc77122dfdbe29880891ce5efa45fd830e57b7ef81238707d0068e2e4846c574cef', 36, 1, 'facebook-login', '[]', 0, '2026-05-09 23:26:10', '2026-05-09 23:26:10', '2027-05-09 19:26:10'),
('d5a8de12179a27b1c6f243e8722ed183346bfe1883b67d7c097bb3b5b35d0c1f1b628e407f6a3b19', 27, 1, 'MyApp', '[]', 1, '2024-10-21 06:17:34', '2026-01-04 08:42:12', '2025-10-21 06:17:34'),
('d671d2c8aec6c69a160dec6c0c2adf8d60657125f93999958c52ad7bdba2eec7e3040945a281c708', 66, 1, 'MyApp', '[]', 1, '2026-06-10 01:08:10', '2026-07-05 04:24:19', '2027-06-10 10:08:10'),
('d76fd93f9b7d4fefc43026291e6808a52f9cf41b7611ecb16da2c48beabacfd8c49a9454a596927f', 28, 1, 'MyApp', '[]', 1, '2026-01-02 11:55:10', '2026-04-27 07:28:27', '2027-01-02 11:55:10'),
('d926503a4e14c5b45a22ea58fd16f91f93af747268e8f6865d6dfbe9324fa581475eee4428d78f7a', 29, 1, 'facebook-login', '[]', 0, '2026-05-09 15:15:41', '2026-05-09 15:15:41', '2027-05-09 11:15:41'),
('da38243a2ba02f7ce04eb156390e5fb30006882963b304e4a1944018e779d6ee4b53ec80d7274a8e', 11, 1, 'MyApp', '[]', 1, '2024-11-02 15:55:07', '2024-11-09 07:43:32', '2025-11-02 15:55:07'),
('dc6bb1b59adc2b1ad274d5c2fa984e907fe0a63794cf1b509bd883fa188d71484bd112a47a5f8190', 26, 1, 'MyApp', '[]', 1, '2024-12-15 04:26:18', '2024-12-27 10:11:23', '2025-12-15 04:26:18'),
('dd742a0d3d0375b6532b0fea7905b349de928634ada61b0f84527da27cc42c3e1d7a4931e7735ec7', 68, 1, 'MyApp', '[]', 1, '2026-05-19 23:48:12', '2026-06-22 20:14:02', '2027-05-20 08:48:12'),
('de4cd7e43e450b1bb006da6ec6c23a4b1eabe4a8166dd9e93e265fed503b0c189662b7a5d8e06135', 26, 1, 'MyApp', '[]', 1, '2024-11-17 06:36:24', '2024-12-27 10:11:23', '2025-11-17 06:36:24'),
('df1ea0409e7d47b74718a5c00bcd56fd53ed0f8c88e8f9ff177ff985ef8735ff1089f87f1debb62c', 27, 1, 'MyApp', '[]', 1, '2024-11-09 08:13:16', '2026-01-04 08:42:12', '2025-11-09 08:13:16'),
('df3817aa238a00e9c4526f4b90fb9283e526e7bf07e44ea5a36075e6874c23a15fb969a12ddbe7cf', 68, 1, 'MyApp', '[]', 1, '2026-05-21 02:31:23', '2026-06-22 20:14:02', '2027-05-21 11:31:23'),
('e0d551a2f15ea926573450cae08fe95e067ee7e95503c6dfe9a56c82b007ef1d39607516b369c41f', 27, 1, 'MyApp', '[]', 1, '2024-11-09 08:13:48', '2026-01-04 08:42:12', '2025-11-09 08:13:48'),
('e21c3d7cacc635201db49dda1b04d0c767d914c3e886deb9363549f734f09f656b352fd91ecd0ca0', 28, 1, 'MyApp', '[]', 1, '2026-01-02 11:57:46', '2026-04-27 07:28:27', '2027-01-02 11:57:46'),
('e2ec1ffb912c238cc7ce6402aa433ffe1fbf48f7cf222334b05c0d2bbe3dfd4f10e61ba1bd69521d', 28, 1, 'MyApp', '[]', 1, '2026-02-08 12:54:44', '2026-04-27 07:28:27', '2027-02-08 12:54:44'),
('e3efa5ca063a378328d97d6a8c066a276ac364a07ee83f7a6da16d23cff8318eff5e7fb1ab9a00e4', 27, 1, 'MyApp', '[]', 1, '2024-11-09 07:53:53', '2026-01-04 08:42:12', '2025-11-09 07:53:53'),
('e46ca33a86935399ad01c1841d319735ea9b534ac64e9009abb5628e3ec9953f8d141d1de8ead1fc', 26, 1, 'MyApp', '[]', 1, '2024-11-17 06:34:53', '2024-12-27 10:11:23', '2025-11-17 06:34:53'),
('e8db9e20cfab7066f2823e652cb10d479f4776992fb280a12e293390c1f8e738eeb26ced6ab149bd', 26, 1, 'MyApp', '[]', 1, '2024-12-27 08:26:30', '2024-12-27 10:11:23', '2025-12-27 08:26:30'),
('ecbfa6e7b5f286f1093e53aaedee67128016561acd3da905ef2800be59d3f87f4fbc0f60d1bf1d1b', 28, 1, 'MyApp', '[]', 1, '2026-01-02 11:57:27', '2026-04-27 07:28:27', '2027-01-02 11:57:27'),
('ef965846cfbe61a234b76a9af09eae7707b3235725a7ef176fcae0c179819e89c0597b709f0290be', 40, 1, 'MyApp', '[]', 0, '2026-05-14 00:59:39', '2026-05-14 00:59:39', '2027-05-14 09:59:39'),
('f0b1774fb7a1315c6d55532a57bb3478be8e7cad8d18d8e82b246d4f91cdf02bb036a5ff3101c2d5', 66, 1, 'MyApp', '[]', 1, '2026-07-05 03:52:00', '2026-07-05 04:24:19', '2027-07-05 12:52:00'),
('f18b5bd2970d7b955bf155f478024cfa31f4b82b89a918578c4be91eac53422adc2c27a266183ef8', 27, 1, 'MyApp', '[]', 1, '2024-11-09 08:36:32', '2026-01-04 08:42:12', '2025-11-09 08:36:32'),
('f55fbd84380053f3d72816a487dfc0f08f51ce0ba3a41cdf43ce3292bcf56e15982ae62d6ee4527b', 68, 1, 'MyApp', '[]', 1, '2026-05-21 00:58:16', '2026-06-22 20:14:02', '2027-05-21 09:58:16'),
('f63948153056dd1d61e77f9afc83f0928c461868e03b4cb8106a6c6219f07fe9c16fc0ebe0845743', 27, 1, 'MyApp', '[]', 1, '2024-11-09 08:15:22', '2026-01-04 08:42:12', '2025-11-09 08:15:22'),
('fa797315f4466873c5caea339a427415a6936d9e519005e284f078a314c7f06a36fc2570293c69fe', 27, 1, 'MyApp', '[]', 1, '2024-11-10 11:21:40', '2026-01-04 08:42:12', '2025-11-10 11:21:40'),
('fc550ab7753a23dc9e748bc0581fbc8aeab3b4908a61152036764e261b2f94be408d0169c0368c8a', 28, 1, 'MyApp', '[]', 1, '2026-01-03 08:39:40', '2026-04-27 07:28:27', '2027-01-03 08:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ShaiSchool Personal Access Client', '9HQWyfac3CWAoibgh5lo3KYSGVMoal7lBZtGeCZt', NULL, 'http://localhost', 1, 0, 0, '2024-10-13 06:34:46', '2024-10-13 06:34:46'),
(2, NULL, 'ShaiSchool Password Grant Client', '49kJUaZBzhkXMGZUMCzWPcNElunpskGKUwbdT4l6', 'users', 'http://localhost', 0, 1, 0, '2024-10-13 06:34:46', '2024-10-13 06:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-10-13 06:34:46', '2024-10-13 06:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_prices`
--

CREATE TABLE `online_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `percentage` decimal(8,2) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_prices`
--

INSERT INTO `online_prices` (`id`, `percentage`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 0.05, 1, '2024-08-09 21:42:20', '2024-08-09 21:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_description` text NOT NULL,
  `unit_id` int(11) NOT NULL,
  `base_price` double(8,2) NOT NULL,
  `store_price` double(8,2) NOT NULL,
  `online_price` double(8,2) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Cash', 1, NULL, NULL),
(2, 'Gcash', 0, NULL, NULL),
(3, 'Paymaya', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickup_time`
--

CREATE TABLE `pickup_time` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) NOT NULL,
  `store_id` bigint(20) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `store_approval` tinyint(1) NOT NULL DEFAULT 1,
  `customer_approval` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
(1, 'Abra'),
(2, 'Agusan del Norte'),
(3, 'Agusan del Sur'),
(4, 'Aklan'),
(5, 'Albay'),
(6, 'Antique'),
(7, 'Apayao'),
(8, 'Aurora'),
(9, 'Basilan'),
(10, 'Bataan'),
(11, 'Batanes'),
(12, 'Batangas'),
(13, 'Benguet'),
(14, 'Biliran'),
(15, 'Bohol'),
(16, 'Bukidnon'),
(17, 'Bulacan'),
(18, 'Cagayan'),
(19, 'Camarines Norte'),
(20, 'Camarines Sur'),
(21, 'Camiguin'),
(22, 'Capiz'),
(23, 'Catanduanes'),
(24, 'Cavite'),
(25, 'Cebu'),
(26, 'Compostela Valley'),
(27, 'Cotabato'),
(28, 'Davao del Norte'),
(29, 'Davao del Sur'),
(30, 'Davao Oriental'),
(31, 'Eastern Samar'),
(32, 'Guimaras'),
(33, 'Ifugao'),
(34, 'Ilocos Norte'),
(35, 'Ilocos Sur'),
(36, 'Iloilo'),
(37, 'Isabela'),
(38, 'Kalinga'),
(39, 'La Union'),
(40, 'Laguna'),
(41, 'Lanao del Norte'),
(42, 'Lanao del Sur'),
(43, 'Leyte'),
(44, 'Maguindanao'),
(45, 'Marinduque'),
(46, 'Masbate'),
(47, 'Metro Manila'),
(48, 'Misamis Occidental'),
(49, 'Misamis Oriental'),
(50, 'Mountain Province'),
(51, 'Negros Occidental'),
(52, 'Negros Oriental'),
(53, 'Northern Samar'),
(54, 'Nueva Ecija'),
(55, 'Nueva Vizcaya'),
(56, 'Occidental Mindoro'),
(57, 'Oriental Mindoro'),
(58, 'Palawan'),
(59, 'Pampanga'),
(60, 'Pangasinan'),
(61, 'Quezon'),
(62, 'Quirino'),
(63, 'Rizal'),
(64, 'Romblon'),
(65, 'Samar'),
(66, 'Sarangani'),
(67, 'Siquijor'),
(68, 'Sorsogon'),
(69, 'South Cotabato'),
(70, 'Southern Leyte'),
(71, 'Sultan Kudarat'),
(72, 'Sulu'),
(73, 'Surigao del Norte'),
(74, 'Surigao del Sur'),
(75, 'Tarlac'),
(76, 'Tawi-Tawi'),
(77, 'Zambales'),
(78, 'Zamboanga del Norte'),
(79, 'Zamboanga del Sur'),
(80, 'Zamboanga Sibugay');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receive_methods`
--

CREATE TABLE `receive_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receive_methods`
--

INSERT INTO `receive_methods` (`id`, `name`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Delivery', 1, NULL, NULL),
(2, 'Pickup', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `refcitymun`
--

CREATE TABLE `refcitymun` (
  `id` int(11) NOT NULL,
  `psgcCode` varchar(255) DEFAULT NULL,
  `citymunDesc` text DEFAULT NULL,
  `regDesc` varchar(255) DEFAULT NULL,
  `provCode` varchar(255) DEFAULT NULL,
  `citymunCode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `refcitymun`
--

INSERT INTO `refcitymun` (`id`, `psgcCode`, `citymunDesc`, `regDesc`, `provCode`, `citymunCode`) VALUES
(1, '012801000', 'ADAMS', '01', '0128', '012801'),
(2, '012802000', 'BACARRA', '01', '0128', '012802'),
(3, '012803000', 'BADOC', '01', '0128', '012803'),
(4, '012804000', 'BANGUI', '01', '0128', '012804'),
(5, '012805000', 'CITY OF BATAC', '01', '0128', '012805'),
(6, '012806000', 'BURGOS', '01', '0128', '012806'),
(7, '012807000', 'CARASI', '01', '0128', '012807'),
(8, '012808000', 'CURRIMAO', '01', '0128', '012808'),
(9, '012809000', 'DINGRAS', '01', '0128', '012809'),
(10, '012810000', 'DUMALNEG', '01', '0128', '012810'),
(11, '012811000', 'BANNA (ESPIRITU)', '01', '0128', '012811'),
(12, '012812000', 'LAOAG CITY (Capital)', '01', '0128', '012812'),
(13, '012813000', 'MARCOS', '01', '0128', '012813'),
(14, '012814000', 'NUEVA ERA', '01', '0128', '012814'),
(15, '012815000', 'PAGUDPUD', '01', '0128', '012815'),
(16, '012816000', 'PAOAY', '01', '0128', '012816'),
(17, '012817000', 'PASUQUIN', '01', '0128', '012817'),
(18, '012818000', 'PIDDIG', '01', '0128', '012818'),
(19, '012819000', 'PINILI', '01', '0128', '012819'),
(20, '012820000', 'SAN NICOLAS', '01', '0128', '012820'),
(21, '012821000', 'SARRAT', '01', '0128', '012821'),
(22, '012822000', 'SOLSONA', '01', '0128', '012822'),
(23, '012823000', 'VINTAR', '01', '0128', '012823'),
(24, '012901000', 'ALILEM', '01', '0129', '012901'),
(25, '012902000', 'BANAYOYO', '01', '0129', '012902'),
(26, '012903000', 'BANTAY', '01', '0129', '012903'),
(27, '012904000', 'BURGOS', '01', '0129', '012904'),
(28, '012905000', 'CABUGAO', '01', '0129', '012905'),
(29, '012906000', 'CITY OF CANDON', '01', '0129', '012906'),
(30, '012907000', 'CAOAYAN', '01', '0129', '012907'),
(31, '012908000', 'CERVANTES', '01', '0129', '012908'),
(32, '012909000', 'GALIMUYOD', '01', '0129', '012909'),
(33, '012910000', 'GREGORIO DEL PILAR (CONCEPCION)', '01', '0129', '012910'),
(34, '012911000', 'LIDLIDDA', '01', '0129', '012911'),
(35, '012912000', 'MAGSINGAL', '01', '0129', '012912'),
(36, '012913000', 'NAGBUKEL', '01', '0129', '012913'),
(37, '012914000', 'NARVACAN', '01', '0129', '012914'),
(38, '012915000', 'QUIRINO (ANGKAKI)', '01', '0129', '012915'),
(39, '012916000', 'SALCEDO (BAUGEN)', '01', '0129', '012916'),
(40, '012917000', 'SAN EMILIO', '01', '0129', '012917'),
(41, '012918000', 'SAN ESTEBAN', '01', '0129', '012918'),
(42, '012919000', 'SAN ILDEFONSO', '01', '0129', '012919'),
(43, '012920000', 'SAN JUAN (LAPOG)', '01', '0129', '012920'),
(44, '012921000', 'SAN VICENTE', '01', '0129', '012921'),
(45, '012922000', 'SANTA', '01', '0129', '012922'),
(46, '012923000', 'SANTA CATALINA', '01', '0129', '012923'),
(47, '012924000', 'SANTA CRUZ', '01', '0129', '012924'),
(48, '012925000', 'SANTA LUCIA', '01', '0129', '012925'),
(49, '012926000', 'SANTA MARIA', '01', '0129', '012926'),
(50, '012927000', 'SANTIAGO', '01', '0129', '012927'),
(51, '012928000', 'SANTO DOMINGO', '01', '0129', '012928'),
(52, '012929000', 'SIGAY', '01', '0129', '012929'),
(53, '012930000', 'SINAIT', '01', '0129', '012930'),
(54, '012931000', 'SUGPON', '01', '0129', '012931'),
(55, '012932000', 'SUYO', '01', '0129', '012932'),
(56, '012933000', 'TAGUDIN', '01', '0129', '012933'),
(57, '012934000', 'CITY OF VIGAN (Capital)', '01', '0129', '012934'),
(58, '013301000', 'AGOO', '01', '0133', '013301'),
(59, '013302000', 'ARINGAY', '01', '0133', '013302'),
(60, '013303000', 'BACNOTAN', '01', '0133', '013303'),
(61, '013304000', 'BAGULIN', '01', '0133', '013304'),
(62, '013305000', 'BALAOAN', '01', '0133', '013305'),
(63, '013306000', 'BANGAR', '01', '0133', '013306'),
(64, '013307000', 'BAUANG', '01', '0133', '013307'),
(65, '013308000', 'BURGOS', '01', '0133', '013308'),
(66, '013309000', 'CABA', '01', '0133', '013309'),
(67, '013310000', 'LUNA', '01', '0133', '013310'),
(68, '013311000', 'NAGUILIAN', '01', '0133', '013311'),
(69, '013312000', 'PUGO', '01', '0133', '013312'),
(70, '013313000', 'ROSARIO', '01', '0133', '013313'),
(71, '013314000', 'CITY OF SAN FERNANDO (Capital)', '01', '0133', '013314'),
(72, '013315000', 'SAN GABRIEL', '01', '0133', '013315'),
(73, '013316000', 'SAN JUAN', '01', '0133', '013316'),
(74, '013317000', 'SANTO TOMAS', '01', '0133', '013317'),
(75, '013318000', 'SANTOL', '01', '0133', '013318'),
(76, '013319000', 'SUDIPEN', '01', '0133', '013319'),
(77, '013320000', 'TUBAO', '01', '0133', '013320'),
(78, '015501000', 'AGNO', '01', '0155', '015501'),
(79, '015502000', 'AGUILAR', '01', '0155', '015502'),
(80, '015503000', 'CITY OF ALAMINOS', '01', '0155', '015503'),
(81, '015504000', 'ALCALA', '01', '0155', '015504'),
(82, '015505000', 'ANDA', '01', '0155', '015505'),
(83, '015506000', 'ASINGAN', '01', '0155', '015506'),
(84, '015507000', 'BALUNGAO', '01', '0155', '015507'),
(85, '015508000', 'BANI', '01', '0155', '015508'),
(86, '015509000', 'BASISTA', '01', '0155', '015509'),
(87, '015510000', 'BAUTISTA', '01', '0155', '015510'),
(88, '015511000', 'BAYAMBANG', '01', '0155', '015511'),
(89, '015512000', 'BINALONAN', '01', '0155', '015512'),
(90, '015513000', 'BINMALEY', '01', '0155', '015513'),
(91, '015514000', 'BOLINAO', '01', '0155', '015514'),
(92, '015515000', 'BUGALLON', '01', '0155', '015515'),
(93, '015516000', 'BURGOS', '01', '0155', '015516'),
(94, '015517000', 'CALASIAO', '01', '0155', '015517'),
(95, '015518000', 'DAGUPAN CITY', '01', '0155', '015518'),
(96, '015519000', 'DASOL', '01', '0155', '015519'),
(97, '015520000', 'INFANTA', '01', '0155', '015520'),
(98, '015521000', 'LABRADOR', '01', '0155', '015521'),
(99, '015522000', 'LINGAYEN (Capital)', '01', '0155', '015522'),
(100, '015523000', 'MABINI', '01', '0155', '015523'),
(101, '015524000', 'MALASIQUI', '01', '0155', '015524'),
(102, '015525000', 'MANAOAG', '01', '0155', '015525'),
(103, '015526000', 'MANGALDAN', '01', '0155', '015526'),
(104, '015527000', 'MANGATAREM', '01', '0155', '015527'),
(105, '015528000', 'MAPANDAN', '01', '0155', '015528'),
(106, '015529000', 'NATIVIDAD', '01', '0155', '015529'),
(107, '015530000', 'POZORRUBIO', '01', '0155', '015530'),
(108, '015531000', 'ROSALES', '01', '0155', '015531'),
(109, '015532000', 'SAN CARLOS CITY', '01', '0155', '015532'),
(110, '015533000', 'SAN FABIAN', '01', '0155', '015533'),
(111, '015534000', 'SAN JACINTO', '01', '0155', '015534'),
(112, '015535000', 'SAN MANUEL', '01', '0155', '015535'),
(113, '015536000', 'SAN NICOLAS', '01', '0155', '015536'),
(114, '015537000', 'SAN QUINTIN', '01', '0155', '015537'),
(115, '015538000', 'SANTA BARBARA', '01', '0155', '015538'),
(116, '015539000', 'SANTA MARIA', '01', '0155', '015539'),
(117, '015540000', 'SANTO TOMAS', '01', '0155', '015540'),
(118, '015541000', 'SISON', '01', '0155', '015541'),
(119, '015542000', 'SUAL', '01', '0155', '015542'),
(120, '015543000', 'TAYUG', '01', '0155', '015543'),
(121, '015544000', 'UMINGAN', '01', '0155', '015544'),
(122, '015545000', 'URBIZTONDO', '01', '0155', '015545'),
(123, '015546000', 'CITY OF URDANETA', '01', '0155', '015546'),
(124, '015547000', 'VILLASIS', '01', '0155', '015547'),
(125, '015548000', 'LAOAC', '01', '0155', '015548'),
(126, '020901000', 'BASCO (Capital)', '02', '0209', '020901'),
(127, '020902000', 'ITBAYAT', '02', '0209', '020902'),
(128, '020903000', 'IVANA', '02', '0209', '020903'),
(129, '020904000', 'MAHATAO', '02', '0209', '020904'),
(130, '020905000', 'SABTANG', '02', '0209', '020905'),
(131, '020906000', 'UYUGAN', '02', '0209', '020906'),
(132, '021501000', 'ABULUG', '02', '0215', '021501'),
(133, '021502000', 'ALCALA', '02', '0215', '021502'),
(134, '021503000', 'ALLACAPAN', '02', '0215', '021503'),
(135, '021504000', 'AMULUNG', '02', '0215', '021504'),
(136, '021505000', 'APARRI', '02', '0215', '021505'),
(137, '021506000', 'BAGGAO', '02', '0215', '021506'),
(138, '021507000', 'BALLESTEROS', '02', '0215', '021507'),
(139, '021508000', 'BUGUEY', '02', '0215', '021508'),
(140, '021509000', 'CALAYAN', '02', '0215', '021509'),
(141, '021510000', 'CAMALANIUGAN', '02', '0215', '021510'),
(142, '021511000', 'CLAVERIA', '02', '0215', '021511'),
(143, '021512000', 'ENRILE', '02', '0215', '021512'),
(144, '021513000', 'GATTARAN', '02', '0215', '021513'),
(145, '021514000', 'GONZAGA', '02', '0215', '021514'),
(146, '021515000', 'IGUIG', '02', '0215', '021515'),
(147, '021516000', 'LAL-LO', '02', '0215', '021516'),
(148, '021517000', 'LASAM', '02', '0215', '021517'),
(149, '021518000', 'PAMPLONA', '02', '0215', '021518'),
(150, '021519000', 'PEÑABLANCA', '02', '0215', '021519'),
(151, '021520000', 'PIAT', '02', '0215', '021520'),
(152, '021521000', 'RIZAL', '02', '0215', '021521'),
(153, '021522000', 'SANCHEZ-MIRA', '02', '0215', '021522'),
(154, '021523000', 'SANTA ANA', '02', '0215', '021523'),
(155, '021524000', 'SANTA PRAXEDES', '02', '0215', '021524'),
(156, '021525000', 'SANTA TERESITA', '02', '0215', '021525'),
(157, '021526000', 'SANTO NIÑO (FAIRE)', '02', '0215', '021526'),
(158, '021527000', 'SOLANA', '02', '0215', '021527'),
(159, '021528000', 'TUAO', '02', '0215', '021528'),
(160, '021529000', 'TUGUEGARAO CITY (Capital)', '02', '0215', '021529'),
(161, '023101000', 'ALICIA', '02', '0231', '023101'),
(162, '023102000', 'ANGADANAN', '02', '0231', '023102'),
(163, '023103000', 'AURORA', '02', '0231', '023103'),
(164, '023104000', 'BENITO SOLIVEN', '02', '0231', '023104'),
(165, '023105000', 'BURGOS', '02', '0231', '023105'),
(166, '023106000', 'CABAGAN', '02', '0231', '023106'),
(167, '023107000', 'CABATUAN', '02', '0231', '023107'),
(168, '023108000', 'CITY OF CAUAYAN', '02', '0231', '023108'),
(169, '023109000', 'CORDON', '02', '0231', '023109'),
(170, '023110000', 'DINAPIGUE', '02', '0231', '023110'),
(171, '023111000', 'DIVILACAN', '02', '0231', '023111'),
(172, '023112000', 'ECHAGUE', '02', '0231', '023112'),
(173, '023113000', 'GAMU', '02', '0231', '023113'),
(174, '023114000', 'ILAGAN CITY (Capital)', '02', '0231', '023114'),
(175, '023115000', 'JONES', '02', '0231', '023115'),
(176, '023116000', 'LUNA', '02', '0231', '023116'),
(177, '023117000', 'MACONACON', '02', '0231', '023117'),
(178, '023118000', 'DELFIN ALBANO (MAGSAYSAY)', '02', '0231', '023118'),
(179, '023119000', 'MALLIG', '02', '0231', '023119'),
(180, '023120000', 'NAGUILIAN', '02', '0231', '023120'),
(181, '023121000', 'PALANAN', '02', '0231', '023121'),
(182, '023122000', 'QUEZON', '02', '0231', '023122'),
(183, '023123000', 'QUIRINO', '02', '0231', '023123'),
(184, '023124000', 'RAMON', '02', '0231', '023124'),
(185, '023125000', 'REINA MERCEDES', '02', '0231', '023125'),
(186, '023126000', 'ROXAS', '02', '0231', '023126'),
(187, '023127000', 'SAN AGUSTIN', '02', '0231', '023127'),
(188, '023128000', 'SAN GUILLERMO', '02', '0231', '023128'),
(189, '023129000', 'SAN ISIDRO', '02', '0231', '023129'),
(190, '023130000', 'SAN MANUEL', '02', '0231', '023130'),
(191, '023131000', 'SAN MARIANO', '02', '0231', '023131'),
(192, '023132000', 'SAN MATEO', '02', '0231', '023132'),
(193, '023133000', 'SAN PABLO', '02', '0231', '023133'),
(194, '023134000', 'SANTA MARIA', '02', '0231', '023134'),
(195, '023135000', 'CITY OF SANTIAGO', '02', '0231', '023135'),
(196, '023136000', 'SANTO TOMAS', '02', '0231', '023136'),
(197, '023137000', 'TUMAUINI', '02', '0231', '023137'),
(198, '025001000', 'AMBAGUIO', '02', '0250', '025001'),
(199, '025002000', 'ARITAO', '02', '0250', '025002'),
(200, '025003000', 'BAGABAG', '02', '0250', '025003'),
(201, '025004000', 'BAMBANG', '02', '0250', '025004'),
(202, '025005000', 'BAYOMBONG (Capital)', '02', '0250', '025005'),
(203, '025006000', 'DIADI', '02', '0250', '025006'),
(204, '025007000', 'DUPAX DEL NORTE', '02', '0250', '025007'),
(205, '025008000', 'DUPAX DEL SUR', '02', '0250', '025008'),
(206, '025009000', 'KASIBU', '02', '0250', '025009'),
(207, '025010000', 'KAYAPA', '02', '0250', '025010'),
(208, '025011000', 'QUEZON', '02', '0250', '025011'),
(209, '025012000', 'SANTA FE', '02', '0250', '025012'),
(210, '025013000', 'SOLANO', '02', '0250', '025013'),
(211, '025014000', 'VILLAVERDE', '02', '0250', '025014'),
(212, '025015000', 'ALFONSO CASTANEDA', '02', '0250', '025015'),
(213, '025701000', 'AGLIPAY', '02', '0257', '025701'),
(214, '025702000', 'CABARROGUIS (Capital)', '02', '0257', '025702'),
(215, '025703000', 'DIFFUN', '02', '0257', '025703'),
(216, '025704000', 'MADDELA', '02', '0257', '025704'),
(217, '025705000', 'SAGUDAY', '02', '0257', '025705'),
(218, '025706000', 'NAGTIPUNAN', '02', '0257', '025706'),
(219, '030801000', 'ABUCAY', '03', '0308', '030801'),
(220, '030802000', 'BAGAC', '03', '0308', '030802'),
(221, '030803000', 'CITY OF BALANGA (Capital)', '03', '0308', '030803'),
(222, '030804000', 'DINALUPIHAN', '03', '0308', '030804'),
(223, '030805000', 'HERMOSA', '03', '0308', '030805'),
(224, '030806000', 'LIMAY', '03', '0308', '030806'),
(225, '030807000', 'MARIVELES', '03', '0308', '030807'),
(226, '030808000', 'MORONG', '03', '0308', '030808'),
(227, '030809000', 'ORANI', '03', '0308', '030809'),
(228, '030810000', 'ORION', '03', '0308', '030810'),
(229, '030811000', 'PILAR', '03', '0308', '030811'),
(230, '030812000', 'SAMAL', '03', '0308', '030812'),
(231, '031401000', 'ANGAT', '03', '0314', '031401'),
(232, '031402000', 'BALAGTAS (BIGAA)', '03', '0314', '031402'),
(233, '031403000', 'BALIUAG', '03', '0314', '031403'),
(234, '031404000', 'BOCAUE', '03', '0314', '031404'),
(235, '031405000', 'BULACAN', '03', '0314', '031405'),
(236, '031406000', 'BUSTOS', '03', '0314', '031406'),
(237, '031407000', 'CALUMPIT', '03', '0314', '031407'),
(238, '031408000', 'GUIGUINTO', '03', '0314', '031408'),
(239, '031409000', 'HAGONOY', '03', '0314', '031409'),
(240, '031410000', 'CITY OF MALOLOS (Capital)', '03', '0314', '031410'),
(241, '031411000', 'MARILAO', '03', '0314', '031411'),
(242, '031412000', 'CITY OF MEYCAUAYAN', '03', '0314', '031412'),
(243, '031413000', 'NORZAGARAY', '03', '0314', '031413'),
(244, '031414000', 'OBANDO', '03', '0314', '031414'),
(245, '031415000', 'PANDI', '03', '0314', '031415'),
(246, '031416000', 'PAOMBONG', '03', '0314', '031416'),
(247, '031417000', 'PLARIDEL', '03', '0314', '031417'),
(248, '031418000', 'PULILAN', '03', '0314', '031418'),
(249, '031419000', 'SAN ILDEFONSO', '03', '0314', '031419'),
(250, '031420000', 'CITY OF SAN JOSE DEL MONTE', '03', '0314', '031420'),
(251, '031421000', 'SAN MIGUEL', '03', '0314', '031421'),
(252, '031422000', 'SAN RAFAEL', '03', '0314', '031422'),
(253, '031423000', 'SANTA MARIA', '03', '0314', '031423'),
(254, '031424000', 'DOÑA REMEDIOS TRINIDAD', '03', '0314', '031424'),
(255, '034901000', 'ALIAGA', '03', '0349', '034901'),
(256, '034902000', 'BONGABON', '03', '0349', '034902'),
(257, '034903000', 'CABANATUAN CITY', '03', '0349', '034903'),
(258, '034904000', 'CABIAO', '03', '0349', '034904'),
(259, '034905000', 'CARRANGLAN', '03', '0349', '034905'),
(260, '034906000', 'CUYAPO', '03', '0349', '034906'),
(261, '034907000', 'GABALDON (BITULOK & SABANI)', '03', '0349', '034907'),
(262, '034908000', 'CITY OF GAPAN', '03', '0349', '034908'),
(263, '034909000', 'GENERAL MAMERTO NATIVIDAD', '03', '0349', '034909'),
(264, '034910000', 'GENERAL TINIO (PAPAYA)', '03', '0349', '034910'),
(265, '034911000', 'GUIMBA', '03', '0349', '034911'),
(266, '034912000', 'JAEN', '03', '0349', '034912'),
(267, '034913000', 'LAUR', '03', '0349', '034913'),
(268, '034914000', 'LICAB', '03', '0349', '034914'),
(269, '034915000', 'LLANERA', '03', '0349', '034915'),
(270, '034916000', 'LUPAO', '03', '0349', '034916'),
(271, '034917000', 'SCIENCE CITY OF MUÑOZ', '03', '0349', '034917'),
(272, '034918000', 'NAMPICUAN', '03', '0349', '034918'),
(273, '034919000', 'PALAYAN CITY (Capital)', '03', '0349', '034919'),
(274, '034920000', 'PANTABANGAN', '03', '0349', '034920'),
(275, '034921000', 'PEÑARANDA', '03', '0349', '034921'),
(276, '034922000', 'QUEZON', '03', '0349', '034922'),
(277, '034923000', 'RIZAL', '03', '0349', '034923'),
(278, '034924000', 'SAN ANTONIO', '03', '0349', '034924'),
(279, '034925000', 'SAN ISIDRO', '03', '0349', '034925'),
(280, '034926000', 'SAN JOSE CITY', '03', '0349', '034926'),
(281, '034927000', 'SAN LEONARDO', '03', '0349', '034927'),
(282, '034928000', 'SANTA ROSA', '03', '0349', '034928'),
(283, '034929000', 'SANTO DOMINGO', '03', '0349', '034929'),
(284, '034930000', 'TALAVERA', '03', '0349', '034930'),
(285, '034931000', 'TALUGTUG', '03', '0349', '034931'),
(286, '034932000', 'ZARAGOZA', '03', '0349', '034932'),
(287, '035401000', 'ANGELES CITY', '03', '0354', '035401'),
(288, '035402000', 'APALIT', '03', '0354', '035402'),
(289, '035403000', 'ARAYAT', '03', '0354', '035403'),
(290, '035404000', 'BACOLOR', '03', '0354', '035404'),
(291, '035405000', 'CANDABA', '03', '0354', '035405'),
(292, '035406000', 'FLORIDABLANCA', '03', '0354', '035406'),
(293, '035407000', 'GUAGUA', '03', '0354', '035407'),
(294, '035408000', 'LUBAO', '03', '0354', '035408'),
(295, '035409000', 'MABALACAT CITY', '03', '0354', '035409'),
(296, '035410000', 'MACABEBE', '03', '0354', '035410'),
(297, '035411000', 'MAGALANG', '03', '0354', '035411'),
(298, '035412000', 'MASANTOL', '03', '0354', '035412'),
(299, '035413000', 'MEXICO', '03', '0354', '035413'),
(300, '035414000', 'MINALIN', '03', '0354', '035414'),
(301, '035415000', 'PORAC', '03', '0354', '035415'),
(302, '035416000', 'CITY OF SAN FERNANDO (Capital)', '03', '0354', '035416'),
(303, '035417000', 'SAN LUIS', '03', '0354', '035417'),
(304, '035418000', 'SAN SIMON', '03', '0354', '035418'),
(305, '035419000', 'SANTA ANA', '03', '0354', '035419'),
(306, '035420000', 'SANTA RITA', '03', '0354', '035420'),
(307, '035421000', 'SANTO TOMAS', '03', '0354', '035421'),
(308, '035422000', 'SASMUAN (Sexmoan)', '03', '0354', '035422'),
(309, '036901000', 'ANAO', '03', '0369', '036901'),
(310, '036902000', 'BAMBAN', '03', '0369', '036902'),
(311, '036903000', 'CAMILING', '03', '0369', '036903'),
(312, '036904000', 'CAPAS', '03', '0369', '036904'),
(313, '036905000', 'CONCEPCION', '03', '0369', '036905'),
(314, '036906000', 'GERONA', '03', '0369', '036906'),
(315, '036907000', 'LA PAZ', '03', '0369', '036907'),
(316, '036908000', 'MAYANTOC', '03', '0369', '036908'),
(317, '036909000', 'MONCADA', '03', '0369', '036909'),
(318, '036910000', 'PANIQUI', '03', '0369', '036910'),
(319, '036911000', 'PURA', '03', '0369', '036911'),
(320, '036912000', 'RAMOS', '03', '0369', '036912'),
(321, '036913000', 'SAN CLEMENTE', '03', '0369', '036913'),
(322, '036914000', 'SAN MANUEL', '03', '0369', '036914'),
(323, '036915000', 'SANTA IGNACIA', '03', '0369', '036915'),
(324, '036916000', 'CITY OF TARLAC (Capital)', '03', '0369', '036916'),
(325, '036917000', 'VICTORIA', '03', '0369', '036917'),
(326, '036918000', 'SAN JOSE', '03', '0369', '036918'),
(327, '037101000', 'BOTOLAN', '03', '0371', '037101'),
(328, '037102000', 'CABANGAN', '03', '0371', '037102'),
(329, '037103000', 'CANDELARIA', '03', '0371', '037103'),
(330, '037104000', 'CASTILLEJOS', '03', '0371', '037104'),
(331, '037105000', 'IBA (Capital)', '03', '0371', '037105'),
(332, '037106000', 'MASINLOC', '03', '0371', '037106'),
(333, '037107000', 'OLONGAPO CITY', '03', '0371', '037107'),
(334, '037108000', 'PALAUIG', '03', '0371', '037108'),
(335, '037109000', 'SAN ANTONIO', '03', '0371', '037109'),
(336, '037110000', 'SAN FELIPE', '03', '0371', '037110'),
(337, '037111000', 'SAN MARCELINO', '03', '0371', '037111'),
(338, '037112000', 'SAN NARCISO', '03', '0371', '037112'),
(339, '037113000', 'SANTA CRUZ', '03', '0371', '037113'),
(340, '037114000', 'SUBIC', '03', '0371', '037114'),
(341, '037701000', 'BALER (Capital)', '03', '0377', '037701'),
(342, '037702000', 'CASIGURAN', '03', '0377', '037702'),
(343, '037703000', 'DILASAG', '03', '0377', '037703'),
(344, '037704000', 'DINALUNGAN', '03', '0377', '037704'),
(345, '037705000', 'DINGALAN', '03', '0377', '037705'),
(346, '037706000', 'DIPACULAO', '03', '0377', '037706'),
(347, '037707000', 'MARIA AURORA', '03', '0377', '037707'),
(348, '037708000', 'SAN LUIS', '03', '0377', '037708'),
(349, '041001000', 'AGONCILLO', '04', '0410', '041001'),
(350, '041002000', 'ALITAGTAG', '04', '0410', '041002'),
(351, '041003000', 'BALAYAN', '04', '0410', '041003'),
(352, '041004000', 'BALETE', '04', '0410', '041004'),
(353, '041005000', 'BATANGAS CITY (Capital)', '04', '0410', '041005'),
(354, '041006000', 'BAUAN', '04', '0410', '041006'),
(355, '041007000', 'CALACA', '04', '0410', '041007'),
(356, '041008000', 'CALATAGAN', '04', '0410', '041008'),
(357, '041009000', 'CUENCA', '04', '0410', '041009'),
(358, '041010000', 'IBAAN', '04', '0410', '041010'),
(359, '041011000', 'LAUREL', '04', '0410', '041011'),
(360, '041012000', 'LEMERY', '04', '0410', '041012'),
(361, '041013000', 'LIAN', '04', '0410', '041013'),
(362, '041014000', 'LIPA CITY', '04', '0410', '041014'),
(363, '041015000', 'LOBO', '04', '0410', '041015'),
(364, '041016000', 'MABINI', '04', '0410', '041016'),
(365, '041017000', 'MALVAR', '04', '0410', '041017'),
(366, '041018000', 'MATAASNAKAHOY', '04', '0410', '041018'),
(367, '041019000', 'NASUGBU', '04', '0410', '041019'),
(368, '041020000', 'PADRE GARCIA', '04', '0410', '041020'),
(369, '041021000', 'ROSARIO', '04', '0410', '041021'),
(370, '041022000', 'SAN JOSE', '04', '0410', '041022'),
(371, '041023000', 'SAN JUAN', '04', '0410', '041023'),
(372, '041024000', 'SAN LUIS', '04', '0410', '041024'),
(373, '041025000', 'SAN NICOLAS', '04', '0410', '041025'),
(374, '041026000', 'SAN PASCUAL', '04', '0410', '041026'),
(375, '041027000', 'SANTA TERESITA', '04', '0410', '041027'),
(376, '041028000', 'SANTO TOMAS', '04', '0410', '041028'),
(377, '041029000', 'TAAL', '04', '0410', '041029'),
(378, '041030000', 'TALISAY', '04', '0410', '041030'),
(379, '041031000', 'CITY OF TANAUAN', '04', '0410', '041031'),
(380, '041032000', 'TAYSAN', '04', '0410', '041032'),
(381, '041033000', 'TINGLOY', '04', '0410', '041033'),
(382, '041034000', 'TUY', '04', '0410', '041034'),
(383, '042101000', 'ALFONSO', '04', '0421', '042101'),
(384, '042102000', 'AMADEO', '04', '0421', '042102'),
(385, '042103000', 'BACOOR CITY', '04', '0421', '042103'),
(386, '042104000', 'CARMONA', '04', '0421', '042104'),
(387, '042105000', 'CAVITE CITY', '04', '0421', '042105'),
(388, '042106000', 'CITY OF DASMARIÑAS', '04', '0421', '042106'),
(389, '042107000', 'GENERAL EMILIO AGUINALDO', '04', '0421', '042107'),
(390, '042108000', 'GENERAL TRIAS', '04', '0421', '042108'),
(391, '042109000', 'IMUS CITY', '04', '0421', '042109'),
(392, '042110000', 'INDANG', '04', '0421', '042110'),
(393, '042111000', 'KAWIT', '04', '0421', '042111'),
(394, '042112000', 'MAGALLANES', '04', '0421', '042112'),
(395, '042113000', 'MARAGONDON', '04', '0421', '042113'),
(396, '042114000', 'MENDEZ (MENDEZ-NUÑEZ)', '04', '0421', '042114'),
(397, '042115000', 'NAIC', '04', '0421', '042115'),
(398, '042116000', 'NOVELETA', '04', '0421', '042116'),
(399, '042117000', 'ROSARIO', '04', '0421', '042117'),
(400, '042118000', 'SILANG', '04', '0421', '042118'),
(401, '042119000', 'TAGAYTAY CITY', '04', '0421', '042119'),
(402, '042120000', 'TANZA', '04', '0421', '042120'),
(403, '042121000', 'TERNATE', '04', '0421', '042121'),
(404, '042122000', 'TRECE MARTIRES CITY (Capital)', '04', '0421', '042122'),
(405, '042123000', 'GEN. MARIANO ALVAREZ', '04', '0421', '042123'),
(406, '043401000', 'ALAMINOS', '04', '0434', '043401'),
(407, '043402000', 'BAY', '04', '0434', '043402'),
(408, '043403000', 'CITY OF BIÑAN', '04', '0434', '043403'),
(409, '043404000', 'CABUYAO CITY', '04', '0434', '043404'),
(410, '043405000', 'CITY OF CALAMBA', '04', '0434', '043405'),
(411, '043406000', 'CALAUAN', '04', '0434', '043406'),
(412, '043407000', 'CAVINTI', '04', '0434', '043407'),
(413, '043408000', 'FAMY', '04', '0434', '043408'),
(414, '043409000', 'KALAYAAN', '04', '0434', '043409'),
(415, '043410000', 'LILIW', '04', '0434', '043410'),
(416, '043411000', 'LOS BAÑOS', '04', '0434', '043411'),
(417, '043412000', 'LUISIANA', '04', '0434', '043412'),
(418, '043413000', 'LUMBAN', '04', '0434', '043413'),
(419, '043414000', 'MABITAC', '04', '0434', '043414'),
(420, '043415000', 'MAGDALENA', '04', '0434', '043415'),
(421, '043416000', 'MAJAYJAY', '04', '0434', '043416'),
(422, '043417000', 'NAGCARLAN', '04', '0434', '043417'),
(423, '043418000', 'PAETE', '04', '0434', '043418'),
(424, '043419000', 'PAGSANJAN', '04', '0434', '043419'),
(425, '043420000', 'PAKIL', '04', '0434', '043420'),
(426, '043421000', 'PANGIL', '04', '0434', '043421'),
(427, '043422000', 'PILA', '04', '0434', '043422'),
(428, '043423000', 'RIZAL', '04', '0434', '043423'),
(429, '043424000', 'SAN PABLO CITY', '04', '0434', '043424'),
(430, '043425000', 'CITY OF SAN PEDRO', '04', '0434', '043425'),
(431, '043426000', 'SANTA CRUZ (Capital)', '04', '0434', '043426'),
(432, '043427000', 'SANTA MARIA', '04', '0434', '043427'),
(433, '043428000', 'CITY OF SANTA ROSA', '04', '0434', '043428'),
(434, '043429000', 'SINILOAN', '04', '0434', '043429'),
(435, '043430000', 'VICTORIA', '04', '0434', '043430'),
(436, '045601000', 'AGDANGAN', '04', '0456', '045601'),
(437, '045602000', 'ALABAT', '04', '0456', '045602'),
(438, '045603000', 'ATIMONAN', '04', '0456', '045603'),
(439, '045605000', 'BUENAVISTA', '04', '0456', '045605'),
(440, '045606000', 'BURDEOS', '04', '0456', '045606'),
(441, '045607000', 'CALAUAG', '04', '0456', '045607'),
(442, '045608000', 'CANDELARIA', '04', '0456', '045608'),
(443, '045610000', 'CATANAUAN', '04', '0456', '045610'),
(444, '045615000', 'DOLORES', '04', '0456', '045615'),
(445, '045616000', 'GENERAL LUNA', '04', '0456', '045616'),
(446, '045617000', 'GENERAL NAKAR', '04', '0456', '045617'),
(447, '045618000', 'GUINAYANGAN', '04', '0456', '045618'),
(448, '045619000', 'GUMACA', '04', '0456', '045619'),
(449, '045620000', 'INFANTA', '04', '0456', '045620'),
(450, '045621000', 'JOMALIG', '04', '0456', '045621'),
(451, '045622000', 'LOPEZ', '04', '0456', '045622'),
(452, '045623000', 'LUCBAN', '04', '0456', '045623'),
(453, '045624000', 'LUCENA CITY (Capital)', '04', '0456', '045624'),
(454, '045625000', 'MACALELON', '04', '0456', '045625'),
(455, '045627000', 'MAUBAN', '04', '0456', '045627'),
(456, '045628000', 'MULANAY', '04', '0456', '045628'),
(457, '045629000', 'PADRE BURGOS', '04', '0456', '045629'),
(458, '045630000', 'PAGBILAO', '04', '0456', '045630'),
(459, '045631000', 'PANUKULAN', '04', '0456', '045631'),
(460, '045632000', 'PATNANUNGAN', '04', '0456', '045632'),
(461, '045633000', 'PEREZ', '04', '0456', '045633'),
(462, '045634000', 'PITOGO', '04', '0456', '045634'),
(463, '045635000', 'PLARIDEL', '04', '0456', '045635'),
(464, '045636000', 'POLILLO', '04', '0456', '045636'),
(465, '045637000', 'QUEZON', '04', '0456', '045637'),
(466, '045638000', 'REAL', '04', '0456', '045638'),
(467, '045639000', 'SAMPALOC', '04', '0456', '045639'),
(468, '045640000', 'SAN ANDRES', '04', '0456', '045640'),
(469, '045641000', 'SAN ANTONIO', '04', '0456', '045641'),
(470, '045642000', 'SAN FRANCISCO (AURORA)', '04', '0456', '045642'),
(471, '045644000', 'SAN NARCISO', '04', '0456', '045644'),
(472, '045645000', 'SARIAYA', '04', '0456', '045645'),
(473, '045646000', 'TAGKAWAYAN', '04', '0456', '045646'),
(474, '045647000', 'CITY OF TAYABAS', '04', '0456', '045647'),
(475, '045648000', 'TIAONG', '04', '0456', '045648'),
(476, '045649000', 'UNISAN', '04', '0456', '045649'),
(477, '045801000', 'ANGONO', '04', '0458', '045801'),
(478, '045802000', 'CITY OF ANTIPOLO', '04', '0458', '045802'),
(479, '045803000', 'BARAS', '04', '0458', '045803'),
(480, '045804000', 'BINANGONAN', '04', '0458', '045804'),
(481, '045805000', 'CAINTA', '04', '0458', '045805'),
(482, '045806000', 'CARDONA', '04', '0458', '045806'),
(483, '045807000', 'JALA-JALA', '04', '0458', '045807'),
(484, '045808000', 'RODRIGUEZ (MONTALBAN)', '04', '0458', '045808'),
(485, '045809000', 'MORONG', '04', '0458', '045809'),
(486, '045810000', 'PILILLA', '04', '0458', '045810'),
(487, '045811000', 'SAN MATEO', '04', '0458', '045811'),
(488, '045812000', 'TANAY', '04', '0458', '045812'),
(489, '045813000', 'TAYTAY', '04', '0458', '045813'),
(490, '045814000', 'TERESA', '04', '0458', '045814'),
(491, '174001000', 'BOAC (Capital)', '17', '1740', '174001'),
(492, '174002000', 'BUENAVISTA', '17', '1740', '174002'),
(493, '174003000', 'GASAN', '17', '1740', '174003'),
(494, '174004000', 'MOGPOG', '17', '1740', '174004'),
(495, '174005000', 'SANTA CRUZ', '17', '1740', '174005'),
(496, '174006000', 'TORRIJOS', '17', '1740', '174006'),
(497, '175101000', 'ABRA DE ILOG', '17', '1751', '175101'),
(498, '175102000', 'CALINTAAN', '17', '1751', '175102'),
(499, '175103000', 'LOOC', '17', '1751', '175103'),
(500, '175104000', 'LUBANG', '17', '1751', '175104'),
(501, '175105000', 'MAGSAYSAY', '17', '1751', '175105'),
(502, '175106000', 'MAMBURAO (Capital)', '17', '1751', '175106'),
(503, '175107000', 'PALUAN', '17', '1751', '175107'),
(504, '175108000', 'RIZAL', '17', '1751', '175108'),
(505, '175109000', 'SABLAYAN', '17', '1751', '175109'),
(506, '175110000', 'SAN JOSE', '17', '1751', '175110'),
(507, '175111000', 'SANTA CRUZ', '17', '1751', '175111'),
(508, '175201000', 'BACO', '17', '1752', '175201'),
(509, '175202000', 'BANSUD', '17', '1752', '175202'),
(510, '175203000', 'BONGABONG', '17', '1752', '175203'),
(511, '175204000', 'BULALACAO (SAN PEDRO)', '17', '1752', '175204'),
(512, '175205000', 'CITY OF CALAPAN (Capital)', '17', '1752', '175205'),
(513, '175206000', 'GLORIA', '17', '1752', '175206'),
(514, '175207000', 'MANSALAY', '17', '1752', '175207'),
(515, '175208000', 'NAUJAN', '17', '1752', '175208'),
(516, '175209000', 'PINAMALAYAN', '17', '1752', '175209'),
(517, '175210000', 'POLA', '17', '1752', '175210'),
(518, '175211000', 'PUERTO GALERA', '17', '1752', '175211'),
(519, '175212000', 'ROXAS', '17', '1752', '175212'),
(520, '175213000', 'SAN TEODORO', '17', '1752', '175213'),
(521, '175214000', 'SOCORRO', '17', '1752', '175214'),
(522, '175215000', 'VICTORIA', '17', '1752', '175215'),
(523, '175301000', 'ABORLAN', '17', '1753', '175301'),
(524, '175302000', 'AGUTAYA', '17', '1753', '175302'),
(525, '175303000', 'ARACELI', '17', '1753', '175303'),
(526, '175304000', 'BALABAC', '17', '1753', '175304'),
(527, '175305000', 'BATARAZA', '17', '1753', '175305'),
(528, '175306000', 'BROOKE\'S POINT', '17', '1753', '175306'),
(529, '175307000', 'BUSUANGA', '17', '1753', '175307'),
(530, '175308000', 'CAGAYANCILLO', '17', '1753', '175308'),
(531, '175309000', 'CORON', '17', '1753', '175309'),
(532, '175310000', 'CUYO', '17', '1753', '175310'),
(533, '175311000', 'DUMARAN', '17', '1753', '175311'),
(534, '175312000', 'EL NIDO (BACUIT)', '17', '1753', '175312'),
(535, '175313000', 'LINAPACAN', '17', '1753', '175313'),
(536, '175314000', 'MAGSAYSAY', '17', '1753', '175314'),
(537, '175315000', 'NARRA', '17', '1753', '175315'),
(538, '175316000', 'PUERTO PRINCESA CITY (Capital)', '17', '1753', '175316'),
(539, '175317000', 'QUEZON', '17', '1753', '175317'),
(540, '175318000', 'ROXAS', '17', '1753', '175318'),
(541, '175319000', 'SAN VICENTE', '17', '1753', '175319'),
(542, '175320000', 'TAYTAY', '17', '1753', '175320'),
(543, '175321000', 'KALAYAAN', '17', '1753', '175321'),
(544, '175322000', 'CULION', '17', '1753', '175322'),
(545, '175323000', 'RIZAL (MARCOS)', '17', '1753', '175323'),
(546, '175324000', 'SOFRONIO ESPAÑOLA', '17', '1753', '175324'),
(547, '175901000', 'ALCANTARA', '17', '1759', '175901'),
(548, '175902000', 'BANTON', '17', '1759', '175902'),
(549, '175903000', 'CAJIDIOCAN', '17', '1759', '175903'),
(550, '175904000', 'CALATRAVA', '17', '1759', '175904'),
(551, '175905000', 'CONCEPCION', '17', '1759', '175905'),
(552, '175906000', 'CORCUERA', '17', '1759', '175906'),
(553, '175907000', 'LOOC', '17', '1759', '175907'),
(554, '175908000', 'MAGDIWANG', '17', '1759', '175908'),
(555, '175909000', 'ODIONGAN', '17', '1759', '175909'),
(556, '175910000', 'ROMBLON (Capital)', '17', '1759', '175910'),
(557, '175911000', 'SAN AGUSTIN', '17', '1759', '175911'),
(558, '175912000', 'SAN ANDRES', '17', '1759', '175912'),
(559, '175913000', 'SAN FERNANDO', '17', '1759', '175913'),
(560, '175914000', 'SAN JOSE', '17', '1759', '175914'),
(561, '175915000', 'SANTA FE', '17', '1759', '175915'),
(562, '175916000', 'FERROL', '17', '1759', '175916'),
(563, '175917000', 'SANTA MARIA (IMELDA)', '17', '1759', '175917'),
(564, '050501000', 'BACACAY', '05', '0505', '050501'),
(565, '050502000', 'CAMALIG', '05', '0505', '050502'),
(566, '050503000', 'DARAGA (LOCSIN)', '05', '0505', '050503'),
(567, '050504000', 'GUINOBATAN', '05', '0505', '050504'),
(568, '050505000', 'JOVELLAR', '05', '0505', '050505'),
(569, '050506000', 'LEGAZPI CITY (Capital)', '05', '0505', '050506'),
(570, '050507000', 'LIBON', '05', '0505', '050507'),
(571, '050508000', 'CITY OF LIGAO', '05', '0505', '050508'),
(572, '050509000', 'MALILIPOT', '05', '0505', '050509'),
(573, '050510000', 'MALINAO', '05', '0505', '050510'),
(574, '050511000', 'MANITO', '05', '0505', '050511'),
(575, '050512000', 'OAS', '05', '0505', '050512'),
(576, '050513000', 'PIO DURAN', '05', '0505', '050513'),
(577, '050514000', 'POLANGUI', '05', '0505', '050514'),
(578, '050515000', 'RAPU-RAPU', '05', '0505', '050515'),
(579, '050516000', 'SANTO DOMINGO (LIBOG)', '05', '0505', '050516'),
(580, '050517000', 'CITY OF TABACO', '05', '0505', '050517'),
(581, '050518000', 'TIWI', '05', '0505', '050518'),
(582, '051601000', 'BASUD', '05', '0516', '051601'),
(583, '051602000', 'CAPALONGA', '05', '0516', '051602'),
(584, '051603000', 'DAET (Capital)', '05', '0516', '051603'),
(585, '051604000', 'SAN LORENZO RUIZ (IMELDA)', '05', '0516', '051604'),
(586, '051605000', 'JOSE PANGANIBAN', '05', '0516', '051605'),
(587, '051606000', 'LABO', '05', '0516', '051606'),
(588, '051607000', 'MERCEDES', '05', '0516', '051607'),
(589, '051608000', 'PARACALE', '05', '0516', '051608'),
(590, '051609000', 'SAN VICENTE', '05', '0516', '051609'),
(591, '051610000', 'SANTA ELENA', '05', '0516', '051610'),
(592, '051611000', 'TALISAY', '05', '0516', '051611'),
(593, '051612000', 'VINZONS', '05', '0516', '051612'),
(594, '051701000', 'BAAO', '05', '0517', '051701'),
(595, '051702000', 'BALATAN', '05', '0517', '051702'),
(596, '051703000', 'BATO', '05', '0517', '051703'),
(597, '051704000', 'BOMBON', '05', '0517', '051704'),
(598, '051705000', 'BUHI', '05', '0517', '051705'),
(599, '051706000', 'BULA', '05', '0517', '051706'),
(600, '051707000', 'CABUSAO', '05', '0517', '051707'),
(601, '051708000', 'CALABANGA', '05', '0517', '051708'),
(602, '051709000', 'CAMALIGAN', '05', '0517', '051709'),
(603, '051710000', 'CANAMAN', '05', '0517', '051710'),
(604, '051711000', 'CARAMOAN', '05', '0517', '051711'),
(605, '051712000', 'DEL GALLEGO', '05', '0517', '051712'),
(606, '051713000', 'GAINZA', '05', '0517', '051713'),
(607, '051714000', 'GARCHITORENA', '05', '0517', '051714'),
(608, '051715000', 'GOA', '05', '0517', '051715'),
(609, '051716000', 'IRIGA CITY', '05', '0517', '051716'),
(610, '051717000', 'LAGONOY', '05', '0517', '051717'),
(611, '051718000', 'LIBMANAN', '05', '0517', '051718'),
(612, '051719000', 'LUPI', '05', '0517', '051719'),
(613, '051720000', 'MAGARAO', '05', '0517', '051720'),
(614, '051721000', 'MILAOR', '05', '0517', '051721'),
(615, '051722000', 'MINALABAC', '05', '0517', '051722'),
(616, '051723000', 'NABUA', '05', '0517', '051723'),
(617, '051724000', 'NAGA CITY', '05', '0517', '051724'),
(618, '051725000', 'OCAMPO', '05', '0517', '051725'),
(619, '051726000', 'PAMPLONA', '05', '0517', '051726'),
(620, '051727000', 'PASACAO', '05', '0517', '051727'),
(621, '051728000', 'PILI (Capital)', '05', '0517', '051728'),
(622, '051729000', 'PRESENTACION (PARUBCAN)', '05', '0517', '051729'),
(623, '051730000', 'RAGAY', '05', '0517', '051730'),
(624, '051731000', 'SAGÑAY', '05', '0517', '051731'),
(625, '051732000', 'SAN FERNANDO', '05', '0517', '051732'),
(626, '051733000', 'SAN JOSE', '05', '0517', '051733'),
(627, '051734000', 'SIPOCOT', '05', '0517', '051734'),
(628, '051735000', 'SIRUMA', '05', '0517', '051735'),
(629, '051736000', 'TIGAON', '05', '0517', '051736'),
(630, '051737000', 'TINAMBAC', '05', '0517', '051737'),
(631, '052001000', 'BAGAMANOC', '05', '0520', '052001'),
(632, '052002000', 'BARAS', '05', '0520', '052002'),
(633, '052003000', 'BATO', '05', '0520', '052003'),
(634, '052004000', 'CARAMORAN', '05', '0520', '052004'),
(635, '052005000', 'GIGMOTO', '05', '0520', '052005'),
(636, '052006000', 'PANDAN', '05', '0520', '052006'),
(637, '052007000', 'PANGANIBAN (PAYO)', '05', '0520', '052007'),
(638, '052008000', 'SAN ANDRES (CALOLBON)', '05', '0520', '052008'),
(639, '052009000', 'SAN MIGUEL', '05', '0520', '052009'),
(640, '052010000', 'VIGA', '05', '0520', '052010'),
(641, '052011000', 'VIRAC (Capital)', '05', '0520', '052011'),
(642, '054101000', 'AROROY', '05', '0541', '054101'),
(643, '054102000', 'BALENO', '05', '0541', '054102'),
(644, '054103000', 'BALUD', '05', '0541', '054103'),
(645, '054104000', 'BATUAN', '05', '0541', '054104'),
(646, '054105000', 'CATAINGAN', '05', '0541', '054105'),
(647, '054106000', 'CAWAYAN', '05', '0541', '054106'),
(648, '054107000', 'CLAVERIA', '05', '0541', '054107'),
(649, '054108000', 'DIMASALANG', '05', '0541', '054108'),
(650, '054109000', 'ESPERANZA', '05', '0541', '054109'),
(651, '054110000', 'MANDAON', '05', '0541', '054110'),
(652, '054111000', 'CITY OF MASBATE (Capital)', '05', '0541', '054111'),
(653, '054112000', 'MILAGROS', '05', '0541', '054112'),
(654, '054113000', 'MOBO', '05', '0541', '054113'),
(655, '054114000', 'MONREAL', '05', '0541', '054114'),
(656, '054115000', 'PALANAS', '05', '0541', '054115'),
(657, '054116000', 'PIO V. CORPUZ (LIMBUHAN)', '05', '0541', '054116'),
(658, '054117000', 'PLACER', '05', '0541', '054117'),
(659, '054118000', 'SAN FERNANDO', '05', '0541', '054118'),
(660, '054119000', 'SAN JACINTO', '05', '0541', '054119'),
(661, '054120000', 'SAN PASCUAL', '05', '0541', '054120'),
(662, '054121000', 'USON', '05', '0541', '054121'),
(663, '056202000', 'BARCELONA', '05', '0562', '056202'),
(664, '056203000', 'BULAN', '05', '0562', '056203'),
(665, '056204000', 'BULUSAN', '05', '0562', '056204'),
(666, '056205000', 'CASIGURAN', '05', '0562', '056205'),
(667, '056206000', 'CASTILLA', '05', '0562', '056206'),
(668, '056207000', 'DONSOL', '05', '0562', '056207'),
(669, '056208000', 'GUBAT', '05', '0562', '056208'),
(670, '056209000', 'IROSIN', '05', '0562', '056209'),
(671, '056210000', 'JUBAN', '05', '0562', '056210'),
(672, '056211000', 'MAGALLANES', '05', '0562', '056211'),
(673, '056212000', 'MATNOG', '05', '0562', '056212'),
(674, '056213000', 'PILAR', '05', '0562', '056213'),
(675, '056214000', 'PRIETO DIAZ', '05', '0562', '056214'),
(676, '056215000', 'SANTA MAGDALENA', '05', '0562', '056215'),
(677, '056216000', 'CITY OF SORSOGON (Capital)', '05', '0562', '056216'),
(678, '060401000', 'ALTAVAS', '06', '0604', '060401'),
(679, '060402000', 'BALETE', '06', '0604', '060402'),
(680, '060403000', 'BANGA', '06', '0604', '060403'),
(681, '060404000', 'BATAN', '06', '0604', '060404'),
(682, '060405000', 'BURUANGA', '06', '0604', '060405'),
(683, '060406000', 'IBAJAY', '06', '0604', '060406'),
(684, '060407000', 'KALIBO (Capital)', '06', '0604', '060407'),
(685, '060408000', 'LEZO', '06', '0604', '060408'),
(686, '060409000', 'LIBACAO', '06', '0604', '060409'),
(687, '060410000', 'MADALAG', '06', '0604', '060410'),
(688, '060411000', 'MAKATO', '06', '0604', '060411'),
(689, '060412000', 'MALAY', '06', '0604', '060412'),
(690, '060413000', 'MALINAO', '06', '0604', '060413'),
(691, '060414000', 'NABAS', '06', '0604', '060414'),
(692, '060415000', 'NEW WASHINGTON', '06', '0604', '060415'),
(693, '060416000', 'NUMANCIA', '06', '0604', '060416'),
(694, '060417000', 'TANGALAN', '06', '0604', '060417'),
(695, '060601000', 'ANINI-Y', '06', '0606', '060601'),
(696, '060602000', 'BARBAZA', '06', '0606', '060602'),
(697, '060603000', 'BELISON', '06', '0606', '060603'),
(698, '060604000', 'BUGASONG', '06', '0606', '060604'),
(699, '060605000', 'CALUYA', '06', '0606', '060605'),
(700, '060606000', 'CULASI', '06', '0606', '060606'),
(701, '060607000', 'TOBIAS FORNIER (DAO)', '06', '0606', '060607'),
(702, '060608000', 'HAMTIC', '06', '0606', '060608'),
(703, '060609000', 'LAUA-AN', '06', '0606', '060609'),
(704, '060610000', 'LIBERTAD', '06', '0606', '060610'),
(705, '060611000', 'PANDAN', '06', '0606', '060611'),
(706, '060612000', 'PATNONGON', '06', '0606', '060612'),
(707, '060613000', 'SAN JOSE (Capital)', '06', '0606', '060613'),
(708, '060614000', 'SAN REMIGIO', '06', '0606', '060614'),
(709, '060615000', 'SEBASTE', '06', '0606', '060615'),
(710, '060616000', 'SIBALOM', '06', '0606', '060616'),
(711, '060617000', 'TIBIAO', '06', '0606', '060617'),
(712, '060618000', 'VALDERRAMA', '06', '0606', '060618'),
(713, '061901000', 'CUARTERO', '06', '0619', '061901'),
(714, '061902000', 'DAO', '06', '0619', '061902'),
(715, '061903000', 'DUMALAG', '06', '0619', '061903'),
(716, '061904000', 'DUMARAO', '06', '0619', '061904'),
(717, '061905000', 'IVISAN', '06', '0619', '061905'),
(718, '061906000', 'JAMINDAN', '06', '0619', '061906'),
(719, '061907000', 'MA-AYON', '06', '0619', '061907'),
(720, '061908000', 'MAMBUSAO', '06', '0619', '061908'),
(721, '061909000', 'PANAY', '06', '0619', '061909'),
(722, '061910000', 'PANITAN', '06', '0619', '061910'),
(723, '061911000', 'PILAR', '06', '0619', '061911'),
(724, '061912000', 'PONTEVEDRA', '06', '0619', '061912'),
(725, '061913000', 'PRESIDENT ROXAS', '06', '0619', '061913'),
(726, '061914000', 'ROXAS CITY (Capital)', '06', '0619', '061914'),
(727, '061915000', 'SAPI-AN', '06', '0619', '061915'),
(728, '061916000', 'SIGMA', '06', '0619', '061916'),
(729, '061917000', 'TAPAZ', '06', '0619', '061917'),
(730, '063001000', 'AJUY', '06', '0630', '063001'),
(731, '063002000', 'ALIMODIAN', '06', '0630', '063002'),
(732, '063003000', 'ANILAO', '06', '0630', '063003'),
(733, '063004000', 'BADIANGAN', '06', '0630', '063004'),
(734, '063005000', 'BALASAN', '06', '0630', '063005'),
(735, '063006000', 'BANATE', '06', '0630', '063006'),
(736, '063007000', 'BAROTAC NUEVO', '06', '0630', '063007'),
(737, '063008000', 'BAROTAC VIEJO', '06', '0630', '063008'),
(738, '063009000', 'BATAD', '06', '0630', '063009'),
(739, '063010000', 'BINGAWAN', '06', '0630', '063010'),
(740, '063012000', 'CABATUAN', '06', '0630', '063012'),
(741, '063013000', 'CALINOG', '06', '0630', '063013'),
(742, '063014000', 'CARLES', '06', '0630', '063014'),
(743, '063015000', 'CONCEPCION', '06', '0630', '063015'),
(744, '063016000', 'DINGLE', '06', '0630', '063016'),
(745, '063017000', 'DUEÑAS', '06', '0630', '063017'),
(746, '063018000', 'DUMANGAS', '06', '0630', '063018'),
(747, '063019000', 'ESTANCIA', '06', '0630', '063019'),
(748, '063020000', 'GUIMBAL', '06', '0630', '063020'),
(749, '063021000', 'IGBARAS', '06', '0630', '063021'),
(750, '063022000', 'ILOILO CITY (Capital)', '06', '0630', '063022'),
(751, '063023000', 'JANIUAY', '06', '0630', '063023'),
(752, '063025000', 'LAMBUNAO', '06', '0630', '063025'),
(753, '063026000', 'LEGANES', '06', '0630', '063026'),
(754, '063027000', 'LEMERY', '06', '0630', '063027'),
(755, '063028000', 'LEON', '06', '0630', '063028'),
(756, '063029000', 'MAASIN', '06', '0630', '063029'),
(757, '063030000', 'MIAGAO', '06', '0630', '063030'),
(758, '063031000', 'MINA', '06', '0630', '063031'),
(759, '063032000', 'NEW LUCENA', '06', '0630', '063032'),
(760, '063034000', 'OTON', '06', '0630', '063034'),
(761, '063035000', 'CITY OF PASSI', '06', '0630', '063035'),
(762, '063036000', 'PAVIA', '06', '0630', '063036'),
(763, '063037000', 'POTOTAN', '06', '0630', '063037'),
(764, '063038000', 'SAN DIONISIO', '06', '0630', '063038'),
(765, '063039000', 'SAN ENRIQUE', '06', '0630', '063039'),
(766, '063040000', 'SAN JOAQUIN', '06', '0630', '063040'),
(767, '063041000', 'SAN MIGUEL', '06', '0630', '063041'),
(768, '063042000', 'SAN RAFAEL', '06', '0630', '063042'),
(769, '063043000', 'SANTA BARBARA', '06', '0630', '063043'),
(770, '063044000', 'SARA', '06', '0630', '063044'),
(771, '063045000', 'TIGBAUAN', '06', '0630', '063045'),
(772, '063046000', 'TUBUNGAN', '06', '0630', '063046'),
(773, '063047000', 'ZARRAGA', '06', '0630', '063047'),
(774, '064501000', 'BACOLOD CITY (Capital)', '06', '0645', '064501'),
(775, '064502000', 'BAGO CITY', '06', '0645', '064502'),
(776, '064503000', 'BINALBAGAN', '06', '0645', '064503'),
(777, '064504000', 'CADIZ CITY', '06', '0645', '064504'),
(778, '064505000', 'CALATRAVA', '06', '0645', '064505'),
(779, '064506000', 'CANDONI', '06', '0645', '064506'),
(780, '064507000', 'CAUAYAN', '06', '0645', '064507'),
(781, '064508000', 'ENRIQUE B. MAGALONA (SARAVIA)', '06', '0645', '064508'),
(782, '064509000', 'CITY OF ESCALANTE', '06', '0645', '064509'),
(783, '064510000', 'CITY OF HIMAMAYLAN', '06', '0645', '064510'),
(784, '064511000', 'HINIGARAN', '06', '0645', '064511'),
(785, '064512000', 'HINOBA-AN (ASIA)', '06', '0645', '064512'),
(786, '064513000', 'ILOG', '06', '0645', '064513'),
(787, '064514000', 'ISABELA', '06', '0645', '064514'),
(788, '064515000', 'CITY OF KABANKALAN', '06', '0645', '064515'),
(789, '064516000', 'LA CARLOTA CITY', '06', '0645', '064516'),
(790, '064517000', 'LA CASTELLANA', '06', '0645', '064517'),
(791, '064518000', 'MANAPLA', '06', '0645', '064518'),
(792, '064519000', 'MOISES PADILLA (MAGALLON)', '06', '0645', '064519'),
(793, '064520000', 'MURCIA', '06', '0645', '064520'),
(794, '064521000', 'PONTEVEDRA', '06', '0645', '064521'),
(795, '064522000', 'PULUPANDAN', '06', '0645', '064522'),
(796, '064523000', 'SAGAY CITY', '06', '0645', '064523'),
(797, '064524000', 'SAN CARLOS CITY', '06', '0645', '064524'),
(798, '064525000', 'SAN ENRIQUE', '06', '0645', '064525'),
(799, '064526000', 'SILAY CITY', '06', '0645', '064526'),
(800, '064527000', 'CITY OF SIPALAY', '06', '0645', '064527'),
(801, '064528000', 'CITY OF TALISAY', '06', '0645', '064528'),
(802, '064529000', 'TOBOSO', '06', '0645', '064529'),
(803, '064530000', 'VALLADOLID', '06', '0645', '064530'),
(804, '064531000', 'CITY OF VICTORIAS', '06', '0645', '064531'),
(805, '064532000', 'SALVADOR BENEDICTO', '06', '0645', '064532'),
(806, '067901000', 'BUENAVISTA', '06', '0679', '067901'),
(807, '067902000', 'JORDAN (Capital)', '06', '0679', '067902'),
(808, '067903000', 'NUEVA VALENCIA', '06', '0679', '067903'),
(809, '067904000', 'SAN LORENZO', '06', '0679', '067904'),
(810, '067905000', 'SIBUNAG', '06', '0679', '067905'),
(811, '071201000', 'ALBURQUERQUE', '07', '0712', '071201'),
(812, '071202000', 'ALICIA', '07', '0712', '071202'),
(813, '071203000', 'ANDA', '07', '0712', '071203'),
(814, '071204000', 'ANTEQUERA', '07', '0712', '071204'),
(815, '071205000', 'BACLAYON', '07', '0712', '071205'),
(816, '071206000', 'BALILIHAN', '07', '0712', '071206'),
(817, '071207000', 'BATUAN', '07', '0712', '071207'),
(818, '071208000', 'BILAR', '07', '0712', '071208'),
(819, '071209000', 'BUENAVISTA', '07', '0712', '071209'),
(820, '071210000', 'CALAPE', '07', '0712', '071210'),
(821, '071211000', 'CANDIJAY', '07', '0712', '071211'),
(822, '071212000', 'CARMEN', '07', '0712', '071212'),
(823, '071213000', 'CATIGBIAN', '07', '0712', '071213'),
(824, '071214000', 'CLARIN', '07', '0712', '071214'),
(825, '071215000', 'CORELLA', '07', '0712', '071215'),
(826, '071216000', 'CORTES', '07', '0712', '071216'),
(827, '071217000', 'DAGOHOY', '07', '0712', '071217'),
(828, '071218000', 'DANAO', '07', '0712', '071218'),
(829, '071219000', 'DAUIS', '07', '0712', '071219'),
(830, '071220000', 'DIMIAO', '07', '0712', '071220'),
(831, '071221000', 'DUERO', '07', '0712', '071221'),
(832, '071222000', 'GARCIA HERNANDEZ', '07', '0712', '071222'),
(833, '071223000', 'GUINDULMAN', '07', '0712', '071223'),
(834, '071224000', 'INABANGA', '07', '0712', '071224'),
(835, '071225000', 'JAGNA', '07', '0712', '071225'),
(836, '071226000', 'JETAFE', '07', '0712', '071226'),
(837, '071227000', 'LILA', '07', '0712', '071227'),
(838, '071228000', 'LOAY', '07', '0712', '071228'),
(839, '071229000', 'LOBOC', '07', '0712', '071229'),
(840, '071230000', 'LOON', '07', '0712', '071230'),
(841, '071231000', 'MABINI', '07', '0712', '071231'),
(842, '071232000', 'MARIBOJOC', '07', '0712', '071232'),
(843, '071233000', 'PANGLAO', '07', '0712', '071233'),
(844, '071234000', 'PILAR', '07', '0712', '071234'),
(845, '071235000', 'PRES. CARLOS P. GARCIA (PITOGO)', '07', '0712', '071235'),
(846, '071236000', 'SAGBAYAN (BORJA)', '07', '0712', '071236'),
(847, '071237000', 'SAN ISIDRO', '07', '0712', '071237'),
(848, '071238000', 'SAN MIGUEL', '07', '0712', '071238'),
(849, '071239000', 'SEVILLA', '07', '0712', '071239'),
(850, '071240000', 'SIERRA BULLONES', '07', '0712', '071240'),
(851, '071241000', 'SIKATUNA', '07', '0712', '071241'),
(852, '071242000', 'TAGBILARAN CITY (Capital)', '07', '0712', '071242'),
(853, '071243000', 'TALIBON', '07', '0712', '071243'),
(854, '071244000', 'TRINIDAD', '07', '0712', '071244'),
(855, '071245000', 'TUBIGON', '07', '0712', '071245'),
(856, '071246000', 'UBAY', '07', '0712', '071246'),
(857, '071247000', 'VALENCIA', '07', '0712', '071247'),
(858, '071248000', 'BIEN UNIDO', '07', '0712', '071248'),
(859, '072201000', 'ALCANTARA', '07', '0722', '072201'),
(860, '072202000', 'ALCOY', '07', '0722', '072202'),
(861, '072203000', 'ALEGRIA', '07', '0722', '072203'),
(862, '072204000', 'ALOGUINSAN', '07', '0722', '072204'),
(863, '072205000', 'ARGAO', '07', '0722', '072205'),
(864, '072206000', 'ASTURIAS', '07', '0722', '072206'),
(865, '072207000', 'BADIAN', '07', '0722', '072207'),
(866, '072208000', 'BALAMBAN', '07', '0722', '072208'),
(867, '072209000', 'BANTAYAN', '07', '0722', '072209'),
(868, '072210000', 'BARILI', '07', '0722', '072210'),
(869, '072211000', 'CITY OF BOGO', '07', '0722', '072211'),
(870, '072212000', 'BOLJOON', '07', '0722', '072212'),
(871, '072213000', 'BORBON', '07', '0722', '072213'),
(872, '072214000', 'CITY OF CARCAR', '07', '0722', '072214'),
(873, '072215000', 'CARMEN', '07', '0722', '072215'),
(874, '072216000', 'CATMON', '07', '0722', '072216'),
(875, '072217000', 'CEBU CITY (Capital)', '07', '0722', '072217'),
(876, '072218000', 'COMPOSTELA', '07', '0722', '072218'),
(877, '072219000', 'CONSOLACION', '07', '0722', '072219'),
(878, '072220000', 'CORDOVA', '07', '0722', '072220'),
(879, '072221000', 'DAANBANTAYAN', '07', '0722', '072221'),
(880, '072222000', 'DALAGUETE', '07', '0722', '072222'),
(881, '072223000', 'DANAO CITY', '07', '0722', '072223'),
(882, '072224000', 'DUMANJUG', '07', '0722', '072224'),
(883, '072225000', 'GINATILAN', '07', '0722', '072225'),
(884, '072226000', 'LAPU-LAPU CITY (OPON)', '07', '0722', '072226'),
(885, '072227000', 'LILOAN', '07', '0722', '072227'),
(886, '072228000', 'MADRIDEJOS', '07', '0722', '072228'),
(887, '072229000', 'MALABUYOC', '07', '0722', '072229'),
(888, '072230000', 'MANDAUE CITY', '07', '0722', '072230'),
(889, '072231000', 'MEDELLIN', '07', '0722', '072231'),
(890, '072232000', 'MINGLANILLA', '07', '0722', '072232'),
(891, '072233000', 'MOALBOAL', '07', '0722', '072233'),
(892, '072234000', 'CITY OF NAGA', '07', '0722', '072234'),
(893, '072235000', 'OSLOB', '07', '0722', '072235'),
(894, '072236000', 'PILAR', '07', '0722', '072236'),
(895, '072237000', 'PINAMUNGAHAN', '07', '0722', '072237'),
(896, '072238000', 'PORO', '07', '0722', '072238'),
(897, '072239000', 'RONDA', '07', '0722', '072239'),
(898, '072240000', 'SAMBOAN', '07', '0722', '072240'),
(899, '072241000', 'SAN FERNANDO', '07', '0722', '072241'),
(900, '072242000', 'SAN FRANCISCO', '07', '0722', '072242'),
(901, '072243000', 'SAN REMIGIO', '07', '0722', '072243'),
(902, '072244000', 'SANTA FE', '07', '0722', '072244'),
(903, '072245000', 'SANTANDER', '07', '0722', '072245'),
(904, '072246000', 'SIBONGA', '07', '0722', '072246'),
(905, '072247000', 'SOGOD', '07', '0722', '072247'),
(906, '072248000', 'TABOGON', '07', '0722', '072248'),
(907, '072249000', 'TABUELAN', '07', '0722', '072249');
INSERT INTO `refcitymun` (`id`, `psgcCode`, `citymunDesc`, `regDesc`, `provCode`, `citymunCode`) VALUES
(908, '072250000', 'CITY OF TALISAY', '07', '0722', '072250'),
(909, '072251000', 'TOLEDO CITY', '07', '0722', '072251'),
(910, '072252000', 'TUBURAN', '07', '0722', '072252'),
(911, '072253000', 'TUDELA', '07', '0722', '072253'),
(912, '074601000', 'AMLAN (AYUQUITAN)', '07', '0746', '074601'),
(913, '074602000', 'AYUNGON', '07', '0746', '074602'),
(914, '074603000', 'BACONG', '07', '0746', '074603'),
(915, '074604000', 'BAIS CITY', '07', '0746', '074604'),
(916, '074605000', 'BASAY', '07', '0746', '074605'),
(917, '074606000', 'CITY OF BAYAWAN (TULONG)', '07', '0746', '074606'),
(918, '074607000', 'BINDOY (PAYABON)', '07', '0746', '074607'),
(919, '074608000', 'CANLAON CITY', '07', '0746', '074608'),
(920, '074609000', 'DAUIN', '07', '0746', '074609'),
(921, '074610000', 'DUMAGUETE CITY (Capital)', '07', '0746', '074610'),
(922, '074611000', 'CITY OF GUIHULNGAN', '07', '0746', '074611'),
(923, '074612000', 'JIMALALUD', '07', '0746', '074612'),
(924, '074613000', 'LA LIBERTAD', '07', '0746', '074613'),
(925, '074614000', 'MABINAY', '07', '0746', '074614'),
(926, '074615000', 'MANJUYOD', '07', '0746', '074615'),
(927, '074616000', 'PAMPLONA', '07', '0746', '074616'),
(928, '074617000', 'SAN JOSE', '07', '0746', '074617'),
(929, '074618000', 'SANTA CATALINA', '07', '0746', '074618'),
(930, '074619000', 'SIATON', '07', '0746', '074619'),
(931, '074620000', 'SIBULAN', '07', '0746', '074620'),
(932, '074621000', 'CITY OF TANJAY', '07', '0746', '074621'),
(933, '074622000', 'TAYASAN', '07', '0746', '074622'),
(934, '074623000', 'VALENCIA (LUZURRIAGA)', '07', '0746', '074623'),
(935, '074624000', 'VALLEHERMOSO', '07', '0746', '074624'),
(936, '074625000', 'ZAMBOANGUITA', '07', '0746', '074625'),
(937, '076101000', 'ENRIQUE VILLANUEVA', '07', '0761', '076101'),
(938, '076102000', 'LARENA', '07', '0761', '076102'),
(939, '076103000', 'LAZI', '07', '0761', '076103'),
(940, '076104000', 'MARIA', '07', '0761', '076104'),
(941, '076105000', 'SAN JUAN', '07', '0761', '076105'),
(942, '076106000', 'SIQUIJOR (Capital)', '07', '0761', '076106'),
(943, '082601000', 'ARTECHE', '08', '0826', '082601'),
(944, '082602000', 'BALANGIGA', '08', '0826', '082602'),
(945, '082603000', 'BALANGKAYAN', '08', '0826', '082603'),
(946, '082604000', 'CITY OF BORONGAN (Capital)', '08', '0826', '082604'),
(947, '082605000', 'CAN-AVID', '08', '0826', '082605'),
(948, '082606000', 'DOLORES', '08', '0826', '082606'),
(949, '082607000', 'GENERAL MACARTHUR', '08', '0826', '082607'),
(950, '082608000', 'GIPORLOS', '08', '0826', '082608'),
(951, '082609000', 'GUIUAN', '08', '0826', '082609'),
(952, '082610000', 'HERNANI', '08', '0826', '082610'),
(953, '082611000', 'JIPAPAD', '08', '0826', '082611'),
(954, '082612000', 'LAWAAN', '08', '0826', '082612'),
(955, '082613000', 'LLORENTE', '08', '0826', '082613'),
(956, '082614000', 'MASLOG', '08', '0826', '082614'),
(957, '082615000', 'MAYDOLONG', '08', '0826', '082615'),
(958, '082616000', 'MERCEDES', '08', '0826', '082616'),
(959, '082617000', 'ORAS', '08', '0826', '082617'),
(960, '082618000', 'QUINAPONDAN', '08', '0826', '082618'),
(961, '082619000', 'SALCEDO', '08', '0826', '082619'),
(962, '082620000', 'SAN JULIAN', '08', '0826', '082620'),
(963, '082621000', 'SAN POLICARPO', '08', '0826', '082621'),
(964, '082622000', 'SULAT', '08', '0826', '082622'),
(965, '082623000', 'TAFT', '08', '0826', '082623'),
(966, '083701000', 'ABUYOG', '08', '0837', '083701'),
(967, '083702000', 'ALANGALANG', '08', '0837', '083702'),
(968, '083703000', 'ALBUERA', '08', '0837', '083703'),
(969, '083705000', 'BABATNGON', '08', '0837', '083705'),
(970, '083706000', 'BARUGO', '08', '0837', '083706'),
(971, '083707000', 'BATO', '08', '0837', '083707'),
(972, '083708000', 'CITY OF BAYBAY', '08', '0837', '083708'),
(973, '083710000', 'BURAUEN', '08', '0837', '083710'),
(974, '083713000', 'CALUBIAN', '08', '0837', '083713'),
(975, '083714000', 'CAPOOCAN', '08', '0837', '083714'),
(976, '083715000', 'CARIGARA', '08', '0837', '083715'),
(977, '083717000', 'DAGAMI', '08', '0837', '083717'),
(978, '083718000', 'DULAG', '08', '0837', '083718'),
(979, '083719000', 'HILONGOS', '08', '0837', '083719'),
(980, '083720000', 'HINDANG', '08', '0837', '083720'),
(981, '083721000', 'INOPACAN', '08', '0837', '083721'),
(982, '083722000', 'ISABEL', '08', '0837', '083722'),
(983, '083723000', 'JARO', '08', '0837', '083723'),
(984, '083724000', 'JAVIER (BUGHO)', '08', '0837', '083724'),
(985, '083725000', 'JULITA', '08', '0837', '083725'),
(986, '083726000', 'KANANGA', '08', '0837', '083726'),
(987, '083728000', 'LA PAZ', '08', '0837', '083728'),
(988, '083729000', 'LEYTE', '08', '0837', '083729'),
(989, '083730000', 'MACARTHUR', '08', '0837', '083730'),
(990, '083731000', 'MAHAPLAG', '08', '0837', '083731'),
(991, '083733000', 'MATAG-OB', '08', '0837', '083733'),
(992, '083734000', 'MATALOM', '08', '0837', '083734'),
(993, '083735000', 'MAYORGA', '08', '0837', '083735'),
(994, '083736000', 'MERIDA', '08', '0837', '083736'),
(995, '083738000', 'ORMOC CITY', '08', '0837', '083738'),
(996, '083739000', 'PALO', '08', '0837', '083739'),
(997, '083740000', 'PALOMPON', '08', '0837', '083740'),
(998, '083741000', 'PASTRANA', '08', '0837', '083741'),
(999, '083742000', 'SAN ISIDRO', '08', '0837', '083742'),
(1000, '083743000', 'SAN MIGUEL', '08', '0837', '083743'),
(1001, '083744000', 'SANTA FE', '08', '0837', '083744'),
(1002, '083745000', 'TABANGO', '08', '0837', '083745'),
(1003, '083746000', 'TABONTABON', '08', '0837', '083746'),
(1004, '083747000', 'TACLOBAN CITY (Capital)', '08', '0837', '083747'),
(1005, '083748000', 'TANAUAN', '08', '0837', '083748'),
(1006, '083749000', 'TOLOSA', '08', '0837', '083749'),
(1007, '083750000', 'TUNGA', '08', '0837', '083750'),
(1008, '083751000', 'VILLABA', '08', '0837', '083751'),
(1009, '084801000', 'ALLEN', '08', '0848', '084801'),
(1010, '084802000', 'BIRI', '08', '0848', '084802'),
(1011, '084803000', 'BOBON', '08', '0848', '084803'),
(1012, '084804000', 'CAPUL', '08', '0848', '084804'),
(1013, '084805000', 'CATARMAN (Capital)', '08', '0848', '084805'),
(1014, '084806000', 'CATUBIG', '08', '0848', '084806'),
(1015, '084807000', 'GAMAY', '08', '0848', '084807'),
(1016, '084808000', 'LAOANG', '08', '0848', '084808'),
(1017, '084809000', 'LAPINIG', '08', '0848', '084809'),
(1018, '084810000', 'LAS NAVAS', '08', '0848', '084810'),
(1019, '084811000', 'LAVEZARES', '08', '0848', '084811'),
(1020, '084812000', 'MAPANAS', '08', '0848', '084812'),
(1021, '084813000', 'MONDRAGON', '08', '0848', '084813'),
(1022, '084814000', 'PALAPAG', '08', '0848', '084814'),
(1023, '084815000', 'PAMBUJAN', '08', '0848', '084815'),
(1024, '084816000', 'ROSARIO', '08', '0848', '084816'),
(1025, '084817000', 'SAN ANTONIO', '08', '0848', '084817'),
(1026, '084818000', 'SAN ISIDRO', '08', '0848', '084818'),
(1027, '084819000', 'SAN JOSE', '08', '0848', '084819'),
(1028, '084820000', 'SAN ROQUE', '08', '0848', '084820'),
(1029, '084821000', 'SAN VICENTE', '08', '0848', '084821'),
(1030, '084822000', 'SILVINO LOBOS', '08', '0848', '084822'),
(1031, '084823000', 'VICTORIA', '08', '0848', '084823'),
(1032, '084824000', 'LOPE DE VEGA', '08', '0848', '084824'),
(1033, '086001000', 'ALMAGRO', '08', '0860', '086001'),
(1034, '086002000', 'BASEY', '08', '0860', '086002'),
(1035, '086003000', 'CALBAYOG CITY', '08', '0860', '086003'),
(1036, '086004000', 'CALBIGA', '08', '0860', '086004'),
(1037, '086005000', 'CITY OF CATBALOGAN (Capital)', '08', '0860', '086005'),
(1038, '086006000', 'DARAM', '08', '0860', '086006'),
(1039, '086007000', 'GANDARA', '08', '0860', '086007'),
(1040, '086008000', 'HINABANGAN', '08', '0860', '086008'),
(1041, '086009000', 'JIABONG', '08', '0860', '086009'),
(1042, '086010000', 'MARABUT', '08', '0860', '086010'),
(1043, '086011000', 'MATUGUINAO', '08', '0860', '086011'),
(1044, '086012000', 'MOTIONG', '08', '0860', '086012'),
(1045, '086013000', 'PINABACDAO', '08', '0860', '086013'),
(1046, '086014000', 'SAN JOSE DE BUAN', '08', '0860', '086014'),
(1047, '086015000', 'SAN SEBASTIAN', '08', '0860', '086015'),
(1048, '086016000', 'SANTA MARGARITA', '08', '0860', '086016'),
(1049, '086017000', 'SANTA RITA', '08', '0860', '086017'),
(1050, '086018000', 'SANTO NIÑO', '08', '0860', '086018'),
(1051, '086019000', 'TALALORA', '08', '0860', '086019'),
(1052, '086020000', 'TARANGNAN', '08', '0860', '086020'),
(1053, '086021000', 'VILLAREAL', '08', '0860', '086021'),
(1054, '086022000', 'PARANAS (WRIGHT)', '08', '0860', '086022'),
(1055, '086023000', 'ZUMARRAGA', '08', '0860', '086023'),
(1056, '086024000', 'TAGAPUL-AN', '08', '0860', '086024'),
(1057, '086025000', 'SAN JORGE', '08', '0860', '086025'),
(1058, '086026000', 'PAGSANGHAN', '08', '0860', '086026'),
(1059, '086401000', 'ANAHAWAN', '08', '0864', '086401'),
(1060, '086402000', 'BONTOC', '08', '0864', '086402'),
(1061, '086403000', 'HINUNANGAN', '08', '0864', '086403'),
(1062, '086404000', 'HINUNDAYAN', '08', '0864', '086404'),
(1063, '086405000', 'LIBAGON', '08', '0864', '086405'),
(1064, '086406000', 'LILOAN', '08', '0864', '086406'),
(1065, '086407000', 'CITY OF MAASIN (Capital)', '08', '0864', '086407'),
(1066, '086408000', 'MACROHON', '08', '0864', '086408'),
(1067, '086409000', 'MALITBOG', '08', '0864', '086409'),
(1068, '086410000', 'PADRE BURGOS', '08', '0864', '086410'),
(1069, '086411000', 'PINTUYAN', '08', '0864', '086411'),
(1070, '086412000', 'SAINT BERNARD', '08', '0864', '086412'),
(1071, '086413000', 'SAN FRANCISCO', '08', '0864', '086413'),
(1072, '086414000', 'SAN JUAN (CABALIAN)', '08', '0864', '086414'),
(1073, '086415000', 'SAN RICARDO', '08', '0864', '086415'),
(1074, '086416000', 'SILAGO', '08', '0864', '086416'),
(1075, '086417000', 'SOGOD', '08', '0864', '086417'),
(1076, '086418000', 'TOMAS OPPUS', '08', '0864', '086418'),
(1077, '086419000', 'LIMASAWA', '08', '0864', '086419'),
(1078, '087801000', 'ALMERIA', '08', '0878', '087801'),
(1079, '087802000', 'BILIRAN', '08', '0878', '087802'),
(1080, '087803000', 'CABUCGAYAN', '08', '0878', '087803'),
(1081, '087804000', 'CAIBIRAN', '08', '0878', '087804'),
(1082, '087805000', 'CULABA', '08', '0878', '087805'),
(1083, '087806000', 'KAWAYAN', '08', '0878', '087806'),
(1084, '087807000', 'MARIPIPI', '08', '0878', '087807'),
(1085, '087808000', 'NAVAL (Capital)', '08', '0878', '087808'),
(1086, '097201000', 'DAPITAN CITY', '09', '0972', '097201'),
(1087, '097202000', 'DIPOLOG CITY (Capital)', '09', '0972', '097202'),
(1088, '097203000', 'KATIPUNAN', '09', '0972', '097203'),
(1089, '097204000', 'LA LIBERTAD', '09', '0972', '097204'),
(1090, '097205000', 'LABASON', '09', '0972', '097205'),
(1091, '097206000', 'LILOY', '09', '0972', '097206'),
(1092, '097207000', 'MANUKAN', '09', '0972', '097207'),
(1093, '097208000', 'MUTIA', '09', '0972', '097208'),
(1094, '097209000', 'PIÑAN (NEW PIÑAN)', '09', '0972', '097209'),
(1095, '097210000', 'POLANCO', '09', '0972', '097210'),
(1096, '097211000', 'PRES. MANUEL A. ROXAS', '09', '0972', '097211'),
(1097, '097212000', 'RIZAL', '09', '0972', '097212'),
(1098, '097213000', 'SALUG', '09', '0972', '097213'),
(1099, '097214000', 'SERGIO OSMEÑA SR.', '09', '0972', '097214'),
(1100, '097215000', 'SIAYAN', '09', '0972', '097215'),
(1101, '097216000', 'SIBUCO', '09', '0972', '097216'),
(1102, '097217000', 'SIBUTAD', '09', '0972', '097217'),
(1103, '097218000', 'SINDANGAN', '09', '0972', '097218'),
(1104, '097219000', 'SIOCON', '09', '0972', '097219'),
(1105, '097220000', 'SIRAWAI', '09', '0972', '097220'),
(1106, '097221000', 'TAMPILISAN', '09', '0972', '097221'),
(1107, '097222000', 'JOSE DALMAN (PONOT)', '09', '0972', '097222'),
(1108, '097223000', 'GUTALAC', '09', '0972', '097223'),
(1109, '097224000', 'BALIGUIAN', '09', '0972', '097224'),
(1110, '097225000', 'GODOD', '09', '0972', '097225'),
(1111, '097226000', 'BACUNGAN (Leon T. Postigo)', '09', '0972', '097226'),
(1112, '097227000', 'KALAWIT', '09', '0972', '097227'),
(1113, '097302000', 'AURORA', '09', '0973', '097302'),
(1114, '097303000', 'BAYOG', '09', '0973', '097303'),
(1115, '097305000', 'DIMATALING', '09', '0973', '097305'),
(1116, '097306000', 'DINAS', '09', '0973', '097306'),
(1117, '097307000', 'DUMALINAO', '09', '0973', '097307'),
(1118, '097308000', 'DUMINGAG', '09', '0973', '097308'),
(1119, '097311000', 'KUMALARANG', '09', '0973', '097311'),
(1120, '097312000', 'LABANGAN', '09', '0973', '097312'),
(1121, '097313000', 'LAPUYAN', '09', '0973', '097313'),
(1122, '097315000', 'MAHAYAG', '09', '0973', '097315'),
(1123, '097317000', 'MARGOSATUBIG', '09', '0973', '097317'),
(1124, '097318000', 'MIDSALIP', '09', '0973', '097318'),
(1125, '097319000', 'MOLAVE', '09', '0973', '097319'),
(1126, '097322000', 'PAGADIAN CITY (Capital)', '09', '0973', '097322'),
(1127, '097323000', 'RAMON MAGSAYSAY (LIARGO)', '09', '0973', '097323'),
(1128, '097324000', 'SAN MIGUEL', '09', '0973', '097324'),
(1129, '097325000', 'SAN PABLO', '09', '0973', '097325'),
(1130, '097327000', 'TABINA', '09', '0973', '097327'),
(1131, '097328000', 'TAMBULIG', '09', '0973', '097328'),
(1132, '097330000', 'TUKURAN', '09', '0973', '097330'),
(1133, '097332000', 'ZAMBOANGA CITY', '09', '0973', '097332'),
(1134, '097333000', 'LAKEWOOD', '09', '0973', '097333'),
(1135, '097337000', 'JOSEFINA', '09', '0973', '097337'),
(1136, '097338000', 'PITOGO', '09', '0973', '097338'),
(1137, '097340000', 'SOMINOT (DON MARIANO MARCOS)', '09', '0973', '097340'),
(1138, '097341000', 'VINCENZO A. SAGUN', '09', '0973', '097341'),
(1139, '097343000', 'GUIPOS', '09', '0973', '097343'),
(1140, '097344000', 'TIGBAO', '09', '0973', '097344'),
(1141, '098301000', 'ALICIA', '09', '0983', '098301'),
(1142, '098302000', 'BUUG', '09', '0983', '098302'),
(1143, '098303000', 'DIPLAHAN', '09', '0983', '098303'),
(1144, '098304000', 'IMELDA', '09', '0983', '098304'),
(1145, '098305000', 'IPIL (Capital)', '09', '0983', '098305'),
(1146, '098306000', 'KABASALAN', '09', '0983', '098306'),
(1147, '098307000', 'MABUHAY', '09', '0983', '098307'),
(1148, '098308000', 'MALANGAS', '09', '0983', '098308'),
(1149, '098309000', 'NAGA', '09', '0983', '098309'),
(1150, '098310000', 'OLUTANGA', '09', '0983', '098310'),
(1151, '098311000', 'PAYAO', '09', '0983', '098311'),
(1152, '098312000', 'ROSELLER LIM', '09', '0983', '098312'),
(1153, '098313000', 'SIAY', '09', '0983', '098313'),
(1154, '098314000', 'TALUSAN', '09', '0983', '098314'),
(1155, '098315000', 'TITAY', '09', '0983', '098315'),
(1156, '098316000', 'TUNGAWAN', '09', '0983', '098316'),
(1157, '099701000', 'CITY OF ISABELA', '09', '0997', '099701'),
(1158, '101301000', 'BAUNGON', '10', '1013', '101301'),
(1159, '101302000', 'DAMULOG', '10', '1013', '101302'),
(1160, '101303000', 'DANGCAGAN', '10', '1013', '101303'),
(1161, '101304000', 'DON CARLOS', '10', '1013', '101304'),
(1162, '101305000', 'IMPASUG-ONG', '10', '1013', '101305'),
(1163, '101306000', 'KADINGILAN', '10', '1013', '101306'),
(1164, '101307000', 'KALILANGAN', '10', '1013', '101307'),
(1165, '101308000', 'KIBAWE', '10', '1013', '101308'),
(1166, '101309000', 'KITAOTAO', '10', '1013', '101309'),
(1167, '101310000', 'LANTAPAN', '10', '1013', '101310'),
(1168, '101311000', 'LIBONA', '10', '1013', '101311'),
(1169, '101312000', 'CITY OF MALAYBALAY (Capital)', '10', '1013', '101312'),
(1170, '101313000', 'MALITBOG', '10', '1013', '101313'),
(1171, '101314000', 'MANOLO FORTICH', '10', '1013', '101314'),
(1172, '101315000', 'MARAMAG', '10', '1013', '101315'),
(1173, '101316000', 'PANGANTUCAN', '10', '1013', '101316'),
(1174, '101317000', 'QUEZON', '10', '1013', '101317'),
(1175, '101318000', 'SAN FERNANDO', '10', '1013', '101318'),
(1176, '101319000', 'SUMILAO', '10', '1013', '101319'),
(1177, '101320000', 'TALAKAG', '10', '1013', '101320'),
(1178, '101321000', 'CITY OF VALENCIA', '10', '1013', '101321'),
(1179, '101322000', 'CABANGLASAN', '10', '1013', '101322'),
(1180, '101801000', 'CATARMAN', '10', '1018', '101801'),
(1181, '101802000', 'GUINSILIBAN', '10', '1018', '101802'),
(1182, '101803000', 'MAHINOG', '10', '1018', '101803'),
(1183, '101804000', 'MAMBAJAO (Capital)', '10', '1018', '101804'),
(1184, '101805000', 'SAGAY', '10', '1018', '101805'),
(1185, '103501000', 'BACOLOD', '10', '1035', '103501'),
(1186, '103502000', 'BALOI', '10', '1035', '103502'),
(1187, '103503000', 'BAROY', '10', '1035', '103503'),
(1188, '103504000', 'ILIGAN CITY', '10', '1035', '103504'),
(1189, '103505000', 'KAPATAGAN', '10', '1035', '103505'),
(1190, '103506000', 'SULTAN NAGA DIMAPORO (KAROMATAN)', '10', '1035', '103506'),
(1191, '103507000', 'KAUSWAGAN', '10', '1035', '103507'),
(1192, '103508000', 'KOLAMBUGAN', '10', '1035', '103508'),
(1193, '103509000', 'LALA', '10', '1035', '103509'),
(1194, '103510000', 'LINAMON', '10', '1035', '103510'),
(1195, '103511000', 'MAGSAYSAY', '10', '1035', '103511'),
(1196, '103512000', 'MAIGO', '10', '1035', '103512'),
(1197, '103513000', 'MATUNGAO', '10', '1035', '103513'),
(1198, '103514000', 'MUNAI', '10', '1035', '103514'),
(1199, '103515000', 'NUNUNGAN', '10', '1035', '103515'),
(1200, '103516000', 'PANTAO RAGAT', '10', '1035', '103516'),
(1201, '103517000', 'POONA PIAGAPO', '10', '1035', '103517'),
(1202, '103518000', 'SALVADOR', '10', '1035', '103518'),
(1203, '103519000', 'SAPAD', '10', '1035', '103519'),
(1204, '103520000', 'TAGOLOAN', '10', '1035', '103520'),
(1205, '103521000', 'TANGCAL', '10', '1035', '103521'),
(1206, '103522000', 'TUBOD (Capital)', '10', '1035', '103522'),
(1207, '103523000', 'PANTAR', '10', '1035', '103523'),
(1208, '104201000', 'ALORAN', '10', '1042', '104201'),
(1209, '104202000', 'BALIANGAO', '10', '1042', '104202'),
(1210, '104203000', 'BONIFACIO', '10', '1042', '104203'),
(1211, '104204000', 'CALAMBA', '10', '1042', '104204'),
(1212, '104205000', 'CLARIN', '10', '1042', '104205'),
(1213, '104206000', 'CONCEPCION', '10', '1042', '104206'),
(1214, '104207000', 'JIMENEZ', '10', '1042', '104207'),
(1215, '104208000', 'LOPEZ JAENA', '10', '1042', '104208'),
(1216, '104209000', 'OROQUIETA CITY (Capital)', '10', '1042', '104209'),
(1217, '104210000', 'OZAMIS CITY', '10', '1042', '104210'),
(1218, '104211000', 'PANAON', '10', '1042', '104211'),
(1219, '104212000', 'PLARIDEL', '10', '1042', '104212'),
(1220, '104213000', 'SAPANG DALAGA', '10', '1042', '104213'),
(1221, '104214000', 'SINACABAN', '10', '1042', '104214'),
(1222, '104215000', 'TANGUB CITY', '10', '1042', '104215'),
(1223, '104216000', 'TUDELA', '10', '1042', '104216'),
(1224, '104217000', 'DON VICTORIANO CHIONGBIAN  (DON MARIANO MARCOS)', '10', '1042', '104217'),
(1225, '104301000', 'ALUBIJID', '10', '1043', '104301'),
(1226, '104302000', 'BALINGASAG', '10', '1043', '104302'),
(1227, '104303000', 'BALINGOAN', '10', '1043', '104303'),
(1228, '104304000', 'BINUANGAN', '10', '1043', '104304'),
(1229, '104305000', 'CAGAYAN DE ORO CITY (Capital)', '10', '1043', '104305'),
(1230, '104306000', 'CLAVERIA', '10', '1043', '104306'),
(1231, '104307000', 'CITY OF EL SALVADOR', '10', '1043', '104307'),
(1232, '104308000', 'GINGOOG CITY', '10', '1043', '104308'),
(1233, '104309000', 'GITAGUM', '10', '1043', '104309'),
(1234, '104310000', 'INITAO', '10', '1043', '104310'),
(1235, '104311000', 'JASAAN', '10', '1043', '104311'),
(1236, '104312000', 'KINOGUITAN', '10', '1043', '104312'),
(1237, '104313000', 'LAGONGLONG', '10', '1043', '104313'),
(1238, '104314000', 'LAGUINDINGAN', '10', '1043', '104314'),
(1239, '104315000', 'LIBERTAD', '10', '1043', '104315'),
(1240, '104316000', 'LUGAIT', '10', '1043', '104316'),
(1241, '104317000', 'MAGSAYSAY (LINUGOS)', '10', '1043', '104317'),
(1242, '104318000', 'MANTICAO', '10', '1043', '104318'),
(1243, '104319000', 'MEDINA', '10', '1043', '104319'),
(1244, '104320000', 'NAAWAN', '10', '1043', '104320'),
(1245, '104321000', 'OPOL', '10', '1043', '104321'),
(1246, '104322000', 'SALAY', '10', '1043', '104322'),
(1247, '104323000', 'SUGBONGCOGON', '10', '1043', '104323'),
(1248, '104324000', 'TAGOLOAN', '10', '1043', '104324'),
(1249, '104325000', 'TALISAYAN', '10', '1043', '104325'),
(1250, '104326000', 'VILLANUEVA', '10', '1043', '104326'),
(1251, '112301000', 'ASUNCION (SAUG)', '11', '1123', '112301'),
(1252, '112303000', 'CARMEN', '11', '1123', '112303'),
(1253, '112305000', 'KAPALONG', '11', '1123', '112305'),
(1254, '112314000', 'NEW CORELLA', '11', '1123', '112314'),
(1255, '112315000', 'CITY OF PANABO', '11', '1123', '112315'),
(1256, '112317000', 'ISLAND GARDEN CITY OF SAMAL', '11', '1123', '112317'),
(1257, '112318000', 'SANTO TOMAS', '11', '1123', '112318'),
(1258, '112319000', 'CITY OF TAGUM (Capital)', '11', '1123', '112319'),
(1259, '112322000', 'TALAINGOD', '11', '1123', '112322'),
(1260, '112323000', 'BRAULIO E. DUJALI', '11', '1123', '112323'),
(1261, '112324000', 'SAN ISIDRO', '11', '1123', '112324'),
(1262, '112401000', 'BANSALAN', '11', '1124', '112401'),
(1263, '112402000', 'DAVAO CITY', '11', '1124', '112402'),
(1264, '112403000', 'CITY OF DIGOS (Capital)', '11', '1124', '112403'),
(1265, '112404000', 'HAGONOY', '11', '1124', '112404'),
(1266, '112406000', 'KIBLAWAN', '11', '1124', '112406'),
(1267, '112407000', 'MAGSAYSAY', '11', '1124', '112407'),
(1268, '112408000', 'MALALAG', '11', '1124', '112408'),
(1269, '112410000', 'MATANAO', '11', '1124', '112410'),
(1270, '112411000', 'PADADA', '11', '1124', '112411'),
(1271, '112412000', 'SANTA CRUZ', '11', '1124', '112412'),
(1272, '112414000', 'SULOP', '11', '1124', '112414'),
(1273, '112501000', 'BAGANGA', '11', '1125', '112501'),
(1274, '112502000', 'BANAYBANAY', '11', '1125', '112502'),
(1275, '112503000', 'BOSTON', '11', '1125', '112503'),
(1276, '112504000', 'CARAGA', '11', '1125', '112504'),
(1277, '112505000', 'CATEEL', '11', '1125', '112505'),
(1278, '112506000', 'GOVERNOR GENEROSO', '11', '1125', '112506'),
(1279, '112507000', 'LUPON', '11', '1125', '112507'),
(1280, '112508000', 'MANAY', '11', '1125', '112508'),
(1281, '112509000', 'CITY OF MATI (Capital)', '11', '1125', '112509'),
(1282, '112510000', 'SAN ISIDRO', '11', '1125', '112510'),
(1283, '112511000', 'TARRAGONA', '11', '1125', '112511'),
(1284, '118201000', 'COMPOSTELA', '11', '1182', '118201'),
(1285, '118202000', 'LAAK (SAN VICENTE)', '11', '1182', '118202'),
(1286, '118203000', 'MABINI (DOÑA ALICIA)', '11', '1182', '118203'),
(1287, '118204000', 'MACO', '11', '1182', '118204'),
(1288, '118205000', 'MARAGUSAN (SAN MARIANO)', '11', '1182', '118205'),
(1289, '118206000', 'MAWAB', '11', '1182', '118206'),
(1290, '118207000', 'MONKAYO', '11', '1182', '118207'),
(1291, '118208000', 'MONTEVISTA', '11', '1182', '118208'),
(1292, '118209000', 'NABUNTURAN (Capital)', '11', '1182', '118209'),
(1293, '118210000', 'NEW BATAAN', '11', '1182', '118210'),
(1294, '118211000', 'PANTUKAN', '11', '1182', '118211'),
(1295, '118601000', 'DON MARCELINO', '11', '1186', '118601'),
(1296, '118602000', 'JOSE ABAD SANTOS (TRINIDAD)', '11', '1186', '118602'),
(1297, '118603000', 'MALITA', '11', '1186', '118603'),
(1298, '118604000', 'SANTA MARIA', '11', '1186', '118604'),
(1299, '118605000', 'SARANGANI', '11', '1186', '118605'),
(1300, '124701000', 'ALAMADA', '12', '1247', '124701'),
(1301, '124702000', 'CARMEN', '12', '1247', '124702'),
(1302, '124703000', 'KABACAN', '12', '1247', '124703'),
(1303, '124704000', 'CITY OF KIDAPAWAN (Capital)', '12', '1247', '124704'),
(1304, '124705000', 'LIBUNGAN', '12', '1247', '124705'),
(1305, '124706000', 'MAGPET', '12', '1247', '124706'),
(1306, '124707000', 'MAKILALA', '12', '1247', '124707'),
(1307, '124708000', 'MATALAM', '12', '1247', '124708'),
(1308, '124709000', 'MIDSAYAP', '12', '1247', '124709'),
(1309, '124710000', 'M\'LANG', '12', '1247', '124710'),
(1310, '124711000', 'PIGKAWAYAN', '12', '1247', '124711'),
(1311, '124712000', 'PIKIT', '12', '1247', '124712'),
(1312, '124713000', 'PRESIDENT ROXAS', '12', '1247', '124713'),
(1313, '124714000', 'TULUNAN', '12', '1247', '124714'),
(1314, '124715000', 'ANTIPAS', '12', '1247', '124715'),
(1315, '124716000', 'BANISILAN', '12', '1247', '124716'),
(1316, '124717000', 'ALEOSAN', '12', '1247', '124717'),
(1317, '124718000', 'ARAKAN', '12', '1247', '124718'),
(1318, '126302000', 'BANGA', '12', '1263', '126302'),
(1319, '126303000', 'GENERAL SANTOS CITY (DADIANGAS)', '12', '1263', '126303'),
(1320, '126306000', 'CITY OF KORONADAL (Capital)', '12', '1263', '126306'),
(1321, '126311000', 'NORALA', '12', '1263', '126311'),
(1322, '126312000', 'POLOMOLOK', '12', '1263', '126312'),
(1323, '126313000', 'SURALLAH', '12', '1263', '126313'),
(1324, '126314000', 'TAMPAKAN', '12', '1263', '126314'),
(1325, '126315000', 'TANTANGAN', '12', '1263', '126315'),
(1326, '126316000', 'T\'BOLI', '12', '1263', '126316'),
(1327, '126317000', 'TUPI', '12', '1263', '126317'),
(1328, '126318000', 'SANTO NIÑO', '12', '1263', '126318'),
(1329, '126319000', 'LAKE SEBU', '12', '1263', '126319'),
(1330, '126501000', 'BAGUMBAYAN', '12', '1265', '126501'),
(1331, '126502000', 'COLUMBIO', '12', '1265', '126502'),
(1332, '126503000', 'ESPERANZA', '12', '1265', '126503'),
(1333, '126504000', 'ISULAN (Capital)', '12', '1265', '126504'),
(1334, '126505000', 'KALAMANSIG', '12', '1265', '126505'),
(1335, '126506000', 'LEBAK', '12', '1265', '126506'),
(1336, '126507000', 'LUTAYAN', '12', '1265', '126507'),
(1337, '126508000', 'LAMBAYONG (MARIANO MARCOS)', '12', '1265', '126508'),
(1338, '126509000', 'PALIMBANG', '12', '1265', '126509'),
(1339, '126510000', 'PRESIDENT QUIRINO', '12', '1265', '126510'),
(1340, '126511000', 'CITY OF TACURONG', '12', '1265', '126511'),
(1341, '126512000', 'SEN. NINOY AQUINO', '12', '1265', '126512'),
(1342, '128001000', 'ALABEL (Capital)', '12', '1280', '128001'),
(1343, '128002000', 'GLAN', '12', '1280', '128002'),
(1344, '128003000', 'KIAMBA', '12', '1280', '128003'),
(1345, '128004000', 'MAASIM', '12', '1280', '128004'),
(1346, '128005000', 'MAITUM', '12', '1280', '128005'),
(1347, '128006000', 'MALAPATAN', '12', '1280', '128006'),
(1348, '128007000', 'MALUNGON', '12', '1280', '128007'),
(1349, '129804000', 'COTABATO CITY', '12', '1298', '129804'),
(1350, '133901000', 'TONDO I / II', '13', '1339', '133901'),
(1351, '133902000', 'BINONDO', '13', '1339', '133902'),
(1352, '133903000', 'QUIAPO', '13', '1339', '133903'),
(1353, '133904000', 'SAN NICOLAS', '13', '1339', '133904'),
(1354, '133905000', 'SANTA CRUZ', '13', '1339', '133905'),
(1355, '133906000', 'SAMPALOC', '13', '1339', '133906'),
(1356, '133907000', 'SAN MIGUEL', '13', '1339', '133907'),
(1357, '133908000', 'ERMITA', '13', '1339', '133908'),
(1358, '133909000', 'INTRAMUROS', '13', '1339', '133909'),
(1359, '133910000', 'MALATE', '13', '1339', '133910'),
(1360, '133911000', 'PACO', '13', '1339', '133911'),
(1361, '133912000', 'PANDACAN', '13', '1339', '133912'),
(1362, '133913000', 'PORT AREA', '13', '1339', '133913'),
(1363, '133914000', 'SANTA ANA', '13', '1339', '133914'),
(1364, '137401000', 'CITY OF MANDALUYONG', '13', '1374', '137401'),
(1365, '137402000', 'CITY OF MARIKINA', '13', '1374', '137402'),
(1366, '137403000', 'CITY OF PASIG', '13', '1374', '137403'),
(1367, '137404000', 'QUEZON CITY', '13', '1374', '137404'),
(1368, '137405000', 'CITY OF SAN JUAN', '13', '1374', '137405'),
(1369, '137501000', 'CALOOCAN CITY', '13', '1375', '137501'),
(1370, '137502000', 'CITY OF MALABON', '13', '1375', '137502'),
(1371, '137503000', 'CITY OF NAVOTAS', '13', '1375', '137503'),
(1372, '137504000', 'CITY OF VALENZUELA', '13', '1375', '137504'),
(1373, '137601000', 'CITY OF LAS PIÑAS', '13', '1376', '137601'),
(1374, '137602000', 'CITY OF MAKATI', '13', '1376', '137602'),
(1375, '137603000', 'CITY OF MUNTINLUPA', '13', '1376', '137603'),
(1376, '137604000', 'CITY OF PARAÑAQUE', '13', '1376', '137604'),
(1377, '137605000', 'PASAY CITY', '13', '1376', '137605'),
(1378, '137606000', 'PATEROS', '13', '1376', '137606'),
(1379, '137607000', 'TAGUIG CITY', '13', '1376', '137607'),
(1380, '140101000', 'BANGUED (Capital)', '14', '1401', '140101'),
(1381, '140102000', 'BOLINEY', '14', '1401', '140102'),
(1382, '140103000', 'BUCAY', '14', '1401', '140103'),
(1383, '140104000', 'BUCLOC', '14', '1401', '140104'),
(1384, '140105000', 'DAGUIOMAN', '14', '1401', '140105'),
(1385, '140106000', 'DANGLAS', '14', '1401', '140106'),
(1386, '140107000', 'DOLORES', '14', '1401', '140107'),
(1387, '140108000', 'LA PAZ', '14', '1401', '140108'),
(1388, '140109000', 'LACUB', '14', '1401', '140109'),
(1389, '140110000', 'LAGANGILANG', '14', '1401', '140110'),
(1390, '140111000', 'LAGAYAN', '14', '1401', '140111'),
(1391, '140112000', 'LANGIDEN', '14', '1401', '140112'),
(1392, '140113000', 'LICUAN-BAAY (LICUAN)', '14', '1401', '140113'),
(1393, '140114000', 'LUBA', '14', '1401', '140114'),
(1394, '140115000', 'MALIBCONG', '14', '1401', '140115'),
(1395, '140116000', 'MANABO', '14', '1401', '140116'),
(1396, '140117000', 'PEÑARRUBIA', '14', '1401', '140117'),
(1397, '140118000', 'PIDIGAN', '14', '1401', '140118'),
(1398, '140119000', 'PILAR', '14', '1401', '140119'),
(1399, '140120000', 'SALLAPADAN', '14', '1401', '140120'),
(1400, '140121000', 'SAN ISIDRO', '14', '1401', '140121'),
(1401, '140122000', 'SAN JUAN', '14', '1401', '140122'),
(1402, '140123000', 'SAN QUINTIN', '14', '1401', '140123'),
(1403, '140124000', 'TAYUM', '14', '1401', '140124'),
(1404, '140125000', 'TINEG', '14', '1401', '140125'),
(1405, '140126000', 'TUBO', '14', '1401', '140126'),
(1406, '140127000', 'VILLAVICIOSA', '14', '1401', '140127'),
(1407, '141101000', 'ATOK', '14', '1411', '141101'),
(1408, '141102000', 'BAGUIO CITY', '14', '1411', '141102'),
(1409, '141103000', 'BAKUN', '14', '1411', '141103'),
(1410, '141104000', 'BOKOD', '14', '1411', '141104'),
(1411, '141105000', 'BUGUIAS', '14', '1411', '141105'),
(1412, '141106000', 'ITOGON', '14', '1411', '141106'),
(1413, '141107000', 'KABAYAN', '14', '1411', '141107'),
(1414, '141108000', 'KAPANGAN', '14', '1411', '141108'),
(1415, '141109000', 'KIBUNGAN', '14', '1411', '141109'),
(1416, '141110000', 'LA TRINIDAD (Capital)', '14', '1411', '141110'),
(1417, '141111000', 'MANKAYAN', '14', '1411', '141111'),
(1418, '141112000', 'SABLAN', '14', '1411', '141112'),
(1419, '141113000', 'TUBA', '14', '1411', '141113'),
(1420, '141114000', 'TUBLAY', '14', '1411', '141114'),
(1421, '142701000', 'BANAUE', '14', '1427', '142701'),
(1422, '142702000', 'HUNGDUAN', '14', '1427', '142702'),
(1423, '142703000', 'KIANGAN', '14', '1427', '142703'),
(1424, '142704000', 'LAGAWE (Capital)', '14', '1427', '142704'),
(1425, '142705000', 'LAMUT', '14', '1427', '142705'),
(1426, '142706000', 'MAYOYAO', '14', '1427', '142706'),
(1427, '142707000', 'ALFONSO LISTA (POTIA)', '14', '1427', '142707'),
(1428, '142708000', 'AGUINALDO', '14', '1427', '142708'),
(1429, '142709000', 'HINGYON', '14', '1427', '142709'),
(1430, '142710000', 'TINOC', '14', '1427', '142710'),
(1431, '142711000', 'ASIPULO', '14', '1427', '142711'),
(1432, '143201000', 'BALBALAN', '14', '1432', '143201'),
(1433, '143206000', 'LUBUAGAN', '14', '1432', '143206'),
(1434, '143208000', 'PASIL', '14', '1432', '143208'),
(1435, '143209000', 'PINUKPUK', '14', '1432', '143209'),
(1436, '143211000', 'RIZAL (LIWAN)', '14', '1432', '143211'),
(1437, '143213000', 'CITY OF TABUK (Capital)', '14', '1432', '143213'),
(1438, '143214000', 'TANUDAN', '14', '1432', '143214'),
(1439, '143215000', 'TINGLAYAN', '14', '1432', '143215'),
(1440, '144401000', 'BARLIG', '14', '1444', '144401'),
(1441, '144402000', 'BAUKO', '14', '1444', '144402'),
(1442, '144403000', 'BESAO', '14', '1444', '144403'),
(1443, '144404000', 'BONTOC (Capital)', '14', '1444', '144404'),
(1444, '144405000', 'NATONIN', '14', '1444', '144405'),
(1445, '144406000', 'PARACELIS', '14', '1444', '144406'),
(1446, '144407000', 'SABANGAN', '14', '1444', '144407'),
(1447, '144408000', 'SADANGA', '14', '1444', '144408'),
(1448, '144409000', 'SAGADA', '14', '1444', '144409'),
(1449, '144410000', 'TADIAN', '14', '1444', '144410'),
(1450, '148101000', 'CALANASAN (BAYAG)', '14', '1481', '148101'),
(1451, '148102000', 'CONNER', '14', '1481', '148102'),
(1452, '148103000', 'FLORA', '14', '1481', '148103'),
(1453, '148104000', 'KABUGAO (Capital)', '14', '1481', '148104'),
(1454, '148105000', 'LUNA', '14', '1481', '148105'),
(1455, '148106000', 'PUDTOL', '14', '1481', '148106'),
(1456, '148107000', 'SANTA MARCELA', '14', '1481', '148107'),
(1457, '150702000', 'CITY OF LAMITAN', '15', '1507', '150702'),
(1458, '150703000', 'LANTAWAN', '15', '1507', '150703'),
(1459, '150704000', 'MALUSO', '15', '1507', '150704'),
(1460, '150705000', 'SUMISIP', '15', '1507', '150705'),
(1461, '150706000', 'TIPO-TIPO', '15', '1507', '150706'),
(1462, '150707000', 'TUBURAN', '15', '1507', '150707'),
(1463, '150708000', 'AKBAR', '15', '1507', '150708'),
(1464, '150709000', 'AL-BARKA', '15', '1507', '150709'),
(1465, '150710000', 'HADJI MOHAMMAD AJUL', '15', '1507', '150710'),
(1466, '150711000', 'UNGKAYA PUKAN', '15', '1507', '150711'),
(1467, '150712000', 'HADJI MUHTAMAD', '15', '1507', '150712'),
(1468, '150713000', 'TABUAN-LASA', '15', '1507', '150713'),
(1469, '153601000', 'BACOLOD-KALAWI (BACOLOD GRANDE)', '15', '1536', '153601'),
(1470, '153602000', 'BALABAGAN', '15', '1536', '153602'),
(1471, '153603000', 'BALINDONG (WATU)', '15', '1536', '153603'),
(1472, '153604000', 'BAYANG', '15', '1536', '153604'),
(1473, '153605000', 'BINIDAYAN', '15', '1536', '153605'),
(1474, '153606000', 'BUBONG', '15', '1536', '153606'),
(1475, '153607000', 'BUTIG', '15', '1536', '153607'),
(1476, '153609000', 'GANASSI', '15', '1536', '153609'),
(1477, '153610000', 'KAPAI', '15', '1536', '153610'),
(1478, '153611000', 'LUMBA-BAYABAO (MAGUING)', '15', '1536', '153611'),
(1479, '153612000', 'LUMBATAN', '15', '1536', '153612'),
(1480, '153613000', 'MADALUM', '15', '1536', '153613'),
(1481, '153614000', 'MADAMBA', '15', '1536', '153614'),
(1482, '153615000', 'MALABANG', '15', '1536', '153615'),
(1483, '153616000', 'MARANTAO', '15', '1536', '153616'),
(1484, '153617000', 'MARAWI CITY (Capital)', '15', '1536', '153617'),
(1485, '153618000', 'MASIU', '15', '1536', '153618'),
(1486, '153619000', 'MULONDO', '15', '1536', '153619'),
(1487, '153620000', 'PAGAYAWAN (TATARIKAN)', '15', '1536', '153620'),
(1488, '153621000', 'PIAGAPO', '15', '1536', '153621'),
(1489, '153622000', 'POONA BAYABAO (GATA)', '15', '1536', '153622'),
(1490, '153623000', 'PUALAS', '15', '1536', '153623'),
(1491, '153624000', 'DITSAAN-RAMAIN', '15', '1536', '153624'),
(1492, '153625000', 'SAGUIARAN', '15', '1536', '153625'),
(1493, '153626000', 'TAMPARAN', '15', '1536', '153626'),
(1494, '153627000', 'TARAKA', '15', '1536', '153627'),
(1495, '153628000', 'TUBARAN', '15', '1536', '153628'),
(1496, '153629000', 'TUGAYA', '15', '1536', '153629'),
(1497, '153630000', 'WAO', '15', '1536', '153630'),
(1498, '153631000', 'MAROGONG', '15', '1536', '153631'),
(1499, '153632000', 'CALANOGAS', '15', '1536', '153632'),
(1500, '153633000', 'BUADIPOSO-BUNTONG', '15', '1536', '153633'),
(1501, '153634000', 'MAGUING', '15', '1536', '153634'),
(1502, '153635000', 'PICONG (SULTAN GUMANDER)', '15', '1536', '153635'),
(1503, '153636000', 'LUMBAYANAGUE', '15', '1536', '153636'),
(1504, '153637000', 'BUMBARAN', '15', '1536', '153637'),
(1505, '153638000', 'TAGOLOAN II', '15', '1536', '153638'),
(1506, '153639000', 'KAPATAGAN', '15', '1536', '153639'),
(1507, '153640000', 'SULTAN DUMALONDONG', '15', '1536', '153640'),
(1508, '153641000', 'LUMBACA-UNAYAN', '15', '1536', '153641'),
(1509, '153801000', 'AMPATUAN', '15', '1538', '153801'),
(1510, '153802000', 'BULDON', '15', '1538', '153802'),
(1511, '153803000', 'BULUAN', '15', '1538', '153803'),
(1512, '153805000', 'DATU PAGLAS', '15', '1538', '153805'),
(1513, '153806000', 'DATU PIANG', '15', '1538', '153806'),
(1514, '153807000', 'DATU ODIN SINSUAT (DINAIG)', '15', '1538', '153807'),
(1515, '153808000', 'SHARIFF AGUAK (MAGANOY) (Capital)', '15', '1538', '153808'),
(1516, '153809000', 'MATANOG', '15', '1538', '153809'),
(1517, '153810000', 'PAGALUNGAN', '15', '1538', '153810'),
(1518, '153811000', 'PARANG', '15', '1538', '153811'),
(1519, '153812000', 'SULTAN KUDARAT (NULING)', '15', '1538', '153812'),
(1520, '153813000', 'SULTAN SA BARONGIS (LAMBAYONG)', '15', '1538', '153813'),
(1521, '153814000', 'KABUNTALAN (TUMBAO)', '15', '1538', '153814'),
(1522, '153815000', 'UPI', '15', '1538', '153815'),
(1523, '153816000', 'TALAYAN', '15', '1538', '153816'),
(1524, '153817000', 'SOUTH UPI', '15', '1538', '153817'),
(1525, '153818000', 'BARIRA', '15', '1538', '153818'),
(1526, '153819000', 'GEN. S. K. PENDATUN', '15', '1538', '153819'),
(1527, '153820000', 'MAMASAPANO', '15', '1538', '153820'),
(1528, '153821000', 'TALITAY', '15', '1538', '153821'),
(1529, '153822000', 'PAGAGAWAN', '15', '1538', '153822'),
(1530, '153823000', 'PAGLAT', '15', '1538', '153823'),
(1531, '153824000', 'SULTAN MASTURA', '15', '1538', '153824'),
(1532, '153825000', 'GUINDULUNGAN', '15', '1538', '153825'),
(1533, '153826000', 'DATU SAUDI-AMPATUAN', '15', '1538', '153826'),
(1534, '153827000', 'DATU UNSAY', '15', '1538', '153827'),
(1535, '153828000', 'DATU ABDULLAH SANGKI', '15', '1538', '153828'),
(1536, '153829000', 'RAJAH BUAYAN', '15', '1538', '153829'),
(1537, '153830000', 'DATU BLAH T. SINSUAT', '15', '1538', '153830'),
(1538, '153831000', 'DATU ANGGAL MIDTIMBANG', '15', '1538', '153831'),
(1539, '153832000', 'MANGUDADATU', '15', '1538', '153832'),
(1540, '153833000', 'PANDAG', '15', '1538', '153833'),
(1541, '153834000', 'NORTHERN KABUNTALAN', '15', '1538', '153834'),
(1542, '153835000', 'DATU HOFFER AMPATUAN', '15', '1538', '153835'),
(1543, '153836000', 'DATU SALIBO', '15', '1538', '153836'),
(1544, '153837000', 'SHARIFF SAYDONA MUSTAPHA', '15', '1538', '153837'),
(1545, '156601000', 'INDANAN', '15', '1566', '156601'),
(1546, '156602000', 'JOLO (Capital)', '15', '1566', '156602'),
(1547, '156603000', 'KALINGALAN CALUANG', '15', '1566', '156603'),
(1548, '156604000', 'LUUK', '15', '1566', '156604'),
(1549, '156605000', 'MAIMBUNG', '15', '1566', '156605'),
(1550, '156606000', 'HADJI PANGLIMA TAHIL (MARUNGGAS)', '15', '1566', '156606'),
(1551, '156607000', 'OLD PANAMAO', '15', '1566', '156607'),
(1552, '156608000', 'PANGUTARAN', '15', '1566', '156608'),
(1553, '156609000', 'PARANG', '15', '1566', '156609'),
(1554, '156610000', 'PATA', '15', '1566', '156610'),
(1555, '156611000', 'PATIKUL', '15', '1566', '156611'),
(1556, '156612000', 'SIASI', '15', '1566', '156612'),
(1557, '156613000', 'TALIPAO', '15', '1566', '156613'),
(1558, '156614000', 'TAPUL', '15', '1566', '156614'),
(1559, '156615000', 'TONGKIL', '15', '1566', '156615'),
(1560, '156616000', 'PANGLIMA ESTINO (NEW PANAMAO)', '15', '1566', '156616'),
(1561, '156617000', 'LUGUS', '15', '1566', '156617'),
(1562, '156618000', 'PANDAMI', '15', '1566', '156618'),
(1563, '156619000', 'OMAR', '15', '1566', '156619'),
(1564, '157001000', 'PANGLIMA SUGALA (BALIMBING)', '15', '1570', '157001'),
(1565, '157002000', 'BONGAO (Capital)', '15', '1570', '157002'),
(1566, '157003000', 'MAPUN (CAGAYAN DE TAWI-TAWI)', '15', '1570', '157003'),
(1567, '157004000', 'SIMUNUL', '15', '1570', '157004'),
(1568, '157005000', 'SITANGKAI', '15', '1570', '157005'),
(1569, '157006000', 'SOUTH UBIAN', '15', '1570', '157006'),
(1570, '157007000', 'TANDUBAS', '15', '1570', '157007'),
(1571, '157008000', 'TURTLE ISLANDS', '15', '1570', '157008'),
(1572, '157009000', 'LANGUYAN', '15', '1570', '157009'),
(1573, '157010000', 'SAPA-SAPA', '15', '1570', '157010'),
(1574, '157011000', 'SIBUTU', '15', '1570', '157011'),
(1575, '160201000', 'BUENAVISTA', '16', '1602', '160201'),
(1576, '160202000', 'BUTUAN CITY (Capital)', '16', '1602', '160202'),
(1577, '160203000', 'CITY OF CABADBARAN', '16', '1602', '160203'),
(1578, '160204000', 'CARMEN', '16', '1602', '160204'),
(1579, '160205000', 'JABONGA', '16', '1602', '160205'),
(1580, '160206000', 'KITCHARAO', '16', '1602', '160206'),
(1581, '160207000', 'LAS NIEVES', '16', '1602', '160207'),
(1582, '160208000', 'MAGALLANES', '16', '1602', '160208'),
(1583, '160209000', 'NASIPIT', '16', '1602', '160209'),
(1584, '160210000', 'SANTIAGO', '16', '1602', '160210'),
(1585, '160211000', 'TUBAY', '16', '1602', '160211'),
(1586, '160212000', 'REMEDIOS T. ROMUALDEZ', '16', '1602', '160212'),
(1587, '160301000', 'CITY OF BAYUGAN', '16', '1603', '160301'),
(1588, '160302000', 'BUNAWAN', '16', '1603', '160302'),
(1589, '160303000', 'ESPERANZA', '16', '1603', '160303'),
(1590, '160304000', 'LA PAZ', '16', '1603', '160304'),
(1591, '160305000', 'LORETO', '16', '1603', '160305'),
(1592, '160306000', 'PROSPERIDAD (Capital)', '16', '1603', '160306'),
(1593, '160307000', 'ROSARIO', '16', '1603', '160307'),
(1594, '160308000', 'SAN FRANCISCO', '16', '1603', '160308'),
(1595, '160309000', 'SAN LUIS', '16', '1603', '160309'),
(1596, '160310000', 'SANTA JOSEFA', '16', '1603', '160310'),
(1597, '160311000', 'TALACOGON', '16', '1603', '160311'),
(1598, '160312000', 'TRENTO', '16', '1603', '160312'),
(1599, '160313000', 'VERUELA', '16', '1603', '160313'),
(1600, '160314000', 'SIBAGAT', '16', '1603', '160314'),
(1601, '166701000', 'ALEGRIA', '16', '1667', '166701'),
(1602, '166702000', 'BACUAG', '16', '1667', '166702'),
(1603, '166704000', 'BURGOS', '16', '1667', '166704'),
(1604, '166706000', 'CLAVER', '16', '1667', '166706'),
(1605, '166707000', 'DAPA', '16', '1667', '166707'),
(1606, '166708000', 'DEL CARMEN', '16', '1667', '166708'),
(1607, '166710000', 'GENERAL LUNA', '16', '1667', '166710'),
(1608, '166711000', 'GIGAQUIT', '16', '1667', '166711'),
(1609, '166714000', 'MAINIT', '16', '1667', '166714'),
(1610, '166715000', 'MALIMONO', '16', '1667', '166715'),
(1611, '166716000', 'PILAR', '16', '1667', '166716'),
(1612, '166717000', 'PLACER', '16', '1667', '166717'),
(1613, '166718000', 'SAN BENITO', '16', '1667', '166718'),
(1614, '166719000', 'SAN FRANCISCO (ANAO-AON)', '16', '1667', '166719'),
(1615, '166720000', 'SAN ISIDRO', '16', '1667', '166720'),
(1616, '166721000', 'SANTA MONICA (SAPAO)', '16', '1667', '166721'),
(1617, '166722000', 'SISON', '16', '1667', '166722'),
(1618, '166723000', 'SOCORRO', '16', '1667', '166723'),
(1619, '166724000', 'SURIGAO CITY (Capital)', '16', '1667', '166724'),
(1620, '166725000', 'TAGANA-AN', '16', '1667', '166725'),
(1621, '166727000', 'TUBOD', '16', '1667', '166727'),
(1622, '166801000', 'BAROBO', '16', '1668', '166801'),
(1623, '166802000', 'BAYABAS', '16', '1668', '166802'),
(1624, '166803000', 'CITY OF BISLIG', '16', '1668', '166803'),
(1625, '166804000', 'CAGWAIT', '16', '1668', '166804'),
(1626, '166805000', 'CANTILAN', '16', '1668', '166805'),
(1627, '166806000', 'CARMEN', '16', '1668', '166806'),
(1628, '166807000', 'CARRASCAL', '16', '1668', '166807'),
(1629, '166808000', 'CORTES', '16', '1668', '166808'),
(1630, '166809000', 'HINATUAN', '16', '1668', '166809'),
(1631, '166810000', 'LANUZA', '16', '1668', '166810'),
(1632, '166811000', 'LIANGA', '16', '1668', '166811'),
(1633, '166812000', 'LINGIG', '16', '1668', '166812'),
(1634, '166813000', 'MADRID', '16', '1668', '166813'),
(1635, '166814000', 'MARIHATAG', '16', '1668', '166814'),
(1636, '166815000', 'SAN AGUSTIN', '16', '1668', '166815'),
(1637, '166816000', 'SAN MIGUEL', '16', '1668', '166816'),
(1638, '166817000', 'TAGBINA', '16', '1668', '166817'),
(1639, '166818000', 'TAGO', '16', '1668', '166818'),
(1640, '166819000', 'CITY OF TANDAG (Capital)', '16', '1668', '166819'),
(1641, '168501000', 'BASILISA (RIZAL)', '16', '1685', '168501'),
(1642, '168502000', 'CAGDIANAO', '16', '1685', '168502'),
(1643, '168503000', 'DINAGAT', '16', '1685', '168503'),
(1644, '168504000', 'LIBJO (ALBOR)', '16', '1685', '168504'),
(1645, '168505000', 'LORETO', '16', '1685', '168505'),
(1646, '168506000', 'SAN JOSE (Capital)', '16', '1685', '168506'),
(1647, '168507000', 'TUBAJON', '16', '1685', '168507');

-- --------------------------------------------------------

--
-- Table structure for table `refprovince`
--

CREATE TABLE `refprovince` (
  `id` int(11) NOT NULL,
  `psgcCode` varchar(255) DEFAULT NULL,
  `provDesc` text DEFAULT NULL,
  `regCode` varchar(255) DEFAULT NULL,
  `provCode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `refprovince`
--

INSERT INTO `refprovince` (`id`, `psgcCode`, `provDesc`, `regCode`, `provCode`) VALUES
(1, '012800000', 'ILOCOS NORTE', '01', '0128'),
(2, '012900000', 'ILOCOS SUR', '01', '0129'),
(3, '013300000', 'LA UNION', '01', '0133'),
(4, '015500000', 'PANGASINAN', '01', '0155'),
(5, '020900000', 'BATANES', '02', '0209'),
(6, '021500000', 'CAGAYAN', '02', '0215'),
(7, '023100000', 'ISABELA', '02', '0231'),
(8, '025000000', 'NUEVA VIZCAYA', '02', '0250'),
(9, '025700000', 'QUIRINO', '02', '0257'),
(10, '030800000', 'BATAAN', '03', '0308'),
(11, '031400000', 'BULACAN', '03', '0314'),
(12, '034900000', 'NUEVA ECIJA', '03', '0349'),
(13, '035400000', 'PAMPANGA', '03', '0354'),
(14, '036900000', 'TARLAC', '03', '0369'),
(15, '037100000', 'ZAMBALES', '03', '0371'),
(16, '037700000', 'AURORA', '03', '0377'),
(17, '041000000', 'BATANGAS', '04', '0410'),
(18, '042100000', 'CAVITE', '04', '0421'),
(19, '043400000', 'LAGUNA', '04', '0434'),
(20, '045600000', 'QUEZON', '04', '0456'),
(21, '045800000', 'RIZAL', '04', '0458'),
(22, '174000000', 'MARINDUQUE', '17', '1740'),
(23, '175100000', 'OCCIDENTAL MINDORO', '17', '1751'),
(24, '175200000', 'ORIENTAL MINDORO', '17', '1752'),
(25, '175300000', 'PALAWAN', '17', '1753'),
(26, '175900000', 'ROMBLON', '17', '1759'),
(27, '050500000', 'ALBAY', '05', '0505'),
(28, '051600000', 'CAMARINES NORTE', '05', '0516'),
(29, '051700000', 'CAMARINES SUR', '05', '0517'),
(30, '052000000', 'CATANDUANES', '05', '0520'),
(31, '054100000', 'MASBATE', '05', '0541'),
(32, '056200000', 'SORSOGON', '05', '0562'),
(33, '060400000', 'AKLAN', '06', '0604'),
(34, '060600000', 'ANTIQUE', '06', '0606'),
(35, '061900000', 'CAPIZ', '06', '0619'),
(36, '063000000', 'ILOILO', '06', '0630'),
(37, '064500000', 'NEGROS OCCIDENTAL', '06', '0645'),
(38, '067900000', 'GUIMARAS', '06', '0679'),
(39, '071200000', 'BOHOL', '07', '0712'),
(40, '072200000', 'CEBU', '07', '0722'),
(41, '074600000', 'NEGROS ORIENTAL', '07', '0746'),
(42, '076100000', 'SIQUIJOR', '07', '0761'),
(43, '082600000', 'EASTERN SAMAR', '08', '0826'),
(44, '083700000', 'LEYTE', '08', '0837'),
(45, '084800000', 'NORTHERN SAMAR', '08', '0848'),
(46, '086000000', 'SAMAR (WESTERN SAMAR)', '08', '0860'),
(47, '086400000', 'SOUTHERN LEYTE', '08', '0864'),
(48, '087800000', 'BILIRAN', '08', '0878'),
(49, '097200000', 'ZAMBOANGA DEL NORTE', '09', '0972'),
(50, '097300000', 'ZAMBOANGA DEL SUR', '09', '0973'),
(51, '098300000', 'ZAMBOANGA SIBUGAY', '09', '0983'),
(52, '099700000', 'CITY OF ISABELA', '09', '0997'),
(53, '101300000', 'BUKIDNON', '10', '1013'),
(54, '101800000', 'CAMIGUIN', '10', '1018'),
(55, '103500000', 'LANAO DEL NORTE', '10', '1035'),
(56, '104200000', 'MISAMIS OCCIDENTAL', '10', '1042'),
(57, '104300000', 'MISAMIS ORIENTAL', '10', '1043'),
(58, '112300000', 'DAVAO DEL NORTE', '11', '1123'),
(59, '112400000', 'DAVAO DEL SUR', '11', '1124'),
(60, '112500000', 'DAVAO ORIENTAL', '11', '1125'),
(61, '118200000', 'COMPOSTELA VALLEY', '11', '1182'),
(62, '118600000', 'DAVAO OCCIDENTAL', '11', '1186'),
(63, '124700000', 'COTABATO (NORTH COTABATO)', '12', '1247'),
(64, '126300000', 'SOUTH COTABATO', '12', '1263'),
(65, '126500000', 'SULTAN KUDARAT', '12', '1265'),
(66, '128000000', 'SARANGANI', '12', '1280'),
(67, '129800000', 'COTABATO CITY', '12', '1298'),
(68, '133900000', 'NCR, CITY OF MANILA, FIRST DISTRICT', '13', '1339'),
(69, '133900000', 'CITY OF MANILA', '13', '1339'),
(70, '137400000', 'NCR, SECOND DISTRICT', '13', '1374'),
(71, '137500000', 'NCR, THIRD DISTRICT', '13', '1375'),
(72, '137600000', 'NCR, FOURTH DISTRICT', '13', '1376'),
(73, '140100000', 'ABRA', '14', '1401'),
(74, '141100000', 'BENGUET', '14', '1411'),
(75, '142700000', 'IFUGAO', '14', '1427'),
(76, '143200000', 'KALINGA', '14', '1432'),
(77, '144400000', 'MOUNTAIN PROVINCE', '14', '1444'),
(78, '148100000', 'APAYAO', '14', '1481'),
(79, '150700000', 'BASILAN', '15', '1507'),
(80, '153600000', 'LANAO DEL SUR', '15', '1536'),
(81, '153800000', 'MAGUINDANAO', '15', '1538'),
(82, '156600000', 'SULU', '15', '1566'),
(83, '157000000', 'TAWI-TAWI', '15', '1570'),
(84, '160200000', 'AGUSAN DEL NORTE', '16', '1602'),
(85, '160300000', 'AGUSAN DEL SUR', '16', '1603'),
(86, '166700000', 'SURIGAO DEL NORTE', '16', '1667'),
(87, '166800000', 'SURIGAO DEL SUR', '16', '1668'),
(88, '168500000', 'DINAGAT ISLANDS', '16', '1685');

-- --------------------------------------------------------

--
-- Table structure for table `request_count`
--

CREATE TABLE `request_count` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'Super Admin', '2024-08-09 21:38:47', '2024-08-09 21:38:47'),
(2, 'Super Staff', 'Super Staff', '2024-08-09 21:38:47', '2024-08-09 21:38:47'),
(3, 'Store Admin', 'Store Admin', '2024-08-09 21:38:47', '2024-08-09 21:38:47'),
(4, 'Store Staff', 'Store Staff', '2024-08-09 21:38:47', '2024-08-09 21:38:47'),
(5, 'Delivery Admin', 'Delivery Admin', '2024-08-09 21:38:47', '2024-08-09 21:38:47'),
(6, 'Delivery Rider', 'Delivery Rider', '2024-08-09 21:38:47', '2024-08-09 21:38:47'),
(7, 'Customer', 'Customer', '2024-08-09 21:38:47', '2024-08-09 21:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(6, 5, 3, NULL, NULL),
(9, 8, 2, NULL, NULL),
(10, 9, 3, NULL, NULL),
(11, 10, 1, NULL, NULL),
(17, 17, 4, NULL, NULL),
(18, 26, 3, '2024-10-21 06:09:26', '2024-10-21 06:09:26'),
(19, 27, 7, '2024-10-21 06:12:32', '2024-10-21 06:12:32'),
(21, 28, 1, '2026-03-11 10:47:11', '2026-03-17 10:47:16'),
(26, 11, 1, '2026-03-31 13:30:41', '2026-03-31 13:30:41'),
(27, 19, 1, '2026-03-31 13:30:49', '2026-03-31 13:30:49'),
(30, 28, 7, '2026-04-19 03:03:45', '2026-04-19 03:03:45'),
(31, 28, 3, '2026-04-19 03:05:38', '2026-04-19 03:05:38'),
(52, 36, 4, NULL, NULL),
(53, 36, 7, '2026-05-09 16:23:40', '2026-05-09 16:23:40'),
(54, 36, 7, '2026-05-09 23:26:10', '2026-05-09 23:26:10'),
(55, 36, 7, '2026-05-10 19:41:39', '2026-05-10 19:41:39'),
(56, 37, 4, NULL, NULL),
(57, 38, 4, NULL, NULL),
(58, 38, 7, '2026-05-14 00:53:29', '2026-05-14 00:53:29'),
(59, 39, 4, NULL, NULL),
(60, 39, 7, '2026-05-14 00:55:47', '2026-05-14 00:55:47'),
(61, 40, 4, NULL, NULL),
(62, 40, 7, '2026-05-14 00:59:39', '2026-05-14 00:59:39'),
(63, 41, 4, NULL, NULL),
(64, 42, 4, NULL, NULL),
(65, 43, 4, NULL, NULL),
(66, 44, 4, NULL, NULL),
(67, 45, 4, NULL, NULL),
(68, 46, 4, NULL, NULL),
(69, 47, 4, NULL, NULL),
(70, 48, 4, NULL, NULL),
(71, 66, 1, NULL, NULL),
(72, 66, 7, NULL, NULL),
(74, 68, 3, '2026-05-21 07:26:17', '2026-05-21 07:26:17'),
(75, 66, 4, '2026-06-07 12:19:51', '2026-06-07 12:19:51'),
(84, 68, 7, '2026-06-14 08:46:00', '2026-06-14 08:46:00'),
(85, 66, 3, '2026-06-14 08:49:15', '2026-06-14 08:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_calls`
--

CREATE TABLE `scheduled_calls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `security_question_id` int(11) NOT NULL,
  `security_answer` text NOT NULL,
  `scheduled_call_status_id` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_call_status`
--

CREATE TABLE `scheduled_call_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scheduled_call_status`
--

INSERT INTO `scheduled_call_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'On scheduled call.', NULL, NULL),
(2, 'On progress...', NULL, NULL),
(3, 'Need a follow-up', NULL, NULL),
(4, 'Unresolved', NULL, NULL),
(5, 'Resolved', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `security_questions`
--

CREATE TABLE `security_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `security_questions`
--

INSERT INTO `security_questions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'In what city were you born?', NULL, NULL),
(2, 'What is the name of your favorite pet?', NULL, NULL),
(3, 'What is your mothers maiden name?', NULL, NULL),
(4, 'What high school did you attend?', NULL, NULL),
(5, 'What was the name of your elementary school?', NULL, NULL),
(6, 'What was the make of your first car?', NULL, NULL),
(7, 'What was your favorite food as a child?', NULL, NULL),
(8, 'Where did you meet your spouse?', NULL, NULL),
(9, 'What year was your father (or mother) born?', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `selling_prices`
--

CREATE TABLE `selling_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL,
  `percentage` decimal(8,2) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `selling_prices`
--

INSERT INTO `selling_prices` (`id`, `store_id`, `percentage`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 1, 0.05, 1, '2024-08-09 21:42:14', '2024-08-09 21:42:14'),
(2, 2, 0.05, 1, '2024-08-09 21:42:14', '2024-08-09 21:42:14'),
(3, 3, 0.05, 1, '2024-08-09 21:42:14', '2024-08-09 21:42:14'),
(4, 4, 0.05, 1, '2024-08-09 21:42:14', '2024-08-09 21:42:14'),
(5, 5, 0.05, 1, '2024-08-09 21:42:14', '2024-08-09 21:42:14'),
(6, 6, 0.05, 1, '2024-08-09 21:42:14', '2024-08-09 21:42:14'),
(7, 7, 0.05, 1, '2024-08-09 21:42:14', '2024-08-09 21:42:14'),
(8, 8, 0.05, 1, '2024-08-09 21:42:14', '2024-08-09 21:42:14'),
(9, 9, 0.05, 1, '2024-08-09 21:42:15', '2024-08-09 21:42:15'),
(10, 10, 0.05, 1, '2024-08-09 21:42:15', '2024-08-09 21:42:15'),
(11, 11, 0.05, 1, '2024-08-09 21:42:15', '2024-08-09 21:42:15'),
(12, 12, 0.05, 1, '2024-08-09 21:42:15', '2024-08-09 21:42:15'),
(13, 13, 0.05, 1, '2024-08-09 21:42:15', '2024-08-09 21:42:15'),
(14, 14, 0.05, 1, '2024-08-09 21:42:15', '2024-08-09 21:42:15'),
(15, 15, 0.05, 1, '2024-08-09 21:42:15', '2024-08-09 21:42:15'),
(16, 16, 0.05, 1, '2024-08-09 21:42:15', '2024-08-09 21:42:15'),
(17, 17, 0.05, 1, '2024-08-09 21:42:15', '2024-08-09 21:42:15'),
(18, 18, 0.05, 1, '2024-08-09 21:42:15', '2024-08-09 21:42:15'),
(19, 19, 0.05, 1, '2024-08-09 21:42:15', '2024-08-09 21:42:15'),
(20, 20, 0.05, 1, '2024-08-09 21:42:15', '2024-08-09 21:42:15'),
(21, 21, 0.05, 1, '2024-08-09 21:42:15', '2024-08-09 21:42:15'),
(22, 22, 0.05, 1, '2024-08-09 21:42:15', '2024-08-09 21:42:15'),
(23, 23, 0.05, 1, '2024-08-09 21:42:15', '2024-08-09 21:42:15'),
(24, 24, 0.05, 1, '2024-08-09 21:42:15', '2024-08-09 21:42:15'),
(25, 25, 0.05, 1, '2024-08-09 21:42:15', '2024-08-09 21:42:15'),
(26, 26, 0.05, 1, '2024-08-09 21:42:16', '2024-08-09 21:42:16'),
(27, 27, 0.05, 1, '2024-08-09 21:42:16', '2024-08-09 21:42:16'),
(28, 28, 0.05, 1, '2024-08-09 21:42:16', '2024-08-09 21:42:16'),
(29, 29, 0.05, 1, '2024-08-09 21:42:16', '2024-08-09 21:42:16'),
(30, 30, 0.05, 1, '2024-08-09 21:42:16', '2024-08-09 21:42:16'),
(31, 31, 0.05, 1, '2024-08-09 21:42:16', '2024-08-09 21:42:16'),
(32, 32, 0.05, 1, '2024-08-09 21:42:16', '2024-08-09 21:42:16'),
(33, 33, 0.05, 1, '2024-08-09 21:42:16', '2024-08-09 21:42:16'),
(34, 34, 0.05, 1, '2024-08-09 21:42:16', '2024-08-09 21:42:16'),
(35, 35, 0.05, 1, '2024-08-09 21:42:16', '2024-08-09 21:42:16'),
(36, 36, 0.05, 1, '2024-08-09 21:42:16', '2024-08-09 21:42:16'),
(37, 37, 0.05, 1, '2024-08-09 21:42:16', '2024-08-09 21:42:16'),
(38, 38, 0.05, 1, '2024-08-09 21:42:16', '2024-08-09 21:42:16'),
(39, 39, 0.05, 1, '2024-08-09 21:42:16', '2024-08-09 21:42:16'),
(40, 40, 0.05, 1, '2024-08-09 21:42:16', '2024-08-09 21:42:16'),
(41, 41, 0.05, 1, '2024-08-09 21:42:16', '2024-08-09 21:42:16'),
(42, 42, 0.05, 1, '2024-08-09 21:42:16', '2024-08-09 21:42:16'),
(43, 43, 0.05, 1, '2024-08-09 21:42:17', '2024-08-09 21:42:17'),
(44, 44, 0.05, 1, '2024-08-09 21:42:17', '2024-08-09 21:42:17'),
(45, 45, 0.05, 1, '2024-08-09 21:42:17', '2024-08-09 21:42:17'),
(46, 46, 0.05, 1, '2024-08-09 21:42:17', '2024-08-09 21:42:17'),
(47, 47, 0.05, 1, '2024-08-09 21:42:17', '2024-08-09 21:42:17'),
(48, 48, 0.05, 1, '2024-08-09 21:42:17', '2024-08-09 21:42:17'),
(49, 49, 0.05, 1, '2024-08-09 21:42:17', '2024-08-09 21:42:17'),
(50, 50, 0.05, 1, '2024-08-09 21:42:17', '2024-08-09 21:42:17'),
(51, 51, 0.05, 1, '2024-08-09 21:42:17', '2024-08-09 21:42:17'),
(52, 52, 0.05, 1, '2024-08-09 21:42:17', '2024-08-09 21:42:17'),
(53, 53, 0.05, 1, '2024-08-09 21:42:17', '2024-08-09 21:42:17'),
(54, 54, 0.05, 1, '2024-08-09 21:42:17', '2024-08-09 21:42:17'),
(55, 55, 0.05, 1, '2024-08-09 21:42:17', '2024-08-09 21:42:17'),
(56, 56, 0.05, 1, '2024-08-09 21:42:17', '2024-08-09 21:42:17'),
(57, 57, 0.05, 1, '2024-08-09 21:42:17', '2024-08-09 21:42:17'),
(58, 58, 0.05, 1, '2024-08-09 21:42:17', '2024-08-09 21:42:17'),
(59, 59, 0.05, 1, '2024-08-09 21:42:17', '2024-08-09 21:42:17'),
(60, 60, 0.05, 1, '2024-08-09 21:42:18', '2024-08-09 21:42:18'),
(61, 61, 0.05, 1, '2024-08-09 21:42:18', '2024-08-09 21:42:18'),
(62, 62, 0.05, 1, '2024-08-09 21:42:18', '2024-08-09 21:42:18'),
(63, 63, 0.05, 1, '2024-08-09 21:42:18', '2024-08-09 21:42:18'),
(64, 64, 0.05, 1, '2024-08-09 21:42:18', '2024-08-09 21:42:18'),
(65, 65, 0.05, 1, '2024-08-09 21:42:18', '2024-08-09 21:42:18'),
(66, 66, 0.05, 1, '2024-08-09 21:42:18', '2024-08-09 21:42:18'),
(67, 67, 0.05, 1, '2024-08-09 21:42:18', '2024-08-09 21:42:18'),
(68, 68, 0.05, 1, '2024-08-09 21:42:18', '2024-08-09 21:42:18'),
(69, 69, 0.05, 1, '2024-08-09 21:42:18', '2024-08-09 21:42:18'),
(70, 70, 0.05, 1, '2024-08-09 21:42:18', '2024-08-09 21:42:18'),
(71, 71, 0.05, 1, '2024-08-09 21:42:18', '2024-08-09 21:42:18'),
(72, 72, 0.05, 1, '2024-08-09 21:42:18', '2024-08-09 21:42:18'),
(73, 73, 0.05, 1, '2024-08-09 21:42:18', '2024-08-09 21:42:18'),
(74, 74, 0.05, 1, '2024-08-09 21:42:18', '2024-08-09 21:42:18'),
(75, 75, 0.05, 1, '2024-08-09 21:42:18', '2024-08-09 21:42:18'),
(76, 76, 0.05, 1, '2024-08-09 21:42:18', '2024-08-09 21:42:18'),
(77, 77, 0.05, 1, '2024-08-09 21:42:19', '2024-08-09 21:42:19'),
(78, 78, 0.05, 1, '2024-08-09 21:42:19', '2024-08-09 21:42:19'),
(79, 79, 0.05, 1, '2024-08-09 21:42:19', '2024-08-09 21:42:19'),
(80, 80, 0.05, 1, '2024-08-09 21:42:19', '2024-08-09 21:42:19'),
(81, 81, 0.05, 1, '2024-08-09 21:42:19', '2024-08-09 21:42:19'),
(82, 82, 0.05, 1, '2024-08-09 21:42:19', '2024-08-09 21:42:19'),
(83, 83, 0.05, 1, '2024-08-09 21:42:19', '2024-08-09 21:42:19'),
(84, 84, 0.05, 1, '2024-08-09 21:42:19', '2024-08-09 21:42:19'),
(85, 85, 0.05, 1, '2024-08-09 21:42:19', '2024-08-09 21:42:19'),
(86, 86, 0.05, 1, '2024-08-09 21:42:19', '2024-08-09 21:42:19'),
(87, 87, 0.05, 1, '2024-08-09 21:42:19', '2024-08-09 21:42:19'),
(88, 88, 0.05, 1, '2024-08-09 21:42:19', '2024-08-09 21:42:19'),
(89, 89, 0.05, 1, '2024-08-09 21:42:19', '2024-08-09 21:42:19'),
(90, 90, 0.05, 1, '2024-08-09 21:42:19', '2024-08-09 21:42:19'),
(91, 91, 0.05, 1, '2024-08-09 21:42:19', '2024-08-09 21:42:19'),
(92, 92, 0.05, 1, '2024-08-09 21:42:19', '2024-08-09 21:42:19'),
(93, 93, 0.05, 1, '2024-08-09 21:42:19', '2024-08-09 21:42:19'),
(94, 94, 0.05, 1, '2024-08-09 21:42:20', '2024-08-09 21:42:20'),
(95, 95, 0.05, 1, '2024-08-09 21:42:20', '2024-08-09 21:42:20'),
(96, 96, 0.05, 1, '2024-08-09 21:42:20', '2024-08-09 21:42:20'),
(97, 97, 0.05, 1, '2024-08-09 21:42:20', '2024-08-09 21:42:20'),
(98, 98, 0.05, 1, '2024-08-09 21:42:20', '2024-08-09 21:42:20'),
(99, 99, 0.05, 1, '2024-08-09 21:42:20', '2024-08-09 21:42:20'),
(100, 100, 0.05, 1, '2024-08-09 21:42:20', '2024-08-09 21:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `sidebar_menus`
--

CREATE TABLE `sidebar_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sidebar_menus`
--

INSERT INTO `sidebar_menus` (`id`, `title`, `icon`, `path`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'fa-brands fa-facebook', '/Hic.', '2024-08-09 21:42:03', '2024-08-09 21:42:03'),
(2, '0', 'fa-solid fa-mobile-screen', '/Rem veniam.', '2024-08-09 21:42:03', '2024-08-09 21:42:03'),
(3, '1', 'fa-solid fa-envelope', '/Dolore.', '2024-08-09 21:42:03', '2024-08-09 21:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'S', 'Ut totam aut quo quia.', '2024-08-09 21:39:00', '2024-08-09 21:39:00'),
(2, 'M', 'Quas quia necessitatibus aliquid.', '2024-08-09 21:39:00', '2024-08-09 21:39:00'),
(3, 'L', 'In mollitia voluptatem fuga voluptatibus molestiae accusantium.', '2024-08-09 21:39:00', '2024-08-09 21:39:00'),
(4, 'XL', 'Sunt placeat a laboriosam officiis.', '2024-08-09 21:39:00', '2024-08-09 21:39:00'),
(5, 'XXL', 'Nobis magnam eligendi vel quos ducimus eum.', '2024-08-09 21:39:00', '2024-08-09 21:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `static_menus`
--

CREATE TABLE `static_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_menus`
--

INSERT INTO `static_menus` (`id`, `parent_id`, `icon`, `name`, `path`, `created_at`, `updated_at`) VALUES
(1, 0, 'people', 'About Us', '/about-us', '2024-08-09 21:42:04', '2024-08-09 21:42:04'),
(2, 0, 'movie', 'Services', '/services', '2024-08-09 21:42:04', '2024-08-09 21:42:04'),
(3, 0, 'fa-solid fa-phone-volume', 'Contact Us', '/contact-us', '2024-08-09 21:42:04', '2024-08-09 21:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Preparing orders', NULL, NULL),
(2, 'Ready for pick-up', NULL, NULL),
(3, 'Out for delivery', NULL, NULL),
(4, 'Customer Received', NULL, NULL),
(5, 'Completed', NULL, NULL),
(6, 'Cancelled', NULL, NULL),
(7, 'Return Refund', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_advertisements`
--

CREATE TABLE `store_advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `franchisee_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `start_at` date NOT NULL,
  `end_at` date NOT NULL,
  `city_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_menus`
--

CREATE TABLE `store_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_menus`
--

INSERT INTO `store_menus` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Items', 'shopping_bag', '2024-08-09 21:42:04', '2024-08-09 21:42:04'),
(2, 'Transactions', 'fas fa-list-ul', '2024-08-09 21:42:04', '2024-08-09 21:42:04'),
(3, 'Deliveries', 'fa-solid fa-truck', '2024-08-09 21:42:04', '2024-08-09 21:42:04'),
(6, 'Store', 'fa-solid fa-store', '2026-05-08 03:19:25', '2026-05-08 03:19:25');

-- --------------------------------------------------------

--
-- Table structure for table `store_ratings`
--

CREATE TABLE `store_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `rate_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_users`
--

CREATE TABLE `store_users` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `verification_code` varchar(100) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_users`
--

INSERT INTO `store_users` (`id`, `store_id`, `user_id`, `email`, `verification_code`, `is_verified`, `deleted_at`, `created_at`, `updated_at`) VALUES
(19, 1, 66, 'momshieroce@gmail.com', '6a26248c80319', 1, NULL, '2026-06-08 14:10:20', '2026-06-09 13:49:11'),
(20, 53, NULL, 'momshieroce@gmail.com', NULL, 1, NULL, '2026-06-29 00:40:28', '2026-06-29 00:43:30');

-- --------------------------------------------------------

--
-- Table structure for table `store_user_menus`
--

CREATE TABLE `store_user_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_user_id` int(11) DEFAULT NULL,
  `store_menu_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_user_menus`
--

INSERT INTO `store_user_menus` (`id`, `store_user_id`, `store_menu_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(23, 19, 1, '2026-06-23 01:27:32', '2026-06-23 01:27:32', NULL),
(24, 19, 2, '2026-06-23 01:27:41', '2026-06-23 01:27:41', NULL),
(25, 19, 3, '2026-06-23 01:33:25', '2026-06-23 01:33:25', NULL),
(27, 20, 6, '2026-06-29 01:22:48', '2026-06-29 01:22:48', NULL),
(28, 20, 1, '2026-06-29 01:27:14', '2026-06-29 01:27:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `status_id` bigint(20) NOT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `receive_method_id` bigint(20) NOT NULL,
  `receivers_mobile` varchar(11) NOT NULL,
  `lat` tinytext DEFAULT NULL,
  `lng` tinytext DEFAULT NULL,
  `contact_number` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `delivery_charge` double(8,2) NOT NULL,
  `total` double(10,2) NOT NULL,
  `grand_total` double(10,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_message`
--

CREATE TABLE `transaction_message` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `transaction_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'pc/pcs', '2024-08-09 21:38:52', '2024-08-09 21:38:52'),
(2, 'kg', '2024-08-09 21:38:52', '2024-08-09 21:38:52'),
(3, 'grams', '2024-08-09 21:38:52', '2024-08-09 21:38:52'),
(4, 'L', '2024-08-09 21:38:52', '2024-08-09 21:38:52'),
(5, 'ml', '2024-08-09 21:38:53', '2024-08-09 21:38:53'),
(6, 'lb', '2024-08-09 21:38:53', '2024-08-09 21:38:53'),
(7, 'oz', '2024-08-09 21:38:53', '2024-08-09 21:38:53'),
(8, 'gal', '2024-08-09 21:38:53', '2024-08-09 21:38:53'),
(9, 'box', '2024-08-09 21:38:53', '2024-08-09 21:38:53'),
(10, 'strip', '2024-08-09 21:38:53', '2024-08-09 21:38:53'),
(11, 'roll', '2024-08-09 21:38:53', '2024-08-09 21:38:53'),
(12, 'meter', '2024-08-09 21:38:53', '2024-08-09 21:38:53'),
(13, 'Kilo', '2024-08-09 21:38:53', '2024-08-09 21:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `upscale_prices`
--

CREATE TABLE `upscale_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `percentage` double(8,2) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upscale_prices`
--

INSERT INTO `upscale_prices` (`id`, `name`, `percentage`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Basic Upscale Price', 0.12, 1, '2024-08-09 21:42:04', '2024-08-09 21:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `facebook_id` varchar(100) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `passcode` int(11) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `mobile_attempt_count` int(11) NOT NULL DEFAULT 0,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` datetime(6) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `facebook_id`, `firstname`, `lastname`, `name`, `avatar`, `mobile`, `passcode`, `activation_code`, `mobile_attempt_count`, `mobile_verified_at`, `email_verified_at`, `status`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(66, 'momshieroce@gmail.com', NULL, 'Bobby', 'Gerez', 'Rocelyn Gerez', NULL, '9270079309', NULL, '6hvCq8XjwZf2W8VkMQrCfaslBlqq3ATHbiKkECjUFPNLVjyn0Trvk6wDUrG46B8K', 0, NULL, NULL, 1, '$2y$10$PatDeoB3q2PBK7NNvlPWwe.iz.pIShWnRkVa5UBKuj2EYUl4MW4Ry', NULL, NULL, '2026-05-17 17:54:55', '2026-06-30 19:16:00'),
(68, 'bobby.gerez@yahoo.com', NULL, 'Bobby', 'Gerez', 'Bobby Gerez', NULL, NULL, NULL, '6hvCq8XjwZf2W8VkMQrCfaslBlqq3ATHbiKkECjUFPNLVjyn0Trvk6wDUrG46B8K', 0, NULL, NULL, 1, '$2y$10$PatDeoB3q2PBK7NNvlPWwe.iz.pIShWnRkVa5UBKuj2EYUl4MW4Ry', NULL, NULL, '2026-05-19 23:46:01', '2026-05-19 23:46:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_rights`
--
ALTER TABLE `access_rights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cloud_tokens`
--
ALTER TABLE `cloud_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_menus`
--
ALTER TABLE `dashboard_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_franchisee`
--
ALTER TABLE `delivery_franchisee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `franchisees`
--
ALTER TABLE `franchisees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interconnected_cities`
--
ALTER TABLE `interconnected_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_prices`
--
ALTER TABLE `item_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_role`
--
ALTER TABLE `menu_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_role_access_right`
--
ALTER TABLE `menu_role_access_right`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_otp`
--
ALTER TABLE `mobile_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `normal_balance`
--
ALTER TABLE `normal_balance`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `online_prices`
--
ALTER TABLE `online_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pickup_time`
--
ALTER TABLE `pickup_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receive_methods`
--
ALTER TABLE `receive_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refcitymun`
--
ALTER TABLE `refcitymun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refprovince`
--
ALTER TABLE `refprovince`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_count`
--
ALTER TABLE `request_count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scheduled_calls`
--
ALTER TABLE `scheduled_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scheduled_call_status`
--
ALTER TABLE `scheduled_call_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `security_questions`
--
ALTER TABLE `security_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selling_prices`
--
ALTER TABLE `selling_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidebar_menus`
--
ALTER TABLE `sidebar_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_menus`
--
ALTER TABLE `static_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_advertisements`
--
ALTER TABLE `store_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_menus`
--
ALTER TABLE `store_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_ratings`
--
ALTER TABLE `store_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_users`
--
ALTER TABLE `store_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_user_menus`
--
ALTER TABLE `store_user_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_message`
--
ALTER TABLE `transaction_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upscale_prices`
--
ALTER TABLE `upscale_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_rights`
--
ALTER TABLE `access_rights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1638;

--
-- AUTO_INCREMENT for table `cloud_tokens`
--
ALTER TABLE `cloud_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dashboard_menus`
--
ALTER TABLE `dashboard_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_franchisee`
--
ALTER TABLE `delivery_franchisee`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `franchisees`
--
ALTER TABLE `franchisees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1125;

--
-- AUTO_INCREMENT for table `interconnected_cities`
--
ALTER TABLE `interconnected_cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- AUTO_INCREMENT for table `item_prices`
--
ALTER TABLE `item_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1072;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `menu_role`
--
ALTER TABLE `menu_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `menu_role_access_right`
--
ALTER TABLE `menu_role_access_right`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `mobile_otp`
--
ALTER TABLE `mobile_otp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `normal_balance`
--
ALTER TABLE `normal_balance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `online_prices`
--
ALTER TABLE `online_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickup_time`
--
ALTER TABLE `pickup_time`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receive_methods`
--
ALTER TABLE `receive_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `refcitymun`
--
ALTER TABLE `refcitymun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1648;

--
-- AUTO_INCREMENT for table `refprovince`
--
ALTER TABLE `refprovince`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `request_count`
--
ALTER TABLE `request_count`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `scheduled_calls`
--
ALTER TABLE `scheduled_calls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scheduled_call_status`
--
ALTER TABLE `scheduled_call_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `security_questions`
--
ALTER TABLE `security_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `selling_prices`
--
ALTER TABLE `selling_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `sidebar_menus`
--
ALTER TABLE `sidebar_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `static_menus`
--
ALTER TABLE `static_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `store_advertisements`
--
ALTER TABLE `store_advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_menus`
--
ALTER TABLE `store_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `store_ratings`
--
ALTER TABLE `store_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_users`
--
ALTER TABLE `store_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `store_user_menus`
--
ALTER TABLE `store_user_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `transaction_message`
--
ALTER TABLE `transaction_message`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `upscale_prices`
--
ALTER TABLE `upscale_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
