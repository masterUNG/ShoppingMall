-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 14, 2021 at 04:05 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingmall`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `idSeller` text COLLATE utf8_unicode_ci NOT NULL,
  `nameSeller` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `price` text COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `images` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `idSeller`, `nameSeller`, `name`, `price`, `detail`, `images`) VALUES
(1, '4', 'Android Seller', 'ลูกสุนัข', '500', 'น่ารัก น่าเลิฟ น่าเล่น', '[/product/product884918.jpg, /product/product684397.jpg, /product/product715100.jpg, /product/product470317.jpg]'),
(2, '4', 'Android Seller', 'หมูกรอบ', '100', 'อร่อย สะอาด อย่างแยะ', '[/product/product52315.jpg, /product/product555602.jpg, /product/product645863.jpg, /product/product420907.jpg]'),
(8, '4', 'Android Seller', 'แมค', '25000', 'แมคบุ๊ค', '[/product/product113201.jpg, /product/product439730.jpg, /product/product888962.jpg, /product/product380527.jpg]'),
(9, '4', 'Android Seller', 'พัดลม', '120', 'เย็นๆๆๆๆ', '[/product/product131095.jpg, /product/product860100.jpg, /product/product184851.jpg, /product/product978591.jpg]');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL,
  `user` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8_unicode_ci NOT NULL,
  `lat` text COLLATE utf8_unicode_ci NOT NULL,
  `lng` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `type`, `address`, `phone`, `user`, `password`, `avatar`, `lat`, `lng`) VALUES
(1, 'Apple Buyer', 'buyer', '123/456 Banna1234 Bangkok 10260', '123456', 'applebuyer', '123456', '', '13.674244425551375', '100.60665970157555'),
(2, 'Apple Seller', 'seller', '123/456 Bankna Bangkok 10260', '123456', 'appleseller', '123456', '/shoppingmall/avatar/avatar249.jpg', '13.674244425551375', '100.60665970157555'),
(3, 'Android Buyer', 'buyer', '567/890 Hunhin 10260', '23456', 'androidbuyer', '123456', '', '12.57287', '99.9595733'),
(4, 'Android Seller', 'seller', '567/890 Hunhin 102450', '45678', 'androidseller', '123456', '/shoppingmall/avatar/avatar27080.jpg', '12.57287', '99.9595733'),
(6, 'มาสเตอร์ อึ่ง', 'buyer', '53 บางนา กรุงเทพ 10250', '0818595309', 'masterbuyer', '123456', '/shoppingmall/avatar/avatar98287.jpg', '13.6677719', '100.6217291'),
(7, 'Nopita Rider', 'rider', '123 Japna 123456', '123456', 'nopirider', '123456', '/shoppingmall/avatar/avatar48914.jpg', '13.7972217', '100.52144');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
