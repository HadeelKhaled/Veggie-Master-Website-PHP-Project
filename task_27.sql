-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2023 at 08:37 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_27`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) NOT NULL,
  `image` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(500) NOT NULL,
  `link` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `image`, `title`, `description`, `link`) VALUES
(1, 'about-img.png', 'We Are Feane\n', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All\r\n\r\n', 'about.php');

-- --------------------------------------------------------

--
-- Table structure for table `add_to_cart`
--

CREATE TABLE `add_to_cart` (
  `id` int(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `recipe_name` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_to_cart`
--

INSERT INTO `add_to_cart` (`id`, `image`, `recipe_name`, `price`) VALUES
(1, 'f2.png', 'Delicious Burger', '15'),
(2, 'f5.png', 'French Fries', '10'),
(3, 'f7.png', 'Tasty Burger', '12\r\n'),
(4, 'f8.png', 'Tasty Burger', '14');

-- --------------------------------------------------------

--
-- Table structure for table `book_a_table`
--

CREATE TABLE `book_a_table` (
  `id` int(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone_number` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `number_person` varchar(250) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_a_table`
--

INSERT INTO `book_a_table` (`id`, `name`, `phone_number`, `email`, `number_person`, `date`) VALUES
(4, 'hadeel', '0789999999', 'harousan@yahoo.com', '7', '2023-01-14');

-- --------------------------------------------------------

--
-- Table structure for table `burger_menu`
--

CREATE TABLE `burger_menu` (
  `id` int(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `burger_menu`
--

INSERT INTO `burger_menu` (`id`, `image`, `title`, `description`, `price`) VALUES
(1, 'f2.png', 'Delicious Burger\r\n', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque\r\n\r\n', '$15'),
(2, 'f7.png', 'Tasty Burger\r\n', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque\r\n', '$12'),
(3, 'f8.png', 'Tasty Burger\r\n', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque\r\n', '$14');

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `id` int(100) NOT NULL,
  `phone_number` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`id`, `phone_number`, `email`, `address`) VALUES
(1, '+962-792-848-931 ', 'Clevermindpob@gmail.com', 'Amman-Jordan -King Hussein Business Park ZINC -23');

-- --------------------------------------------------------

--
-- Table structure for table `cotant_gpsmap`
--

CREATE TABLE `cotant_gpsmap` (
  `id` int(10) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cotant_gpsmap`
--

INSERT INTO `cotant_gpsmap` (`id`, `name`) VALUES
(1, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3384.6043267242644!2d35.83504398506893!3d31.971629331919488!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x151ca17ed1b59841%3A0x1796ffa3c16dd92!2z2YXZhti12Kkg2LLZitmGINmE2YTYpdio2K_Yp9i5!5e0!3m2!1sar!2sjo!4v1672616277308!5m2!1sar!2sjo');

-- --------------------------------------------------------

--
-- Table structure for table `filter`
--

CREATE TABLE `filter` (
  `id` int(250) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filter`
--

INSERT INTO `filter` (`id`, `name`) VALUES
(1, 'burger'),
(2, 'pizza'),
(3, 'pasta'),
(4, 'fries');

-- --------------------------------------------------------

--
-- Table structure for table `footer_socailmedia`
--

CREATE TABLE `footer_socailmedia` (
  `id` int(100) NOT NULL,
  `facebook` varchar(250) NOT NULL,
  `instagram` varchar(250) NOT NULL,
  `twitter` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footer_socailmedia`
--

INSERT INTO `footer_socailmedia` (`id`, `facebook`, `instagram`, `twitter`) VALUES
(1, 'https://www.facebook.com/ClevermindICT/\r\n', 'https://www.instagram.com/clevermindpob/\r\n', 'https://twitter.com/search?q=cleverMindICT\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `fries_menu`
--

CREATE TABLE `fries_menu` (
  `id` int(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fries_menu`
--

INSERT INTO `fries_menu` (`id`, `image`, `title`, `description`, `price`) VALUES
(1, 'f5.png', 'French Fries\r\n', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque\r\n\r\n', '$10');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id` int(100) NOT NULL,
  `website_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id`, `website_name`) VALUES
(1, 'Feane');

-- --------------------------------------------------------

--
-- Table structure for table `navbar`
--

CREATE TABLE `navbar` (
  `id` int(100) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `navbar`
--

INSERT INTO `navbar` (`id`, `title`, `link`) VALUES
(1, 'Home', 'index.php'),
(2, 'Menu', 'menu.php'),
(3, 'About', 'about.php'),
(4, 'Book Table', 'book.php');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `offers` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `image`, `title`, `offers`) VALUES
(1, 'o1.jpg', 'Tasty Thursdays', '20%'),
(2, 'o2.jpg', 'Pizza Days', '15% ');

-- --------------------------------------------------------

--
-- Table structure for table `opening_hours`
--

CREATE TABLE `opening_hours` (
  `id` int(100) NOT NULL,
  `time` varchar(250) NOT NULL,
  `day` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `opening_hours`
--

INSERT INTO `opening_hours` (`id`, `time`, `day`) VALUES
(1, '10.00 Am -10.00 Pm\r\n\r\n', 'Everyday\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `pasta_menu`
--

CREATE TABLE `pasta_menu` (
  `id` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasta_menu`
--

INSERT INTO `pasta_menu` (`id`, `image`, `title`, `description`, `price`) VALUES
(1, 'f4.png', 'Delicious Pasta\r\n', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', '$18'),
(2, 'f9.png', 'Delicious Pasta\r\n', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque\n\n', '$12');

-- --------------------------------------------------------

--
-- Table structure for table `pizza_menu`
--

CREATE TABLE `pizza_menu` (
  `id` int(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pizza_menu`
--

INSERT INTO `pizza_menu` (`id`, `image`, `title`, `description`, `price`) VALUES
(1, 'f1.png', 'Delicious Pizza\r\n', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque\n\n', '$20'),
(2, 'f3.png', 'Delicious Pizza\r\n', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque\n\n', '$17'),
(4, 'f6.png', 'Delicious Pizza', 'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', '$16');

-- --------------------------------------------------------

--
-- Table structure for table `says_our_customers`
--

CREATE TABLE `says_our_customers` (
  `id` int(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `says_our_customers`
--

INSERT INTO `says_our_customers` (`id`, `image`, `name`, `description`) VALUES
(1, 'client1.jpg', 'Moana Michell', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'),
(2, 'client2.jpg', 'Mike Hamell', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam');

-- --------------------------------------------------------

--
-- Table structure for table `slider_background`
--

CREATE TABLE `slider_background` (
  `id` int(100) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider_background`
--

INSERT INTO `slider_background` (`id`, `image`) VALUES
(1, 'hero-bg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider_one`
--

CREATE TABLE `slider_one` (
  `id` int(100) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider_one`
--

INSERT INTO `slider_one` (`id`, `title`, `description`) VALUES
(1, 'Fast Food Restaurant\r\n', 'Doloremque, itaque aperiam facilis rerum, commodi, temporibus sapiente ad mollitia laborum quam quisquam esse error unde. Tempora ex doloremque, labore, sunt repellat dolore, iste magni quos nihil ducimus libero ipsam.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `slider_three`
--

CREATE TABLE `slider_three` (
  `id` int(100) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider_three`
--

INSERT INTO `slider_three` (`id`, `title`, `description`) VALUES
(1, 'Fast Food Restaurant\r\n', 'Doloremque, itaque aperiam facilis rerum, commodi, temporibus sapiente ad mollitia laborum quam quisquam esse error unde. Tempora ex doloremque, labore, sunt repellat dolore, iste magni quos nihil ducimus libero ipsam.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `slider_two`
--

CREATE TABLE `slider_two` (
  `id` int(100) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider_two`
--

INSERT INTO `slider_two` (`id`, `title`, `description`) VALUES
(1, 'Fast Food Restaurant\r\n', 'Doloremque, itaque aperiam facilis rerum, commodi, temporibus sapiente ad mollitia laborum quam quisquam esse error unde. Tempora ex doloremque, labore, sunt repellat dolore, iste magni quos nihil ducimus libero ipsam.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `location` varchar(250) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `location`, `phone_number`, `email`, `password`) VALUES
(6, 'hadeel', 'irbid', '0789999999', 'harousan@yahoo.com', '6f98611adcff431f2982ced046d15b7d');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_a_table`
--
ALTER TABLE `book_a_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `burger_menu`
--
ALTER TABLE `burger_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cotant_gpsmap`
--
ALTER TABLE `cotant_gpsmap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_socailmedia`
--
ALTER TABLE `footer_socailmedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fries_menu`
--
ALTER TABLE `fries_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navbar`
--
ALTER TABLE `navbar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opening_hours`
--
ALTER TABLE `opening_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasta_menu`
--
ALTER TABLE `pasta_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pizza_menu`
--
ALTER TABLE `pizza_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `says_our_customers`
--
ALTER TABLE `says_our_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_background`
--
ALTER TABLE `slider_background`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_one`
--
ALTER TABLE `slider_one`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_three`
--
ALTER TABLE `slider_three`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_two`
--
ALTER TABLE `slider_two`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book_a_table`
--
ALTER TABLE `book_a_table`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `burger_menu`
--
ALTER TABLE `burger_menu`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cotant_gpsmap`
--
ALTER TABLE `cotant_gpsmap`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `filter`
--
ALTER TABLE `filter`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `footer_socailmedia`
--
ALTER TABLE `footer_socailmedia`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fries_menu`
--
ALTER TABLE `fries_menu`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `navbar`
--
ALTER TABLE `navbar`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `opening_hours`
--
ALTER TABLE `opening_hours`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pasta_menu`
--
ALTER TABLE `pasta_menu`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pizza_menu`
--
ALTER TABLE `pizza_menu`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `says_our_customers`
--
ALTER TABLE `says_our_customers`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slider_background`
--
ALTER TABLE `slider_background`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider_one`
--
ALTER TABLE `slider_one`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider_three`
--
ALTER TABLE `slider_three`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider_two`
--
ALTER TABLE `slider_two`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
