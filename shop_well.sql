-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2020 at 08:50 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_well`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Sony'),
(5, 'LG'),
(6, 'Clothing');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(5, 16, '::1', -1, 1),
(7, 47, '::1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Electronics'),
(2, 'Women Clothing'),
(3, 'Men Clothing'),
(4, 'Kids Clothing'),
(5, 'Home Decor'),
(6, 'Home Appliances');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'iPhone 5s', 15000, 'iphone 5s', 'iphone mobile.jpg', 'mobile iphone apple'),
(2, 1, 3, 'Samsung Duos', 5000, 'Samsung Dous 2 sgh ', 'samsung mobile.jpg', 'Samsung mobile electronics'),
(3, 1, 3, 'iPad', 30000, 'ipad apple brand', 'ipad.jpg', 'apple ipad tablet'),
(4, 1, 3, 'iPhone 7plus', 32000, 'Apple iPhone ', 'iphone.jpg', 'iphone apple mobile'),
(5, 1, 2, 'iPad 2', 10000, 'samsung ipad', 'ipad 2.jpg', 'ipad tablet samsung'),
(6, 1, 1, 'Hp Laptop r series', 35000, 'Hp Red and Black combination Laptop', 'k2-_ed8b8f8d-e696-4a96-8ce9-d78246f10ed1.v1.jpg-bc204bdaebb10e709a997a8bb4518156dfa6e3ed-optim-450x450.jpg', 'hp laptop '),
(7, 1, 1, 'Laptop Pavillion', 50000, 'Laptop Hp Pavillion', '12039452_525963140912391_6353341236808813360_n.png', 'Laptop Hp Pavillion'),
(8, 1, 4, 'Sony', 40000, 'Sony Mobile', 'sony mobile.jpg', 'sony mobile'),
(9, 1, 3, 'iPhone New', 12000, 'iphone', 'white iphone.png', 'iphone apple mobile'),
(10, 2, 6, 'Denim Jacket', 1000, 'red dress for girls', 'women_jacket.png', 'women denim jacket'),
(11, 2, 6, 'Gown', 1200, 'Blue dress', 'women_gown.png', 'Women Gown'),
(12, 2, 6, 'Solid Pullover', 1500, 'ladies casual summer two colors pleted', 'women_pullover.png', 'women pullover'),
(13, 2, 6, 'Kurta', 1200, 'girls dress', 'women_kurta.jfif', 'women kurta'),
(14, 2, 6, 'Jeans', 1400, 'girl dress', 'women_jeans.jfif', 'women jeans'),
(15, 2, 6, 'Jumpsuit', 1500, 'girl dress', 'women_jumpsuit.jfif', 'women jumpsuit'),
(16, 3, 6, 'Sweater', 600, '2012-Winter-Sweater-for-Men-for-better-outlook', 'men_sweater.jfif', 'men sweater'),
(17, 3, 6, 'Formal Shirt', 1000, 'gents formal look', 'men_formal.jfif', 'men shirt'),
(19, 3, 6, 'Jacket', 3000, 'ad', 'men_jacket.jfif', 'men jacket'),
(20, 3, 6, 'Chinos', 1600, 'jg', 'men_chinos.jfif', 'men pants'),
(21, 3, 6, 'T-shirt', 800, 'ssds', 'men_tshirt.jfif', 'men tshirt '),
(22, 4, 6, 'Boys Yellow T-shirt ', 299, 'yello t shirt with pant', '1.0x0.jpg', 'kids tshirt'),
(23, 4, 6, 'Girls Party Gown', 1900, 'sadsf', 'kids_gown.jfif', 'kids gown'),
(24, 4, 6, 'Boys Denim Jacket', 899, 'g', 'kids_jacket.jfif', 'kids jacket'),
(25, 4, 6, 'Girls Denim Shorts', 750, 'as', 'kids_shorts.jfif', 'kids shorts'),
(26, 4, 6, 'White Frock', 800, 'nbk', 'kids_frock.jfif', 'kids frock'),
(27, 4, 6, 'Boys Shirt', 499, 'sd', 'kids_shirt.jfif', 'kids shirt'),
(32, 5, 0, 'Wall Shelf', 2500, 'wall shelf', 'furniture-book-shelf-250x250.jpg', 'shelf'),
(33, 6, 2, 'Refrigerator', 35000, 'Refrigerator', 'CT_WM_BTS-BTC-AppliancesHome_20150723.jpg', 'refrigerator samsung'),
(34, 6, 4, 'Emergency Light', 1000, 'Emergency Light', 'emergency light.JPG', 'light'),
(35, 6, 0, 'Vaccum Cleaner', 6000, 'Vaccum Cleaner', 'vaccum.jfif', 'Vaccum Cleaner'),
(36, 6, 5, 'Iron', 1500, 'gj', 'iron.JPG', 'Iron box'),
(37, 6, 5, 'LED TV', 20000, 'LED TV', 'led.jfif', 'led tv lg'),
(38, 6, 4, 'Microwave Oven', 3500, 'Microwave Oven', 'microwave.jfif', 'Microwave Oven'),
(39, 6, 5, 'Mixer Grinder', 2500, 'Mixer Grinder', 'singer-mixer-grinder-mg-46-medium_4bfa018096c25dec7ba0af40662856ef.jpg', 'Mixer Grinder'),
(40, 2, 6, 'Saree', 3000, 'Formal girls dress', 'women_saree.jfif', 'women saree'),
(45, 1, 2, 'Samsung Galaxy Note 3', 10000, '0', 'samsung_galaxy_note3_note3neo.JPG', 'samsung mobile galaxy Note 3 neo '),
(46, 1, 2, 'Samsung M31', 13000, '', 'samsung_m31.jfif', 'samsung mobile m31'),
(47, 3, 6, 'Hodded Sweatshirt', 1100, 'men hodded sweatshirt', 'men_hoddy.jfif', 'men hodded sweatshirt'),
(48, 3, 6, 'Jeans', 900, 'men jeans', 'men_jeans.jfif', 'men jeans'),
(49, 2, 6, 'Solid Top with Culottes', 899, 'solid top with culottes', 'women_top.jfif', 'women solid top with culottes'),
(50, 5, 0, 'Cermaic Windchime', 400, 'Cermaic Windchime', 'wind.jfif', 'Cermaic Windchime'),
(51, 5, 0, 'Decorative Tea Light Candle Holder', 299, 'Decorative Tea Light Candle Holder', 'candle.jfif', 'Decorative Tea Light Candle Holder'),
(52, 5, 0, '3D Acrylic Decorative Mirror', 349, '3D Acrylic Decorative Mirror', 'mirror.jfif', '3D Acrylic Decorative Mirror'),
(53, 5, 0, 'Cotton Swing', 1100, 'cotton swing', 'swing.jfif', 'cotton swing'),
(54, 5, 0, 'Analogue Wall Clock', 674, 'analogue wall clock', 'clock.jfif', 'analogue wall clock'),
(55, 4, 6, 'Jumpsuit', 1099, 'jumpsuit', 'kids_jumpsuit.jfif', 'kids jumpsuit'),
(56, 4, 6, 'Night Suit', 426, 'night suit', 'kids_night.jfif', 'kids night suit');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Rizwan', 'Khan', 'rizwankhan.august16@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asansol'),
(2, 'Rizwan', 'Khan', 'rizwankhan.august16@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asa'),
(3, 'Shashank', 'S', 'shashankshivu007@gmail.com', '7a70192812a5724e33eef61738c234d7', '8529637410', 'Bengaluru', 'Mysuru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
