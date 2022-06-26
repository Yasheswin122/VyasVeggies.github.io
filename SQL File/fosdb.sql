-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2022 at 03:16 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fosdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7894561238, 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-04-04 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(5) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(3, 'Itallian', '2021-04-04 18:30:00'),
(4, 'Thai', '2021-04-04 18:30:00'),
(5, 'South Indian', '2021-04-04 18:30:00'),
(6, 'North Indian', '2021-04-04 18:30:00'),
(7, 'Desserts', '2021-04-04 18:30:00'),
(8, 'Starters', '2021-04-04 18:30:00'),
(9, 'Chinese', '2021-04-23 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblfood`
--

CREATE TABLE `tblfood` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `ItemName` varchar(120) DEFAULT NULL,
  `ItemPrice` varchar(120) DEFAULT NULL,
  `ItemDes` varchar(500) DEFAULT NULL,
  `Image` varchar(120) DEFAULT NULL,
  `ItemQty` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfood`
--

INSERT INTO `tblfood` (`ID`, `CategoryName`, `ItemName`, `ItemPrice`, `ItemDes`, `Image`, `ItemQty`) VALUES
(6, 'North Indian', 'Chana Masala', '150', 'To make this chana masala we start with a trio of ingredients found in most Indian curriesâ€“onion, garlic, and ginger. ', 'chana.jpg', 'Full'),
(7, 'North Indian', 'Rajma Masala', '125', 'Rajma Masala is a much loved spicy curry in most Indian Households.                               	', 'rajma.jpg', 'Full'),
(8, 'South Indian', 'Dosa', '85', 'Dosa  are served hot along with sambar, a stuffing of potatoes, and chutney.                             	', 'dosa.jpg', 'Regular'),
(9, 'South Indian', 'Idli', '75', 'Idli are a type of savoury rice cake, originating from the Indian subcontinent and served coconut chutney.                                         	', 'idli.jpg', '2 pcs'),
(10, 'South Indian', 'Vada', '60', 'Medu vada served with hot shambhar and coconut chutney ', 'vada.jpg', '2 pcs'),
(11, 'North Indian', 'Chole Bhature', '120', 'Chole Bhuture is a combination of chana masala (spicy white chickpeas) and bhatura,                                                	', 'bhature.jpg', '2 pcs'),
(12, 'North Indian', 'Aloo paratha', '85', ' Aloo paratha is served with butter, chutney, or Indian pickles in different parts of northern and western India.                                                 	', 'aloo.jpg', '2 pieces'),
(13, 'North Indian', 'Mix Pratha', '85', 'veg paratha soft, healthy and delicious whole wheat parathas made with mix vegetables. ... this no onion no garlic veg paratha recipe is pretty flexible.                                               	', 'mix.jpg', '2 pieces'),
(14, 'North Indian', 'Paneer Paratha.', '95', 'paneer paratha. paneer paratha is an indian flat bread made with cottage cheese stuffing. paneer paratha are popular breakfast recipe in punjabi homes.                                                 	', 'paneer.jpg', '2 pieces'),
(15, 'Chinese', 'Hakka Noodle', '120', 'Hakka Noodle is one our famous food which is made up by our homemade masale.                                               	', 'hakka.jpg', 'full'),
(16, 'Chinese', 'Vyas Veggies Pasta ', '120', 'Delicious flavour with Vyas Veggies Love                                        	', 'pasta.jpg', 'Full'),
(17, 'Thai', 'Pad Thai', '220', '       Flat noodles made with rice flour beautifully entangled with tofu, eggs, beansprouts and sauces.               	', 'ab0748763b2aac2dcd31f51aff198224.jpg', '1'),
(18, 'Starters', 'Paneer Tikka', '150', 'Paneer cubes, onions and peppers are marinated in a creamy yogurt marinade that’s rich in spices and full of flavors .Total Cook Time1 hr 25 minsPrep Time 15 mins Cook Time1 hr 10 minsRecipe: Servings 4How To Make:Ingredients of Paneer Tikka: 1/2 Kg paneer 1 tomato 1onion 1capsicum Marinade for paneer tikka: 1/2 tbsp cumin seeds 1/2 tbsp coriander seeds 1 brown cardamom 10greencardamom 1/2 tbspcloves 1/2tbsp blackpepper 2pcs star anise 1/2tbsp shahee jeera 3tbsp ginger-garlicpaste 2ts', '06f13e4165be8753497fa138d0ba0f94.jpg', '1'),
(19, 'Starters', 'Dahi kebabs', '135', 'Dahi ke kebab are a popular vegetarian snack option to prepare on special occasions or festivals.\r\nRecipe:\r\nTotal Cook Time1 hr 10 mins |Prep Time10 mins|Cook Time1 hr|Recipe Servings 8\r\n Ingredients\r\n1 1/2 Cup hung yogurt *1/4 cup besan (chick pea flour) - dry roasted over low heat till slightly darker *1 tbsp coriander leaves, *finely chopped *1 tsp green chillies, *finely chopped2 tbsp onions, finely chopped *1 tsp salt *1 tsp cumin seeds (powdered), roasted *for frying oil/ghee\r\n', '206b2938827d97daa356906f7acb90b3.jpg', '4'),
(20, 'Chinese', 'Veg Momos', '125', 'These popular street side momos stand as the most favourite food for the kids .\r\nRecipe:\r\nIngredients\r\nFor Dough:2 cups maida *1/2 tsp salt*1/2 tsp baking powder\r\nFor Filling:1 cup carrots, grated1 cup cabbage, grated*1 tbsp oil*1/2 cup onion, finely chopped*1 tsp garlic, chopped*1 tsp soya sauce *salt*1/4 tsp vinegar*1/4 tsp black pepper             \r\nMethod:\r\n1.Mix the maida, salt and baking powder and knead to a stiff dough with water.\r\n2.Heat oil and add the onion and garlic.Saute over high ', '3e5a307a0a321bbe76430c261ad92832.jpg', '6'),
(21, 'Desserts', 'VV Double Chocolate Brownie Ice Cream', '200', 'Summer means ice cream, and lots of it! Save money by making your own, like my recipe for Double Chocolate Brownie Ice Cream, and satisfy your chocolate craving while you’re at it!                               	', 'c79fe3cb3d96504069171c6c71c1d3fb.jpg', '1'),
(22, 'Desserts', 'Cheese Cake ', '90', 'Cheesecake is believed to have originated from ancient Greece and was quite a popular dessert there.                                 	', '8a8956a984789aa2cf30ac791a06107d.jpg', '1'),
(23, 'Desserts', 'Oreo Bogata', '130', 'This Oreo milkshake  should be on the summer menu of everyone who loves thick and creamy beverages.        	', 'fbe5fc0786fa18f2aa746836eb4d5281.jpg', '1'),
(24, 'Desserts', 'Vyas Veggies Special  Parfait', '180', 'A healthy and refreshing Special Vyas Veggies parfait recipe that will help your body cool down on a hot, summer day.         	', '75e8f8315c8fa25f8ba91f6b297ba4cb.jpg', '1'),
(25, 'Itallian', 'Vyas Veggies Pizza', '150', 'Hand Made Spices And Authentic Taste            	', 'd82e96619d1f03c5a9f8f03de7ba98e4.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblfoodtracking`
--

CREATE TABLE `tblfoodtracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfoodtracking`
--

INSERT INTO `tblfoodtracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(1, '111500378', 'Order Confrimed', 'Order Confirmed', '2021-06-05 12:31:01', NULL),
(2, '111500378', 'Food is preparing', 'Food being Prepared', '2021-06-05 12:31:38', NULL),
(3, '111500378', 'Food delivered sucessfully', 'Food Delivered', '2021-06-05 12:32:37', NULL),
(4, '617727983', 'Hi ', 'Food being Prepared', '2021-12-16 06:23:44', NULL),
(5, '524023034', 'Your Foood Is prepared', 'Food being Prepared', '2021-12-18 04:41:00', NULL),
(6, '101520134', 'HI Food is prepared', 'Food being Prepared', '2021-12-18 08:45:45', NULL),
(7, '695467158', 'bhjgjhgug', 'Order Cancelled', '2022-01-30 08:13:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderaddresses`
--

CREATE TABLE `tblorderaddresses` (
  `ID` int(11) NOT NULL,
  `UserId` char(100) DEFAULT NULL,
  `Ordernumber` char(100) DEFAULT NULL,
  `Flatnobuldngno` varchar(255) DEFAULT NULL,
  `StreetName` varchar(255) DEFAULT NULL,
  `Area` varchar(255) DEFAULT NULL,
  `Landmark` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `OrderTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `OrderFinalStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Area`, `Landmark`, `City`, `OrderTime`, `OrderFinalStatus`) VALUES
(1, '1', '409347008', 'H5534 ', 'XYZ Streer', 'ABC Area', 'test Landmark', 'New Delhi', '2021-06-04 16:34:14', NULL),
(2, '3', '111500378', 'H 52312', 'XYZ Street', 'New Delhi', 'ABC Landmark', 'New Delhi', '2021-06-05 12:29:51', 'Food Delivered'),
(3, '4', '617727983', 'Neafr Vardg', 'Civil lines', 'Ajmer', 'Dezyne Ecole College', 'Ajmer', '2021-12-16 06:21:50', 'Food being Prepared'),
(4, '4', '524023034', '12', 'Adarsh Nagar', ' Balapura Road', 'Rajasthan', 'Beawar', '2021-12-18 04:38:37', 'Food being Prepared'),
(5, '4', '206534324', 'Adarsh Nagar', 'malwa nagar', 'Ajmer', '', 'Ajmeer', '2021-12-18 05:35:38', NULL),
(6, '4', '735105959', 'Adrsh Nagar', 'malvi nagar', 'Ajmer', 'Rajasthan', 'Beawar', '2021-12-18 06:28:56', NULL),
(7, '4', '101520134', 'Ajmmer', 'Ajmer', 'Ajmer', '', 'Ajmer', '2021-12-18 08:44:06', 'Food being Prepared'),
(8, '4', '954964705', 'd', 'd', 'f', 'dsdcs', 'Beawar', '2022-01-30 07:40:01', NULL),
(9, '4', '434933215', 'railway colonyeawar', 'Outside Nehru Gate', 'Nehru Gate', 'beawar', 'Ujjain', '2022-01-30 07:41:55', NULL),
(10, '4', '447224242', 'railway colonyeawar', 'sdd', 'Vaishali', 'Saket Nagar Housing Board,Beawar', 'Beawar', '2022-01-30 07:58:13', NULL),
(11, '4', '695467158', 'jkhkjh', 'hkhkj', 'khkh', 'khkjh', 'hkhk', '2022-01-30 08:03:22', 'Order Cancelled'),
(12, '4', '272973030', 'kjhkjh', 'hiiuy', 'ljhljhlj', 'lhljhjl', 'ljhjh', '2022-01-30 08:15:12', NULL),
(13, '4', '574421183', 'ds', 'zc', 'zczczzz', 'zcz', 'Beawar', '2022-01-30 08:28:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `ID` int(11) NOT NULL,
  `UserId` char(10) DEFAULT NULL,
  `FoodId` char(10) DEFAULT NULL,
  `FoodQty` int(11) DEFAULT NULL,
  `IsOrderPlaced` int(11) DEFAULT NULL,
  `OrderNumber` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`ID`, `UserId`, `FoodId`, `FoodQty`, `IsOrderPlaced`, `OrderNumber`) VALUES
(1, '1', '8', 1, 1, '409347008'),
(2, '1', '7', 1, 1, '409347008'),
(3, '3', '1', 1, 1, '111500378'),
(4, '3', '5', 2, 1, '111500378'),
(5, '4', '8', 1, 1, '617727983'),
(6, '4', '5', 2, 1, '524023034'),
(7, '4', '5', 1, 1, '206534324'),
(10, '4', '15', 1, 1, '735105959'),
(18, '4', '9', 1, 1, '101520134'),
(19, '4', '10', 2, 1, '101520134'),
(20, '4', '7', 1, 1, '954964705'),
(21, '4', '8', 2, 1, '434933215'),
(22, '4', '7', 1, 1, '447224242'),
(23, '4', '7', 2, 1, '695467158'),
(24, '4', '7', 2, 1, '272973030'),
(25, '4', '10', 2, 1, '574421183');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(1, 'Dharmendra ', 'Vyas', 'test@gmail.com', 1234567890, 'f925916e2754e5e03f75dd58a5733251', '2021-06-04 04:31:04'),
(3, 'Test', 'User', 'testuser@gmail.com', 1236547890, 'f925916e2754e5e03f75dd58a5733251', '2021-06-05 12:28:41'),
(4, 'Yasheswin', 'Vyas', 'vyasyasheswin@gmail.com', 6378300549, '4252c23d54b55331c35697b4e04d8846', '2021-12-16 06:08:28'),
(5, 'Niharika ', 'Vyas', 'vyasniha@gmail.com', 7676786788, '7d003be09541f9d9f74d13ff4414d514', '2021-12-16 16:24:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tblfood`
--
ALTER TABLE `tblfood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`Ordernumber`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`FoodId`,`OrderNumber`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblfood`
--
ALTER TABLE `tblfood`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
