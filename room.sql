-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2020 at 05:03 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `room`
--
CREATE DATABASE IF NOT EXISTS `room` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `room`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(25) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_image`) VALUES
(1, 'คอนโดมิเนียม', 'https://img.lovepik.com/element/40023/7114.png_860.png'),
(2, 'อพาร์ทเมนท์', 'https://img.lovepik.com/element/40023/6971.png_860.png'),
(3, 'แมนชั่น', 'https://f.ptcdn.info/720/003/000/1364796517-pic3D-o.jpg'),
(4, 'หอพัก', 'https://img.lovepik.com/element/40022/8250.png_860.png');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_date` date NOT NULL DEFAULT current_timestamp(),
  `comment_time` time NOT NULL DEFAULT current_timestamp(),
  `comment_score` int(5) NOT NULL,
  `rentalroom_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_content`, `comment_date`, `comment_time`, `comment_score`, `rentalroom_id`) VALUES
(1, 'ดีมากเลยครับ', '2020-03-01', '05:22:14', 5, 1),
(2, 'แอร์เย็นไปนิดนึงค่ะ', '2020-03-04', '14:12:12', 4, 2),
(3, 'ห้องเล็กมากกก', '2020-03-03', '13:07:00', 3, 3),
(4, 'วิวสวยมากครับ', '2020-03-11', '10:14:06', 5, 4),
(5, 'บรรยากาศดี ข้างๆมีร้านอาหารด้วยอะ', '2020-03-10', '15:34:05', 5, 5),
(6, 'น่ากลัว นึกว่ามีผี T^T', '2020-03-04', '10:07:14', 3, 6),
(7, ' Wifi ช้ามากคร้าบ', '2020-03-17', '06:33:11', 4, 7),
(8, 'ขนาดห้องพอดี ทุกอย่างโอเค \r\n', '2020-03-04', '14:48:45', 5, 8),
(9, 'ดูดีสามัคคีเพอเฟค', '2020-03-31', '11:44:11', 5, 3),
(10, 'ที่นอนสะอาดครับ', '2020-03-31', '11:46:54', 5, 3),
(11, 'สบายมากค้าบ', '2020-03-31', '12:12:52', 5, 3),
(12, 'ดูดีคะ', '2020-03-31', '12:13:17', 4, 3),
(13, 'หรูหรามากค่า', '2020-03-31', '12:14:15', 5, 4),
(14, 'สวยมากค้าบ', '2020-03-31', '12:14:39', 4, 4),
(15, 'อาหารอร่อยค่าบ', '2020-03-31', '12:17:19', 4, 5),
(16, 'ดีจ้า', '2020-03-31', '12:18:58', 4, 1),
(17, 'สบายครับ', '2020-03-31', '12:19:18', 5, 1),
(18, 'ดูดีมากเลยจ้าาา', '2020-03-31', '14:13:59', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `pic_id` int(255) NOT NULL,
  `picture` text NOT NULL,
  `rentalroom_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`pic_id`, `picture`, `rentalroom_id`) VALUES
(1, 'https://r-cf.bstatic.com/images/hotel/max1024x768/705/70548233.jpg', 1),
(2, 'https://cdn.renthub.in.th/images/uploaded/201806/20180615/apartment_pictures/normal/3c31d742a419a789035964be59df05cc.jpg?1529064046', 2),
(3, 'https://res.cloudinary.com/baanfinder/image/private/t_project_gallery_size/fsnmmbsmqro4njjdhwuk.jpg', 3),
(4, 'https://res.cloudinary.com/baanfinder/image/private/t_project_gallery_size/s0uxbcselghrluncaszc.jpg', 4),
(5, 'https://4.bp.blogspot.com/-P2EAjZCCec8/VyLh5ri5BrI/AAAAAAAABpQ/iYbUUHpbicYVUww3xtfUhjDxCMNKDPZkgCLcB/s400/PP-Mansion-Songkhla.jpg', 5),
(6, 'https://lh3.googleusercontent.com/proxy/iuisUY0RXOQQTrJmpH9qJBmuOMnkeTyRyGO2DBvuMYbbiaAabeN27xlvEYTQWbuf_Z02heNyQ3I6zs213tKNz1b74qS3Ln7dUNNBFMM9WEKEKQtQcB_7rbJy9AenRSnPD3zjG-QXh9AP77M', 6),
(7, 'https://cdn.renthub.in.th/images/uploaded/201511/20151124/apartment_pictures/normal/e6b4ecf0946ee9c7a8f243264a0b651f.jpg?1448325644', 7),
(8, 'https://f.hongpak.in.th/media/rooms/thbs3x/18/0621/071635_4534.png', 8);

-- --------------------------------------------------------

--
-- Table structure for table `rentalroom`
--

DROP TABLE IF EXISTS `rentalroom`;
CREATE TABLE `rentalroom` (
  `rentalroom_id` int(255) NOT NULL,
  `rentalroom_name` varchar(255) NOT NULL,
  `rentalroom_price` int(10) NOT NULL,
  `rentalroom_name_location` varchar(255) NOT NULL,
  `rentalroom_latitude` text NOT NULL,
  `rentalroom_longitude` text NOT NULL,
  `rentalroom_phone` varchar(25) NOT NULL,
  `rentalroom_limitedroom_sex` varchar(25) NOT NULL,
  `rentalroom_approve` int(1) NOT NULL,
  `rentalroom_facilities` text NOT NULL,
  `rentalroom_img` varchar(255) NOT NULL,
  `rentalroom_star` int(1) NOT NULL,
  `category_id` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rentalroom`
--

INSERT INTO `rentalroom` (`rentalroom_id`, `rentalroom_name`, `rentalroom_price`, `rentalroom_name_location`, `rentalroom_latitude`, `rentalroom_longitude`, `rentalroom_phone`, `rentalroom_limitedroom_sex`, `rentalroom_approve`, `rentalroom_facilities`, `rentalroom_img`, `rentalroom_star`, `category_id`) VALUES
(1, 'Tanatip Apartment', 4000, '91/52 ถนน กาญจนวนิช ตำบล เขารูปช้าง อำเภอเมืองสงขลา สงขลา 90000', '7.15965', '100.6050207', '086 461 5176', 'หอรวม', 1, 'รายเดือน', 'https://r-cf.bstatic.com/images/hotel/max1024x768/705/70548233.jpg', 5, 2),
(2, 'ลายจันทร์ อพาร์ทเมนท์', 350, '91/117 หมู่ที่ 10 ถนน กาญจนวนิช ซอย 25 ตำบล เขารูปช้าง อำเภอเมืองสงขลา สงขลา 90000', '7.1606551', '100.6043782', '081 766 2400', 'หอรวม', 1, 'รายวัน', 'https://cdn.renthub.in.th/images/uploaded/201806/20180615/apartment_pictures/normal/3c31d742a419a789035964be59df05cc.jpg?1529064046', 5, 2),
(3, 'พลัสคอนโด', 65000, '682 ถ.เพชรเกษม หาดใหญ่ สงขลา 90110', '7.0380776', '100.4609588', '098 453 5659', 'หอรวม', 1, 'รายเดือน', 'https://res.cloudinary.com/baanfinder/image/private/t_project_gallery_size/fsnmmbsmqro4njjdhwuk.jpg', 5, 1),
(4, 'หงส์ฟ้าคอนโดเทล', 35000, '19 ถนน เพชรเกษม ซอย 2 ตำบล คอหงส์ อำเภอหาดใหญ่ สงขลา 90110', '7.0216201', '100.4866327', '081 990 1554', 'หอหญิง', 1, 'รายเดือน', 'https://res.cloudinary.com/baanfinder/image/private/t_project_gallery_size/s0uxbcselghrluncaszc.jpg', 5, 1),
(5, 'พีพี แมนชั่น', 4500, 'ถนน กาญจนวนิช ซอย 13 ตำบล เขารูปช้าง อำเภอเมืองสงขลา สงขลา 90000', '7.1700205', '100.5733243', '093 576 2980', 'หอรวม', 2, 'รายเดือน', 'https://4.bp.blogspot.com/-P2EAjZCCec8/VyLh5ri5BrI/AAAAAAAABpQ/iYbUUHpbicYVUww3xtfUhjDxCMNKDPZkgCLcB/s400/PP-Mansion-Songkhla.jpg', 5, 3),
(6, 'วชิรวิชญ์ แมนชั่น', 3500, 'ถนน กาญจนวนิช ซอย 5 ตำบล เขารูปช้าง อำเภอเมืองสงขลา สงขลา 90000', '7.1749998', '100.6053005', '094 526 3359', 'หอชาย', 2, 'รายเดือน', 'https://lh3.googleusercontent.com/proxy/iuisUY0RXOQQTrJmpH9qJBmuOMnkeTyRyGO2DBvuMYbbiaAabeN27xlvEYTQWbuf_Z02heNyQ3I6zs213tKNz1b74qS3Ln7dUNNBFMM9WEKEKQtQcB_7rbJy9AenRSnPD3zjG-QXh9AP77M', 5, 3),
(7, 'หอพักสตรอิ่มอุ่น', 2500, 'เยื้อง ม ราชภัฏ, สงขลา', '7.1750177', '100.6053005', '091 983 2698', 'หอหญิง', 1, 'รายเดือน', 'https://cdn.renthub.in.th/images/uploaded/201511/20151124/apartment_pictures/normal/e6b4ecf0946ee9c7a8f243264a0b651f.jpg?1448325644', 5, 4),
(8, 'หอพักหญิงโมกข์-มุข', 3500, 'ตำบล เขารูปช้าง อำเภอเมืองสงขลา สงขลา 90000', '7.1700097', '100.6086354', '0640323350', 'หอหญิง', 1, 'รายเดือน', 'https://f.hongpak.in.th/media/rooms/thbs3x/18/0621/071635_4534.png', 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `scorerentalroom`
--

DROP TABLE IF EXISTS `scorerentalroom`;
CREATE TABLE `scorerentalroom` (
  `score_id` int(255) NOT NULL,
  `score` int(5) NOT NULL,
  `rentalroom_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scorerentalroom`
--

INSERT INTO `scorerentalroom` (`score_id`, `score`, `rentalroom_id`) VALUES
(1, 4, 1),
(2, 5, 2),
(3, 5, 3),
(4, 4, 4),
(5, 5, 5),
(6, 4, 6),
(7, 5, 7),
(8, 4, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `rentalroom_id` (`rentalroom_id`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`pic_id`),
  ADD KEY `rentalroom_id` (`rentalroom_id`);

--
-- Indexes for table `rentalroom`
--
ALTER TABLE `rentalroom`
  ADD PRIMARY KEY (`rentalroom_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `scorerentalroom`
--
ALTER TABLE `scorerentalroom`
  ADD PRIMARY KEY (`score_id`),
  ADD KEY `rentalroom_id` (`rentalroom_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`rentalroom_id`) REFERENCES `rentalroom` (`rentalroom_id`);

--
-- Constraints for table `picture`
--
ALTER TABLE `picture`
  ADD CONSTRAINT `picture_ibfk_1` FOREIGN KEY (`rentalroom_id`) REFERENCES `rentalroom` (`rentalroom_id`);

--
-- Constraints for table `rentalroom`
--
ALTER TABLE `rentalroom`
  ADD CONSTRAINT `rentalroom_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `scorerentalroom`
--
ALTER TABLE `scorerentalroom`
  ADD CONSTRAINT `scorerentalroom_ibfk_2` FOREIGN KEY (`rentalroom_id`) REFERENCES `rentalroom` (`rentalroom_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
