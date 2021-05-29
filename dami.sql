-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2021 at 03:07 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dami`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `username`, `password`) VALUES
(23, 'dave', 'bfcdf3e6ca6cef45543bfbb57509c92aec9a39fb'),
(24, 'miguel', '75004f149038473757da0be07ef76dd4a9bdbc8d');

-- --------------------------------------------------------

--
-- Table structure for table `archivedproducts`
--

CREATE TABLE `archivedproducts` (
  `archivedId` int(11) NOT NULL,
  `productId` int(255) NOT NULL,
  `productPhoto` varchar(225) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productBrand` varchar(255) NOT NULL,
  `productDescription` varchar(255) NOT NULL,
  `productPrice` int(255) NOT NULL,
  `stocks` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archivedproducts`
--

INSERT INTO `archivedproducts` (`archivedId`, `productId`, `productPhoto`, `productName`, `productBrand`, `productDescription`, `productPrice`, `stocks`) VALUES
(16, 12, 'https://serendipitouswordsmith.files.wordpress.com/2012/09/soap.jpg?w=510    ', '   sabon ', 'safeguard    ', '            sabon ni     ', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `disableadmin`
--

CREATE TABLE `disableadmin` (
  `disableAdmin` int(11) NOT NULL,
  `adminId` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disableadmin`
--

INSERT INTO `disableadmin` (`disableAdmin`, `adminId`, `username`, `password`) VALUES
(13, 18, 'abdul', '3fb86591025780f719fcd21d6fd06a8330659670 ');

-- --------------------------------------------------------

--
-- Table structure for table `disableuser`
--

CREATE TABLE `disableuser` (
  `disableUserId` int(11) NOT NULL,
  `ID` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderId` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `productId` int(255) NOT NULL,
  `productPhoto` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productBrand` varchar(255) NOT NULL,
  `productDescription` varchar(255) NOT NULL,
  `productPrice` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'processed',
  `fullName` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contactEmail` varchar(255) NOT NULL,
  `paymentMethod` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderhistory`
--

CREATE TABLE `orderhistory` (
  `approvedId` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `productId` int(255) NOT NULL,
  `productPhoto` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productBrand` varchar(255) NOT NULL,
  `productDescription` varchar(255) NOT NULL,
  `productPrice` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contactEmail` varchar(255) NOT NULL,
  `paymentMethod` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderhistory`
--

INSERT INTO `orderhistory` (`approvedId`, `username`, `productId`, `productPhoto`, `productName`, `productBrand`, `productDescription`, `productPrice`, `quantity`, `status`, `fullName`, `address`, `contactEmail`, `paymentMethod`, `result`) VALUES
(73, 'migz', 7, 'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/6e3f3833fb98421db618ac690105890c_9366/New_Adilette_Sandals_Black_GZ8827_01_standard.jpg   ', ' NEW ADILETTE SANDALS ', 'Adidas  ', ' The same carefree comfort of your staple slides  ', 4000, 2, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Approve_icon.svg/1200px-Approve_icon.svg.png', 'miguel', 'casay', 'miguel@gmail.com', 'COD', 'approved'),
(74, 'migz', 11, 'https://cdn.shopify.com/s/files/1/0267/1666/8080/products/ReposeGreen_480x.png?v=1604889215   ', ' REPOSE SLIDER SLIPPERS ', 'Sandugo  ', ' Sandugo Repose Sliders slip your feet into a soft, contoured footbed for utmost comfort post-adventure whether outdoor or urban.  ', 250, 5, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Approve_icon.svg/1200px-Approve_icon.svg.png', 'miguel', 'casay na pud ', 'miguel@gmail.com', 'COD', 'approved'),
(75, 'dave', 7, 'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/6e3f3833fb98421db618ac690105890c_9366/New_Adilette_Sandals_Black_GZ8827_01_standard.jpg   ', ' NEW ADILETTE SANDALS ', 'Adidas  ', ' The same carefree comfort of your staple slides  ', 4000, 5, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Approve_icon.svg/1200px-Approve_icon.svg.png', 'Dave Lyndrx Millan', 'Dalaguete', 'dave@gmail.com', 'COD', 'approved'),
(76, 'migz', 11, 'https://cdn.shopify.com/s/files/1/0267/1666/8080/products/ReposeGreen_480x.png?v=1604889215   ', ' REPOSE SLIDER SLIPPERS ', 'Sandugo  ', ' Sandugo Repose Sliders slip your feet into a soft, contoured footbed for utmost comfort post-adventure whether outdoor or urban.  ', 2500, 50, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Approve_icon.svg/1200px-Approve_icon.svg.png', 'ian', 'talamban', 'ian@gmail.com', 'COD', 'approved'),
(77, 'ian', 11, 'https://cdn.shopify.com/s/files/1/0267/1666/8080/products/ReposeGreen_480x.png?v=1604889215   ', ' REPOSE SLIDER SLIPPERS ', 'Sandugo  ', ' Sandugo Repose Sliders slip your feet into a soft, contoured footbed for utmost comfort post-adventure whether outdoor or urban.  ', 2500, 100, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Approve_icon.svg/1200px-Approve_icon.svg.png', 'ian', 'nasipit', 'ian@gmail.com', 'COD', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productId` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `productPhoto` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productBrand` varchar(255) NOT NULL,
  `productDescription` varchar(255) NOT NULL,
  `productPrice` int(255) NOT NULL,
  `stocks` int(11) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productId`, `username`, `productPhoto`, `productName`, `productBrand`, `productDescription`, `productPrice`, `stocks`) VALUES
(7, 'ian', 'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/6e3f3833fb98421db618ac690105890c_9366/New_Adilette_Sandals_Black_GZ8827_01_standard.jpg ', 'NEW ADILETTE SANDALS ', 'Adidas ', 'The same carefree comfort of your staple slides ', 4000, 100),
(8, 'dave', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/bae22159-3f8e-4986-9237-687ee04d0f7e/air-max-90-se-shoe-0GdsBK.png ', 'Air Max 90 SE ', 'Nike ', 'Nothing as fly, nothing as comfortable, nothing as proven ', 3999, 100),
(9, '', 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/474785cc-dd8b-4ea7-a4a8-b3beed71e8cc/air-max-90-se-shoe-7FvRpS.png ', 'Air Max 90 SE ', 'Nike  ', 'Nothing as fly, nothing as comfortable, nothing as proven ', 6895, 100),
(10, '', 'https://cdn.shopify.com/s/files/1/0349/0408/0516/products/HOPI_1800x1800.jpg ', 'MOJO HOPI III ', 'Habagat ', 'Our rubber is harvested from the Philippines southern island of Mindanao. ', 688, 100),
(11, 'migz', 'https://cdn.shopify.com/s/files/1/0267/1666/8080/products/ReposeGreen_480x.png?v=1604889215 ', 'REPOSE SLIDER SLIPPERS ', 'Sandugo ', 'Sandugo Repose Sliders slip your feet into a soft, contoured footbed for utmost comfort post-adventure whether outdoor or urban. ', 2500, 50);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `requestId` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `productId` int(255) NOT NULL,
  `productPhoto` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productBrand` varchar(255) NOT NULL,
  `productDescription` varchar(255) NOT NULL,
  `productPrice` int(255) NOT NULL,
  `stocks` int(255) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`requestId`, `username`, `productId`, `productPhoto`, `productName`, `productBrand`, `productDescription`, `productPrice`, `stocks`, `comments`) VALUES
(31, 'migz', 10, 'https://cdn.shopify.com/s/files/1/0349/0408/0516/products/HOPI_1800x1800.jpg ', 'MOJO HOPI III ', 'Habagat ', 'Our rubber is harvested from the Philippines southern island of Mindanao. ', 1000, 100, 'updatepriceplease');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `email`, `password`, `status`) VALUES
(21, 'migz', 'migz@gmail.com', '4e5a83367b0310a33e43f1d71ef4b980bde91739 ', 'user'),
(24, 'jurick', 'jurick@gmail.com', '85e32494390334d9303b0b81a3b660b9a5b927c0 ', 'user'),
(25, 'ian', 'ian@gmail.com', '57a33a5496950fec8433e4dd83347673459dcdfc ', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `archivedproducts`
--
ALTER TABLE `archivedproducts`
  ADD PRIMARY KEY (`archivedId`);

--
-- Indexes for table `disableadmin`
--
ALTER TABLE `disableadmin`
  ADD PRIMARY KEY (`disableAdmin`);

--
-- Indexes for table `disableuser`
--
ALTER TABLE `disableuser`
  ADD PRIMARY KEY (`disableUserId`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `orderhistory`
--
ALTER TABLE `orderhistory`
  ADD PRIMARY KEY (`approvedId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`requestId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `archivedproducts`
--
ALTER TABLE `archivedproducts`
  MODIFY `archivedId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `disableadmin`
--
ALTER TABLE `disableadmin`
  MODIFY `disableAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `disableuser`
--
ALTER TABLE `disableuser`
  MODIFY `disableUserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `orderhistory`
--
ALTER TABLE `orderhistory`
  MODIFY `approvedId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `requestId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
