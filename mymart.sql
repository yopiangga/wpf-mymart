-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2021 at 01:26 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mymart`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `nama`, `email`, `user_id`) VALUES
(1, 'Alfian Prisma Yopiangga', 'admin@admin.com', 7),
(2, 'Petikdua', 'petikdua@email.com', 9);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `price`, `category_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'TV 50 INCH', 2000000, 1, 0, 0, 0, 0),
(2, 'Lemari Pakaian', 450000, 2, 0, 0, 0, 0),
(3, 'Body Cream', 98000, 3, 0, 0, 0, 0),
(4, 'Pelindung Kepala', 157000, 4, 0, 0, 0, 0),
(5, 'Sepeda Gunung', 1900000, 5, 0, 0, 0, 0),
(6, 'Smart Watch 5.0', 5400000, 6, 0, 0, 0, 0),
(7, 'Ban serep JEEP', 3200000, 7, 0, 0, 0, 0),
(8, 'Susu bayi 6 Bulan', 54000, 8, 0, 0, 0, 0),
(9, 'Lampu Hias Sepeda ', 130000, 9, 0, 0, 0, 0),
(10, 'Panci Serbaguna ', 78000, 10, 0, 0, 0, 0),
(12, 'Laptop 14 Inch 2', 98000, 6, 1632989051, 1632989119, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`id`, `name`, `parent_category`) VALUES
(1, 'Elektronik', 1),
(2, 'Furnitur', 2),
(3, 'Kecantikan', 3),
(4, 'Hobi', 4),
(5, 'Olahraga', 5),
(6, 'Gadget', 6),
(7, 'Otomotive', 7),
(8, 'Bayi', 8),
(9, 'Aksesoris', 9),
(10, 'Rumah Tangga', 10);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1630611774),
('m130524_201442_init', 1630611776),
('m190124_110200_add_verification_token_column_to_user_table', 1630611776),
('m211008_143327_create_customer_table', 1633703711),
('m211008_143343_create_order_table', 1633703711),
('m211008_143352_create_order_item_table', 1633703711);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `date`, `customer_id`) VALUES
(1, '2021-10-08 16:50:07', 1),
(2, '2021-10-08 16:53:26', 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `item_id`) VALUES
(1, 1, 4),
(2, 1, 3),
(3, 2, 6),
(4, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `statistic`
--

CREATE TABLE `statistic` (
  `id` int(11) NOT NULL,
  `access_time` datetime NOT NULL,
  `user_ip` varchar(20) NOT NULL,
  `user_host` varchar(50) NOT NULL,
  `path_info` varchar(50) DEFAULT NULL,
  `query_string` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `statistic`
--

INSERT INTO `statistic` (`id`, `access_time`, `user_ip`, `user_host`, `path_info`, `query_string`) VALUES
(1, '2021-09-23 20:36:03', '172.16.102.54', 'Yopiangga-PC', 'halo', 'r=item'),
(2, '2021-09-23 15:37:58', '172.16.102.54', 'Yopiangga-PC', 'halo', 'r=item'),
(3, '2021-09-23 15:38:35', '172.16.102.54', 'Yopiangga-PC', '', 'r=item'),
(4, '2021-09-23 15:40:28', '172.16.102.54', 'Yopiangga-PC', '', 'r=item'),
(5, '2021-09-23 15:41:00', '172.16.102.54', 'Yopiangga-PC', '', 'r=item'),
(6, '2021-09-23 15:41:14', '172.16.102.54', 'Yopiangga-PC', 'item/view', 'id=1'),
(7, '2021-09-23 15:41:57', '172.16.102.54', 'Yopiangga-PC', 'item/view', 'id=1'),
(8, '2021-09-30 09:42:56', '::1', 'Yopiangga-PC', '', 'r=item'),
(9, '2021-09-30 09:44:25', '::1', 'Yopiangga-PC', '', 'r=item'),
(10, '2021-09-30 09:46:18', '::1', 'Yopiangga-PC', '', 'r=gii'),
(11, '2021-09-30 09:46:25', '::1', 'Yopiangga-PC', '', 'r=gii'),
(12, '2021-09-30 09:46:43', '::1', 'Yopiangga-PC', '', 'r=gii'),
(13, '2021-09-30 09:47:24', '::1', 'Yopiangga-PC', '', 'r=item'),
(14, '2021-09-30 09:57:01', '::1', 'Yopiangga-PC', '', 'r=item'),
(15, '2021-09-30 09:57:47', '::1', 'Yopiangga-PC', '', 'r=item'),
(16, '2021-09-30 10:02:43', '::1', 'Yopiangga-PC', 'item/view', 'id=11'),
(17, '2021-09-30 10:04:12', '::1', 'Yopiangga-PC', 'item/view', 'id=12'),
(18, '2021-09-30 10:05:02', '::1', 'Yopiangga-PC', 'item/view', 'id=12'),
(19, '2021-09-30 10:05:20', '::1', 'Yopiangga-PC', 'item/view', 'id=12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(7, 'admin', 'tNVLEZ2Y5AryqQ84-3B3cq3mRU3PItt7', '$2y$13$aOWoQNKVuzauZSPDYbPZS.ou6tlOCJsDfdTaQOCCfKbTkWqNaqDZi', NULL, 'admin@admin.com', 10, 1630611837, 1630611837, '4dHJXt0E_NXoKcSIZiFedLqpXktrP2C0_1630611837'),
(9, 'petikdua', 'KiWkzeXlJtJPp-NfbTv65bNKt-JXK7hT', '$2y$13$7ZhAnWzfkfK0PlGP0vkeQ.mYXl6Ls09i79rMxcQqC9MqdyB.8xBmS', NULL, 'petikdua@email.com', 10, 1633704741, 1633704741, 'MNZDlHUY4UYFBgkMO3XmaVacsDMhLPf6_1633704741');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category_id`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statistic`
--
ALTER TABLE `statistic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `statistic`
--
ALTER TABLE `statistic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `userCustomer` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `category` FOREIGN KEY (`category_id`) REFERENCES `item_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
