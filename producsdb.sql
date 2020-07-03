-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03 يوليو 2020 الساعة 20:49
-- إصدار الخادم: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `producsdb`
--

-- --------------------------------------------------------

--
-- بنية الجدول `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `referaence` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `price` float NOT NULL,
  `qte_inStock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `product`
--

INSERT INTO `product` (`id`, `referaence`, `name`, `description`, `price`, `qte_inStock`) VALUES
(1, 'P20-300', 'Bike', 'yamaha bike TMAX 800', 50000, 2);

-- --------------------------------------------------------

--
-- بنية الجدول `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `referaece` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` longtext,
  `description` longtext,
  `price` float NOT NULL,
  `qte_inStock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `products`
--

INSERT INTO `products` (`id`, `referaece`, `name`, `description`, `price`, `qte_inStock`) VALUES
(1, 'P12-300', 'Bike', 'Yamaha bike T-MAX 800', 50000, 2);

-- --------------------------------------------------------

--
-- بنية الجدول `__migrationhistory`
--

CREATE TABLE `__migrationhistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8 NOT NULL,
  `ContextKey` varchar(300) CHARACTER SET utf8 NOT NULL,
  `Model` longblob NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `__migrationhistory`
--

INSERT INTO `__migrationhistory` (`MigrationId`, `ContextKey`, `Model`, `ProductVersion`) VALUES
('202007031658273_InitialModel', 'ProductsWebApi.Migrations.Configuration', 0x1f8b0800000000000400cd58db6e1b37107d2fd07f58ecb323fa0203adb14ae04a762134b283ac933e0614775626c2253724d790be2d0ffda4fe42877bbf48f25a718b4280b04bce9cb970e670a4bfbfff15bcdb24c27b026db89253ff6c72ea7b20998ab85c4ffdccc66f7ef1dfbdfdf9a7e0264a36dee74aeec2c9a1a63453ffd1daf48a10c31e21a1669270a69551b19d3095101a29727e7afa2b393b2380103e62795ef03193962790bfe0eb4c4906a9cda858aa088429d77127cc51bd3b9a80492983a9ff41ab2863d6fc09abeb944f0a05dfbb169ca2332188d8f7a894ca528bae5e7d32105aade43a4c71818a876d0a28175361a00ce1aa111f1bcde9b98b86348a1514cb8c55c90b01cf2ecaf490befa5149f6ebf461026f30d176eba2ce9358e7cff7fab6ae66423bb93d299e94ab275e77fba4ae0a2c1ef739f16699b09986a984cc6a2a50235b09cefe80ed83fa0a722a3321da4ea29bb8d759c025349382b6db8f1097aef3c8f748578ff4156bb5964e11d542da8b73dfbb43e37425a0ae81560642ab34fc0e1234b5107da0d682c6235c4490677160bd674b438c9ac0a0328995877de47b4bba790f726d1fa7fe2536ce2ddf40542d945e7c921cbb0e75acce608797872d4bfc3e60141f47593d6c2402c3344f8bbafc976da59ab7d28836c4cb93f2cdc2172ef14cd9d7e76aa00d1490a667869d84546529c70a298d2ce62bb7049b5d1d85e453369529c3ee3a5c408660bbbd8974d6b85070daa46edb5daed64e35c4490ae6ac1896eca1d86049d314d3dba2dc72c50b0bbe9dbd095fce4249814198d94146b5b7b5256c3bba86de2e9a464f6fb936764e2d5d517750b3281988b58e604f7a2b43bd2cf719a7497aa5e09ebb4a3b39b18fd464f116034b903df218a176a8a1e181667ee95141f50e229b299125721f191ed26e51531ba4b53c1eab209b364cb1321ea1c3246da0cec678bc922dda48e5d2788c0e5bb4913a1b43bc80f48eba5f55645056bd2bac5fa6871abc2f525baf1bbdd7d041d95ccf0f56836e2b447c77df3ff1c875da721b7e1313b73fc91f678263c08dc4924a1e83b1c535ef5f4e2e7b83d9ff674822c64462dca4f49f4f2adce5f4d959e485b7e16038914f54b347aa07e3c90fcc1e0207ede22e6c408e1c2d8e85ea4c0eb150d4bec6e0901fc92b8e0dc3ab6dd46470683028da1573b952e875e16733501c39360cd92320ed1f6fc11c0c5f3710eea79c04e60eb201ad6416325655aa31b4b6479548ef249660698419bad696c79459dc66604c3e737ea62243919b6405d142de6736cdecb53190ac4467520fc861fbf96cd4f539b8cf4bd1bc4608e826c710e05efe967111d57edfee28a13d10ae584a2640af70e646b8f5b646ba5372245099be39a4201d8f3c40920a0433f732a44f708c6f38e2be873565dbea0ed80ff2fc4174d31ecc395d6b9a9812a3d1777f4810f78fc4db7f00daf05a89c3100000, '6.2.0-61023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `referaence` (`referaence`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `__migrationhistory`
--
ALTER TABLE `__migrationhistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
