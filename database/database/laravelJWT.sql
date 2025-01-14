-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2024 at 09:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `business_directory`
--
CREATE DATABASE IF NOT EXISTS `business_directory` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `business_directory`;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phonecode` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `phonecode`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', 93, NULL, NULL),
(2, 'AL', 'Albania', 355, NULL, NULL),
(3, 'DZ', 'Algeria', 213, NULL, NULL),
(4, 'AS', 'American Samoa', 1684, NULL, NULL),
(5, 'AD', 'Andorra', 376, NULL, NULL),
(6, 'AO', 'Angola', 244, NULL, NULL),
(7, 'AI', 'Anguilla', 1264, NULL, NULL),
(8, 'AQ', 'Antarctica', 0, NULL, NULL),
(9, 'AG', 'Antigua And Barbuda', 1268, NULL, NULL),
(10, 'AR', 'Argentina', 54, NULL, NULL),
(11, 'AM', 'Armenia', 374, NULL, NULL),
(12, 'AW', 'Aruba', 297, NULL, NULL),
(13, 'AU', 'Australia', 61, NULL, NULL),
(14, 'AT', 'Austria', 43, NULL, NULL),
(15, 'AZ', 'Azerbaijan', 994, NULL, NULL),
(16, 'BS', 'Bahamas The', 1242, NULL, NULL),
(17, 'BH', 'Bahrain', 973, NULL, NULL),
(18, 'BD', 'Bangladesh', 880, NULL, NULL),
(19, 'BB', 'Barbados', 1246, NULL, NULL),
(20, 'BY', 'Belarus', 375, NULL, NULL),
(21, 'BE', 'Belgium', 32, NULL, NULL),
(22, 'BZ', 'Belize', 501, NULL, NULL),
(23, 'BJ', 'Benin', 229, NULL, NULL),
(24, 'BM', 'Bermuda', 1441, NULL, NULL),
(25, 'BT', 'Bhutan', 975, NULL, NULL),
(26, 'BO', 'Bolivia', 591, NULL, NULL),
(27, 'BA', 'Bosnia and Herzegovina', 387, NULL, NULL),
(28, 'BW', 'Botswana', 267, NULL, NULL),
(29, 'BV', 'Bouvet Island', 0, NULL, NULL),
(30, 'BR', 'Brazil', 55, NULL, NULL),
(31, 'IO', 'British Indian Ocean Territory', 246, NULL, NULL),
(32, 'BN', 'Brunei', 673, NULL, NULL),
(33, 'BG', 'Bulgaria', 359, NULL, NULL),
(34, 'BF', 'Burkina Faso', 226, NULL, NULL),
(35, 'BI', 'Burundi', 257, NULL, NULL),
(36, 'KH', 'Cambodia', 855, NULL, NULL),
(37, 'CM', 'Cameroon', 237, NULL, NULL),
(38, 'CA', 'Canada', 1, NULL, NULL),
(39, 'CV', 'Cape Verde', 238, NULL, NULL),
(40, 'KY', 'Cayman Islands', 1345, NULL, NULL),
(41, 'CF', 'Central African Republic', 236, NULL, NULL),
(42, 'TD', 'Chad', 235, NULL, NULL),
(43, 'CL', 'Chile', 56, NULL, NULL),
(44, 'CN', 'China', 86, NULL, NULL),
(45, 'CX', 'Christmas Island', 61, NULL, NULL),
(46, 'CC', 'Cocos (Keeling) Islands', 672, NULL, NULL),
(47, 'CO', 'Colombia', 57, NULL, NULL),
(48, 'KM', 'Comoros', 269, NULL, NULL),
(49, 'CG', 'Congo', 242, NULL, NULL),
(50, 'CD', 'Congo The Democratic Republic Of The', 242, NULL, NULL),
(51, 'CK', 'Cook Islands', 682, NULL, NULL),
(52, 'CR', 'Costa Rica', 506, NULL, NULL),
(53, 'CI', 'Cote D Ivoire (Ivory Coast)', 225, NULL, NULL),
(54, 'HR', 'Croatia (Hrvatska)', 385, NULL, NULL),
(55, 'CU', 'Cuba', 53, NULL, NULL),
(56, 'CY', 'Cyprus', 357, NULL, NULL),
(57, 'CZ', 'Czech Republic', 420, NULL, NULL),
(58, 'DK', 'Denmark', 45, NULL, NULL),
(59, 'DJ', 'Djibouti', 253, NULL, NULL),
(60, 'DM', 'Dominica', 1767, NULL, NULL),
(61, 'DO', 'Dominican Republic', 1809, NULL, NULL),
(62, 'TP', 'East Timor', 670, NULL, NULL),
(63, 'EC', 'Ecuador', 593, NULL, NULL),
(64, 'EG', 'Egypt', 20, NULL, NULL),
(65, 'SV', 'El Salvador', 503, NULL, NULL),
(66, 'GQ', 'Equatorial Guinea', 240, NULL, NULL),
(67, 'ER', 'Eritrea', 291, NULL, NULL),
(68, 'EE', 'Estonia', 372, NULL, NULL),
(69, 'ET', 'Ethiopia', 251, NULL, NULL),
(70, 'XA', 'External Territories of Australia', 61, NULL, NULL),
(71, 'FK', 'Falkland Islands', 500, NULL, NULL),
(72, 'FO', 'Faroe Islands', 298, NULL, NULL),
(73, 'FJ', 'Fiji Islands', 679, NULL, NULL),
(74, 'FI', 'Finland', 358, NULL, NULL),
(75, 'FR', 'France', 33, NULL, NULL),
(76, 'GF', 'French Guiana', 594, NULL, NULL),
(77, 'PF', 'French Polynesia', 689, NULL, NULL),
(78, 'TF', 'French Southern Territories', 0, NULL, NULL),
(79, 'GA', 'Gabon', 241, NULL, NULL),
(80, 'GM', 'Gambia The', 220, NULL, NULL),
(81, 'GE', 'Georgia', 995, NULL, NULL),
(82, 'DE', 'Germany', 49, NULL, NULL),
(83, 'GH', 'Ghana', 233, NULL, NULL),
(84, 'GI', 'Gibraltar', 350, NULL, NULL),
(85, 'GR', 'Greece', 30, NULL, NULL),
(86, 'GL', 'Greenland', 299, NULL, NULL),
(87, 'GD', 'Grenada', 1473, NULL, NULL),
(88, 'GP', 'Guadeloupe', 590, NULL, NULL),
(89, 'GU', 'Guam', 1671, NULL, NULL),
(90, 'GT', 'Guatemala', 502, NULL, NULL),
(91, 'XU', 'Guernsey and Alderney', 44, NULL, NULL),
(92, 'GN', 'Guinea', 224, NULL, NULL),
(93, 'GW', 'Guinea-Bissau', 245, NULL, NULL),
(94, 'GY', 'Guyana', 592, NULL, NULL),
(95, 'HT', 'Haiti', 509, NULL, NULL),
(96, 'HM', 'Heard and McDonald Islands', 0, NULL, NULL),
(97, 'HN', 'Honduras', 504, NULL, NULL),
(98, 'HK', 'Hong Kong S.A.R.', 852, NULL, NULL),
(99, 'HU', 'Hungary', 36, NULL, NULL),
(100, 'IS', 'Iceland', 354, NULL, NULL),
(101, 'IN', 'India', 91, NULL, NULL),
(102, 'ID', 'Indonesia', 62, NULL, NULL),
(103, 'IR', 'Iran', 98, NULL, NULL),
(104, 'IQ', 'Iraq', 964, NULL, NULL),
(105, 'IE', 'Ireland', 353, NULL, NULL),
(106, 'IL', 'Israel', 972, NULL, NULL),
(107, 'IT', 'Italy', 39, NULL, NULL),
(108, 'JM', 'Jamaica', 1876, NULL, NULL),
(109, 'JP', 'Japan', 81, NULL, NULL),
(110, 'XJ', 'Jersey', 44, NULL, NULL),
(111, 'JO', 'Jordan', 962, NULL, NULL),
(112, 'KZ', 'Kazakhstan', 7, NULL, NULL),
(113, 'KE', 'Kenya', 254, NULL, NULL),
(114, 'KI', 'Kiribati', 686, NULL, NULL),
(115, 'KP', 'Korea North', 850, NULL, NULL),
(116, 'KR', 'Korea South', 82, NULL, NULL),
(117, 'KW', 'Kuwait', 965, NULL, NULL),
(118, 'KG', 'Kyrgyzstan', 996, NULL, NULL),
(119, 'LA', 'Laos', 856, NULL, NULL),
(120, 'LV', 'Latvia', 371, NULL, NULL),
(121, 'LB', 'Lebanon', 961, NULL, NULL),
(122, 'LS', 'Lesotho', 266, NULL, NULL),
(123, 'LR', 'Liberia', 231, NULL, NULL),
(124, 'LY', 'Libya', 218, NULL, NULL),
(125, 'LI', 'Liechtenstein', 423, NULL, NULL),
(126, 'LT', 'Lithuania', 370, NULL, NULL),
(127, 'LU', 'Luxembourg', 352, NULL, NULL),
(128, 'MO', 'Macau S.A.R.', 853, NULL, NULL),
(129, 'MK', 'Macedonia', 389, NULL, NULL),
(130, 'MG', 'Madagascar', 261, NULL, NULL),
(131, 'MW', 'Malawi', 265, NULL, NULL),
(132, 'MY', 'Malaysia', 60, NULL, NULL),
(133, 'MV', 'Maldives', 960, NULL, NULL),
(134, 'ML', 'Mali', 223, NULL, NULL),
(135, 'MT', 'Malta', 356, NULL, NULL),
(136, 'XM', 'Man (Isle of)', 44, NULL, NULL),
(137, 'MH', 'Marshall Islands', 692, NULL, NULL),
(138, 'MQ', 'Martinique', 596, NULL, NULL),
(139, 'MR', 'Mauritania', 222, NULL, NULL),
(140, 'MU', 'Mauritius', 230, NULL, NULL),
(141, 'YT', 'Mayotte', 269, NULL, NULL),
(142, 'MX', 'Mexico', 52, NULL, NULL),
(143, 'FM', 'Micronesia', 691, NULL, NULL),
(144, 'MD', 'Moldova', 373, NULL, NULL),
(145, 'MC', 'Monaco', 377, NULL, NULL),
(146, 'MN', 'Mongolia', 976, NULL, NULL),
(147, 'MS', 'Montserrat', 1664, NULL, NULL),
(148, 'MA', 'Morocco', 212, NULL, NULL),
(149, 'MZ', 'Mozambique', 258, NULL, NULL),
(150, 'MM', 'Myanmar', 95, NULL, NULL),
(151, 'NA', 'Namibia', 264, NULL, NULL),
(152, 'NR', 'Nauru', 674, NULL, NULL),
(153, 'NP', 'Nepal', 977, NULL, NULL),
(154, 'AN', 'Netherlands Antilles', 599, NULL, NULL),
(155, 'NL', 'Netherlands The', 31, NULL, NULL),
(156, 'NC', 'New Caledonia', 687, NULL, NULL),
(157, 'NZ', 'New Zealand', 64, NULL, NULL),
(158, 'NI', 'Nicaragua', 505, NULL, NULL),
(159, 'NE', 'Niger', 227, NULL, NULL),
(160, 'NG', 'Nigeria', 234, NULL, NULL),
(161, 'NU', 'Niue', 683, NULL, NULL),
(162, 'NF', 'Norfolk Island', 672, NULL, NULL),
(163, 'MP', 'Northern Mariana Islands', 1670, NULL, NULL),
(164, 'NO', 'Norway', 47, NULL, NULL),
(165, 'OM', 'Oman', 968, NULL, NULL),
(166, 'PK', 'Pakistan', 92, NULL, NULL),
(167, 'PW', 'Palau', 680, NULL, NULL),
(168, 'PS', 'Palestinian Territory Occupied', 970, NULL, NULL),
(169, 'PA', 'Panama', 507, NULL, NULL),
(170, 'PG', 'Papua new Guinea', 675, NULL, NULL),
(171, 'PY', 'Paraguay', 595, NULL, NULL),
(172, 'PE', 'Peru', 51, NULL, NULL),
(173, 'PH', 'Philippines', 63, NULL, NULL),
(174, 'PN', 'Pitcairn Island', 0, NULL, NULL),
(175, 'PL', 'Poland', 48, NULL, NULL),
(176, 'PT', 'Portugal', 351, NULL, NULL),
(177, 'PR', 'Puerto Rico', 1787, NULL, NULL),
(178, 'QA', 'Qatar', 974, NULL, NULL),
(179, 'RE', 'Reunion', 262, NULL, NULL),
(180, 'RO', 'Romania', 40, NULL, NULL),
(181, 'RU', 'Russia', 70, NULL, NULL),
(182, 'RW', 'Rwanda', 250, NULL, NULL),
(183, 'SH', 'Saint Helena', 290, NULL, NULL),
(184, 'KN', 'Saint Kitts And Nevis', 1869, NULL, NULL),
(185, 'LC', 'Saint Lucia', 1758, NULL, NULL),
(186, 'PM', 'Saint Pierre and Miquelon', 508, NULL, NULL),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784, NULL, NULL),
(188, 'WS', 'Samoa', 684, NULL, NULL),
(189, 'SM', 'San Marino', 378, NULL, NULL),
(190, 'ST', 'Sao Tome and Principe', 239, NULL, NULL),
(191, 'SA', 'Saudi Arabia', 966, NULL, NULL),
(192, 'SN', 'Senegal', 221, NULL, NULL),
(193, 'RS', 'Serbia', 381, NULL, NULL),
(194, 'SC', 'Seychelles', 248, NULL, NULL),
(195, 'SL', 'Sierra Leone', 232, NULL, NULL),
(196, 'SG', 'Singapore', 65, NULL, NULL),
(197, 'SK', 'Slovakia', 421, NULL, NULL),
(198, 'SI', 'Slovenia', 386, NULL, NULL),
(199, 'XG', 'Smaller Territories of the UK', 44, NULL, NULL),
(200, 'SB', 'Solomon Islands', 677, NULL, NULL),
(201, 'SO', 'Somalia', 252, NULL, NULL),
(202, 'ZA', 'South Africa', 27, NULL, NULL),
(203, 'GS', 'South Georgia', 0, NULL, NULL),
(204, 'SS', 'South Sudan', 211, NULL, NULL),
(205, 'ES', 'Spain', 34, NULL, NULL),
(206, 'LK', 'Sri Lanka', 94, NULL, NULL),
(207, 'SD', 'Sudan', 249, NULL, NULL),
(208, 'SR', 'Suriname', 597, NULL, NULL),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47, NULL, NULL),
(210, 'SZ', 'Swaziland', 268, NULL, NULL),
(211, 'SE', 'Sweden', 46, NULL, NULL),
(212, 'CH', 'Switzerland', 41, NULL, NULL),
(213, 'SY', 'Syria', 963, NULL, NULL),
(214, 'TW', 'Taiwan', 886, NULL, NULL),
(215, 'TJ', 'Tajikistan', 992, NULL, NULL),
(216, 'TZ', 'Tanzania', 255, NULL, NULL),
(217, 'TH', 'Thailand', 66, NULL, NULL),
(218, 'TG', 'Togo', 228, NULL, NULL),
(219, 'TK', 'Tokelau', 690, NULL, NULL),
(220, 'TO', 'Tonga', 676, NULL, NULL),
(221, 'TT', 'Trinidad And Tobago', 1868, NULL, NULL),
(222, 'TN', 'Tunisia', 216, NULL, NULL),
(223, 'TR', 'Turkey', 90, NULL, NULL),
(224, 'TM', 'Turkmenistan', 7370, NULL, NULL),
(225, 'TC', 'Turks And Caicos Islands', 1649, NULL, NULL),
(226, 'TV', 'Tuvalu', 688, NULL, NULL),
(227, 'UG', 'Uganda', 256, NULL, NULL),
(228, 'UA', 'Ukraine', 380, NULL, NULL),
(229, 'AE', 'United Arab Emirates', 971, NULL, NULL),
(230, 'GB', 'United Kingdom', 44, NULL, NULL),
(231, 'US', 'United States', 1, NULL, NULL),
(232, 'UM', 'United States Minor Outlying Islands', 1, NULL, NULL),
(233, 'UY', 'Uruguay', 598, NULL, NULL),
(234, 'UZ', 'Uzbekistan', 998, NULL, NULL),
(235, 'VU', 'Vanuatu', 678, NULL, NULL),
(236, 'VA', 'Vatican City State (Holy See)', 39, NULL, NULL),
(237, 'VE', 'Venezuela', 58, NULL, NULL),
(238, 'VN', 'Vietnam', 84, NULL, NULL),
(239, 'VG', 'Virgin Islands (British)', 1284, NULL, NULL),
(240, 'VI', 'Virgin Islands (US)', 1340, NULL, NULL),
(241, 'WF', 'Wallis And Futuna Islands', 681, NULL, NULL),
(242, 'EH', 'Western Sahara', 212, NULL, NULL),
(243, 'YE', 'Yemen', 967, NULL, NULL),
(244, 'YU', 'Yugoslavia', 38, NULL, NULL),
(245, 'ZM', 'Zambia', 260, NULL, NULL),
(246, 'ZW', 'Zimbabwe', 263, NULL, NULL);

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
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_type` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phonecode` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_07_14_085318_create_sessions_table', 1),
(7, '2024_07_16_093102_create_countries_table', 1),
(8, '2024_07_16_094229_create_states_table', 1),
(9, '2024_07_16_095458_create_members_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Fdz0ajcRbenqnNwXPx8Wp1sO6RIB8Sdjc44pBQLg', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmJJQTlWSHpGUmxlYjRlTHRVcTlyU2FRU3dURzJPbEhPTjc0Z3h2SSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1723802741),
('q0dQIUKupDjh1QzxWBzkHCpVBhJ9S3SgbSgAZEaC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Avast/127.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTFzNzVGUEszaWt4ZEpCV0twb1JXcmFpVVdFWTBwdkV2UUF5bW9POCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zZXR0aW5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1725511387);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Andaman and Nicobar Islands', 101, NULL, NULL),
(2, 'Andhra Pradesh', 101, NULL, NULL),
(3, 'Arunachal Pradesh', 101, NULL, NULL),
(4, 'Assam', 101, NULL, NULL),
(5, 'Bihar', 101, NULL, NULL),
(6, 'Chandigarh', 101, NULL, NULL),
(7, 'Chhattisgarh', 101, NULL, NULL),
(8, 'Dadra and Nagar Haveli', 101, NULL, NULL),
(9, 'Daman and Diu', 101, NULL, NULL),
(10, 'Delhi', 101, NULL, NULL),
(11, 'Goa', 101, NULL, NULL),
(12, 'Gujarat', 101, NULL, NULL),
(13, 'Haryana', 101, NULL, NULL),
(14, 'Himachal Pradesh', 101, NULL, NULL),
(15, 'Jammu and Kashmir', 101, NULL, NULL),
(16, 'Jharkhand', 101, NULL, NULL),
(17, 'Karnataka', 101, NULL, NULL),
(18, 'Kenmore', 101, NULL, NULL),
(19, 'Kerala', 101, NULL, NULL),
(20, 'Lakshadweep', 101, NULL, NULL),
(21, 'Madhya Pradesh', 101, NULL, NULL),
(22, 'Maharashtra', 101, NULL, NULL),
(23, 'Manipur', 101, NULL, NULL),
(24, 'Meghalaya', 101, NULL, NULL),
(25, 'Mizoram', 101, NULL, NULL),
(26, 'Nagaland', 101, NULL, NULL),
(27, 'Narora', 101, NULL, NULL),
(28, 'Natwar', 101, NULL, NULL),
(29, 'Odisha', 101, NULL, NULL),
(30, 'Paschim Medinipur', 101, NULL, NULL),
(31, 'Pondicherry', 101, NULL, NULL),
(32, 'Punjab', 101, NULL, NULL),
(33, 'Rajasthan', 101, NULL, NULL),
(34, 'Sikkim', 101, NULL, NULL),
(35, 'Tamil Nadu', 101, NULL, NULL),
(36, 'Telangana', 101, NULL, NULL),
(37, 'Tripura', 101, NULL, NULL),
(38, 'Uttar Pradesh', 101, NULL, NULL),
(39, 'Uttarakhand', 101, NULL, NULL),
(40, 'Vaishali', 101, NULL, NULL),
(41, 'West Bengal', 101, NULL, NULL),
(42, 'Badakhshan', 1, NULL, NULL),
(43, 'Badgis', 1, NULL, NULL),
(44, 'Baglan', 1, NULL, NULL),
(45, 'Balkh', 1, NULL, NULL),
(46, 'Bamiyan', 1, NULL, NULL),
(47, 'Farah', 1, NULL, NULL),
(48, 'Faryab', 1, NULL, NULL),
(49, 'Gawr', 1, NULL, NULL),
(50, 'Gazni', 1, NULL, NULL),
(51, 'Herat', 1, NULL, NULL),
(52, 'Hilmand', 1, NULL, NULL),
(53, 'Jawzjan', 1, NULL, NULL),
(54, 'Kabul', 1, NULL, NULL),
(55, 'Kapisa', 1, NULL, NULL),
(56, 'Khawst', 1, NULL, NULL),
(57, 'Kunar', 1, NULL, NULL),
(58, 'Lagman', 1, NULL, NULL),
(59, 'Lawghar', 1, NULL, NULL),
(60, 'Nangarhar', 1, NULL, NULL),
(61, 'Nimruz', 1, NULL, NULL),
(62, 'Nuristan', 1, NULL, NULL),
(63, 'Paktika', 1, NULL, NULL),
(64, 'Paktiya', 1, NULL, NULL),
(65, 'Parwan', 1, NULL, NULL),
(66, 'Qandahar', 1, NULL, NULL),
(67, 'Qunduz', 1, NULL, NULL),
(68, 'Samangan', 1, NULL, NULL),
(69, 'Sar-e Pul', 1, NULL, NULL),
(70, 'Takhar', 1, NULL, NULL),
(71, 'Uruzgan', 1, NULL, NULL),
(72, 'Wardak', 1, NULL, NULL),
(73, 'Zabul', 1, NULL, NULL),
(74, 'Berat', 2, NULL, NULL),
(75, 'Bulqize', 2, NULL, NULL),
(76, 'Delvine', 2, NULL, NULL),
(77, 'Devoll', 2, NULL, NULL),
(78, 'Dibre', 2, NULL, NULL),
(79, 'Durres', 2, NULL, NULL),
(80, 'Elbasan', 2, NULL, NULL),
(81, 'Fier', 2, NULL, NULL),
(82, 'Gjirokaster', 2, NULL, NULL),
(83, 'Gramsh', 2, NULL, NULL),
(84, 'Has', 2, NULL, NULL),
(85, 'Kavaje', 2, NULL, NULL),
(86, 'Kolonje', 2, NULL, NULL),
(87, 'Korce', 2, NULL, NULL),
(88, 'Kruje', 2, NULL, NULL),
(89, 'Kucove', 2, NULL, NULL),
(90, 'Kukes', 2, NULL, NULL),
(91, 'Kurbin', 2, NULL, NULL),
(92, 'Lezhe', 2, NULL, NULL),
(93, 'Librazhd', 2, NULL, NULL),
(94, 'Lushnje', 2, NULL, NULL),
(95, 'Mallakaster', 2, NULL, NULL),
(96, 'Malsi e Madhe', 2, NULL, NULL),
(97, 'Mat', 2, NULL, NULL),
(98, 'Mirdite', 2, NULL, NULL),
(99, 'Peqin', 2, NULL, NULL),
(100, 'Permet', 2, NULL, NULL),
(101, 'Pogradec', 2, NULL, NULL),
(102, 'Puke', 2, NULL, NULL),
(103, 'Sarande', 2, NULL, NULL),
(104, 'Shkoder', 2, NULL, NULL),
(105, 'Skrapar', 2, NULL, NULL),
(106, 'Tepelene', 2, NULL, NULL),
(107, 'Tirane', 2, NULL, NULL),
(108, 'Tropoje', 2, NULL, NULL),
(109, 'Vlore', 2, NULL, NULL),
(110, '\'Ayn Daflah', 3, NULL, NULL),
(111, '\'Ayn Tamushanat', 3, NULL, NULL),
(112, 'Adrar', 3, NULL, NULL),
(113, 'Algiers', 3, NULL, NULL),
(114, 'Annabah', 3, NULL, NULL),
(115, 'Bashshar', 3, NULL, NULL),
(116, 'Batnah', 3, NULL, NULL),
(117, 'Bijayah', 3, NULL, NULL),
(118, 'Biskrah', 3, NULL, NULL),
(119, 'Blidah', 3, NULL, NULL),
(120, 'Buirah', 3, NULL, NULL),
(121, 'Bumardas', 3, NULL, NULL),
(122, 'Burj Bu Arririj', 3, NULL, NULL),
(123, 'Ghalizan', 3, NULL, NULL),
(124, 'Ghardayah', 3, NULL, NULL),
(125, 'Ilizi', 3, NULL, NULL),
(126, 'Jijili', 3, NULL, NULL),
(127, 'Jilfah', 3, NULL, NULL),
(128, 'Khanshalah', 3, NULL, NULL),
(129, 'Masilah', 3, NULL, NULL),
(130, 'Midyah', 3, NULL, NULL),
(131, 'Milah', 3, NULL, NULL),
(132, 'Muaskar', 3, NULL, NULL),
(133, 'Mustaghanam', 3, NULL, NULL),
(134, 'Naama', 3, NULL, NULL),
(135, 'Oran', 3, NULL, NULL),
(136, 'Ouargla', 3, NULL, NULL),
(137, 'Qalmah', 3, NULL, NULL),
(138, 'Qustantinah', 3, NULL, NULL),
(139, 'Sakikdah', 3, NULL, NULL),
(140, 'Satif', 3, NULL, NULL),
(141, 'Sayda\'', 3, NULL, NULL),
(142, 'Sidi ban-al-\'Abbas', 3, NULL, NULL),
(143, 'Suq Ahras', 3, NULL, NULL),
(144, 'Tamanghasat', 3, NULL, NULL),
(145, 'Tibazah', 3, NULL, NULL),
(146, 'Tibissah', 3, NULL, NULL),
(147, 'Tilimsan', 3, NULL, NULL),
(148, 'Tinduf', 3, NULL, NULL),
(149, 'Tisamsilt', 3, NULL, NULL),
(150, 'Tiyarat', 3, NULL, NULL),
(151, 'Tizi Wazu', 3, NULL, NULL),
(152, 'Umm-al-Bawaghi', 3, NULL, NULL),
(153, 'Wahran', 3, NULL, NULL),
(154, 'Warqla', 3, NULL, NULL),
(155, 'Wilaya d Alger', 3, NULL, NULL),
(156, 'Wilaya de Bejaia', 3, NULL, NULL),
(157, 'Wilaya de Constantine', 3, NULL, NULL),
(158, 'al-Aghwat', 3, NULL, NULL),
(159, 'al-Bayadh', 3, NULL, NULL),
(160, 'al-Jaza\'ir', 3, NULL, NULL),
(161, 'al-Wad', 3, NULL, NULL),
(162, 'ash-Shalif', 3, NULL, NULL),
(163, 'at-Tarif', 3, NULL, NULL),
(164, 'Eastern', 4, NULL, NULL),
(165, 'Manu\'a', 4, NULL, NULL),
(166, 'Swains Island', 4, NULL, NULL),
(167, 'Western', 4, NULL, NULL),
(168, 'Andorra la Vella', 5, NULL, NULL),
(169, 'Canillo', 5, NULL, NULL),
(170, 'Encamp', 5, NULL, NULL),
(171, 'La Massana', 5, NULL, NULL),
(172, 'Les Escaldes', 5, NULL, NULL),
(173, 'Ordino', 5, NULL, NULL),
(174, 'Sant Julia de Loria', 5, NULL, NULL),
(175, 'Bengo', 6, NULL, NULL),
(176, 'Benguela', 6, NULL, NULL),
(177, 'Bie', 6, NULL, NULL),
(178, 'Cabinda', 6, NULL, NULL),
(179, 'Cunene', 6, NULL, NULL),
(180, 'Huambo', 6, NULL, NULL),
(181, 'Huila', 6, NULL, NULL),
(182, 'Kuando-Kubango', 6, NULL, NULL),
(183, 'Kwanza Norte', 6, NULL, NULL),
(184, 'Kwanza Sul', 6, NULL, NULL),
(185, 'Luanda', 6, NULL, NULL),
(186, 'Lunda Norte', 6, NULL, NULL),
(187, 'Lunda Sul', 6, NULL, NULL),
(188, 'Malanje', 6, NULL, NULL),
(189, 'Moxico', 6, NULL, NULL),
(190, 'Namibe', 6, NULL, NULL),
(191, 'Uige', 6, NULL, NULL),
(192, 'Zaire', 6, NULL, NULL),
(193, 'Other Provinces', 7, NULL, NULL),
(194, 'Sector claimed by Argentina/Ch', 8, NULL, NULL),
(195, 'Sector claimed by Argentina/UK', 8, NULL, NULL),
(196, 'Sector claimed by Australia', 8, NULL, NULL),
(197, 'Sector claimed by France', 8, NULL, NULL),
(198, 'Sector claimed by New Zealand', 8, NULL, NULL),
(199, 'Sector claimed by Norway', 8, NULL, NULL),
(200, 'Unclaimed Sector', 8, NULL, NULL),
(201, 'Barbuda', 9, NULL, NULL),
(202, 'Saint George', 9, NULL, NULL),
(203, 'Saint John', 9, NULL, NULL),
(204, 'Saint Mary', 9, NULL, NULL),
(205, 'Saint Paul', 9, NULL, NULL),
(206, 'Saint Peter', 9, NULL, NULL),
(207, 'Saint Philip', 9, NULL, NULL),
(208, 'Buenos Aires', 10, NULL, NULL),
(209, 'Catamarca', 10, NULL, NULL),
(210, 'Chaco', 10, NULL, NULL),
(211, 'Chubut', 10, NULL, NULL),
(212, 'Cordoba', 10, NULL, NULL),
(213, 'Corrientes', 10, NULL, NULL),
(214, 'Distrito Federal', 10, NULL, NULL),
(215, 'Entre Rios', 10, NULL, NULL),
(216, 'Formosa', 10, NULL, NULL),
(217, 'Jujuy', 10, NULL, NULL),
(218, 'La Pampa', 10, NULL, NULL),
(219, 'La Rioja', 10, NULL, NULL),
(220, 'Mendoza', 10, NULL, NULL),
(221, 'Misiones', 10, NULL, NULL),
(222, 'Neuquen', 10, NULL, NULL),
(223, 'Rio Negro', 10, NULL, NULL),
(224, 'Salta', 10, NULL, NULL),
(225, 'San Juan', 10, NULL, NULL),
(226, 'San Luis', 10, NULL, NULL),
(227, 'Santa Cruz', 10, NULL, NULL),
(228, 'Santa Fe', 10, NULL, NULL),
(229, 'Santiago del Estero', 10, NULL, NULL),
(230, 'Tierra del Fuego', 10, NULL, NULL),
(231, 'Tucuman', 10, NULL, NULL),
(232, 'Aragatsotn', 11, NULL, NULL),
(233, 'Ararat', 11, NULL, NULL),
(234, 'Armavir', 11, NULL, NULL),
(235, 'Gegharkunik', 11, NULL, NULL),
(236, 'Kotaik', 11, NULL, NULL),
(237, 'Lori', 11, NULL, NULL),
(238, 'Shirak', 11, NULL, NULL),
(239, 'Stepanakert', 11, NULL, NULL),
(240, 'Syunik', 11, NULL, NULL),
(241, 'Tavush', 11, NULL, NULL),
(242, 'Vayots Dzor', 11, NULL, NULL),
(243, 'Yerevan', 11, NULL, NULL),
(244, 'Aruba', 12, NULL, NULL),
(245, 'Auckland', 13, NULL, NULL),
(246, 'Australian Capital Territory', 13, NULL, NULL),
(247, 'Balgowlah', 13, NULL, NULL),
(248, 'Balmain', 13, NULL, NULL),
(249, 'Bankstown', 13, NULL, NULL),
(250, 'Baulkham Hills', 13, NULL, NULL),
(251, 'Bonnet Bay', 13, NULL, NULL),
(252, 'Camberwell', 13, NULL, NULL),
(253, 'Carole Park', 13, NULL, NULL),
(254, 'Castle Hill', 13, NULL, NULL),
(255, 'Caulfield', 13, NULL, NULL),
(256, 'Chatswood', 13, NULL, NULL),
(257, 'Cheltenham', 13, NULL, NULL),
(258, 'Cherrybrook', 13, NULL, NULL),
(259, 'Clayton', 13, NULL, NULL),
(260, 'Collingwood', 13, NULL, NULL),
(261, 'Frenchs Forest', 13, NULL, NULL),
(262, 'Hawthorn', 13, NULL, NULL),
(263, 'Jannnali', 13, NULL, NULL),
(264, 'Knoxfield', 13, NULL, NULL),
(265, 'Melbourne', 13, NULL, NULL),
(266, 'New South Wales', 13, NULL, NULL),
(267, 'Northern Territory', 13, NULL, NULL),
(268, 'Perth', 13, NULL, NULL),
(269, 'Queensland', 13, NULL, NULL),
(270, 'South Australia', 13, NULL, NULL),
(271, 'Tasmania', 13, NULL, NULL),
(272, 'Templestowe', 13, NULL, NULL),
(273, 'Victoria', 13, NULL, NULL),
(274, 'Werribee south', 13, NULL, NULL),
(275, 'Western Australia', 13, NULL, NULL),
(276, 'Wheeler', 13, NULL, NULL),
(277, 'Bundesland Salzburg', 14, NULL, NULL),
(278, 'Bundesland Steiermark', 14, NULL, NULL),
(279, 'Bundesland Tirol', 14, NULL, NULL),
(280, 'Burgenland', 14, NULL, NULL),
(281, 'Carinthia', 14, NULL, NULL),
(282, 'Karnten', 14, NULL, NULL),
(283, 'Liezen', 14, NULL, NULL),
(284, 'Lower Austria', 14, NULL, NULL),
(285, 'Niederosterreich', 14, NULL, NULL),
(286, 'Oberosterreich', 14, NULL, NULL),
(287, 'Salzburg', 14, NULL, NULL),
(288, 'Schleswig-Holstein', 14, NULL, NULL),
(289, 'Steiermark', 14, NULL, NULL),
(290, 'Styria', 14, NULL, NULL),
(291, 'Tirol', 14, NULL, NULL),
(292, 'Upper Austria', 14, NULL, NULL),
(293, 'Vorarlberg', 14, NULL, NULL),
(294, 'Wien', 14, NULL, NULL),
(295, 'Abseron', 15, NULL, NULL),
(296, 'Baki Sahari', 15, NULL, NULL),
(297, 'Ganca', 15, NULL, NULL),
(298, 'Ganja', 15, NULL, NULL),
(299, 'Kalbacar', 15, NULL, NULL),
(300, 'Lankaran', 15, NULL, NULL),
(301, 'Mil-Qarabax', 15, NULL, NULL),
(302, 'Mugan-Salyan', 15, NULL, NULL),
(303, 'Nagorni-Qarabax', 15, NULL, NULL),
(304, 'Naxcivan', 15, NULL, NULL),
(305, 'Priaraks', 15, NULL, NULL),
(306, 'Qazax', 15, NULL, NULL),
(307, 'Saki', 15, NULL, NULL),
(308, 'Sirvan', 15, NULL, NULL),
(309, 'Xacmaz', 15, NULL, NULL),
(310, 'Abaco', 16, NULL, NULL),
(311, 'Acklins Island', 16, NULL, NULL),
(312, 'Andros', 16, NULL, NULL),
(313, 'Berry Islands', 16, NULL, NULL),
(314, 'Biminis', 16, NULL, NULL),
(315, 'Cat Island', 16, NULL, NULL),
(316, 'Crooked Island', 16, NULL, NULL),
(317, 'Eleuthera', 16, NULL, NULL),
(318, 'Exuma and Cays', 16, NULL, NULL),
(319, 'Grand Bahama', 16, NULL, NULL),
(320, 'Inagua Islands', 16, NULL, NULL),
(321, 'Long Island', 16, NULL, NULL),
(322, 'Mayaguana', 16, NULL, NULL),
(323, 'New Providence', 16, NULL, NULL),
(324, 'Ragged Island', 16, NULL, NULL),
(325, 'Rum Cay', 16, NULL, NULL),
(326, 'San Salvador', 16, NULL, NULL),
(327, '\'Isa', 17, NULL, NULL),
(328, 'Badiyah', 17, NULL, NULL),
(329, 'Hidd', 17, NULL, NULL),
(330, 'Jidd Hafs', 17, NULL, NULL),
(331, 'Mahama', 17, NULL, NULL),
(332, 'Manama', 17, NULL, NULL),
(333, 'Sitrah', 17, NULL, NULL),
(334, 'al-Manamah', 17, NULL, NULL),
(335, 'al-Muharraq', 17, NULL, NULL),
(336, 'ar-Rifa\'a', 17, NULL, NULL),
(337, 'Bagar Hat', 18, NULL, NULL),
(338, 'Bandarban', 18, NULL, NULL),
(339, 'Barguna', 18, NULL, NULL),
(340, 'Barisal', 18, NULL, NULL),
(341, 'Bhola', 18, NULL, NULL),
(342, 'Bogora', 18, NULL, NULL),
(343, 'Brahman Bariya', 18, NULL, NULL),
(344, 'Chandpur', 18, NULL, NULL),
(345, 'Chattagam', 18, NULL, NULL),
(346, 'Chittagong Division', 18, NULL, NULL),
(347, 'Chuadanga', 18, NULL, NULL),
(348, 'Dhaka', 18, NULL, NULL),
(349, 'Dinajpur', 18, NULL, NULL),
(350, 'Faridpur', 18, NULL, NULL),
(351, 'Feni', 18, NULL, NULL),
(352, 'Gaybanda', 18, NULL, NULL),
(353, 'Gazipur', 18, NULL, NULL),
(354, 'Gopalganj', 18, NULL, NULL),
(355, 'Habiganj', 18, NULL, NULL),
(356, 'Jaipur Hat', 18, NULL, NULL),
(357, 'Jamalpur', 18, NULL, NULL),
(358, 'Jessor', 18, NULL, NULL),
(359, 'Jhalakati', 18, NULL, NULL),
(360, 'Jhanaydah', 18, NULL, NULL),
(361, 'Khagrachhari', 18, NULL, NULL),
(362, 'Khulna', 18, NULL, NULL),
(363, 'Kishorganj', 18, NULL, NULL),
(364, 'Koks Bazar', 18, NULL, NULL),
(365, 'Komilla', 18, NULL, NULL),
(366, 'Kurigram', 18, NULL, NULL),
(367, 'Kushtiya', 18, NULL, NULL),
(368, 'Lakshmipur', 18, NULL, NULL),
(369, 'Lalmanir Hat', 18, NULL, NULL),
(370, 'Madaripur', 18, NULL, NULL),
(371, 'Magura', 18, NULL, NULL),
(372, 'Maimansingh', 18, NULL, NULL),
(373, 'Manikganj', 18, NULL, NULL),
(374, 'Maulvi Bazar', 18, NULL, NULL),
(375, 'Meherpur', 18, NULL, NULL),
(376, 'Munshiganj', 18, NULL, NULL),
(377, 'Naral', 18, NULL, NULL),
(378, 'Narayanganj', 18, NULL, NULL),
(379, 'Narsingdi', 18, NULL, NULL),
(380, 'Nator', 18, NULL, NULL),
(381, 'Naugaon', 18, NULL, NULL),
(382, 'Nawabganj', 18, NULL, NULL),
(383, 'Netrakona', 18, NULL, NULL),
(384, 'Nilphamari', 18, NULL, NULL),
(385, 'Noakhali', 18, NULL, NULL),
(386, 'Pabna', 18, NULL, NULL),
(387, 'Panchagarh', 18, NULL, NULL),
(388, 'Patuakhali', 18, NULL, NULL),
(389, 'Pirojpur', 18, NULL, NULL),
(390, 'Rajbari', 18, NULL, NULL),
(391, 'Rajshahi', 18, NULL, NULL),
(392, 'Rangamati', 18, NULL, NULL),
(393, 'Rangpur', 18, NULL, NULL),
(394, 'Satkhira', 18, NULL, NULL),
(395, 'Shariatpur', 18, NULL, NULL),
(396, 'Sherpur', 18, NULL, NULL),
(397, 'Silhat', 18, NULL, NULL),
(398, 'Sirajganj', 18, NULL, NULL),
(399, 'Sunamganj', 18, NULL, NULL),
(400, 'Tangayal', 18, NULL, NULL),
(401, 'Thakurgaon', 18, NULL, NULL),
(402, 'Christ Church', 19, NULL, NULL),
(403, 'Saint Andrew', 19, NULL, NULL),
(404, 'Saint George', 19, NULL, NULL),
(405, 'Saint James', 19, NULL, NULL),
(406, 'Saint John', 19, NULL, NULL),
(407, 'Saint Joseph', 19, NULL, NULL),
(408, 'Saint Lucy', 19, NULL, NULL),
(409, 'Saint Michael', 19, NULL, NULL),
(410, 'Saint Peter', 19, NULL, NULL),
(411, 'Saint Philip', 19, NULL, NULL),
(412, 'Saint Thomas', 19, NULL, NULL),
(413, 'Brest', 20, NULL, NULL),
(414, 'Homjel\'', 20, NULL, NULL),
(415, 'Hrodna', 20, NULL, NULL),
(416, 'Mahiljow', 20, NULL, NULL),
(417, 'Mahilyowskaya Voblasts', 20, NULL, NULL),
(418, 'Minsk', 20, NULL, NULL),
(419, 'Minskaja Voblasts\'', 20, NULL, NULL),
(420, 'Petrik', 20, NULL, NULL),
(421, 'Vicebsk', 20, NULL, NULL),
(422, 'Antwerpen', 21, NULL, NULL),
(423, 'Berchem', 21, NULL, NULL),
(424, 'Brabant', 21, NULL, NULL),
(425, 'Brabant Wallon', 21, NULL, NULL),
(426, 'Brussel', 21, NULL, NULL),
(427, 'East Flanders', 21, NULL, NULL),
(428, 'Hainaut', 21, NULL, NULL),
(429, 'Liege', 21, NULL, NULL),
(430, 'Limburg', 21, NULL, NULL),
(431, 'Luxembourg', 21, NULL, NULL),
(432, 'Namur', 21, NULL, NULL),
(433, 'Ontario', 21, NULL, NULL),
(434, 'Oost-Vlaanderen', 21, NULL, NULL),
(435, 'Provincie Brabant', 21, NULL, NULL),
(436, 'Vlaams-Brabant', 21, NULL, NULL),
(437, 'Wallonne', 21, NULL, NULL),
(438, 'West-Vlaanderen', 21, NULL, NULL),
(439, 'Belize', 22, NULL, NULL),
(440, 'Cayo', 22, NULL, NULL),
(441, 'Corozal', 22, NULL, NULL),
(442, 'Orange Walk', 22, NULL, NULL),
(443, 'Stann Creek', 22, NULL, NULL),
(444, 'Toledo', 22, NULL, NULL),
(445, 'Alibori', 23, NULL, NULL),
(446, 'Atacora', 23, NULL, NULL),
(447, 'Atlantique', 23, NULL, NULL),
(448, 'Borgou', 23, NULL, NULL),
(449, 'Collines', 23, NULL, NULL),
(450, 'Couffo', 23, NULL, NULL),
(451, 'Donga', 23, NULL, NULL),
(452, 'Littoral', 23, NULL, NULL),
(453, 'Mono', 23, NULL, NULL),
(454, 'Oueme', 23, NULL, NULL),
(455, 'Plateau', 23, NULL, NULL),
(456, 'Zou', 23, NULL, NULL),
(457, 'Hamilton', 24, NULL, NULL),
(458, 'Saint George', 24, NULL, NULL),
(459, 'Bumthang', 25, NULL, NULL),
(460, 'Chhukha', 25, NULL, NULL),
(461, 'Chirang', 25, NULL, NULL),
(462, 'Daga', 25, NULL, NULL),
(463, 'Geylegphug', 25, NULL, NULL),
(464, 'Ha', 25, NULL, NULL),
(465, 'Lhuntshi', 25, NULL, NULL),
(466, 'Mongar', 25, NULL, NULL),
(467, 'Pemagatsel', 25, NULL, NULL),
(468, 'Punakha', 25, NULL, NULL),
(469, 'Rinpung', 25, NULL, NULL),
(470, 'Samchi', 25, NULL, NULL),
(471, 'Samdrup Jongkhar', 25, NULL, NULL),
(472, 'Shemgang', 25, NULL, NULL),
(473, 'Tashigang', 25, NULL, NULL),
(474, 'Timphu', 25, NULL, NULL),
(475, 'Tongsa', 25, NULL, NULL),
(476, 'Wangdiphodrang', 25, NULL, NULL),
(477, 'Beni', 26, NULL, NULL),
(478, 'Chuquisaca', 26, NULL, NULL),
(479, 'Cochabamba', 26, NULL, NULL),
(480, 'La Paz', 26, NULL, NULL),
(481, 'Oruro', 26, NULL, NULL),
(482, 'Pando', 26, NULL, NULL),
(483, 'Potosi', 26, NULL, NULL),
(484, 'Santa Cruz', 26, NULL, NULL),
(485, 'Tarija', 26, NULL, NULL),
(486, 'Federacija Bosna i Hercegovina', 27, NULL, NULL),
(487, 'Republika Srpska', 27, NULL, NULL),
(488, 'Central Bobonong', 28, NULL, NULL),
(489, 'Central Boteti', 28, NULL, NULL),
(490, 'Central Mahalapye', 28, NULL, NULL),
(491, 'Central Serowe-Palapye', 28, NULL, NULL),
(492, 'Central Tutume', 28, NULL, NULL),
(493, 'Chobe', 28, NULL, NULL),
(494, 'Francistown', 28, NULL, NULL),
(495, 'Gaborone', 28, NULL, NULL),
(496, 'Ghanzi', 28, NULL, NULL),
(497, 'Jwaneng', 28, NULL, NULL),
(498, 'Kgalagadi North', 28, NULL, NULL),
(499, 'Kgalagadi South', 28, NULL, NULL),
(500, 'Kgatleng', 28, NULL, NULL),
(501, 'Kweneng', 28, NULL, NULL),
(502, 'Lobatse', 28, NULL, NULL),
(503, 'Ngamiland', 28, NULL, NULL),
(504, 'Ngwaketse', 28, NULL, NULL),
(505, 'North East', 28, NULL, NULL),
(506, 'Okavango', 28, NULL, NULL),
(507, 'Orapa', 28, NULL, NULL),
(508, 'Selibe Phikwe', 28, NULL, NULL),
(509, 'South East', 28, NULL, NULL),
(510, 'Sowa', 28, NULL, NULL),
(511, 'Bouvet Island', 29, NULL, NULL),
(512, 'Acre', 30, NULL, NULL),
(513, 'Alagoas', 30, NULL, NULL),
(514, 'Amapa', 30, NULL, NULL),
(515, 'Amazonas', 30, NULL, NULL),
(516, 'Bahia', 30, NULL, NULL),
(517, 'Ceara', 30, NULL, NULL),
(518, 'Distrito Federal', 30, NULL, NULL),
(519, 'Espirito Santo', 30, NULL, NULL),
(520, 'Estado de Sao Paulo', 30, NULL, NULL),
(521, 'Goias', 30, NULL, NULL),
(522, 'Maranhao', 30, NULL, NULL),
(523, 'Mato Grosso', 30, NULL, NULL),
(524, 'Mato Grosso do Sul', 30, NULL, NULL),
(525, 'Minas Gerais', 30, NULL, NULL),
(526, 'Para', 30, NULL, NULL),
(527, 'Paraiba', 30, NULL, NULL),
(528, 'Parana', 30, NULL, NULL),
(529, 'Pernambuco', 30, NULL, NULL),
(530, 'Piaui', 30, NULL, NULL),
(531, 'Rio Grande do Norte', 30, NULL, NULL),
(532, 'Rio Grande do Sul', 30, NULL, NULL),
(533, 'Rio de Janeiro', 30, NULL, NULL),
(534, 'Rondonia', 30, NULL, NULL),
(535, 'Roraima', 30, NULL, NULL),
(536, 'Santa Catarina', 30, NULL, NULL),
(537, 'Sao Paulo', 30, NULL, NULL),
(538, 'Sergipe', 30, NULL, NULL),
(539, 'Tocantins', 30, NULL, NULL),
(540, 'British Indian Ocean Territory', 31, NULL, NULL),
(541, 'Belait', 32, NULL, NULL),
(542, 'Brunei-Muara', 32, NULL, NULL),
(543, 'Temburong', 32, NULL, NULL),
(544, 'Tutong', 32, NULL, NULL),
(545, 'Blagoevgrad', 33, NULL, NULL),
(546, 'Burgas', 33, NULL, NULL),
(547, 'Dobrich', 33, NULL, NULL),
(548, 'Gabrovo', 33, NULL, NULL),
(549, 'Haskovo', 33, NULL, NULL),
(550, 'Jambol', 33, NULL, NULL),
(551, 'Kardzhali', 33, NULL, NULL),
(552, 'Kjustendil', 33, NULL, NULL),
(553, 'Lovech', 33, NULL, NULL),
(554, 'Montana', 33, NULL, NULL),
(555, 'Oblast Sofiya-Grad', 33, NULL, NULL),
(556, 'Pazardzhik', 33, NULL, NULL),
(557, 'Pernik', 33, NULL, NULL),
(558, 'Pleven', 33, NULL, NULL),
(559, 'Plovdiv', 33, NULL, NULL),
(560, 'Razgrad', 33, NULL, NULL),
(561, 'Ruse', 33, NULL, NULL),
(562, 'Shumen', 33, NULL, NULL),
(563, 'Silistra', 33, NULL, NULL),
(564, 'Sliven', 33, NULL, NULL),
(565, 'Smoljan', 33, NULL, NULL),
(566, 'Sofija grad', 33, NULL, NULL),
(567, 'Sofijska oblast', 33, NULL, NULL),
(568, 'Stara Zagora', 33, NULL, NULL),
(569, 'Targovishte', 33, NULL, NULL),
(570, 'Varna', 33, NULL, NULL),
(571, 'Veliko Tarnovo', 33, NULL, NULL),
(572, 'Vidin', 33, NULL, NULL),
(573, 'Vraca', 33, NULL, NULL),
(574, 'Yablaniza', 33, NULL, NULL),
(575, 'Bale', 34, NULL, NULL),
(576, 'Bam', 34, NULL, NULL),
(577, 'Bazega', 34, NULL, NULL),
(578, 'Bougouriba', 34, NULL, NULL),
(579, 'Boulgou', 34, NULL, NULL),
(580, 'Boulkiemde', 34, NULL, NULL),
(581, 'Comoe', 34, NULL, NULL),
(582, 'Ganzourgou', 34, NULL, NULL),
(583, 'Gnagna', 34, NULL, NULL),
(584, 'Gourma', 34, NULL, NULL),
(585, 'Houet', 34, NULL, NULL),
(586, 'Ioba', 34, NULL, NULL),
(587, 'Kadiogo', 34, NULL, NULL),
(588, 'Kenedougou', 34, NULL, NULL),
(589, 'Komandjari', 34, NULL, NULL),
(590, 'Kompienga', 34, NULL, NULL),
(591, 'Kossi', 34, NULL, NULL),
(592, 'Kouritenga', 34, NULL, NULL),
(593, 'Kourweogo', 34, NULL, NULL),
(594, 'Leraba', 34, NULL, NULL),
(595, 'Mouhoun', 34, NULL, NULL),
(596, 'Nahouri', 34, NULL, NULL),
(597, 'Namentenga', 34, NULL, NULL),
(598, 'Noumbiel', 34, NULL, NULL),
(599, 'Oubritenga', 34, NULL, NULL),
(600, 'Oudalan', 34, NULL, NULL),
(601, 'Passore', 34, NULL, NULL),
(602, 'Poni', 34, NULL, NULL),
(603, 'Sanguie', 34, NULL, NULL),
(604, 'Sanmatenga', 34, NULL, NULL),
(605, 'Seno', 34, NULL, NULL),
(606, 'Sissili', 34, NULL, NULL),
(607, 'Soum', 34, NULL, NULL),
(608, 'Sourou', 34, NULL, NULL),
(609, 'Tapoa', 34, NULL, NULL),
(610, 'Tuy', 34, NULL, NULL),
(611, 'Yatenga', 34, NULL, NULL),
(612, 'Zondoma', 34, NULL, NULL),
(613, 'Zoundweogo', 34, NULL, NULL),
(614, 'Bubanza', 35, NULL, NULL),
(615, 'Bujumbura', 35, NULL, NULL),
(616, 'Bururi', 35, NULL, NULL),
(617, 'Cankuzo', 35, NULL, NULL),
(618, 'Cibitoke', 35, NULL, NULL),
(619, 'Gitega', 35, NULL, NULL),
(620, 'Karuzi', 35, NULL, NULL),
(621, 'Kayanza', 35, NULL, NULL),
(622, 'Kirundo', 35, NULL, NULL),
(623, 'Makamba', 35, NULL, NULL),
(624, 'Muramvya', 35, NULL, NULL),
(625, 'Muyinga', 35, NULL, NULL),
(626, 'Ngozi', 35, NULL, NULL),
(627, 'Rutana', 35, NULL, NULL),
(628, 'Ruyigi', 35, NULL, NULL),
(629, 'Banteay Mean Chey', 36, NULL, NULL),
(630, 'Bat Dambang', 36, NULL, NULL),
(631, 'Kampong Cham', 36, NULL, NULL),
(632, 'Kampong Chhnang', 36, NULL, NULL),
(633, 'Kampong Spoeu', 36, NULL, NULL),
(634, 'Kampong Thum', 36, NULL, NULL),
(635, 'Kampot', 36, NULL, NULL),
(636, 'Kandal', 36, NULL, NULL),
(637, 'Kaoh Kong', 36, NULL, NULL),
(638, 'Kracheh', 36, NULL, NULL),
(639, 'Krong Kaeb', 36, NULL, NULL),
(640, 'Krong Pailin', 36, NULL, NULL),
(641, 'Krong Preah Sihanouk', 36, NULL, NULL),
(642, 'Mondol Kiri', 36, NULL, NULL),
(643, 'Otdar Mean Chey', 36, NULL, NULL),
(644, 'Phnum Penh', 36, NULL, NULL),
(645, 'Pousat', 36, NULL, NULL),
(646, 'Preah Vihear', 36, NULL, NULL),
(647, 'Prey Veaeng', 36, NULL, NULL),
(648, 'Rotanak Kiri', 36, NULL, NULL),
(649, 'Siem Reab', 36, NULL, NULL),
(650, 'Stueng Traeng', 36, NULL, NULL),
(651, 'Svay Rieng', 36, NULL, NULL),
(652, 'Takaev', 36, NULL, NULL),
(653, 'Adamaoua', 37, NULL, NULL),
(654, 'Centre', 37, NULL, NULL),
(655, 'Est', 37, NULL, NULL),
(656, 'Littoral', 37, NULL, NULL),
(657, 'Nord', 37, NULL, NULL),
(658, 'Nord Extreme', 37, NULL, NULL),
(659, 'Nordouest', 37, NULL, NULL),
(660, 'Ouest', 37, NULL, NULL),
(661, 'Sud', 37, NULL, NULL),
(662, 'Sudouest', 37, NULL, NULL),
(663, 'Alberta', 38, NULL, NULL),
(664, 'British Columbia', 38, NULL, NULL),
(665, 'Manitoba', 38, NULL, NULL),
(666, 'New Brunswick', 38, NULL, NULL),
(667, 'Newfoundland and Labrador', 38, NULL, NULL),
(668, 'Northwest Territories', 38, NULL, NULL),
(669, 'Nova Scotia', 38, NULL, NULL),
(670, 'Nunavut', 38, NULL, NULL),
(671, 'Ontario', 38, NULL, NULL),
(672, 'Prince Edward Island', 38, NULL, NULL),
(673, 'Quebec', 38, NULL, NULL),
(674, 'Saskatchewan', 38, NULL, NULL),
(675, 'Yukon', 38, NULL, NULL),
(676, 'Boavista', 39, NULL, NULL),
(677, 'Brava', 39, NULL, NULL),
(678, 'Fogo', 39, NULL, NULL),
(679, 'Maio', 39, NULL, NULL),
(680, 'Sal', 39, NULL, NULL),
(681, 'Santo Antao', 39, NULL, NULL),
(682, 'Sao Nicolau', 39, NULL, NULL),
(683, 'Sao Tiago', 39, NULL, NULL),
(684, 'Sao Vicente', 39, NULL, NULL),
(685, 'Grand Cayman', 40, NULL, NULL),
(686, 'Bamingui-Bangoran', 41, NULL, NULL),
(687, 'Bangui', 41, NULL, NULL),
(688, 'Basse-Kotto', 41, NULL, NULL),
(689, 'Haut-Mbomou', 41, NULL, NULL),
(690, 'Haute-Kotto', 41, NULL, NULL),
(691, 'Kemo', 41, NULL, NULL),
(692, 'Lobaye', 41, NULL, NULL),
(693, 'Mambere-Kadei', 41, NULL, NULL),
(694, 'Mbomou', 41, NULL, NULL),
(695, 'Nana-Gribizi', 41, NULL, NULL),
(696, 'Nana-Mambere', 41, NULL, NULL),
(697, 'Ombella Mpoko', 41, NULL, NULL),
(698, 'Ouaka', 41, NULL, NULL),
(699, 'Ouham', 41, NULL, NULL),
(700, 'Ouham-Pende', 41, NULL, NULL),
(701, 'Sangha-Mbaere', 41, NULL, NULL),
(702, 'Vakaga', 41, NULL, NULL),
(703, 'Batha', 42, NULL, NULL),
(704, 'Biltine', 42, NULL, NULL),
(705, 'Bourkou-Ennedi-Tibesti', 42, NULL, NULL),
(706, 'Chari-Baguirmi', 42, NULL, NULL),
(707, 'Guera', 42, NULL, NULL),
(708, 'Kanem', 42, NULL, NULL),
(709, 'Lac', 42, NULL, NULL),
(710, 'Logone Occidental', 42, NULL, NULL),
(711, 'Logone Oriental', 42, NULL, NULL),
(712, 'Mayo-Kebbi', 42, NULL, NULL),
(713, 'Moyen-Chari', 42, NULL, NULL),
(714, 'Ouaddai', 42, NULL, NULL),
(715, 'Salamat', 42, NULL, NULL),
(716, 'Tandjile', 42, NULL, NULL),
(717, 'Aisen', 43, NULL, NULL),
(718, 'Antofagasta', 43, NULL, NULL),
(719, 'Araucania', 43, NULL, NULL),
(720, 'Atacama', 43, NULL, NULL),
(721, 'Bio Bio', 43, NULL, NULL),
(722, 'Coquimbo', 43, NULL, NULL),
(723, 'Libertador General Bernardo O\'', 43, NULL, NULL),
(724, 'Los Lagos', 43, NULL, NULL),
(725, 'Magellanes', 43, NULL, NULL),
(726, 'Maule', 43, NULL, NULL),
(727, 'Metropolitana', 43, NULL, NULL),
(728, 'Metropolitana de Santiago', 43, NULL, NULL),
(729, 'Tarapaca', 43, NULL, NULL),
(730, 'Valparaiso', 43, NULL, NULL),
(731, 'Anhui', 44, NULL, NULL),
(732, 'Anhui Province', 44, NULL, NULL),
(733, 'Anhui Sheng', 44, NULL, NULL),
(734, 'Aomen', 44, NULL, NULL),
(735, 'Beijing', 44, NULL, NULL),
(736, 'Beijing Shi', 44, NULL, NULL),
(737, 'Chongqing', 44, NULL, NULL),
(738, 'Fujian', 44, NULL, NULL),
(739, 'Fujian Sheng', 44, NULL, NULL),
(740, 'Gansu', 44, NULL, NULL),
(741, 'Guangdong', 44, NULL, NULL),
(742, 'Guangdong Sheng', 44, NULL, NULL),
(743, 'Guangxi', 44, NULL, NULL),
(744, 'Guizhou', 44, NULL, NULL),
(745, 'Hainan', 44, NULL, NULL),
(746, 'Hebei', 44, NULL, NULL),
(747, 'Heilongjiang', 44, NULL, NULL),
(748, 'Henan', 44, NULL, NULL),
(749, 'Hubei', 44, NULL, NULL),
(750, 'Hunan', 44, NULL, NULL),
(751, 'Jiangsu', 44, NULL, NULL),
(752, 'Jiangsu Sheng', 44, NULL, NULL),
(753, 'Jiangxi', 44, NULL, NULL),
(754, 'Jilin', 44, NULL, NULL),
(755, 'Liaoning', 44, NULL, NULL),
(756, 'Liaoning Sheng', 44, NULL, NULL),
(757, 'Nei Monggol', 44, NULL, NULL),
(758, 'Ningxia Hui', 44, NULL, NULL),
(759, 'Qinghai', 44, NULL, NULL),
(760, 'Shaanxi', 44, NULL, NULL),
(761, 'Shandong', 44, NULL, NULL),
(762, 'Shandong Sheng', 44, NULL, NULL),
(763, 'Shanghai', 44, NULL, NULL),
(764, 'Shanxi', 44, NULL, NULL),
(765, 'Sichuan', 44, NULL, NULL),
(766, 'Tianjin', 44, NULL, NULL),
(767, 'Xianggang', 44, NULL, NULL),
(768, 'Xinjiang', 44, NULL, NULL),
(769, 'Xizang', 44, NULL, NULL),
(770, 'Yunnan', 44, NULL, NULL),
(771, 'Zhejiang', 44, NULL, NULL),
(772, 'Zhejiang Sheng', 44, NULL, NULL),
(773, 'Christmas Island', 45, NULL, NULL),
(774, 'Cocos (Keeling) Islands', 46, NULL, NULL),
(775, 'Amazonas', 47, NULL, NULL),
(776, 'Antioquia', 47, NULL, NULL),
(777, 'Arauca', 47, NULL, NULL),
(778, 'Atlantico', 47, NULL, NULL),
(779, 'Bogota', 47, NULL, NULL),
(780, 'Bolivar', 47, NULL, NULL),
(781, 'Boyaca', 47, NULL, NULL),
(782, 'Caldas', 47, NULL, NULL),
(783, 'Caqueta', 47, NULL, NULL),
(784, 'Casanare', 47, NULL, NULL),
(785, 'Cauca', 47, NULL, NULL),
(786, 'Cesar', 47, NULL, NULL),
(787, 'Choco', 47, NULL, NULL),
(788, 'Cordoba', 47, NULL, NULL),
(789, 'Cundinamarca', 47, NULL, NULL),
(790, 'Guainia', 47, NULL, NULL),
(791, 'Guaviare', 47, NULL, NULL),
(792, 'Huila', 47, NULL, NULL),
(793, 'La Guajira', 47, NULL, NULL),
(794, 'Magdalena', 47, NULL, NULL),
(795, 'Meta', 47, NULL, NULL),
(796, 'Narino', 47, NULL, NULL),
(797, 'Norte de Santander', 47, NULL, NULL),
(798, 'Putumayo', 47, NULL, NULL),
(799, 'Quindio', 47, NULL, NULL),
(800, 'Risaralda', 47, NULL, NULL),
(801, 'San Andres y Providencia', 47, NULL, NULL),
(802, 'Santander', 47, NULL, NULL),
(803, 'Sucre', 47, NULL, NULL),
(804, 'Tolima', 47, NULL, NULL),
(805, 'Valle del Cauca', 47, NULL, NULL),
(806, 'Vaupes', 47, NULL, NULL),
(807, 'Vichada', 47, NULL, NULL),
(808, 'Mwali', 48, NULL, NULL),
(809, 'Njazidja', 48, NULL, NULL),
(810, 'Nzwani', 48, NULL, NULL),
(811, 'Bouenza', 49, NULL, NULL),
(812, 'Brazzaville', 49, NULL, NULL),
(813, 'Cuvette', 49, NULL, NULL),
(814, 'Kouilou', 49, NULL, NULL),
(815, 'Lekoumou', 49, NULL, NULL),
(816, 'Likouala', 49, NULL, NULL),
(817, 'Niari', 49, NULL, NULL),
(818, 'Plateaux', 49, NULL, NULL),
(819, 'Pool', 49, NULL, NULL),
(820, 'Sangha', 49, NULL, NULL),
(821, 'Bandundu', 50, NULL, NULL),
(822, 'Bas-Congo', 50, NULL, NULL),
(823, 'Equateur', 50, NULL, NULL),
(824, 'Haut-Congo', 50, NULL, NULL),
(825, 'Kasai-Occidental', 50, NULL, NULL),
(826, 'Kasai-Oriental', 50, NULL, NULL),
(827, 'Katanga', 50, NULL, NULL),
(828, 'Kinshasa', 50, NULL, NULL),
(829, 'Maniema', 50, NULL, NULL),
(830, 'Nord-Kivu', 50, NULL, NULL),
(831, 'Sud-Kivu', 50, NULL, NULL),
(832, 'Aitutaki', 51, NULL, NULL),
(833, 'Atiu', 51, NULL, NULL),
(834, 'Mangaia', 51, NULL, NULL),
(835, 'Manihiki', 51, NULL, NULL),
(836, 'Mauke', 51, NULL, NULL),
(837, 'Mitiaro', 51, NULL, NULL),
(838, 'Nassau', 51, NULL, NULL),
(839, 'Pukapuka', 51, NULL, NULL),
(840, 'Rakahanga', 51, NULL, NULL),
(841, 'Rarotonga', 51, NULL, NULL),
(842, 'Tongareva', 51, NULL, NULL),
(843, 'Alajuela', 52, NULL, NULL),
(844, 'Cartago', 52, NULL, NULL),
(845, 'Guanacaste', 52, NULL, NULL),
(846, 'Heredia', 52, NULL, NULL),
(847, 'Limon', 52, NULL, NULL),
(848, 'Puntarenas', 52, NULL, NULL),
(849, 'San Jose', 52, NULL, NULL),
(850, 'Abidjan', 53, NULL, NULL),
(851, 'Agneby', 53, NULL, NULL),
(852, 'Bafing', 53, NULL, NULL),
(853, 'Denguele', 53, NULL, NULL),
(854, 'Dix-huit Montagnes', 53, NULL, NULL),
(855, 'Fromager', 53, NULL, NULL),
(856, 'Haut-Sassandra', 53, NULL, NULL),
(857, 'Lacs', 53, NULL, NULL),
(858, 'Lagunes', 53, NULL, NULL),
(859, 'Marahoue', 53, NULL, NULL),
(860, 'Moyen-Cavally', 53, NULL, NULL),
(861, 'Moyen-Comoe', 53, NULL, NULL),
(862, 'N\'zi-Comoe', 53, NULL, NULL),
(863, 'Sassandra', 53, NULL, NULL),
(864, 'Savanes', 53, NULL, NULL),
(865, 'Sud-Bandama', 53, NULL, NULL),
(866, 'Sud-Comoe', 53, NULL, NULL),
(867, 'Vallee du Bandama', 53, NULL, NULL),
(868, 'Worodougou', 53, NULL, NULL),
(869, 'Zanzan', 53, NULL, NULL),
(870, 'Bjelovar-Bilogora', 54, NULL, NULL),
(871, 'Dubrovnik-Neretva', 54, NULL, NULL),
(872, 'Grad Zagreb', 54, NULL, NULL),
(873, 'Istra', 54, NULL, NULL),
(874, 'Karlovac', 54, NULL, NULL),
(875, 'Koprivnica-Krizhevci', 54, NULL, NULL),
(876, 'Krapina-Zagorje', 54, NULL, NULL),
(877, 'Lika-Senj', 54, NULL, NULL),
(878, 'Medhimurje', 54, NULL, NULL),
(879, 'Medimurska Zupanija', 54, NULL, NULL),
(880, 'Osijek-Baranja', 54, NULL, NULL),
(881, 'Osjecko-Baranjska Zupanija', 54, NULL, NULL),
(882, 'Pozhega-Slavonija', 54, NULL, NULL),
(883, 'Primorje-Gorski Kotar', 54, NULL, NULL),
(884, 'Shibenik-Knin', 54, NULL, NULL),
(885, 'Sisak-Moslavina', 54, NULL, NULL),
(886, 'Slavonski Brod-Posavina', 54, NULL, NULL),
(887, 'Split-Dalmacija', 54, NULL, NULL),
(888, 'Varazhdin', 54, NULL, NULL),
(889, 'Virovitica-Podravina', 54, NULL, NULL),
(890, 'Vukovar-Srijem', 54, NULL, NULL),
(891, 'Zadar', 54, NULL, NULL),
(892, 'Zagreb', 54, NULL, NULL),
(893, 'Camaguey', 55, NULL, NULL),
(894, 'Ciego de Avila', 55, NULL, NULL),
(895, 'Cienfuegos', 55, NULL, NULL),
(896, 'Ciudad de la Habana', 55, NULL, NULL),
(897, 'Granma', 55, NULL, NULL),
(898, 'Guantanamo', 55, NULL, NULL),
(899, 'Habana', 55, NULL, NULL),
(900, 'Holguin', 55, NULL, NULL),
(901, 'Isla de la Juventud', 55, NULL, NULL),
(902, 'La Habana', 55, NULL, NULL),
(903, 'Las Tunas', 55, NULL, NULL),
(904, 'Matanzas', 55, NULL, NULL),
(905, 'Pinar del Rio', 55, NULL, NULL),
(906, 'Sancti Spiritus', 55, NULL, NULL),
(907, 'Santiago de Cuba', 55, NULL, NULL),
(908, 'Villa Clara', 55, NULL, NULL),
(909, 'Government controlled area', 56, NULL, NULL),
(910, 'Limassol', 56, NULL, NULL),
(911, 'Nicosia District', 56, NULL, NULL),
(912, 'Paphos', 56, NULL, NULL),
(913, 'Turkish controlled area', 56, NULL, NULL),
(914, 'Central Bohemian', 57, NULL, NULL),
(915, 'Frycovice', 57, NULL, NULL),
(916, 'Jihocesky Kraj', 57, NULL, NULL),
(917, 'Jihochesky', 57, NULL, NULL),
(918, 'Jihomoravsky', 57, NULL, NULL),
(919, 'Karlovarsky', 57, NULL, NULL),
(920, 'Klecany', 57, NULL, NULL),
(921, 'Kralovehradecky', 57, NULL, NULL),
(922, 'Liberecky', 57, NULL, NULL),
(923, 'Lipov', 57, NULL, NULL),
(924, 'Moravskoslezsky', 57, NULL, NULL),
(925, 'Olomoucky', 57, NULL, NULL),
(926, 'Olomoucky Kraj', 57, NULL, NULL),
(927, 'Pardubicky', 57, NULL, NULL),
(928, 'Plzensky', 57, NULL, NULL),
(929, 'Praha', 57, NULL, NULL),
(930, 'Rajhrad', 57, NULL, NULL),
(931, 'Smirice', 57, NULL, NULL),
(932, 'South Moravian', 57, NULL, NULL),
(933, 'Straz nad Nisou', 57, NULL, NULL),
(934, 'Stredochesky', 57, NULL, NULL),
(935, 'Unicov', 57, NULL, NULL),
(936, 'Ustecky', 57, NULL, NULL),
(937, 'Valletta', 57, NULL, NULL),
(938, 'Velesin', 57, NULL, NULL),
(939, 'Vysochina', 57, NULL, NULL),
(940, 'Zlinsky', 57, NULL, NULL),
(941, 'Arhus', 58, NULL, NULL),
(942, 'Bornholm', 58, NULL, NULL),
(943, 'Frederiksborg', 58, NULL, NULL),
(944, 'Fyn', 58, NULL, NULL),
(945, 'Hovedstaden', 58, NULL, NULL),
(946, 'Kobenhavn', 58, NULL, NULL),
(947, 'Kobenhavns Amt', 58, NULL, NULL),
(948, 'Kobenhavns Kommune', 58, NULL, NULL),
(949, 'Nordjylland', 58, NULL, NULL),
(950, 'Ribe', 58, NULL, NULL),
(951, 'Ringkobing', 58, NULL, NULL),
(952, 'Roervig', 58, NULL, NULL),
(953, 'Roskilde', 58, NULL, NULL),
(954, 'Roslev', 58, NULL, NULL),
(955, 'Sjaelland', 58, NULL, NULL),
(956, 'Soeborg', 58, NULL, NULL),
(957, 'Sonderjylland', 58, NULL, NULL),
(958, 'Storstrom', 58, NULL, NULL),
(959, 'Syddanmark', 58, NULL, NULL),
(960, 'Toelloese', 58, NULL, NULL),
(961, 'Vejle', 58, NULL, NULL),
(962, 'Vestsjalland', 58, NULL, NULL),
(963, 'Viborg', 58, NULL, NULL),
(964, '\'Ali Sabih', 59, NULL, NULL),
(965, 'Dikhil', 59, NULL, NULL),
(966, 'Jibuti', 59, NULL, NULL),
(967, 'Tajurah', 59, NULL, NULL),
(968, 'Ubuk', 59, NULL, NULL),
(969, 'Saint Andrew', 60, NULL, NULL),
(970, 'Saint David', 60, NULL, NULL),
(971, 'Saint George', 60, NULL, NULL),
(972, 'Saint John', 60, NULL, NULL),
(973, 'Saint Joseph', 60, NULL, NULL),
(974, 'Saint Luke', 60, NULL, NULL),
(975, 'Saint Mark', 60, NULL, NULL),
(976, 'Saint Patrick', 60, NULL, NULL),
(977, 'Saint Paul', 60, NULL, NULL),
(978, 'Saint Peter', 60, NULL, NULL),
(979, 'Azua', 61, NULL, NULL),
(980, 'Bahoruco', 61, NULL, NULL),
(981, 'Barahona', 61, NULL, NULL),
(982, 'Dajabon', 61, NULL, NULL),
(983, 'Distrito Nacional', 61, NULL, NULL),
(984, 'Duarte', 61, NULL, NULL),
(985, 'El Seybo', 61, NULL, NULL),
(986, 'Elias Pina', 61, NULL, NULL),
(987, 'Espaillat', 61, NULL, NULL),
(988, 'Hato Mayor', 61, NULL, NULL),
(989, 'Independencia', 61, NULL, NULL),
(990, 'La Altagracia', 61, NULL, NULL),
(991, 'La Romana', 61, NULL, NULL),
(992, 'La Vega', 61, NULL, NULL),
(993, 'Maria Trinidad Sanchez', 61, NULL, NULL),
(994, 'Monsenor Nouel', 61, NULL, NULL),
(995, 'Monte Cristi', 61, NULL, NULL),
(996, 'Monte Plata', 61, NULL, NULL),
(997, 'Pedernales', 61, NULL, NULL),
(998, 'Peravia', 61, NULL, NULL),
(999, 'Puerto Plata', 61, NULL, NULL),
(1000, 'Salcedo', 61, NULL, NULL),
(1001, 'Samana', 61, NULL, NULL),
(1002, 'San Cristobal', 61, NULL, NULL),
(1003, 'San Juan', 61, NULL, NULL),
(1004, 'San Pedro de Macoris', 61, NULL, NULL),
(1005, 'Sanchez Ramirez', 61, NULL, NULL),
(1006, 'Santiago', 61, NULL, NULL),
(1007, 'Santiago Rodriguez', 61, NULL, NULL),
(1008, 'Valverde', 61, NULL, NULL),
(1009, 'Aileu', 62, NULL, NULL),
(1010, 'Ainaro', 62, NULL, NULL),
(1011, 'Ambeno', 62, NULL, NULL),
(1012, 'Baucau', 62, NULL, NULL),
(1013, 'Bobonaro', 62, NULL, NULL),
(1014, 'Cova Lima', 62, NULL, NULL),
(1015, 'Dili', 62, NULL, NULL),
(1016, 'Ermera', 62, NULL, NULL),
(1017, 'Lautem', 62, NULL, NULL),
(1018, 'Liquica', 62, NULL, NULL),
(1019, 'Manatuto', 62, NULL, NULL),
(1020, 'Manufahi', 62, NULL, NULL),
(1021, 'Viqueque', 62, NULL, NULL),
(1022, 'Azuay', 63, NULL, NULL),
(1023, 'Bolivar', 63, NULL, NULL),
(1024, 'Canar', 63, NULL, NULL),
(1025, 'Carchi', 63, NULL, NULL),
(1026, 'Chimborazo', 63, NULL, NULL),
(1027, 'Cotopaxi', 63, NULL, NULL),
(1028, 'El Oro', 63, NULL, NULL),
(1029, 'Esmeraldas', 63, NULL, NULL),
(1030, 'Galapagos', 63, NULL, NULL),
(1031, 'Guayas', 63, NULL, NULL),
(1032, 'Imbabura', 63, NULL, NULL),
(1033, 'Loja', 63, NULL, NULL),
(1034, 'Los Rios', 63, NULL, NULL),
(1035, 'Manabi', 63, NULL, NULL),
(1036, 'Morona Santiago', 63, NULL, NULL),
(1037, 'Napo', 63, NULL, NULL),
(1038, 'Orellana', 63, NULL, NULL),
(1039, 'Pastaza', 63, NULL, NULL),
(1040, 'Pichincha', 63, NULL, NULL),
(1041, 'Sucumbios', 63, NULL, NULL),
(1042, 'Tungurahua', 63, NULL, NULL),
(1043, 'Zamora Chinchipe', 63, NULL, NULL),
(1044, 'Aswan', 64, NULL, NULL),
(1045, 'Asyut', 64, NULL, NULL),
(1046, 'Bani Suwayf', 64, NULL, NULL),
(1047, 'Bur Sa\'id', 64, NULL, NULL),
(1048, 'Cairo', 64, NULL, NULL),
(1049, 'Dumyat', 64, NULL, NULL),
(1050, 'Kafr-ash-Shaykh', 64, NULL, NULL),
(1051, 'Matruh', 64, NULL, NULL),
(1052, 'Muhafazat ad Daqahliyah', 64, NULL, NULL),
(1053, 'Muhafazat al Fayyum', 64, NULL, NULL),
(1054, 'Muhafazat al Gharbiyah', 64, NULL, NULL),
(1055, 'Muhafazat al Iskandariyah', 64, NULL, NULL),
(1056, 'Muhafazat al Qahirah', 64, NULL, NULL),
(1057, 'Qina', 64, NULL, NULL),
(1058, 'Sawhaj', 64, NULL, NULL),
(1059, 'Sina al-Janubiyah', 64, NULL, NULL),
(1060, 'Sina ash-Shamaliyah', 64, NULL, NULL),
(1061, 'ad-Daqahliyah', 64, NULL, NULL),
(1062, 'al-Bahr-al-Ahmar', 64, NULL, NULL),
(1063, 'al-Buhayrah', 64, NULL, NULL),
(1064, 'al-Fayyum', 64, NULL, NULL),
(1065, 'al-Gharbiyah', 64, NULL, NULL),
(1066, 'al-Iskandariyah', 64, NULL, NULL),
(1067, 'al-Ismailiyah', 64, NULL, NULL),
(1068, 'al-Jizah', 64, NULL, NULL),
(1069, 'al-Minufiyah', 64, NULL, NULL),
(1070, 'al-Minya', 64, NULL, NULL),
(1071, 'al-Qahira', 64, NULL, NULL),
(1072, 'al-Qalyubiyah', 64, NULL, NULL),
(1073, 'al-Uqsur', 64, NULL, NULL),
(1074, 'al-Wadi al-Jadid', 64, NULL, NULL),
(1075, 'as-Suways', 64, NULL, NULL),
(1076, 'ash-Sharqiyah', 64, NULL, NULL),
(1077, 'Ahuachapan', 65, NULL, NULL),
(1078, 'Cabanas', 65, NULL, NULL),
(1079, 'Chalatenango', 65, NULL, NULL),
(1080, 'Cuscatlan', 65, NULL, NULL),
(1081, 'La Libertad', 65, NULL, NULL),
(1082, 'La Paz', 65, NULL, NULL),
(1083, 'La Union', 65, NULL, NULL),
(1084, 'Morazan', 65, NULL, NULL),
(1085, 'San Miguel', 65, NULL, NULL),
(1086, 'San Salvador', 65, NULL, NULL),
(1087, 'San Vicente', 65, NULL, NULL),
(1088, 'Santa Ana', 65, NULL, NULL),
(1089, 'Sonsonate', 65, NULL, NULL),
(1090, 'Usulutan', 65, NULL, NULL),
(1091, 'Annobon', 66, NULL, NULL),
(1092, 'Bioko Norte', 66, NULL, NULL),
(1093, 'Bioko Sur', 66, NULL, NULL),
(1094, 'Centro Sur', 66, NULL, NULL),
(1095, 'Kie-Ntem', 66, NULL, NULL),
(1096, 'Litoral', 66, NULL, NULL),
(1097, 'Wele-Nzas', 66, NULL, NULL),
(1098, 'Anseba', 67, NULL, NULL),
(1099, 'Debub', 67, NULL, NULL),
(1100, 'Debub-Keih-Bahri', 67, NULL, NULL),
(1101, 'Gash-Barka', 67, NULL, NULL),
(1102, 'Maekel', 67, NULL, NULL),
(1103, 'Semien-Keih-Bahri', 67, NULL, NULL),
(1104, 'Harju', 68, NULL, NULL),
(1105, 'Hiiu', 68, NULL, NULL),
(1106, 'Ida-Viru', 68, NULL, NULL),
(1107, 'Jarva', 68, NULL, NULL),
(1108, 'Jogeva', 68, NULL, NULL),
(1109, 'Laane', 68, NULL, NULL),
(1110, 'Laane-Viru', 68, NULL, NULL),
(1111, 'Parnu', 68, NULL, NULL),
(1112, 'Polva', 68, NULL, NULL),
(1113, 'Rapla', 68, NULL, NULL),
(1114, 'Saare', 68, NULL, NULL),
(1115, 'Tartu', 68, NULL, NULL),
(1116, 'Valga', 68, NULL, NULL),
(1117, 'Viljandi', 68, NULL, NULL),
(1118, 'Voru', 68, NULL, NULL),
(1119, 'Addis Abeba', 69, NULL, NULL),
(1120, 'Afar', 69, NULL, NULL),
(1121, 'Amhara', 69, NULL, NULL),
(1122, 'Benishangul', 69, NULL, NULL),
(1123, 'Diredawa', 69, NULL, NULL),
(1124, 'Gambella', 69, NULL, NULL),
(1125, 'Harar', 69, NULL, NULL),
(1126, 'Jigjiga', 69, NULL, NULL),
(1127, 'Mekele', 69, NULL, NULL),
(1128, 'Oromia', 69, NULL, NULL),
(1129, 'Somali', 69, NULL, NULL),
(1130, 'Southern', 69, NULL, NULL),
(1131, 'Tigray', 69, NULL, NULL),
(1132, 'Christmas Island', 70, NULL, NULL),
(1133, 'Cocos Islands', 70, NULL, NULL),
(1134, 'Coral Sea Islands', 70, NULL, NULL),
(1135, 'Falkland Islands', 71, NULL, NULL),
(1136, 'South Georgia', 71, NULL, NULL),
(1137, 'Klaksvik', 72, NULL, NULL),
(1138, 'Nor ara Eysturoy', 72, NULL, NULL),
(1139, 'Nor oy', 72, NULL, NULL),
(1140, 'Sandoy', 72, NULL, NULL),
(1141, 'Streymoy', 72, NULL, NULL),
(1142, 'Su uroy', 72, NULL, NULL),
(1143, 'Sy ra Eysturoy', 72, NULL, NULL),
(1144, 'Torshavn', 72, NULL, NULL),
(1145, 'Vaga', 72, NULL, NULL),
(1146, 'Central', 73, NULL, NULL),
(1147, 'Eastern', 73, NULL, NULL),
(1148, 'Northern', 73, NULL, NULL),
(1149, 'South Pacific', 73, NULL, NULL),
(1150, 'Western', 73, NULL, NULL),
(1151, 'Ahvenanmaa', 74, NULL, NULL),
(1152, 'Etela-Karjala', 74, NULL, NULL),
(1153, 'Etela-Pohjanmaa', 74, NULL, NULL),
(1154, 'Etela-Savo', 74, NULL, NULL),
(1155, 'Etela-Suomen Laani', 74, NULL, NULL),
(1156, 'Ita-Suomen Laani', 74, NULL, NULL),
(1157, 'Ita-Uusimaa', 74, NULL, NULL),
(1158, 'Kainuu', 74, NULL, NULL),
(1159, 'Kanta-Hame', 74, NULL, NULL),
(1160, 'Keski-Pohjanmaa', 74, NULL, NULL),
(1161, 'Keski-Suomi', 74, NULL, NULL),
(1162, 'Kymenlaakso', 74, NULL, NULL),
(1163, 'Lansi-Suomen Laani', 74, NULL, NULL),
(1164, 'Lappi', 74, NULL, NULL),
(1165, 'Northern Savonia', 74, NULL, NULL),
(1166, 'Ostrobothnia', 74, NULL, NULL),
(1167, 'Oulun Laani', 74, NULL, NULL),
(1168, 'Paijat-Hame', 74, NULL, NULL),
(1169, 'Pirkanmaa', 74, NULL, NULL),
(1170, 'Pohjanmaa', 74, NULL, NULL),
(1171, 'Pohjois-Karjala', 74, NULL, NULL),
(1172, 'Pohjois-Pohjanmaa', 74, NULL, NULL),
(1173, 'Pohjois-Savo', 74, NULL, NULL),
(1174, 'Saarijarvi', 74, NULL, NULL),
(1175, 'Satakunta', 74, NULL, NULL),
(1176, 'Southern Savonia', 74, NULL, NULL),
(1177, 'Tavastia Proper', 74, NULL, NULL),
(1178, 'Uleaborgs Lan', 74, NULL, NULL),
(1179, 'Uusimaa', 74, NULL, NULL),
(1180, 'Varsinais-Suomi', 74, NULL, NULL),
(1181, 'Ain', 75, NULL, NULL),
(1182, 'Aisne', 75, NULL, NULL),
(1183, 'Albi Le Sequestre', 75, NULL, NULL),
(1184, 'Allier', 75, NULL, NULL),
(1185, 'Alpes-Cote dAzur', 75, NULL, NULL),
(1186, 'Alpes-Maritimes', 75, NULL, NULL),
(1187, 'Alpes-de-Haute-Provence', 75, NULL, NULL),
(1188, 'Alsace', 75, NULL, NULL),
(1189, 'Aquitaine', 75, NULL, NULL),
(1190, 'Ardeche', 75, NULL, NULL),
(1191, 'Ardennes', 75, NULL, NULL),
(1192, 'Ariege', 75, NULL, NULL),
(1193, 'Aube', 75, NULL, NULL),
(1194, 'Aude', 75, NULL, NULL),
(1195, 'Auvergne', 75, NULL, NULL),
(1196, 'Aveyron', 75, NULL, NULL),
(1197, 'Bas-Rhin', 75, NULL, NULL),
(1198, 'Basse-Normandie', 75, NULL, NULL),
(1199, 'Bouches-du-Rhone', 75, NULL, NULL),
(1200, 'Bourgogne', 75, NULL, NULL),
(1201, 'Bretagne', 75, NULL, NULL),
(1202, 'Brittany', 75, NULL, NULL),
(1203, 'Burgundy', 75, NULL, NULL),
(1204, 'Calvados', 75, NULL, NULL),
(1205, 'Cantal', 75, NULL, NULL),
(1206, 'Cedex', 75, NULL, NULL),
(1207, 'Centre', 75, NULL, NULL),
(1208, 'Charente', 75, NULL, NULL),
(1209, 'Charente-Maritime', 75, NULL, NULL),
(1210, 'Cher', 75, NULL, NULL),
(1211, 'Correze', 75, NULL, NULL),
(1212, 'Corse-du-Sud', 75, NULL, NULL),
(1213, 'Cote-d\'Or', 75, NULL, NULL),
(1214, 'Cotes-d\'Armor', 75, NULL, NULL),
(1215, 'Creuse', 75, NULL, NULL),
(1216, 'Crolles', 75, NULL, NULL),
(1217, 'Deux-Sevres', 75, NULL, NULL),
(1218, 'Dordogne', 75, NULL, NULL),
(1219, 'Doubs', 75, NULL, NULL),
(1220, 'Drome', 75, NULL, NULL),
(1221, 'Essonne', 75, NULL, NULL),
(1222, 'Eure', 75, NULL, NULL),
(1223, 'Eure-et-Loir', 75, NULL, NULL),
(1224, 'Feucherolles', 75, NULL, NULL),
(1225, 'Finistere', 75, NULL, NULL),
(1226, 'Franche-Comte', 75, NULL, NULL),
(1227, 'Gard', 75, NULL, NULL),
(1228, 'Gers', 75, NULL, NULL),
(1229, 'Gironde', 75, NULL, NULL),
(1230, 'Haut-Rhin', 75, NULL, NULL),
(1231, 'Haute-Corse', 75, NULL, NULL),
(1232, 'Haute-Garonne', 75, NULL, NULL),
(1233, 'Haute-Loire', 75, NULL, NULL),
(1234, 'Haute-Marne', 75, NULL, NULL),
(1235, 'Haute-Saone', 75, NULL, NULL),
(1236, 'Haute-Savoie', 75, NULL, NULL),
(1237, 'Haute-Vienne', 75, NULL, NULL),
(1238, 'Hautes-Alpes', 75, NULL, NULL),
(1239, 'Hautes-Pyrenees', 75, NULL, NULL),
(1240, 'Hauts-de-Seine', 75, NULL, NULL),
(1241, 'Herault', 75, NULL, NULL),
(1242, 'Ile-de-France', 75, NULL, NULL),
(1243, 'Ille-et-Vilaine', 75, NULL, NULL),
(1244, 'Indre', 75, NULL, NULL),
(1245, 'Indre-et-Loire', 75, NULL, NULL),
(1246, 'Isere', 75, NULL, NULL),
(1247, 'Jura', 75, NULL, NULL),
(1248, 'Klagenfurt', 75, NULL, NULL),
(1249, 'Landes', 75, NULL, NULL),
(1250, 'Languedoc-Roussillon', 75, NULL, NULL),
(1251, 'Larcay', 75, NULL, NULL),
(1252, 'Le Castellet', 75, NULL, NULL),
(1253, 'Le Creusot', 75, NULL, NULL),
(1254, 'Limousin', 75, NULL, NULL),
(1255, 'Loir-et-Cher', 75, NULL, NULL),
(1256, 'Loire', 75, NULL, NULL),
(1257, 'Loire-Atlantique', 75, NULL, NULL),
(1258, 'Loiret', 75, NULL, NULL),
(1259, 'Lorraine', 75, NULL, NULL),
(1260, 'Lot', 75, NULL, NULL),
(1261, 'Lot-et-Garonne', 75, NULL, NULL),
(1262, 'Lower Normandy', 75, NULL, NULL),
(1263, 'Lozere', 75, NULL, NULL),
(1264, 'Maine-et-Loire', 75, NULL, NULL),
(1265, 'Manche', 75, NULL, NULL),
(1266, 'Marne', 75, NULL, NULL),
(1267, 'Mayenne', 75, NULL, NULL),
(1268, 'Meurthe-et-Moselle', 75, NULL, NULL),
(1269, 'Meuse', 75, NULL, NULL),
(1270, 'Midi-Pyrenees', 75, NULL, NULL),
(1271, 'Morbihan', 75, NULL, NULL),
(1272, 'Moselle', 75, NULL, NULL),
(1273, 'Nievre', 75, NULL, NULL),
(1274, 'Nord', 75, NULL, NULL),
(1275, 'Nord-Pas-de-Calais', 75, NULL, NULL),
(1276, 'Oise', 75, NULL, NULL),
(1277, 'Orne', 75, NULL, NULL),
(1278, 'Paris', 75, NULL, NULL),
(1279, 'Pas-de-Calais', 75, NULL, NULL),
(1280, 'Pays de la Loire', 75, NULL, NULL),
(1281, 'Pays-de-la-Loire', 75, NULL, NULL),
(1282, 'Picardy', 75, NULL, NULL),
(1283, 'Puy-de-Dome', 75, NULL, NULL),
(1284, 'Pyrenees-Atlantiques', 75, NULL, NULL),
(1285, 'Pyrenees-Orientales', 75, NULL, NULL),
(1286, 'Quelmes', 75, NULL, NULL),
(1287, 'Rhone', 75, NULL, NULL),
(1288, 'Rhone-Alpes', 75, NULL, NULL),
(1289, 'Saint Ouen', 75, NULL, NULL),
(1290, 'Saint Viatre', 75, NULL, NULL),
(1291, 'Saone-et-Loire', 75, NULL, NULL),
(1292, 'Sarthe', 75, NULL, NULL),
(1293, 'Savoie', 75, NULL, NULL),
(1294, 'Seine-Maritime', 75, NULL, NULL),
(1295, 'Seine-Saint-Denis', 75, NULL, NULL),
(1296, 'Seine-et-Marne', 75, NULL, NULL),
(1297, 'Somme', 75, NULL, NULL),
(1298, 'Sophia Antipolis', 75, NULL, NULL),
(1299, 'Souvans', 75, NULL, NULL),
(1300, 'Tarn', 75, NULL, NULL),
(1301, 'Tarn-et-Garonne', 75, NULL, NULL),
(1302, 'Territoire de Belfort', 75, NULL, NULL),
(1303, 'Treignac', 75, NULL, NULL),
(1304, 'Upper Normandy', 75, NULL, NULL),
(1305, 'Val-d\'Oise', 75, NULL, NULL),
(1306, 'Val-de-Marne', 75, NULL, NULL),
(1307, 'Var', 75, NULL, NULL),
(1308, 'Vaucluse', 75, NULL, NULL),
(1309, 'Vellise', 75, NULL, NULL),
(1310, 'Vendee', 75, NULL, NULL),
(1311, 'Vienne', 75, NULL, NULL),
(1312, 'Vosges', 75, NULL, NULL),
(1313, 'Yonne', 75, NULL, NULL),
(1314, 'Yvelines', 75, NULL, NULL),
(1315, 'Cayenne', 76, NULL, NULL),
(1316, 'Saint-Laurent-du-Maroni', 76, NULL, NULL),
(1317, 'Iles du Vent', 77, NULL, NULL),
(1318, 'Iles sous le Vent', 77, NULL, NULL),
(1319, 'Marquesas', 77, NULL, NULL),
(1320, 'Tuamotu', 77, NULL, NULL),
(1321, 'Tubuai', 77, NULL, NULL),
(1322, 'Amsterdam', 78, NULL, NULL),
(1323, 'Crozet Islands', 78, NULL, NULL),
(1324, 'Kerguelen', 78, NULL, NULL),
(1325, 'Estuaire', 79, NULL, NULL),
(1326, 'Haut-Ogooue', 79, NULL, NULL),
(1327, 'Moyen-Ogooue', 79, NULL, NULL),
(1328, 'Ngounie', 79, NULL, NULL),
(1329, 'Nyanga', 79, NULL, NULL),
(1330, 'Ogooue-Ivindo', 79, NULL, NULL),
(1331, 'Ogooue-Lolo', 79, NULL, NULL),
(1332, 'Ogooue-Maritime', 79, NULL, NULL),
(1333, 'Woleu-Ntem', 79, NULL, NULL),
(1334, 'Banjul', 80, NULL, NULL),
(1335, 'Basse', 80, NULL, NULL),
(1336, 'Brikama', 80, NULL, NULL),
(1337, 'Janjanbureh', 80, NULL, NULL),
(1338, 'Kanifing', 80, NULL, NULL),
(1339, 'Kerewan', 80, NULL, NULL),
(1340, 'Kuntaur', 80, NULL, NULL),
(1341, 'Mansakonko', 80, NULL, NULL),
(1342, 'Abhasia', 81, NULL, NULL),
(1343, 'Ajaria', 81, NULL, NULL),
(1344, 'Guria', 81, NULL, NULL),
(1345, 'Imereti', 81, NULL, NULL),
(1346, 'Kaheti', 81, NULL, NULL),
(1347, 'Kvemo Kartli', 81, NULL, NULL),
(1348, 'Mcheta-Mtianeti', 81, NULL, NULL),
(1349, 'Racha', 81, NULL, NULL),
(1350, 'Samagrelo-Zemo Svaneti', 81, NULL, NULL),
(1351, 'Samche-Zhavaheti', 81, NULL, NULL),
(1352, 'Shida Kartli', 81, NULL, NULL),
(1353, 'Tbilisi', 81, NULL, NULL),
(1354, 'Auvergne', 82, NULL, NULL),
(1355, 'Baden-Wurttemberg', 82, NULL, NULL),
(1356, 'Bavaria', 82, NULL, NULL),
(1357, 'Bayern', 82, NULL, NULL),
(1358, 'Beilstein Wurtt', 82, NULL, NULL),
(1359, 'Berlin', 82, NULL, NULL),
(1360, 'Brandenburg', 82, NULL, NULL),
(1361, 'Bremen', 82, NULL, NULL),
(1362, 'Dreisbach', 82, NULL, NULL),
(1363, 'Freistaat Bayern', 82, NULL, NULL),
(1364, 'Hamburg', 82, NULL, NULL),
(1365, 'Hannover', 82, NULL, NULL),
(1366, 'Heroldstatt', 82, NULL, NULL),
(1367, 'Hessen', 82, NULL, NULL),
(1368, 'Kortenberg', 82, NULL, NULL),
(1369, 'Laasdorf', 82, NULL, NULL),
(1370, 'Land Baden-Wurttemberg', 82, NULL, NULL),
(1371, 'Land Bayern', 82, NULL, NULL),
(1372, 'Land Brandenburg', 82, NULL, NULL),
(1373, 'Land Hessen', 82, NULL, NULL),
(1374, 'Land Mecklenburg-Vorpommern', 82, NULL, NULL),
(1375, 'Land Nordrhein-Westfalen', 82, NULL, NULL),
(1376, 'Land Rheinland-Pfalz', 82, NULL, NULL),
(1377, 'Land Sachsen', 82, NULL, NULL),
(1378, 'Land Sachsen-Anhalt', 82, NULL, NULL),
(1379, 'Land Thuringen', 82, NULL, NULL),
(1380, 'Lower Saxony', 82, NULL, NULL),
(1381, 'Mecklenburg-Vorpommern', 82, NULL, NULL),
(1382, 'Mulfingen', 82, NULL, NULL),
(1383, 'Munich', 82, NULL, NULL),
(1384, 'Neubeuern', 82, NULL, NULL),
(1385, 'Niedersachsen', 82, NULL, NULL),
(1386, 'Noord-Holland', 82, NULL, NULL),
(1387, 'Nordrhein-Westfalen', 82, NULL, NULL),
(1388, 'North Rhine-Westphalia', 82, NULL, NULL),
(1389, 'Osterode', 82, NULL, NULL),
(1390, 'Rheinland-Pfalz', 82, NULL, NULL),
(1391, 'Rhineland-Palatinate', 82, NULL, NULL),
(1392, 'Saarland', 82, NULL, NULL),
(1393, 'Sachsen', 82, NULL, NULL),
(1394, 'Sachsen-Anhalt', 82, NULL, NULL),
(1395, 'Saxony', 82, NULL, NULL),
(1396, 'Schleswig-Holstein', 82, NULL, NULL),
(1397, 'Thuringia', 82, NULL, NULL),
(1398, 'Webling', 82, NULL, NULL),
(1399, 'Weinstrabe', 82, NULL, NULL),
(1400, 'schlobborn', 82, NULL, NULL),
(1401, 'Ashanti', 83, NULL, NULL),
(1402, 'Brong-Ahafo', 83, NULL, NULL),
(1403, 'Central', 83, NULL, NULL),
(1404, 'Eastern', 83, NULL, NULL),
(1405, 'Greater Accra', 83, NULL, NULL),
(1406, 'Northern', 83, NULL, NULL),
(1407, 'Upper East', 83, NULL, NULL),
(1408, 'Upper West', 83, NULL, NULL),
(1409, 'Volta', 83, NULL, NULL),
(1410, 'Western', 83, NULL, NULL),
(1411, 'Gibraltar', 84, NULL, NULL),
(1412, 'Acharnes', 85, NULL, NULL),
(1413, 'Ahaia', 85, NULL, NULL),
(1414, 'Aitolia kai Akarnania', 85, NULL, NULL),
(1415, 'Argolis', 85, NULL, NULL),
(1416, 'Arkadia', 85, NULL, NULL),
(1417, 'Arta', 85, NULL, NULL),
(1418, 'Attica', 85, NULL, NULL),
(1419, 'Attiki', 85, NULL, NULL),
(1420, 'Ayion Oros', 85, NULL, NULL),
(1421, 'Crete', 85, NULL, NULL),
(1422, 'Dodekanisos', 85, NULL, NULL),
(1423, 'Drama', 85, NULL, NULL),
(1424, 'Evia', 85, NULL, NULL),
(1425, 'Evritania', 85, NULL, NULL),
(1426, 'Evros', 85, NULL, NULL),
(1427, 'Evvoia', 85, NULL, NULL),
(1428, 'Florina', 85, NULL, NULL),
(1429, 'Fokis', 85, NULL, NULL),
(1430, 'Fthiotis', 85, NULL, NULL),
(1431, 'Grevena', 85, NULL, NULL),
(1432, 'Halandri', 85, NULL, NULL),
(1433, 'Halkidiki', 85, NULL, NULL),
(1434, 'Hania', 85, NULL, NULL),
(1435, 'Heraklion', 85, NULL, NULL),
(1436, 'Hios', 85, NULL, NULL),
(1437, 'Ilia', 85, NULL, NULL),
(1438, 'Imathia', 85, NULL, NULL),
(1439, 'Ioannina', 85, NULL, NULL),
(1440, 'Iraklion', 85, NULL, NULL),
(1441, 'Karditsa', 85, NULL, NULL),
(1442, 'Kastoria', 85, NULL, NULL),
(1443, 'Kavala', 85, NULL, NULL),
(1444, 'Kefallinia', 85, NULL, NULL);
INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(1445, 'Kerkira', 85, NULL, NULL),
(1446, 'Kiklades', 85, NULL, NULL),
(1447, 'Kilkis', 85, NULL, NULL),
(1448, 'Korinthia', 85, NULL, NULL),
(1449, 'Kozani', 85, NULL, NULL),
(1450, 'Lakonia', 85, NULL, NULL),
(1451, 'Larisa', 85, NULL, NULL),
(1452, 'Lasithi', 85, NULL, NULL),
(1453, 'Lesvos', 85, NULL, NULL),
(1454, 'Levkas', 85, NULL, NULL),
(1455, 'Magnisia', 85, NULL, NULL),
(1456, 'Messinia', 85, NULL, NULL),
(1457, 'Nomos Attikis', 85, NULL, NULL),
(1458, 'Nomos Zakynthou', 85, NULL, NULL),
(1459, 'Pella', 85, NULL, NULL),
(1460, 'Pieria', 85, NULL, NULL),
(1461, 'Piraios', 85, NULL, NULL),
(1462, 'Preveza', 85, NULL, NULL),
(1463, 'Rethimni', 85, NULL, NULL),
(1464, 'Rodopi', 85, NULL, NULL),
(1465, 'Samos', 85, NULL, NULL),
(1466, 'Serrai', 85, NULL, NULL),
(1467, 'Thesprotia', 85, NULL, NULL),
(1468, 'Thessaloniki', 85, NULL, NULL),
(1469, 'Trikala', 85, NULL, NULL),
(1470, 'Voiotia', 85, NULL, NULL),
(1471, 'West Greece', 85, NULL, NULL),
(1472, 'Xanthi', 85, NULL, NULL),
(1473, 'Zakinthos', 85, NULL, NULL),
(1474, 'Aasiaat', 86, NULL, NULL),
(1475, 'Ammassalik', 86, NULL, NULL),
(1476, 'Illoqqortoormiut', 86, NULL, NULL),
(1477, 'Ilulissat', 86, NULL, NULL),
(1478, 'Ivittuut', 86, NULL, NULL),
(1479, 'Kangaatsiaq', 86, NULL, NULL),
(1480, 'Maniitsoq', 86, NULL, NULL),
(1481, 'Nanortalik', 86, NULL, NULL),
(1482, 'Narsaq', 86, NULL, NULL),
(1483, 'Nuuk', 86, NULL, NULL),
(1484, 'Paamiut', 86, NULL, NULL),
(1485, 'Qaanaaq', 86, NULL, NULL),
(1486, 'Qaqortoq', 86, NULL, NULL),
(1487, 'Qasigiannguit', 86, NULL, NULL),
(1488, 'Qeqertarsuaq', 86, NULL, NULL),
(1489, 'Sisimiut', 86, NULL, NULL),
(1490, 'Udenfor kommunal inddeling', 86, NULL, NULL),
(1491, 'Upernavik', 86, NULL, NULL),
(1492, 'Uummannaq', 86, NULL, NULL),
(1493, 'Carriacou-Petite Martinique', 87, NULL, NULL),
(1494, 'Saint Andrew', 87, NULL, NULL),
(1495, 'Saint Davids', 87, NULL, NULL),
(1496, 'Saint George\'s', 87, NULL, NULL),
(1497, 'Saint John', 87, NULL, NULL),
(1498, 'Saint Mark', 87, NULL, NULL),
(1499, 'Saint Patrick', 87, NULL, NULL),
(1500, 'Basse-Terre', 88, NULL, NULL),
(1501, 'Grande-Terre', 88, NULL, NULL),
(1502, 'Iles des Saintes', 88, NULL, NULL),
(1503, 'La Desirade', 88, NULL, NULL),
(1504, 'Marie-Galante', 88, NULL, NULL),
(1505, 'Saint Barthelemy', 88, NULL, NULL),
(1506, 'Saint Martin', 88, NULL, NULL),
(1507, 'Agana Heights', 89, NULL, NULL),
(1508, 'Agat', 89, NULL, NULL),
(1509, 'Barrigada', 89, NULL, NULL),
(1510, 'Chalan-Pago-Ordot', 89, NULL, NULL),
(1511, 'Dededo', 89, NULL, NULL),
(1512, 'Hagatna', 89, NULL, NULL),
(1513, 'Inarajan', 89, NULL, NULL),
(1514, 'Mangilao', 89, NULL, NULL),
(1515, 'Merizo', 89, NULL, NULL),
(1516, 'Mongmong-Toto-Maite', 89, NULL, NULL),
(1517, 'Santa Rita', 89, NULL, NULL),
(1518, 'Sinajana', 89, NULL, NULL),
(1519, 'Talofofo', 89, NULL, NULL),
(1520, 'Tamuning', 89, NULL, NULL),
(1521, 'Yigo', 89, NULL, NULL),
(1522, 'Yona', 89, NULL, NULL),
(1523, 'Alta Verapaz', 90, NULL, NULL),
(1524, 'Baja Verapaz', 90, NULL, NULL),
(1525, 'Chimaltenango', 90, NULL, NULL),
(1526, 'Chiquimula', 90, NULL, NULL),
(1527, 'El Progreso', 90, NULL, NULL),
(1528, 'Escuintla', 90, NULL, NULL),
(1529, 'Guatemala', 90, NULL, NULL),
(1530, 'Huehuetenango', 90, NULL, NULL),
(1531, 'Izabal', 90, NULL, NULL),
(1532, 'Jalapa', 90, NULL, NULL),
(1533, 'Jutiapa', 90, NULL, NULL),
(1534, 'Peten', 90, NULL, NULL),
(1535, 'Quezaltenango', 90, NULL, NULL),
(1536, 'Quiche', 90, NULL, NULL),
(1537, 'Retalhuleu', 90, NULL, NULL),
(1538, 'Sacatepequez', 90, NULL, NULL),
(1539, 'San Marcos', 90, NULL, NULL),
(1540, 'Santa Rosa', 90, NULL, NULL),
(1541, 'Solola', 90, NULL, NULL),
(1542, 'Suchitepequez', 90, NULL, NULL),
(1543, 'Totonicapan', 90, NULL, NULL),
(1544, 'Zacapa', 90, NULL, NULL),
(1545, 'Alderney', 91, NULL, NULL),
(1546, 'Castel', 91, NULL, NULL),
(1547, 'Forest', 91, NULL, NULL),
(1548, 'Saint Andrew', 91, NULL, NULL),
(1549, 'Saint Martin', 91, NULL, NULL),
(1550, 'Saint Peter Port', 91, NULL, NULL),
(1551, 'Saint Pierre du Bois', 91, NULL, NULL),
(1552, 'Saint Sampson', 91, NULL, NULL),
(1553, 'Saint Saviour', 91, NULL, NULL),
(1554, 'Sark', 91, NULL, NULL),
(1555, 'Torteval', 91, NULL, NULL),
(1556, 'Vale', 91, NULL, NULL),
(1557, 'Beyla', 92, NULL, NULL),
(1558, 'Boffa', 92, NULL, NULL),
(1559, 'Boke', 92, NULL, NULL),
(1560, 'Conakry', 92, NULL, NULL),
(1561, 'Coyah', 92, NULL, NULL),
(1562, 'Dabola', 92, NULL, NULL),
(1563, 'Dalaba', 92, NULL, NULL),
(1564, 'Dinguiraye', 92, NULL, NULL),
(1565, 'Faranah', 92, NULL, NULL),
(1566, 'Forecariah', 92, NULL, NULL),
(1567, 'Fria', 92, NULL, NULL),
(1568, 'Gaoual', 92, NULL, NULL),
(1569, 'Gueckedou', 92, NULL, NULL),
(1570, 'Kankan', 92, NULL, NULL),
(1571, 'Kerouane', 92, NULL, NULL),
(1572, 'Kindia', 92, NULL, NULL),
(1573, 'Kissidougou', 92, NULL, NULL),
(1574, 'Koubia', 92, NULL, NULL),
(1575, 'Koundara', 92, NULL, NULL),
(1576, 'Kouroussa', 92, NULL, NULL),
(1577, 'Labe', 92, NULL, NULL),
(1578, 'Lola', 92, NULL, NULL),
(1579, 'Macenta', 92, NULL, NULL),
(1580, 'Mali', 92, NULL, NULL),
(1581, 'Mamou', 92, NULL, NULL),
(1582, 'Mandiana', 92, NULL, NULL),
(1583, 'Nzerekore', 92, NULL, NULL),
(1584, 'Pita', 92, NULL, NULL),
(1585, 'Siguiri', 92, NULL, NULL),
(1586, 'Telimele', 92, NULL, NULL),
(1587, 'Tougue', 92, NULL, NULL),
(1588, 'Yomou', 92, NULL, NULL),
(1589, 'Bafata', 93, NULL, NULL),
(1590, 'Bissau', 93, NULL, NULL),
(1591, 'Bolama', 93, NULL, NULL),
(1592, 'Cacheu', 93, NULL, NULL),
(1593, 'Gabu', 93, NULL, NULL),
(1594, 'Oio', 93, NULL, NULL),
(1595, 'Quinara', 93, NULL, NULL),
(1596, 'Tombali', 93, NULL, NULL),
(1597, 'Barima-Waini', 94, NULL, NULL),
(1598, 'Cuyuni-Mazaruni', 94, NULL, NULL),
(1599, 'Demerara-Mahaica', 94, NULL, NULL),
(1600, 'East Berbice-Corentyne', 94, NULL, NULL),
(1601, 'Essequibo Islands-West Demerar', 94, NULL, NULL),
(1602, 'Mahaica-Berbice', 94, NULL, NULL),
(1603, 'Pomeroon-Supenaam', 94, NULL, NULL),
(1604, 'Potaro-Siparuni', 94, NULL, NULL),
(1605, 'Upper Demerara-Berbice', 94, NULL, NULL),
(1606, 'Upper Takutu-Upper Essequibo', 94, NULL, NULL),
(1607, 'Artibonite', 95, NULL, NULL),
(1608, 'Centre', 95, NULL, NULL),
(1609, 'Grand\'Anse', 95, NULL, NULL),
(1610, 'Nord', 95, NULL, NULL),
(1611, 'Nord-Est', 95, NULL, NULL),
(1612, 'Nord-Ouest', 95, NULL, NULL),
(1613, 'Ouest', 95, NULL, NULL),
(1614, 'Sud', 95, NULL, NULL),
(1615, 'Sud-Est', 95, NULL, NULL),
(1616, 'Heard and McDonald Islands', 96, NULL, NULL),
(1617, 'Atlantida', 97, NULL, NULL),
(1618, 'Choluteca', 97, NULL, NULL),
(1619, 'Colon', 97, NULL, NULL),
(1620, 'Comayagua', 97, NULL, NULL),
(1621, 'Copan', 97, NULL, NULL),
(1622, 'Cortes', 97, NULL, NULL),
(1623, 'Distrito Central', 97, NULL, NULL),
(1624, 'El Paraiso', 97, NULL, NULL),
(1625, 'Francisco Morazan', 97, NULL, NULL),
(1626, 'Gracias a Dios', 97, NULL, NULL),
(1627, 'Intibuca', 97, NULL, NULL),
(1628, 'Islas de la Bahia', 97, NULL, NULL),
(1629, 'La Paz', 97, NULL, NULL),
(1630, 'Lempira', 97, NULL, NULL),
(1631, 'Ocotepeque', 97, NULL, NULL),
(1632, 'Olancho', 97, NULL, NULL),
(1633, 'Santa Barbara', 97, NULL, NULL),
(1634, 'Valle', 97, NULL, NULL),
(1635, 'Yoro', 97, NULL, NULL),
(1636, 'Hong Kong', 98, NULL, NULL),
(1637, 'Bacs-Kiskun', 99, NULL, NULL),
(1638, 'Baranya', 99, NULL, NULL),
(1639, 'Bekes', 99, NULL, NULL),
(1640, 'Borsod-Abauj-Zemplen', 99, NULL, NULL),
(1641, 'Budapest', 99, NULL, NULL),
(1642, 'Csongrad', 99, NULL, NULL),
(1643, 'Fejer', 99, NULL, NULL),
(1644, 'Gyor-Moson-Sopron', 99, NULL, NULL),
(1645, 'Hajdu-Bihar', 99, NULL, NULL),
(1646, 'Heves', 99, NULL, NULL),
(1647, 'Jasz-Nagykun-Szolnok', 99, NULL, NULL),
(1648, 'Komarom-Esztergom', 99, NULL, NULL),
(1649, 'Nograd', 99, NULL, NULL),
(1650, 'Pest', 99, NULL, NULL),
(1651, 'Somogy', 99, NULL, NULL),
(1652, 'Szabolcs-Szatmar-Bereg', 99, NULL, NULL),
(1653, 'Tolna', 99, NULL, NULL),
(1654, 'Vas', 99, NULL, NULL),
(1655, 'Veszprem', 99, NULL, NULL),
(1656, 'Zala', 99, NULL, NULL),
(1657, 'Austurland', 100, NULL, NULL),
(1658, 'Gullbringusysla', 100, NULL, NULL),
(1659, 'Hofu borgarsva i', 100, NULL, NULL),
(1660, 'Nor urland eystra', 100, NULL, NULL),
(1661, 'Nor urland vestra', 100, NULL, NULL),
(1662, 'Su urland', 100, NULL, NULL),
(1663, 'Su urnes', 100, NULL, NULL),
(1664, 'Vestfir ir', 100, NULL, NULL),
(1665, 'Vesturland', 100, NULL, NULL),
(1666, 'Aceh', 102, NULL, NULL),
(1667, 'Bali', 102, NULL, NULL),
(1668, 'Bangka-Belitung', 102, NULL, NULL),
(1669, 'Banten', 102, NULL, NULL),
(1670, 'Bengkulu', 102, NULL, NULL),
(1671, 'Gandaria', 102, NULL, NULL),
(1672, 'Gorontalo', 102, NULL, NULL),
(1673, 'Jakarta', 102, NULL, NULL),
(1674, 'Jambi', 102, NULL, NULL),
(1675, 'Jawa Barat', 102, NULL, NULL),
(1676, 'Jawa Tengah', 102, NULL, NULL),
(1677, 'Jawa Timur', 102, NULL, NULL),
(1678, 'Kalimantan Barat', 102, NULL, NULL),
(1679, 'Kalimantan Selatan', 102, NULL, NULL),
(1680, 'Kalimantan Tengah', 102, NULL, NULL),
(1681, 'Kalimantan Timur', 102, NULL, NULL),
(1682, 'Kendal', 102, NULL, NULL),
(1683, 'Lampung', 102, NULL, NULL),
(1684, 'Maluku', 102, NULL, NULL),
(1685, 'Maluku Utara', 102, NULL, NULL),
(1686, 'Nusa Tenggara Barat', 102, NULL, NULL),
(1687, 'Nusa Tenggara Timur', 102, NULL, NULL),
(1688, 'Papua', 102, NULL, NULL),
(1689, 'Riau', 102, NULL, NULL),
(1690, 'Riau Kepulauan', 102, NULL, NULL),
(1691, 'Solo', 102, NULL, NULL),
(1692, 'Sulawesi Selatan', 102, NULL, NULL),
(1693, 'Sulawesi Tengah', 102, NULL, NULL),
(1694, 'Sulawesi Tenggara', 102, NULL, NULL),
(1695, 'Sulawesi Utara', 102, NULL, NULL),
(1696, 'Sumatera Barat', 102, NULL, NULL),
(1697, 'Sumatera Selatan', 102, NULL, NULL),
(1698, 'Sumatera Utara', 102, NULL, NULL),
(1699, 'Yogyakarta', 102, NULL, NULL),
(1700, 'Ardabil', 103, NULL, NULL),
(1701, 'Azarbayjan-e Bakhtari', 103, NULL, NULL),
(1702, 'Azarbayjan-e Khavari', 103, NULL, NULL),
(1703, 'Bushehr', 103, NULL, NULL),
(1704, 'Chahar Mahal-e Bakhtiari', 103, NULL, NULL),
(1705, 'Esfahan', 103, NULL, NULL),
(1706, 'Fars', 103, NULL, NULL),
(1707, 'Gilan', 103, NULL, NULL),
(1708, 'Golestan', 103, NULL, NULL),
(1709, 'Hamadan', 103, NULL, NULL),
(1710, 'Hormozgan', 103, NULL, NULL),
(1711, 'Ilam', 103, NULL, NULL),
(1712, 'Kerman', 103, NULL, NULL),
(1713, 'Kermanshah', 103, NULL, NULL),
(1714, 'Khorasan', 103, NULL, NULL),
(1715, 'Khuzestan', 103, NULL, NULL),
(1716, 'Kohgiluyeh-e Boyerahmad', 103, NULL, NULL),
(1717, 'Kordestan', 103, NULL, NULL),
(1718, 'Lorestan', 103, NULL, NULL),
(1719, 'Markazi', 103, NULL, NULL),
(1720, 'Mazandaran', 103, NULL, NULL),
(1721, 'Ostan-e Esfahan', 103, NULL, NULL),
(1722, 'Qazvin', 103, NULL, NULL),
(1723, 'Qom', 103, NULL, NULL),
(1724, 'Semnan', 103, NULL, NULL),
(1725, 'Sistan-e Baluchestan', 103, NULL, NULL),
(1726, 'Tehran', 103, NULL, NULL),
(1727, 'Yazd', 103, NULL, NULL),
(1728, 'Zanjan', 103, NULL, NULL),
(1729, 'Babil', 104, NULL, NULL),
(1730, 'Baghdad', 104, NULL, NULL),
(1731, 'Dahuk', 104, NULL, NULL),
(1732, 'Dhi Qar', 104, NULL, NULL),
(1733, 'Diyala', 104, NULL, NULL),
(1734, 'Erbil', 104, NULL, NULL),
(1735, 'Irbil', 104, NULL, NULL),
(1736, 'Karbala', 104, NULL, NULL),
(1737, 'Kurdistan', 104, NULL, NULL),
(1738, 'Maysan', 104, NULL, NULL),
(1739, 'Ninawa', 104, NULL, NULL),
(1740, 'Salah-ad-Din', 104, NULL, NULL),
(1741, 'Wasit', 104, NULL, NULL),
(1742, 'al-Anbar', 104, NULL, NULL),
(1743, 'al-Basrah', 104, NULL, NULL),
(1744, 'al-Muthanna', 104, NULL, NULL),
(1745, 'al-Qadisiyah', 104, NULL, NULL),
(1746, 'an-Najaf', 104, NULL, NULL),
(1747, 'as-Sulaymaniyah', 104, NULL, NULL),
(1748, 'at-Ta\'mim', 104, NULL, NULL),
(1749, 'Armagh', 105, NULL, NULL),
(1750, 'Carlow', 105, NULL, NULL),
(1751, 'Cavan', 105, NULL, NULL),
(1752, 'Clare', 105, NULL, NULL),
(1753, 'Cork', 105, NULL, NULL),
(1754, 'Donegal', 105, NULL, NULL),
(1755, 'Dublin', 105, NULL, NULL),
(1756, 'Galway', 105, NULL, NULL),
(1757, 'Kerry', 105, NULL, NULL),
(1758, 'Kildare', 105, NULL, NULL),
(1759, 'Kilkenny', 105, NULL, NULL),
(1760, 'Laois', 105, NULL, NULL),
(1761, 'Leinster', 105, NULL, NULL),
(1762, 'Leitrim', 105, NULL, NULL),
(1763, 'Limerick', 105, NULL, NULL),
(1764, 'Loch Garman', 105, NULL, NULL),
(1765, 'Longford', 105, NULL, NULL),
(1766, 'Louth', 105, NULL, NULL),
(1767, 'Mayo', 105, NULL, NULL),
(1768, 'Meath', 105, NULL, NULL),
(1769, 'Monaghan', 105, NULL, NULL),
(1770, 'Offaly', 105, NULL, NULL),
(1771, 'Roscommon', 105, NULL, NULL),
(1772, 'Sligo', 105, NULL, NULL),
(1773, 'Tipperary North Riding', 105, NULL, NULL),
(1774, 'Tipperary South Riding', 105, NULL, NULL),
(1775, 'Ulster', 105, NULL, NULL),
(1776, 'Waterford', 105, NULL, NULL),
(1777, 'Westmeath', 105, NULL, NULL),
(1778, 'Wexford', 105, NULL, NULL),
(1779, 'Wicklow', 105, NULL, NULL),
(1780, 'Beit Hanania', 106, NULL, NULL),
(1781, 'Ben Gurion Airport', 106, NULL, NULL),
(1782, 'Bethlehem', 106, NULL, NULL),
(1783, 'Caesarea', 106, NULL, NULL),
(1784, 'Centre', 106, NULL, NULL),
(1785, 'Gaza', 106, NULL, NULL),
(1786, 'Hadaron', 106, NULL, NULL),
(1787, 'Haifa District', 106, NULL, NULL),
(1788, 'Hamerkaz', 106, NULL, NULL),
(1789, 'Hazafon', 106, NULL, NULL),
(1790, 'Hebron', 106, NULL, NULL),
(1791, 'Jaffa', 106, NULL, NULL),
(1792, 'Jerusalem', 106, NULL, NULL),
(1793, 'Khefa', 106, NULL, NULL),
(1794, 'Kiryat Yam', 106, NULL, NULL),
(1795, 'Lower Galilee', 106, NULL, NULL),
(1796, 'Qalqilya', 106, NULL, NULL),
(1797, 'Talme Elazar', 106, NULL, NULL),
(1798, 'Tel Aviv', 106, NULL, NULL),
(1799, 'Tsafon', 106, NULL, NULL),
(1800, 'Umm El Fahem', 106, NULL, NULL),
(1801, 'Yerushalayim', 106, NULL, NULL),
(1802, 'Abruzzi', 107, NULL, NULL),
(1803, 'Abruzzo', 107, NULL, NULL),
(1804, 'Agrigento', 107, NULL, NULL),
(1805, 'Alessandria', 107, NULL, NULL),
(1806, 'Ancona', 107, NULL, NULL),
(1807, 'Arezzo', 107, NULL, NULL),
(1808, 'Ascoli Piceno', 107, NULL, NULL),
(1809, 'Asti', 107, NULL, NULL),
(1810, 'Avellino', 107, NULL, NULL),
(1811, 'Bari', 107, NULL, NULL),
(1812, 'Basilicata', 107, NULL, NULL),
(1813, 'Belluno', 107, NULL, NULL),
(1814, 'Benevento', 107, NULL, NULL),
(1815, 'Bergamo', 107, NULL, NULL),
(1816, 'Biella', 107, NULL, NULL),
(1817, 'Bologna', 107, NULL, NULL),
(1818, 'Bolzano', 107, NULL, NULL),
(1819, 'Brescia', 107, NULL, NULL),
(1820, 'Brindisi', 107, NULL, NULL),
(1821, 'Calabria', 107, NULL, NULL),
(1822, 'Campania', 107, NULL, NULL),
(1823, 'Cartoceto', 107, NULL, NULL),
(1824, 'Caserta', 107, NULL, NULL),
(1825, 'Catania', 107, NULL, NULL),
(1826, 'Chieti', 107, NULL, NULL),
(1827, 'Como', 107, NULL, NULL),
(1828, 'Cosenza', 107, NULL, NULL),
(1829, 'Cremona', 107, NULL, NULL),
(1830, 'Cuneo', 107, NULL, NULL),
(1831, 'Emilia-Romagna', 107, NULL, NULL),
(1832, 'Ferrara', 107, NULL, NULL),
(1833, 'Firenze', 107, NULL, NULL),
(1834, 'Florence', 107, NULL, NULL),
(1835, 'Forli-Cesena ', 107, NULL, NULL),
(1836, 'Friuli-Venezia Giulia', 107, NULL, NULL),
(1837, 'Frosinone', 107, NULL, NULL),
(1838, 'Genoa', 107, NULL, NULL),
(1839, 'Gorizia', 107, NULL, NULL),
(1840, 'L\'Aquila', 107, NULL, NULL),
(1841, 'Lazio', 107, NULL, NULL),
(1842, 'Lecce', 107, NULL, NULL),
(1843, 'Lecco', 107, NULL, NULL),
(1844, 'Lecco Province', 107, NULL, NULL),
(1845, 'Liguria', 107, NULL, NULL),
(1846, 'Lodi', 107, NULL, NULL),
(1847, 'Lombardia', 107, NULL, NULL),
(1848, 'Lombardy', 107, NULL, NULL),
(1849, 'Macerata', 107, NULL, NULL),
(1850, 'Mantova', 107, NULL, NULL),
(1851, 'Marche', 107, NULL, NULL),
(1852, 'Messina', 107, NULL, NULL),
(1853, 'Milan', 107, NULL, NULL),
(1854, 'Modena', 107, NULL, NULL),
(1855, 'Molise', 107, NULL, NULL),
(1856, 'Molteno', 107, NULL, NULL),
(1857, 'Montenegro', 107, NULL, NULL),
(1858, 'Monza and Brianza', 107, NULL, NULL),
(1859, 'Naples', 107, NULL, NULL),
(1860, 'Novara', 107, NULL, NULL),
(1861, 'Padova', 107, NULL, NULL),
(1862, 'Parma', 107, NULL, NULL),
(1863, 'Pavia', 107, NULL, NULL),
(1864, 'Perugia', 107, NULL, NULL),
(1865, 'Pesaro-Urbino', 107, NULL, NULL),
(1866, 'Piacenza', 107, NULL, NULL),
(1867, 'Piedmont', 107, NULL, NULL),
(1868, 'Piemonte', 107, NULL, NULL),
(1869, 'Pisa', 107, NULL, NULL),
(1870, 'Pordenone', 107, NULL, NULL),
(1871, 'Potenza', 107, NULL, NULL),
(1872, 'Puglia', 107, NULL, NULL),
(1873, 'Reggio Emilia', 107, NULL, NULL),
(1874, 'Rimini', 107, NULL, NULL),
(1875, 'Roma', 107, NULL, NULL),
(1876, 'Salerno', 107, NULL, NULL),
(1877, 'Sardegna', 107, NULL, NULL),
(1878, 'Sassari', 107, NULL, NULL),
(1879, 'Savona', 107, NULL, NULL),
(1880, 'Sicilia', 107, NULL, NULL),
(1881, 'Siena', 107, NULL, NULL),
(1882, 'Sondrio', 107, NULL, NULL),
(1883, 'South Tyrol', 107, NULL, NULL),
(1884, 'Taranto', 107, NULL, NULL),
(1885, 'Teramo', 107, NULL, NULL),
(1886, 'Torino', 107, NULL, NULL),
(1887, 'Toscana', 107, NULL, NULL),
(1888, 'Trapani', 107, NULL, NULL),
(1889, 'Trentino-Alto Adige', 107, NULL, NULL),
(1890, 'Trento', 107, NULL, NULL),
(1891, 'Treviso', 107, NULL, NULL),
(1892, 'Udine', 107, NULL, NULL),
(1893, 'Umbria', 107, NULL, NULL),
(1894, 'Valle d\'Aosta', 107, NULL, NULL),
(1895, 'Varese', 107, NULL, NULL),
(1896, 'Veneto', 107, NULL, NULL),
(1897, 'Venezia', 107, NULL, NULL),
(1898, 'Verbano-Cusio-Ossola', 107, NULL, NULL),
(1899, 'Vercelli', 107, NULL, NULL),
(1900, 'Verona', 107, NULL, NULL),
(1901, 'Vicenza', 107, NULL, NULL),
(1902, 'Viterbo', 107, NULL, NULL),
(1903, 'Buxoro Viloyati', 108, NULL, NULL),
(1904, 'Clarendon', 108, NULL, NULL),
(1905, 'Hanover', 108, NULL, NULL),
(1906, 'Kingston', 108, NULL, NULL),
(1907, 'Manchester', 108, NULL, NULL),
(1908, 'Portland', 108, NULL, NULL),
(1909, 'Saint Andrews', 108, NULL, NULL),
(1910, 'Saint Ann', 108, NULL, NULL),
(1911, 'Saint Catherine', 108, NULL, NULL),
(1912, 'Saint Elizabeth', 108, NULL, NULL),
(1913, 'Saint James', 108, NULL, NULL),
(1914, 'Saint Mary', 108, NULL, NULL),
(1915, 'Saint Thomas', 108, NULL, NULL),
(1916, 'Trelawney', 108, NULL, NULL),
(1917, 'Westmoreland', 108, NULL, NULL),
(1918, 'Aichi', 109, NULL, NULL),
(1919, 'Akita', 109, NULL, NULL),
(1920, 'Aomori', 109, NULL, NULL),
(1921, 'Chiba', 109, NULL, NULL),
(1922, 'Ehime', 109, NULL, NULL),
(1923, 'Fukui', 109, NULL, NULL),
(1924, 'Fukuoka', 109, NULL, NULL),
(1925, 'Fukushima', 109, NULL, NULL),
(1926, 'Gifu', 109, NULL, NULL),
(1927, 'Gumma', 109, NULL, NULL),
(1928, 'Hiroshima', 109, NULL, NULL),
(1929, 'Hokkaido', 109, NULL, NULL),
(1930, 'Hyogo', 109, NULL, NULL),
(1931, 'Ibaraki', 109, NULL, NULL),
(1932, 'Ishikawa', 109, NULL, NULL),
(1933, 'Iwate', 109, NULL, NULL),
(1934, 'Kagawa', 109, NULL, NULL),
(1935, 'Kagoshima', 109, NULL, NULL),
(1936, 'Kanagawa', 109, NULL, NULL),
(1937, 'Kanto', 109, NULL, NULL),
(1938, 'Kochi', 109, NULL, NULL),
(1939, 'Kumamoto', 109, NULL, NULL),
(1940, 'Kyoto', 109, NULL, NULL),
(1941, 'Mie', 109, NULL, NULL),
(1942, 'Miyagi', 109, NULL, NULL),
(1943, 'Miyazaki', 109, NULL, NULL),
(1944, 'Nagano', 109, NULL, NULL),
(1945, 'Nagasaki', 109, NULL, NULL),
(1946, 'Nara', 109, NULL, NULL),
(1947, 'Niigata', 109, NULL, NULL),
(1948, 'Oita', 109, NULL, NULL),
(1949, 'Okayama', 109, NULL, NULL),
(1950, 'Okinawa', 109, NULL, NULL),
(1951, 'Osaka', 109, NULL, NULL),
(1952, 'Saga', 109, NULL, NULL),
(1953, 'Saitama', 109, NULL, NULL),
(1954, 'Shiga', 109, NULL, NULL),
(1955, 'Shimane', 109, NULL, NULL),
(1956, 'Shizuoka', 109, NULL, NULL),
(1957, 'Tochigi', 109, NULL, NULL),
(1958, 'Tokushima', 109, NULL, NULL),
(1959, 'Tokyo', 109, NULL, NULL),
(1960, 'Tottori', 109, NULL, NULL),
(1961, 'Toyama', 109, NULL, NULL),
(1962, 'Wakayama', 109, NULL, NULL),
(1963, 'Yamagata', 109, NULL, NULL),
(1964, 'Yamaguchi', 109, NULL, NULL),
(1965, 'Yamanashi', 109, NULL, NULL),
(1966, 'Grouville', 110, NULL, NULL),
(1967, 'Saint Brelade', 110, NULL, NULL),
(1968, 'Saint Clement', 110, NULL, NULL),
(1969, 'Saint Helier', 110, NULL, NULL),
(1970, 'Saint John', 110, NULL, NULL),
(1971, 'Saint Lawrence', 110, NULL, NULL),
(1972, 'Saint Martin', 110, NULL, NULL),
(1973, 'Saint Mary', 110, NULL, NULL),
(1974, 'Saint Peter', 110, NULL, NULL),
(1975, 'Saint Saviour', 110, NULL, NULL),
(1976, 'Trinity', 110, NULL, NULL),
(1977, '\'Ajlun', 111, NULL, NULL),
(1978, 'Amman', 111, NULL, NULL),
(1979, 'Irbid', 111, NULL, NULL),
(1980, 'Jarash', 111, NULL, NULL),
(1981, 'Ma\'an', 111, NULL, NULL),
(1982, 'Madaba', 111, NULL, NULL),
(1983, 'al-\'Aqabah', 111, NULL, NULL),
(1984, 'al-Balqa\'', 111, NULL, NULL),
(1985, 'al-Karak', 111, NULL, NULL),
(1986, 'al-Mafraq', 111, NULL, NULL),
(1987, 'at-Tafilah', 111, NULL, NULL),
(1988, 'az-Zarqa\'', 111, NULL, NULL),
(1989, 'Akmecet', 112, NULL, NULL),
(1990, 'Akmola', 112, NULL, NULL),
(1991, 'Aktobe', 112, NULL, NULL),
(1992, 'Almati', 112, NULL, NULL),
(1993, 'Atirau', 112, NULL, NULL),
(1994, 'Batis Kazakstan', 112, NULL, NULL),
(1995, 'Burlinsky Region', 112, NULL, NULL),
(1996, 'Karagandi', 112, NULL, NULL),
(1997, 'Kostanay', 112, NULL, NULL),
(1998, 'Mankistau', 112, NULL, NULL),
(1999, 'Ontustik Kazakstan', 112, NULL, NULL),
(2000, 'Pavlodar', 112, NULL, NULL),
(2001, 'Sigis Kazakstan', 112, NULL, NULL),
(2002, 'Soltustik Kazakstan', 112, NULL, NULL),
(2003, 'Taraz', 112, NULL, NULL),
(2004, 'Central', 113, NULL, NULL),
(2005, 'Coast', 113, NULL, NULL),
(2006, 'Eastern', 113, NULL, NULL),
(2007, 'Nairobi', 113, NULL, NULL),
(2008, 'North Eastern', 113, NULL, NULL),
(2009, 'Nyanza', 113, NULL, NULL),
(2010, 'Rift Valley', 113, NULL, NULL),
(2011, 'Western', 113, NULL, NULL),
(2012, 'Abaiang', 114, NULL, NULL),
(2013, 'Abemana', 114, NULL, NULL),
(2014, 'Aranuka', 114, NULL, NULL),
(2015, 'Arorae', 114, NULL, NULL),
(2016, 'Banaba', 114, NULL, NULL),
(2017, 'Beru', 114, NULL, NULL),
(2018, 'Butaritari', 114, NULL, NULL),
(2019, 'Kiritimati', 114, NULL, NULL),
(2020, 'Kuria', 114, NULL, NULL),
(2021, 'Maiana', 114, NULL, NULL),
(2022, 'Makin', 114, NULL, NULL),
(2023, 'Marakei', 114, NULL, NULL),
(2024, 'Nikunau', 114, NULL, NULL),
(2025, 'Nonouti', 114, NULL, NULL),
(2026, 'Onotoa', 114, NULL, NULL),
(2027, 'Phoenix Islands', 114, NULL, NULL),
(2028, 'Tabiteuea North', 114, NULL, NULL),
(2029, 'Tabiteuea South', 114, NULL, NULL),
(2030, 'Tabuaeran', 114, NULL, NULL),
(2031, 'Tamana', 114, NULL, NULL),
(2032, 'Tarawa North', 114, NULL, NULL),
(2033, 'Tarawa South', 114, NULL, NULL),
(2034, 'Teraina', 114, NULL, NULL),
(2035, 'Chagangdo', 115, NULL, NULL),
(2036, 'Hamgyeongbukto', 115, NULL, NULL),
(2037, 'Hamgyeongnamdo', 115, NULL, NULL),
(2038, 'Hwanghaebukto', 115, NULL, NULL),
(2039, 'Hwanghaenamdo', 115, NULL, NULL),
(2040, 'Kaeseong', 115, NULL, NULL),
(2041, 'Kangweon', 115, NULL, NULL),
(2042, 'Nampo', 115, NULL, NULL),
(2043, 'Pyeonganbukto', 115, NULL, NULL),
(2044, 'Pyeongannamdo', 115, NULL, NULL),
(2045, 'Pyeongyang', 115, NULL, NULL),
(2046, 'Yanggang', 115, NULL, NULL),
(2047, 'Busan', 116, NULL, NULL),
(2048, 'Cheju', 116, NULL, NULL),
(2049, 'Chollabuk', 116, NULL, NULL),
(2050, 'Chollanam', 116, NULL, NULL),
(2051, 'Chungbuk', 116, NULL, NULL),
(2052, 'Chungcheongbuk', 116, NULL, NULL),
(2053, 'Chungcheongnam', 116, NULL, NULL),
(2054, 'Chungnam', 116, NULL, NULL),
(2055, 'Daegu', 116, NULL, NULL),
(2056, 'Gangwon-do', 116, NULL, NULL),
(2057, 'Goyang-si', 116, NULL, NULL),
(2058, 'Gyeonggi-do', 116, NULL, NULL),
(2059, 'Gyeongsang ', 116, NULL, NULL),
(2060, 'Gyeongsangnam-do', 116, NULL, NULL),
(2061, 'Incheon', 116, NULL, NULL),
(2062, 'Jeju-Si', 116, NULL, NULL),
(2063, 'Jeonbuk', 116, NULL, NULL),
(2064, 'Kangweon', 116, NULL, NULL),
(2065, 'Kwangju', 116, NULL, NULL),
(2066, 'Kyeonggi', 116, NULL, NULL),
(2067, 'Kyeongsangbuk', 116, NULL, NULL),
(2068, 'Kyeongsangnam', 116, NULL, NULL),
(2069, 'Kyonggi-do', 116, NULL, NULL),
(2070, 'Kyungbuk-Do', 116, NULL, NULL),
(2071, 'Kyunggi-Do', 116, NULL, NULL),
(2072, 'Kyunggi-do', 116, NULL, NULL),
(2073, 'Pusan', 116, NULL, NULL),
(2074, 'Seoul', 116, NULL, NULL),
(2075, 'Sudogwon', 116, NULL, NULL),
(2076, 'Taegu', 116, NULL, NULL),
(2077, 'Taejeon', 116, NULL, NULL),
(2078, 'Taejon-gwangyoksi', 116, NULL, NULL),
(2079, 'Ulsan', 116, NULL, NULL),
(2080, 'Wonju', 116, NULL, NULL),
(2081, 'gwangyoksi', 116, NULL, NULL),
(2082, 'Al Asimah', 117, NULL, NULL),
(2083, 'Hawalli', 117, NULL, NULL),
(2084, 'Mishref', 117, NULL, NULL),
(2085, 'Qadesiya', 117, NULL, NULL),
(2086, 'Safat', 117, NULL, NULL),
(2087, 'Salmiya', 117, NULL, NULL),
(2088, 'al-Ahmadi', 117, NULL, NULL),
(2089, 'al-Farwaniyah', 117, NULL, NULL),
(2090, 'al-Jahra', 117, NULL, NULL),
(2091, 'al-Kuwayt', 117, NULL, NULL),
(2092, 'Batken', 118, NULL, NULL),
(2093, 'Bishkek', 118, NULL, NULL),
(2094, 'Chui', 118, NULL, NULL),
(2095, 'Issyk-Kul', 118, NULL, NULL),
(2096, 'Jalal-Abad', 118, NULL, NULL),
(2097, 'Naryn', 118, NULL, NULL),
(2098, 'Osh', 118, NULL, NULL),
(2099, 'Talas', 118, NULL, NULL),
(2100, 'Attopu', 119, NULL, NULL),
(2101, 'Bokeo', 119, NULL, NULL),
(2102, 'Bolikhamsay', 119, NULL, NULL),
(2103, 'Champasak', 119, NULL, NULL),
(2104, 'Houaphanh', 119, NULL, NULL),
(2105, 'Khammouane', 119, NULL, NULL),
(2106, 'Luang Nam Tha', 119, NULL, NULL),
(2107, 'Luang Prabang', 119, NULL, NULL),
(2108, 'Oudomxay', 119, NULL, NULL),
(2109, 'Phongsaly', 119, NULL, NULL),
(2110, 'Saravan', 119, NULL, NULL),
(2111, 'Savannakhet', 119, NULL, NULL),
(2112, 'Sekong', 119, NULL, NULL),
(2113, 'Viangchan Prefecture', 119, NULL, NULL),
(2114, 'Viangchan Province', 119, NULL, NULL),
(2115, 'Xaignabury', 119, NULL, NULL),
(2116, 'Xiang Khuang', 119, NULL, NULL),
(2117, 'Aizkraukles', 120, NULL, NULL),
(2118, 'Aluksnes', 120, NULL, NULL),
(2119, 'Balvu', 120, NULL, NULL),
(2120, 'Bauskas', 120, NULL, NULL),
(2121, 'Cesu', 120, NULL, NULL),
(2122, 'Daugavpils', 120, NULL, NULL),
(2123, 'Daugavpils City', 120, NULL, NULL),
(2124, 'Dobeles', 120, NULL, NULL),
(2125, 'Gulbenes', 120, NULL, NULL),
(2126, 'Jekabspils', 120, NULL, NULL),
(2127, 'Jelgava', 120, NULL, NULL),
(2128, 'Jelgavas', 120, NULL, NULL),
(2129, 'Jurmala City', 120, NULL, NULL),
(2130, 'Kraslavas', 120, NULL, NULL),
(2131, 'Kuldigas', 120, NULL, NULL),
(2132, 'Liepaja', 120, NULL, NULL),
(2133, 'Liepajas', 120, NULL, NULL),
(2134, 'Limbazhu', 120, NULL, NULL),
(2135, 'Ludzas', 120, NULL, NULL),
(2136, 'Madonas', 120, NULL, NULL),
(2137, 'Ogres', 120, NULL, NULL),
(2138, 'Preilu', 120, NULL, NULL),
(2139, 'Rezekne', 120, NULL, NULL),
(2140, 'Rezeknes', 120, NULL, NULL),
(2141, 'Riga', 120, NULL, NULL),
(2142, 'Rigas', 120, NULL, NULL),
(2143, 'Saldus', 120, NULL, NULL),
(2144, 'Talsu', 120, NULL, NULL),
(2145, 'Tukuma', 120, NULL, NULL),
(2146, 'Valkas', 120, NULL, NULL),
(2147, 'Valmieras', 120, NULL, NULL),
(2148, 'Ventspils', 120, NULL, NULL),
(2149, 'Ventspils City', 120, NULL, NULL),
(2150, 'Beirut', 121, NULL, NULL),
(2151, 'Jabal Lubnan', 121, NULL, NULL),
(2152, 'Mohafazat Liban-Nord', 121, NULL, NULL),
(2153, 'Mohafazat Mont-Liban', 121, NULL, NULL),
(2154, 'Sidon', 121, NULL, NULL),
(2155, 'al-Biqa', 121, NULL, NULL),
(2156, 'al-Janub', 121, NULL, NULL),
(2157, 'an-Nabatiyah', 121, NULL, NULL),
(2158, 'ash-Shamal', 121, NULL, NULL),
(2159, 'Berea', 122, NULL, NULL),
(2160, 'Butha-Buthe', 122, NULL, NULL),
(2161, 'Leribe', 122, NULL, NULL),
(2162, 'Mafeteng', 122, NULL, NULL),
(2163, 'Maseru', 122, NULL, NULL),
(2164, 'Mohale\'s Hoek', 122, NULL, NULL),
(2165, 'Mokhotlong', 122, NULL, NULL),
(2166, 'Qacha\'s Nek', 122, NULL, NULL),
(2167, 'Quthing', 122, NULL, NULL),
(2168, 'Thaba-Tseka', 122, NULL, NULL),
(2169, 'Bomi', 123, NULL, NULL),
(2170, 'Bong', 123, NULL, NULL),
(2171, 'Grand Bassa', 123, NULL, NULL),
(2172, 'Grand Cape Mount', 123, NULL, NULL),
(2173, 'Grand Gedeh', 123, NULL, NULL),
(2174, 'Loffa', 123, NULL, NULL),
(2175, 'Margibi', 123, NULL, NULL),
(2176, 'Maryland and Grand Kru', 123, NULL, NULL),
(2177, 'Montserrado', 123, NULL, NULL),
(2178, 'Nimba', 123, NULL, NULL),
(2179, 'Rivercess', 123, NULL, NULL),
(2180, 'Sinoe', 123, NULL, NULL),
(2181, 'Ajdabiya', 124, NULL, NULL),
(2182, 'Fezzan', 124, NULL, NULL),
(2183, 'Banghazi', 124, NULL, NULL),
(2184, 'Darnah', 124, NULL, NULL),
(2185, 'Ghadamis', 124, NULL, NULL),
(2186, 'Gharyan', 124, NULL, NULL),
(2187, 'Misratah', 124, NULL, NULL),
(2188, 'Murzuq', 124, NULL, NULL),
(2189, 'Sabha', 124, NULL, NULL),
(2190, 'Sawfajjin', 124, NULL, NULL),
(2191, 'Surt', 124, NULL, NULL),
(2192, 'Tarabulus', 124, NULL, NULL),
(2193, 'Tarhunah', 124, NULL, NULL),
(2194, 'Tripolitania', 124, NULL, NULL),
(2195, 'Tubruq', 124, NULL, NULL),
(2196, 'Yafran', 124, NULL, NULL),
(2197, 'Zlitan', 124, NULL, NULL),
(2198, 'al-\'Aziziyah', 124, NULL, NULL),
(2199, 'al-Fatih', 124, NULL, NULL),
(2200, 'al-Jabal al Akhdar', 124, NULL, NULL),
(2201, 'al-Jufrah', 124, NULL, NULL),
(2202, 'al-Khums', 124, NULL, NULL),
(2203, 'al-Kufrah', 124, NULL, NULL),
(2204, 'an-Nuqat al-Khams', 124, NULL, NULL),
(2205, 'ash-Shati\'', 124, NULL, NULL),
(2206, 'az-Zawiyah', 124, NULL, NULL),
(2207, 'Balzers', 125, NULL, NULL),
(2208, 'Eschen', 125, NULL, NULL),
(2209, 'Gamprin', 125, NULL, NULL),
(2210, 'Mauren', 125, NULL, NULL),
(2211, 'Planken', 125, NULL, NULL),
(2212, 'Ruggell', 125, NULL, NULL),
(2213, 'Schaan', 125, NULL, NULL),
(2214, 'Schellenberg', 125, NULL, NULL),
(2215, 'Triesen', 125, NULL, NULL),
(2216, 'Triesenberg', 125, NULL, NULL),
(2217, 'Vaduz', 125, NULL, NULL),
(2218, 'Alytaus', 126, NULL, NULL),
(2219, 'Anyksciai', 126, NULL, NULL),
(2220, 'Kauno', 126, NULL, NULL),
(2221, 'Klaipedos', 126, NULL, NULL),
(2222, 'Marijampoles', 126, NULL, NULL),
(2223, 'Panevezhio', 126, NULL, NULL),
(2224, 'Panevezys', 126, NULL, NULL),
(2225, 'Shiauliu', 126, NULL, NULL),
(2226, 'Taurages', 126, NULL, NULL),
(2227, 'Telshiu', 126, NULL, NULL),
(2228, 'Telsiai', 126, NULL, NULL),
(2229, 'Utenos', 126, NULL, NULL),
(2230, 'Vilniaus', 126, NULL, NULL),
(2231, 'Capellen', 127, NULL, NULL),
(2232, 'Clervaux', 127, NULL, NULL),
(2233, 'Diekirch', 127, NULL, NULL),
(2234, 'Echternach', 127, NULL, NULL),
(2235, 'Esch-sur-Alzette', 127, NULL, NULL),
(2236, 'Grevenmacher', 127, NULL, NULL),
(2237, 'Luxembourg', 127, NULL, NULL),
(2238, 'Mersch', 127, NULL, NULL),
(2239, 'Redange', 127, NULL, NULL),
(2240, 'Remich', 127, NULL, NULL),
(2241, 'Vianden', 127, NULL, NULL),
(2242, 'Wiltz', 127, NULL, NULL),
(2243, 'Macau', 128, NULL, NULL),
(2244, 'Berovo', 129, NULL, NULL),
(2245, 'Bitola', 129, NULL, NULL),
(2246, 'Brod', 129, NULL, NULL),
(2247, 'Debar', 129, NULL, NULL),
(2248, 'Delchevo', 129, NULL, NULL),
(2249, 'Demir Hisar', 129, NULL, NULL),
(2250, 'Gevgelija', 129, NULL, NULL),
(2251, 'Gostivar', 129, NULL, NULL),
(2252, 'Kavadarci', 129, NULL, NULL),
(2253, 'Kichevo', 129, NULL, NULL),
(2254, 'Kochani', 129, NULL, NULL),
(2255, 'Kratovo', 129, NULL, NULL),
(2256, 'Kriva Palanka', 129, NULL, NULL),
(2257, 'Krushevo', 129, NULL, NULL),
(2258, 'Kumanovo', 129, NULL, NULL),
(2259, 'Negotino', 129, NULL, NULL),
(2260, 'Ohrid', 129, NULL, NULL),
(2261, 'Prilep', 129, NULL, NULL),
(2262, 'Probishtip', 129, NULL, NULL),
(2263, 'Radovish', 129, NULL, NULL),
(2264, 'Resen', 129, NULL, NULL),
(2265, 'Shtip', 129, NULL, NULL),
(2266, 'Skopje', 129, NULL, NULL),
(2267, 'Struga', 129, NULL, NULL),
(2268, 'Strumica', 129, NULL, NULL),
(2269, 'Sveti Nikole', 129, NULL, NULL),
(2270, 'Tetovo', 129, NULL, NULL),
(2271, 'Valandovo', 129, NULL, NULL),
(2272, 'Veles', 129, NULL, NULL),
(2273, 'Vinica', 129, NULL, NULL),
(2274, 'Antananarivo', 130, NULL, NULL),
(2275, 'Antsiranana', 130, NULL, NULL),
(2276, 'Fianarantsoa', 130, NULL, NULL),
(2277, 'Mahajanga', 130, NULL, NULL),
(2278, 'Toamasina', 130, NULL, NULL),
(2279, 'Toliary', 130, NULL, NULL),
(2280, 'Balaka', 131, NULL, NULL),
(2281, 'Blantyre City', 131, NULL, NULL),
(2282, 'Chikwawa', 131, NULL, NULL),
(2283, 'Chiradzulu', 131, NULL, NULL),
(2284, 'Chitipa', 131, NULL, NULL),
(2285, 'Dedza', 131, NULL, NULL),
(2286, 'Dowa', 131, NULL, NULL),
(2287, 'Karonga', 131, NULL, NULL),
(2288, 'Kasungu', 131, NULL, NULL),
(2289, 'Lilongwe City', 131, NULL, NULL),
(2290, 'Machinga', 131, NULL, NULL),
(2291, 'Mangochi', 131, NULL, NULL),
(2292, 'Mchinji', 131, NULL, NULL),
(2293, 'Mulanje', 131, NULL, NULL),
(2294, 'Mwanza', 131, NULL, NULL),
(2295, 'Mzimba', 131, NULL, NULL),
(2296, 'Mzuzu City', 131, NULL, NULL),
(2297, 'Nkhata Bay', 131, NULL, NULL),
(2298, 'Nkhotakota', 131, NULL, NULL),
(2299, 'Nsanje', 131, NULL, NULL),
(2300, 'Ntcheu', 131, NULL, NULL),
(2301, 'Ntchisi', 131, NULL, NULL),
(2302, 'Phalombe', 131, NULL, NULL),
(2303, 'Rumphi', 131, NULL, NULL),
(2304, 'Salima', 131, NULL, NULL),
(2305, 'Thyolo', 131, NULL, NULL),
(2306, 'Zomba Municipality', 131, NULL, NULL),
(2307, 'Johor', 132, NULL, NULL),
(2308, 'Kedah', 132, NULL, NULL),
(2309, 'Kelantan', 132, NULL, NULL),
(2310, 'Kuala Lumpur', 132, NULL, NULL),
(2311, 'Labuan', 132, NULL, NULL),
(2312, 'Melaka', 132, NULL, NULL),
(2313, 'Negeri Johor', 132, NULL, NULL),
(2314, 'Negeri Sembilan', 132, NULL, NULL),
(2315, 'Pahang', 132, NULL, NULL),
(2316, 'Penang', 132, NULL, NULL),
(2317, 'Perak', 132, NULL, NULL),
(2318, 'Perlis', 132, NULL, NULL),
(2319, 'Pulau Pinang', 132, NULL, NULL),
(2320, 'Sabah', 132, NULL, NULL),
(2321, 'Sarawak', 132, NULL, NULL),
(2322, 'Selangor', 132, NULL, NULL),
(2323, 'Sembilan', 132, NULL, NULL),
(2324, 'Terengganu', 132, NULL, NULL),
(2325, 'Alif Alif', 133, NULL, NULL),
(2326, 'Alif Dhaal', 133, NULL, NULL),
(2327, 'Baa', 133, NULL, NULL),
(2328, 'Dhaal', 133, NULL, NULL),
(2329, 'Faaf', 133, NULL, NULL),
(2330, 'Gaaf Alif', 133, NULL, NULL),
(2331, 'Gaaf Dhaal', 133, NULL, NULL),
(2332, 'Ghaviyani', 133, NULL, NULL),
(2333, 'Haa Alif', 133, NULL, NULL),
(2334, 'Haa Dhaal', 133, NULL, NULL),
(2335, 'Kaaf', 133, NULL, NULL),
(2336, 'Laam', 133, NULL, NULL),
(2337, 'Lhaviyani', 133, NULL, NULL),
(2338, 'Male', 133, NULL, NULL),
(2339, 'Miim', 133, NULL, NULL),
(2340, 'Nuun', 133, NULL, NULL),
(2341, 'Raa', 133, NULL, NULL),
(2342, 'Shaviyani', 133, NULL, NULL),
(2343, 'Siin', 133, NULL, NULL),
(2344, 'Thaa', 133, NULL, NULL),
(2345, 'Vaav', 133, NULL, NULL),
(2346, 'Bamako', 134, NULL, NULL),
(2347, 'Gao', 134, NULL, NULL),
(2348, 'Kayes', 134, NULL, NULL),
(2349, 'Kidal', 134, NULL, NULL),
(2350, 'Koulikoro', 134, NULL, NULL),
(2351, 'Mopti', 134, NULL, NULL),
(2352, 'Segou', 134, NULL, NULL),
(2353, 'Sikasso', 134, NULL, NULL),
(2354, 'Tombouctou', 134, NULL, NULL),
(2355, 'Gozo and Comino', 135, NULL, NULL),
(2356, 'Inner Harbour', 135, NULL, NULL),
(2357, 'Northern', 135, NULL, NULL),
(2358, 'Outer Harbour', 135, NULL, NULL),
(2359, 'South Eastern', 135, NULL, NULL),
(2360, 'Valletta', 135, NULL, NULL),
(2361, 'Western', 135, NULL, NULL),
(2362, 'Castletown', 136, NULL, NULL),
(2363, 'Douglas', 136, NULL, NULL),
(2364, 'Laxey', 136, NULL, NULL),
(2365, 'Onchan', 136, NULL, NULL),
(2366, 'Peel', 136, NULL, NULL),
(2367, 'Port Erin', 136, NULL, NULL),
(2368, 'Port Saint Mary', 136, NULL, NULL),
(2369, 'Ramsey', 136, NULL, NULL),
(2370, 'Ailinlaplap', 137, NULL, NULL),
(2371, 'Ailuk', 137, NULL, NULL),
(2372, 'Arno', 137, NULL, NULL),
(2373, 'Aur', 137, NULL, NULL),
(2374, 'Bikini', 137, NULL, NULL),
(2375, 'Ebon', 137, NULL, NULL),
(2376, 'Enewetak', 137, NULL, NULL),
(2377, 'Jabat', 137, NULL, NULL),
(2378, 'Jaluit', 137, NULL, NULL),
(2379, 'Kili', 137, NULL, NULL),
(2380, 'Kwajalein', 137, NULL, NULL),
(2381, 'Lae', 137, NULL, NULL),
(2382, 'Lib', 137, NULL, NULL),
(2383, 'Likiep', 137, NULL, NULL),
(2384, 'Majuro', 137, NULL, NULL),
(2385, 'Maloelap', 137, NULL, NULL),
(2386, 'Mejit', 137, NULL, NULL),
(2387, 'Mili', 137, NULL, NULL),
(2388, 'Namorik', 137, NULL, NULL),
(2389, 'Namu', 137, NULL, NULL),
(2390, 'Rongelap', 137, NULL, NULL),
(2391, 'Ujae', 137, NULL, NULL),
(2392, 'Utrik', 137, NULL, NULL),
(2393, 'Wotho', 137, NULL, NULL),
(2394, 'Wotje', 137, NULL, NULL),
(2395, 'Fort-de-France', 138, NULL, NULL),
(2396, 'La Trinite', 138, NULL, NULL),
(2397, 'Le Marin', 138, NULL, NULL),
(2398, 'Saint-Pierre', 138, NULL, NULL),
(2399, 'Adrar', 139, NULL, NULL),
(2400, 'Assaba', 139, NULL, NULL),
(2401, 'Brakna', 139, NULL, NULL),
(2402, 'Dhakhlat Nawadibu', 139, NULL, NULL),
(2403, 'Hudh-al-Gharbi', 139, NULL, NULL),
(2404, 'Hudh-ash-Sharqi', 139, NULL, NULL),
(2405, 'Inshiri', 139, NULL, NULL),
(2406, 'Nawakshut', 139, NULL, NULL),
(2407, 'Qidimagha', 139, NULL, NULL),
(2408, 'Qurqul', 139, NULL, NULL),
(2409, 'Taqant', 139, NULL, NULL),
(2410, 'Tiris Zammur', 139, NULL, NULL),
(2411, 'Trarza', 139, NULL, NULL),
(2412, 'Black River', 140, NULL, NULL),
(2413, 'Eau Coulee', 140, NULL, NULL),
(2414, 'Flacq', 140, NULL, NULL),
(2415, 'Floreal', 140, NULL, NULL),
(2416, 'Grand Port', 140, NULL, NULL),
(2417, 'Moka', 140, NULL, NULL),
(2418, 'Pamplempousses', 140, NULL, NULL),
(2419, 'Plaines Wilhelm', 140, NULL, NULL),
(2420, 'Port Louis', 140, NULL, NULL),
(2421, 'Riviere du Rempart', 140, NULL, NULL),
(2422, 'Rodrigues', 140, NULL, NULL),
(2423, 'Rose Hill', 140, NULL, NULL),
(2424, 'Savanne', 140, NULL, NULL),
(2425, 'Mayotte', 141, NULL, NULL),
(2426, 'Pamanzi', 141, NULL, NULL),
(2427, 'Aguascalientes', 142, NULL, NULL),
(2428, 'Baja California', 142, NULL, NULL),
(2429, 'Baja California Sur', 142, NULL, NULL),
(2430, 'Campeche', 142, NULL, NULL),
(2431, 'Chiapas', 142, NULL, NULL),
(2432, 'Chihuahua', 142, NULL, NULL),
(2433, 'Coahuila', 142, NULL, NULL),
(2434, 'Colima', 142, NULL, NULL),
(2435, 'Distrito Federal', 142, NULL, NULL),
(2436, 'Durango', 142, NULL, NULL),
(2437, 'Estado de Mexico', 142, NULL, NULL),
(2438, 'Guanajuato', 142, NULL, NULL),
(2439, 'Guerrero', 142, NULL, NULL),
(2440, 'Hidalgo', 142, NULL, NULL),
(2441, 'Jalisco', 142, NULL, NULL),
(2442, 'Mexico', 142, NULL, NULL),
(2443, 'Michoacan', 142, NULL, NULL),
(2444, 'Morelos', 142, NULL, NULL),
(2445, 'Nayarit', 142, NULL, NULL),
(2446, 'Nuevo Leon', 142, NULL, NULL),
(2447, 'Oaxaca', 142, NULL, NULL),
(2448, 'Puebla', 142, NULL, NULL),
(2449, 'Queretaro', 142, NULL, NULL),
(2450, 'Quintana Roo', 142, NULL, NULL),
(2451, 'San Luis Potosi', 142, NULL, NULL),
(2452, 'Sinaloa', 142, NULL, NULL),
(2453, 'Sonora', 142, NULL, NULL),
(2454, 'Tabasco', 142, NULL, NULL),
(2455, 'Tamaulipas', 142, NULL, NULL),
(2456, 'Tlaxcala', 142, NULL, NULL),
(2457, 'Veracruz', 142, NULL, NULL),
(2458, 'Yucatan', 142, NULL, NULL),
(2459, 'Zacatecas', 142, NULL, NULL),
(2460, 'Chuuk', 143, NULL, NULL),
(2461, 'Kusaie', 143, NULL, NULL),
(2462, 'Pohnpei', 143, NULL, NULL),
(2463, 'Yap', 143, NULL, NULL),
(2464, 'Balti', 144, NULL, NULL),
(2465, 'Cahul', 144, NULL, NULL),
(2466, 'Chisinau', 144, NULL, NULL),
(2467, 'Chisinau Oras', 144, NULL, NULL),
(2468, 'Edinet', 144, NULL, NULL),
(2469, 'Gagauzia', 144, NULL, NULL),
(2470, 'Lapusna', 144, NULL, NULL),
(2471, 'Orhei', 144, NULL, NULL),
(2472, 'Soroca', 144, NULL, NULL),
(2473, 'Taraclia', 144, NULL, NULL),
(2474, 'Tighina', 144, NULL, NULL),
(2475, 'Transnistria', 144, NULL, NULL),
(2476, 'Ungheni', 144, NULL, NULL),
(2477, 'Fontvieille', 145, NULL, NULL),
(2478, 'La Condamine', 145, NULL, NULL),
(2479, 'Monaco-Ville', 145, NULL, NULL),
(2480, 'Monte Carlo', 145, NULL, NULL),
(2481, 'Arhangaj', 146, NULL, NULL),
(2482, 'Bajan-Olgij', 146, NULL, NULL),
(2483, 'Bajanhongor', 146, NULL, NULL),
(2484, 'Bulgan', 146, NULL, NULL),
(2485, 'Darhan-Uul', 146, NULL, NULL),
(2486, 'Dornod', 146, NULL, NULL),
(2487, 'Dornogovi', 146, NULL, NULL),
(2488, 'Dundgovi', 146, NULL, NULL),
(2489, 'Govi-Altaj', 146, NULL, NULL),
(2490, 'Govisumber', 146, NULL, NULL),
(2491, 'Hentij', 146, NULL, NULL),
(2492, 'Hovd', 146, NULL, NULL),
(2493, 'Hovsgol', 146, NULL, NULL),
(2494, 'Omnogovi', 146, NULL, NULL),
(2495, 'Orhon', 146, NULL, NULL),
(2496, 'Ovorhangaj', 146, NULL, NULL),
(2497, 'Selenge', 146, NULL, NULL),
(2498, 'Suhbaatar', 146, NULL, NULL),
(2499, 'Tov', 146, NULL, NULL),
(2500, 'Ulaanbaatar', 146, NULL, NULL),
(2501, 'Uvs', 146, NULL, NULL),
(2502, 'Zavhan', 146, NULL, NULL),
(2503, 'Montserrat', 147, NULL, NULL),
(2504, 'Agadir', 148, NULL, NULL),
(2505, 'Casablanca', 148, NULL, NULL),
(2506, 'Chaouia-Ouardigha', 148, NULL, NULL),
(2507, 'Doukkala-Abda', 148, NULL, NULL),
(2508, 'Fes-Boulemane', 148, NULL, NULL),
(2509, 'Gharb-Chrarda-Beni Hssen', 148, NULL, NULL),
(2510, 'Guelmim', 148, NULL, NULL),
(2511, 'Kenitra', 148, NULL, NULL),
(2512, 'Marrakech-Tensift-Al Haouz', 148, NULL, NULL),
(2513, 'Meknes-Tafilalet', 148, NULL, NULL),
(2514, 'Oriental', 148, NULL, NULL),
(2515, 'Oujda', 148, NULL, NULL),
(2516, 'Province de Tanger', 148, NULL, NULL),
(2517, 'Rabat-Sale-Zammour-Zaer', 148, NULL, NULL),
(2518, 'Sala Al Jadida', 148, NULL, NULL),
(2519, 'Settat', 148, NULL, NULL),
(2520, 'Souss Massa-Draa', 148, NULL, NULL),
(2521, 'Tadla-Azilal', 148, NULL, NULL),
(2522, 'Tangier-Tetouan', 148, NULL, NULL),
(2523, 'Taza-Al Hoceima-Taounate', 148, NULL, NULL),
(2524, 'Wilaya de Casablanca', 148, NULL, NULL),
(2525, 'Wilaya de Rabat-Sale', 148, NULL, NULL),
(2526, 'Cabo Delgado', 149, NULL, NULL),
(2527, 'Gaza', 149, NULL, NULL),
(2528, 'Inhambane', 149, NULL, NULL),
(2529, 'Manica', 149, NULL, NULL),
(2530, 'Maputo', 149, NULL, NULL),
(2531, 'Maputo Provincia', 149, NULL, NULL),
(2532, 'Nampula', 149, NULL, NULL),
(2533, 'Niassa', 149, NULL, NULL),
(2534, 'Sofala', 149, NULL, NULL),
(2535, 'Tete', 149, NULL, NULL),
(2536, 'Zambezia', 149, NULL, NULL),
(2537, 'Ayeyarwady', 150, NULL, NULL),
(2538, 'Bago', 150, NULL, NULL),
(2539, 'Chin', 150, NULL, NULL),
(2540, 'Kachin', 150, NULL, NULL),
(2541, 'Kayah', 150, NULL, NULL),
(2542, 'Kayin', 150, NULL, NULL),
(2543, 'Magway', 150, NULL, NULL),
(2544, 'Mandalay', 150, NULL, NULL),
(2545, 'Mon', 150, NULL, NULL),
(2546, 'Nay Pyi Taw', 150, NULL, NULL),
(2547, 'Rakhine', 150, NULL, NULL),
(2548, 'Sagaing', 150, NULL, NULL),
(2549, 'Shan', 150, NULL, NULL),
(2550, 'Tanintharyi', 150, NULL, NULL),
(2551, 'Yangon', 150, NULL, NULL),
(2552, 'Caprivi', 151, NULL, NULL),
(2553, 'Erongo', 151, NULL, NULL),
(2554, 'Hardap', 151, NULL, NULL),
(2555, 'Karas', 151, NULL, NULL),
(2556, 'Kavango', 151, NULL, NULL),
(2557, 'Khomas', 151, NULL, NULL),
(2558, 'Kunene', 151, NULL, NULL),
(2559, 'Ohangwena', 151, NULL, NULL),
(2560, 'Omaheke', 151, NULL, NULL),
(2561, 'Omusati', 151, NULL, NULL),
(2562, 'Oshana', 151, NULL, NULL),
(2563, 'Oshikoto', 151, NULL, NULL),
(2564, 'Otjozondjupa', 151, NULL, NULL),
(2565, 'Yaren', 152, NULL, NULL),
(2566, 'Bagmati', 153, NULL, NULL),
(2567, 'Bheri', 153, NULL, NULL),
(2568, 'Dhawalagiri', 153, NULL, NULL),
(2569, 'Gandaki', 153, NULL, NULL),
(2570, 'Janakpur', 153, NULL, NULL),
(2571, 'Karnali', 153, NULL, NULL),
(2572, 'Koshi', 153, NULL, NULL),
(2573, 'Lumbini', 153, NULL, NULL),
(2574, 'Mahakali', 153, NULL, NULL),
(2575, 'Mechi', 153, NULL, NULL),
(2576, 'Narayani', 153, NULL, NULL),
(2577, 'Rapti', 153, NULL, NULL),
(2578, 'Sagarmatha', 153, NULL, NULL),
(2579, 'Seti', 153, NULL, NULL),
(2580, 'Bonaire', 154, NULL, NULL),
(2581, 'Curacao', 154, NULL, NULL),
(2582, 'Saba', 154, NULL, NULL),
(2583, 'Sint Eustatius', 154, NULL, NULL),
(2584, 'Sint Maarten', 154, NULL, NULL),
(2585, 'Amsterdam', 155, NULL, NULL),
(2586, 'Benelux', 155, NULL, NULL),
(2587, 'Drenthe', 155, NULL, NULL),
(2588, 'Flevoland', 155, NULL, NULL),
(2589, 'Friesland', 155, NULL, NULL),
(2590, 'Gelderland', 155, NULL, NULL),
(2591, 'Groningen', 155, NULL, NULL),
(2592, 'Limburg', 155, NULL, NULL),
(2593, 'Noord-Brabant', 155, NULL, NULL),
(2594, 'Noord-Holland', 155, NULL, NULL),
(2595, 'Overijssel', 155, NULL, NULL),
(2596, 'South Holland', 155, NULL, NULL),
(2597, 'Utrecht', 155, NULL, NULL),
(2598, 'Zeeland', 155, NULL, NULL),
(2599, 'Zuid-Holland', 155, NULL, NULL),
(2600, 'Iles', 156, NULL, NULL),
(2601, 'Nord', 156, NULL, NULL),
(2602, 'Sud', 156, NULL, NULL),
(2603, 'Area Outside Region', 157, NULL, NULL),
(2604, 'Auckland', 157, NULL, NULL),
(2605, 'Bay of Plenty', 157, NULL, NULL),
(2606, 'Canterbury', 157, NULL, NULL),
(2607, 'Christchurch', 157, NULL, NULL),
(2608, 'Gisborne', 157, NULL, NULL),
(2609, 'Hawke\'s Bay', 157, NULL, NULL),
(2610, 'Manawatu-Wanganui', 157, NULL, NULL),
(2611, 'Marlborough', 157, NULL, NULL),
(2612, 'Nelson', 157, NULL, NULL),
(2613, 'Northland', 157, NULL, NULL),
(2614, 'Otago', 157, NULL, NULL),
(2615, 'Rodney', 157, NULL, NULL),
(2616, 'Southland', 157, NULL, NULL),
(2617, 'Taranaki', 157, NULL, NULL),
(2618, 'Tasman', 157, NULL, NULL),
(2619, 'Waikato', 157, NULL, NULL),
(2620, 'Wellington', 157, NULL, NULL),
(2621, 'West Coast', 157, NULL, NULL),
(2622, 'Atlantico Norte', 158, NULL, NULL),
(2623, 'Atlantico Sur', 158, NULL, NULL),
(2624, 'Boaco', 158, NULL, NULL),
(2625, 'Carazo', 158, NULL, NULL),
(2626, 'Chinandega', 158, NULL, NULL),
(2627, 'Chontales', 158, NULL, NULL),
(2628, 'Esteli', 158, NULL, NULL),
(2629, 'Granada', 158, NULL, NULL),
(2630, 'Jinotega', 158, NULL, NULL),
(2631, 'Leon', 158, NULL, NULL),
(2632, 'Madriz', 158, NULL, NULL),
(2633, 'Managua', 158, NULL, NULL),
(2634, 'Masaya', 158, NULL, NULL),
(2635, 'Matagalpa', 158, NULL, NULL),
(2636, 'Nueva Segovia', 158, NULL, NULL),
(2637, 'Rio San Juan', 158, NULL, NULL),
(2638, 'Rivas', 158, NULL, NULL),
(2639, 'Agadez', 159, NULL, NULL),
(2640, 'Diffa', 159, NULL, NULL),
(2641, 'Dosso', 159, NULL, NULL),
(2642, 'Maradi', 159, NULL, NULL),
(2643, 'Niamey', 159, NULL, NULL),
(2644, 'Tahoua', 159, NULL, NULL),
(2645, 'Tillabery', 159, NULL, NULL),
(2646, 'Zinder', 159, NULL, NULL),
(2647, 'Abia', 160, NULL, NULL),
(2648, 'Abuja Federal Capital Territor', 160, NULL, NULL),
(2649, 'Adamawa', 160, NULL, NULL),
(2650, 'Akwa Ibom', 160, NULL, NULL),
(2651, 'Anambra', 160, NULL, NULL),
(2652, 'Bauchi', 160, NULL, NULL),
(2653, 'Bayelsa', 160, NULL, NULL),
(2654, 'Benue', 160, NULL, NULL),
(2655, 'Borno', 160, NULL, NULL),
(2656, 'Cross River', 160, NULL, NULL),
(2657, 'Delta', 160, NULL, NULL),
(2658, 'Ebonyi', 160, NULL, NULL),
(2659, 'Edo', 160, NULL, NULL),
(2660, 'Ekiti', 160, NULL, NULL),
(2661, 'Enugu', 160, NULL, NULL),
(2662, 'Gombe', 160, NULL, NULL),
(2663, 'Imo', 160, NULL, NULL),
(2664, 'Jigawa', 160, NULL, NULL),
(2665, 'Kaduna', 160, NULL, NULL),
(2666, 'Kano', 160, NULL, NULL),
(2667, 'Katsina', 160, NULL, NULL),
(2668, 'Kebbi', 160, NULL, NULL),
(2669, 'Kogi', 160, NULL, NULL),
(2670, 'Kwara', 160, NULL, NULL),
(2671, 'Lagos', 160, NULL, NULL),
(2672, 'Nassarawa', 160, NULL, NULL),
(2673, 'Niger', 160, NULL, NULL),
(2674, 'Ogun', 160, NULL, NULL),
(2675, 'Ondo', 160, NULL, NULL),
(2676, 'Osun', 160, NULL, NULL),
(2677, 'Oyo', 160, NULL, NULL),
(2678, 'Plateau', 160, NULL, NULL),
(2679, 'Rivers', 160, NULL, NULL),
(2680, 'Sokoto', 160, NULL, NULL),
(2681, 'Taraba', 160, NULL, NULL),
(2682, 'Yobe', 160, NULL, NULL),
(2683, 'Zamfara', 160, NULL, NULL),
(2684, 'Niue', 161, NULL, NULL),
(2685, 'Norfolk Island', 162, NULL, NULL),
(2686, 'Northern Islands', 163, NULL, NULL),
(2687, 'Rota', 163, NULL, NULL),
(2688, 'Saipan', 163, NULL, NULL),
(2689, 'Tinian', 163, NULL, NULL),
(2690, 'Akershus', 164, NULL, NULL),
(2691, 'Aust Agder', 164, NULL, NULL),
(2692, 'Bergen', 164, NULL, NULL),
(2693, 'Buskerud', 164, NULL, NULL),
(2694, 'Finnmark', 164, NULL, NULL),
(2695, 'Hedmark', 164, NULL, NULL),
(2696, 'Hordaland', 164, NULL, NULL),
(2697, 'Moere og Romsdal', 164, NULL, NULL),
(2698, 'Nord Trondelag', 164, NULL, NULL),
(2699, 'Nordland', 164, NULL, NULL),
(2700, 'Oestfold', 164, NULL, NULL),
(2701, 'Oppland', 164, NULL, NULL),
(2702, 'Oslo', 164, NULL, NULL),
(2703, 'Rogaland', 164, NULL, NULL),
(2704, 'Soer Troendelag', 164, NULL, NULL),
(2705, 'Sogn og Fjordane', 164, NULL, NULL),
(2706, 'Stavern', 164, NULL, NULL),
(2707, 'Sykkylven', 164, NULL, NULL),
(2708, 'Telemark', 164, NULL, NULL),
(2709, 'Troms', 164, NULL, NULL),
(2710, 'Vest Agder', 164, NULL, NULL),
(2711, 'Vestfold', 164, NULL, NULL),
(2712, 'ÃƒÂ˜stfold', 164, NULL, NULL),
(2713, 'Al Buraimi', 165, NULL, NULL),
(2714, 'Dhufar', 165, NULL, NULL),
(2715, 'Masqat', 165, NULL, NULL),
(2716, 'Musandam', 165, NULL, NULL),
(2717, 'Rusayl', 165, NULL, NULL),
(2718, 'Wadi Kabir', 165, NULL, NULL),
(2719, 'ad-Dakhiliyah', 165, NULL, NULL),
(2720, 'adh-Dhahirah', 165, NULL, NULL),
(2721, 'al-Batinah', 165, NULL, NULL),
(2722, 'ash-Sharqiyah', 165, NULL, NULL),
(2723, 'Azad kashmir', 166, NULL, NULL),
(2724, 'Balochistan', 166, NULL, NULL),
(2725, 'Fata', 166, NULL, NULL),
(2726, 'Gilgit–baltistan', 166, NULL, NULL),
(2727, 'Islamabad capital territory', 166, NULL, NULL),
(2728, 'Khyber Pakhtunkhwa', 166, NULL, NULL),
(2729, 'Punjab', 166, NULL, NULL),
(2730, 'Sindh', 166, NULL, NULL),
(2731, 'Aimeliik', 167, NULL, NULL),
(2732, 'Airai', 167, NULL, NULL),
(2733, 'Angaur', 167, NULL, NULL),
(2734, 'Hatobohei', 167, NULL, NULL),
(2735, 'Kayangel', 167, NULL, NULL),
(2736, 'Koror', 167, NULL, NULL),
(2737, 'Melekeok', 167, NULL, NULL),
(2738, 'Ngaraard', 167, NULL, NULL),
(2739, 'Ngardmau', 167, NULL, NULL),
(2740, 'Ngaremlengui', 167, NULL, NULL),
(2741, 'Ngatpang', 167, NULL, NULL),
(2742, 'Ngchesar', 167, NULL, NULL),
(2743, 'Ngerchelong', 167, NULL, NULL),
(2744, 'Ngiwal', 167, NULL, NULL),
(2745, 'Peleliu', 167, NULL, NULL),
(2746, 'Sonsorol', 167, NULL, NULL),
(2747, 'Ariha', 168, NULL, NULL),
(2748, 'Bayt Lahm', 168, NULL, NULL),
(2749, 'Bethlehem', 168, NULL, NULL),
(2750, 'Dayr-al-Balah', 168, NULL, NULL),
(2751, 'Ghazzah', 168, NULL, NULL),
(2752, 'Ghazzah ash-Shamaliyah', 168, NULL, NULL),
(2753, 'Janin', 168, NULL, NULL),
(2754, 'Khan Yunis', 168, NULL, NULL),
(2755, 'Nabulus', 168, NULL, NULL),
(2756, 'Qalqilyah', 168, NULL, NULL),
(2757, 'Rafah', 168, NULL, NULL),
(2758, 'Ram Allah wal-Birah', 168, NULL, NULL),
(2759, 'Salfit', 168, NULL, NULL),
(2760, 'Tubas', 168, NULL, NULL),
(2761, 'Tulkarm', 168, NULL, NULL),
(2762, 'al-Khalil', 168, NULL, NULL),
(2763, 'al-Quds', 168, NULL, NULL),
(2764, 'Bocas del Toro', 169, NULL, NULL),
(2765, 'Chiriqui', 169, NULL, NULL),
(2766, 'Cocle', 169, NULL, NULL),
(2767, 'Colon', 169, NULL, NULL),
(2768, 'Darien', 169, NULL, NULL),
(2769, 'Embera', 169, NULL, NULL),
(2770, 'Herrera', 169, NULL, NULL),
(2771, 'Kuna Yala', 169, NULL, NULL),
(2772, 'Los Santos', 169, NULL, NULL),
(2773, 'Ngobe Bugle', 169, NULL, NULL),
(2774, 'Panama', 169, NULL, NULL),
(2775, 'Veraguas', 169, NULL, NULL),
(2776, 'East New Britain', 170, NULL, NULL),
(2777, 'East Sepik', 170, NULL, NULL),
(2778, 'Eastern Highlands', 170, NULL, NULL),
(2779, 'Enga', 170, NULL, NULL),
(2780, 'Fly River', 170, NULL, NULL),
(2781, 'Gulf', 170, NULL, NULL),
(2782, 'Madang', 170, NULL, NULL),
(2783, 'Manus', 170, NULL, NULL),
(2784, 'Milne Bay', 170, NULL, NULL),
(2785, 'Morobe', 170, NULL, NULL),
(2786, 'National Capital District', 170, NULL, NULL),
(2787, 'New Ireland', 170, NULL, NULL),
(2788, 'North Solomons', 170, NULL, NULL),
(2789, 'Oro', 170, NULL, NULL),
(2790, 'Sandaun', 170, NULL, NULL),
(2791, 'Simbu', 170, NULL, NULL),
(2792, 'Southern Highlands', 170, NULL, NULL),
(2793, 'West New Britain', 170, NULL, NULL),
(2794, 'Western Highlands', 170, NULL, NULL),
(2795, 'Alto Paraguay', 171, NULL, NULL),
(2796, 'Alto Parana', 171, NULL, NULL),
(2797, 'Amambay', 171, NULL, NULL),
(2798, 'Asuncion', 171, NULL, NULL),
(2799, 'Boqueron', 171, NULL, NULL),
(2800, 'Caaguazu', 171, NULL, NULL),
(2801, 'Caazapa', 171, NULL, NULL),
(2802, 'Canendiyu', 171, NULL, NULL),
(2803, 'Central', 171, NULL, NULL),
(2804, 'Concepcion', 171, NULL, NULL),
(2805, 'Cordillera', 171, NULL, NULL),
(2806, 'Guaira', 171, NULL, NULL),
(2807, 'Itapua', 171, NULL, NULL),
(2808, 'Misiones', 171, NULL, NULL),
(2809, 'Neembucu', 171, NULL, NULL),
(2810, 'Paraguari', 171, NULL, NULL),
(2811, 'Presidente Hayes', 171, NULL, NULL),
(2812, 'San Pedro', 171, NULL, NULL),
(2813, 'Amazonas', 172, NULL, NULL),
(2814, 'Ancash', 172, NULL, NULL),
(2815, 'Apurimac', 172, NULL, NULL),
(2816, 'Arequipa', 172, NULL, NULL),
(2817, 'Ayacucho', 172, NULL, NULL),
(2818, 'Cajamarca', 172, NULL, NULL),
(2819, 'Cusco', 172, NULL, NULL),
(2820, 'Huancavelica', 172, NULL, NULL),
(2821, 'Huanuco', 172, NULL, NULL),
(2822, 'Ica', 172, NULL, NULL),
(2823, 'Junin', 172, NULL, NULL),
(2824, 'La Libertad', 172, NULL, NULL),
(2825, 'Lambayeque', 172, NULL, NULL),
(2826, 'Lima y Callao', 172, NULL, NULL),
(2827, 'Loreto', 172, NULL, NULL),
(2828, 'Madre de Dios', 172, NULL, NULL),
(2829, 'Moquegua', 172, NULL, NULL),
(2830, 'Pasco', 172, NULL, NULL),
(2831, 'Piura', 172, NULL, NULL),
(2832, 'Puno', 172, NULL, NULL),
(2833, 'San Martin', 172, NULL, NULL),
(2834, 'Tacna', 172, NULL, NULL),
(2835, 'Tumbes', 172, NULL, NULL),
(2836, 'Ucayali', 172, NULL, NULL),
(2837, 'Batangas', 173, NULL, NULL),
(2838, 'Bicol', 173, NULL, NULL),
(2839, 'Bulacan', 173, NULL, NULL),
(2840, 'Cagayan', 173, NULL, NULL),
(2841, 'Caraga', 173, NULL, NULL),
(2842, 'Central Luzon', 173, NULL, NULL),
(2843, 'Central Mindanao', 173, NULL, NULL),
(2844, 'Central Visayas', 173, NULL, NULL),
(2845, 'Cordillera', 173, NULL, NULL),
(2846, 'Davao', 173, NULL, NULL),
(2847, 'Eastern Visayas', 173, NULL, NULL),
(2848, 'Greater Metropolitan Area', 173, NULL, NULL),
(2849, 'Ilocos', 173, NULL, NULL),
(2850, 'Laguna', 173, NULL, NULL),
(2851, 'Luzon', 173, NULL, NULL);
INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(2852, 'Mactan', 173, NULL, NULL),
(2853, 'Metropolitan Manila Area', 173, NULL, NULL),
(2854, 'Muslim Mindanao', 173, NULL, NULL),
(2855, 'Northern Mindanao', 173, NULL, NULL),
(2856, 'Southern Mindanao', 173, NULL, NULL),
(2857, 'Southern Tagalog', 173, NULL, NULL),
(2858, 'Western Mindanao', 173, NULL, NULL),
(2859, 'Western Visayas', 173, NULL, NULL),
(2860, 'Pitcairn Island', 174, NULL, NULL),
(2861, 'Biale Blota', 175, NULL, NULL),
(2862, 'Dobroszyce', 175, NULL, NULL),
(2863, 'Dolnoslaskie', 175, NULL, NULL),
(2864, 'Dziekanow Lesny', 175, NULL, NULL),
(2865, 'Hopowo', 175, NULL, NULL),
(2866, 'Kartuzy', 175, NULL, NULL),
(2867, 'Koscian', 175, NULL, NULL),
(2868, 'Krakow', 175, NULL, NULL),
(2869, 'Kujawsko-Pomorskie', 175, NULL, NULL),
(2870, 'Lodzkie', 175, NULL, NULL),
(2871, 'Lubelskie', 175, NULL, NULL),
(2872, 'Lubuskie', 175, NULL, NULL),
(2873, 'Malomice', 175, NULL, NULL),
(2874, 'Malopolskie', 175, NULL, NULL),
(2875, 'Mazowieckie', 175, NULL, NULL),
(2876, 'Mirkow', 175, NULL, NULL),
(2877, 'Opolskie', 175, NULL, NULL),
(2878, 'Ostrowiec', 175, NULL, NULL),
(2879, 'Podkarpackie', 175, NULL, NULL),
(2880, 'Podlaskie', 175, NULL, NULL),
(2881, 'Polska', 175, NULL, NULL),
(2882, 'Pomorskie', 175, NULL, NULL),
(2883, 'Poznan', 175, NULL, NULL),
(2884, 'Pruszkow', 175, NULL, NULL),
(2885, 'Rymanowska', 175, NULL, NULL),
(2886, 'Rzeszow', 175, NULL, NULL),
(2887, 'Slaskie', 175, NULL, NULL),
(2888, 'Stare Pole', 175, NULL, NULL),
(2889, 'Swietokrzyskie', 175, NULL, NULL),
(2890, 'Warminsko-Mazurskie', 175, NULL, NULL),
(2891, 'Warsaw', 175, NULL, NULL),
(2892, 'Wejherowo', 175, NULL, NULL),
(2893, 'Wielkopolskie', 175, NULL, NULL),
(2894, 'Wroclaw', 175, NULL, NULL),
(2895, 'Zachodnio-Pomorskie', 175, NULL, NULL),
(2896, 'Zukowo', 175, NULL, NULL),
(2897, 'Abrantes', 176, NULL, NULL),
(2898, 'Acores', 176, NULL, NULL),
(2899, 'Alentejo', 176, NULL, NULL),
(2900, 'Algarve', 176, NULL, NULL),
(2901, 'Braga', 176, NULL, NULL),
(2902, 'Centro', 176, NULL, NULL),
(2903, 'Distrito de Leiria', 176, NULL, NULL),
(2904, 'Distrito de Viana do Castelo', 176, NULL, NULL),
(2905, 'Distrito de Vila Real', 176, NULL, NULL),
(2906, 'Distrito do Porto', 176, NULL, NULL),
(2907, 'Lisboa e Vale do Tejo', 176, NULL, NULL),
(2908, 'Madeira', 176, NULL, NULL),
(2909, 'Norte', 176, NULL, NULL),
(2910, 'Paivas', 176, NULL, NULL),
(2911, 'Arecibo', 177, NULL, NULL),
(2912, 'Bayamon', 177, NULL, NULL),
(2913, 'Carolina', 177, NULL, NULL),
(2914, 'Florida', 177, NULL, NULL),
(2915, 'Guayama', 177, NULL, NULL),
(2916, 'Humacao', 177, NULL, NULL),
(2917, 'Mayaguez-Aguadilla', 177, NULL, NULL),
(2918, 'Ponce', 177, NULL, NULL),
(2919, 'Salinas', 177, NULL, NULL),
(2920, 'San Juan', 177, NULL, NULL),
(2921, 'Doha', 178, NULL, NULL),
(2922, 'Jarian-al-Batnah', 178, NULL, NULL),
(2923, 'Umm Salal', 178, NULL, NULL),
(2924, 'ad-Dawhah', 178, NULL, NULL),
(2925, 'al-Ghuwayriyah', 178, NULL, NULL),
(2926, 'al-Jumayliyah', 178, NULL, NULL),
(2927, 'al-Khawr', 178, NULL, NULL),
(2928, 'al-Wakrah', 178, NULL, NULL),
(2929, 'ar-Rayyan', 178, NULL, NULL),
(2930, 'ash-Shamal', 178, NULL, NULL),
(2931, 'Saint-Benoit', 179, NULL, NULL),
(2932, 'Saint-Denis', 179, NULL, NULL),
(2933, 'Saint-Paul', 179, NULL, NULL),
(2934, 'Saint-Pierre', 179, NULL, NULL),
(2935, 'Alba', 180, NULL, NULL),
(2936, 'Arad', 180, NULL, NULL),
(2937, 'Arges', 180, NULL, NULL),
(2938, 'Bacau', 180, NULL, NULL),
(2939, 'Bihor', 180, NULL, NULL),
(2940, 'Bistrita-Nasaud', 180, NULL, NULL),
(2941, 'Botosani', 180, NULL, NULL),
(2942, 'Braila', 180, NULL, NULL),
(2943, 'Brasov', 180, NULL, NULL),
(2944, 'Bucuresti', 180, NULL, NULL),
(2945, 'Buzau', 180, NULL, NULL),
(2946, 'Calarasi', 180, NULL, NULL),
(2947, 'Caras-Severin', 180, NULL, NULL),
(2948, 'Cluj', 180, NULL, NULL),
(2949, 'Constanta', 180, NULL, NULL),
(2950, 'Covasna', 180, NULL, NULL),
(2951, 'Dambovita', 180, NULL, NULL),
(2952, 'Dolj', 180, NULL, NULL),
(2953, 'Galati', 180, NULL, NULL),
(2954, 'Giurgiu', 180, NULL, NULL),
(2955, 'Gorj', 180, NULL, NULL),
(2956, 'Harghita', 180, NULL, NULL),
(2957, 'Hunedoara', 180, NULL, NULL),
(2958, 'Ialomita', 180, NULL, NULL),
(2959, 'Iasi', 180, NULL, NULL),
(2960, 'Ilfov', 180, NULL, NULL),
(2961, 'Maramures', 180, NULL, NULL),
(2962, 'Mehedinti', 180, NULL, NULL),
(2963, 'Mures', 180, NULL, NULL),
(2964, 'Neamt', 180, NULL, NULL),
(2965, 'Olt', 180, NULL, NULL),
(2966, 'Prahova', 180, NULL, NULL),
(2967, 'Salaj', 180, NULL, NULL),
(2968, 'Satu Mare', 180, NULL, NULL),
(2969, 'Sibiu', 180, NULL, NULL),
(2970, 'Sondelor', 180, NULL, NULL),
(2971, 'Suceava', 180, NULL, NULL),
(2972, 'Teleorman', 180, NULL, NULL),
(2973, 'Timis', 180, NULL, NULL),
(2974, 'Tulcea', 180, NULL, NULL),
(2975, 'Valcea', 180, NULL, NULL),
(2976, 'Vaslui', 180, NULL, NULL),
(2977, 'Vrancea', 180, NULL, NULL),
(2978, 'Adygeja', 181, NULL, NULL),
(2979, 'Aga', 181, NULL, NULL),
(2980, 'Alanija', 181, NULL, NULL),
(2981, 'Altaj', 181, NULL, NULL),
(2982, 'Amur', 181, NULL, NULL),
(2983, 'Arhangelsk', 181, NULL, NULL),
(2984, 'Astrahan', 181, NULL, NULL),
(2985, 'Bashkortostan', 181, NULL, NULL),
(2986, 'Belgorod', 181, NULL, NULL),
(2987, 'Brjansk', 181, NULL, NULL),
(2988, 'Burjatija', 181, NULL, NULL),
(2989, 'Chechenija', 181, NULL, NULL),
(2990, 'Cheljabinsk', 181, NULL, NULL),
(2991, 'Chita', 181, NULL, NULL),
(2992, 'Chukotka', 181, NULL, NULL),
(2993, 'Chuvashija', 181, NULL, NULL),
(2994, 'Dagestan', 181, NULL, NULL),
(2995, 'Evenkija', 181, NULL, NULL),
(2996, 'Gorno-Altaj', 181, NULL, NULL),
(2997, 'Habarovsk', 181, NULL, NULL),
(2998, 'Hakasija', 181, NULL, NULL),
(2999, 'Hanty-Mansija', 181, NULL, NULL),
(3000, 'Ingusetija', 181, NULL, NULL),
(3001, 'Irkutsk', 181, NULL, NULL),
(3002, 'Ivanovo', 181, NULL, NULL),
(3003, 'Jamalo-Nenets', 181, NULL, NULL),
(3004, 'Jaroslavl', 181, NULL, NULL),
(3005, 'Jevrej', 181, NULL, NULL),
(3006, 'Kabardino-Balkarija', 181, NULL, NULL),
(3007, 'Kaliningrad', 181, NULL, NULL),
(3008, 'Kalmykija', 181, NULL, NULL),
(3009, 'Kaluga', 181, NULL, NULL),
(3010, 'Kamchatka', 181, NULL, NULL),
(3011, 'Karachaj-Cherkessija', 181, NULL, NULL),
(3012, 'Karelija', 181, NULL, NULL),
(3013, 'Kemerovo', 181, NULL, NULL),
(3014, 'Khabarovskiy Kray', 181, NULL, NULL),
(3015, 'Kirov', 181, NULL, NULL),
(3016, 'Komi', 181, NULL, NULL),
(3017, 'Komi-Permjakija', 181, NULL, NULL),
(3018, 'Korjakija', 181, NULL, NULL),
(3019, 'Kostroma', 181, NULL, NULL),
(3020, 'Krasnodar', 181, NULL, NULL),
(3021, 'Krasnojarsk', 181, NULL, NULL),
(3022, 'Krasnoyarskiy Kray', 181, NULL, NULL),
(3023, 'Kurgan', 181, NULL, NULL),
(3024, 'Kursk', 181, NULL, NULL),
(3025, 'Leningrad', 181, NULL, NULL),
(3026, 'Lipeck', 181, NULL, NULL),
(3027, 'Magadan', 181, NULL, NULL),
(3028, 'Marij El', 181, NULL, NULL),
(3029, 'Mordovija', 181, NULL, NULL),
(3030, 'Moscow', 181, NULL, NULL),
(3031, 'Moskovskaja Oblast', 181, NULL, NULL),
(3032, 'Moskovskaya Oblast', 181, NULL, NULL),
(3033, 'Moskva', 181, NULL, NULL),
(3034, 'Murmansk', 181, NULL, NULL),
(3035, 'Nenets', 181, NULL, NULL),
(3036, 'Nizhnij Novgorod', 181, NULL, NULL),
(3037, 'Novgorod', 181, NULL, NULL),
(3038, 'Novokusnezk', 181, NULL, NULL),
(3039, 'Novosibirsk', 181, NULL, NULL),
(3040, 'Omsk', 181, NULL, NULL),
(3041, 'Orenburg', 181, NULL, NULL),
(3042, 'Orjol', 181, NULL, NULL),
(3043, 'Penza', 181, NULL, NULL),
(3044, 'Perm', 181, NULL, NULL),
(3045, 'Primorje', 181, NULL, NULL),
(3046, 'Pskov', 181, NULL, NULL),
(3047, 'Pskovskaya Oblast', 181, NULL, NULL),
(3048, 'Rjazan', 181, NULL, NULL),
(3049, 'Rostov', 181, NULL, NULL),
(3050, 'Saha', 181, NULL, NULL),
(3051, 'Sahalin', 181, NULL, NULL),
(3052, 'Samara', 181, NULL, NULL),
(3053, 'Samarskaya', 181, NULL, NULL),
(3054, 'Sankt-Peterburg', 181, NULL, NULL),
(3055, 'Saratov', 181, NULL, NULL),
(3056, 'Smolensk', 181, NULL, NULL),
(3057, 'Stavropol', 181, NULL, NULL),
(3058, 'Sverdlovsk', 181, NULL, NULL),
(3059, 'Tajmyrija', 181, NULL, NULL),
(3060, 'Tambov', 181, NULL, NULL),
(3061, 'Tatarstan', 181, NULL, NULL),
(3062, 'Tjumen', 181, NULL, NULL),
(3063, 'Tomsk', 181, NULL, NULL),
(3064, 'Tula', 181, NULL, NULL),
(3065, 'Tver', 181, NULL, NULL),
(3066, 'Tyva', 181, NULL, NULL),
(3067, 'Udmurtija', 181, NULL, NULL),
(3068, 'Uljanovsk', 181, NULL, NULL),
(3069, 'Ulyanovskaya Oblast', 181, NULL, NULL),
(3070, 'Ust-Orda', 181, NULL, NULL),
(3071, 'Vladimir', 181, NULL, NULL),
(3072, 'Volgograd', 181, NULL, NULL),
(3073, 'Vologda', 181, NULL, NULL),
(3074, 'Voronezh', 181, NULL, NULL),
(3075, 'Butare', 182, NULL, NULL),
(3076, 'Byumba', 182, NULL, NULL),
(3077, 'Cyangugu', 182, NULL, NULL),
(3078, 'Gikongoro', 182, NULL, NULL),
(3079, 'Gisenyi', 182, NULL, NULL),
(3080, 'Gitarama', 182, NULL, NULL),
(3081, 'Kibungo', 182, NULL, NULL),
(3082, 'Kibuye', 182, NULL, NULL),
(3083, 'Kigali-ngali', 182, NULL, NULL),
(3084, 'Ruhengeri', 182, NULL, NULL),
(3085, 'Ascension', 183, NULL, NULL),
(3086, 'Gough Island', 183, NULL, NULL),
(3087, 'Saint Helena', 183, NULL, NULL),
(3088, 'Tristan da Cunha', 183, NULL, NULL),
(3089, 'Christ Church Nichola Town', 184, NULL, NULL),
(3090, 'Saint Anne Sandy Point', 184, NULL, NULL),
(3091, 'Saint George Basseterre', 184, NULL, NULL),
(3092, 'Saint George Gingerland', 184, NULL, NULL),
(3093, 'Saint James Windward', 184, NULL, NULL),
(3094, 'Saint John Capesterre', 184, NULL, NULL),
(3095, 'Saint John Figtree', 184, NULL, NULL),
(3096, 'Saint Mary Cayon', 184, NULL, NULL),
(3097, 'Saint Paul Capesterre', 184, NULL, NULL),
(3098, 'Saint Paul Charlestown', 184, NULL, NULL),
(3099, 'Saint Peter Basseterre', 184, NULL, NULL),
(3100, 'Saint Thomas Lowland', 184, NULL, NULL),
(3101, 'Saint Thomas Middle Island', 184, NULL, NULL),
(3102, 'Trinity Palmetto Point', 184, NULL, NULL),
(3103, 'Anse-la-Raye', 185, NULL, NULL),
(3104, 'Canaries', 185, NULL, NULL),
(3105, 'Castries', 185, NULL, NULL),
(3106, 'Choiseul', 185, NULL, NULL),
(3107, 'Dennery', 185, NULL, NULL),
(3108, 'Gros Inlet', 185, NULL, NULL),
(3109, 'Laborie', 185, NULL, NULL),
(3110, 'Micoud', 185, NULL, NULL),
(3111, 'Soufriere', 185, NULL, NULL),
(3112, 'Vieux Fort', 185, NULL, NULL),
(3113, 'Miquelon-Langlade', 186, NULL, NULL),
(3114, 'Saint-Pierre', 186, NULL, NULL),
(3115, 'Charlotte', 187, NULL, NULL),
(3116, 'Grenadines', 187, NULL, NULL),
(3117, 'Saint Andrew', 187, NULL, NULL),
(3118, 'Saint David', 187, NULL, NULL),
(3119, 'Saint George', 187, NULL, NULL),
(3120, 'Saint Patrick', 187, NULL, NULL),
(3121, 'A\'ana', 188, NULL, NULL),
(3122, 'Aiga-i-le-Tai', 188, NULL, NULL),
(3123, 'Atua', 188, NULL, NULL),
(3124, 'Fa\'asaleleaga', 188, NULL, NULL),
(3125, 'Gaga\'emauga', 188, NULL, NULL),
(3126, 'Gagaifomauga', 188, NULL, NULL),
(3127, 'Palauli', 188, NULL, NULL),
(3128, 'Satupa\'itea', 188, NULL, NULL),
(3129, 'Tuamasaga', 188, NULL, NULL),
(3130, 'Va\'a-o-Fonoti', 188, NULL, NULL),
(3131, 'Vaisigano', 188, NULL, NULL),
(3132, 'Acquaviva', 189, NULL, NULL),
(3133, 'Borgo Maggiore', 189, NULL, NULL),
(3134, 'Chiesanuova', 189, NULL, NULL),
(3135, 'Domagnano', 189, NULL, NULL),
(3136, 'Faetano', 189, NULL, NULL),
(3137, 'Fiorentino', 189, NULL, NULL),
(3138, 'Montegiardino', 189, NULL, NULL),
(3139, 'San Marino', 189, NULL, NULL),
(3140, 'Serravalle', 189, NULL, NULL),
(3141, 'Agua Grande', 190, NULL, NULL),
(3142, 'Cantagalo', 190, NULL, NULL),
(3143, 'Lemba', 190, NULL, NULL),
(3144, 'Lobata', 190, NULL, NULL),
(3145, 'Me-Zochi', 190, NULL, NULL),
(3146, 'Pague', 190, NULL, NULL),
(3147, 'Al Khobar', 191, NULL, NULL),
(3148, 'Aseer', 191, NULL, NULL),
(3149, 'Ash Sharqiyah', 191, NULL, NULL),
(3150, 'Asir', 191, NULL, NULL),
(3151, 'Central Province', 191, NULL, NULL),
(3152, 'Eastern Province', 191, NULL, NULL),
(3153, 'Ha\'il', 191, NULL, NULL),
(3154, 'Jawf', 191, NULL, NULL),
(3155, 'Jizan', 191, NULL, NULL),
(3156, 'Makkah', 191, NULL, NULL),
(3157, 'Najran', 191, NULL, NULL),
(3158, 'Qasim', 191, NULL, NULL),
(3159, 'Tabuk', 191, NULL, NULL),
(3160, 'Western Province', 191, NULL, NULL),
(3161, 'al-Bahah', 191, NULL, NULL),
(3162, 'al-Hudud-ash-Shamaliyah', 191, NULL, NULL),
(3163, 'al-Madinah', 191, NULL, NULL),
(3164, 'ar-Riyad', 191, NULL, NULL),
(3165, 'Dakar', 192, NULL, NULL),
(3166, 'Diourbel', 192, NULL, NULL),
(3167, 'Fatick', 192, NULL, NULL),
(3168, 'Kaolack', 192, NULL, NULL),
(3169, 'Kolda', 192, NULL, NULL),
(3170, 'Louga', 192, NULL, NULL),
(3171, 'Saint-Louis', 192, NULL, NULL),
(3172, 'Tambacounda', 192, NULL, NULL),
(3173, 'Thies', 192, NULL, NULL),
(3174, 'Ziguinchor', 192, NULL, NULL),
(3175, 'Central Serbia', 193, NULL, NULL),
(3176, 'Kosovo and Metohija', 193, NULL, NULL),
(3177, 'Vojvodina', 193, NULL, NULL),
(3178, 'Anse Boileau', 194, NULL, NULL),
(3179, 'Anse Royale', 194, NULL, NULL),
(3180, 'Cascade', 194, NULL, NULL),
(3181, 'Takamaka', 194, NULL, NULL),
(3182, 'Victoria', 194, NULL, NULL),
(3183, 'Eastern', 195, NULL, NULL),
(3184, 'Northern', 195, NULL, NULL),
(3185, 'Southern', 195, NULL, NULL),
(3186, 'Western', 195, NULL, NULL),
(3187, 'Singapore', 196, NULL, NULL),
(3188, 'Banskobystricky', 197, NULL, NULL),
(3189, 'Bratislavsky', 197, NULL, NULL),
(3190, 'Kosicky', 197, NULL, NULL),
(3191, 'Nitriansky', 197, NULL, NULL),
(3192, 'Presovsky', 197, NULL, NULL),
(3193, 'Trenciansky', 197, NULL, NULL),
(3194, 'Trnavsky', 197, NULL, NULL),
(3195, 'Zilinsky', 197, NULL, NULL),
(3196, 'Benedikt', 198, NULL, NULL),
(3197, 'Gorenjska', 198, NULL, NULL),
(3198, 'Gorishka', 198, NULL, NULL),
(3199, 'Jugovzhodna Slovenija', 198, NULL, NULL),
(3200, 'Koroshka', 198, NULL, NULL),
(3201, 'Notranjsko-krashka', 198, NULL, NULL),
(3202, 'Obalno-krashka', 198, NULL, NULL),
(3203, 'Obcina Domzale', 198, NULL, NULL),
(3204, 'Obcina Vitanje', 198, NULL, NULL),
(3205, 'Osrednjeslovenska', 198, NULL, NULL),
(3206, 'Podravska', 198, NULL, NULL),
(3207, 'Pomurska', 198, NULL, NULL),
(3208, 'Savinjska', 198, NULL, NULL),
(3209, 'Slovenian Littoral', 198, NULL, NULL),
(3210, 'Spodnjeposavska', 198, NULL, NULL),
(3211, 'Zasavska', 198, NULL, NULL),
(3212, 'Pitcairn', 199, NULL, NULL),
(3213, 'Central', 200, NULL, NULL),
(3214, 'Choiseul', 200, NULL, NULL),
(3215, 'Guadalcanal', 200, NULL, NULL),
(3216, 'Isabel', 200, NULL, NULL),
(3217, 'Makira and Ulawa', 200, NULL, NULL),
(3218, 'Malaita', 200, NULL, NULL),
(3219, 'Rennell and Bellona', 200, NULL, NULL),
(3220, 'Temotu', 200, NULL, NULL),
(3221, 'Western', 200, NULL, NULL),
(3222, 'Awdal', 201, NULL, NULL),
(3223, 'Bakol', 201, NULL, NULL),
(3224, 'Banadir', 201, NULL, NULL),
(3225, 'Bari', 201, NULL, NULL),
(3226, 'Bay', 201, NULL, NULL),
(3227, 'Galgudug', 201, NULL, NULL),
(3228, 'Gedo', 201, NULL, NULL),
(3229, 'Hiran', 201, NULL, NULL),
(3230, 'Jubbada Hose', 201, NULL, NULL),
(3231, 'Jubbadha Dexe', 201, NULL, NULL),
(3232, 'Mudug', 201, NULL, NULL),
(3233, 'Nugal', 201, NULL, NULL),
(3234, 'Sanag', 201, NULL, NULL),
(3235, 'Shabellaha Dhexe', 201, NULL, NULL),
(3236, 'Shabellaha Hose', 201, NULL, NULL),
(3237, 'Togdher', 201, NULL, NULL),
(3238, 'Woqoyi Galbed', 201, NULL, NULL),
(3239, 'Eastern Cape', 202, NULL, NULL),
(3240, 'Free State', 202, NULL, NULL),
(3241, 'Gauteng', 202, NULL, NULL),
(3242, 'Kempton Park', 202, NULL, NULL),
(3243, 'Kramerville', 202, NULL, NULL),
(3244, 'KwaZulu Natal', 202, NULL, NULL),
(3245, 'Limpopo', 202, NULL, NULL),
(3246, 'Mpumalanga', 202, NULL, NULL),
(3247, 'North West', 202, NULL, NULL),
(3248, 'Northern Cape', 202, NULL, NULL),
(3249, 'Parow', 202, NULL, NULL),
(3250, 'Table View', 202, NULL, NULL),
(3251, 'Umtentweni', 202, NULL, NULL),
(3252, 'Western Cape', 202, NULL, NULL),
(3253, 'South Georgia', 203, NULL, NULL),
(3254, 'Central Equatoria', 204, NULL, NULL),
(3255, 'A Coruna', 205, NULL, NULL),
(3256, 'Alacant', 205, NULL, NULL),
(3257, 'Alava', 205, NULL, NULL),
(3258, 'Albacete', 205, NULL, NULL),
(3259, 'Almeria', 205, NULL, NULL),
(3260, 'Andalucia', 205, NULL, NULL),
(3261, 'Asturias', 205, NULL, NULL),
(3262, 'Avila', 205, NULL, NULL),
(3263, 'Badajoz', 205, NULL, NULL),
(3264, 'Balears', 205, NULL, NULL),
(3265, 'Barcelona', 205, NULL, NULL),
(3266, 'Bertamirans', 205, NULL, NULL),
(3267, 'Biscay', 205, NULL, NULL),
(3268, 'Burgos', 205, NULL, NULL),
(3269, 'Caceres', 205, NULL, NULL),
(3270, 'Cadiz', 205, NULL, NULL),
(3271, 'Cantabria', 205, NULL, NULL),
(3272, 'Castello', 205, NULL, NULL),
(3273, 'Catalunya', 205, NULL, NULL),
(3274, 'Ceuta', 205, NULL, NULL),
(3275, 'Ciudad Real', 205, NULL, NULL),
(3276, 'Comunidad Autonoma de Canarias', 205, NULL, NULL),
(3277, 'Comunidad Autonoma de Cataluna', 205, NULL, NULL),
(3278, 'Comunidad Autonoma de Galicia', 205, NULL, NULL),
(3279, 'Comunidad Autonoma de las Isla', 205, NULL, NULL),
(3280, 'Comunidad Autonoma del Princip', 205, NULL, NULL),
(3281, 'Comunidad Valenciana', 205, NULL, NULL),
(3282, 'Cordoba', 205, NULL, NULL),
(3283, 'Cuenca', 205, NULL, NULL),
(3284, 'Gipuzkoa', 205, NULL, NULL),
(3285, 'Girona', 205, NULL, NULL),
(3286, 'Granada', 205, NULL, NULL),
(3287, 'Guadalajara', 205, NULL, NULL),
(3288, 'Guipuzcoa', 205, NULL, NULL),
(3289, 'Huelva', 205, NULL, NULL),
(3290, 'Huesca', 205, NULL, NULL),
(3291, 'Jaen', 205, NULL, NULL),
(3292, 'La Rioja', 205, NULL, NULL),
(3293, 'Las Palmas', 205, NULL, NULL),
(3294, 'Leon', 205, NULL, NULL),
(3295, 'Lerida', 205, NULL, NULL),
(3296, 'Lleida', 205, NULL, NULL),
(3297, 'Lugo', 205, NULL, NULL),
(3298, 'Madrid', 205, NULL, NULL),
(3299, 'Malaga', 205, NULL, NULL),
(3300, 'Melilla', 205, NULL, NULL),
(3301, 'Murcia', 205, NULL, NULL),
(3302, 'Navarra', 205, NULL, NULL),
(3303, 'Ourense', 205, NULL, NULL),
(3304, 'Pais Vasco', 205, NULL, NULL),
(3305, 'Palencia', 205, NULL, NULL),
(3306, 'Pontevedra', 205, NULL, NULL),
(3307, 'Salamanca', 205, NULL, NULL),
(3308, 'Santa Cruz de Tenerife', 205, NULL, NULL),
(3309, 'Segovia', 205, NULL, NULL),
(3310, 'Sevilla', 205, NULL, NULL),
(3311, 'Soria', 205, NULL, NULL),
(3312, 'Tarragona', 205, NULL, NULL),
(3313, 'Tenerife', 205, NULL, NULL),
(3314, 'Teruel', 205, NULL, NULL),
(3315, 'Toledo', 205, NULL, NULL),
(3316, 'Valencia', 205, NULL, NULL),
(3317, 'Valladolid', 205, NULL, NULL),
(3318, 'Vizcaya', 205, NULL, NULL),
(3319, 'Zamora', 205, NULL, NULL),
(3320, 'Zaragoza', 205, NULL, NULL),
(3321, 'Amparai', 206, NULL, NULL),
(3322, 'Anuradhapuraya', 206, NULL, NULL),
(3323, 'Badulla', 206, NULL, NULL),
(3324, 'Boralesgamuwa', 206, NULL, NULL),
(3325, 'Colombo', 206, NULL, NULL),
(3326, 'Galla', 206, NULL, NULL),
(3327, 'Gampaha', 206, NULL, NULL),
(3328, 'Hambantota', 206, NULL, NULL),
(3329, 'Kalatura', 206, NULL, NULL),
(3330, 'Kegalla', 206, NULL, NULL),
(3331, 'Kilinochchi', 206, NULL, NULL),
(3332, 'Kurunegala', 206, NULL, NULL),
(3333, 'Madakalpuwa', 206, NULL, NULL),
(3334, 'Maha Nuwara', 206, NULL, NULL),
(3335, 'Malwana', 206, NULL, NULL),
(3336, 'Mannarama', 206, NULL, NULL),
(3337, 'Matale', 206, NULL, NULL),
(3338, 'Matara', 206, NULL, NULL),
(3339, 'Monaragala', 206, NULL, NULL),
(3340, 'Mullaitivu', 206, NULL, NULL),
(3341, 'North Eastern Province', 206, NULL, NULL),
(3342, 'North Western Province', 206, NULL, NULL),
(3343, 'Nuwara Eliya', 206, NULL, NULL),
(3344, 'Polonnaruwa', 206, NULL, NULL),
(3345, 'Puttalama', 206, NULL, NULL),
(3346, 'Ratnapuraya', 206, NULL, NULL),
(3347, 'Southern Province', 206, NULL, NULL),
(3348, 'Tirikunamalaya', 206, NULL, NULL),
(3349, 'Tuscany', 206, NULL, NULL),
(3350, 'Vavuniyawa', 206, NULL, NULL),
(3351, 'Western Province', 206, NULL, NULL),
(3352, 'Yapanaya', 206, NULL, NULL),
(3353, 'kadawatha', 206, NULL, NULL),
(3354, 'A\'ali-an-Nil', 207, NULL, NULL),
(3355, 'Bahr-al-Jabal', 207, NULL, NULL),
(3356, 'Central Equatoria', 207, NULL, NULL),
(3357, 'Gharb Bahr-al-Ghazal', 207, NULL, NULL),
(3358, 'Gharb Darfur', 207, NULL, NULL),
(3359, 'Gharb Kurdufan', 207, NULL, NULL),
(3360, 'Gharb-al-Istiwa\'iyah', 207, NULL, NULL),
(3361, 'Janub Darfur', 207, NULL, NULL),
(3362, 'Janub Kurdufan', 207, NULL, NULL),
(3363, 'Junqali', 207, NULL, NULL),
(3364, 'Kassala', 207, NULL, NULL),
(3365, 'Nahr-an-Nil', 207, NULL, NULL),
(3366, 'Shamal Bahr-al-Ghazal', 207, NULL, NULL),
(3367, 'Shamal Darfur', 207, NULL, NULL),
(3368, 'Shamal Kurdufan', 207, NULL, NULL),
(3369, 'Sharq-al-Istiwa\'iyah', 207, NULL, NULL),
(3370, 'Sinnar', 207, NULL, NULL),
(3371, 'Warab', 207, NULL, NULL),
(3372, 'Wilayat al Khartum', 207, NULL, NULL),
(3373, 'al-Bahr-al-Ahmar', 207, NULL, NULL),
(3374, 'al-Buhayrat', 207, NULL, NULL),
(3375, 'al-Jazirah', 207, NULL, NULL),
(3376, 'al-Khartum', 207, NULL, NULL),
(3377, 'al-Qadarif', 207, NULL, NULL),
(3378, 'al-Wahdah', 207, NULL, NULL),
(3379, 'an-Nil-al-Abyad', 207, NULL, NULL),
(3380, 'an-Nil-al-Azraq', 207, NULL, NULL),
(3381, 'ash-Shamaliyah', 207, NULL, NULL),
(3382, 'Brokopondo', 208, NULL, NULL),
(3383, 'Commewijne', 208, NULL, NULL),
(3384, 'Coronie', 208, NULL, NULL),
(3385, 'Marowijne', 208, NULL, NULL),
(3386, 'Nickerie', 208, NULL, NULL),
(3387, 'Para', 208, NULL, NULL),
(3388, 'Paramaribo', 208, NULL, NULL),
(3389, 'Saramacca', 208, NULL, NULL),
(3390, 'Wanica', 208, NULL, NULL),
(3391, 'Svalbard', 209, NULL, NULL),
(3392, 'Hhohho', 210, NULL, NULL),
(3393, 'Lubombo', 210, NULL, NULL),
(3394, 'Manzini', 210, NULL, NULL),
(3395, 'Shiselweni', 210, NULL, NULL),
(3396, 'Alvsborgs Lan', 211, NULL, NULL),
(3397, 'Angermanland', 211, NULL, NULL),
(3398, 'Blekinge', 211, NULL, NULL),
(3399, 'Bohuslan', 211, NULL, NULL),
(3400, 'Dalarna', 211, NULL, NULL),
(3401, 'Gavleborg', 211, NULL, NULL),
(3402, 'Gaza', 211, NULL, NULL),
(3403, 'Gotland', 211, NULL, NULL),
(3404, 'Halland', 211, NULL, NULL),
(3405, 'Jamtland', 211, NULL, NULL),
(3406, 'Jonkoping', 211, NULL, NULL),
(3407, 'Kalmar', 211, NULL, NULL),
(3408, 'Kristianstads', 211, NULL, NULL),
(3409, 'Kronoberg', 211, NULL, NULL),
(3410, 'Norrbotten', 211, NULL, NULL),
(3411, 'Orebro', 211, NULL, NULL),
(3412, 'Ostergotland', 211, NULL, NULL),
(3413, 'Saltsjo-Boo', 211, NULL, NULL),
(3414, 'Skane', 211, NULL, NULL),
(3415, 'Smaland', 211, NULL, NULL),
(3416, 'Sodermanland', 211, NULL, NULL),
(3417, 'Stockholm', 211, NULL, NULL),
(3418, 'Uppsala', 211, NULL, NULL),
(3419, 'Varmland', 211, NULL, NULL),
(3420, 'Vasterbotten', 211, NULL, NULL),
(3421, 'Vastergotland', 211, NULL, NULL),
(3422, 'Vasternorrland', 211, NULL, NULL),
(3423, 'Vastmanland', 211, NULL, NULL),
(3424, 'Vastra Gotaland', 211, NULL, NULL),
(3425, 'Aargau', 212, NULL, NULL),
(3426, 'Appenzell Inner-Rhoden', 212, NULL, NULL),
(3427, 'Appenzell-Ausser Rhoden', 212, NULL, NULL),
(3428, 'Basel-Landschaft', 212, NULL, NULL),
(3429, 'Basel-Stadt', 212, NULL, NULL),
(3430, 'Bern', 212, NULL, NULL),
(3431, 'Canton Ticino', 212, NULL, NULL),
(3432, 'Fribourg', 212, NULL, NULL),
(3433, 'Geneve', 212, NULL, NULL),
(3434, 'Glarus', 212, NULL, NULL),
(3435, 'Graubunden', 212, NULL, NULL),
(3436, 'Heerbrugg', 212, NULL, NULL),
(3437, 'Jura', 212, NULL, NULL),
(3438, 'Kanton Aargau', 212, NULL, NULL),
(3439, 'Luzern', 212, NULL, NULL),
(3440, 'Morbio Inferiore', 212, NULL, NULL),
(3441, 'Muhen', 212, NULL, NULL),
(3442, 'Neuchatel', 212, NULL, NULL),
(3443, 'Nidwalden', 212, NULL, NULL),
(3444, 'Obwalden', 212, NULL, NULL),
(3445, 'Sankt Gallen', 212, NULL, NULL),
(3446, 'Schaffhausen', 212, NULL, NULL),
(3447, 'Schwyz', 212, NULL, NULL),
(3448, 'Solothurn', 212, NULL, NULL),
(3449, 'Thurgau', 212, NULL, NULL),
(3450, 'Ticino', 212, NULL, NULL),
(3451, 'Uri', 212, NULL, NULL),
(3452, 'Valais', 212, NULL, NULL),
(3453, 'Vaud', 212, NULL, NULL),
(3454, 'Vauffelin', 212, NULL, NULL),
(3455, 'Zug', 212, NULL, NULL),
(3456, 'Zurich', 212, NULL, NULL),
(3457, 'Aleppo', 213, NULL, NULL),
(3458, 'Dar\'a', 213, NULL, NULL),
(3459, 'Dayr-az-Zawr', 213, NULL, NULL),
(3460, 'Dimashq', 213, NULL, NULL),
(3461, 'Halab', 213, NULL, NULL),
(3462, 'Hamah', 213, NULL, NULL),
(3463, 'Hims', 213, NULL, NULL),
(3464, 'Idlib', 213, NULL, NULL),
(3465, 'Madinat Dimashq', 213, NULL, NULL),
(3466, 'Tartus', 213, NULL, NULL),
(3467, 'al-Hasakah', 213, NULL, NULL),
(3468, 'al-Ladhiqiyah', 213, NULL, NULL),
(3469, 'al-Qunaytirah', 213, NULL, NULL),
(3470, 'ar-Raqqah', 213, NULL, NULL),
(3471, 'as-Suwayda', 213, NULL, NULL),
(3472, 'Changhwa', 214, NULL, NULL),
(3473, 'Chiayi Hsien', 214, NULL, NULL),
(3474, 'Chiayi Shih', 214, NULL, NULL),
(3475, 'Eastern Taipei', 214, NULL, NULL),
(3476, 'Hsinchu Hsien', 214, NULL, NULL),
(3477, 'Hsinchu Shih', 214, NULL, NULL),
(3478, 'Hualien', 214, NULL, NULL),
(3479, 'Ilan', 214, NULL, NULL),
(3480, 'Kaohsiung Hsien', 214, NULL, NULL),
(3481, 'Kaohsiung Shih', 214, NULL, NULL),
(3482, 'Keelung Shih', 214, NULL, NULL),
(3483, 'Kinmen', 214, NULL, NULL),
(3484, 'Miaoli', 214, NULL, NULL),
(3485, 'Nantou', 214, NULL, NULL),
(3486, 'Northern Taiwan', 214, NULL, NULL),
(3487, 'Penghu', 214, NULL, NULL),
(3488, 'Pingtung', 214, NULL, NULL),
(3489, 'Taichung', 214, NULL, NULL),
(3490, 'Taichung Hsien', 214, NULL, NULL),
(3491, 'Taichung Shih', 214, NULL, NULL),
(3492, 'Tainan Hsien', 214, NULL, NULL),
(3493, 'Tainan Shih', 214, NULL, NULL),
(3494, 'Taipei Hsien', 214, NULL, NULL),
(3495, 'Taipei Shih / Taipei Hsien', 214, NULL, NULL),
(3496, 'Taitung', 214, NULL, NULL),
(3497, 'Taoyuan', 214, NULL, NULL),
(3498, 'Yilan', 214, NULL, NULL),
(3499, 'Yun-Lin Hsien', 214, NULL, NULL),
(3500, 'Yunlin', 214, NULL, NULL),
(3501, 'Dushanbe', 215, NULL, NULL),
(3502, 'Gorno-Badakhshan', 215, NULL, NULL),
(3503, 'Karotegin', 215, NULL, NULL),
(3504, 'Khatlon', 215, NULL, NULL),
(3505, 'Sughd', 215, NULL, NULL),
(3506, 'Arusha', 216, NULL, NULL),
(3507, 'Dar es Salaam', 216, NULL, NULL),
(3508, 'Dodoma', 216, NULL, NULL),
(3509, 'Iringa', 216, NULL, NULL),
(3510, 'Kagera', 216, NULL, NULL),
(3511, 'Kigoma', 216, NULL, NULL),
(3512, 'Kilimanjaro', 216, NULL, NULL),
(3513, 'Lindi', 216, NULL, NULL),
(3514, 'Mara', 216, NULL, NULL),
(3515, 'Mbeya', 216, NULL, NULL),
(3516, 'Morogoro', 216, NULL, NULL),
(3517, 'Mtwara', 216, NULL, NULL),
(3518, 'Mwanza', 216, NULL, NULL),
(3519, 'Pwani', 216, NULL, NULL),
(3520, 'Rukwa', 216, NULL, NULL),
(3521, 'Ruvuma', 216, NULL, NULL),
(3522, 'Shinyanga', 216, NULL, NULL),
(3523, 'Singida', 216, NULL, NULL),
(3524, 'Tabora', 216, NULL, NULL),
(3525, 'Tanga', 216, NULL, NULL),
(3526, 'Zanzibar and Pemba', 216, NULL, NULL),
(3527, 'Amnat Charoen', 217, NULL, NULL),
(3528, 'Ang Thong', 217, NULL, NULL),
(3529, 'Bangkok', 217, NULL, NULL),
(3530, 'Buri Ram', 217, NULL, NULL),
(3531, 'Chachoengsao', 217, NULL, NULL),
(3532, 'Chai Nat', 217, NULL, NULL),
(3533, 'Chaiyaphum', 217, NULL, NULL),
(3534, 'Changwat Chaiyaphum', 217, NULL, NULL),
(3535, 'Chanthaburi', 217, NULL, NULL),
(3536, 'Chiang Mai', 217, NULL, NULL),
(3537, 'Chiang Rai', 217, NULL, NULL),
(3538, 'Chon Buri', 217, NULL, NULL),
(3539, 'Chumphon', 217, NULL, NULL),
(3540, 'Kalasin', 217, NULL, NULL),
(3541, 'Kamphaeng Phet', 217, NULL, NULL),
(3542, 'Kanchanaburi', 217, NULL, NULL),
(3543, 'Khon Kaen', 217, NULL, NULL),
(3544, 'Krabi', 217, NULL, NULL),
(3545, 'Krung Thep', 217, NULL, NULL),
(3546, 'Lampang', 217, NULL, NULL),
(3547, 'Lamphun', 217, NULL, NULL),
(3548, 'Loei', 217, NULL, NULL),
(3549, 'Lop Buri', 217, NULL, NULL),
(3550, 'Mae Hong Son', 217, NULL, NULL),
(3551, 'Maha Sarakham', 217, NULL, NULL),
(3552, 'Mukdahan', 217, NULL, NULL),
(3553, 'Nakhon Nayok', 217, NULL, NULL),
(3554, 'Nakhon Pathom', 217, NULL, NULL),
(3555, 'Nakhon Phanom', 217, NULL, NULL),
(3556, 'Nakhon Ratchasima', 217, NULL, NULL),
(3557, 'Nakhon Sawan', 217, NULL, NULL),
(3558, 'Nakhon Si Thammarat', 217, NULL, NULL),
(3559, 'Nan', 217, NULL, NULL),
(3560, 'Narathiwat', 217, NULL, NULL),
(3561, 'Nong Bua Lam Phu', 217, NULL, NULL),
(3562, 'Nong Khai', 217, NULL, NULL),
(3563, 'Nonthaburi', 217, NULL, NULL),
(3564, 'Pathum Thani', 217, NULL, NULL),
(3565, 'Pattani', 217, NULL, NULL),
(3566, 'Phangnga', 217, NULL, NULL),
(3567, 'Phatthalung', 217, NULL, NULL),
(3568, 'Phayao', 217, NULL, NULL),
(3569, 'Phetchabun', 217, NULL, NULL),
(3570, 'Phetchaburi', 217, NULL, NULL),
(3571, 'Phichit', 217, NULL, NULL),
(3572, 'Phitsanulok', 217, NULL, NULL),
(3573, 'Phra Nakhon Si Ayutthaya', 217, NULL, NULL),
(3574, 'Phrae', 217, NULL, NULL),
(3575, 'Phuket', 217, NULL, NULL),
(3576, 'Prachin Buri', 217, NULL, NULL),
(3577, 'Prachuap Khiri Khan', 217, NULL, NULL),
(3578, 'Ranong', 217, NULL, NULL),
(3579, 'Ratchaburi', 217, NULL, NULL),
(3580, 'Rayong', 217, NULL, NULL),
(3581, 'Roi Et', 217, NULL, NULL),
(3582, 'Sa Kaeo', 217, NULL, NULL),
(3583, 'Sakon Nakhon', 217, NULL, NULL),
(3584, 'Samut Prakan', 217, NULL, NULL),
(3585, 'Samut Sakhon', 217, NULL, NULL),
(3586, 'Samut Songkhran', 217, NULL, NULL),
(3587, 'Saraburi', 217, NULL, NULL),
(3588, 'Satun', 217, NULL, NULL),
(3589, 'Si Sa Ket', 217, NULL, NULL),
(3590, 'Sing Buri', 217, NULL, NULL),
(3591, 'Songkhla', 217, NULL, NULL),
(3592, 'Sukhothai', 217, NULL, NULL),
(3593, 'Suphan Buri', 217, NULL, NULL),
(3594, 'Surat Thani', 217, NULL, NULL),
(3595, 'Surin', 217, NULL, NULL),
(3596, 'Tak', 217, NULL, NULL),
(3597, 'Trang', 217, NULL, NULL),
(3598, 'Trat', 217, NULL, NULL),
(3599, 'Ubon Ratchathani', 217, NULL, NULL),
(3600, 'Udon Thani', 217, NULL, NULL),
(3601, 'Uthai Thani', 217, NULL, NULL),
(3602, 'Uttaradit', 217, NULL, NULL),
(3603, 'Yala', 217, NULL, NULL),
(3604, 'Yasothon', 217, NULL, NULL),
(3605, 'Centre', 218, NULL, NULL),
(3606, 'Kara', 218, NULL, NULL),
(3607, 'Maritime', 218, NULL, NULL),
(3608, 'Plateaux', 218, NULL, NULL),
(3609, 'Savanes', 218, NULL, NULL),
(3610, 'Atafu', 219, NULL, NULL),
(3611, 'Fakaofo', 219, NULL, NULL),
(3612, 'Nukunonu', 219, NULL, NULL),
(3613, 'Eua', 220, NULL, NULL),
(3614, 'Ha\'apai', 220, NULL, NULL),
(3615, 'Niuas', 220, NULL, NULL),
(3616, 'Tongatapu', 220, NULL, NULL),
(3617, 'Vava\'u', 220, NULL, NULL),
(3618, 'Arima-Tunapuna-Piarco', 221, NULL, NULL),
(3619, 'Caroni', 221, NULL, NULL),
(3620, 'Chaguanas', 221, NULL, NULL),
(3621, 'Couva-Tabaquite-Talparo', 221, NULL, NULL),
(3622, 'Diego Martin', 221, NULL, NULL),
(3623, 'Glencoe', 221, NULL, NULL),
(3624, 'Penal Debe', 221, NULL, NULL),
(3625, 'Point Fortin', 221, NULL, NULL),
(3626, 'Port of Spain', 221, NULL, NULL),
(3627, 'Princes Town', 221, NULL, NULL),
(3628, 'Saint George', 221, NULL, NULL),
(3629, 'San Fernando', 221, NULL, NULL),
(3630, 'San Juan', 221, NULL, NULL),
(3631, 'Sangre Grande', 221, NULL, NULL),
(3632, 'Siparia', 221, NULL, NULL),
(3633, 'Tobago', 221, NULL, NULL),
(3634, 'Aryanah', 222, NULL, NULL),
(3635, 'Bajah', 222, NULL, NULL),
(3636, 'Bin \'Arus', 222, NULL, NULL),
(3637, 'Binzart', 222, NULL, NULL),
(3638, 'Gouvernorat de Ariana', 222, NULL, NULL),
(3639, 'Gouvernorat de Nabeul', 222, NULL, NULL),
(3640, 'Gouvernorat de Sousse', 222, NULL, NULL),
(3641, 'Hammamet Yasmine', 222, NULL, NULL),
(3642, 'Jundubah', 222, NULL, NULL),
(3643, 'Madaniyin', 222, NULL, NULL),
(3644, 'Manubah', 222, NULL, NULL),
(3645, 'Monastir', 222, NULL, NULL),
(3646, 'Nabul', 222, NULL, NULL),
(3647, 'Qabis', 222, NULL, NULL),
(3648, 'Qafsah', 222, NULL, NULL),
(3649, 'Qibili', 222, NULL, NULL),
(3650, 'Safaqis', 222, NULL, NULL),
(3651, 'Sfax', 222, NULL, NULL),
(3652, 'Sidi Bu Zayd', 222, NULL, NULL),
(3653, 'Silyanah', 222, NULL, NULL),
(3654, 'Susah', 222, NULL, NULL),
(3655, 'Tatawin', 222, NULL, NULL),
(3656, 'Tawzar', 222, NULL, NULL),
(3657, 'Tunis', 222, NULL, NULL),
(3658, 'Zaghwan', 222, NULL, NULL),
(3659, 'al-Kaf', 222, NULL, NULL),
(3660, 'al-Mahdiyah', 222, NULL, NULL),
(3661, 'al-Munastir', 222, NULL, NULL),
(3662, 'al-Qasrayn', 222, NULL, NULL),
(3663, 'al-Qayrawan', 222, NULL, NULL),
(3664, 'Adana', 223, NULL, NULL),
(3665, 'Adiyaman', 223, NULL, NULL),
(3666, 'Afyon', 223, NULL, NULL),
(3667, 'Agri', 223, NULL, NULL),
(3668, 'Aksaray', 223, NULL, NULL),
(3669, 'Amasya', 223, NULL, NULL),
(3670, 'Ankara', 223, NULL, NULL),
(3671, 'Antalya', 223, NULL, NULL),
(3672, 'Ardahan', 223, NULL, NULL),
(3673, 'Artvin', 223, NULL, NULL),
(3674, 'Aydin', 223, NULL, NULL),
(3675, 'Balikesir', 223, NULL, NULL),
(3676, 'Bartin', 223, NULL, NULL),
(3677, 'Batman', 223, NULL, NULL),
(3678, 'Bayburt', 223, NULL, NULL),
(3679, 'Bilecik', 223, NULL, NULL),
(3680, 'Bingol', 223, NULL, NULL),
(3681, 'Bitlis', 223, NULL, NULL),
(3682, 'Bolu', 223, NULL, NULL),
(3683, 'Burdur', 223, NULL, NULL),
(3684, 'Bursa', 223, NULL, NULL),
(3685, 'Canakkale', 223, NULL, NULL),
(3686, 'Cankiri', 223, NULL, NULL),
(3687, 'Corum', 223, NULL, NULL),
(3688, 'Denizli', 223, NULL, NULL),
(3689, 'Diyarbakir', 223, NULL, NULL),
(3690, 'Duzce', 223, NULL, NULL),
(3691, 'Edirne', 223, NULL, NULL),
(3692, 'Elazig', 223, NULL, NULL),
(3693, 'Erzincan', 223, NULL, NULL),
(3694, 'Erzurum', 223, NULL, NULL),
(3695, 'Eskisehir', 223, NULL, NULL),
(3696, 'Gaziantep', 223, NULL, NULL),
(3697, 'Giresun', 223, NULL, NULL),
(3698, 'Gumushane', 223, NULL, NULL),
(3699, 'Hakkari', 223, NULL, NULL),
(3700, 'Hatay', 223, NULL, NULL),
(3701, 'Icel', 223, NULL, NULL),
(3702, 'Igdir', 223, NULL, NULL),
(3703, 'Isparta', 223, NULL, NULL),
(3704, 'Istanbul', 223, NULL, NULL),
(3705, 'Izmir', 223, NULL, NULL),
(3706, 'Kahramanmaras', 223, NULL, NULL),
(3707, 'Karabuk', 223, NULL, NULL),
(3708, 'Karaman', 223, NULL, NULL),
(3709, 'Kars', 223, NULL, NULL),
(3710, 'Karsiyaka', 223, NULL, NULL),
(3711, 'Kastamonu', 223, NULL, NULL),
(3712, 'Kayseri', 223, NULL, NULL),
(3713, 'Kilis', 223, NULL, NULL),
(3714, 'Kirikkale', 223, NULL, NULL),
(3715, 'Kirklareli', 223, NULL, NULL),
(3716, 'Kirsehir', 223, NULL, NULL),
(3717, 'Kocaeli', 223, NULL, NULL),
(3718, 'Konya', 223, NULL, NULL),
(3719, 'Kutahya', 223, NULL, NULL),
(3720, 'Lefkosa', 223, NULL, NULL),
(3721, 'Malatya', 223, NULL, NULL),
(3722, 'Manisa', 223, NULL, NULL),
(3723, 'Mardin', 223, NULL, NULL),
(3724, 'Mugla', 223, NULL, NULL),
(3725, 'Mus', 223, NULL, NULL),
(3726, 'Nevsehir', 223, NULL, NULL),
(3727, 'Nigde', 223, NULL, NULL),
(3728, 'Ordu', 223, NULL, NULL),
(3729, 'Osmaniye', 223, NULL, NULL),
(3730, 'Rize', 223, NULL, NULL),
(3731, 'Sakarya', 223, NULL, NULL),
(3732, 'Samsun', 223, NULL, NULL),
(3733, 'Sanliurfa', 223, NULL, NULL),
(3734, 'Siirt', 223, NULL, NULL),
(3735, 'Sinop', 223, NULL, NULL),
(3736, 'Sirnak', 223, NULL, NULL),
(3737, 'Sivas', 223, NULL, NULL),
(3738, 'Tekirdag', 223, NULL, NULL),
(3739, 'Tokat', 223, NULL, NULL),
(3740, 'Trabzon', 223, NULL, NULL),
(3741, 'Tunceli', 223, NULL, NULL),
(3742, 'Usak', 223, NULL, NULL),
(3743, 'Van', 223, NULL, NULL),
(3744, 'Yalova', 223, NULL, NULL),
(3745, 'Yozgat', 223, NULL, NULL),
(3746, 'Zonguldak', 223, NULL, NULL),
(3747, 'Ahal', 224, NULL, NULL),
(3748, 'Asgabat', 224, NULL, NULL),
(3749, 'Balkan', 224, NULL, NULL),
(3750, 'Dasoguz', 224, NULL, NULL),
(3751, 'Lebap', 224, NULL, NULL),
(3752, 'Mari', 224, NULL, NULL),
(3753, 'Grand Turk', 225, NULL, NULL),
(3754, 'South Caicos and East Caicos', 225, NULL, NULL),
(3755, 'Funafuti', 226, NULL, NULL),
(3756, 'Nanumanga', 226, NULL, NULL),
(3757, 'Nanumea', 226, NULL, NULL),
(3758, 'Niutao', 226, NULL, NULL),
(3759, 'Nui', 226, NULL, NULL),
(3760, 'Nukufetau', 226, NULL, NULL),
(3761, 'Nukulaelae', 226, NULL, NULL),
(3762, 'Vaitupu', 226, NULL, NULL),
(3763, 'Central', 227, NULL, NULL),
(3764, 'Eastern', 227, NULL, NULL),
(3765, 'Northern', 227, NULL, NULL),
(3766, 'Western', 227, NULL, NULL),
(3767, 'Cherkas\'ka', 228, NULL, NULL),
(3768, 'Chernihivs\'ka', 228, NULL, NULL),
(3769, 'Chernivets\'ka', 228, NULL, NULL),
(3770, 'Crimea', 228, NULL, NULL),
(3771, 'Dnipropetrovska', 228, NULL, NULL),
(3772, 'Donets\'ka', 228, NULL, NULL),
(3773, 'Ivano-Frankivs\'ka', 228, NULL, NULL),
(3774, 'Kharkiv', 228, NULL, NULL),
(3775, 'Kharkov', 228, NULL, NULL),
(3776, 'Khersonska', 228, NULL, NULL),
(3777, 'Khmel\'nyts\'ka', 228, NULL, NULL),
(3778, 'Kirovohrad', 228, NULL, NULL),
(3779, 'Krym', 228, NULL, NULL),
(3780, 'Kyyiv', 228, NULL, NULL),
(3781, 'Kyyivs\'ka', 228, NULL, NULL),
(3782, 'L\'vivs\'ka', 228, NULL, NULL),
(3783, 'Luhans\'ka', 228, NULL, NULL),
(3784, 'Mykolayivs\'ka', 228, NULL, NULL),
(3785, 'Odes\'ka', 228, NULL, NULL),
(3786, 'Odessa', 228, NULL, NULL),
(3787, 'Poltavs\'ka', 228, NULL, NULL),
(3788, 'Rivnens\'ka', 228, NULL, NULL),
(3789, 'Sevastopol\'', 228, NULL, NULL),
(3790, 'Sums\'ka', 228, NULL, NULL),
(3791, 'Ternopil\'s\'ka', 228, NULL, NULL),
(3792, 'Volyns\'ka', 228, NULL, NULL),
(3793, 'Vynnyts\'ka', 228, NULL, NULL),
(3794, 'Zakarpats\'ka', 228, NULL, NULL),
(3795, 'Zaporizhia', 228, NULL, NULL),
(3796, 'Zhytomyrs\'ka', 228, NULL, NULL),
(3797, 'Abu Zabi', 229, NULL, NULL),
(3798, 'Ajman', 229, NULL, NULL),
(3799, 'Dubai', 229, NULL, NULL),
(3800, 'Ras al-Khaymah', 229, NULL, NULL),
(3801, 'Sharjah', 229, NULL, NULL),
(3802, 'Sharjha', 229, NULL, NULL),
(3803, 'Umm al Qaywayn', 229, NULL, NULL),
(3804, 'al-Fujayrah', 229, NULL, NULL),
(3805, 'ash-Shariqah', 229, NULL, NULL),
(3806, 'Aberdeen', 230, NULL, NULL),
(3807, 'Aberdeenshire', 230, NULL, NULL),
(3808, 'Argyll', 230, NULL, NULL),
(3809, 'Armagh', 230, NULL, NULL),
(3810, 'Bedfordshire', 230, NULL, NULL),
(3811, 'Belfast', 230, NULL, NULL),
(3812, 'Berkshire', 230, NULL, NULL),
(3813, 'Birmingham', 230, NULL, NULL),
(3814, 'Brechin', 230, NULL, NULL),
(3815, 'Bridgnorth', 230, NULL, NULL),
(3816, 'Bristol', 230, NULL, NULL),
(3817, 'Buckinghamshire', 230, NULL, NULL),
(3818, 'Cambridge', 230, NULL, NULL),
(3819, 'Cambridgeshire', 230, NULL, NULL),
(3820, 'Channel Islands', 230, NULL, NULL),
(3821, 'Cheshire', 230, NULL, NULL),
(3822, 'Cleveland', 230, NULL, NULL),
(3823, 'Co Fermanagh', 230, NULL, NULL),
(3824, 'Conwy', 230, NULL, NULL),
(3825, 'Cornwall', 230, NULL, NULL),
(3826, 'Coventry', 230, NULL, NULL),
(3827, 'Craven Arms', 230, NULL, NULL),
(3828, 'Cumbria', 230, NULL, NULL),
(3829, 'Denbighshire', 230, NULL, NULL),
(3830, 'Derby', 230, NULL, NULL),
(3831, 'Derbyshire', 230, NULL, NULL),
(3832, 'Devon', 230, NULL, NULL),
(3833, 'Dial Code Dungannon', 230, NULL, NULL),
(3834, 'Didcot', 230, NULL, NULL),
(3835, 'Dorset', 230, NULL, NULL),
(3836, 'Dunbartonshire', 230, NULL, NULL),
(3837, 'Durham', 230, NULL, NULL),
(3838, 'East Dunbartonshire', 230, NULL, NULL),
(3839, 'East Lothian', 230, NULL, NULL),
(3840, 'East Midlands', 230, NULL, NULL),
(3841, 'East Sussex', 230, NULL, NULL),
(3842, 'East Yorkshire', 230, NULL, NULL),
(3843, 'England', 230, NULL, NULL),
(3844, 'Essex', 230, NULL, NULL),
(3845, 'Fermanagh', 230, NULL, NULL),
(3846, 'Fife', 230, NULL, NULL),
(3847, 'Flintshire', 230, NULL, NULL),
(3848, 'Fulham', 230, NULL, NULL),
(3849, 'Gainsborough', 230, NULL, NULL),
(3850, 'Glocestershire', 230, NULL, NULL),
(3851, 'Gwent', 230, NULL, NULL),
(3852, 'Hampshire', 230, NULL, NULL),
(3853, 'Hants', 230, NULL, NULL),
(3854, 'Herefordshire', 230, NULL, NULL),
(3855, 'Hertfordshire', 230, NULL, NULL),
(3856, 'Ireland', 230, NULL, NULL),
(3857, 'Isle Of Man', 230, NULL, NULL),
(3858, 'Isle of Wight', 230, NULL, NULL),
(3859, 'Kenford', 230, NULL, NULL),
(3860, 'Kent', 230, NULL, NULL),
(3861, 'Kilmarnock', 230, NULL, NULL),
(3862, 'Lanarkshire', 230, NULL, NULL),
(3863, 'Lancashire', 230, NULL, NULL),
(3864, 'Leicestershire', 230, NULL, NULL),
(3865, 'Lincolnshire', 230, NULL, NULL),
(3866, 'Llanymynech', 230, NULL, NULL),
(3867, 'London', 230, NULL, NULL),
(3868, 'Ludlow', 230, NULL, NULL),
(3869, 'Manchester', 230, NULL, NULL),
(3870, 'Mayfair', 230, NULL, NULL),
(3871, 'Merseyside', 230, NULL, NULL),
(3872, 'Mid Glamorgan', 230, NULL, NULL),
(3873, 'Middlesex', 230, NULL, NULL),
(3874, 'Mildenhall', 230, NULL, NULL),
(3875, 'Monmouthshire', 230, NULL, NULL),
(3876, 'Newton Stewart', 230, NULL, NULL),
(3877, 'Norfolk', 230, NULL, NULL),
(3878, 'North Humberside', 230, NULL, NULL),
(3879, 'North Yorkshire', 230, NULL, NULL),
(3880, 'Northamptonshire', 230, NULL, NULL),
(3881, 'Northants', 230, NULL, NULL),
(3882, 'Northern Ireland', 230, NULL, NULL),
(3883, 'Northumberland', 230, NULL, NULL),
(3884, 'Nottinghamshire', 230, NULL, NULL),
(3885, 'Oxford', 230, NULL, NULL),
(3886, 'Powys', 230, NULL, NULL),
(3887, 'Roos-shire', 230, NULL, NULL),
(3888, 'SUSSEX', 230, NULL, NULL),
(3889, 'Sark', 230, NULL, NULL),
(3890, 'Scotland', 230, NULL, NULL),
(3891, 'Scottish Borders', 230, NULL, NULL),
(3892, 'Shropshire', 230, NULL, NULL),
(3893, 'Somerset', 230, NULL, NULL),
(3894, 'South Glamorgan', 230, NULL, NULL),
(3895, 'South Wales', 230, NULL, NULL),
(3896, 'South Yorkshire', 230, NULL, NULL),
(3897, 'Southwell', 230, NULL, NULL),
(3898, 'Staffordshire', 230, NULL, NULL),
(3899, 'Strabane', 230, NULL, NULL),
(3900, 'Suffolk', 230, NULL, NULL),
(3901, 'Surrey', 230, NULL, NULL),
(3902, 'Sussex', 230, NULL, NULL),
(3903, 'Twickenham', 230, NULL, NULL),
(3904, 'Tyne and Wear', 230, NULL, NULL),
(3905, 'Tyrone', 230, NULL, NULL),
(3906, 'Utah', 230, NULL, NULL),
(3907, 'Wales', 230, NULL, NULL),
(3908, 'Warwickshire', 230, NULL, NULL),
(3909, 'West Lothian', 230, NULL, NULL),
(3910, 'West Midlands', 230, NULL, NULL),
(3911, 'West Sussex', 230, NULL, NULL),
(3912, 'West Yorkshire', 230, NULL, NULL),
(3913, 'Whissendine', 230, NULL, NULL),
(3914, 'Wiltshire', 230, NULL, NULL),
(3915, 'Wokingham', 230, NULL, NULL),
(3916, 'Worcestershire', 230, NULL, NULL),
(3917, 'Wrexham', 230, NULL, NULL),
(3918, 'Wurttemberg', 230, NULL, NULL),
(3919, 'Yorkshire', 230, NULL, NULL),
(3920, 'Alabama', 231, NULL, NULL),
(3921, 'Alaska', 231, NULL, NULL),
(3922, 'Arizona', 231, NULL, NULL),
(3923, 'Arkansas', 231, NULL, NULL),
(3924, 'Byram', 231, NULL, NULL),
(3925, 'California', 231, NULL, NULL),
(3926, 'Cokato', 231, NULL, NULL),
(3927, 'Colorado', 231, NULL, NULL),
(3928, 'Connecticut', 231, NULL, NULL),
(3929, 'Delaware', 231, NULL, NULL),
(3930, 'District of Columbia', 231, NULL, NULL),
(3931, 'Florida', 231, NULL, NULL),
(3932, 'Georgia', 231, NULL, NULL),
(3933, 'Hawaii', 231, NULL, NULL),
(3934, 'Idaho', 231, NULL, NULL),
(3935, 'Illinois', 231, NULL, NULL),
(3936, 'Indiana', 231, NULL, NULL),
(3937, 'Iowa', 231, NULL, NULL),
(3938, 'Kansas', 231, NULL, NULL),
(3939, 'Kentucky', 231, NULL, NULL),
(3940, 'Louisiana', 231, NULL, NULL),
(3941, 'Lowa', 231, NULL, NULL),
(3942, 'Maine', 231, NULL, NULL),
(3943, 'Maryland', 231, NULL, NULL),
(3944, 'Massachusetts', 231, NULL, NULL),
(3945, 'Medfield', 231, NULL, NULL),
(3946, 'Michigan', 231, NULL, NULL),
(3947, 'Minnesota', 231, NULL, NULL),
(3948, 'Mississippi', 231, NULL, NULL),
(3949, 'Missouri', 231, NULL, NULL),
(3950, 'Montana', 231, NULL, NULL),
(3951, 'Nebraska', 231, NULL, NULL),
(3952, 'Nevada', 231, NULL, NULL),
(3953, 'New Hampshire', 231, NULL, NULL),
(3954, 'New Jersey', 231, NULL, NULL),
(3955, 'New Jersy', 231, NULL, NULL),
(3956, 'New Mexico', 231, NULL, NULL),
(3957, 'New York', 231, NULL, NULL),
(3958, 'North Carolina', 231, NULL, NULL),
(3959, 'North Dakota', 231, NULL, NULL),
(3960, 'Ohio', 231, NULL, NULL),
(3961, 'Oklahoma', 231, NULL, NULL),
(3962, 'Ontario', 231, NULL, NULL),
(3963, 'Oregon', 231, NULL, NULL),
(3964, 'Pennsylvania', 231, NULL, NULL),
(3965, 'Ramey', 231, NULL, NULL),
(3966, 'Rhode Island', 231, NULL, NULL),
(3967, 'South Carolina', 231, NULL, NULL),
(3968, 'South Dakota', 231, NULL, NULL),
(3969, 'Sublimity', 231, NULL, NULL),
(3970, 'Tennessee', 231, NULL, NULL),
(3971, 'Texas', 231, NULL, NULL),
(3972, 'Trimble', 231, NULL, NULL),
(3973, 'Utah', 231, NULL, NULL),
(3974, 'Vermont', 231, NULL, NULL),
(3975, 'Virginia', 231, NULL, NULL),
(3976, 'Washington', 231, NULL, NULL),
(3977, 'West Virginia', 231, NULL, NULL),
(3978, 'Wisconsin', 231, NULL, NULL),
(3979, 'Wyoming', 231, NULL, NULL),
(3980, 'United States Minor Outlying I', 232, NULL, NULL),
(3981, 'Artigas', 233, NULL, NULL),
(3982, 'Canelones', 233, NULL, NULL),
(3983, 'Cerro Largo', 233, NULL, NULL),
(3984, 'Colonia', 233, NULL, NULL),
(3985, 'Durazno', 233, NULL, NULL),
(3986, 'FLorida', 233, NULL, NULL),
(3987, 'Flores', 233, NULL, NULL),
(3988, 'Lavalleja', 233, NULL, NULL),
(3989, 'Maldonado', 233, NULL, NULL),
(3990, 'Montevideo', 233, NULL, NULL),
(3991, 'Paysandu', 233, NULL, NULL),
(3992, 'Rio Negro', 233, NULL, NULL),
(3993, 'Rivera', 233, NULL, NULL),
(3994, 'Rocha', 233, NULL, NULL),
(3995, 'Salto', 233, NULL, NULL),
(3996, 'San Jose', 233, NULL, NULL),
(3997, 'Soriano', 233, NULL, NULL),
(3998, 'Tacuarembo', 233, NULL, NULL),
(3999, 'Treinta y Tres', 233, NULL, NULL),
(4000, 'Andijon', 234, NULL, NULL),
(4001, 'Buhoro', 234, NULL, NULL),
(4002, 'Buxoro Viloyati', 234, NULL, NULL),
(4003, 'Cizah', 234, NULL, NULL),
(4004, 'Fargona', 234, NULL, NULL),
(4005, 'Horazm', 234, NULL, NULL),
(4006, 'Kaskadar', 234, NULL, NULL),
(4007, 'Korakalpogiston', 234, NULL, NULL),
(4008, 'Namangan', 234, NULL, NULL),
(4009, 'Navoi', 234, NULL, NULL),
(4010, 'Samarkand', 234, NULL, NULL),
(4011, 'Sirdare', 234, NULL, NULL),
(4012, 'Surhondar', 234, NULL, NULL),
(4013, 'Toskent', 234, NULL, NULL),
(4014, 'Malampa', 235, NULL, NULL),
(4015, 'Penama', 235, NULL, NULL),
(4016, 'Sanma', 235, NULL, NULL),
(4017, 'Shefa', 235, NULL, NULL),
(4018, 'Tafea', 235, NULL, NULL),
(4019, 'Torba', 235, NULL, NULL),
(4020, 'Vatican City State (Holy See)', 236, NULL, NULL),
(4021, 'Amazonas', 237, NULL, NULL),
(4022, 'Anzoategui', 237, NULL, NULL),
(4023, 'Apure', 237, NULL, NULL),
(4024, 'Aragua', 237, NULL, NULL),
(4025, 'Barinas', 237, NULL, NULL),
(4026, 'Bolivar', 237, NULL, NULL),
(4027, 'Carabobo', 237, NULL, NULL),
(4028, 'Cojedes', 237, NULL, NULL),
(4029, 'Delta Amacuro', 237, NULL, NULL),
(4030, 'Distrito Federal', 237, NULL, NULL),
(4031, 'Falcon', 237, NULL, NULL),
(4032, 'Guarico', 237, NULL, NULL),
(4033, 'Lara', 237, NULL, NULL),
(4034, 'Merida', 237, NULL, NULL),
(4035, 'Miranda', 237, NULL, NULL),
(4036, 'Monagas', 237, NULL, NULL),
(4037, 'Nueva Esparta', 237, NULL, NULL),
(4038, 'Portuguesa', 237, NULL, NULL),
(4039, 'Sucre', 237, NULL, NULL),
(4040, 'Tachira', 237, NULL, NULL),
(4041, 'Trujillo', 237, NULL, NULL),
(4042, 'Vargas', 237, NULL, NULL),
(4043, 'Yaracuy', 237, NULL, NULL),
(4044, 'Zulia', 237, NULL, NULL),
(4045, 'Bac Giang', 238, NULL, NULL),
(4046, 'Binh Dinh', 238, NULL, NULL),
(4047, 'Binh Duong', 238, NULL, NULL),
(4048, 'Da Nang', 238, NULL, NULL),
(4049, 'Dong Bang Song Cuu Long', 238, NULL, NULL),
(4050, 'Dong Bang Song Hong', 238, NULL, NULL),
(4051, 'Dong Nai', 238, NULL, NULL),
(4052, 'Dong Nam Bo', 238, NULL, NULL),
(4053, 'Duyen Hai Mien Trung', 238, NULL, NULL),
(4054, 'Hanoi', 238, NULL, NULL),
(4055, 'Hung Yen', 238, NULL, NULL),
(4056, 'Khu Bon Cu', 238, NULL, NULL),
(4057, 'Long An', 238, NULL, NULL),
(4058, 'Mien Nui Va Trung Du', 238, NULL, NULL),
(4059, 'Thai Nguyen', 238, NULL, NULL),
(4060, 'Thanh Pho Ho Chi Minh', 238, NULL, NULL),
(4061, 'Thu Do Ha Noi', 238, NULL, NULL),
(4062, 'Tinh Can Tho', 238, NULL, NULL),
(4063, 'Tinh Da Nang', 238, NULL, NULL),
(4064, 'Tinh Gia Lai', 238, NULL, NULL),
(4065, 'Anegada', 239, NULL, NULL),
(4066, 'Jost van Dyke', 239, NULL, NULL),
(4067, 'Tortola', 239, NULL, NULL),
(4068, 'Saint Croix', 240, NULL, NULL),
(4069, 'Saint John', 240, NULL, NULL),
(4070, 'Saint Thomas', 240, NULL, NULL),
(4071, 'Alo', 241, NULL, NULL),
(4072, 'Singave', 241, NULL, NULL),
(4073, 'Wallis', 241, NULL, NULL),
(4074, 'Bu Jaydur', 242, NULL, NULL),
(4075, 'Wad-adh-Dhahab', 242, NULL, NULL),
(4076, 'al-\'Ayun', 242, NULL, NULL),
(4077, 'as-Samarah', 242, NULL, NULL),
(4078, '\'Adan', 243, NULL, NULL),
(4079, 'Abyan', 243, NULL, NULL),
(4080, 'Dhamar', 243, NULL, NULL),
(4081, 'Hadramaut', 243, NULL, NULL),
(4082, 'Hajjah', 243, NULL, NULL),
(4083, 'Hudaydah', 243, NULL, NULL),
(4084, 'Ibb', 243, NULL, NULL),
(4085, 'Lahij', 243, NULL, NULL),
(4086, 'Ma\'rib', 243, NULL, NULL),
(4087, 'Madinat San\'a', 243, NULL, NULL),
(4088, 'Sa\'dah', 243, NULL, NULL),
(4089, 'Sana', 243, NULL, NULL),
(4090, 'Shabwah', 243, NULL, NULL),
(4091, 'Ta\'izz', 243, NULL, NULL),
(4092, 'al-Bayda', 243, NULL, NULL),
(4093, 'al-Hudaydah', 243, NULL, NULL),
(4094, 'al-Jawf', 243, NULL, NULL),
(4095, 'al-Mahrah', 243, NULL, NULL),
(4096, 'al-Mahwit', 243, NULL, NULL),
(4097, 'Central Serbia', 244, NULL, NULL),
(4098, 'Kosovo and Metohija', 244, NULL, NULL),
(4099, 'Montenegro', 244, NULL, NULL),
(4100, 'Republic of Serbia', 244, NULL, NULL),
(4101, 'Serbia', 244, NULL, NULL),
(4102, 'Vojvodina', 244, NULL, NULL),
(4103, 'Central', 245, NULL, NULL),
(4104, 'Copperbelt', 245, NULL, NULL),
(4105, 'Eastern', 245, NULL, NULL),
(4106, 'Luapala', 245, NULL, NULL),
(4107, 'Lusaka', 245, NULL, NULL),
(4108, 'North-Western', 245, NULL, NULL),
(4109, 'Northern', 245, NULL, NULL),
(4110, 'Southern', 245, NULL, NULL),
(4111, 'Western', 245, NULL, NULL),
(4112, 'Bulawayo', 246, NULL, NULL),
(4113, 'Harare', 246, NULL, NULL),
(4114, 'Manicaland', 246, NULL, NULL),
(4115, 'Mashonaland Central', 246, NULL, NULL),
(4116, 'Mashonaland East', 246, NULL, NULL),
(4117, 'Mashonaland West', 246, NULL, NULL),
(4118, 'Masvingo', 246, NULL, NULL),
(4119, 'Matabeleland North', 246, NULL, NULL),
(4120, 'Matabeleland South', 246, NULL, NULL),
(4121, 'Midlands', 246, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0 COMMENT '1:admin|0:user',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', 1, NULL, NULL, NULL, '$2y$10$63Kd5d5naxA9k2XNvZGHO.iGwjloOWj58/yHAJyfdv.ugNfIkOHci', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-31 21:23:55', '2024-07-31 21:23:55'),
(2, 'nirjona', 'mstrojifaakhter@gmail.com', 0, '1987328765', 'Dinajpur', NULL, '$2y$10$tQEQbfa2/1whSAz.r6Pehu9Qjs4octXk8I3WGsWTpFaO5u4OqytJW', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-31 23:41:59', '2024-07-31 23:41:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id_index` (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
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
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4122;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecommerce`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `full_name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$12$AglLZhkVmIjo4LgN0bBnWOejQmdiYELswhScgRhHoSdoYZarCg/gy', '2024-08-30 01:02:00', '2024-08-30 01:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `description`, `parent_id`, `is_active`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Electronic Gadgets', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', NULL, 1, 'category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(2, 'Kitchen Items', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', NULL, 1, 'category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(3, 'Mens Clothing', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', NULL, 1, 'category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(4, 'Organic Food', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', NULL, 1, 'category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(5, 'Womens Clothing', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', NULL, 1, 'category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(6, 'Home Appliances', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', NULL, 1, 'category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(7, 'Mobile Phones', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 1, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(8, 'Laptops', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 1, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(9, 'Headphones', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 1, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(10, 'Cookware', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 2, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(11, 'Cutlery', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 2, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(12, 'Bakeware', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 2, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(13, 'Kitchen Appliances', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 2, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(14, 'Storage & Organization', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 2, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(15, 'Shirts & Tops', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 3, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(16, 'Trousers & Jeans', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 3, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(17, 'Outerwear', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 3, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(18, 'Sportswear', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 3, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(19, 'Suits & Blazers', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 3, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(20, 'Organic Fruits', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 4, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(21, 'Organic Vegetables', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 4, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(22, 'Organic Grains & Pulses', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 4, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(23, 'Organic Dairy Products', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 4, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(24, 'Organic Spices & Herbs', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 4, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(25, 'Salwar Kameez', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 5, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(26, 'Saree', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 5, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(27, 'Kurtis & Tunics', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 5, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(28, 'Lehenga', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 5, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(29, 'Hijabs & Scarves', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 5, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(30, 'Kitchen Appliances', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 6, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(31, 'Cleaning Appliances', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', 6, 1, 'sub_category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(32, 'Beauty & Personal Care', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', NULL, 1, 'category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(33, 'Toys & Games', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', NULL, 1, 'category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(34, 'Sports & Outdoors', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', NULL, 1, 'category', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(35, 'Automotive', 'https://picsum.photos/536/354', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur auctor nisl et erat vehicula, at vestibulum magna vehicula. Phasellus sit amet feugiat sem. Proin interdum metus sit amet risus malesuada, sed malesuada nisl cursus. Quisque euismod, magna a gravida ultrices, felis sem vehicula dolor, in iaculis urna risus ut lorem. Aenean in massa a mi bibendum tincidunt. Suspendisse potenti. Aliquam erat volutpat. Donec vel sapien id purus facilisis sagittis. In hac habitasse platea dictumst. Fusce id erat a libero elementum scelerisque. Ut euismod interdum mauris, at cursus risus eleifend sed. Integer fringilla nunc ut nisi aliquet, ac iaculis velit dapibus. Nam convallis, purus sed venenatis interdum, est lectus consequat mi, nec tincidunt nisl purus ut velit. Sed eu odio ut turpis ullamcorper aliquet vel in ante. Sed vitae tincidunt lorem. Vivamus efficitur magna sit amet lacus fermentum, in cursus nunc vehicula. Donec et nunc nec sem suscipit dictum. Cras eu est libero. In hac habitasse platea dictumst. Nullam aliquet, sem sed consequat cursus, nunc urna scelerisque nunc, nec cursus metus mauris non ligula.', NULL, 1, 'category', '2024-08-30 01:02:00', '2024-08-30 01:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_types`
--

CREATE TABLE `delivery_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `delivery_fee` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_types`
--

INSERT INTO `delivery_types` (`id`, `name`, `delivery_fee`, `created_at`, `updated_at`) VALUES
(1, 'Inside Dhaka City', '70', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(2, 'Inside Chittagong City', '70', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(3, 'Outside Dhaka & Chittagong City', '130', '2024-08-30 01:02:00', '2024-08-30 01:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_sections`
--

CREATE TABLE `dynamic_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamic_sections`
--

INSERT INTO `dynamic_sections` (`id`, `name`, `category_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Electronic Gadget', 1, 1, NULL, NULL),
(2, 'Kitchen Items', 2, 1, NULL, NULL),
(3, 'Saree', 26, 1, NULL, NULL),
(4, 'Latest Phones', 7, 1, NULL, NULL);

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
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_17_092846_create_posts_table', 1),
(6, '2024_07_29_123922_create_delivery_types_table', 1),
(7, '2024_07_29_133554_create_categories_table', 1),
(8, '2024_07_29_133610_create_products_table', 1),
(9, '2024_07_29_133709_create_product_images_table', 1),
(10, '2024_07_29_133722_create_orders_table', 1),
(11, '2024_07_29_133732_create_order_items_table', 1),
(12, '2024_07_29_133748_create_shopping_carts_table', 1),
(13, '2024_07_29_133821_create_reviews_table', 1),
(14, '2024_07_29_133838_create_payment_details_table', 1),
(15, '2024_07_29_133851_create_inventories_table', 1),
(16, '2024_07_29_133909_create_wishlists_table', 1),
(17, '2024_08_26_112628_create_specifications_table', 1),
(18, '2024_08_26_112732_create_product_specifications_table', 1),
(19, '2024_08_27_114745_create_admins_table', 1),
(20, '2024_08_29_095756_create_dynamic_sections_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `delivery_type_id` bigint(20) UNSIGNED NOT NULL,
  `order_note` tinytext DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Order Placed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_amount`, `delivery_type_id`, `order_note`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, '969', 1, 'test', 'Order Placed', '2024-08-30 03:53:24', '2024-08-30 03:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 1, '899', '2024-08-30 03:53:24', '2024-08-30 03:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `order_id`, `payment_type`, `payment_status`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'COD', 'Pending', NULL, '2024-08-30 03:53:24', '2024-08-30 03:53:24');

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `price`, `stock`, `category_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'iPhone 14 Pro Max', '/images/products/phone/1.webp', 'A flagship device with a 6.7-inch Super Retina XDR display, A16 Bionic chip, and ProMotion technology. Equipped with a triple-camera system for stunning photography. ', 1099, 50, 7, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(2, 'Samsung Galaxy S23 Ultra', '/images/products/phone/2.jpg', 'Boasts a 6.8-inch Dynamic AMOLED display, Snapdragon 8 Gen 2, and a versatile quad-camera setup. Supports S Pen for productivity.', 1199, 30, 7, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(3, 'Google Pixel 7 Pro', '/images/products/phone/3.jpg', 'Features a 6.7-inch OLED display, Google Tensor G2 chip, and advanced AI-powered camera capabilities. Offers pure Android experience', 899, 30, 7, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(4, 'OnePlus 11', '/images/products/phone/4.webp', 'Equipped with a 6.7-inch Fluid AMOLED display, Snapdragon 8 Gen 2, and Hasselblad-tuned cameras for vibrant photos. Known for fast performance.', 699, 30, 7, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(5, 'Xiaomi 13 Pro', '/images/products/phone/5.webp', 'A 6.73-inch AMOLED display, Snapdragon 8 Gen 2, and Leica-branded cameras deliver excellent photography and performance.', 899, 30, 7, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(6, 'Sony Xperia 1 V', '/images/products/phone/6.webp', 'A 6.5-inch 4K OLED display, Snapdragon 8 Gen 2, and pro-grade camera features make it ideal for creators.', 1199, 30, 7, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(7, 'Oppo Find X6 Pro', '/images/products/phone/7.jpg', 'Features a 6.82-inch AMOLED display, MediaTek Dimensity 9000 chip, and a powerful triple-camera setup for detailed photos.', 999, 30, 7, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(8, 'Vivo X90 Pro', '/images/products/phone/8.jpg', 'Comes with a 6.78-inch AMOLED display, MediaTek Dimensity 9200, and ZEISS optics for outstanding camera performance.', 999, 30, 7, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(9, 'Asus ROG Phone 7', '/images/products/phone/9.jpg', 'Gaming-focused with a 6.78-inch AMOLED display, Snapdragon 8 Gen 2, and advanced cooling system. Includes customizable AirTrigger buttons.', 999, 30, 7, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(10, 'Motorola Edge 40 Pro', '/images/products/phone/10.jpg', 'A 6.67-inch OLED display, Snapdragon 8 Gen 2, and a 144Hz refresh rate deliver smooth performance and sharp visuals.', 799, 30, 7, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(11, 'MT 2929 Designer Saree', '/images/products/womes_clothing/1.jpg', 'This saree features bold stripes in yellow, blue, and pink with a broad golden border. Perfect for festive occasions.', 120, 30, 5, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(12, 'Floral Print Button-Front Dress', '/images/products/womes_clothing/2.jpg', 'This knee-length dress features a vibrant floral print, long sleeves, and a front button closure. Perfect for casual outings or semi-formal events.', 45, 30, 5, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(13, 'LAMTOUCH Premium Quality Plain Hijab (HIJAB-11)', '/images/products/womes_clothing/3.jpg', 'This premium quality plain hijab in pink offers a soft, comfortable feel. Ideal for everyday wear, it combines elegance with simplicity, making it a versatile addition to any wardrobe.', 1000, 30, 5, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(14, ' Black and Tan Color Block Dress', '/images/products/womes_clothing/4.jpg', 'This elegant dress features a fitted bodice and flared skirt with black and tan color blocking. Perfect for formal occasions, it offers a sophisticated and stylish look.', 60, 30, 5, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(15, ' Pink and White Ethnic Kurti Set', '/images/products/womes_clothing/5.webp', ' This traditional set features a pink kurti with white print and a white skirt with lace detailing. Perfect for festive occasions, it combines elegance with cultural charm.', 35, 30, 5, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(16, ' Pink Embroidered Salwar Kameez', '/images/products/womes_clothing/6.jpg', 'This elegant salwar kameez features intricate embroidery on a pink fabric. The set includes matching pants and is perfect for festive occasions, combining traditional charm with modern style.', 50, 30, 5, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(17, ' Black Business Suit', '/images/products/womes_clothing/7.jpeg', 'This sleek black business suit features a tailored blazer and matching trousers. Ideal for professional settings, it offers a modern silhouette and a polished look. ', 150, 30, 5, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(18, ' Purple Graphic Sweatshirt', '/images/products/womes_clothing/8.jpeg', 'This stylish purple sweatshirt features a central circular graphic design with intricate patterns and text. Perfect for casual wear, it combines comfort and modern style.', 35, 30, 5, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(19, 'Floral Print Blouse', '/images/products/womes_clothing/9.jpeg', 'This stylish floral print blouse features vibrant red, blue, yellow, and white flowers on a dark background. It’s paired with classic high-waisted blue denim jeans for a casual look.', 40, 30, 5, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(20, 'Rode NT1-A Cardioid Condenser Microphone', '/images/products/gadget/1.jpg', 'The Rode NT1-A features a large diaphragm, ultra-low noise, and full frequency response. Ideal for detailed studio recording, it’s versatile for various vocal applications.', 31895, 30, 1, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(21, 'Emoticon Alarm Clock', '/images/products/gadget/2.webp', 'This voice-activated alarm clock displays emoticons, serves as a night light, and has adjustable ring tones. Its playful design adds an interactive touch to your mornings.', 25, 30, 1, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(22, 'LAX Max Portable Bluetooth Speaker', '/images/products/gadget/3.jpg', 'This portable speaker offers wireless Bluetooth connectivity, impressive sound quality, and a sleek design. Perfect for on-the-go music enjoyment, it enhances your audio experience.', 50, 30, 1, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(23, 'M10 TWS Wireless Earbuds', '/images/products/gadget/4.jpg', 'These wireless earbuds feature a sleek metallic finish and come with a compact charging case. They offer high-quality sound and are perfect for on-the-go listening. ', 25, 30, 1, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(24, 'Apple Watch Series 8', '/images/products/gadget/5.webp', 'This Apple Watch features a sleek design with a fitness-oriented display, highlighting its capabilities in health monitoring and personalization through its vibrant equine-themed interface.', 399, 30, 1, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(25, 'Creative T60 2.0 Compact Hi-Fi Desktop Speakers', '/images/products/gadget/6.jpg', 'These compact desktop speakers feature Clear Dialog and Surround audio technologies, USB-C audio, Bluetooth 5.0, and up to 60W peak power. Ideal for enhancing your desktop audio experience.', 60, 30, 1, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(26, 'MISULI Wireless Earbuds', '/images/products/gadget/7.webp', 'MISULI wireless earbuds offer superior sound with large coils and subwoofers. Ergonomic hooks ensure a secure fit while touch controls and Bluetooth 5.0 provide convenience and high-quality connection.', 25, 30, 1, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(27, ' RaceGT Wired RGB Gaming Mouse', '/images/products/gadget/8.webp', 'This ergonomic gaming mouse features 7 RGB lighting modes, adjustable DPI up to 3600, and 6 buttons. Ideal for enhancing your gaming experience with comfort and style. ', 898, 30, 1, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(28, 'Razer BlackWidow V4 Pro Mechanical Gaming Keyboard', '/images/products/gadget/9.webp', 'This mechanical keyboard features green switches, Chroma RGB lighting, and a magnetic wrist rest. Ideal for gaming, it offers tactile feedback and customizable macros.', 299, 30, 1, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(29, 'Philips TAPN402 Wireless Neckband Earphones', '/images/products/gadget/10.jpg', ' These wireless neckband earphones feature ergonomic design, metallic accents, and Bluetooth 5.0. They offer superior sound quality and comfort for on-the-go audio experiences.', 50, 30, 1, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(30, 'Apple MacBook Air M2', '/images/products/laptop/1.jpeg', 'Ultra-thin, powerful, and energy-efficient with the M2 chip, delivering fast performance, excellent battery life, and a vibrant Retina display.', 1199, 30, 8, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(31, 'Dell XPS 13', '/images/products/laptop/2.jpeg', ' Sleek and compact, featuring a stunning 13.4-inch InfinityEdge display, powerful Intel processors, and premium build quality for professionals on the go.', 999, 30, 8, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(32, 'HP Spectre x360 14', '/images/products/laptop/3.jpg', 'Versatile 2-in-1 design with a brilliant OLED display, long battery life, and robust performance powered by Intel’s 11th Gen processors.', 1299, 30, 8, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(33, 'Lenovo ThinkPad X1 Carbon Gen 9', '/images/products/laptop/4.png', 'Durable business laptop with a lightweight design, exceptional keyboard, strong security features, and excellent performance for enterprise users.', 1499, 30, 8, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(34, 'Asus ROG Zephyrus G14', '/images/products/laptop/5.png', 'Compact gaming laptop with a powerful AMD Ryzen 9 processor, GeForce RTX 3060 GPU, and a 120Hz display for smooth, high-performance gaming.', 1499, 30, 8, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(35, 'Microsoft Surface Laptop 5', '/images/products/laptop/6.jpeg', 'Stylish, lightweight laptop with a 3:2 PixelSense touchscreen display, optimized for productivity and powered by the latest Intel or AMD processors.', 999, 30, 8, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(36, 'Acer Swift 3', '/images/products/laptop/7.webp', 'Affordable, lightweight laptop offering solid performance with AMD Ryzen 7 or Intel Core i7 options, making it ideal for students and budget-conscious users.', 749, 30, 8, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(37, 'Razer Blade 15', '/images/products/laptop/8.jpeg', ' Premium gaming laptop with a sleek design, powerful Intel Core i7 processor, NVIDIA RTX graphics, and a fast 240Hz display for competitive gaming.', 1799, 30, 8, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(38, 'LG Gram 17', '/images/products/laptop/9.jpeg', ' Ultra-lightweight laptop with a massive 17-inch display, excellent battery life, and strong performance, perfect for those needing a large screen on the go.', 1699, 30, 8, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(39, 'Ninja Auto-iQ Kitchen System', '/images/products/kitchen_items/1.jpg', 'This versatile kitchen system includes a blender, single-serve cup, and food processor attachment. Perfect for smoothies, soups, and more, it offers convenience and powerful performance.', 299, 30, 2, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(40, 'Zyliss Easy Control Handheld Slicer', '/images/products/kitchen_items/2.jpg', 'This slicer creates perfectly even slices quickly. It features a SmoothGlide food holder for safety and a Julienne blade button for versatile cutting. Ideal for efficient food preparation.', 25, 30, 2, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(41, 'Room Essentials Kitchen Shears', '/images/products/kitchen_items/3.jpg', 'These versatile kitchen shears feature stamped stainless-steel blades and black ABS plastic handles. Ideal for various cutting tasks, they offer superior performance and a comfortable grip. ', 45, 30, 2, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(42, 'Gourmet Easy Garlic Press', '/images/products/kitchen_items/4.jpg', 'This stainless steel garlic press efficiently minces garlic cloves with minimal effort. Its ergonomic design ensures comfort, and it’s easy to clean, making it a must-have kitchen tool.', 18, 30, 2, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(43, 'Stainless Steel Kitchen Utensils Set', '/images/products/kitchen_items/5.jpg', 'Stainless steel kitchen utensils set including a peeler, grater, and ice cream scoop displayed on a plate with grated carrots; indispensable for efficient food prep.', 29, 30, 2, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(44, 'Stainless Steel Icing Nozzles Set', '/images/products/kitchen_items/6.jpg', 'A collection of variously shaped icing nozzles with a reusable piping bag, ideal for creating diverse and detailed frosting patterns on cakes and cupcakes.', 799, 30, 2, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(45, ' LED Faucet (Blue Light)', '/images/products/kitchen_items/7.jpg', ' LED faucet attachment emitting blue light, enhancing faucet aesthetics. Ideal for adding a unique visual experience to kitchen or bathroom sinks. Not temperature-sensitive.', 1111, 30, 2, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(46, 'Citrus Juice Sprayer', '/images/products/kitchen_items/8.jpg', 'A green, conical kitchen utensil that allows direct extraction and dispensing of citrus juice from fruits. Perfect for adding fresh flavor to salads and dishes conveniently.', 599, 30, 2, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(47, 'Plastic Dumpling Molds Set', '/images/products/kitchen_items/9.jpg', ' Dumpling molds in blue, green, and transparent colors for easily shaping homemade dumplings. Ideal for cooking enthusiasts looking to simplify the dumpling-making process with a handy kitchen tool.', 1299, 30, 2, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(48, 'Black Seed Oil Set', '/images/products/organic/1.jpg', 'Wooden bowl with black seeds, ceramic bowl with scoop, and glass bottle of amber-colored oil. Ideal for culinary use, adding rich flavor and health benefits to dishes.', 1599, 30, 4, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(49, ' Almond Oil with Almonds', '/images/products/organic/2.jpg', 'Small glass bottle with golden almond oil and a wooden spoon filled with almonds. Perfect for culinary and skincare uses, offering rich nutrients and a pleasant aroma.', 999, 30, 4, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(50, 'Pumpkin Seed Oil Set', '/images/products/organic/3.jpg', ' A rich amber-hued pumpkin seed oil in a glass bottle, accompanied by raw pumpkin seeds and half of a fresh pumpkin, representing a nutritious and flavorful culinary product from autumn’s harvest.', 1599, 30, 4, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(51, 'Flaxseed Oil Set', '/images/products/organic/4.jpg', 'Clear glass bottle with golden-yellow flaxseed oil and two wooden bowls filled with flaxseeds. Perfect for culinary and health uses, offering rich nutrients and a pleasant aroma.', 1299, 30, 4, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(52, 'Sesame Oil with Seeds', '/images/products/organic/5.jpg', 'Clear glass bottle filled with golden sesame oil and a wooden bowl of sesame seeds. Perfect for culinary and health uses, offering rich nutrients and a pleasant aroma.', 1499, 30, 4, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(53, 'Onion Oil with Onions', '/images/products/organic/6.jpg', 'A rustic kitchen scene featuring golden-brown onions arranged on a wooden table alongside a clear glass bottle filled with golden liquid, likely olive oil, evoking home cooking essentials.', 1699, 30, 4, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(54, 'WV Castor Oil B.P.', '/images/products/organic/7.jpg', 'A clear 100 ml bottle of WV branded Castor Oil B.P., accompanied by multiple oval-shaped, mottled brown castor seeds. Used medicinally and industrially.', 699, 30, 4, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(55, ' GRANDEUR 100% Pure & Natural Argan Oil', '/images/products/organic/8.jpg', 'Grandeur’s Argan Oil offers a natural, multi-purpose treatment for body, hair, and face care. Extracted from the kernels of the Argania Spinosa tree, this 30ml oil promises to nourish and rejuvenate with its pure ingredients.', 420, 30, 4, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(56, 'Royal Blue Embroidered Salwar Kameez', '/images/products/salwar_kameez/1.jpg', 'This deep maroon Anarkali salwar kameez features intricate gold embroidery, offering a regal look perfect for weddings or festive occasions. Made from plush velvet, it exudes luxury and elegance.', 120, 30, 25, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(57, 'Pastel Floral Chiffon Suit', '/images/products/salwar_kameez/2.jpg', 'A light pastel chiffon salwar kameez adorned with delicate floral prints, perfect for summer events. The soft fabric drapes beautifully, making it both comfortable and stylish.', 85, 30, 25, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(58, 'Silk Embroidered Patiala', '/images/products/salwar_kameez/3.jpg', 'This vibrant Patiala salwar kameez in bright pink is crafted from rich silk and features detailed embroidery. The loose Patiala pants add traditional flair to this modern ensemble.', 95, 30, 25, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(59, 'Bohemian Block Print Kurta', '/images/products/salwar_kameez/4.jpg', 'A bohemian-inspired block print kurta paired with comfortable cotton salwar. The earthy tones and bold patterns make this outfit a standout choice for casual wear.', 65, 30, 25, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(60, 'Classic White Chikankari', '/images/products/salwar_kameez/5.jpg', ' Timeless white Chikankari salwar kameez, hand-embroidered on fine cotton. Its elegant simplicity is perfect for both day and evening events, offering a touch of traditional charm.', 75, 30, 25, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(61, 'Peach Georgette Sharara', '/images/products/salwar_kameez/6.jpg', 'This peach georgette sharara set features intricate mirror work and a flowing silhouette. The lightweight fabric and festive design make it ideal for celebrations.', 110, 30, 25, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(62, 'Golden Zari Work Straight Suit', '/images/products/salwar_kameez/7.jpg', 'A straight-cut salwar kameez in deep emerald green with golden zari work along the neckline and hem. Its sleek design is perfect for festive occasions and formal events.', 105, 30, 25, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(63, 'Indigo Bandhani Print', '/images/products/salwar_kameez/8.jpg', 'This indigo Bandhani print salwar kameez is a tribute to traditional Indian craftsmanship. The intricate tie-dye patterns on soft cotton fabric create a beautiful and comfortable outfit.', 70, 30, 25, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(64, 'Mint Green Palazzo Set', '/images/products/salwar_kameez/9.jpg', 'A refreshing mint green palazzo salwar kameez set with minimalistic thread work. The wide-legged palazzos offer comfort, while the light, airy fabric is perfect for summer wear.', 90, 30, 25, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(65, 'Banarasi Silk Saree', '/images/products/saree/1.jpg', 'A luxurious saree from Varanasi, known for its intricate zari work and rich texture. Ideal for weddings and festive occasions.', 150, 30, 26, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(66, 'Kanjeevaram Silk Saree', '/images/products/saree/2.jpg', 'A traditional saree from Tamil Nadu, featuring vibrant colors and bold patterns with gold zari borders. Perfect for formal events.', 200, 30, 26, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(67, 'Chanderi Cotton Saree', '/images/products/saree/3.jpg', 'Lightweight and elegant, this saree from Madhya Pradesh combines silk and cotton, offering a sheer texture with subtle zari work.', 185, 30, 26, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(68, 'Tussar Silk Saree', '/images/products/saree/4.jpg', 'A handwoven saree with a natural golden sheen, known for its texture and unique patterns, often with tribal art. Versatile for all occasions.', 120, 30, 26, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(69, 'Patola Saree', '/images/products/saree/5.jpg', 'A double ikat woven saree from Gujarat, featuring geometric patterns and vibrant colors. A true heirloom piece for special occasions.', 275, 30, 26, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(70, 'Paithani Silk Saree', '/images/products/saree/6.jpg', 'A Maharashtrian saree characterized by its rich colors, peacock motifs, and intricate pallu designs. A timeless piece for grand celebrations.', 180, 30, 26, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(71, 'Bhagalpuri Silk Saree', '/images/products/saree/7.jpg', 'Known as Tussar silk, this saree from Bhagalpur offers a blend of tradition and modernity with its soft texture and vibrant prints.', 100, 30, 26, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(72, 'Mysore Silk Saree', '/images/products/saree/8.jpg', 'A pure silk saree from Karnataka, renowned for its smooth texture and minimalistic yet elegant design with a glossy finish.', 170, 30, 26, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(73, 'Jamdani Cotton Saree', '/images/products/saree/9.jpg', 'A fine cotton saree from Bengal, featuring intricate handwoven patterns on a sheer fabric, perfect for casual and formal wear.', 90, 30, 26, 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_specifications`
--

CREATE TABLE `product_specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `specification_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specifications`
--

INSERT INTO `product_specifications` (`id`, `product_id`, `specification_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '1kg', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(2, 1, 5, '15 hours', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(3, 1, 24, '2019-07-20', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(4, 1, 20, 'English', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(5, 1, 6, '5.5 inch', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(6, 1, 8, '256GB', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(7, 1, 10, 'Red', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(8, 1, 16, 'Checked', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(9, 2, 17, 'Agatha Christie', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(10, 2, 22, 'Paperback', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(11, 2, 21, 'Fiction', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(12, 2, 1, 'Sony', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(13, 2, 18, 'Macmillan', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(14, 2, 12, 'Large', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(15, 2, 19, '978-3-16-148410-0', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(16, 2, 7, 'A15 Bionic', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(17, 3, 10, 'White', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(18, 3, 3, 'Blue', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(19, 3, 14, 'Loose', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(20, 3, 24, '2021-05-15', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(21, 3, 12, 'Medium', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(22, 3, 11, 'Metal', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(23, 3, 4, '500g', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(24, 3, 9, 'Samsung', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(25, 4, 11, 'Wood', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(26, 4, 15, 'Sleeveless', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(27, 4, 14, 'Regular', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(28, 4, 5, '20 hours', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(29, 4, 10, 'Blue', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(30, 4, 18, 'Penguin', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(31, 4, 4, '500g', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(32, 4, 24, '2019-07-20', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(33, 5, 17, 'J.K. Rowling', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(34, 5, 22, 'Paperback', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(35, 5, 13, 'Unisex', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(36, 5, 12, 'Large', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(37, 5, 7, 'A15 Bionic', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(38, 5, 11, 'Cotton', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(39, 5, 1, 'Adidas', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(40, 5, 23, '200', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(41, 6, 5, '15 hours', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(42, 6, 13, 'Unisex', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(43, 6, 6, '13 inch', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(44, 6, 10, 'Red', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(45, 6, 22, 'Hardcover', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(46, 6, 11, 'Plastic', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(47, 6, 21, 'Science Fiction', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(48, 6, 23, '200', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(49, 7, 20, 'Spanish', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(50, 7, 7, 'Intel i7', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(51, 7, 9, 'Apple', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(52, 7, 23, '500', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(53, 7, 15, 'Long Sleeve', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(54, 7, 6, '55 inch', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(55, 7, 3, 'Red', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(56, 7, 2, 'PS5', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(57, 8, 12, 'Small', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(58, 8, 6, '5.5 inch', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(59, 8, 1, 'Sony', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(60, 8, 7, 'M1', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(61, 8, 10, 'White', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(62, 8, 13, 'Unisex', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(63, 8, 3, 'White', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(64, 8, 9, 'Adidas', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(65, 9, 9, 'Sony', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(66, 9, 1, 'Apple', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(67, 9, 10, 'White', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(68, 9, 2, 'PS5', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(69, 9, 4, '200g', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(70, 9, 5, '10 hours', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(71, 9, 21, 'Biography', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(72, 9, 16, 'Checked', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(73, 10, 13, 'Unisex', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(74, 10, 19, '978-0-06-112008-4', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(75, 10, 10, 'Blue', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(76, 10, 14, 'Slim', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(77, 10, 3, 'Black', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(78, 10, 7, 'M1', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(79, 10, 12, 'X-Large', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(80, 10, 23, '200', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(81, 11, 7, 'Snapdragon 888', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(82, 11, 22, 'Paperback', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(83, 11, 24, '2019-07-20', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(84, 11, 3, 'White', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(85, 11, 1, 'Samsung', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(86, 11, 21, 'Science Fiction', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(87, 11, 15, 'Sleeveless', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(88, 11, 6, '5.5 inch', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(89, 12, 15, 'Long Sleeve', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(90, 12, 1, 'Nike', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(91, 12, 21, 'Science Fiction', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(92, 12, 5, '15 hours', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(93, 12, 11, 'Cotton', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(94, 12, 7, 'M1', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(95, 12, 4, '500g', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(96, 12, 9, 'Adidas', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(97, 13, 2, 'Bravia', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(98, 13, 1, 'Apple', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(99, 13, 12, 'Large', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(100, 13, 15, 'Sleeveless', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(101, 13, 7, 'Intel i7', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(102, 13, 22, 'Hardcover', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(103, 13, 17, 'J.K. Rowling', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(104, 13, 5, '10 hours', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(105, 14, 4, '500g', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(106, 14, 5, '5 hours', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(107, 14, 14, 'Regular', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(108, 14, 10, 'Red', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(109, 14, 6, '6.1 inch', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(110, 14, 12, 'Small', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(111, 14, 17, 'Agatha Christie', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(112, 14, 15, 'Short Sleeve', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(113, 15, 7, 'M1', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(114, 15, 13, 'Unisex', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(115, 15, 17, 'George Orwell', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(116, 15, 21, 'Science Fiction', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(117, 15, 16, 'Solid', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(118, 15, 9, 'Samsung', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(119, 15, 18, 'Penguin', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(120, 15, 5, '20 hours', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(121, 16, 15, 'Short Sleeve', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(122, 16, 11, 'Plastic', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(123, 16, 20, 'German', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(124, 16, 16, 'Striped', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(125, 16, 6, '6.1 inch', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(126, 16, 7, 'Snapdragon 888', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(127, 16, 22, 'Hardcover', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(128, 16, 19, '978-0-06-112008-4', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(129, 17, 2, 'Galaxy S21', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(130, 17, 19, '978-0-06-112008-4', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(131, 17, 11, 'Plastic', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(132, 17, 12, 'Large', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(133, 17, 16, 'Solid', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(134, 17, 22, 'Paperback', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(135, 17, 20, 'French', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(136, 17, 23, '150', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(137, 18, 16, 'Solid', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(138, 18, 12, 'X-Large', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(139, 18, 13, 'Male', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(140, 18, 6, '6.1 inch', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(141, 18, 3, 'Black', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(142, 18, 18, 'Macmillan', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(143, 18, 5, '5 hours', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(144, 18, 14, 'Slim', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(145, 19, 19, '978-3-16-148410-0', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(146, 19, 5, '20 hours', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(147, 19, 23, '200', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(148, 19, 15, 'Sleeveless', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(149, 19, 16, 'Solid', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(150, 19, 14, 'Loose', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(151, 19, 13, 'Unisex', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(152, 19, 18, 'Macmillan', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(153, 20, 17, 'George Orwell', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(154, 20, 8, '512GB', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(155, 20, 20, 'French', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(156, 20, 15, 'Short Sleeve', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(157, 20, 6, '6.1 inch', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(158, 20, 5, '15 hours', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(159, 20, 9, 'Nike', '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(160, 20, 2, 'Galaxy S21', '2024-08-30 01:02:00', '2024-08-30 01:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_carts`
--

CREATE TABLE `shopping_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specifications`
--

CREATE TABLE `specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specifications`
--

INSERT INTO `specifications` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Brand', 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(2, 'Model', 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(3, 'Color', 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(4, 'Weight', 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(5, 'Battery Life', 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(6, 'Screen Size', 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(7, 'Processor', 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(8, 'Storage Capacity', 1, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(9, 'Brand', 3, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(10, 'Color', 3, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(11, 'Material', 3, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(12, 'Size', 3, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(13, 'Gender', 3, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(14, 'Fit', 3, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(15, 'Sleeve Length', 3, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(16, 'Pattern', 3, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(17, 'Author', 4, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(18, 'Publisher', 4, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(19, 'ISBN', 4, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(20, 'Language', 4, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(21, 'Genre', 4, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(22, 'Format', 4, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(23, 'Pages', 4, '2024-08-30 01:02:00', '2024-08-30 01:02:00'),
(24, 'Publication Date', 4, '2024-08-30 01:02:00', '2024-08-30 01:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'Guest',
  `address` tinytext DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone_number`, `city`, `area`, `type`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'user@gmail.com', '$2y$12$yDt2oc7BE1RgzBCOVi1//.3yEkha6sJjQogQ/AAXkb.j3ds5Nr/mm', '01654-123211', 'Cox\'s Bazar', 'Bazar Ghata', 'Registered', 'Kalor Dhokan, Bazar Ghata, CoxsBazar', NULL, '2024-08-30 01:01:59', '2024-08-30 01:01:59'),
(2, 'user', NULL, NULL, '2364732467', NULL, NULL, 'Guest', 'Dhaka', NULL, '2024-08-30 03:53:24', '2024-08-30 03:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_full_name_index` (`full_name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `delivery_types`
--
ALTER TABLE `delivery_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_sections`
--
ALTER TABLE `dynamic_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dynamic_sections_category_id_foreign` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventories_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_delivery_type_id_foreign` (`delivery_type_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_details_order_id_foreign` (`order_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_specifications_product_id_foreign` (`product_id`),
  ADD KEY `product_specifications_specification_id_foreign` (`specification_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shopping_carts_user_id_foreign` (`user_id`),
  ADD KEY `shopping_carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `specifications`
--
ALTER TABLE `specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specifications_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `delivery_types`
--
ALTER TABLE `delivery_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dynamic_sections`
--
ALTER TABLE `dynamic_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_specifications`
--
ALTER TABLE `product_specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specifications`
--
ALTER TABLE `specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dynamic_sections`
--
ALTER TABLE `dynamic_sections`
  ADD CONSTRAINT `dynamic_sections_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_delivery_type_id_foreign` FOREIGN KEY (`delivery_type_id`) REFERENCES `delivery_types` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD CONSTRAINT `payment_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD CONSTRAINT `product_specifications_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_specifications_specification_id_foreign` FOREIGN KEY (`specification_id`) REFERENCES `specifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD CONSTRAINT `shopping_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shopping_carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `specifications`
--
ALTER TABLE `specifications`
  ADD CONSTRAINT `specifications_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `jwt_auth`
--
CREATE DATABASE IF NOT EXISTS `jwt_auth` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jwt_auth`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rana', 'rana@gmail.com', NULL, '$2y$12$fYjePmx.zvFIhaXHIMAwBOXzdN5.PAGrvvXVM4hl90lrYioNQBR4q', NULL, '2024-10-09 01:21:05', '2024-10-09 01:21:05'),
(2, 'admin', 'sharkernirjona@gmail.com', NULL, '$2y$12$ezJxHZmOhWTs3HBP7ajfFO5JVkzMdido41TQsgIYo9t9CHu1xi08.', NULL, '2024-10-09 03:13:30', '2024-10-09 03:13:30'),
(3, 'test', 'test@gmail.com', NULL, '$2y$12$3faXYznRSlZoR7jq7HkZ9ebqMCelDVq.J4S0Et5aDLD6iRt1FiLFC', NULL, '2024-10-14 00:02:06', '2024-10-14 00:02:06'),
(4, 'roni', 'roni@gmail.com', NULL, '$2y$12$K8krJDRaZ4kGOl5AysWmheKpcDrm1Vn29E836.hBqLANWgSx/ImLC', NULL, '2024-10-14 00:46:59', '2024-10-14 00:46:59');

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
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `user_id`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'test', 'first task', 'pending', '2024-10-09 05:42:25', '2024-10-09 05:42:25'),
(2, 1, 'test 2', 'this is second test', 'pending', '2024-10-09 05:43:38', '2024-10-09 05:43:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_09_060041_create_admins_table', 1),
(6, '2024_10_09_094534_create_items_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('test@gmail.com', '$2y$12$JugBuWOmp7oWGbu.mZm1N.bC3uooFXR.gMN7WlzW8c3tIZbmllS8a', '2024-10-14 00:19:56');

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', NULL, '$2y$12$jgZRbz8AHNShudwh1iRBFOrYz2D0RrASwMTNoLPMvzumZNBJ9/hpi', NULL, '2024-10-09 03:15:18', '2024-10-09 03:15:18'),
(2, 'test', 'test@gmail.com', NULL, '$2y$12$I83Whay/q5gWiz33VLPf8e/euPWtqtBbX279gJLB.Cf7zyPSIhTmi', NULL, '2024-10-09 05:06:55', '2024-10-09 05:06:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `laraveljwt`
--
CREATE DATABASE IF NOT EXISTS `laraveljwt` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laraveljwt`;

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
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `user_id`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'TV', 'Updated item description', 'pending', '2024-10-16 23:54:16', '2024-10-17 00:52:57'),
(2, 1, 'laptop', 'This is electronic item', 'approved', '2024-10-16 23:55:34', '2024-10-17 05:02:14'),
(3, 3, 'laptop', 'This is electronic item', 'rejected', '2024-10-16 23:56:33', '2024-10-17 05:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_17_050050_create_items_table', 2),
(6, '2024_10_19_075338_create_notifications_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('10457df4-dc3c-4a34-92b8-71a5479ac06a', 'App\\Notifications\\NewUserNotification', 'App\\Models\\User', 2, '{\"message\":\"New user registered: rojifa (sharkernirjona@gmail.com) at 07:56 AM\"}', NULL, '2024-10-19 01:56:17', '2024-10-19 01:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('test@gmail.com', '$2y$12$xJk0zIb/5hpXbjD8Rg5.1OjntqE.bz7i3XUFzrUwyyMbiNF.XRBbi', '2024-10-15 01:23:08');

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '$2y$12$/d3oW/W6FgSqX8CKygclv..Aa0vaNGfxzJhZr6Qf4FHWmuLCyKZ0.', 'user', NULL, NULL, '2024-10-15 01:08:58', '2024-10-15 01:08:58'),
(2, 'admin', 'admin@gmail.com', '$2y$12$5aNBboQFU2OoAL3aE76hAOuFJtIQzybpMRR/NHRlXWYFuEGO1kIj.', 'admin', NULL, NULL, '2024-10-15 01:14:06', '2024-10-15 01:14:06'),
(3, 'test', 'test@gmail.com', '$2y$12$m7JAuBgcYG0pjIWRDLalX.fMT2uClP1/Nw9rBcMtbNN4VNchUDtdC', 'user', NULL, NULL, '2024-10-15 01:16:37', '2024-10-15 01:16:37'),
(5, 'test1', '1001070@daffodil.ac', '$2y$12$GFwfEP4Z4qLM8jvbf5riqeT8a8996AmmqmU.8Z1SQsSM.LV05rZYu', 'user', NULL, NULL, '2024-10-15 01:41:26', '2024-10-15 01:41:26'),
(6, 'test1', '1001079@daffodil.ac', '$2y$12$eWtSuzwFHKSV9jRjjCfPYeoFX8RnBDgzEUYGhtyQE1jJUBg/Ao9tS', 'user', NULL, NULL, '2024-10-15 01:44:29', '2024-10-16 01:04:45'),
(8, 'rojifa', 'sharkernirjona@gmail.com', '$2y$12$gFB6nLHpFpWA2q1l3sJ2.uFWq3lsWw6sZb8GrbmMF9FOXetWXGTpy', 'user', NULL, NULL, '2024-10-19 01:56:16', '2024-10-19 01:56:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'api', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"business_directory\",\"ecommerce\",\"jwt_auth\",\"laraveljwt\",\"phpmyadmin\",\"property\",\"test\",\"work\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"laraveljwt\",\"table\":\"notifications\"},{\"db\":\"laraveljwt\",\"table\":\"users\"},{\"db\":\"laraveljwt\",\"table\":\"items\"},{\"db\":\"jwt_auth\",\"table\":\"admins\"},{\"db\":\"jwt_auth\",\"table\":\"password_reset_tokens\"},{\"db\":\"jwt_api\",\"table\":\"users\"},{\"db\":\"jwt_api\",\"table\":\"items\"},{\"db\":\"jwt_auth\",\"table\":\"items\"},{\"db\":\"jwt_auth\",\"table\":\"users\"},{\"db\":\"property\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-10-19 07:55:41', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `property`
--
CREATE DATABASE IF NOT EXISTS `property` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `property`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1727172416),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1727172416;', 1727172416);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leases`
--

CREATE TABLE `leases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `terms` varchar(255) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_23_172759_create_categories_table', 1),
(5, '2024_09_23_173053_create_properties_table', 1),
(6, '2024_09_23_173156_create_tenants_table', 1),
(7, '2024_09_23_174351_create_leases_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6lSAtOotSTfgmf6dDwMEy0onuhP1VJoAKhNBaOof', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Avast/128.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnM2eUFsZ2YyMk1vZ1R0NDhpNlNpOWRvQTUxOFFQaUxxVGQ2R05VcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727159144),
('JkAFfBkVMTRDz3LaQOaD7F501ZkgmsXH8t6TBQWr', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Avast/128.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoibk9ldmRBb3ZWY1QxdDMxa1hWSlFwNGVhV1VNZ2lFOHlmQ0ZZZ0QwMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi91c2VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkVDlMLk5TVC9aNS9tdEQzN2toQWRydXIzaktDZWN3NUUxV2VGaXR6QjhyMmRmU3BWOGtwNnUiO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1727174846);

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `contactDetails` varchar(255) NOT NULL,
  `paymentHistory` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$12$T9L.NST/Z5/mtD37khAdrur3jKCecw5E1WeFitzB8r2dfSpV8kp6u', 'QrSvOTycUvLSGipe20vv4y6IJ4QKZ0xwP10tFjGGWaBzD9MfNJWj3NSMLOF5', '2024-09-24 04:05:48', '2024-09-24 04:05:48'),
(3, 'Roji', 'mstrojifaakhter@gmail.com', NULL, '$2y$12$rQdJFQ.SdJsxG6Qi23RI/uax9RQ1DmTVSL27RF44ssIHos0EpyHmy', NULL, '2024-09-24 04:39:51', '2024-09-24 04:39:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leases`
--
ALTER TABLE `leases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leases`
--
ALTER TABLE `leases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `work`
--
CREATE DATABASE IF NOT EXISTS `work` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `work`;

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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
