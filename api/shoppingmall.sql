-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 21, 2021 at 04:05 AM
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
(1, '4', 'ร้านมาสเตอร์', 'ลูกสุนัข', '500', 'น่ารัก น่าเลิฟ น่าเล่น', '[/product/product884918.jpg, /product/product684397.jpg, /product/product715100.jpg, /product/product470317.jpg]'),
(2, '4', 'ร้านมาสเตอร์', 'หมูกรอบ', '100', 'อร่อย สะอาด อย่างแยะ', '[/product/product52315.jpg, /product/productEdit329395.jpg, /product/product645863.jpg, /product/product420907.jpg]'),
(8, '4', 'ร้านมาสเตอร์', 'แมค', '25000', 'แมคบุ๊ค', '[/product/product113201.jpg, /product/product439730.jpg, /product/product888962.jpg, /product/product380527.jpg]'),
(9, '4', 'ร้านมาสเตอร์', 'พัดลม', '120', 'เย็นๆๆๆๆ', '[/product/product131095.jpg, /product/product860100.jpg, /product/product184851.jpg, /product/product978591.jpg]'),
(10, '4', 'ร้านมาสเตอร์', 'ดอกไม้', '100', 'ดอกทองอุไร', '[/product/productEdit101889.jpg, /product/productEdit820921.jpg, /product/productEdit471250.jpg, /product/productEdit206008.jpg]'),
(11, '2', 'ร้านแม่แอปเปิล', 'อาหาร', '120', 'อาหาร แสนอร่อย', '[/product/product478818.jpg, /product/product602204.jpg, /product/product642232.jpg, /product/product464989.jpg]'),
(12, '2', 'ร้านแม่แอปเปิล', 'งูหลาม', '1200', 'สด สะอาด', '[/product/product922307.jpg, /product/product266000.jpg, /product/product232962.jpg, /product/product720284.jpg]'),
(13, '9', 'อร่อยเหาะ', 'ถนน', '1200', 'ถนนสวยๆ', '[/product/product291510.jpg, /product/product703930.jpg, /product/product462402.jpg, /product/product564245.jpg]'),
(14, '10', 'โชว์ห่วย', 'รถยนต์', '630000', 'วิ่งได้', '[/product/product902710.jpg, /product/product368035.jpg, /product/product775083.jpg, /product/product164094.jpg]'),
(15, '12', 'ร้านเค้ก', 'เค้กไอศกรีม', '850', 'อร่อยมากๆๆๆ', '[/product/product135104.jpg, /product/product452534.jpg, /product/product20263.jpg, /product/product521659.jpg]');

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
(2, 'ร้านแม่แอปเปิล', 'seller', '123/456 Bankna Bangkok 10260', '123456', 'appleseller', '123456', '/shoppingmall/avatar/edit10avatar249.jpg', '13.6677633', '100.62171790000002'),
(3, 'Android Buyer', 'buyer', '567/890 Hunhin 10260', '23456', 'androidbuyer', '123456', '', '12.57287', '99.9595733'),
(4, 'ร้านมาสเตอร์', 'seller', '567/890 Hunhin , aaaa, bbbb, cccc,  Bangkok 102450', '0818595309', 'androidseller', '123456', '/shoppingmall/avatar/edit52edit92edit92avatar27080.jpg', '13.6678197', '100.6218222'),
(6, 'มาสเตอร์ อึ่ง', 'buyer', '53 บางนา กรุงเทพ 10250', '0818595309', 'masterbuyer', '123456', '/shoppingmall/avatar/avatar98287.jpg', '13.6677719', '100.6217291'),
(7, 'Nopita Rider', 'rider', '123 Japna 123456', '123456', 'nopirider', '123456', '/shoppingmall/avatar/avatar48914.jpg', '13.7972217', '100.52144'),
(8, 'doramon', 'rider', '$address', '$phone', 'nopirider', '123456', '$avatar', '$lat', '$lng'),
(9, 'อร่อยเหาะ', 'seller', '123/456 Bankna Bangkok 10260', '123456', 'appleseller1', '123456', '/shoppingmall/avatar/edit96avatar249.jpg', '13.6677631', '100.62172780000003'),
(10, 'โชว์ห่วย', 'seller', '123/456 Bankna Bangkok 10260', '123456', 'appleseller2', '123456', '/shoppingmall/avatar/edit86edit53avatar249.jpg', '13.6677631', '100.62172629999998'),
(11, 'Apple Seller3', 'seller', '123/456 Bankna Bangkok 10260', '123456', 'appleseller3', '123456', '/shoppingmall/avatar/edit48avatar249.jpg', '13.6677634', '100.62173210000003'),
(12, 'ร้านเค้ก', 'seller', '567/890 Hunhin , aaaa, bbbb, cccc,  Bangkok 102450', '0818595309', 'androidseller1', '123456', '/shoppingmall/avatar/edit90edit52edit92edit92avatar27080.jpg', '13.667763', '100.6217193'),
(13, 'ร้านมาสเตอร์2', 'seller', '567/890 Hunhin , aaaa, bbbb, cccc,  Bangkok 102450', '0818595309', 'androidseller2', '123456', '/shoppingmall/avatar/edit78edit52edit92edit92avatar27080.jpg', '13.6677644', '100.62172450000003'),
(14, 'ร้านมาสเตอร์3', 'seller', '567/890 Hunhin , aaaa, bbbb, cccc,  Bangkok 102450', '0818595309', 'androidseller3', '123456', '/shoppingmall/avatar/edit38edit52edit92edit92avatar27080.jpg', '13.6677623', '100.6217191');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
