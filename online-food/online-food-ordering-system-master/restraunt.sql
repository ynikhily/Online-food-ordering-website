-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2017 at 09:04 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restraunt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_name` varchar(20) DEFAULT NULL,
  `uname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brm-t-nagar`
--

CREATE TABLE `brm-t-nagar` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brm-t-nagar`
--

INSERT INTO `brm-t-nagar` (`i_id`, `item_name`, `price`) VALUES
(701, 'Chips Cheese Dipping', 215),
(702, 'Amritsari Paneer Tikka', 230),
(701, 'Chips Cheese Dipping', 215),
(702, 'Amritsari Paneer Tikka', 230),
(703, 'Mushroom Fry', 195),
(704, 'Guntur Chilli Gobi', 185),
(705, 'Paneer Burji Afghani', 205),
(706, 'Cream of Veg Soup', 110),
(707, 'Al Arabiata', 245),
(708, 'Spaghetti Neopolitan', 255),
(709, 'Cheese Enchildas', 230),
(710, 'Vegetable Lasagne', 240);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `cname` varchar(20) DEFAULT NULL,
  `comp` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cname` varchar(20) DEFAULT NULL,
  `uname` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(20) NOT NULL,
  `house_no` varchar(20) DEFAULT NULL,
  `street` varchar(20) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cname`, `uname`, `email`, `house_no`, `street`, `area`, `mobile`) VALUES
('Lakshmi', 'lakshmi', 'lux@.', '123', 'gfygcg', 'kelambakkam', '7550171160'),
('Nikhill', 'pingu17', 'nikhil.yadav@gmail.c', '23', 'GB. ROAD', 'DELHI', '123457'),
('shishir', 'shishir11', 'shishir@gmail.com', '3', 'xyz', 'sodala', '3421234'),
('shivansh', 'shivansh18', 'ass@.', '123', '12', '122', '1212');

-- --------------------------------------------------------

--
-- Table structure for table `dominos-cp`
--

CREATE TABLE `dominos-cp` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `price_r` int(20) DEFAULT NULL,
  `price_m` int(11) NOT NULL,
  `price_l` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dominos-cp`
--

INSERT INTO `dominos-cp` (`i_id`, `item_name`, `price_r`, `price_m`, `price_l`) VALUES
(101, 'Margherita', 99, 195, 395),
(102, 'Chicken Golden Delight', 230, 440, 665),
(103, 'Mexican Green Wave', 195, 365, 545),
(104, 'Farmhouse', 195, 365, 545),
(105, 'Peppe paneer', 195, 365, 545),
(106, 'Chicken Dominator', 275, 525, 785),
(107, 'Delux Veggie', 230, 440, 655);

-- --------------------------------------------------------

--
-- Table structure for table `dominos-kelambakkam`
--

CREATE TABLE `dominos-kelambakkam` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `price_r` int(20) DEFAULT NULL,
  `price_m` int(11) NOT NULL,
  `price_l` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dominos-kelambakkam`
--

INSERT INTO `dominos-kelambakkam` (`i_id`, `item_name`, `price_r`, `price_m`, `price_l`) VALUES
(101, 'Margherita', 99, 195, 395),
(102, 'Chicken Golden Delight', 230, 440, 665),
(103, 'Mexican Green Wave', 195, 365, 545),
(104, 'Farmhouse', 195, 365, 545),
(105, 'Peppe paneer', 195, 365, 545),
(106, 'Chicken Dominator', 275, 525, 785),
(107, 'Delux Veggie', 230, 440, 655);

-- --------------------------------------------------------

--
-- Table structure for table `dominos-mansarovar`
--

CREATE TABLE `dominos-mansarovar` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `price_r` int(20) DEFAULT NULL,
  `price_m` int(11) NOT NULL,
  `price_l` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dominos-mansarovar`
--

INSERT INTO `dominos-mansarovar` (`i_id`, `item_name`, `price_r`, `price_m`, `price_l`) VALUES
(101, 'Margherita', 99, 195, 395),
(102, 'Chicken Golden Delight', 230, 440, 665),
(103, 'Mexican Green Wave', 195, 365, 545),
(104, 'Farmhouse', 195, 365, 545),
(105, 'Peppe paneer', 195, 365, 545),
(106, 'Chicken Dominator', 275, 525, 785),
(107, 'Delux Veggie', 230, 440, 655);

-- --------------------------------------------------------

--
-- Table structure for table `dominos-vidhyadhar nagar`
--

CREATE TABLE `dominos-vidhyadhar nagar` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `price_r` int(20) DEFAULT NULL,
  `price_m` int(11) NOT NULL,
  `price_l` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dominos-vidhyadhar nagar`
--

INSERT INTO `dominos-vidhyadhar nagar` (`i_id`, `item_name`, `price_r`, `price_m`, `price_l`) VALUES
(101, 'Margherita', 99, 195, 395),
(102, 'Chicken Golden Delight', 230, 440, 665),
(103, 'Mexican Green Wave', 195, 365, 545),
(104, 'Farmhouse', 195, 365, 545),
(105, 'Peppe paneer', 195, 365, 545),
(106, 'Chicken Dominator', 275, 525, 785),
(107, 'Delux Veggie', 230, 440, 655);

-- --------------------------------------------------------

--
-- Table structure for table `flavours of chennai - malviya nagar`
--

CREATE TABLE `flavours of chennai - malviya nagar` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flavours of chennai - malviya nagar`
--

INSERT INTO `flavours of chennai - malviya nagar` (`i_id`, `item_name`, `price`) VALUES
(801, 'Mysore Paneer Dosai', 165),
(802, 'Mysore Rava Paneer Dosai', 175),
(801, 'Mysore Paneer Dosai', 165),
(802, 'Mysore Rava Paneer Dosai', 175),
(803, 'South Indian Thali', 160),
(804, 'Paneer Utthappam', 160),
(805, 'Appam with Khurma', 105),
(806, 'Tamarind Rice (Puliodharayi)', 175),
(807, 'Veg Biryani', 130),
(808, 'Chennai Express', 110),
(809, 'Rava Kesari', 70),
(810, 'Lassi Sweet-Salt', 70);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_menu`
--

CREATE TABLE `hotel_menu` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(20) DEFAULT NULL,
  `price` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kfc-cp`
--

CREATE TABLE `kfc-cp` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kfc-cp`
--

INSERT INTO `kfc-cp` (`i_id`, `item_name`, `price`) VALUES
(201, 'Friendship Bucket Meal', 499),
(201, 'Friendship Bucket Meal', 499),
(202, 'Chick''N Fried Roll', 99),
(203, 'Dips Bucket - 12 pcs', 469),
(202, 'Chick''N Fried Roll', 99),
(203, 'Dips Bucket - 12 pcs', 469),
(204, '6 Pc Smoky Grilled', 445),
(205, 'Duo Bucket Meal', 409),
(206, 'Chicken Rice Bowl', 105),
(207, '5 in 1 Zinger Box', 159),
(208, 'Chicken Rockin', 95),
(209, '4pc Hot Wings', 109),
(210, '3 Pc Boneless Strips', 109),
(211, 'Alphonso Burst', 159),
(212, 'Strawberry Storm', 105),
(213, 'Choco Tiramisu', 109);

-- --------------------------------------------------------

--
-- Table structure for table `kfc-tambaram`
--

CREATE TABLE `kfc-tambaram` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kfc-tambaram`
--

INSERT INTO `kfc-tambaram` (`i_id`, `item_name`, `price`) VALUES
(201, 'Friendship Bucket Meal', 499),
(201, 'Friendship Bucket Meal', 499),
(202, 'Chick''N Fried Roll', 99),
(203, 'Dips Bucket - 12 pcs', 469),
(202, 'Chick''N Fried Roll', 99),
(203, 'Dips Bucket - 12 pcs', 469),
(204, '6 Pc Smoky Grilled', 445),
(205, 'Duo Bucket Meal', 409),
(206, 'Chicken Rice Bowl', 105),
(207, '5 in 1 Zinger Box', 159),
(208, 'Chicken Rockin', 95),
(209, '4pc Hot Wings', 109),
(210, '3 Pc Boneless Strips', 109),
(211, 'Alphonso Burst', 159),
(212, 'Strawberry Storm', 105),
(213, 'Choco Tiramisu', 109);

-- --------------------------------------------------------

--
-- Table structure for table `krips-vasant vihar`
--

CREATE TABLE `krips-vasant vihar` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `price_h` int(20) NOT NULL,
  `price_f` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `krips-vasant vihar`
--

INSERT INTO `krips-vasant vihar` (`i_id`, `item_name`, `price_h`, `price_f`) VALUES
(601, 'Virgin Bloody Merry', 60, 120),
(602, 'Liquid Fruit Chaat', 70, 125),
(601, 'Virgin Bloody Merry', 60, 120),
(602, 'Liquid Fruit Chaat', 70, 125),
(603, 'Special Oreo Shake', 50, 90),
(604, 'Cold Coffee with Ice Cream', 70, 120),
(605, 'Afghani Fish Tikka', 400, 795),
(606, 'Chili Chicken', 225, 395),
(607, 'Tandoori Khumb-Mushroom', 110, 210),
(608, 'Chicken Seekh Kebabs', 140, 240),
(609, 'Galouti Kebab', 240, 340),
(610, 'Mutton Seekh Kebabs', 270, 340);

-- --------------------------------------------------------

--
-- Table structure for table `mc donalds-kelambakkam`
--

CREATE TABLE `mc donalds-kelambakkam` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mc donalds-kelambakkam`
--

INSERT INTO `mc donalds-kelambakkam` (`i_id`, `item_name`, `price`) VALUES
(301, 'Maharaja Mac - Chicken', 308),
(302, 'Big Spicy Wrap - Chicken', 282),
(301, 'Maharaja Mac - Chicken', 308),
(302, 'Big Spicy Wrap - Chicken', 282),
(303, 'Mc Chicken', 206),
(304, 'Mc Veggie', 197),
(305, 'Chicken Kebab Burger', 181),
(306, 'Chicken Mc Nuggets - 9 pcs', 185),
(307, 'Mc Egg', 75),
(308, 'Mc Aloo Tikki', 41),
(309, 'Mc Spicy Chicken', 254),
(310, 'Mc Spicy Paneer', 250),
(311, 'Veg Mc Puffin', 81),
(312, 'Black Forest McFlurry', 99);

-- --------------------------------------------------------

--
-- Table structure for table `mc donalds-vaishali nagar`
--

CREATE TABLE `mc donalds-vaishali nagar` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mc donalds-vaishali nagar`
--

INSERT INTO `mc donalds-vaishali nagar` (`i_id`, `item_name`, `price`) VALUES
(301, 'Maharaja Mac - Chicken', 308),
(302, 'Big Spicy Wrap - Chicken', 282),
(301, 'Maharaja Mac - Chicken', 308),
(302, 'Big Spicy Wrap - Chicken', 282),
(303, 'Mc Chicken', 206),
(304, 'Mc Veggie', 197),
(305, 'Chicken Kebab Burger', 181),
(306, 'Chicken Mc Nuggets - 9 pcs', 185),
(307, 'Mc Egg', 75),
(308, 'Mc Aloo Tikki', 41),
(309, 'Mc Spicy Chicken', 254),
(310, 'Mc Spicy Paneer', 250),
(311, 'Veg Mc Puffin', 81),
(312, 'Black Forest McFlurry', 99);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `uname` varchar(20) NOT NULL,
  `item` varchar(50) NOT NULL,
  `r_id` varchar(10) NOT NULL,
  `price` int(10) NOT NULL,
  `size` varchar(50) NOT NULL,
  `quantity` int(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`uname`, `item`, `r_id`, `price`, `size`, `quantity`, `address`, `status`) VALUES
('shivansh18', 'Margherita', '<br /><b>N', 99, 'R', 2, 'sad', 1),
('shivansh18', 'Chicken Golden Delight', '<br /><b>N', 230, 'R', 2, '', 0),
('shivansh18', 'Mexican Green Wave', '<br /><b>N', 195, 'M', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pizza hut-malviya nagar`
--

CREATE TABLE `pizza hut-malviya nagar` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `price_r` int(20) DEFAULT NULL,
  `price_m` int(11) NOT NULL,
  `price_l` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pizza hut-malviya nagar`
--

INSERT INTO `pizza hut-malviya nagar` (`i_id`, `item_name`, `price_r`, `price_m`, `price_l`) VALUES
(401, 'Triple Chicken Feast', 310, 570, 750),
(402, 'Chicken Supreme', 310, 570, 750),
(403, 'Chicken Tikka', 290, 490, 750),
(404, 'Chicken Sausage', 170, 350, 480),
(405, 'Chicken Margherita', 130, 250, 380),
(406, 'Chicken Pepperoni - Cracker Thin', 150, 349, 499),
(407, 'Chickeroni', 290, 490, 650),
(408, 'Cheese Garlic Bread', 59, 109, 139),
(409, 'Spanish Non Veg Pasta', 89, 149, 250),
(410, 'Choco Truffle Cake', 49, 79, 129),
(411, 'Spicy Baked Chicken Wings', 99, 169, 229),
(412, 'Cafe Cuba', 29, 49, 75);

-- --------------------------------------------------------

--
-- Table structure for table `pizza hut-tambaram`
--

CREATE TABLE `pizza hut-tambaram` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `price_r` int(20) DEFAULT NULL,
  `price_m` int(11) NOT NULL,
  `price_l` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pizza hut-tambaram`
--

INSERT INTO `pizza hut-tambaram` (`i_id`, `item_name`, `price_r`, `price_m`, `price_l`) VALUES
(401, 'Triple Chicken Feast', 310, 570, 750),
(402, 'Chicken Supreme', 310, 570, 750),
(403, 'Chicken Tikka', 290, 490, 750),
(404, 'Chicken Sausage', 170, 350, 480),
(405, 'Chicken Margherita', 130, 250, 380),
(406, 'Chicken Pepperoni - Cracker Thin', 150, 349, 499),
(407, 'Chickeroni', 290, 490, 650),
(408, 'Cheese Garlic Bread', 59, 109, 139),
(409, 'Spanish Non Veg Pasta', 89, 149, 250),
(410, 'Choco Truffle Cake', 49, 79, 129),
(411, 'Spicy Baked Chicken Wings', 99, 169, 229),
(412, 'Cafe Cuba', 29, 49, 75);

-- --------------------------------------------------------

--
-- Table structure for table `pizza hut-vaishali nagar`
--

CREATE TABLE `pizza hut-vaishali nagar` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `price_r` int(20) DEFAULT NULL,
  `price_m` int(11) NOT NULL,
  `price_l` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pizza hut-vaishali nagar`
--

INSERT INTO `pizza hut-vaishali nagar` (`i_id`, `item_name`, `price_r`, `price_m`, `price_l`) VALUES
(401, 'Triple Chicken Feast', 310, 570, 750),
(402, 'Chicken Supreme', 310, 570, 750),
(403, 'Chicken Tikka', 290, 490, 750),
(404, 'Chicken Sausage', 170, 350, 480),
(405, 'Chicken Margherita', 130, 250, 380),
(406, 'Chicken Pepperoni - Cracker Thin', 150, 349, 499),
(407, 'Chickeroni', 290, 490, 650),
(408, 'Cheese Garlic Bread', 59, 109, 139),
(409, 'Spanish Non Veg Pasta', 89, 149, 250),
(410, 'Choco Truffle Cake', 49, 79, 129),
(411, 'Spicy Baked Chicken Wings', 99, 169, 229),
(412, 'Cafe Cuba', 29, 49, 75);

-- --------------------------------------------------------

--
-- Table structure for table `punjabi grill-mansarovar`
--

CREATE TABLE `punjabi grill-mansarovar` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `punjabi grill-mansarovar`
--

INSERT INTO `punjabi grill-mansarovar` (`i_id`, `item_name`, `price`) VALUES
(901, 'Valai Ilai Meen Veruval', 695),
(902, 'Tawa Murgh Kali Mirch', 475),
(901, 'Valai Ilai Meen Veruval', 695),
(902, 'Tawa Murgh Kali Mirch', 475),
(903, 'Non-Vegetarian Sampler', 595),
(904, 'Murgh Sirka Pyaz', 425),
(905, 'Mutton Milagu Masala', 495),
(906, 'Makai Paalak Bhurji', 395),
(907, 'Avial', 375),
(908, 'Turmeric Green Iced Tea', 245),
(909, 'Chandni Chowk ki Papdi Chaat', 125),
(910, 'Mutton Yakhni Shorba', 175);

-- --------------------------------------------------------

--
-- Table structure for table `rasoi-vidhyadhar nagar`
--

CREATE TABLE `rasoi-vidhyadhar nagar` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rasoi-vidhyadhar nagar`
--

INSERT INTO `rasoi-vidhyadhar nagar` (`i_id`, `item_name`, `price`) VALUES
(1001, 'Mutton Angara', 415),
(1002, 'Mutton Burra Kebab', 415),
(1003, 'Shakat Seekh Kabab', 415),
(1004, 'Fish Koliwada', 375),
(1005, 'Murg Malai Tikka', 349),
(1006, 'Pahari Fish Tikka', 369),
(1007, 'Tandoori Jalpari', 499),
(1008, 'Hyderabadi Biryani', 500),
(1009, 'Mughal Nauj Gosht Biryani', 415),
(1010, 'Ande ka Halwa', 339);

-- --------------------------------------------------------

--
-- Table structure for table `restraunt`
--

CREATE TABLE `restraunt` (
  `r_id` int(10) NOT NULL,
  `r_name` varchar(100) DEFAULT NULL,
  `Contact no.` bigint(10) DEFAULT NULL,
  `r_street` varchar(20) DEFAULT NULL,
  `r_area` varchar(20) DEFAULT NULL,
  `r_city` varchar(50) DEFAULT NULL,
  `rating` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restraunt`
--

INSERT INTO `restraunt` (`r_id`, `r_name`, `Contact no.`, `r_street`, `r_area`, `r_city`, `rating`) VALUES
(101, 'Dominos', 1234567890, '23', 'Kelambakkam', 'Chennai', '4/5'),
(102, 'Mc Donalds', 9876543210, 'omr road', 'Kelambakkam', 'Chennai', '4.5/5'),
(111, 'KFC', 9876543211, '45', 'Tambaram', 'Chennai', '4/5'),
(112, 'Pizza Hut', 5432167890, '78', 'Tambaram', 'Chennai', '3.5/5'),
(121, 'Sangeetha Veg Restaurant', 3214567890, '2', 'T-Nagar', 'Chennai', '3/5'),
(122, 'BR Mathsya', 2134567890, '1', 'T-Nagar', 'Chennai', '3.5/5'),
(201, 'Dominos', 9656565656, '5', 'Vidhyadhar Nagar', 'Jaipur', '4/5'),
(202, 'Rasoi', 9623232323, '34', 'Vidhyadhar Nagar', 'Jaipur', '3.5/5'),
(211, 'Mc Donalds', 8456565656, '69', 'Vaishali Nagar', 'Jaipur', '4/5'),
(212, 'Pizza Hut', 8346565656, '29', 'Vaishali Nagar', 'Jaipur', '3.7/5'),
(231, 'Dominos', 9669696969, '96', 'Mansarovar', 'Jaipur', '4/5'),
(232, 'Punjabi Grill', 9833333333, '31', 'Mansarovar', 'Jaipur', '4.3/5'),
(301, 'Yo! China', 8965432165, '46', 'Vasant Vihar', 'Delhi', '3.1/5'),
(302, 'Krips', 8000010000, '46', 'Vasant Vihar', 'Delhi', '4/5'),
(311, 'Pizza Hut', 8222282222, '17', 'Malviya Nagar', 'Delhi', '3.7'),
(312, 'Flavours of Chennai', 9888898888, '6', 'Malviya Nagar', 'Delhi', '4.1/5'),
(321, 'KFC', 8111111111, '17', 'CP', 'Delhi', '4.4'),
(322, 'Dominos', 9555565555, '6', 'CP', 'Delhi', '4.2/5');

-- --------------------------------------------------------

--
-- Table structure for table `sangeetha veg restaurant-t-nagar`
--

CREATE TABLE `sangeetha veg restaurant-t-nagar` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `price_h` int(20) NOT NULL,
  `price_f` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sangeetha veg restaurant-t-nagar`
--

INSERT INTO `sangeetha veg restaurant-t-nagar` (`i_id`, `item_name`, `price_h`, `price_f`) VALUES
(501, 'Rasogulla', 45, 90),
(502, 'Ras Malayi', 55, 100),
(501, 'Rasogulla', 45, 90),
(502, 'Ras Malayi', 55, 100),
(503, 'Badam Halwa', 76, 140),
(504, 'Sangeetha Special Lassi', 65, 115),
(505, 'Mango Milk Shake', 80, 150),
(506, 'Dry Fruit Mango Milk Shake', 90, 176),
(507, 'Arabian Knight Milkshake', 110, 200),
(508, 'Mangusthan Juice', 60, 120),
(509, 'Curd Rice', 60, 100),
(510, 'Special Dry Fruit Mastani Falooda', 200, 270);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `type` int(5) NOT NULL,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`type`, `username`, `password`) VALUES
(2, 'aaaaaaa', '123456789'),
(2, 'aaaaaaaa', '123456789'),
(0, 'admin', 'admin'),
(2, 'avcavc12', '123'),
(2, 'lakshmi', '123'),
(2, 'pingu17', '1q3'),
(2, 'shaktidas', '123456789'),
(2, 'shaktidash', '123456789'),
(2, 'shishir11', '123456789'),
(2, 'shivansh18', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `yo! china-vasant vihar`
--

CREATE TABLE `yo! china-vasant vihar` (
  `i_id` int(10) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `price_h` int(20) NOT NULL,
  `price_f` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yo! china-vasant vihar`
--

INSERT INTO `yo! china-vasant vihar` (`i_id`, `item_name`, `price_h`, `price_f`) VALUES
(501, 'Basil and Chicken Meat Ball Soup', 90, 150),
(502, 'Hanoi Canh Chua Ca', 100, 170),
(503, 'Vietnamese Corn and Asparagus Soup', 70, 130),
(504, 'Veg Beijing Boat', 100, 190),
(505, 'Shanghai Chicken Dimsum', 180, 250),
(506, 'Tom Yum Koong', 80, 140),
(507, 'Soong Tong Chao Suan', 140, 250),
(508, 'Javanese Soto Ayam Soup', 100, 150),
(509, 'Duck Nam Prik Pao', 200, 330),
(510, 'Hunan Prawn', 240, 350),
(511, 'Konjee Crispy Lamb', 220, 400),
(512, 'Nasi Goreng', 290, 440);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`uname`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `dominos-cp`
--
ALTER TABLE `dominos-cp`
  ADD UNIQUE KEY `i_id` (`i_id`),
  ADD UNIQUE KEY `i_id_2` (`i_id`);

--
-- Indexes for table `dominos-kelambakkam`
--
ALTER TABLE `dominos-kelambakkam`
  ADD UNIQUE KEY `i_id` (`i_id`),
  ADD UNIQUE KEY `i_id_2` (`i_id`);

--
-- Indexes for table `dominos-mansarovar`
--
ALTER TABLE `dominos-mansarovar`
  ADD UNIQUE KEY `i_id` (`i_id`),
  ADD UNIQUE KEY `i_id_2` (`i_id`);

--
-- Indexes for table `dominos-vidhyadhar nagar`
--
ALTER TABLE `dominos-vidhyadhar nagar`
  ADD UNIQUE KEY `i_id` (`i_id`),
  ADD UNIQUE KEY `i_id_2` (`i_id`);

--
-- Indexes for table `pizza hut-malviya nagar`
--
ALTER TABLE `pizza hut-malviya nagar`
  ADD UNIQUE KEY `i_id` (`i_id`),
  ADD UNIQUE KEY `i_id_2` (`i_id`);

--
-- Indexes for table `pizza hut-tambaram`
--
ALTER TABLE `pizza hut-tambaram`
  ADD UNIQUE KEY `i_id` (`i_id`),
  ADD UNIQUE KEY `i_id_2` (`i_id`);

--
-- Indexes for table `pizza hut-vaishali nagar`
--
ALTER TABLE `pizza hut-vaishali nagar`
  ADD UNIQUE KEY `i_id` (`i_id`),
  ADD UNIQUE KEY `i_id_2` (`i_id`);

--
-- Indexes for table `restraunt`
--
ALTER TABLE `restraunt`
  ADD PRIMARY KEY (`r_id`),
  ADD UNIQUE KEY `Contact no.` (`Contact no.`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
