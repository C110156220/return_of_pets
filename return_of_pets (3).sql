-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-06-20 10:30:53
-- 伺服器版本： 10.4.27-MariaDB
-- PHP 版本： 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `return_of_pets`
--
CREATE DATABASE IF NOT EXISTS `return_of_pets` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `return_of_pets`;

-- --------------------------------------------------------

--
-- 資料表結構 `action`
--

CREATE TABLE `action` (
  `id` int(11) NOT NULL,
  `action_id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `action`
--

INSERT INTO `action` (`id`, `action_id`, `name`) VALUES
(3, '0', 'getMethod'),
(4, '0', 'getMethods'),
(5, '0', 'newMember'),
(7, '1', 'updateMember'),
(8, '1', 'newOrder'),
(9, '1', 'getOrder'),
(10, '1', 'updateOrder'),
(11, '1', 'removeMember'),
(12, '1', 'removeOrder'),
(13, '4', 'getOrders'),
(14, '4', 'getCustomers'),
(15, '1', 'getMember'),
(16, '3', 'updateCompany'),
(17, '3', 'removeCompany'),
(18, '3', 'getCompany');

-- --------------------------------------------------------

--
-- 資料表結構 `company`
--

CREATE TABLE `company` (
  `comid` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `area` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `account` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `company`
--

INSERT INTO `company` (`comid`, `name`, `area`, `address`, `email`, `phone`, `account`, `password`) VALUES
('com_000001', 'binpin葬儀社', '新北市蘆洲區', '蘆洲得某個地方', 'C110156220@nkust.edu', '0966683955', 'binbin', 'binbin'),
('com_000002', 'brian禮儀', '新北市新莊區', '新莊的某個地方', 'C110156217@nkust.edu', '0900000001', 'brian', 'brian'),
('com_00005', 'test', 'test1', 'test1', 'test', 'test', 'test', 'test');

-- --------------------------------------------------------

--
-- 資料表結構 `employee`
--

CREATE TABLE `employee` (
  `empid` varchar(20) NOT NULL,
  `role_name` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `birth` date NOT NULL,
  `account` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `employee`
--

INSERT INTO `employee` (`empid`, `role_name`, `name`, `email`, `phone`, `address`, `birth`, `account`, `password`) VALUES
('emp_00001', 'employee', '彬彬', 'C110156220@nkust.edu.tw', '0966683955', 'A', '2003-06-25', 'binbin', 'binbin');

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `memid` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `birth` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `account` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `member`
--

INSERT INTO `member` (`memid`, `name`, `address`, `phone`, `birth`, `email`, `account`, `password`) VALUES
('mem_000001', '楊先生', '新北', '0966683955', '2023-06-05', 'C110156220@nkust.edu.tw', 'binbin', 'binbin');

-- --------------------------------------------------------

--
-- 資料表結構 `method`
--

CREATE TABLE `method` (
  `memid` varchar(10) NOT NULL,
  `comid` varchar(10) NOT NULL,
  `metName` varchar(50) NOT NULL,
  `bottomPrice` varchar(50) NOT NULL,
  `content` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `method`
--

INSERT INTO `method` (`memid`, `comid`, `metName`, `bottomPrice`, `content`) VALUES
('mem_000001', 'com_000001', 'binpin_火葬服務', '3000', '為您的寵物送上最後的一程，火焰燃燒後並未一無所有，還有意志陪伴著你（本價格僅供參考，實際需測量寵物體重）'),
('mem_000003', 'com_000001', 'binpin_團體火葬服務', '2000', '多數人對於過世的寵物作法為丟垃圾車，交給我們，讓我寵物能快速解脫！成為天使陪伴著你（本價格僅供參考，實際需測量寵物體重）');

-- --------------------------------------------------------

--
-- 資料表結構 `order`
--

CREATE TABLE `order` (
  `orderId` varchar(20) NOT NULL,
  `empId` varchar(20) NOT NULL,
  `comId` varchar(20) NOT NULL,
  `orderName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `order`
--

INSERT INTO `order` (`orderId`, `empId`, `comId`, `orderName`) VALUES
('ord_000001', 'mem_000001', 'com_000002', '彬彬bangbang');

-- --------------------------------------------------------

--
-- 資料表結構 `orderinfo`
--

CREATE TABLE `orderinfo` (
  `orderId` varchar(20) NOT NULL,
  `orderStatus` varchar(20) NOT NULL,
  `orderCost` varchar(20) DEFAULT NULL,
  `orderCompleteTime` datetime DEFAULT NULL,
  `orderOther` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `orderinfo`
--

INSERT INTO `orderinfo` (`orderId`, `orderStatus`, `orderCost`, `orderCompleteTime`, `orderOther`) VALUES
('ord_000001', '待處理', '0', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- 資料表結構 `petinfo`
--

CREATE TABLE `petinfo` (
  `orderId` varchar(20) NOT NULL,
  `petSort` varchar(20) NOT NULL,
  `petName` varchar(20) NOT NULL,
  `petWeight` varchar(20) NOT NULL,
  `petOther` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `petinfo`
--

INSERT INTO `petinfo` (`orderId`, `petSort`, `petName`, `petWeight`, `petOther`) VALUES
('ord_000001', '乖乖犬', '乖乖', '100', '不小心被阿罵養太胖，難以火化');

-- --------------------------------------------------------

--
-- 資料表結構 `role_action`
--

CREATE TABLE `role_action` (
  `id` int(11) NOT NULL COMMENT '流水號',
  `role_name` varchar(10) NOT NULL,
  `action_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `role_action`
--

INSERT INTO `role_action` (`id`, `role_name`, `action_id`) VALUES
(1, 'customer', '2'),
(2, 'company', '3'),
(3, 'admin', '4'),
(4, 'admin', '3'),
(5, 'admin', '1'),
(6, 'admin', '2'),
(7, 'customer', '1'),
(8, 'visitor', '0'),
(9, 'customer', '0'),
(10, 'admin', '0');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`comid`),
  ADD UNIQUE KEY `account` (`account`);

--
-- 資料表索引 `employee`
--
ALTER TABLE `employee`
  ADD UNIQUE KEY `account` (`account`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD UNIQUE KEY `account` (`account`);

--
-- 資料表索引 `method`
--
ALTER TABLE `method`
  ADD PRIMARY KEY (`memid`),
  ADD UNIQUE KEY `metName` (`metName`);

--
-- 資料表索引 `petinfo`
--
ALTER TABLE `petinfo`
  ADD PRIMARY KEY (`orderId`);

--
-- 資料表索引 `role_action`
--
ALTER TABLE `role_action`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `action`
--
ALTER TABLE `action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `role_action`
--
ALTER TABLE `role_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
