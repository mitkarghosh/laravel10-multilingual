-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 01:43 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8_laravel_made_in_the_six`
--

-- --------------------------------------------------------

--
-- Table structure for table `mits_bookings`
--

CREATE TABLE `mits_bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `unique_id` varchar(255) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `advertiser_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL COMMENT 'Event/Advertiser owner id',
  `booked_by` int(11) DEFAULT NULL COMMENT 'Id from users table',
  `type` enum('EV','AD') NOT NULL DEFAULT 'EV' COMMENT 'EV => Event, AD => Advertiser',
  `booking_amount` double(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Event / Advertiser booking amount',
  `number_of_tickets` int(11) NOT NULL DEFAULT 1,
  `total_booking_amount` double(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Total booking amount',
  `booking_details` longtext DEFAULT NULL COMMENT 'Details in JSON format',
  `location` varchar(255) DEFAULT NULL,
  `booking_date_time` timestamp NULL DEFAULT NULL,
  `booking_date_timestamp` int(11) DEFAULT NULL,
  `booking_end_date_time` datetime DEFAULT NULL,
  `booking_end_date_timestamp` int(11) DEFAULT NULL,
  `payment_method` enum('0','1','2','3') NOT NULL DEFAULT '0' COMMENT '0 => Payment pending, 1 => COD, 2 => Stripe, 3 => Card',
  `payment_status` enum('C','P','R','PR') NOT NULL DEFAULT 'P' COMMENT 'C=>Completed, P=>Pending, R=>Rejected, PR=>Payment Refunded',
  `payment_response_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_bookings`
--

INSERT INTO `mits_bookings` (`id`, `unique_id`, `event_id`, `advertiser_id`, `owner_id`, `booked_by`, `type`, `booking_amount`, `number_of_tickets`, `total_booking_amount`, `booking_details`, `location`, `booking_date_time`, `booking_date_timestamp`, `booking_end_date_time`, `booking_end_date_timestamp`, `payment_method`, `payment_status`, `payment_response_id`, `created_at`, `updated_at`) VALUES
(4, 'MITS035624863A', NULL, 22, NULL, 21, 'AD', 50.00, 1, 50.00, '{\"id\":22,\"title\":null,\"location\":\"Kolaghat\",\"booking_amount\":50,\"short_description\":null,\"description\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"category_id\":3,\"category_name\":\"Visual Arts\",\"advertiser_id\":22,\"advertiser_name\":\"David Walker\",\"advertiser_email\":\"davidwalker@yopmail.com\",\"advertiser_phone\":\"9876543210\"}', 'Kolaghat', '2023-02-27 15:30:00', 1677511800, NULL, NULL, '3', 'P', NULL, '2023-02-27 15:56:24', '2023-02-27 15:56:24'),
(6, 'MITS0704067294', NULL, 34, NULL, 22, 'AD', 350.00, 1, 350.00, '{\"id\":34,\"title\":null,\"location\":\"Kolkata\",\"booking_amount\":350,\"short_description\":null,\"description\":\"test test test Tes\",\"category_id\":5,\"category_name\":\"Food & Drinks\",\"advertiser_id\":34,\"advertiser_name\":\"adv test\",\"advertiser_email\":\"sukanta.info2@gmail.com\",\"advertiser_phone\":\"9087654421\"}', 'Kolkata', '2023-02-28 16:00:00', 1677600000, NULL, NULL, '3', 'P', NULL, '2023-02-27 19:04:06', '2023-02-27 19:04:06'),
(7, 'MITS070537041B', NULL, 34, NULL, 21, 'AD', 350.00, 1, 350.00, '{\"id\":34,\"title\":null,\"location\":\"Kolkata\",\"booking_amount\":350,\"short_description\":null,\"description\":\"test test test Tes\",\"category_id\":5,\"category_name\":\"Food & Drinks\",\"advertiser_id\":34,\"advertiser_name\":\"adv test\",\"advertiser_email\":\"sukanta.info2@gmail.com\",\"advertiser_phone\":\"9087654421\"}', 'Kolkata', '2023-02-28 18:25:00', 1677608700, NULL, NULL, '3', 'P', NULL, '2023-02-27 19:05:37', '2023-02-27 19:05:37'),
(8, 'MITS071407A0CC', 30, NULL, NULL, 37, 'EV', 100.00, 3, 300.00, '{\"id\":30,\"title\":\"Water event\",\"location\":\"Gujrat\",\"booking_amount\":100,\"short_description\":\"Lorem ipsum\",\"description\":\"Lorem ipsum\",\"start_date\":\"2023-02-27 15:30:00\",\"start_date_timestamp\":1677511800,\"category_id\":5,\"category_name\":\"Food & Drinks\",\"advertiser_id\":22,\"advertiser_name\":\"David Walker\",\"advertiser_email\":\"davidwalker@yopmail.com\",\"advertiser_phone\":\"9876543210\"}', NULL, '2023-02-27 15:30:00', 1677511800, NULL, NULL, '3', 'P', NULL, '2023-02-27 19:14:07', '2023-02-27 19:14:07'),
(9, 'MITS071509765F', NULL, 32, NULL, 37, 'AD', 200.00, 1, 200.00, '{\"id\":32,\"title\":null,\"location\":\"Kolkata\",\"booking_amount\":200,\"short_description\":null,\"description\":\"per day\",\"category_id\":4,\"category_name\":\"Fashion\",\"advertiser_id\":32,\"advertiser_name\":\"adv 4\",\"advertiser_email\":\"adv1@mailinator.com\",\"advertiser_phone\":\"9087654321\"}', 'Kolkata', '2023-02-28 16:35:00', 1677602100, NULL, NULL, '3', 'P', NULL, '2023-02-27 19:15:09', '2023-02-27 19:15:09'),
(10, 'MITS055424C25A', NULL, 36, NULL, 22, 'AD', 20.00, 1, 20.00, '{\"id\":36,\"title\":null,\"location\":\"Kolkata\",\"booking_amount\":20,\"short_description\":null,\"description\":\"ggg\",\"category_id\":4,\"category_name\":\"Fashion\",\"advertiser_id\":36,\"advertiser_name\":\"tan\",\"advertiser_email\":\"tanmoy.8741@gmail.com\",\"advertiser_phone\":\"7003064898\"}', 'Kolkata', '2023-03-14 03:15:00', 1678763700, NULL, NULL, '3', 'P', NULL, '2023-03-14 17:54:24', '2023-03-14 17:54:24'),
(11, 'MITS070739588F', NULL, 39, NULL, 22, 'AD', 567.00, 1, 567.00, '{\"id\":39,\"title\":null,\"location\":\"kolkata\",\"booking_amount\":567,\"short_description\":null,\"description\":\"bbxb. nsnsns js. s\",\"category_id\":4,\"category_name\":\"Fashion\",\"advertiser_id\":39,\"advertiser_name\":\"Sukanta Sarkar\",\"advertiser_email\":\"sukanta.info2@gmail.comm\",\"advertiser_phone\":\"9087654321\"}', 'kolkata', '2023-03-21 03:20:00', 1679368800, NULL, NULL, '3', 'P', NULL, '2023-03-20 19:07:39', '2023-03-20 19:07:39'),
(12, 'MITS1057148DCB', 39, NULL, NULL, 21, 'EV', 23.00, 1, 23.00, '{\"id\":39,\"title\":\"tea\",\"location\":\"fg\",\"booking_amount\":23,\"short_description\":\"ff\",\"description\":\"ff\",\"start_date\":\"2023-04-16 05:00:00\",\"start_date_timestamp\":1681621200,\"category_id\":3,\"category_name\":\"Visual Arts\",\"advertiser_id\":22,\"advertiser_name\":\"David Walker\",\"advertiser_email\":\"davidwalker@yopmail.com\",\"advertiser_phone\":\"9876543210\"}', NULL, '2023-04-16 05:00:00', 1681621200, NULL, NULL, '3', 'P', NULL, '2023-04-25 22:57:14', '2023-04-25 22:57:14'),
(13, 'MITS0738070A65', 36, NULL, NULL, 21, 'EV', 12.00, 2, 24.00, '{\"id\":36,\"title\":\"test2\",\"location\":\"test location\",\"booking_amount\":12,\"short_description\":\"test location\",\"description\":\"test location\",\"start_date\":\"2023-04-16 05:00:00\",\"start_date_timestamp\":1681621200,\"category_id\":1,\"category_name\":\"Music\",\"advertiser_id\":22,\"advertiser_name\":\"David Walker\",\"advertiser_email\":\"davidwalker@yopmail.com\",\"advertiser_phone\":\"9876543210\"}', NULL, '2023-04-16 05:00:00', 1681621200, NULL, NULL, '3', 'P', NULL, '2023-05-14 07:38:08', '2023-05-14 07:38:08'),
(14, 'MITS0743177FC9', NULL, 40, NULL, 22, 'AD', 230.00, 1, 230.00, '{\"id\":40,\"title\":null,\"location\":\"kolkata\",\"booking_amount\":230,\"short_description\":null,\"description\":\"Good morning\",\"category_id\":4,\"category_name\":\"Fashion\",\"advertiser_id\":40,\"advertiser_name\":\"max well\",\"advertiser_email\":\"maxwell@gmail.com\",\"advertiser_phone\":\"9087654321\"}', 'kolkata', '2023-05-14 02:12:00', 1684030320, NULL, NULL, '3', 'P', NULL, '2023-05-14 07:43:17', '2023-05-14 07:43:17'),
(15, 'MITS081127AADE', 41, NULL, NULL, 22, 'EV', 20.00, 3, 60.00, '{\"id\":41,\"title\":\"test 14th may\",\"location\":\"kolkata\",\"booking_amount\":20,\"short_description\":\"Vxbd nsbsb jsns\",\"description\":\"Vxbd nsbsb jsns\",\"start_date\":\"2023-05-14 15:14:00\",\"start_date_timestamp\":1684077240,\"category_id\":3,\"category_name\":\"Visual Arts\",\"advertiser_id\":22,\"advertiser_name\":\"David Walker\",\"advertiser_email\":\"davidwalker@yopmail.com\",\"advertiser_phone\":\"9876543210\"}', NULL, '2023-05-14 15:14:00', 1684077240, NULL, NULL, '3', 'P', NULL, '2023-05-14 08:11:27', '2023-05-14 08:11:27'),
(16, 'MITS114453A484', 41, NULL, NULL, 34, 'EV', 20.00, 1, 20.00, '{\"id\":41,\"title\":\"test 14th may\",\"location\":\"kolkata\",\"booking_amount\":20,\"short_description\":\"Vxbd nsbsb jsns\",\"description\":\"Vxbd nsbsb jsns\",\"start_date\":\"2023-05-14 15:14:00\",\"start_date_timestamp\":1684077240,\"category_id\":3,\"category_name\":\"Visual Arts\",\"advertiser_id\":22,\"advertiser_name\":\"David Walker 1\",\"advertiser_email\":\"davidwalker@yopmail.com\",\"advertiser_phone\":\"9876543210\"}', NULL, '2023-05-14 15:14:00', 1684077240, NULL, NULL, '3', 'P', NULL, '2023-05-18 11:44:53', '2023-05-18 11:44:53'),
(17, 'MITS1213432155', 42, NULL, NULL, 22, 'EV', 200.00, 1, 200.00, '{\"id\":42,\"title\":\"Good work\",\"location\":\"kolkata\",\"booking_amount\":200,\"short_description\":\"Lorem Ipsum dummy text\",\"description\":\"Lorem Ipsum dummy text\",\"start_date\":\"2023-05-18 03:16:00\",\"start_date_timestamp\":1684379760,\"category_id\":3,\"category_name\":\"Visual Arts\",\"advertiser_id\":34,\"advertiser_name\":\"sukanta.info2\",\"advertiser_email\":\"sukanta.info2@gmail.com\",\"advertiser_phone\":\"9087654421\"}', NULL, '2023-05-18 03:16:00', 1684379760, NULL, NULL, '3', 'P', NULL, '2023-05-18 12:13:43', '2023-05-28 16:34:20'),
(18, 'MITS0801238986', NULL, 22, NULL, 34, 'AD', 50.00, 1, 50.00, '{\"id\":22,\"title\":null,\"location\":\"sec v\",\"booking_amount\":50,\"short_description\":null,\"description\":\"<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<p><strong>Lorem Ipsum<\\/strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"category_id\":3,\"category_name\":\"Visual Arts\",\"advertiser_id\":22,\"advertiser_name\":\"David Walker 1\",\"advertiser_email\":\"davidwalker@yopmail.com\",\"advertiser_phone\":\"9876543210\"}', 'sec v', '2023-05-21 10:49:00', 1684666140, NULL, NULL, '3', 'P', NULL, '2023-05-20 20:01:23', '2023-05-20 20:01:23'),
(22, 'MITS034158F366', 43, NULL, NULL, 22, 'EV', 200.00, 2, 400.00, '{\"id\":43,\"title\":\"Today\'s event\",\"location\":\"Kolkata\",\"booking_amount\":200,\"short_description\":\"Lorem Ipsum dummy text\",\"description\":\"Lorem Ipsum dummy text\",\"start_date\":\"2023-05-21 23:55:00\",\"start_date_timestamp\":1684713300,\"category_id\":5,\"category_name\":\"Food & Drinks\",\"advertiser_id\":34,\"advertiser_name\":\"sukanta.info2\",\"advertiser_email\":\"sukanta.info2@gmail.com\",\"advertiser_phone\":\"9087654421\"}', 'Kerala', '2023-05-21 18:25:00', 1684713300, '2023-05-31 23:55:00', 1685577300, '3', 'P', NULL, '2023-05-28 10:11:59', '2023-05-28 10:11:59'),
(23, 'MITS0413465D64', 43, NULL, NULL, 22, 'EV', 200.00, 2, 400.00, '{\"id\":43,\"title\":\"Today\'s event\",\"location\":\"Kolkata\",\"booking_amount\":200,\"short_description\":\"Lorem Ipsum dummy text\",\"description\":\"Lorem Ipsum dummy text\",\"start_date\":\"2023-05-21 23:55:00\",\"start_date_timestamp\":1684713300,\"category_id\":5,\"category_name\":\"Food & Drinks\",\"advertiser_id\":34,\"advertiser_name\":\"sukanta.info2\",\"advertiser_email\":\"sukanta.info2@gmail.com\",\"advertiser_phone\":\"9087654421\"}', 'Kerala', '2023-05-21 18:25:00', 1684713300, '2023-05-31 23:55:00', 1685577300, '3', 'P', NULL, '2023-05-28 10:43:46', '2023-05-28 10:43:46'),
(24, 'MITS11512103D7', 45, NULL, 22, 21, 'EV', 120.00, 5, 600.00, '{\"id\":45,\"title\":\"Event 06 02 2023\",\"location\":\"Kolkata\",\"booking_amount\":120,\"short_description\":\"Test short description\",\"description\":\"Test Description\",\"start_date\":\"2023-06-02 11:30:00\",\"start_date_timestamp\":1685705400,\"category_id\":3,\"category_name\":\"Visual Arts\",\"advertiser_id\":22,\"advertiser_name\":\"David Walker\",\"advertiser_email\":\"davidwalker@yopmail.com\",\"advertiser_phone\":\"9876543210\"}', 'Kerala', '2023-06-02 06:00:00', 1685705400, '2023-06-03 11:30:00', 1685791800, '0', 'P', NULL, '2023-06-02 06:21:21', '2023-06-02 11:54:18'),
(25, 'MITS120011562C', 45, NULL, 22, 21, 'EV', 120.00, 5, 600.00, '{\"id\":45,\"title\":\"Event 06 02 2023\",\"location\":\"Kolkata\",\"booking_amount\":120,\"short_description\":\"Test short description\",\"description\":\"Test Description\",\"start_date\":\"2023-06-02 11:30:00\",\"start_date_timestamp\":1685705400,\"category_id\":3,\"category_name\":\"Visual Arts\",\"advertiser_id\":22,\"advertiser_name\":\"David Walker\",\"advertiser_email\":\"davidwalker@yopmail.com\",\"advertiser_phone\":\"9876543210\"}', 'Kerala', '2023-06-02 06:00:00', 1685705400, '2023-06-03 11:30:00', 1685791800, '0', 'P', NULL, '2023-06-02 06:30:11', '2023-06-02 12:42:32'),
(26, 'MITS12424829A3', 45, NULL, 22, 21, 'EV', 120.00, 3, 360.00, '{\"id\":45,\"title\":\"Event 06 02 2023\",\"location\":\"Kolkata\",\"booking_amount\":120,\"short_description\":\"Test short description\",\"description\":\"Test Description\",\"start_date\":\"2023-06-02 11:30:00\",\"start_date_timestamp\":1685705400,\"end_date\":\"2023-06-03 11:30:00\",\"end_date_timestamp\":1685791800,\"category_id\":3,\"category_name\":\"Visual Arts\",\"advertiser_id\":22,\"advertiser_name\":\"David Walker\",\"advertiser_email\":\"davidwalker@yopmail.com\",\"advertiser_phone\":\"9876543210\"}', 'Kerala', '2023-06-02 06:00:00', 1685705400, '2023-06-03 11:30:00', 1685791800, '2', 'C', NULL, '2023-06-02 07:12:48', '2023-06-02 12:59:16'),
(27, 'MITS125855D064', 45, NULL, 22, 21, 'EV', 120.00, 5, 600.00, '{\"id\":45,\"title\":\"Event 06 02 2023\",\"location\":\"Kolkata\",\"booking_amount\":120,\"short_description\":\"Test short description\",\"description\":\"Test Description\",\"start_date\":\"2023-06-02 11:30:00\",\"start_date_timestamp\":1685705400,\"end_date\":\"2023-06-03 11:30:00\",\"end_date_timestamp\":1685791800,\"category_id\":3,\"category_name\":\"Visual Arts\",\"advertiser_id\":22,\"advertiser_name\":\"David Walker\",\"advertiser_email\":\"davidwalker@yopmail.com\",\"advertiser_phone\":\"9876543210\"}', 'Kerala', '2023-06-02 06:00:00', 1685705400, '2023-06-03 11:30:00', 1685791800, '2', 'C', 'pi_3NEXa4H2e89LEoDs1rG3Z499', '2023-06-02 07:28:55', '2023-06-02 07:29:50'),
(29, 'MITS1233545139', 46, NULL, 22, 21, 'EV', 100.00, 3, 300.00, '{\"id\":46,\"title\":\"Event 07 06 2023\",\"location\":\"Kolkata\",\"booking_amount\":100,\"short_description\":\"Test short description\",\"description\":\"Test Description\",\"start_date\":\"2023-06-07 11:30:00\",\"start_date_timestamp\":1686137400,\"end_date\":\"2023-06-08 11:30:00\",\"end_date_timestamp\":1686223800,\"category_id\":3,\"category_name\":\"Visual Arts\",\"advertiser_id\":22,\"advertiser_name\":\"David Walker\",\"advertiser_email\":\"davidwalker@yopmail.com\",\"advertiser_phone\":\"9876543210\"}', 'Kerala', '2023-06-07 06:00:00', 1686137400, '2023-06-08 11:30:00', 1686223800, '0', 'P', NULL, '2023-06-07 07:03:54', '2023-06-07 07:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `mits_booking_attenders`
--

CREATE TABLE `mits_booking_attenders` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_booking_attenders`
--

INSERT INTO `mits_booking_attenders` (`id`, `booking_id`, `name`) VALUES
(1, '1', 'gg'),
(2, '1', 'gg'),
(3, '2', 'Sukanta'),
(4, '2', 'Tanmoy'),
(5, '3', 'cc'),
(6, '5', 'sukanta'),
(7, '5', 'max'),
(8, '5', 'rahul'),
(9, '5', 'lisa'),
(10, '8', 'Sukanta Sarkar'),
(11, '8', 'Max well'),
(12, '8', 'Lisa mal'),
(13, '12', 'aa'),
(14, '13', 'max'),
(15, '13', 'min'),
(16, '15', 'tehsb'),
(17, '15', 'nndbd'),
(18, '15', 'kdkkd'),
(19, '16', 'tets'),
(20, '17', 'test'),
(21, '19', 'Amit Verma'),
(22, '19', 'Tilak Verma'),
(23, '20', 'Amit Verma'),
(24, '20', 'Tilak Verma'),
(25, '21', 'Amit Verma'),
(26, '21', 'Tilak Verma'),
(27, '22', 'Amit Verma'),
(28, '22', 'Tilak Verma'),
(29, '23', 'Amit Verma'),
(30, '23', 'Tilak Verma'),
(31, '24', 'David Verma'),
(32, '24', 'Dean Verma'),
(33, '25', 'David Verma'),
(34, '25', 'Dean Verma'),
(35, '26', 'David Verma'),
(36, '26', 'Dean Verma'),
(37, '27', 'David Verma'),
(38, '27', 'Dean Verma'),
(39, '28', 'David Verma'),
(40, '28', 'Dean Verma'),
(41, '45', 'David Verma'),
(42, '45', 'Dean Verma');

-- --------------------------------------------------------

--
-- Table structure for table `mits_categories`
--

CREATE TABLE `mits_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `short_title` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0=>Inactive, 1=>Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_categories`
--

INSERT INTO `mits_categories` (`id`, `title`, `slug`, `short_title`, `short_description`, `description`, `image`, `sort`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Music', 'music', NULL, NULL, NULL, 'category_1676810464.png', 0, '1', '2021-08-04 00:37:44', '2023-02-19 12:41:04', NULL),
(3, 'Visual Arts', 'visual-arts', NULL, NULL, NULL, 'category_1676810939.png', 1, '1', '2022-11-17 13:00:38', '2023-02-19 12:48:59', NULL),
(4, 'Fashion', 'fashion', NULL, NULL, NULL, 'category_1676810967.png', 2, '1', '2022-11-17 13:00:53', '2023-02-19 12:49:27', NULL),
(5, 'Food & Drinks', 'food-drinks', NULL, NULL, NULL, 'category_1676810986.png', 3, '1', '2022-11-17 13:01:07', '2023-02-19 12:49:46', NULL),
(7, 'testing', 'testing', NULL, NULL, NULL, NULL, 4, '0', '2023-08-16 01:36:02', '2023-08-16 01:39:48', NULL),
(8, 'Organizer', 'organizer', NULL, NULL, NULL, NULL, 5, '0', '2023-08-16 01:48:16', '2023-08-16 01:48:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mits_cms`
--

CREATE TABLE `mits_cms` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL COMMENT 'Cms page id',
  `page_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `short_title` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `description2` longtext DEFAULT NULL,
  `other_description` longtext DEFAULT NULL,
  `banner_title` text DEFAULT NULL,
  `banner_short_title` text DEFAULT NULL,
  `banner_short_description` text DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `other_image` varchar(255) DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0=>Inactive, 1=>Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_cms`
--

INSERT INTO `mits_cms` (`id`, `parent_id`, `page_name`, `title`, `slug`, `short_title`, `short_description`, `description`, `description2`, `other_description`, `banner_title`, `banner_short_title`, `banner_short_description`, `banner_image`, `featured_image`, `other_image`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Home', 'Home', 'home', NULL, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2021-08-02 05:52:27', '2022-11-28 05:02:52', NULL),
(2, NULL, 'Terms & Conditions', 'Terms & Conditions', 'terms-conditions', NULL, NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Made In The Box', 'Made In The Box', 'Made In The Box', '1', '2021-09-19 16:03:24', '2023-06-19 05:42:15', NULL),
(3, NULL, 'Privacy Policy', 'Privacy Policy', 'privacy-policy', NULL, NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Made In The Box', 'Made In The Box', 'Made In The Box', '1', '2022-11-17 12:23:01', '2023-06-19 05:42:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mits_comments`
--

CREATE TABLE `mits_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `commenter_id` int(11) DEFAULT NULL COMMENT 'Id from users table',
  `recipient_id` int(11) DEFAULT NULL COMMENT 'Id from users table',
  `comment` longtext DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0=>Inactive, 1=>Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_comments`
--

INSERT INTO `mits_comments` (`id`, `commenter_id`, `recipient_id`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 21, 22, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '1', '2023-02-03 08:05:16', '2023-02-03 10:30:25'),
(2, 21, 22, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '1', '2023-02-03 05:45:00', '2023-02-03 05:45:00'),
(3, 21, 22, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '1', '2023-02-03 06:04:33', '2023-02-03 06:04:33'),
(4, 21, 22, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '1', '2023-02-03 06:54:10', '2023-02-03 06:54:10'),
(5, 21, 22, 'Test Comment', '1', '2023-02-27 15:43:27', '2023-02-27 15:43:27'),
(6, 34, 34, 'test', '1', '2023-03-01 22:38:02', '2023-03-01 22:38:02'),
(7, 34, 34, 'test', '1', '2023-03-01 22:38:17', '2023-03-01 22:38:17'),
(8, 34, 34, 'test', '1', '2023-03-01 22:39:23', '2023-03-01 22:39:23'),
(9, 34, 34, 'test', '1', '2023-03-01 22:40:44', '2023-03-01 22:40:44'),
(10, 21, 36, 'xxf', '1', '2023-03-04 13:40:35', '2023-03-04 13:40:35'),
(11, 22, 38, 'hello', '1', '2023-03-20 19:04:03', '2023-03-20 19:04:03'),
(12, 22, 39, 'this is teat comments.', '1', '2023-03-25 15:57:44', '2023-03-25 15:57:44'),
(13, 22, 39, 'vhg', '1', '2023-04-01 22:09:57', '2023-04-01 22:09:57'),
(14, 22, 39, 'vhgbbh', '1', '2023-04-01 22:10:01', '2023-04-01 22:10:01'),
(15, 22, 39, 'gh', '1', '2023-04-01 22:32:06', '2023-04-01 22:32:06'),
(16, 22, 39, 'ubb', '1', '2023-04-01 22:36:29', '2023-04-01 22:36:29'),
(17, 22, 22, 'ggf', '1', '2023-04-01 22:46:47', '2023-04-01 22:46:47'),
(18, 22, 22, 'hello this is test comments', '1', '2023-04-11 16:39:37', '2023-04-11 16:39:37');

-- --------------------------------------------------------

--
-- Table structure for table `mits_contacts`
--

CREATE TABLE `mits_contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0=>Inactive, 1=>Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_contacts`
--

INSERT INTO `mits_contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'johndoe@yopmail.com', '9876543210', 'Subject 2', 'This is testing', '1', '2021-09-20 12:31:11', '2023-06-26 11:29:20'),
(2, 'Johny Walker', 'johny@yopmail.com', '8013467925', 'Subject 2', 'This is testing email.', '1', '2021-09-20 12:39:38', '2023-06-26 11:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `mits_countries`
--

CREATE TABLE `mits_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone_code` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_countries`
--

INSERT INTO `mits_countries` (`id`, `phone_code`, `country_code`, `country_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '93', 'AF', 'Afghanistan', '2021-09-19 06:37:23', NULL, NULL),
(2, '358', 'AX', 'Aland Islands', '2021-09-19 06:37:23', NULL, NULL),
(3, '355', 'AL', 'Albania', '2021-09-19 06:37:23', NULL, NULL),
(4, '213', 'DZ', 'Algeria', '2021-09-19 06:37:23', NULL, NULL),
(5, '1684', 'AS', 'American Samoa', '2021-09-19 06:37:23', NULL, NULL),
(6, '376', 'AD', 'Andorra', '2021-09-19 06:37:23', NULL, NULL),
(7, '244', 'AO', 'Angola', '2021-09-19 06:37:23', NULL, NULL),
(8, '1264', 'AI', 'Anguilla', '2021-09-19 06:37:23', NULL, NULL),
(9, '672', 'AQ', 'Antarctica', '2021-09-19 06:37:23', NULL, NULL),
(10, '1268', 'AG', 'Antigua and Barbuda', '2021-09-19 06:37:23', NULL, NULL),
(11, '54', 'AR', 'Argentina', '2021-09-19 06:37:23', NULL, NULL),
(12, '374', 'AM', 'Armenia', '2021-09-19 06:37:23', NULL, NULL),
(13, '297', 'AW', 'Aruba', '2021-09-19 06:37:23', NULL, NULL),
(14, '61', 'AU', 'Australia', '2021-09-19 06:37:23', NULL, NULL),
(15, '43', 'AT', 'Austria', '2021-09-19 06:37:23', NULL, NULL),
(16, '994', 'AZ', 'Azerbaijan', '2021-09-19 06:37:23', NULL, NULL),
(17, '1242', 'BS', 'Bahamas', '2021-09-19 06:37:23', NULL, NULL),
(18, '973', 'BH', 'Bahrain', '2021-09-19 06:37:23', NULL, NULL),
(19, '880', 'BD', 'Bangladesh', '2021-09-19 06:37:23', NULL, NULL),
(20, '1246', 'BB', 'Barbados', '2021-09-19 06:37:23', NULL, NULL),
(21, '375', 'BY', 'Belarus', '2021-09-19 06:37:23', NULL, NULL),
(22, '32', 'BE', 'Belgium', '2021-09-19 06:37:23', NULL, NULL),
(23, '501', 'BZ', 'Belize', '2021-09-19 06:37:23', NULL, NULL),
(24, '229', 'BJ', 'Benin', '2021-09-19 06:37:23', NULL, NULL),
(25, '1441', 'BM', 'Bermuda', '2021-09-19 06:37:23', NULL, NULL),
(26, '975', 'BT', 'Bhutan', '2021-09-19 06:37:23', NULL, NULL),
(27, '591', 'BO', 'Bolivia', '2021-09-19 06:37:23', NULL, NULL),
(28, '599', 'BQ', 'Bonaire, Sint Eustatius and Saba', '2021-09-19 06:37:23', NULL, NULL),
(29, '387', 'BA', 'Bosnia and Herzegovina', '2021-09-19 06:37:23', NULL, NULL),
(30, '267', 'BW', 'Botswana', '2021-09-19 06:37:23', NULL, NULL),
(31, '55', 'BV', 'Bouvet Island', '2021-09-19 06:37:23', NULL, NULL),
(32, '55', 'BR', 'Brazil', '2021-09-19 06:37:23', NULL, NULL),
(33, '246', 'IO', 'British Indian Ocean Territory', '2021-09-19 06:37:23', NULL, NULL),
(34, '673', 'BN', 'Brunei Darussalam', '2021-09-19 06:37:23', NULL, NULL),
(35, '359', 'BG', 'Bulgaria', '2021-09-19 06:37:23', NULL, NULL),
(36, '226', 'BF', 'Burkina Faso', '2021-09-19 06:37:23', NULL, NULL),
(37, '257', 'BI', 'Burundi', '2021-09-19 06:37:23', NULL, NULL),
(38, '855', 'KH', 'Cambodia', '2021-09-19 06:37:23', NULL, NULL),
(39, '237', 'CM', 'Cameroon', '2021-09-19 06:37:23', NULL, NULL),
(40, '1', 'CA', 'Canada', '2021-09-19 06:37:23', NULL, NULL),
(41, '238', 'CV', 'Cape Verde', '2021-09-19 06:37:23', NULL, NULL),
(42, '1345', 'KY', 'Cayman Islands', '2021-09-19 06:37:23', NULL, NULL),
(43, '236', 'CF', 'Central African Republic', '2021-09-19 06:37:23', NULL, NULL),
(44, '235', 'TD', 'Chad', '2021-09-19 06:37:23', NULL, NULL),
(45, '56', 'CL', 'Chile', '2021-09-19 06:37:23', NULL, NULL),
(46, '86', 'CN', 'China', '2021-09-19 06:37:23', NULL, NULL),
(47, '61', 'CX', 'Christmas Island', '2021-09-19 06:37:23', NULL, NULL),
(48, '672', 'CC', 'Cocos (Keeling) Islands', '2021-09-19 06:37:23', NULL, NULL),
(49, '57', 'CO', 'Colombia', '2021-09-19 06:37:23', NULL, NULL),
(50, '269', 'KM', 'Comoros', '2021-09-19 06:37:23', NULL, NULL),
(51, '242', 'CG', 'Congo', '2021-09-19 06:37:23', NULL, NULL),
(52, '242', 'CD', 'Congo, Democratic Republic of the Congo', '2021-09-19 06:37:23', NULL, NULL),
(53, '682', 'CK', 'Cook Islands', '2021-09-19 06:37:23', NULL, NULL),
(54, '506', 'CR', 'Costa Rica', '2021-09-19 06:37:23', NULL, NULL),
(55, '225', 'CI', 'Cote D\'Ivoire', '2021-09-19 06:37:23', NULL, NULL),
(56, '385', 'HR', 'Croatia', '2021-09-19 06:37:23', NULL, NULL),
(57, '53', 'CU', 'Cuba', '2021-09-19 06:37:23', NULL, NULL),
(58, '599', 'CW', 'Curacao', '2021-09-19 06:37:23', NULL, NULL),
(59, '357', 'CY', 'Cyprus', '2021-09-19 06:37:23', NULL, NULL),
(60, '420', 'CZ', 'Czech Republic', '2021-09-19 06:37:23', NULL, NULL),
(61, '45', 'DK', 'Denmark', '2021-09-19 06:37:23', NULL, NULL),
(62, '253', 'DJ', 'Djibouti', '2021-09-19 06:37:23', NULL, NULL),
(63, '1767', 'DM', 'Dominica', '2021-09-19 06:37:23', NULL, NULL),
(64, '1809', 'DO', 'Dominican Republic', '2021-09-19 06:37:23', NULL, NULL),
(65, '593', 'EC', 'Ecuador', '2021-09-19 06:37:23', NULL, NULL),
(66, '20', 'EG', 'Egypt', '2021-09-19 06:37:23', NULL, NULL),
(67, '503', 'SV', 'El Salvador', '2021-09-19 06:37:23', NULL, NULL),
(68, '240', 'GQ', 'Equatorial Guinea', '2021-09-19 06:37:23', NULL, NULL),
(69, '291', 'ER', 'Eritrea', '2021-09-19 06:37:23', NULL, NULL),
(70, '372', 'EE', 'Estonia', '2021-09-19 06:37:23', NULL, NULL),
(71, '251', 'ET', 'Ethiopia', '2021-09-19 06:37:23', NULL, NULL),
(72, '500', 'FK', 'Falkland Islands (Malvinas)', '2021-09-19 06:37:23', NULL, NULL),
(73, '298', 'FO', 'Faroe Islands', '2021-09-19 06:37:23', NULL, NULL),
(74, '679', 'FJ', 'Fiji', '2021-09-19 06:37:23', NULL, NULL),
(75, '358', 'FI', 'Finland', '2021-09-19 06:37:23', NULL, NULL),
(76, '33', 'FR', 'France', '2021-09-19 06:37:23', NULL, NULL),
(77, '594', 'GF', 'French Guiana', '2021-09-19 06:37:23', NULL, NULL),
(78, '689', 'PF', 'French Polynesia', '2021-09-19 06:37:23', NULL, NULL),
(79, '262', 'TF', 'French Southern Territories', '2021-09-19 06:37:23', NULL, NULL),
(80, '241', 'GA', 'Gabon', '2021-09-19 06:37:23', NULL, NULL),
(81, '220', 'GM', 'Gambia', '2021-09-19 06:37:23', NULL, NULL),
(82, '995', 'GE', 'Georgia', '2021-09-19 06:37:23', NULL, NULL),
(83, '49', 'DE', 'Germany', '2021-09-19 06:37:23', NULL, NULL),
(84, '233', 'GH', 'Ghana', '2021-09-19 06:37:23', NULL, NULL),
(85, '350', 'GI', 'Gibraltar', '2021-09-19 06:37:23', NULL, NULL),
(86, '30', 'GR', 'Greece', '2021-09-19 06:37:23', NULL, NULL),
(87, '299', 'GL', 'Greenland', '2021-09-19 06:37:23', NULL, NULL),
(88, '1473', 'GD', 'Grenada', '2021-09-19 06:37:23', NULL, NULL),
(89, '590', 'GP', 'Guadeloupe', '2021-09-19 06:37:23', NULL, NULL),
(90, '1671', 'GU', 'Guam', '2021-09-19 06:37:23', NULL, NULL),
(91, '502', 'GT', 'Guatemala', '2021-09-19 06:37:23', NULL, NULL),
(92, '44', 'GG', 'Guernsey', '2021-09-19 06:37:23', NULL, NULL),
(93, '224', 'GN', 'Guinea', '2021-09-19 06:37:23', NULL, NULL),
(94, '245', 'GW', 'Guinea-Bissau', '2021-09-19 06:37:23', NULL, NULL),
(95, '592', 'GY', 'Guyana', '2021-09-19 06:37:23', NULL, NULL),
(96, '509', 'HT', 'Haiti', '2021-09-19 06:37:23', NULL, NULL),
(97, '0', 'HM', 'Heard Island and Mcdonald Islands', '2021-09-19 06:37:23', NULL, NULL),
(98, '39', 'VA', 'Holy See (Vatican City State)', '2021-09-19 06:37:23', NULL, NULL),
(99, '504', 'HN', 'Honduras', '2021-09-19 06:37:23', NULL, NULL),
(100, '852', 'HK', 'Hong Kong', '2021-09-19 06:37:23', NULL, NULL),
(101, '36', 'HU', 'Hungary', '2021-09-19 06:37:23', NULL, NULL),
(102, '354', 'IS', 'Iceland', '2021-09-19 06:37:23', NULL, NULL),
(103, '91', 'IN', 'India', '2021-09-19 06:37:23', NULL, NULL),
(104, '62', 'ID', 'Indonesia', '2021-09-19 06:37:23', NULL, NULL),
(105, '98', 'IR', 'Iran, Islamic Republic of', '2021-09-19 06:37:23', NULL, NULL),
(106, '964', 'IQ', 'Iraq', '2021-09-19 06:37:23', NULL, NULL),
(107, '353', 'IE', 'Ireland', '2021-09-19 06:37:23', NULL, NULL),
(108, '44', 'IM', 'Isle of Man', '2021-09-19 06:37:23', NULL, NULL),
(109, '972', 'IL', 'Israel', '2021-09-19 06:37:23', NULL, NULL),
(110, '39', 'IT', 'Italy', '2021-09-19 06:37:23', NULL, NULL),
(111, '1876', 'JM', 'Jamaica', '2021-09-19 06:37:23', NULL, NULL),
(112, '81', 'JP', 'Japan', '2021-09-19 06:37:23', NULL, NULL),
(113, '44', 'JE', 'Jersey', '2021-09-19 06:37:23', NULL, NULL),
(114, '962', 'JO', 'Jordan', '2021-09-19 06:37:23', NULL, NULL),
(115, '7', 'KZ', 'Kazakhstan', '2021-09-19 06:37:23', NULL, NULL),
(116, '254', 'KE', 'Kenya', '2021-09-19 06:37:23', NULL, NULL),
(117, '686', 'KI', 'Kiribati', '2021-09-19 06:37:23', NULL, NULL),
(118, '850', 'KP', 'Korea, Democratic People\'s Republic of', '2021-09-19 06:37:23', NULL, NULL),
(119, '82', 'KR', 'Korea, Republic of', '2021-09-19 06:37:23', NULL, NULL),
(120, '381', 'XK', 'Kosovo', '2021-09-19 06:37:23', NULL, NULL),
(121, '965', 'KW', 'Kuwait', '2021-09-19 06:37:23', NULL, NULL),
(122, '996', 'KG', 'Kyrgyzstan', '2021-09-19 06:37:23', NULL, NULL),
(123, '856', 'LA', 'Lao People\'s Democratic Republic', '2021-09-19 06:37:23', NULL, NULL),
(124, '371', 'LV', 'Latvia', '2021-09-19 06:37:23', NULL, NULL),
(125, '961', 'LB', 'Lebanon', '2021-09-19 06:37:23', NULL, NULL),
(126, '266', 'LS', 'Lesotho', '2021-09-19 06:37:23', NULL, NULL),
(127, '231', 'LR', 'Liberia', '2021-09-19 06:37:23', NULL, NULL),
(128, '218', 'LY', 'Libyan Arab Jamahiriya', '2021-09-19 06:37:23', NULL, NULL),
(129, '423', 'LI', 'Liechtenstein', '2021-09-19 06:37:23', NULL, NULL),
(130, '370', 'LT', 'Lithuania', '2021-09-19 06:37:23', NULL, NULL),
(131, '352', 'LU', 'Luxembourg', '2021-09-19 06:37:23', NULL, NULL),
(132, '853', 'MO', 'Macao', '2021-09-19 06:37:23', NULL, NULL),
(133, '389', 'MK', 'Macedonia, the Former Yugoslav Republic of', '2021-09-19 06:37:23', NULL, NULL),
(134, '261', 'MG', 'Madagascar', '2021-09-19 06:37:23', NULL, NULL),
(135, '265', 'MW', 'Malawi', '2021-09-19 06:37:23', NULL, NULL),
(136, '60', 'MY', 'Malaysia', '2021-09-19 06:37:23', NULL, NULL),
(137, '960', 'MV', 'Maldives', '2021-09-19 06:37:23', NULL, NULL),
(138, '223', 'ML', 'Mali', '2021-09-19 06:37:23', NULL, NULL),
(139, '356', 'MT', 'Malta', '2021-09-19 06:37:23', NULL, NULL),
(140, '692', 'MH', 'Marshall Islands', '2021-09-19 06:37:23', NULL, NULL),
(141, '596', 'MQ', 'Martinique', '2021-09-19 06:37:23', NULL, NULL),
(142, '222', 'MR', 'Mauritania', '2021-09-19 06:37:23', NULL, NULL),
(143, '230', 'MU', 'Mauritius', '2021-09-19 06:37:23', NULL, NULL),
(144, '269', 'YT', 'Mayotte', '2021-09-19 06:37:23', NULL, NULL),
(145, '52', 'MX', 'Mexico', '2021-09-19 06:37:23', NULL, NULL),
(146, '691', 'FM', 'Micronesia, Federated States of', '2021-09-19 06:37:23', NULL, NULL),
(147, '373', 'MD', 'Moldova, Republic of', '2021-09-19 06:37:23', NULL, NULL),
(148, '377', 'MC', 'Monaco', '2021-09-19 06:37:23', NULL, NULL),
(149, '976', 'MN', 'Mongolia', '2021-09-19 06:37:23', NULL, NULL),
(150, '382', 'ME', 'Montenegro', '2021-09-19 06:37:23', NULL, NULL),
(151, '1664', 'MS', 'Montserrat', '2021-09-19 06:37:23', NULL, NULL),
(152, '212', 'MA', 'Morocco', '2021-09-19 06:37:23', NULL, NULL),
(153, '258', 'MZ', 'Mozambique', '2021-09-19 06:37:23', NULL, NULL),
(154, '95', 'MM', 'Myanmar', '2021-09-19 06:37:23', NULL, NULL),
(155, '264', 'NA', 'Namibia', '2021-09-19 06:37:23', NULL, NULL),
(156, '674', 'NR', 'Nauru', '2021-09-19 06:37:23', NULL, NULL),
(157, '977', 'NP', 'Nepal', '2021-09-19 06:37:23', NULL, NULL),
(158, '31', 'NL', 'Netherlands', '2021-09-19 06:37:23', NULL, NULL),
(159, '599', 'AN', 'Netherlands Antilles', '2021-09-19 06:37:23', NULL, NULL),
(160, '687', 'NC', 'New Caledonia', '2021-09-19 06:37:23', NULL, NULL),
(161, '64', 'NZ', 'New Zealand', '2021-09-19 06:37:23', NULL, NULL),
(162, '505', 'NI', 'Nicaragua', '2021-09-19 06:37:23', NULL, NULL),
(163, '227', 'NE', 'Niger', '2021-09-19 06:37:23', NULL, NULL),
(164, '234', 'NG', 'Nigeria', '2021-09-19 06:37:23', NULL, NULL),
(165, '683', 'NU', 'Niue', '2021-09-19 06:37:23', NULL, NULL),
(166, '672', 'NF', 'Norfolk Island', '2021-09-19 06:37:23', NULL, NULL),
(167, '1670', 'MP', 'Northern Mariana Islands', '2021-09-19 06:37:23', NULL, NULL),
(168, '47', 'NO', 'Norway', '2021-09-19 06:37:23', NULL, NULL),
(169, '968', 'OM', 'Oman', '2021-09-19 06:37:23', NULL, NULL),
(170, '92', 'PK', 'Pakistan', '2021-09-19 06:37:23', NULL, NULL),
(171, '680', 'PW', 'Palau', '2021-09-19 06:37:23', NULL, NULL),
(172, '970', 'PS', 'Palestinian Territory, Occupied', '2021-09-19 06:37:23', NULL, NULL),
(173, '507', 'PA', 'Panama', '2021-09-19 06:37:23', NULL, NULL),
(174, '675', 'PG', 'Papua New Guinea', '2021-09-19 06:37:23', NULL, NULL),
(175, '595', 'PY', 'Paraguay', '2021-09-19 06:37:23', NULL, NULL),
(176, '51', 'PE', 'Peru', '2021-09-19 06:37:23', NULL, NULL),
(177, '63', 'PH', 'Philippines', '2021-09-19 06:37:23', NULL, NULL),
(178, '64', 'PN', 'Pitcairn', '2021-09-19 06:37:23', NULL, NULL),
(179, '48', 'PL', 'Poland', '2021-09-19 06:37:23', NULL, NULL),
(180, '351', 'PT', 'Portugal', '2021-09-19 06:37:23', NULL, NULL),
(181, '1787', 'PR', 'Puerto Rico', '2021-09-19 06:37:23', NULL, NULL),
(182, '974', 'QA', 'Qatar', '2021-09-19 06:37:23', NULL, NULL),
(183, '262', 'RE', 'Reunion', '2021-09-19 06:37:23', NULL, NULL),
(184, '40', 'RO', 'Romania', '2021-09-19 06:37:23', NULL, NULL),
(185, '70', 'RU', 'Russian Federation', '2021-09-19 06:37:23', NULL, NULL),
(186, '250', 'RW', 'Rwanda', '2021-09-19 06:37:23', NULL, NULL),
(187, '590', 'BL', 'Saint Barthelemy', '2021-09-19 06:37:23', NULL, NULL),
(188, '290', 'SH', 'Saint Helena', '2021-09-19 06:37:23', NULL, NULL),
(189, '1869', 'KN', 'Saint Kitts and Nevis', '2021-09-19 06:37:23', NULL, NULL),
(190, '1758', 'LC', 'Saint Lucia', '2021-09-19 06:37:23', NULL, NULL),
(191, '590', 'MF', 'Saint Martin', '2021-09-19 06:37:23', NULL, NULL),
(192, '508', 'PM', 'Saint Pierre and Miquelon', '2021-09-19 06:37:23', NULL, NULL),
(193, '1784', 'VC', 'Saint Vincent and the Grenadines', '2021-09-19 06:37:23', NULL, NULL),
(194, '684', 'WS', 'Samoa', '2021-09-19 06:37:23', NULL, NULL),
(195, '378', 'SM', 'San Marino', '2021-09-19 06:37:23', NULL, NULL),
(196, '239', 'ST', 'Sao Tome and Principe', '2021-09-19 06:37:23', NULL, NULL),
(197, '966', 'SA', 'Saudi Arabia', '2021-09-19 06:37:23', NULL, NULL),
(198, '221', 'SN', 'Senegal', '2021-09-19 06:37:23', NULL, NULL),
(199, '381', 'RS', 'Serbia', '2021-09-19 06:37:23', NULL, NULL),
(200, '381', 'CS', 'Serbia and Montenegro', '2021-09-19 06:37:23', NULL, NULL),
(201, '248', 'SC', 'Seychelles', '2021-09-19 06:37:23', NULL, NULL),
(202, '232', 'SL', 'Sierra Leone', '2021-09-19 06:37:23', NULL, NULL),
(203, '65', 'SG', 'Singapore', '2021-09-19 06:37:23', NULL, NULL),
(204, '1', 'SX', 'Sint Maarten', '2021-09-19 06:37:23', NULL, NULL),
(205, '421', 'SK', 'Slovakia', '2021-09-19 06:37:23', NULL, NULL),
(206, '386', 'SI', 'Slovenia', '2021-09-19 06:37:23', NULL, NULL),
(207, '677', 'SB', 'Solomon Islands', '2021-09-19 06:37:23', NULL, NULL),
(208, '252', 'SO', 'Somalia', '2021-09-19 06:37:23', NULL, NULL),
(209, '27', 'ZA', 'South Africa', '2021-09-19 06:37:23', NULL, NULL),
(210, '500', 'GS', 'South Georgia and the South Sandwich Islands', '2021-09-19 06:37:23', NULL, NULL),
(211, '211', 'SS', 'South Sudan', '2021-09-19 06:37:23', NULL, NULL),
(212, '34', 'ES', 'Spain', '2021-09-19 06:37:23', NULL, NULL),
(213, '94', 'LK', 'Sri Lanka', '2021-09-19 06:37:23', NULL, NULL),
(214, '249', 'SD', 'Sudan', '2021-09-19 06:37:23', NULL, NULL),
(215, '597', 'SR', 'Suriname', '2021-09-19 06:37:23', NULL, NULL),
(216, '47', 'SJ', 'Svalbard and Jan Mayen', '2021-09-19 06:37:23', NULL, NULL),
(217, '268', 'SZ', 'Swaziland', '2021-09-19 06:37:23', NULL, NULL),
(218, '46', 'SE', 'Sweden', '2021-09-19 06:37:23', NULL, NULL),
(219, '41', 'CH', 'Switzerland', '2021-09-19 06:37:23', NULL, NULL),
(220, '963', 'SY', 'Syrian Arab Republic', '2021-09-19 06:37:23', NULL, NULL),
(221, '886', 'TW', 'Taiwan, Province of China', '2021-09-19 06:37:23', NULL, NULL),
(222, '992', 'TJ', 'Tajikistan', '2021-09-19 06:37:23', NULL, NULL),
(223, '255', 'TZ', 'Tanzania, United Republic of', '2021-09-19 06:37:23', NULL, NULL),
(224, '66', 'TH', 'Thailand', '2021-09-19 06:37:23', NULL, NULL),
(225, '670', 'TL', 'Timor-Leste', '2021-09-19 06:37:23', NULL, NULL),
(226, '228', 'TG', 'Togo', '2021-09-19 06:37:23', NULL, NULL),
(227, '690', 'TK', 'Tokelau', '2021-09-19 06:37:23', NULL, NULL),
(228, '676', 'TO', 'Tonga', '2021-09-19 06:37:23', NULL, NULL),
(229, '1868', 'TT', 'Trinidad and Tobago', '2021-09-19 06:37:23', NULL, NULL),
(230, '216', 'TN', 'Tunisia', '2021-09-19 06:37:23', NULL, NULL),
(231, '90', 'TR', 'Turkey', '2021-09-19 06:37:23', NULL, NULL),
(232, '7370', 'TM', 'Turkmenistan', '2021-09-19 06:37:23', NULL, NULL),
(233, '1649', 'TC', 'Turks and Caicos Islands', '2021-09-19 06:37:23', NULL, NULL),
(234, '688', 'TV', 'Tuvalu', '2021-09-19 06:37:23', NULL, NULL),
(235, '256', 'UG', 'Uganda', '2021-09-19 06:37:23', NULL, NULL),
(236, '380', 'UA', 'Ukraine', '2021-09-19 06:37:23', NULL, NULL),
(237, '971', 'AE', 'United Arab Emirates', '2021-09-19 06:37:23', NULL, NULL),
(238, '44', 'GB', 'United Kingdom', '2021-09-19 06:37:23', NULL, NULL),
(239, '1', 'US', 'United States', '2021-09-19 06:37:23', NULL, NULL),
(240, '1', 'UM', 'United States Minor Outlying Islands', '2021-09-19 06:37:23', NULL, NULL),
(241, '598', 'UY', 'Uruguay', '2021-09-19 06:37:23', NULL, NULL),
(242, '998', 'UZ', 'Uzbekistan', '2021-09-19 06:37:23', NULL, NULL),
(243, '678', 'VU', 'Vanuatu', '2021-09-19 06:37:23', NULL, NULL),
(244, '58', 'VE', 'Venezuela', '2021-09-19 06:37:23', NULL, NULL),
(245, '84', 'VN', 'Viet Nam', '2021-09-19 06:37:23', NULL, NULL),
(246, '1284', 'VG', 'Virgin Islands, British', '2021-09-19 06:37:23', NULL, NULL),
(247, '1340', 'VI', 'Virgin Islands, U.s.', '2021-09-19 06:37:23', NULL, NULL),
(248, '681', 'WF', 'Wallis and Futuna', '2021-09-19 06:37:23', NULL, NULL),
(249, '212', 'EH', 'Western Sahara', '2021-09-19 06:37:23', NULL, NULL),
(250, '967', 'YE', 'Yemen', '2021-09-19 06:37:23', NULL, NULL),
(251, '260', 'ZM', 'Zambia', '2021-09-19 06:37:23', NULL, NULL),
(252, '263', 'ZW', 'Zimbabwe', '2021-09-19 06:37:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mits_events`
--

CREATE TABLE `mits_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT 'Id from categories table',
  `event_category_id` int(11) DEFAULT NULL COMMENT 'Id from event_categories table',
  `advertiser_id` int(11) DEFAULT NULL COMMENT 'Id from users table, type AD',
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `price` float(10,2) NOT NULL DEFAULT 0.00,
  `location` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `start_date_timestamp` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `end_date_timestamp` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0=>Inactive, 1=>Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_events`
--

INSERT INTO `mits_events` (`id`, `category_id`, `event_category_id`, `advertiser_id`, `title`, `slug`, `price`, `location`, `short_description`, `description`, `start_date_timestamp`, `start_date`, `end_date`, `end_date_timestamp`, `image`, `sort`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 2, 22, 'Event 1', 'event-1', 35.00, 'Kolkata', 'Test short description', '<p>Test Description</p>', 1672067880, '2022-12-26 15:18:00', '2022-12-27 15:18:00', 1672154280, NULL, 0, '1', '2022-12-07 12:49:18', '2023-05-20 10:04:36', NULL),
(13, 4, 3, 23, 'Event 3', 'event-3', 65.00, NULL, NULL, NULL, 1676117400, '2023-02-11 12:10:00', '2023-02-12 12:10:00', 1676203800, NULL, 1, '1', '2022-12-09 05:00:01', '2023-05-20 10:04:33', NULL),
(14, 5, 2, 22, 'Event 2', 'event-2', 25.00, 'Kolkata', 'Test short description', '<p>Test Description</p>', 1675299600, '2023-02-02 01:00:00', '2023-02-03 01:00:00', 1675386000, NULL, 2, '1', '2023-02-06 05:24:14', '2023-05-20 10:04:56', NULL),
(17, 3, 4, 22, 'Event 4', 'event-4', 65.00, 'Kolkata', 'Test short description', '<p>Test Description</p>', 1675213200, '2023-02-01 01:00:00', '2023-02-02 01:00:00', 1675299600, NULL, 3, '1', '2023-02-06 05:31:34', '2023-05-20 10:02:22', NULL),
(18, 1, 2, 22, 'Event 5', 'event-5', 35.00, 'Kolkata', 'Test short description', '<p>Test Description</p>', 1675213200, '2023-02-01 01:00:00', '2023-02-02 01:00:00', 1675299600, NULL, 4, '1', '2023-02-06 05:33:21', '2023-05-20 10:02:42', NULL),
(19, 5, 3, 22, 'Event 6', 'event-6', 45.00, 'Kolkata', 'Test short description', '<p>Test Description</p>', 1675213200, '2023-02-01 01:00:00', '2023-02-02 01:00:00', 1675299600, NULL, 5, '1', '2023-02-07 05:57:47', '2023-05-20 10:02:46', NULL),
(20, 4, 4, 22, 'Event 7', 'event-7', 50.00, 'Kolkata', 'Test short description', '<p>Test Description</p>', 1675731600, '2023-02-07 01:00:00', '2023-02-08 01:00:00', 1675818000, NULL, 6, '1', '2023-02-07 05:58:36', '2023-05-20 10:02:51', NULL),
(21, 1, 3, 22, 'Event 7', 'event-7-1', 85.00, 'Kolkata', 'Test short description', '<p>Test Description</p>', 1675558800, '2023-02-05 01:00:00', '2023-02-06 01:00:00', 1675645200, NULL, 7, '1', '2023-02-07 06:03:43', '2023-05-20 10:02:55', NULL),
(22, 5, 0, 22, 'bbb', 'bbb', 99.00, 'hh', 'hhh', '<p>hhh</p>', 1675742400, '2023-02-07 04:00:00', '2023-02-08 04:00:00', 1675828800, NULL, 8, '1', '2023-02-07 06:40:30', '2023-05-20 10:02:59', NULL),
(23, 4, 3, 22, 'ccc', 'ccc', 12.00, 'ggfgg', 'ggg', '<p>ggg</p>', 1675742400, '2023-02-07 04:00:00', '2023-02-08 04:00:00', 1675828800, NULL, 9, '1', '2023-02-07 12:24:11', '2023-05-20 10:03:02', NULL),
(24, 3, 3, 22, 'Test event max', 'test-event-max', 200.00, 'kolkata', 'Hhdhd jjdn', '<p>Hhdhd jjdn</p>', 1675775160, '2023-02-07 13:06:00', '2023-02-08 13:06:00', 1675861560, NULL, 10, '1', '2023-02-07 14:49:22', '2023-05-20 10:03:06', NULL),
(25, 4, 1, 22, 'My new event', 'my-new-event', 90.00, 'Kolkata', 'My new eve', '<p>My new eve</p>', 1676426400, '2023-02-15 02:00:00', '2023-02-16 02:00:00', 1676512800, NULL, 11, '1', '2023-02-15 10:45:55', '2023-05-20 10:03:10', NULL),
(26, 1, 4, 22, 'New event', 'new-event', 50.00, 'Kolkata', 'My event', '<p>My event</p>', 1676438760, '2023-02-15 05:26:00', '2023-02-16 05:26:00', 1676525160, NULL, 12, '1', '2023-02-15 10:47:16', '2023-05-20 10:03:23', NULL),
(27, 5, 1, 22, 'hhhh', 'hhhh', 99.00, 'gh', 'gghhh', '<p>gghhh</p>', 1676696400, '2023-02-18 05:00:00', '2023-02-19 05:00:00', 1676782800, NULL, 13, '1', '2023-02-17 22:40:43', '2023-05-20 10:03:26', NULL),
(28, 1, 1, 34, 'Birthday party', 'birthday-party', 500.00, 'kolkata', 'Test lorem Ipsum dummy text Test lorem Ipsum dummy text Test lorem Ipsum dummy text Test lorem Ipsum dummy text Test lorem Ipsum  text Test lorem Ipsum dummy text Test lorem Ipsum dummy text Test lorem Ipsum dummy text Test lorem Ipsum dummy text Test lorem Ipsum  text', '<p>Test lorem Ipsum dummy text Test lorem Ipsum dummy text Test lorem Ipsum dummy text Test lorem Ipsum dummy text Test lorem Ipsum text Test lorem Ipsum dummy text Test lorem Ipsum dummy text Test lorem Ipsum dummy text Test lorem Ipsum dummy text Test lorem Ipsum text</p>', 1676678400, '2023-02-18 00:00:00', '2023-02-19 00:00:00', 1676764800, NULL, 14, '1', '2023-02-18 06:06:53', '2023-05-20 10:03:30', NULL),
(29, 3, 3, 22, 'New test event', 'new-test-event', 50.00, 'Kolkata', 'gggvchhvhnvd fgufsvdhgg\r\nghhgh\r\ngyjgh\r\ngghhhhjfc ghdvjh', '<p>gggvchhvhnvd fgufsvdhgg ghhgh gyjgh gghhhhjfc ghdvjh</p>', 1676686440, '2023-02-18 02:14:00', '2023-02-19 02:14:00', 1676772840, NULL, 15, '1', '2023-02-18 11:30:45', '2023-05-20 10:03:33', NULL),
(30, 5, NULL, 22, 'Water event updated', 'water-event-updated', 85.00, 'Kolkata', 'Test short description', '<p>Test Description</p>', 1675558800, '2023-02-05 01:00:00', '2023-02-06 01:00:00', 1675645200, NULL, 16, '1', '2023-02-27 17:57:00', '2023-05-20 10:03:37', NULL),
(31, 1, NULL, 22, 'ggg', 'ggg', 12.00, 'ghh', 'ggg', '<p>ggg</p>', 1681442160, '2023-04-14 03:16:00', '2023-04-15 03:16:00', 1681528560, NULL, 17, '1', '2023-04-13 21:47:44', '2023-05-20 10:03:40', NULL),
(32, 1, NULL, 22, 'ggg', 'ggg-2', 12.00, 'ghh', 'ggg', '<p>ggg</p>', 1681442160, '2023-04-14 03:16:00', '2023-04-15 03:16:00', 1681528560, NULL, 18, '1', '2023-04-13 21:52:13', '2023-05-20 10:03:44', NULL),
(33, 3, NULL, 22, 'Event 10', 'event-10', 85.00, 'Kolkata', 'Test short description', '<p>Test Description</p>', 1675558800, '2023-02-05 01:00:00', '2023-02-06 01:00:00', 1675645200, NULL, 19, '1', '2023-04-16 07:03:28', '2023-05-20 10:03:47', NULL),
(34, 3, NULL, 22, 'Event 10', 'event-10-2', 85.00, 'Kolkata', 'Test short description', '<p>Test Description</p>', 1675558800, '2023-02-05 01:00:00', '2023-02-06 01:00:00', 1675645200, NULL, 20, '1', '2023-04-16 07:07:55', '2023-05-20 10:03:51', NULL),
(35, 1, NULL, 22, 'test', 'test', 23.00, 'sip', 'test', '<p>test</p>', 1681617600, '2023-04-16 04:00:00', '2023-04-17 04:00:00', 1681704000, NULL, 21, '1', '2023-04-16 16:47:55', '2023-05-20 10:03:54', NULL),
(36, 1, NULL, 22, 'test2', 'test2', 12.00, 'test location', 'test location', '<p>test location</p>', 1681621200, '2023-04-16 05:00:00', '2023-04-17 05:00:00', 1681707600, NULL, 22, '1', '2023-04-16 16:48:46', '2023-05-20 10:03:58', NULL),
(37, 1, NULL, 22, 'test4', 'test4', 25.00, 'rea', 'test', '<p>test</p>', 1681621200, '2023-04-16 05:00:00', '2023-04-17 05:00:00', 1681707600, NULL, 23, '1', '2023-04-16 16:53:40', '2023-05-20 10:04:01', NULL),
(38, 3, NULL, 22, 'Event 100', 'event-100', 85.00, 'Kolkata', 'Test short description', '<p>Test Description</p>', 1675558800, '2023-02-05 01:00:00', '2023-02-06 01:00:00', 1675645200, NULL, 24, '1', '2023-04-16 17:00:51', '2023-05-20 10:04:05', NULL),
(39, 3, NULL, 22, 'tea', 'tea', 23.00, 'fg', 'ff', '<p>ff</p>', 1681621200, '2023-04-16 05:00:00', '2023-04-17 05:00:00', 1681707600, NULL, 25, '1', '2023-04-16 17:04:30', '2023-05-20 10:04:08', NULL),
(40, 1, NULL, 22, '14th may', '14th-may', 20.00, 'kolkata', 'Test test', '<p>Test test</p>', 1684037760, '2023-05-14 04:16:00', '2023-05-15 04:16:00', 1684124160, NULL, 26, '1', '2023-05-14 07:41:56', '2023-05-20 10:04:11', NULL),
(41, 3, NULL, 22, 'test 14th may', 'test-14th-may', 20.00, 'kolkata', 'Vxbd nsbsb jsns', '<p>Vxbd nsbsb jsns</p>', 1684077240, '2023-05-14 15:14:00', '2023-05-15 15:14:00', 1684163640, NULL, 27, '1', '2023-05-14 08:10:12', '2023-05-20 10:04:15', NULL),
(42, 3, NULL, 34, 'Good work', 'good-work', 200.00, 'kolkata', 'Lorem Ipsum dummy text', '<p>Lorem Ipsum dummy text</p>', 1684379760, '2023-05-18 03:16:00', '2023-05-19 03:16:00', 1684466160, NULL, 28, '1', '2023-05-18 12:05:39', '2023-05-20 10:04:19', NULL),
(43, 5, NULL, 34, 'Today\'s event', 'todays-event', 200.00, 'Kolkata', 'Lorem Ipsum dummy text', 'Lorem Ipsum dummy text', 1684713300, '2023-05-21 23:55:00', '2023-05-31 23:55:00', 1684799700, NULL, 29, '1', '2023-05-20 19:59:01', '2023-05-28 15:41:47', NULL),
(44, 3, NULL, 22, 'Event 1123', 'event-1123', 90.00, 'Kolkata', 'Test short description', 'Test Description', 1675558800, '2023-02-05 01:00:00', '2023-02-06 01:00:00', 1675645200, NULL, 30, '1', '2023-06-02 06:15:15', '2023-06-02 06:15:15', NULL),
(45, 3, NULL, 22, 'Event 06 02 2023', 'event-06-02-2023', 120.00, 'Kolkata', 'Test short description', 'Test Description', 1685705400, '2023-06-02 11:30:00', '2023-06-03 11:30:00', 1685791800, NULL, 31, '1', '2023-06-02 06:20:15', '2023-06-02 06:20:15', NULL),
(46, 3, NULL, 22, 'Event 07 06 2023', 'event-07-06-2023', 100.00, 'Kolkata', 'Test short description', 'Test Description', 1686137400, '2023-06-07 11:30:00', '2023-06-08 11:30:00', 1686223800, NULL, 32, '1', '2023-06-07 06:56:15', '2023-06-07 06:56:15', NULL),
(47, 8, NULL, 22, 'Event 16 08 2023', 'event-16-08-2023', 100.00, 'Kolkata', 'Test short description', 'Test Description', 1686137400, '2023-06-07 11:30:00', '2023-06-08 11:30:00', 1686223800, NULL, 33, '1', '2023-08-16 01:48:17', '2023-08-16 01:48:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mits_event_categories`
--

CREATE TABLE `mits_event_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT 'Id from categories table',
  `title` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0=>Inactive, 1=>Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_event_categories`
--

INSERT INTO `mits_event_categories` (`id`, `category_id`, `title`, `slug`, `short_description`, `image`, `sort`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Event Category 1', 'event-category-1', NULL, 'event_category_1675404776.jpg', 0, '1', '2022-11-24 13:28:35', '2023-02-03 00:42:57', NULL),
(2, NULL, 'Event Category 2', 'event-category-2', NULL, 'event_category_1675404788.jpeg', 1, '1', '2022-11-24 13:29:38', '2023-02-03 00:43:08', NULL),
(3, NULL, 'Event Category 3', 'event-category-3', NULL, NULL, 2, '1', '2022-11-24 13:29:51', '2022-11-24 13:30:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mits_event_images`
--

CREATE TABLE `mits_event_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `default_image` enum('N','Y') NOT NULL DEFAULT 'N' COMMENT 'N=>No, Y=>Yes',
  `sort` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_event_images`
--

INSERT INTO `mits_event_images` (`id`, `event_id`, `image`, `default_image`, `sort`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'event_7709_1670437674.jpeg', 'N', 0, '2022-12-07 12:57:54', '2023-02-27 17:27:36', NULL),
(2, 1, 'event_6435_1670437674.jpg', 'N', 1, '2022-12-07 12:57:54', '2023-02-27 17:27:36', NULL),
(3, 14, 'event_1150_1675680427.png', 'N', 2, '2023-02-06 10:54:14', '2023-02-27 17:26:59', NULL),
(4, 14, 'event_4085_1675680584.png', 'N', 3, '2023-02-06 10:54:14', '2023-02-27 17:26:59', NULL),
(5, 14, 'event_9423_1675680610.jpg', 'N', 4, '2023-02-06 10:54:14', '2023-02-27 17:26:59', NULL),
(6, 17, 'event_4705_1675681172.jpg', 'N', 5, '2023-02-06 05:31:34', '2023-02-27 17:26:43', NULL),
(7, 17, 'event_2221_1675681184.png', 'N', 6, '2023-02-06 05:31:34', '2023-02-27 17:26:43', NULL),
(8, 18, 'event_2032_1675681353.jpg', 'N', 7, '2023-02-06 05:33:21', '2023-02-27 17:26:30', NULL),
(9, 18, 'event_7567_1675681360.png', 'N', 8, '2023-02-06 05:33:22', '2023-02-27 17:26:30', NULL),
(10, 19, 'event_9995_1675749419.png', 'N', 9, '2023-02-07 05:57:47', '2023-02-27 17:26:13', NULL),
(11, 20, 'event_9545_1675749488.jpg', 'N', 10, '2023-02-07 05:58:36', '2023-02-27 17:25:27', NULL),
(12, 21, 'event_9462_1675749776.jpg', 'N', 11, '2023-02-07 06:03:43', '2023-02-27 17:25:15', NULL),
(13, 22, 'event_5431_1675752017.jpg', 'N', 12, '2023-02-07 06:40:30', '2023-02-27 17:25:00', NULL),
(14, 24, 'event_8431_1675781139.jpg', 'N', 13, '2023-02-07 14:49:22', '2023-02-27 17:24:21', NULL),
(15, 26, 'event_4235_1676457993.jpg', 'N', 14, '2023-02-15 10:47:16', '2023-02-27 17:23:53', NULL),
(16, 27, 'event_9122_1676673623.jpg', 'N', 15, '2023-02-17 22:40:43', '2023-02-27 17:23:38', NULL),
(17, 27, 'event_5612_1676673628.jpg', 'N', 16, '2023-02-17 22:40:43', '2023-02-27 17:23:38', NULL),
(18, 28, 'event_5247_1676700347.jpg', 'N', 17, '2023-02-18 06:06:53', '2023-02-27 14:50:58', '2023-02-27 14:50:58'),
(19, 29, 'event_1058_1676719836.jpg', 'N', 18, '2023-02-18 11:30:45', '2023-02-27 14:51:22', '2023-02-27 14:51:22'),
(20, 29, 'event_5266_1677509364.png', 'N', 19, '2023-02-27 14:49:24', '2023-02-27 17:04:57', NULL),
(21, 28, 'event_7842_1677509447.png', 'N', 20, '2023-02-27 14:50:48', '2023-02-27 17:22:25', NULL),
(22, 27, 'event_8158_1677509507.png', 'N', 21, '2023-02-27 14:51:47', '2023-02-27 17:23:38', NULL),
(23, 26, 'event_4253_1677509600.png', 'N', 22, '2023-02-27 14:53:20', '2023-02-27 17:23:53', NULL),
(24, 25, 'event_4180_1677509622.png', 'N', 23, '2023-02-27 14:53:42', '2023-02-27 17:24:09', NULL),
(25, 24, 'event_8827_1677509642.png', 'N', 24, '2023-02-27 14:54:02', '2023-02-27 17:24:21', NULL),
(26, 23, 'event_1533_1677509665.png', 'N', 25, '2023-02-27 14:54:25', '2023-02-27 17:24:37', NULL),
(27, 22, 'event_5197_1677509682.png', 'N', 26, '2023-02-27 14:54:42', '2023-02-27 17:25:00', NULL),
(28, 21, 'event_9097_1677509704.png', 'N', 27, '2023-02-27 14:55:04', '2023-02-27 17:25:15', NULL),
(29, 20, 'event_9808_1677509727.png', 'N', 28, '2023-02-27 14:55:27', '2023-02-27 17:25:27', NULL),
(30, 13, 'event_9285_1677509760.png', 'N', 29, '2023-02-27 14:56:00', '2023-02-27 17:27:15', NULL),
(31, 29, 'event_1700_1677517488.png', 'Y', 30, '2023-02-27 17:04:49', '2023-02-27 17:04:57', NULL),
(32, 28, 'event_5280_1677518536.jpg', 'Y', 31, '2023-02-27 17:22:16', '2023-02-27 17:22:25', NULL),
(33, 27, 'event_3543_1677518612.jpeg', 'Y', 32, '2023-02-27 17:23:32', '2023-02-27 17:23:38', NULL),
(34, 26, 'event_6908_1677518626.jpg', 'Y', 33, '2023-02-27 17:23:46', '2023-02-27 17:23:53', NULL),
(35, 25, 'event_1249_1677518641.jpg', 'Y', 34, '2023-02-27 17:24:02', '2023-02-27 17:24:09', NULL),
(36, 24, 'event_7584_1677518656.jpeg', 'Y', 35, '2023-02-27 17:24:16', '2023-02-27 17:24:21', NULL),
(37, 23, 'event_6762_1677518670.png', 'Y', 36, '2023-02-27 17:24:30', '2023-02-27 17:24:37', NULL),
(38, 22, 'event_5728_1677518685.jpg', 'Y', 37, '2023-02-27 17:24:45', '2023-02-27 17:25:00', NULL),
(39, 22, 'event_2280_1677518695.png', 'N', 38, '2023-02-27 17:24:56', '2023-02-27 17:25:00', NULL),
(40, 21, 'event_6783_1677518710.jpg', 'Y', 39, '2023-02-27 17:25:10', '2023-02-27 17:25:15', NULL),
(41, 20, 'event_6772_1677518722.jpg', 'Y', 40, '2023-02-27 17:25:23', '2023-02-27 17:25:27', NULL),
(42, 19, 'event_7351_1677518768.jpg', 'Y', 41, '2023-02-27 17:26:08', '2023-02-27 17:26:13', NULL),
(43, 18, 'event_4664_1677518784.jpg', 'Y', 42, '2023-02-27 17:26:24', '2023-02-27 17:26:30', NULL),
(44, 17, 'event_8237_1677518797.jpg', 'Y', 43, '2023-02-27 17:26:37', '2023-02-27 17:26:43', NULL),
(45, 14, 'event_8610_1677518810.jpg', 'Y', 44, '2023-02-27 17:26:50', '2023-02-27 17:26:58', NULL),
(46, 13, 'event_9288_1677518829.jpg', 'Y', 45, '2023-02-27 17:27:09', '2023-02-27 17:27:15', NULL),
(47, 1, 'event_2022_1677518851.jpg', 'Y', 46, '2023-02-27 17:27:31', '2023-02-27 17:27:36', NULL),
(48, 30, 'event_6350_1677520573.jpg', 'Y', 47, '2023-02-27 17:57:00', '2023-02-27 17:57:00', NULL),
(49, 35, 'event_4936_1681663644.jpg', 'Y', 48, '2023-04-16 16:47:55', '2023-04-16 16:47:55', NULL),
(50, 36, 'event_9854_1681663694.jpg', 'Y', 49, '2023-04-16 16:48:46', '2023-04-16 16:48:46', NULL),
(51, 37, 'event_9345_1681663870.jpg', 'Y', 50, '2023-04-16 16:53:40', '2023-04-16 16:53:40', NULL),
(52, 39, 'event_5214_1681664647.jpg', 'Y', 51, '2023-04-16 17:04:30', '2023-04-16 17:04:30', NULL),
(53, 40, 'event_3714_1684050068.jpg', 'Y', 52, '2023-05-14 07:41:56', '2023-05-14 07:41:56', NULL),
(54, 41, 'event_3208_1684051709.jpg', 'Y', 53, '2023-05-14 08:10:12', '2023-05-14 08:10:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mits_event_temporary_images`
--

CREATE TABLE `mits_event_temporary_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'Id for logged in user',
  `unique_code` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `default_image` enum('N','Y') NOT NULL DEFAULT 'N' COMMENT 'N=>No, Y=>Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_event_temporary_images`
--

INSERT INTO `mits_event_temporary_images` (`id`, `user_id`, `unique_code`, `image`, `default_image`) VALUES
(8, 22, '280', 'event_4720_1675717219.jpg', 'Y'),
(9, 22, '280', 'event_5464_1675717226.jpg', 'N'),
(21, 22, '114', 'event_7386_1681420518.jpg', 'Y'),
(22, 22, '114', 'event_4437_1681420527.jpg', 'N'),
(23, 22, '568', 'event_7750_1681422715.jpg', 'Y'),
(24, 22, '568', 'event_8048_1681422720.jpg', 'N'),
(31, 22, '557', 'event_5599_1684425721.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `mits_event_videos`
--

CREATE TABLE `mits_event_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `embedded_code` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_event_videos`
--

INSERT INTO `mits_event_videos` (`id`, `event_id`, `title`, `embedded_code`) VALUES
(1, 13, NULL, 'Video 1'),
(2, 13, NULL, 'Video 2'),
(3, 13, NULL, 'Video 3'),
(4, 29, NULL, NULL),
(5, 28, NULL, NULL),
(6, 27, NULL, NULL),
(7, 26, NULL, NULL),
(8, 25, NULL, NULL),
(9, 24, NULL, NULL),
(10, 23, NULL, NULL),
(11, 22, NULL, NULL),
(12, 21, NULL, NULL),
(13, 20, NULL, NULL),
(14, 19, NULL, NULL),
(15, 18, NULL, NULL),
(16, 17, NULL, NULL),
(17, 14, NULL, NULL),
(18, 1, NULL, NULL),
(19, 38, NULL, 'https://youtu.be/1Weic5sCmL8'),
(20, 39, NULL, 'https://youtu.be/1Weic5sCmL8'),
(21, 39, NULL, 'https://youtu.be/1Weic5sCmL8'),
(22, 42, NULL, 'https://youtu.be/4dRKTZZMCGQ'),
(23, 42, NULL, 'https://youtu.be/4dRKTZZMCGQ'),
(24, 30, NULL, NULL),
(25, 31, NULL, NULL),
(26, 32, NULL, NULL),
(27, 33, NULL, NULL),
(28, 34, NULL, NULL),
(29, 35, NULL, NULL),
(30, 36, NULL, NULL),
(31, 37, NULL, NULL),
(32, 40, NULL, NULL),
(33, 41, NULL, NULL),
(34, 43, NULL, 'https://youtu.be/zOceeeWDTag'),
(35, 43, NULL, 'https://youtu.be/zOceeeWDTag'),
(36, 44, NULL, 'https://youtu.be/1Weic5sCmL8'),
(37, 45, NULL, 'https://youtu.be/1Weic5sCmL8'),
(38, 46, NULL, 'https://youtu.be/1Weic5sCmL8'),
(39, 47, NULL, 'https://youtu.be/1Weic5sCmL8');

-- --------------------------------------------------------

--
-- Table structure for table `mits_feedback`
--

CREATE TABLE `mits_feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'Id from users table',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mits_feedback_details`
--

CREATE TABLE `mits_feedback_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'Id from users table',
  `feedback_id` varchar(255) DEFAULT NULL COMMENT 'Id from feedback table',
  `feedback_question_id` varchar(255) DEFAULT NULL COMMENT 'Id from feedback_questions table',
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mits_feedback_questions`
--

CREATE TABLE `mits_feedback_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0=>Inactive, 1=>Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_feedback_questions`
--

INSERT INTO `mits_feedback_questions` (`id`, `question`, `sort`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'How did you first learn about our app?', 0, '1', '2023-06-27 01:33:51', '2023-06-27 02:01:47', NULL),
(2, 'What comes to your mind when thinking about our app?', 1, '1', '2023-06-27 01:50:09', '2023-06-27 02:01:38', NULL),
(3, 'What confused/annoyed you about the app?', 2, '1', '2023-06-27 02:01:21', '2023-06-27 02:01:38', NULL),
(4, 'How functional does the application feel to you?', 3, '1', '2023-06-27 02:02:07', '2023-06-27 02:02:07', NULL),
(5, 'Is our app helping you achieve goals?', 4, '1', '2023-06-27 02:02:35', '2023-06-27 07:32:46', NULL),
(6, 'What more functions would you like us to add?', 5, '1', '2023-06-27 02:03:01', '2023-06-27 02:03:01', NULL),
(7, 'How would you like to rate this new feature?', 6, '1', '2023-06-27 02:03:12', '2023-06-27 02:03:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mits_migrations`
--

CREATE TABLE `mits_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_migrations`
--

INSERT INTO `mits_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2020_12_24_115140_create_roles_table', 1),
(3, '2020_12_24_115756_create_role_permissions_table', 1),
(4, '2020_12_24_120619_create_user_roles_table', 1),
(5, '2020_12_24_120728_create_role_pages_table', 1),
(6, '2021_01_04_060015_create_website_settings_table', 1),
(7, '2021_01_06_120249_create_cms_table', 1),
(8, '2021_06_21_193621_create_contacts_table', 1),
(9, '2021_08_03_201054_create_categories_table', 2),
(16, '2021_09_19_060657_create_countries_table', 7),
(18, '2021_09_30_201057_create_events_table', 9),
(19, '2022_11_19_053436_create_user_videos_table', 10),
(20, '2022_11_24_183003_create_event_categories_table', 11),
(21, '2021_08_04_135155_create_event_images_table', 12),
(22, '2022_12_08_073833_create_user_details_table', 13),
(23, '2022_12_09_073956_create_event_videos_table', 14),
(24, '2023_02_03_075759_create_comments_table', 15),
(25, '2023_02_06_100325_create_event_temporary_images_table', 16),
(37, '2023_02_21_180255_create_temporary_bookings_table', 17),
(38, '2023_02_21_180758_create_temporary_booking_attenders_table', 17),
(39, '2023_02_21_190506_create_bookings_table', 17),
(40, '2023_02_21_190524_create_booking_attenders_table', 17),
(41, '2023_05_04_095414_create_reviews_table', 18),
(42, '2023_06_26_130945_create_feedback_questions_table', 19),
(47, '2023_06_27_122141_create_feedback_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `mits_reviews`
--

CREATE TABLE `mits_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `reviewer_id` int(11) DEFAULT NULL,
  `advertiser_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `review` varchar(255) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 => In-active, 1 => Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mits_roles`
--

CREATE TABLE `mits_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_admin` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0=>Inactive, 1=>Active',
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0=>Inactive, 1=>Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_roles`
--

INSERT INTO `mits_roles` (`id`, `name`, `slug`, `is_admin`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', 'super-admin', '1', '1', '2021-08-01 08:40:47', '2021-08-01 08:40:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mits_role_pages`
--

CREATE TABLE `mits_role_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `routeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mits_role_permissions`
--

CREATE TABLE `mits_role_permissions` (
  `role_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mits_temporary_bookings`
--

CREATE TABLE `mits_temporary_bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `unique_id` varchar(255) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `advertiser_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL COMMENT 'Event/Advertiser owner id',
  `booked_by` int(11) DEFAULT NULL COMMENT 'Id from users table',
  `type` enum('EV','AD') NOT NULL DEFAULT 'EV' COMMENT 'EV => Event, AD => Advertiser',
  `booking_amount` double(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Event / Advertiser booking amount',
  `number_of_tickets` int(11) NOT NULL DEFAULT 1,
  `total_booking_amount` double(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Total booking amount',
  `booking_details` longtext DEFAULT NULL COMMENT 'Details in JSON format',
  `location` varchar(255) DEFAULT NULL,
  `booking_date_time` timestamp NULL DEFAULT NULL,
  `booking_date_timestamp` int(11) DEFAULT NULL,
  `booking_end_date_time` datetime DEFAULT NULL,
  `booking_end_date_timestamp` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mits_temporary_booking_attenders`
--

CREATE TABLE `mits_temporary_booking_attenders` (
  `id` int(10) UNSIGNED NOT NULL,
  `temporary_booking_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mits_users`
--

CREATE TABLE `mits_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `auth_token` varchar(255) DEFAULT NULL,
  `device_token` varchar(255) DEFAULT NULL,
  `verification_code` int(11) DEFAULT NULL COMMENT 'Verification code for registration',
  `otp` int(11) DEFAULT NULL COMMENT 'OTP for verification for forgot password',
  `type` enum('SA','A','U','C','AD') NOT NULL DEFAULT 'C' COMMENT 'SA=>Super Admin, A=>Sub Admin, U=>User, C=>Customer, AD=>Advertiser',
  `login_medium` enum('A','S') NOT NULL DEFAULT 'A' COMMENT 'A=>App, S=>Social',
  `social_login_type` enum('FB','GM','LI','TT','AP') DEFAULT NULL COMMENT 'FB=>Facebook, GM=>Gmail, LI=>LinkedIn, TT=>TokTok, AP=>Apple',
  `social_unique_id` varchar(255) DEFAULT NULL,
  `social_media_token` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT 'Id from categories table',
  `is_business_profile_complete` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT 'Y=>Yes, N=>No',
  `agree` enum('N','Y') NOT NULL DEFAULT 'Y' COMMENT 'N=>No, Y=>Yes',
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0=>Inactive, 1=>Active',
  `lastlogintime` int(11) DEFAULT NULL,
  `sample_login_show` enum('N','Y') NOT NULL DEFAULT 'N' COMMENT 'Y=>Yes, N=>No',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_users`
--

INSERT INTO `mits_users` (`id`, `nickname`, `title`, `first_name`, `last_name`, `full_name`, `username`, `email`, `phone_no`, `password`, `profile_pic`, `address`, `role_id`, `remember_token`, `auth_token`, `device_token`, `verification_code`, `otp`, `type`, `login_medium`, `social_login_type`, `social_unique_id`, `social_media_token`, `category_id`, `is_business_profile_complete`, `agree`, `status`, `lastlogintime`, `sample_login_show`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, NULL, 'John', 'Doe', 'John Doe', NULL, 'admin@admin.com', '9876543210', '$2y$10$RGxReXMSliZZ3pxOcGFag.OCe5zs.G2tkS4FaotZdpuIWSTw/3sMW', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'SA', 'A', NULL, NULL, NULL, NULL, 'N', 'Y', '1', 1703072715, 'Y', '2021-08-01 08:40:47', '2023-12-20 07:15:15', NULL),
(20, NULL, NULL, 'Harris', 'Pottters', 'Harris Pottters', NULL, 'harrypotter@yopmail.com', '9876543210', '$2y$10$huDSbauYrpYSZlWHFP0EIO89p3uEUAvC35H/YYmgt6qhLMBcD/6pO', NULL, NULL, NULL, 'WRFuAMexWkgWbSjP1yOPrafdUFZsOhVoq43x780SJmz3UDP1mmJ0PtJPxqoN', '$2y$10$wsghYyvMB9bDM4uJjrXtYO3UwHA.KajMGwElzPkT.jGtRKSb7.hDq', NULL, NULL, NULL, 'C', 'A', NULL, NULL, NULL, NULL, 'N', 'Y', '1', 1684232489, 'N', '2021-09-19 10:04:37', '2023-05-16 10:21:53', NULL),
(21, NULL, NULL, 'David', 'Brown', 'David Brown', NULL, 'davidbrown@yopmail.com', '9876543210', '$2y$10$2cKAGZ6LFaUD2ZTZI1gwjesRMTeGyz47DZ8wA47WvYh45KQFQqzkm', 'customer_1668957241.png', NULL, NULL, NULL, '$2y$10$dVlUsGw/JM5Q9BXSxO2BxOMq1ScrurtMzLH35USHcsbqudEvxEkjK', NULL, NULL, 5214, 'C', 'A', NULL, NULL, NULL, 1, 'N', 'Y', '1', 1686141215, 'N', '2022-11-20 09:39:47', '2023-06-07 07:03:35', NULL),
(22, NULL, NULL, 'David', 'Walker', 'David Walker', NULL, 'davidwalker@yopmail.com', '9876543210', '$2y$10$.oqqXUTXvACbKK81cOvjTOjc1urWvtFYmYkE/50QRbkdkiy9QxhCq', 'advertiser_1685253232.jpg', NULL, NULL, NULL, '$2y$10$rQ4mYAW47n1B78dFMx4HJO08Ng7NgsQZsRk4O6Pqvo0MF.KEDiFjO', NULL, NULL, NULL, 'AD', 'A', NULL, NULL, NULL, 3, 'Y', 'Y', '1', 1692166456, 'N', '2022-11-21 12:23:04', '2023-08-16 00:44:16', NULL),
(23, NULL, NULL, 'Mark', 'Boucher', 'Mark Boucher', NULL, 'markboucher@yopmail.com', '9876543210', '$2y$10$Dx4ge2N8Y9t2f6.V6YRYjOwF/uIxPKV0YLdEtPslhA3URCbaAXft6', 'advertiser_1670496012.png', NULL, NULL, NULL, '$2y$10$InSLu/vGkWdBfgYgPdjKxuN/pNO8/lVuePkRT/sejSyGLQ/BErcUC', NULL, NULL, NULL, 'AD', 'A', NULL, NULL, NULL, 5, 'N', 'Y', '1', 1685087397, 'N', '2022-12-08 05:10:12', '2023-05-26 07:49:57', NULL),
(27, NULL, NULL, 'Adam', 'Voges', 'Adam Voges', NULL, 'adamvoges@yopmail.com', '9876543210', '$2y$10$0l9Q9vmtXMfasA7/PGoLzuKIPxXLPDvFEnSytLhIxY9UQjprIPc7K', 'advertiser_1676812763.png', NULL, NULL, NULL, NULL, '123456789', 5716, NULL, 'AD', 'A', NULL, NULL, NULL, 1, 'N', 'Y', '1', NULL, 'N', '2022-12-13 07:31:04', '2023-02-27 07:26:16', NULL),
(28, NULL, NULL, 'gff', 'gff', 'gff', NULL, 'ffhdjsj@xxx.com', '7003064898', '$2y$10$.FmrnaWXhhCqyZaF8hQ4BeIYADQBI0pSAKdmMwAwmEtQYY7ShDXSS', 'advertiser_1676812943.png', NULL, NULL, NULL, NULL, '$2y$10$ZcWrim3cybRgB8BdVSPegu5fDQBl2kYjK.r62tGQ6z4U.u3d4ntda', 7345, NULL, 'AD', 'A', NULL, NULL, NULL, 3, 'N', 'Y', '0', NULL, 'N', '2023-02-07 07:50:00', '2023-02-27 07:26:11', NULL),
(29, NULL, NULL, 'vgg', 'vgg', 'vgg', NULL, 'vvvv@ffhhh.com', '3456789011', '$2y$10$ubGNRPHot9joRrapRxdUDOUKDk5dsldvk8BCjEhocw8Bf4XuRWoKe', 'advertiser_1676812904.png', NULL, NULL, NULL, NULL, '$2y$10$as81ZZUUwQ2XTAzcFpg3Cuc//kcfySKLI8LFHdJPmXrKnIPtVdO2W', 2147, NULL, 'AD', 'A', NULL, NULL, NULL, 3, 'N', 'Y', '0', NULL, 'N', '2023-02-07 07:56:57', '2023-02-27 07:26:05', NULL),
(30, NULL, NULL, 'xxxx', 'xxxx', 'xxxx', NULL, 'ddddf@gma.com', '1234567890', '$2y$10$bQ5yJNV9ZR8UfNn882nnWerhTauLiYUTnomKSGIYNivcwdmXAIRrW', 'advertiser_1676812773.png', NULL, NULL, NULL, NULL, '$2y$10$w0jy7.ZqXW2r5U4TalQxquuvX4c5UA4xMv25r.BKsHSmiNIgKafKK', 1423, NULL, 'AD', 'A', NULL, NULL, NULL, 3, 'N', 'Y', '1', NULL, 'N', '2023-02-07 12:17:50', '2023-02-27 07:27:06', NULL),
(31, NULL, NULL, 'fffg', 'fffg', 'fffg', NULL, 'fggggabx@fhcv.com', '2234555553', '$2y$10$QobUWUSjzoAeP2z.FXJHxOxHZfo665JlKGwbthTi.ooVvEK0gmWLy', 'advertiser_1676812809.png', NULL, NULL, NULL, NULL, '$2y$10$w0jy7.ZqXW2r5U4TalQxquuvX4c5UA4xMv25r.BKsHSmiNIgKafKK', 5928, NULL, 'AD', 'A', NULL, NULL, NULL, 1, 'N', 'Y', '1', NULL, 'N', '2023-02-07 12:21:02', '2023-02-27 07:26:59', NULL),
(32, NULL, NULL, 'adv', '4', 'adv 4', NULL, 'adv1@mailinator.com', '9087654321', '$2y$10$GNmAgtqAXvEqa0DVyZyHquDAM7zqYoiSIM/gxkN.sIy47YViPPWsi', 'advertiser_1676812821.png', NULL, NULL, NULL, '$2y$10$vBxtBO9K7XN.cb.c6J4BWePHh727GV7cQe..L0Mp..6qeBR8cYg9y', '1234646', 2984, 4183, 'AD', 'A', NULL, NULL, NULL, 4, 'N', 'Y', '1', 1675786910, 'N', '2023-02-07 16:20:03', '2023-02-27 07:26:53', NULL),
(33, NULL, NULL, 'max1', 'max1', 'max1', NULL, 'max123@gmail.com', '9087654321', '$2y$10$TSMVJ4kVYTu9goHUeD5bj.fVJj2bAXxt1kY.3qvEZAvUVnaaPFVEe', 'customer_1676813531.png', NULL, NULL, NULL, '$2y$10$d7zxU9SF7uP1Y51sl18Fc.vuhS5ZZH7kvC3tjaaCkjmb5or8kAG/G', '1234646', 1874, NULL, 'C', 'A', NULL, NULL, NULL, NULL, 'N', 'Y', '1', 1676699442, 'N', '2023-02-14 17:36:21', '2023-02-19 13:32:11', NULL),
(34, NULL, NULL, 'sukanta.info2', 'sukanta.info2', 'sukanta.info2', NULL, 'sukanta.info2@gmail.com', '9087654421', '$2y$10$rhzjZwm2oI977crnMGqKGuNsyhnL5AJmC7Yomcei1LGmv9r6IizJG', 'advertiser_1676812834.png', NULL, NULL, 'togW1ZLlwf3X5WoYr91PgDdSrrzn1hhfslNibbsgnUh08eUMspKIpXD6kLeG', '$2y$10$eOhgvnJxKdaMax9Ejf9Xs.LkVwPEDNxpOczL1JpFu4PHVusF6Cypi', NULL, 8971, 3925, 'AD', 'S', 'LI', 'UX7UCUCFE4', 'AQWLxLoexiNuEIwuOtLdknmSH0nKPwttBhGoNfU0hK0hD_qqFs9CF80-FXiVsQbYrB5k5J0CXDXB_Shvb-TRKEwuSHPb5ZKjl92JodPOLmIyRNxxR5kQIr2RgeCrSpcWDdkcDnUX8uSIUwChPDCJHeK0KktGyRnsocq85gV1jQ66LJiyxChj-SJuUow6l28SXVlX0YlYNIc9gcUJMZmO6BlqIMexrvveGCkpfZIF9403D50xWhrPZuotua3Wvr4', 5, 'N', 'Y', '1', 1684612521, 'N', '2023-02-18 05:59:14', '2023-05-20 19:55:21', NULL),
(35, NULL, NULL, 'max', 'max', 'max', NULL, 'max90@gmail.com', '9087654321', '$2y$10$HtyP1TsR.x/c4xEXh8F/pO2GW98k38UpL2UdrOzlP619W72Rb/t16', 'customer_1676813543.png', NULL, NULL, NULL, '$2y$10$BUXF6rgjs51eVvGK3dcPiueyHuxScV0Z7VtoNUs3UULzH6A1xxJWi', '1234646', 3874, NULL, 'C', 'A', NULL, NULL, NULL, NULL, 'N', 'Y', '1', 1676725945, 'N', '2023-02-18 13:11:44', '2023-02-19 13:32:23', NULL),
(36, NULL, NULL, 'tan', 'tan', 'tan', NULL, 'tanmoy.8741@gmail.com', '7003064898', '$2y$10$3s2x0TVdnNnIyl79YiE1l.fX/uwO29fnolsjGjC07EJXBCnYz2R1m', NULL, NULL, NULL, NULL, NULL, '$2y$10$bW6RZai6soA.7d9dHfDIVuo3u6OpV5uxmOw0rmZ81VxAyD9/IcwY6', 2596, NULL, 'AD', 'A', NULL, NULL, NULL, 4, 'N', 'Y', '1', NULL, 'N', '2023-02-27 10:26:26', '2023-02-27 10:26:53', NULL),
(37, NULL, NULL, 'Demo', 'Customer', 'Demo Customer', NULL, 'd1@mailinator.com', '9087654321', '$2y$10$/HAywpSY8JZudEzb48504eNlvruV3ng6lFvaJNW2u1rg35uwgH04a', NULL, NULL, NULL, NULL, '$2y$10$w95kvaspFBqIp4jSwUPwquKzCasZADESZxFjcsw1zMj1IOnabsqZ.', '1234646', 3784, NULL, 'C', 'A', NULL, NULL, NULL, NULL, 'N', 'Y', '1', 1677525180, 'N', '2023-02-27 19:12:27', '2023-02-27 19:13:00', NULL),
(38, NULL, NULL, 'test', 'adv3', 'test adv3', NULL, 'testadv123@mailinator.com', '9087654321', '$2y$10$E3N4mXZhjye8gqHH4i2E0.Gbp2pNVyZvppanptizsz4urzd2jw1j.', NULL, NULL, NULL, NULL, NULL, '$2y$10$nK/ur3nvCBPUXOfAcXdCDOCcop3NN9zuuimeu/aX2xW0OxRayuJxe', 7628, NULL, 'AD', 'A', NULL, NULL, NULL, 4, 'N', 'Y', '1', NULL, 'N', '2023-03-20 19:01:45', '2023-03-20 19:02:16', NULL),
(39, NULL, NULL, 'Sukanta', 'Sarkar', 'Sukanta Sarkar', NULL, 'sukanta.info2@gmail.comm', '9087654321', '$2y$10$8auJg22JNukkZ.K7j5WxoudYK4mI7fiIVEJI/f04lIyMkH2Qz9/g6', NULL, NULL, NULL, NULL, NULL, '$2y$10$gDOTRkzK9jRsZta78zGaieHtG54/agGoucBzqczUd5aW9EeLswlo2', 5267, NULL, 'AD', 'A', NULL, NULL, NULL, 4, 'N', 'Y', '1', NULL, 'N', '2023-03-20 19:06:06', '2023-03-25 16:02:55', NULL),
(40, NULL, NULL, 'max', 'well', 'max well', NULL, 'maxwell@gmail.com', '9087654321', '$2y$10$hyYx9.QwlJ921461APJpfeOXt9KYKgIExuXSr.rmsxxJT5h9dcejG', NULL, NULL, NULL, NULL, '$2y$10$a.cYKtP0qhG21ZK5dz9RiubJr1Lo3YPPV2R88ejuN4n/MYz5BjyAS', '1234646', 4562, NULL, 'AD', 'A', NULL, NULL, NULL, 4, 'N', 'Y', '1', 1681230563, 'N', '2023-04-11 16:21:41', '2023-04-11 16:30:20', NULL),
(58, NULL, NULL, 'Don', 'Ker', 'Don Ker', NULL, 'donker@yopmail.com', '9876543210', NULL, NULL, NULL, NULL, 'EWfsIVKJJipnskpqNhXwoH7QWYHIGyFdPSlv0YrYHExaVYMWMtnhv41eu2jV', '$2y$10$twZvNQfmgLDFe7gWOGLmfuQv/qnn8O8yAetB2CEextZG5KfO1BFyG', '45151541', NULL, NULL, 'C', 'S', 'FB', NULL, '7896328784545147', NULL, 'N', 'Y', '1', 1683710347, 'N', '2023-05-10 09:19:07', '2023-05-10 09:19:07', NULL),
(61, NULL, NULL, NULL, NULL, NULL, NULL, 'sur2548@gmail.com', NULL, NULL, NULL, NULL, NULL, 'PRHUFT7WE609mdX8M0Vc27D2BajNlsosGrFDTedqnkUmgc60jf5uq8X9OLu5', NULL, NULL, NULL, NULL, 'C', 'S', '', 'KYCZ3ko4QO', 'AQX7Jag2Ksj0bJRa4QOQW6GCVa1P6HhCCQKitqO2rftyA_520sTViikTcVIQoFhuDtgasf7RaZ2x6SdEgVkGl95k97WQGAL1iCN0jGZWBcXazxk_F4TpLxRkJHxikSRca9CaSl5_iPKPV46QzCiHj7-UkgHg_fG5Kpg4Cmn9ScNlMcRse-06idUYgwVSsUJNTPfkSbADaoBor729vzmVulZInH9l_N0kpgNJb0-99gOoMPeuxl4StZiHdOUWkmB', NULL, 'N', 'Y', '1', NULL, 'N', '2023-05-17 11:08:54', '2023-05-17 11:08:54', NULL),
(62, NULL, NULL, 'Test', 'Test', 'Test', NULL, 'test@test.com', '9123456780', '$2y$10$69.qnmXRBQDaU/SNEEnUdeueawbdgcziCuxWlqaJfwnGVZ108Nm1K', NULL, NULL, NULL, NULL, NULL, '$2y$10$ilgC9NQ9FNSyJRoZWw74N.5ODoLFapiofZfraQFjrIny7kz75HEB2', 5763, NULL, 'AD', 'A', NULL, NULL, NULL, 4, 'N', 'Y', '0', NULL, 'N', '2023-05-18 16:12:21', '2023-05-18 16:12:21', NULL),
(63, NULL, NULL, 'Anuj', 'Sharma1', 'Anuj Sharma1', NULL, 'anujsharma@yopmail.com', '9876543210', '$2y$10$xQ3jg3YatDO9KpDzwcVBxODR6HEc/2rUX.cImrR4lnf4/YvnKm30q', NULL, NULL, NULL, NULL, '$2y$10$dmIlWUTKD09lRLlJfH4Dke4O6h5MEmUGklNWGGU4TgwV0y236ayZa', NULL, 7194, NULL, 'AD', 'A', NULL, NULL, NULL, 3, 'Y', 'Y', '1', 1686138667, 'N', '2023-06-07 06:16:47', '2023-06-07 06:28:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mits_user_details`
--

CREATE TABLE `mits_user_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'Id from users table',
  `booking_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `description` longtext DEFAULT NULL,
  `stripe_connect_id` varchar(255) DEFAULT NULL,
  `stripe_customer_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_user_details`
--

INSERT INTO `mits_user_details` (`id`, `user_id`, `booking_amount`, `description`, `stripe_connect_id`, `stripe_customer_id`) VALUES
(1, 22, 50.00, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'acct_1NDMZaH9TjF0zWqJ', NULL),
(2, 23, 35.00, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, NULL),
(3, 27, 30.00, '<p>Test Description</p>', NULL, NULL),
(5, 30, 123.00, 'vbbbb', NULL, NULL),
(6, 31, 123.00, 'vb', NULL, NULL),
(7, 32, 200.00, 'per day', NULL, NULL),
(8, 34, 350.00, 'test test test Tes', NULL, NULL),
(10, 23, 35.00, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, NULL),
(11, 27, 30.00, '<p>Test Description</p>', NULL, NULL),
(12, 30, 123.00, '<p>vbbbb</p>', NULL, NULL),
(13, 31, 123.00, '<p>vb</p>', NULL, NULL),
(14, 32, 200.00, '<p>per day</p>', NULL, NULL),
(15, 34, 350.00, '<p>test test test Tes</p>', NULL, NULL),
(18, 27, 30.00, '<p>Test Description</p>', NULL, NULL),
(19, 30, 123.00, '<p>vbbbb</p>', NULL, NULL),
(20, 31, 123.00, '<p>vb</p>', NULL, NULL),
(21, 32, 200.00, '<p>per day</p>', NULL, NULL),
(22, 34, 350.00, '<p>test test test Tes</p>', NULL, NULL),
(23, 29, 20.00, NULL, NULL, NULL),
(24, 28, 30.00, NULL, NULL, NULL),
(25, 29, 20.00, NULL, NULL, NULL),
(26, 28, 30.00, NULL, NULL, NULL),
(27, 27, 30.00, '<p>Test Description</p>', NULL, NULL),
(28, 23, 35.00, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, NULL),
(30, 34, 350.00, '<p>test test test Tes</p>', NULL, NULL),
(31, 32, 200.00, '<p>per day</p>', NULL, NULL),
(32, 31, 123.00, '<p>vb</p>', NULL, NULL),
(33, 30, 123.00, '<p>vbbbb</p>', NULL, NULL),
(34, 36, 20.00, 'ggg', NULL, NULL),
(37, 38, 45.00, 'test test', NULL, NULL),
(38, 39, 567.00, 'bbxb. nsnsns js. s', NULL, NULL),
(39, 39, 567.00, '<p>bbxb. nsnsns js. s</p>', NULL, NULL),
(40, 40, 230.00, 'Good morning', NULL, NULL),
(56, 21, 0.00, NULL, NULL, 'cus_O2Pb8UtpxfvVjC'),
(57, 63, 40.00, 'Test description', 'acct_1NGKv6HFONRudRqQ', 'cus_O2PeKrWlBvM8Ks');

-- --------------------------------------------------------

--
-- Table structure for table `mits_user_roles`
--

CREATE TABLE `mits_user_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mits_user_videos`
--

CREATE TABLE `mits_user_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `embedded_code` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_user_videos`
--

INSERT INTO `mits_user_videos` (`id`, `user_id`, `title`, `embedded_code`) VALUES
(4, 22, NULL, 'https://www.youtube.com/watch?v=TkyMeM6D0mE'),
(5, 22, NULL, 'https://www.youtube.com/watch?v=1K5QIfQzdv0'),
(6, 22, NULL, 'https://www.youtube.com/watch?v=TUWhcKiBb8k'),
(8, 23, NULL, 'Video 100'),
(9, 27, NULL, NULL),
(10, 30, NULL, 'bbbvbbb'),
(11, 30, NULL, 'kkkk'),
(12, 31, NULL, '\'vgh'),
(13, 31, NULL, 'vv'),
(14, 32, NULL, 'https://youtu.be/nhRI3I-uPAU'),
(15, 34, NULL, 'https://youtu.be/D0Gw1gQFc0Y'),
(16, 34, NULL, 'https://youtu.be/D0Gw1gQFc0Y'),
(17, 29, NULL, 'Video 1'),
(18, 28, NULL, 'Video 2'),
(19, 36, NULL, 'vvvv'),
(20, 36, NULL, 'uhh'),
(21, 38, NULL, 'https://youtu.be/K4SOnr9KvtQ'),
(22, 39, NULL, 'https://www.youtube.com/watch?v=y2Lvhpihias'),
(23, 22, NULL, 'https://www.youtube.com/watch?v=kt9hlP5-Klo'),
(24, 22, NULL, 'https://www.youtube.com/watch?v=ClsWWQ1lZr0'),
(30, 40, NULL, 'https://youtube.com/watch?v=SYO8ISzyWk4'),
(32, 40, NULL, 'https://youtube.com/watch?v=SYO8ISzyWk4'),
(36, 34, NULL, 'https://youtu.be/4dRKTZZMCGQ'),
(39, 22, NULL, 'https://www.youtube.com/watch?v=ClsWWQ1lZr0'),
(40, 63, NULL, 'https://www.youtube.com/watch?v=MbtvOKJlF10');

-- --------------------------------------------------------

--
-- Table structure for table `mits_website_settings`
--

CREATE TABLE `mits_website_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `to_email` varchar(255) DEFAULT NULL,
  `website_title` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `instagram_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `pinterest_link` varchar(255) DEFAULT NULL,
  `googleplus_link` varchar(255) DEFAULT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `rss_link` varchar(255) DEFAULT NULL,
  `dribble_link` varchar(255) DEFAULT NULL,
  `tumblr_link` varchar(255) DEFAULT NULL,
  `default_meta_title` text DEFAULT NULL,
  `default_meta_keywords` text DEFAULT NULL,
  `default_meta_description` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `map` text DEFAULT NULL,
  `footer_address` text DEFAULT NULL,
  `copyright_text` text DEFAULT NULL,
  `tag_line` text DEFAULT NULL,
  `employee_gateway` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `footer_logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mits_website_settings`
--

INSERT INTO `mits_website_settings` (`id`, `from_email`, `to_email`, `website_title`, `phone_no`, `fax`, `facebook_link`, `twitter_link`, `instagram_link`, `linkedin_link`, `pinterest_link`, `googleplus_link`, `youtube_link`, `rss_link`, `dribble_link`, `tumblr_link`, `default_meta_title`, `default_meta_keywords`, `default_meta_description`, `address`, `map`, `footer_address`, `copyright_text`, `tag_line`, `employee_gateway`, `logo`, `footer_logo`) VALUES
(1, 'admins@yopmail.com', 'admins@yopmail.com', 'Made In The Six', '9876543210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mits_bookings`
--
ALTER TABLE `mits_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_booking_attenders`
--
ALTER TABLE `mits_booking_attenders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_categories`
--
ALTER TABLE `mits_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_cms`
--
ALTER TABLE `mits_cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_comments`
--
ALTER TABLE `mits_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_contacts`
--
ALTER TABLE `mits_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_countries`
--
ALTER TABLE `mits_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_events`
--
ALTER TABLE `mits_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_event_categories`
--
ALTER TABLE `mits_event_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_event_images`
--
ALTER TABLE `mits_event_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_event_temporary_images`
--
ALTER TABLE `mits_event_temporary_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_event_videos`
--
ALTER TABLE `mits_event_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_feedback`
--
ALTER TABLE `mits_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_feedback_details`
--
ALTER TABLE `mits_feedback_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_feedback_questions`
--
ALTER TABLE `mits_feedback_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_migrations`
--
ALTER TABLE `mits_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_reviews`
--
ALTER TABLE `mits_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_roles`
--
ALTER TABLE `mits_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_role_pages`
--
ALTER TABLE `mits_role_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_temporary_bookings`
--
ALTER TABLE `mits_temporary_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_temporary_booking_attenders`
--
ALTER TABLE `mits_temporary_booking_attenders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_users`
--
ALTER TABLE `mits_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_user_details`
--
ALTER TABLE `mits_user_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_user_videos`
--
ALTER TABLE `mits_user_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mits_website_settings`
--
ALTER TABLE `mits_website_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mits_bookings`
--
ALTER TABLE `mits_bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `mits_booking_attenders`
--
ALTER TABLE `mits_booking_attenders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `mits_categories`
--
ALTER TABLE `mits_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mits_cms`
--
ALTER TABLE `mits_cms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mits_comments`
--
ALTER TABLE `mits_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `mits_contacts`
--
ALTER TABLE `mits_contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mits_countries`
--
ALTER TABLE `mits_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `mits_events`
--
ALTER TABLE `mits_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `mits_event_categories`
--
ALTER TABLE `mits_event_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mits_event_images`
--
ALTER TABLE `mits_event_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `mits_event_temporary_images`
--
ALTER TABLE `mits_event_temporary_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `mits_event_videos`
--
ALTER TABLE `mits_event_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `mits_feedback`
--
ALTER TABLE `mits_feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mits_feedback_details`
--
ALTER TABLE `mits_feedback_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mits_feedback_questions`
--
ALTER TABLE `mits_feedback_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mits_migrations`
--
ALTER TABLE `mits_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `mits_reviews`
--
ALTER TABLE `mits_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mits_roles`
--
ALTER TABLE `mits_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mits_role_pages`
--
ALTER TABLE `mits_role_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mits_temporary_bookings`
--
ALTER TABLE `mits_temporary_bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `mits_temporary_booking_attenders`
--
ALTER TABLE `mits_temporary_booking_attenders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `mits_users`
--
ALTER TABLE `mits_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `mits_user_details`
--
ALTER TABLE `mits_user_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `mits_user_videos`
--
ALTER TABLE `mits_user_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `mits_website_settings`
--
ALTER TABLE `mits_website_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
