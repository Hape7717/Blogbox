-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 12:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `articles_db`
--
CREATE DATABASE IF NOT EXISTS `articles_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `articles_db`;

-- --------------------------------------------------------

--
-- Table structure for table `article_comment`
--

CREATE TABLE `article_comment` (
  `id_comm` int(20) NOT NULL,
  `comm_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `comment` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `id_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `article_tb`
--

CREATE TABLE `article_tb` (
  `id_article` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `header_image` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `description` varchar(200) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `views` int(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article_tb`
--

INSERT INTO `article_tb` (`id_article`, `title`, `header_image`, `content`, `description`, `categories`, `time_stamp`, `views`, `username`) VALUES
(38, 'Dedicated Server, VPS à¹à¸¥à¸° VMware à¸„à¸·à¸­à¸­à¸°à¹„à¸£à¹à¸¥à¸°à¸•à¹ˆà¸²à¸‡à¸à¸±à¸™à¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£', '198129919620230517_114504.jpg', 'Dedicated Server, VPS à¹à¸¥à¸° VMware à¸„à¸·à¸­à¸­à¸°à¹„à¸£à¹à¸¥à¸°à¸•à¹ˆà¸²à¸‡à¸à¸±à¸™à¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£\r\n\r\n       Dedicated Server à¸„à¸·à¸­ Physical Server à¸—à¸µà¹ˆà¸£à¸­à¸‡à¸£à¸±à¸šà¸à¸²à¸£à¹ƒà¸«à¹‰à¸šà¸£à¸´à¸à¸²à¸£à¸šà¸™à¸£à¸°à¸šà¸šà¹€à¸„à¸£à¸·à¸­à¸‚à¹ˆà¸²à¸¢ à¹€à¸›à¹‡à¸™à¸£à¸¹à¸›à¹à¸šà¸šà¸šà¸£à¸´à¸à¸²à¸£à¸ªà¸³à¸«à¸£à¸±à¸šà¹€à¸Šà¹ˆà¸²à¹ƒà¸Šà¹‰ Server à¹‚à¸”à¸¢à¸ªà¸²à¸¡à¸²à¸£à¸–à¹ƒà¸Šà¹‰à¸‡à¸²à¸™ Resource à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”à¸‚à¸­à¸‡à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¹à¸¥à¸°à¹„à¸¡à¹ˆ Shared Resource à¸à¸±à¸šà¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸­à¸·à¹ˆà¸™ à¸ªà¸²à¸¡à¸²à¸£à¸–à¸›à¸£à¸±à¸šà¹à¸•à¹ˆà¸‡ Resource à¹„à¸”à¹‰à¹€à¸­à¸‡à¹‚à¸”à¸¢à¸­à¸´à¸ªà¸£à¸° à¸¡à¸µà¸„à¸§à¸²à¸¡à¸¢à¸·à¸”à¸«à¸¢à¸¸à¹ˆà¸™à¸¡à¸²à¸à¸à¸§à¹ˆà¸²à¸šà¸£à¸´à¸à¸²à¸£à¸­à¸·à¹ˆà¸™ à¸ªà¸²à¸¡à¸²à¸£à¸–à¸šà¸£à¸´à¸«à¸²à¸£à¸ˆà¸±à¸”à¸à¸²à¸£ Resource à¸‚à¸­à¸‡à¸•à¸™à¹€à¸­à¸‡à¹„à¸”à¹‰à¸­à¸¢à¹ˆà¸²à¸‡à¹€à¸•à¹‡à¸¡à¸›à¸£à¸°à¸ªà¸´à¸—à¸˜à¸´à¸ à¸²à¸žà¸—à¸±à¹‰à¸‡ CPU, Memory, Disk à¸£à¸§à¸¡à¸–à¸¶à¸‡ Network à¹€à¸›à¹‡à¸™à¸šà¸£à¸´à¸à¸²à¸£à¸—à¸µà¹ˆà¸¡à¸µà¸›à¸£à¸°à¸ªà¸´à¸—à¸˜à¸´à¸ à¸²à¸žà¸ªà¸¹à¸‡à¸ªà¸¸à¸” à¸¡à¸±à¸à¹ƒà¸Šà¹‰à¸ªà¸³à¸«à¸£à¸±à¸šà¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œà¸—à¸µà¹ˆà¸¡à¸µ Traffic à¸ªà¸¹à¸‡à¹† à¸¡à¸µà¸›à¸£à¸´à¸¡à¸²à¸“à¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¹ƒà¸Šà¹‰à¸‡à¸²à¸™à¸žà¸£à¹‰à¸­à¸¡à¸à¸±à¸™à¸ˆà¸³à¸™à¸§à¸™à¸¡à¸²à¸à¹† à¸•à¹‰à¸­à¸‡à¸à¸²à¸£à¸£à¸°à¸šà¸šà¸à¸²à¸£à¸ˆà¸±à¸”à¹€à¸à¹‡à¸šà¹„à¸Ÿà¸¥à¹Œà¸‚à¸™à¸²à¸”à¹ƒà¸«à¸à¹ˆ à¹à¸¥à¸°à¸•à¹‰à¸­à¸‡à¸à¸²à¸£à¸„à¸§à¸²à¸¡à¹€à¸›à¹‡à¸™à¸ªà¹ˆà¸§à¸™à¸•à¸±à¸§à¸ªà¸³à¸«à¸£à¸±à¸šà¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¸–à¸¶à¸‡à¸‚à¹‰à¸­à¸¡à¸¹à¸¥\r\n\r\n       VPS à¸„à¸·à¸­à¸Šà¸·à¹ˆà¸­à¸šà¸£à¸´à¸à¸²à¸£à¸‹à¸¶à¹ˆà¸‡à¹€à¸›à¹‡à¸™à¸šà¸£à¸´à¸à¸²à¸£à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œà¹€à¸ªà¸¡à¸·à¸­à¸™ à¹€à¸›à¹‡à¸™à¸à¸²à¸£à¹à¸šà¹ˆà¸‡ Physical Server 1 à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸­à¸­à¸à¹€à¸›à¹‡à¸™ VM (Virtual Machin) à¸¢à¹ˆà¸­à¸¢à¸«à¸¥à¸²à¸¢à¹† à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡ à¹€à¸žà¸·à¹ˆà¸­à¹ƒà¸«à¹‰à¸ªà¸²à¸¡à¸²à¸£à¸–à¹à¸¢à¸à¸à¸²à¸£à¸›à¸£à¸°à¸¡à¸§à¸¥à¸œà¸¥à¸­à¸­à¸à¸ˆà¸²à¸à¸à¸±à¸™ à¹ƒà¸Šà¹‰ Software à¸—à¸µà¹ˆà¸ªà¸²à¸¡à¸²à¸£à¸–à¸ˆà¸±à¸”à¸à¸²à¸£ VM à¸œà¹ˆà¸²à¸™ Web UI à¸ªà¸™à¸±à¸šà¸ªà¸™à¸¸à¸™à¹€à¸—à¸„à¹‚à¸™à¹‚à¸¥à¸¢à¸µ Virtualization à¹€à¸Šà¹ˆà¸™ OpenVZ, Xen PV, Xen HVM, XenServer, Linux KVM, LXC à¹à¸¥à¸° OpenVZ7 à¹€à¸›à¹‡à¸™à¸šà¸£à¸´à¸à¸²à¸£à¸—à¸µà¹ˆà¹€à¸«à¸¡à¸²à¸°à¸à¸±à¸šà¸œà¸¹à¹‰à¸—à¸µà¹ˆà¸•à¹‰à¸­à¸‡à¸à¸²à¸£à¸„à¸§à¸²à¸¡à¸­à¸´à¸ªà¸£à¸°à¹ƒà¸™à¸à¸²à¸£à¸›à¸£à¸±à¸šà¹à¸•à¹ˆà¸‡à¸à¸²à¸£à¸—à¸³à¸‡à¸²à¸™à¸£à¸°à¸”à¸±à¸š Root à¸«à¸£à¸·à¸­ Services à¸•à¹ˆà¸²à¸‡à¹† à¹€à¸ªà¸¡à¸·à¸­à¸™à¹ƒà¸Šà¹‰à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œà¸•à¸±à¸§à¹€à¸­à¸‡ à¹€à¸›à¹‡à¸™à¸šà¸£à¸´à¸à¸²à¸£à¸—à¸µà¹ˆà¸£à¸²à¸„à¸²à¸–à¸¹à¸à¸—à¸µà¹ˆà¸ªà¸¸à¸”à¸«à¸²à¸à¹€à¸›à¸£à¸µà¸¢à¸šà¹€à¸—à¸µà¸¢à¸šà¸à¸±à¸šà¸šà¸£à¸´à¸à¸²à¸£à¸­à¸·à¹ˆà¸™\r\n\r\n       VMware à¸„à¸·à¸­à¸«à¸™à¸¶à¹ˆà¸‡à¹ƒà¸™à¸šà¸£à¸´à¸à¸²à¸£à¸‚à¸­à¸‡ Cloud VPS à¸‹à¸¶à¹ˆà¸‡à¹€à¸›à¹‡à¸™à¹€à¸—à¸„à¹‚à¸™à¹‚à¸¥à¸¢à¸µà¸ªà¸³à¸«à¸£à¸±à¸šà¸—à¸³à¸£à¸°à¸šà¸š Server Virtualization à¹€à¸›à¹‡à¸™à¸ªà¹ˆà¸§à¸™à¸«à¸™à¸¶à¹ˆà¸‡à¹ƒà¸™ Software Defined Data Center à¹€à¸›à¹‡à¸™à¹‚à¸›à¸£à¹à¸à¸£à¸¡à¸ªà¸³à¸«à¸£à¸±à¸šà¸„à¸§à¸šà¸„à¸¸à¸¡à¹à¸¥à¸°à¸ªà¸£à¹‰à¸²à¸‡à¸„à¸­à¸¡à¸žà¸´à¸§à¹€à¸•à¸­à¸£à¹Œà¹€à¸ªà¸¡à¸·à¸­à¸™ (Virtual Machine) à¸¡à¸µ 2 à¸­à¸‡à¸„à¹Œà¸›à¸£à¸°à¸à¸­à¸šà¸«à¸¥à¸±à¸à¸„à¸·à¸­ ESXi à¹à¸¥à¸° vCenter Server à¹€à¸›à¹‡à¸™à¹‚à¸›à¸£à¹à¸à¸£à¸¡à¸ˆà¸³à¸¥à¸­à¸‡à¸„à¸­à¸¡à¸žà¸´à¸§à¹€à¸•à¸­à¸£à¹Œà¹€à¸ªà¸¡à¸·à¸­à¸™à¹€à¸Šà¹ˆà¸™à¹€à¸”à¸µà¸¢à¸§à¸à¸±à¸š VPS à¹à¸•à¹ˆà¸„à¸§à¸²à¸¡à¸ªà¸²à¸¡à¸²à¸£à¸–à¸ªà¸¹à¸‡à¸à¸§à¹ˆà¸² à¸£à¸­à¸‡à¸£à¸±à¸šà¸à¸²à¸£à¸—à¸³ High Availability, Failover à¹à¸¥à¸° Load Balancing à¹€à¸›à¹‡à¸™à¸•à¹‰à¸™        à¸£à¸°à¸šà¸š Cloud à¸‚à¸­à¸‡ VMware à¸¡à¸µà¸•à¹‰à¸™à¸—à¸¸à¸™à¸‚à¸­à¸‡à¸£à¸°à¸šà¸šà¸—à¸µà¹ˆà¸ªà¸¹à¸‡à¸à¸§à¹ˆà¸²à¹à¸šà¸šà¸­à¸·à¹ˆà¸™à¹† à¸£à¸§à¸¡à¸–à¸¶à¸‡à¸¡à¸µà¸à¸²à¸£à¹ƒà¸Šà¹‰à¹€à¸—à¸„à¹‚à¸™à¹‚à¸¥à¸¢à¸µà¸—à¸µà¹ˆà¸¡à¸µà¸›à¸£à¸°à¸ªà¸´à¸—à¸˜à¸´à¸ à¸²à¸žà¸¡à¸²à¸à¸à¸§à¹ˆà¸² à¸ˆà¸¶à¸‡à¸—à¸³à¹ƒà¸«à¹‰à¸à¸²à¸£à¸—à¸³à¸‡à¸²à¸™à¸‚à¸­à¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œà¹€à¸ªà¸¡à¸·à¸­à¸™à¸‚à¸­à¸‡à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰à¸‡à¸²à¸™à¸ªà¸²à¸¡à¸²à¸£à¸–à¸—à¸³à¸‡à¸²à¸™à¹„à¸”à¹‰à¸­à¸¢à¹ˆà¸²à¸‡à¸•à¹ˆà¸­à¹€à¸™à¸·à¹ˆà¸­à¸‡à¹à¸¥à¸°à¸¡à¸µà¸„à¸§à¸²à¸¡à¸›à¸¥à¸­à¸”à¸ à¸±à¸¢à¸‚à¸­à¸‡à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸¡à¸²à¸à¸—à¸µà¹ˆà¸ªà¸¸à¸”', 'Dedicated Server, VPS à¹à¸¥à¸° VMware à¸„à¸·à¸­à¸­à¸°à¹„à¸£à¹à¸¥à¸°à¸•à¹ˆà¸²à¸‡à¸à¸±à¸™à¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£         Dedicated Server à¸„à¸·à¸­ Physical Server à¸—à¸µà¹ˆà¸£à¸­à¸‡à¸£à¸±à¸šà¸à¸²à¸£à', 'Computer', '2023-05-17 04:45:04', 1, 'poom'),
(39, 'à¹‚à¸”à¹€à¸¡à¸™à¹€à¸™à¸¡ à¸„à¸·à¸­à¸­à¸°à¹„à¸£?', '16864100320230517_115034.jpg', '<p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:inherit;color:rgb(38, 40, 40);font-family:sans-serif;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 1.5em;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><strong style=\"box-sizing:inherit;font-weight:bolder;\">à¹‚à¸”à¹€à¸¡à¸™à¹€à¸™à¸¡ (domain name)</strong> à¸„à¸·à¸­ à¸Šà¸·à¹ˆà¸­à¸—à¸µà¹ˆà¹ƒà¸Šà¹‰à¸£à¸°à¸šà¸¸à¸¥à¸‡à¹ƒà¸™à¸„à¸­à¸¡à¸žà¸´à¸§à¹€à¸•à¸­à¸£à¹Œ à¹€à¸žà¸·à¹ˆà¸­à¹„à¸›à¸„à¹‰à¸™à¸«à¸²à¹ƒà¸™à¸£à¸°à¸šà¸šà¹‚à¸”à¹€à¸¡à¸™à¹€à¸™à¸¡à¸‹à¸µà¸ªà¹€à¸—à¸¡ (Domain Name System) à¹€à¸žà¸·à¹ˆà¸­à¸£à¸°à¸šà¸¸à¸–à¸¶à¸‡ à¹„à¸­à¸žà¸µà¹à¸­à¸”à¹€à¸”à¸£à¸ª à¸‚à¸­à¸‡à¸Šà¸·à¹ˆà¸­à¸™à¸±à¹‰à¸™à¹† à¹€à¸›à¹‡à¸™à¸Šà¸·à¹ˆà¸­à¸—à¸µà¹ˆà¸œà¸¹à¹‰à¸ˆà¸”à¸—à¸°à¹€à¸šà¸µà¸¢à¸™à¸£à¸°à¸šà¸¸à¹ƒà¸«à¹‰à¸à¸±à¸šà¸œà¸¹à¹‰à¹ƒà¸Šà¹‰à¹€à¸žà¸·à¹ˆà¸­à¹€à¸‚à¹‰à¸²à¸¡à¸²à¸¢à¸±à¸‡à¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œà¸‚à¸­à¸‡à¸•à¸™ à¸šà¸²à¸‡à¸„à¸£à¸±à¹‰à¸‡ à¹€à¸£à¸²à¸­à¸²à¸ˆà¸ˆà¸°à¹ƒà¸Šà¹‰ â€œà¸—à¸µà¹ˆà¸­à¸¢à¸¹à¹ˆà¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œâ€ à¸«à¸£à¸·à¸­ â€œWeb Addressâ€ à¹à¸—à¸™à¸à¹‡à¹„à¸”à¹‰</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:inherit;color:rgb(38, 40, 40);font-family:sans-serif;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 1.5em;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><strong style=\"box-sizing:inherit;font-weight:bolder;\">à¹‚à¸”à¹€à¸¡à¸™à¹€à¸™à¸¡ à¸«à¸£à¸·à¸­ à¸Šà¸·à¹ˆà¸­à¹‚à¸”à¹€à¸¡à¸™</strong> à¹€à¸›à¹‡à¸™à¸Šà¸·à¹ˆà¸­à¸—à¸µà¹ˆà¸•à¸±à¹‰à¸‡à¸‚à¸¶à¹‰à¸™à¹€à¸žà¸·à¹ˆà¸­à¹ƒà¸«à¹‰à¸‡à¹ˆà¸²à¸¢à¸•à¹ˆà¸­à¸à¸²à¸£à¸ˆà¸”à¸ˆà¸³ à¹€à¸™à¸·à¹ˆà¸­à¸‡à¸ˆà¸²à¸à¹„à¸­à¸žà¸µà¹à¸­à¸”à¹€à¸”à¸£à¸ªà¸™à¸±à¹‰à¸™à¸ˆà¸”à¸ˆà¸³à¹„à¸”à¹‰à¸¢à¸²à¸ à¹à¸¥à¸°à¹€à¸¡à¸·à¹ˆà¸­à¹€à¸ˆà¹‰à¸²à¸‚à¸­à¸‡à¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œà¸¡à¸µà¸à¸²à¸£à¹€à¸›à¸¥à¸µà¹ˆà¸¢à¸™à¹à¸›à¸¥à¸‡à¹„à¸­à¸žà¸µà¹à¸­à¸”à¹€à¸”à¸£à¸ª à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰à¹„à¸¡à¹ˆà¸ˆà¸³à¹€à¸›à¹‡à¸™à¸•à¹‰à¸­à¸‡à¸£à¸±à¸šà¸£à¸¹à¹‰à¸«à¸£à¸·à¸­à¸ˆà¸”à¸ˆà¸³à¹„à¸­à¸žà¸µà¹à¸­à¸”à¹€à¸”à¸£à¸ªà¹ƒà¸«à¸¡à¹ˆ à¸¢à¸±à¸‡à¸„à¸‡à¹ƒà¸Šà¹‰à¹‚à¸”à¹€à¸¡à¸™à¹€à¸™à¸¡à¹€à¸”à¸´à¸¡à¹„à¸”à¹‰à¸•à¹ˆà¸­à¹„à¸›</p><p style=\"-webkit-text-stroke-width:0px;background-color:rgb(255, 255, 255);box-sizing:inherit;color:rgb(38, 40, 40);font-family:sans-serif;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 1.5em;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><strong style=\"box-sizing:inherit;font-weight:bolder;\">à¸­à¸‡à¸„à¹Œà¸›à¸£à¸°à¸à¸­à¸šà¸‚à¸­à¸‡à¸Šà¸·à¹ˆà¸­à¹‚à¸”à¹€à¸¡à¸™</strong> à¹ƒà¸™à¸à¸²à¸£à¸žà¸´à¸¡à¸žà¹Œà¸Šà¸·à¹ˆà¸­à¹‚à¸”à¹€à¸¡à¸™à¹‚à¸”à¸¢à¸—à¸±à¹ˆà¸§à¹„à¸› à¸ˆà¸°à¹€à¸£à¸´à¹ˆà¸¡à¸•à¹‰à¸™à¸”à¹‰à¸§à¸¢ www à¸‹à¸¶à¹ˆà¸‡à¹€à¸›à¹‡à¸™à¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¸ªà¸¹à¹ˆà¸£à¸°à¸šà¸šà¹‚à¸”à¸¢à¸à¸²à¸£à¸­à¹‰à¸²à¸‡à¸–à¸¶à¸‡à¹€à¸­à¸à¸ªà¸²à¸£à¹à¸šà¸š Hypertext à¸ˆà¸²à¸à¸™à¸±à¹‰à¸™à¸ˆà¸¶à¸‡à¸„à¸±à¹ˆà¸™à¸”à¹‰à¸§à¸¢à¸ˆà¸¸à¸”à¹à¸¥à¸°à¸•à¸²à¸¡à¸”à¹‰à¸§à¸¢à¸Šà¸·à¹ˆà¸­à¹‚à¸”à¹€à¸¡à¸™à¹€à¸™à¸¡ à¹€à¸Šà¹ˆà¸™ www.webmaster.or.th</p>', 'à¹‚à¸”à¹€à¸¡à¸™à¹€à¸™à¸¡ (domain name) à¸„à¸·à¸­ à¸Šà¸·à¹ˆà¸­à¸—à¸µà¹ˆà¹ƒà¸Šà¹‰à¸£à¸°à¸šà¸¸à¸¥à¸‡à¹ƒà¸™à¸„à¸­à¸¡à¸žà¸´à¸§à¹€à¸•à¸­à¸£à¹Œ à¹€à¸žà¸·à¹ˆà¸­à¹„à¸›à¸„à¹‰à¸™à¸«à¸²à¹ƒà¸™à¸£à¸°à¸šà¸šà¹‚à¸”à¹€', 'Computer', '2023-05-17 04:50:34', 17, 'poom'),
(40, 'HTML à¸„à¸·à¸­à¸­à¸°à¹„à¸£ à¹€à¸­à¸Šà¸—à¸µà¹€à¸­à¹‡à¸¡à¹à¸­à¸¥ à¸ à¸²à¸©à¸²à¸„à¸­à¸¡à¸žà¸´à¸§à¹€à¸•à¸­à¸£à¹Œà¸—à¸µà¹ˆà¹ƒà¸Šà¹‰à¹ƒà¸™à¸à¸²à¸£à¸ªà¸£à¹‰à¸²à¸‡à¹€à¸§à¹‡à¸šà¹€à¸žà¸ˆ à¹ƒà¸Šà¹‰à¹€à¸‚à¸µà¸¢à¸™à¹‚à¸›à¸£à¹à¸à¸£à¸¡ à¸¢à¹ˆà¸­à¸¡à¸²à¸ˆà¸²à¸à¸­à¸°', '143548335120230517_070426.jpg', '<p><span style=\"background-color:rgb(249,249,249);color:rgb(68,68,68);font-family:thsarabunnew;font-size:x-large;\"><span style=\"-webkit-text-stroke-width:0px;border-width:0px;box-sizing:border-box;font-feature-settings:inherit;font-kerning:inherit;font-optical-sizing:inherit;font-stretch:inherit;font-style:normal;font-variant-alternates:inherit;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-variation-settings:inherit;font-weight:400;letter-spacing:normal;line-height:inherit;margin:0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;\">HTML à¸„à¸·à¸­à¸­à¸°à¹„à¸£</span></span><br><b style=\"-webkit-text-stroke-width:0px;background-color:rgb(249, 249, 249);border-width:0px;box-sizing:border-box;color:rgb(68, 68, 68);font-family:thsarabunnew;font-feature-settings:inherit;font-kerning:inherit;font-optical-sizing:inherit;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-alternates:inherit;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-variation-settings:inherit;letter-spacing:normal;line-height:inherit;margin:0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp; HTML</strong></b><span style=\"background-color:rgb(249,249,249);color:rgb(68,68,68);font-family:thsarabunnew;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"> à¸¢à¹ˆà¸­à¸¡à¸²à¸ˆà¸²à¸ </span></span><b style=\"-webkit-text-stroke-width:0px;background-color:rgb(249, 249, 249);border-width:0px;box-sizing:border-box;color:rgb(68, 68, 68);font-family:thsarabunnew;font-feature-settings:inherit;font-kerning:inherit;font-optical-sizing:inherit;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-alternates:inherit;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-variation-settings:inherit;letter-spacing:normal;line-height:inherit;margin:0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;\"><strong>H</strong></b><span style=\"background-color:rgb(249,249,249);color:rgb(68,68,68);font-family:thsarabunnew;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">yper </span></span><b style=\"-webkit-text-stroke-width:0px;background-color:rgb(249, 249, 249);border-width:0px;box-sizing:border-box;color:rgb(68, 68, 68);font-family:thsarabunnew;font-feature-settings:inherit;font-kerning:inherit;font-optical-sizing:inherit;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-alternates:inherit;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-variation-settings:inherit;letter-spacing:normal;line-height:inherit;margin:0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;\"><strong>T</strong></b><span style=\"background-color:rgb(249,249,249);color:rgb(68,68,68);font-family:thsarabunnew;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">ext </span></span><b style=\"-webkit-text-stroke-width:0px;background-color:rgb(249, 249, 249);border-width:0px;box-sizing:border-box;color:rgb(68, 68, 68);font-family:thsarabunnew;font-feature-settings:inherit;font-kerning:inherit;font-optical-sizing:inherit;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-alternates:inherit;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-variation-settings:inherit;letter-spacing:normal;line-height:inherit;margin:0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;\"><strong>M</strong></b><span style=\"background-color:rgb(249,249,249);color:rgb(68,68,68);font-family:thsarabunnew;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">arkup </span></span><b style=\"-webkit-text-stroke-width:0px;background-color:rgb(249, 249, 249);border-width:0px;box-sizing:border-box;color:rgb(68, 68, 68);font-family:thsarabunnew;font-feature-settings:inherit;font-kerning:inherit;font-optical-sizing:inherit;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-alternates:inherit;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-variation-settings:inherit;letter-spacing:normal;line-height:inherit;margin:0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;\"><strong>L</strong></b><span style=\"background-color:rgb(249,249,249);color:rgb(68,68,68);font-family:thsarabunnew;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">anguage à¸„à¸·à¸­</span></span><span style=\"background-color:rgb(249,249,249);color:rgb(68,68,68);font-family:tahoma;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;border-width:0px;box-sizing:border-box;font-feature-settings:inherit;font-kerning:inherit;font-optical-sizing:inherit;font-stretch:inherit;font-style:normal;font-variant-alternates:inherit;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-variation-settings:inherit;font-weight:400;letter-spacing:normal;line-height:inherit;margin:0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;\">à¸ à¸²à¸©à¸²à¸„à¸­à¸¡à¸žà¸´à¸§à¹€à¸•à¸­à¸£à¹Œ</span></span><span style=\"background-color:rgb(249,249,249);color:rgb(68,68,68);font-family:thsarabunnew;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">à¸—à¸µà¹ˆà¹ƒà¸Šà¹‰à¹ƒà¸™à¸à¸²à¸£à¹à¸ªà¸”à¸‡à¸œà¸¥à¸‚à¸­à¸‡à¹€à¸­à¸à¸ªà¸²à¸£à¸šà¸™ website à¸«à¸£à¸·à¸­à¸—à¸µà¹ˆà¹€à¸£à¸²à¹€à¸£à¸µà¸¢à¸à¸à¸±à¸™à¸§à¹ˆà¸²à¹€à¸§à¹‡à¸šà¹€à¸žà¸ˆ à¸–à¸¹à¸à¸žà¸±à¸’à¸™à¸²à¹à¸¥à¸°à¸à¸³à¸«à¸™à¸”à¸¡à¸²à¸•à¸£à¸à¸²à¸™à¹‚à¸”à¸¢à¸­à¸‡à¸„à¹Œà¸à¸£ World Wide Web Consortium (W3C) </span></span><span style=\"background-color:rgb(249,249,249);color:rgb(68,68,68);font-family:tahoma;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;border-width:0px;box-sizing:border-box;font-feature-settings:inherit;font-kerning:inherit;font-optical-sizing:inherit;font-stretch:inherit;font-style:normal;font-variant-alternates:inherit;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-variation-settings:inherit;font-weight:400;letter-spacing:normal;line-height:inherit;margin:0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;\">à¹à¸¥à¸°à¸ˆà¸²à¸à¸à¸²à¸£à¸žà¸±à¸’à¸™à¸²à¸—à¸²à¸‡à¸”à¹‰à¸²à¸™ Software à¸‚à¸­à¸‡ Microsoft à¸—à¸³à¹ƒà¸«à¹‰à¸ à¸²à¸©à¸²&nbsp;HTML à¹€à¸›à¹‡à¸™à¸­à¸µà¸à¸ à¸²à¸©à¸²à¸«à¸™à¸¶à¹ˆà¸‡à¸—à¸µà¹ˆà¹ƒà¸Šà¹‰à¹€à¸‚à¸µà¸¢à¸™à¹‚à¸›à¸£à¹à¸à¸£à¸¡à¹„à¸”à¹‰ à¸«à¸£à¸·à¸­à¸—à¸µà¹ˆà¹€à¸£à¸µà¸¢à¸à¸§à¹ˆà¸² HTML Application&nbsp; HTML</span></span><span style=\"background-color:rgb(249,249,249);color:rgb(68,68,68);font-family:thsarabunnew;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"> à¹€à¸›à¹‡à¸™à¸ à¸²à¸©à¸²à¸›à¸£à¸°à¹€à¸ à¸— </span></span><a class=\"hasTip mlinkarticle\" style=\"-webkit-tap-highlight-color:rgb(30, 41, 51);-webkit-text-stroke-width:0px;background-color:rgb(249, 249, 249);box-sizing:border-box;color:rgb(55, 118, 171);font-family:thsarabunnew;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration:none;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\" href=\"https://www.mindphp.com/%E0%B8%84%E0%B8%B9%E0%B9%88%E0%B8%A1%E0%B8%B7%E0%B8%AD/73-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3/2309-markup-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3.html\" data-index=\"0\" data-article-id=\"2309\" data-title=\"Markup à¸„à¸·à¸­à¸­à¸°à¹„à¸£ à¸¡à¸²à¸£à¹Œà¸à¸­à¸±à¸› à¸„à¸·à¸­à¸ à¸²à¸©à¸²à¸„à¸­à¸¡à¸žà¸´à¸§à¹€à¸•à¸­à¸£à¹Œà¸—à¸µà¹ˆà¹ƒà¸Šà¹‰à¸­à¸˜à¸´à¸šà¸²à¸¢à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡\" title=\"Markup à¸„à¸·à¸­à¸­à¸°à¹„à¸£ à¸¡à¸²à¸£à¹Œà¸à¸­à¸±à¸› à¸„à¸·à¸­à¸ à¸²à¸©à¸²à¸„à¸­à¸¡à¸žà¸´à¸§à¹€à¸•à¸­à¸£à¹Œà¸—à¸µà¹ˆà¹ƒà¸Šà¹‰à¸­à¸˜à¸´à¸šà¸²à¸¢à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡::Markup à¸„à¸·à¸­à¸­à¸°à¹„à¸£Markup à¸«à¸£à¸·à¸­...\" data-desc=\"Markup à¸„à¸·à¸­à¸­à¸°à¹„à¸£Markup à¸«à¸£à¸·à¸­ markup language à¸„à¸·à¸­ à¸ à¸²à¸©à¸²à¸„à¸­à¸¡à¸žà¸´à¸§à¹€à¸•à¸­à¸£à¹Œ à¸‹à¸¶à¹ˆà¸‡à¹€à¸›à¹‡à¸™à¸ à¸²à¸©à¸²à¸—à¸µà¹ˆà¹à¸ªà¸”à¸‡à¸‚à¹‰à¸­à¸¡à¸¹à¸¥ à¹‚à¸„à¸£à¸‡à¸ªà¸£à¹‰à¸²à¸‡ à¸£à¸¹à¸›à¹à¸šà¸š à¸•à¸¥à¸­à¸”à¸ˆà¸™à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸­à¸·à¹ˆà¸™à¹† à¸—à¸µà¹ˆà¹€à¸à¸µà¹ˆà¸¢à¸§à¸‚à¹‰à¸­à¸‡à¹„à¸§à¹‰à¸”à¹‰à¸§à¸¢à¸à¸±à¸™ à¸‹à¸¶à¹ˆà¸‡à¸ªà¹ˆà¸§à¸™à¸™à¸µà¹‰à¹€à¸£à¸µà¸¢à¸à¸§à¹ˆà¸² à¸¡à¸²à¸£à¹Œà¸à¸­à¸±à¸› à¸ªà¹ˆà¸§à¸™à¸¡à¸²à¸à¸ˆà¸°à¸žà¸šà¹ƒà¸™à¸£à¸¹à¸›à¸‚à¸­à¸‡...\" data-image=\"\">Markup&nbsp;</a><span style=\"background-color:rgb(249,249,249);color:rgb(68,68,68);font-family:thsarabunnew;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"> &nbsp;à¸ªà¸³à¸«à¸£à¸±à¸šà¸à¸²à¸£à¸à¸²à¸£à¸ªà¸£à¹‰à¸²à¸‡à¹€à¸§à¹‡à¸šà¹€à¸žà¸ˆ à¹‚à¸”à¸¢à¹ƒà¸Šà¹‰à¸ à¸²à¸©à¸² HTML à¸ªà¸²à¸¡à¸²à¸£à¸–à¸—à¸³à¹‚à¸”à¸¢à¹ƒà¸Šà¹‰à¹‚à¸›à¸£à¹à¸à¸£à¸¡ Text Editor à¸•à¹ˆà¸²à¸‡à¹† à¹€à¸Šà¹ˆà¸™ Notepad, </span></span><a class=\"hasTip mlinkarticle\" style=\"-webkit-tap-highlight-color:rgb(30, 41, 51);-webkit-text-stroke-width:0px;background-color:rgb(249, 249, 249);box-sizing:border-box;color:rgb(55, 118, 171);font-family:thsarabunnew;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration:none;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\" href=\"https://www.mindphp.com/%E0%B8%84%E0%B8%B9%E0%B9%88%E0%B8%A1%E0%B8%B7%E0%B8%AD/73-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3/2234-editplus-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3.html\" data-index=\"1\" data-article-id=\"2234\" data-title=\"Editplus à¸„à¸·à¸­à¹‚à¸›à¸£à¹à¸à¸£à¸¡ text editor à¹ƒà¸Šà¹‰à¸ªà¸³à¸«à¸£à¸±à¸šà¹€à¸‚à¸µà¸¢à¸™à¹à¸¥à¸°à¹à¸à¹‰à¹„à¸‚ source code\" title=\"Editplus à¸„à¸·à¸­à¹‚à¸›à¸£à¹à¸à¸£à¸¡ text editor à¹ƒà¸Šà¹‰à¸ªà¸³à¸«à¸£à¸±à¸šà¹€à¸‚à¸µà¸¢à¸™à¹à¸¥à¸°à¹à¸à¹‰à¹„à¸‚ source code::Editplus à¸„à¸·à¸­à¸­à¸°à¹„à¸£...\" data-desc=\"Editplus à¸„à¸·à¸­à¸­à¸°à¹„à¸£&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; Editplus à¸„à¸·à¸­à¹‚à¸›à¸£à¹à¸à¸£à¸¡ text editor à¸•à¸±à¸§à¸«à¸™à¸¶à¹ˆà¸‡ à¸„à¸¥à¹‰à¸²à¸¢à¸à¸±à¸šà¹‚à¸›à¸£à¹à¸à¸£à¸¡ Notepad,&nbsp;Dreamweaver...\" data-image=\"https://www.mindphp.com/images/stories/encyclopedia/editplus3.png\">Editplus </a><span style=\"background-color:rgb(249,249,249);color:rgb(68,68,68);font-family:thsarabunnew;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">à¸«à¸£à¸·à¸­à¸ˆà¸°à¸­à¸²à¸¨à¸±à¸¢à¹‚à¸›à¸£à¹à¸à¸£à¸¡à¸—à¸µà¹ˆà¹€à¸›à¹‡à¸™à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸¡à¸·à¸­à¸Šà¹ˆà¸§à¸¢à¸ªà¸£à¹‰à¸²à¸‡à¹€à¸§à¹‡à¸šà¹€à¸žà¸ˆ à¹€à¸Šà¹ˆà¸™ Microsoft FrontPage, Dream Weaver à¸‹à¸¶à¹ˆà¸‡à¸­à¹à¸²à¸™à¸§à¸¢à¸„à¸§à¸²à¸¡à¸ªà¸°à¸”à¸§à¸à¹ƒà¸™à¸à¸²à¸£à¸ªà¸£à¹‰à¸²à¸‡à¸«à¸™à¹‰à¸² HTML à¸ªà¹ˆà¸§à¸™à¸à¸²à¸£à¹€à¸£à¸µà¸¢à¸à¹ƒà¸Šà¹‰à¸‡à¸²à¸™à¸«à¸£à¸·à¸­à¸—à¸”à¸ªà¸­à¸šà¸à¸²à¸£à¸—à¸³à¸‡à¸²à¸™à¸‚à¸­à¸‡à¹€à¸­à¸à¸ªà¸²à¸£ HTML à¸ˆà¸°à¹ƒà¸Šà¹‰à¹‚à¸›à¸£à¹à¸à¸£à¸¡</span></span></p><div class=\"mlinkarticle-popup\" style=\"-webkit-text-stroke-width:0px;background-color:rgb(249, 249, 249);border-width:0px;box-sizing:border-box;color:rgb(68, 68, 68);cursor:pointer;display:inline-block;font-family:thsarabunnew;font-feature-settings:inherit;font-kerning:inherit;font-optical-sizing:inherit;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-alternates:inherit;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-variation-settings:inherit;font-weight:400;letter-spacing:normal;line-height:inherit;margin:0px;orphans:2;padding:0px;position:relative;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;user-select:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;\"><a class=\"hasTip mlinkarticle\" style=\"-webkit-tap-highlight-color:rgb(30, 41, 51);box-sizing:border-box;color:rgb(55, 118, 171);text-decoration:none;\" href=\"https://www.mindphp.com/%E0%B8%84%E0%B8%B9%E0%B9%88%E0%B8%A1%E0%B8%B7%E0%B8%AD/73-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3/1849-web-browser.html\" data-index=\"2\" data-article-id=\"1849\" data-title=\"Web browser (à¹€à¸§à¹‡à¸šà¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œ) à¸„à¸·à¸­à¸­à¸°à¹„à¸£\" title=\"Web browser (à¹€à¸§à¹‡à¸šà¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œ) à¸„à¸·à¸­à¸­à¸°à¹„à¸£::Web browser&nbsp;\r\n&nbsp; &nbsp;...\" data-desc=\"Web browser&nbsp;\r\n&nbsp; &nbsp; &nbsp;à¹€à¸§à¹‡à¸šà¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œ (web browser) à¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œ à¸«à¸£à¸·à¸­ à¹‚à¸›à¸£à¹à¸à¸£à¸¡à¸”à¸¹à¹€à¸§à¹‡à¸š à¸„à¸·à¸­à¹‚à¸›à¸£à¹à¸à¸£à¸¡à¸„à¸­à¸¡à¸žà¸´à¸§à¹€à¸•à¸­à¸£à¹Œ&nbsp;\r\n\r\nWeb Browser\r\n\r\n&nbsp;\r\n&nbsp; &nbsp;...\" data-image=\"https://www.mindphp.com/images/knowledge/112560/browser.png\">web browser</a></div><p><span style=\"background-color:rgb(249,249,249);color:rgb(68,68,68);font-family:thsarabunnew;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">à¹€à¸Šà¹ˆà¸™&nbsp;</span></span><a class=\"hasTip mlinkarticle\" style=\"-webkit-tap-highlight-color:rgb(30, 41, 51);-webkit-text-stroke-width:0px;background-color:rgb(249, 249, 249);box-sizing:border-box;color:rgb(55, 118, 171);font-family:thsarabunnew;font-size:16px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration:none;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\" href=\"https://www.mindphp.com/%E0%B8%84%E0%B8%B9%E0%B9%88%E0%B8%A1%E0%B8%B7%E0%B8%AD/73-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3/2150-ie-microsoft-internet-explorer-%E0%B8%84%E0%B8%B7%E0%B8%AD%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3.html\" data-index=\"3\" data-article-id=\"2150\" data-title=\"IE Microsoft Internet Explorer à¸„à¸·à¸­à¸­à¸°à¹„à¸£ à¹„à¸­à¸­à¸µ à¹„à¸¡à¹‚à¸„à¸£à¸‹à¸­à¸Ÿà¸— à¸­à¸´à¸™à¹€à¸—à¸­à¸£à¹Œà¹€à¸™à¹‡à¸• à¹€à¸­à¹‡à¸à¹‚à¸žà¸£à¹€à¸¥à¸­à¸£à¹Œ à¸„à¸·à¸­à¹€à¸šà¸£à¸²à¹€à¸‹à¸­à¸£à¹Œ à¸‹à¸¶à¹ˆà¸‡à¸œà¸¥à¸´à¸•à¹‚à¸”à¸¢à¸šà¸£à¸´à¸©à¸±à¸— Microsoft \" title=\"IE Microsoft Internet Explorer à¸„à¸·à¸­à¸­à¸°à¹„à¸£ à¹„à¸­à¸­à¸µ à¹„à¸¡à¹‚à¸„à¸£à¸‹à¸­à¸Ÿà¸— à¸­à¸´à¸™à¹€à¸—à¸­à¸£à¹Œà¹€à¸™à¹‡à¸• à¹€à¸­à¹‡à¸à¹‚à¸žà¸£à¹€à¸¥à¸­à¸£à¹Œ à¸„à¸·à¸­à¹€à¸šà¸£à¸²à¹€à¸‹à¸­à¸£à¹Œ à¸‹à¸¶à¹ˆà¸‡à¸œà¸¥à¸´à¸•à¹‚à¸”à¸¢à¸šà¸£à¸´à¸©à¸±à¸— Microsoft ::Microsoft Internet Explorer...\" data-desc=\"Microsoft Internet Explorer à¸„à¸·à¸­à¸­à¸°à¹„à¸£\r\n&nbsp; &nbsp; &nbsp;Microsoft Internet Explorer à¸«à¸£à¸·à¸­ IE à¸„à¸·à¸­ à¹‚à¸›à¸£à¹à¸à¸£à¸¡à¹€à¸šà¸£à¸²à¹€à¸‹à¸­à¸£à¹Œà¹‚à¸›à¸£à¹à¸à¸£à¸¡à¸«à¸™à¸¶à¹ˆà¸‡ (à¸‹à¸¶à¹ˆà¸‡à¸ªà¸³à¸«à¸£à¸±à¸šà¸„à¸™à¸—à¸µà¹ˆà¹ƒà¸Šà¹‰à¸£à¸°à¸šà¸šà¸›à¸à¸´à¸šà¸±à¸•à¸´à¸à¸²à¸£ Windows à¸™à¸±à¹‰à¸™à¸£à¸¹à¹‰à¸ˆà¸±à¸à¸à¸±à¸™à¸”à¸µ...\" data-image=\"https://www.mindphp.com/images/stories/encyclopedia/ie8.jpg\">IE Microsoft Internet Explorer&nbsp; </a><span style=\"background-color:rgb(249,249,249);color:rgb(68,68,68);font-family:thsarabunnew;font-size:16px;\"><span style=\"-webkit-text-stroke-width:0px;display:inline !important;float:none;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">(IE), Mozilla Firefox, Safari, Opera, à¹à¸¥à¸° Netscape Navigator à¹€à¸›à¹‡à¸™à¸•à¹‰à¸™</span></span></p><figure class=\"image\"><img src=\"https://www.mindphp.com/images/2022/06/HTML.png\" alt=\"à¸ à¸²à¸žà¸žà¸·à¹‰à¸™à¸«à¸¥à¸±à¸‡à¹€à¸‚à¸µà¸¢à¸™à¹‚à¸›à¸£à¹à¸à¸£à¸¡ à¸¡à¸µ HTML à¸„à¸·à¸­à¸­à¸°à¹„à¸£\"></figure><p><strong style=\"-webkit-text-stroke-width:0px;background-color:rgb(249, 249, 249);border-width:0px;box-sizing:border-box;color:rgb(68, 68, 68);font-family:thsarabunnew;font-feature-settings:inherit;font-kerning:inherit;font-optical-sizing:inherit;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-alternates:inherit;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-variation-settings:inherit;letter-spacing:normal;line-height:inherit;margin:0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;\">à¸„à¸³à¸—à¸µà¹ˆà¸¨à¸±à¸žà¸—à¹Œà¸—à¸µà¹ˆà¹€à¸à¸µà¹ˆà¸¢à¸§à¸‚à¹‰à¸­à¸‡à¸à¸±à¸š HTML</strong></p><ul><li>Internet à¹€à¸„à¸£à¸·à¸­à¸‚à¹ˆà¸²à¸¢à¸„à¸­à¸¡à¸žà¸´à¸§à¹€à¸•à¸­à¸£à¹Œà¸—à¸µà¹ˆà¹ƒà¸«à¸à¹ˆà¸—à¸µà¹ˆà¸ªà¸¸à¸”à¹ƒà¸™à¹‚à¸¥à¸ à¹€à¸à¸´à¸”à¸ˆà¸²à¸à¸à¸²à¸£à¹€à¸Šà¸·à¹ˆà¸­à¸¡à¹‚à¸¢à¸‡à¸‚à¸­à¸‡à¹€à¸„à¸£à¸·à¸­à¸‚à¹ˆà¸²à¸¢à¸•à¹ˆà¸²à¸‡à¹† à¹€à¸‚à¹‰à¸²à¸”à¹‰à¸§à¸¢à¸à¸±à¸™</li><li>Hypertext à¸£à¸¹à¸›à¹à¸šà¸šà¹€à¸­à¸à¸ªà¸²à¸£à¸—à¸µà¹ˆà¸šà¸£à¸£à¸ˆà¸¸à¸à¸²à¸£à¹€à¸Šà¸·à¹ˆà¸­à¸¡à¹‚à¸¢à¸‡à¹„à¸›à¸¢à¸±à¸‡à¹€à¸­à¸à¸ªà¸²à¸£à¸­à¸·à¹ˆà¸™à¹† à¸‹à¸¶à¹ˆà¸‡à¸ªà¸²à¸¡à¸²à¸£à¸–à¹ƒà¸Šà¹‰à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡ à¸«à¸£à¸·à¸­à¸£à¸¹à¸› à¹€à¸›à¹‡à¸™à¸ˆà¸¸à¸”à¹€à¸Šà¸·à¹ˆà¸­à¸¡à¹‚à¸¢à¸‡</li><li>WWW à¸¢à¹ˆà¸­à¸ˆà¸²à¸ World Wide Web à¹€à¸›à¹‡à¸™à¸à¸²à¸£à¸ªà¸·à¹ˆà¸­à¸ªà¸²à¸£à¸”à¹‰à¸§à¸¢à¸à¸²à¸£à¹€à¸Šà¸·à¹ˆà¸­à¸¡à¹‚à¸¢à¸‡à¹€à¸„à¸£à¸·à¸­à¸‚à¹ˆà¸²à¸¢à¸‚à¹ˆà¸²à¸§à¸ªà¸²à¸£à¹à¸šà¸šà¹ƒà¸¢à¹à¸¡à¸‡à¸¡à¸¸à¸¡(Web) à¹à¸ªà¸”à¸‡à¸œà¸¥à¸”à¹‰à¸§à¸¢à¹€à¸­à¸à¸ªà¸²à¸£à¹„à¸®à¹€à¸›à¸­à¸£à¹Œà¹€à¸—à¹‡à¸à¸‹à¹Œ</li><li>HTTP à¸¢à¹ˆà¸­à¸¡à¸²à¸ˆà¸²à¸ Hypertext Transfer Protocol à¹€à¸›à¹‡à¸™à¸£à¸¹à¸›à¹à¸šà¸šà¸à¸²à¸£à¸ªà¸·à¹ˆà¸­à¸ªà¸²à¸£à¸—à¸µà¹ˆà¹ƒà¸Šà¹‰à¹ƒà¸™à¸à¸²à¸£à¸£à¸±à¸šà¸ªà¹ˆà¸‡à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¹„à¸®à¹€à¸›à¸­à¸£à¹Œà¹€à¸—à¹‡à¸à¸‹à¹Œà¹ƒà¸™à¹€à¸„à¸£à¸·à¸­à¸‚à¹ˆà¸²à¸¢à¸­à¸´à¸™à¹€à¸—à¸­à¸£à¹Œà¹€à¸™à¹‡à¸•</li><li>Web Browser à¹‚à¸›à¸£à¹à¸à¸£à¸¡à¸ªà¸³à¸«à¸£à¸±à¸šà¹à¸ªà¸”à¸‡à¸œà¸¥à¸«à¸™à¹‰à¸²à¹€à¸§à¹‡à¸š à¹€à¸Šà¹ˆà¸™ Internet Explorer, Mozilla Firefox à¹à¸¥à¸° Google Chrome à¹€à¸›à¹‡à¸™à¸•à¹‰à¸™</li><li>Web Page à¸«à¸™à¹‰à¸²à¹€à¸­à¸à¸ªà¸²à¸£à¸—à¸µà¹ˆà¸­à¸¢à¸¹à¹ˆà¹ƒà¸™à¸£à¸¹à¸›à¸‚à¸­à¸‡à¹„à¸®à¹€à¸›à¸­à¸£à¹Œà¹€à¸—à¹‡à¸à¸‹à¹Œ</li><li>Web Site à¸à¸¥à¸¸à¹ˆà¸¡à¸‚à¸­à¸‡à¸«à¸™à¹‰à¸²à¹€à¸§à¹‡à¸šà¸«à¸¥à¸²à¸¢à¹† à¸«à¸™à¹‰à¸²à¸£à¸§à¸¡à¹€à¸‚à¹‰à¸²à¸”à¹‰à¸§à¸¢à¸à¸±à¸™</li><li>Home Page à¸«à¸™à¹‰à¸²à¹€à¸§à¹‡à¸š à¸«à¸™à¹‰à¸²à¹à¸£à¸à¸‚à¸­à¸‡à¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œ</li><li>Web Site à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¹ƒà¸«à¹‰à¸šà¸£à¸´à¸à¸²à¸£à¸—à¸µà¹ˆà¹€à¸›à¹‡à¸™à¸—à¸µà¹ˆà¹€à¸à¹‡à¸šà¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸‚à¸­à¸‡ à¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œ</li></ul><p>à¸ªà¸£à¸¸à¸› HTML à¹€à¸›à¹‡à¸™à¸ à¸²à¸©à¸²à¸„à¸­à¸¡à¸žà¸´à¸§à¹€à¸•à¸­à¸£à¹Œà¸—à¸µà¹ˆà¸¡à¸µà¸šà¸—à¸šà¸²à¸—à¸­à¸¢à¹ˆà¸²à¸‡à¸¡à¸²à¸à¹ƒà¸™à¸¢à¸¸à¸„à¸›à¸±à¸ˆà¸ˆà¸¸à¸šà¸±à¸™ à¹‚à¸„à¸£à¸‡à¸ªà¸£à¹‰à¸²à¸‡à¸‚à¸­à¸‡ HTML à¸ˆà¸°à¹€à¸›à¹‡à¸™à¹ƒà¸™à¸£à¸¹à¸›à¹à¸šà¸šà¸‚à¸­à¸‡ Tag à¸•à¹ˆà¸²à¸‡à¹† à¹à¸¥à¸° Web Browser à¸ˆà¸°à¹à¸›à¸¥à¸„à¸§à¸²à¸¡à¸‚à¸­à¸‡ Tag à¹à¸•à¹ˆà¸¥à¸° Tag à¸­à¸­à¸à¸¡à¸²à¹€à¸›à¹‡à¸™à¸«à¸™à¹‰à¸²à¸•à¸²à¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œ à¹€à¸žà¸£à¸²à¸°à¸ˆà¸²à¸à¸£à¸¹à¸›à¹à¸šà¸šà¸‚à¸­à¸‡à¸ à¸²à¸©à¸²à¸ªà¸³à¸«à¸£à¸±à¸šà¸à¸²à¸£à¸ªà¸£à¹‰à¸²à¸‡à¸«à¸™à¹‰à¸²à¹€à¸§à¹‡à¸š à¸—à¸µà¹ˆà¸¡à¸µà¸¥à¸±à¸à¸©à¸“à¸°à¹€à¸›à¹‡à¸™à¹€à¸­à¸à¸ªà¸²à¸£à¹à¸šà¸šà¹„à¸®à¹€à¸›à¸­à¸£à¹Œà¹€à¸—à¹‡à¸à¸‹à¹Œà¸‹à¸¶à¹ˆà¸‡à¸¡à¸µà¸„à¸¸à¸“à¸ªà¸¡à¸šà¸±à¸•à¸´à¸—à¸µà¹ˆà¸ªà¸²à¸¡à¸²à¸£à¸– à¹€à¸Šà¸·à¹ˆà¸­à¸¡à¹‚à¸¢à¸‡à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸•à¹ˆà¸²à¸‡à¹† à¹„à¸›à¸¢à¸±à¸‡ à¸«à¸™à¹‰à¸²à¹€à¸§à¹‡à¸šà¸­à¸·à¹ˆà¸™à¹† à¸•à¸²à¸¡à¸•à¹‰à¸­à¸‡à¸à¸²à¸£à¹„à¸”à¹‰à¸—à¸³ à¹ƒà¸«à¹‰ à¸à¸²à¸£à¹€à¸Šà¸·à¹ˆà¸­à¸¡à¹‚à¸¢à¸‡à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¹ƒà¸™à¸«à¸™à¹‰à¸²à¹€à¸§à¹‡à¸šà¸•à¹ˆà¸²à¸‡à¹† à¹ƒà¸™à¸­à¸´à¸™à¹€à¸—à¸­à¸£à¹Œà¹€à¸™à¹‡à¸•à¹€à¸›à¹‡à¸™à¹„à¸›à¸­à¸¢à¹ˆà¸²à¸‡</p>', ' HTML à¸¢à¹ˆà¸­à¸¡à¸²à¸ˆà¸²à¸ Hyper Text Markup Language à¸„à¸·à¸­à¸ à¸²à¸©à¸²à¸„à¸­à¸¡à¸žà¸´à¸§à¹€à¸•à¸­à¸£à¹Œà¸—à¸µà¹ˆà¹ƒà¸Šà¹‰à¹ƒà¸™à¸à¸²à¸£à¹à¸ªà¸”à¸‡à¸œà¸¥à¸‚à¸­à¸‡à¹€à¸­à¸à¸ªà¸²à¸£à¸šà¸™ web', 'Programing', '2023-05-17 04:54:46', 3, 'poom'),
(41, 'CSS à¸„à¸·à¸­à¸­à¸°à¹„à¸£ à¸¡à¸µà¸›à¸£à¸°à¹‚à¸¢à¸Šà¸™à¹Œ à¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£', '196180170020230517_120744.jpg', '<p>CSS à¸„à¸·à¸­à¸­à¸°à¹„à¸£</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CSS à¸„à¸·à¸­ à¸ à¸²à¸©à¸²à¸—à¸µà¹ˆà¹ƒà¸Šà¹‰à¸ªà¸³à¸«à¸£à¸±à¸šà¸•à¸à¹à¸•à¹ˆà¸‡à¹€à¸­à¸à¸ªà¸²à¸£ HTML/XHTML à¹ƒà¸«à¹‰à¸¡à¸µà¸«à¸™à¹‰à¸²à¸•à¸² à¸ªà¸µà¸ªà¸±à¸™ à¸£à¸°à¸¢à¸°à¸«à¹ˆà¸²à¸‡ à¸žà¸·à¹‰à¸™à¸«à¸¥à¸±à¸‡ à¹€à¸ªà¹‰à¸™à¸‚à¸­à¸šà¹à¸¥à¸°à¸­à¸·à¹ˆà¸™à¹† à¸•à¸²à¸¡à¸—à¸µà¹ˆà¸•à¹‰à¸­à¸‡à¸à¸²à¸£ CSS à¸¢à¹ˆà¸­à¸¡à¸²à¸ˆà¸²à¸ Cascading Style Sheets à¸¡à¸µà¸¥à¸±à¸à¸©à¸“à¸°à¹€à¸›à¹‡à¸™à¸ à¸²à¸©à¸²à¸—à¸µà¹ˆà¸¡à¸µà¸£à¸¹à¸›à¹à¸šà¸šà¹ƒà¸™à¸à¸²à¸£à¹€à¸‚à¸µà¸¢à¸™ Syntax à¹à¸šà¸šà¹€à¸‰à¸žà¸²à¸°à¹à¸¥à¸°à¹„à¸”à¹‰à¸–à¸¹à¸à¸à¸³à¸«à¸™à¸”à¸¡à¸²à¸•à¸£à¸à¸²à¸™à¹‚à¸”à¸¢ W3C à¹€à¸›à¹‡à¸™à¸ à¸²à¸©à¸²à¸«à¸™à¸¶à¹ˆà¸‡à¹ƒà¸™à¸à¸²à¸£à¸•à¸à¹à¸•à¹ˆà¸‡à¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œ à¹„à¸”à¹‰à¸£à¸±à¸šà¸„à¸§à¸²à¸¡à¸™à¸´à¸¢à¸¡à¸­à¸¢à¹ˆà¸²à¸‡à¹à¸žà¸£à¹ˆà¸«à¸¥à¸²à¸¢</p><figure class=\"image\"><img src=\"https://blog.sogoodweb.com/upload/510/8fqvrLbUfr.jpg\"></figure><p>à¸›à¸£à¸°à¹‚à¸¢à¸Šà¸™à¹Œà¸‚à¸­à¸‡ CSS</p><p>CSS à¸¡à¸µà¸›à¸£à¸°à¹‚à¸¢à¸Šà¸™à¹Œà¸­à¸¢à¹ˆà¸²à¸‡à¸«à¸¥à¸²à¸à¸«à¸¥à¸²à¸¢ à¸‹à¸¶à¹ˆà¸‡à¹„à¸”à¹‰à¹à¸à¹ˆ</p><p>1.à¸Šà¹ˆà¸§à¸¢à¹ƒà¸«à¹‰à¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¸ à¸²à¸¢à¹ƒà¸™à¹€à¸­à¸à¸ªà¸²à¸£ HTML à¸¡à¸µà¸„à¸§à¸²à¸¡à¹€à¸‚à¹‰à¸²à¹ƒà¸ˆà¹„à¸”à¹‰à¸‡à¹ˆà¸²à¸¢à¸‚à¸¶à¹‰à¸™à¹à¸¥à¸°à¹ƒà¸™à¸à¸²à¸£à¹à¸à¹‰à¹„à¸‚à¹€à¸­à¸à¸ªà¸²à¸£à¸à¹‡à¸ªà¸²à¸¡à¸²à¸£à¸–à¸—à¸³à¹„à¸”à¹‰à¸‡à¹ˆà¸²à¸¢à¸à¸§à¹ˆà¸²à¹€à¸”à¸´à¸¡ à¹€à¸žà¸£à¸²à¸°à¸à¸²à¸£à¹ƒà¸Šà¹‰ CSS à¸ˆà¸°à¸Šà¹ˆà¸§à¸¢à¸¥à¸”à¸à¸²à¸£à¹ƒà¸Šà¹‰à¸ à¸²à¸©à¸² HTML à¸¥à¸‡à¹„à¸”à¹‰à¹ƒà¸™à¸£à¸°à¸”à¸±à¸šà¸«à¸™à¸¶à¹ˆà¸‡ à¹à¸¥à¸°à¹à¸¢à¸à¸£à¸°à¸«à¸§à¹ˆà¸²à¸‡à¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¸à¸±à¸šà¸£à¸¹à¸›à¹à¸šà¸šà¹ƒà¸™à¸à¸²à¸£à¹à¸ªà¸”à¸‡à¸œà¸¥à¹„à¸”à¹‰à¸­à¸¢à¹ˆà¸²à¸‡à¸Šà¸±à¸”à¹€à¸ˆà¸™</p><p>2.à¸—à¸³à¹ƒà¸«à¹‰à¸ªà¸²à¸¡à¸²à¸£à¸–à¸”à¸²à¸§à¸™à¹Œà¹‚à¸«à¸¥à¸”à¹„à¸Ÿà¸¥à¹Œà¹„à¸”à¹‰à¹€à¸£à¹‡à¸§ à¹€à¸™à¸·à¹ˆà¸­à¸‡à¸ˆà¸²à¸ code à¹ƒà¸™à¹€à¸­à¸à¸ªà¸²à¸£ HTML à¸¥à¸”à¸¥à¸‡ à¸ˆà¸¶à¸‡à¸—à¸³à¹ƒà¸«à¹‰à¹„à¸Ÿà¸¥à¹Œà¸¡à¸µà¸‚à¸™à¸²à¸”à¹€à¸¥à¹‡à¸à¸¥à¸‡</p><p>3.à¸ªà¸²à¸¡à¸²à¸£à¸–à¸à¸³à¸«à¸™à¸”à¸£à¸¹à¸›à¹à¸šà¸šà¸à¸²à¸£à¹à¸ªà¸”à¸œà¸¥à¸ˆà¸²à¸à¸„à¸³à¸ªà¸±à¹ˆà¸‡ style sheet à¸Šà¸¸à¸”à¹€à¸”à¸µà¸¢à¸§à¸à¸±à¸™ à¹ƒà¸«à¹‰à¸¡à¸µà¸à¸²à¸£à¹à¸ªà¸”à¸‡à¸œà¸¥à¹ƒà¸™à¹€à¸­à¸à¸ªà¸²à¸£à¹à¸šà¸šà¹€à¸”à¸µà¸¢à¸§à¸—à¸±à¹‰à¸‡à¸«à¸™à¹‰à¸²à¸«à¸£à¸·à¸­à¹ƒà¸™à¸—à¸¸à¸à¹† à¸«à¸™à¹‰à¸²à¹„à¸”à¹‰ à¸Šà¹ˆà¸§à¸¢à¸¥à¸”à¹€à¸§à¸¥à¸²à¹ƒà¸™à¸à¸²à¸£à¸›à¸£à¸±à¸šà¸›à¸£à¸¸à¸‡à¹à¸¥à¸°à¸—à¸³à¹ƒà¸«à¹‰à¸à¸²à¸£à¸ªà¸£à¹‰à¸²à¸‡à¹€à¸­à¸à¸ªà¸²à¸£à¸šà¸™à¹€à¸§à¹‡à¸šà¸¡à¸µà¸„à¸§à¸²à¸¡à¸£à¸§à¸”à¹€à¸£à¹‡à¸§à¸¢à¸´à¹ˆà¸‡à¸‚à¸¶à¹‰à¸™ à¸™à¸­à¸à¸ˆà¸²à¸à¸™à¸µà¹‰à¸¢à¸±à¸‡à¸ªà¸²à¸¡à¸²à¸£à¸–à¸„à¸§à¸šà¸„à¸¸à¸¡à¸à¸²à¸£à¹à¸ªà¸”à¸‡à¸œà¸¥ à¹ƒà¸«à¹‰à¸„à¸¥à¹‰à¸²à¸¢à¸«à¸£à¸·à¸­à¹€à¸«à¸¡à¸·à¸­à¸™à¸à¸±à¸™à¹„à¸”à¹‰à¹ƒà¸™à¸«à¸¥à¸²à¸¢ Web Browser</p><p>4.à¸Šà¹ˆà¸§à¸¢à¹ƒà¸™à¸à¸²à¸£à¸à¸³à¸«à¸™à¸”à¸à¸²à¸£à¹à¸ªà¸”à¸‡à¸œà¸¥à¹ƒà¸™à¸£à¸¹à¸›à¹à¸šà¸šà¸—à¸µà¹ˆà¸¡à¸µà¸„à¸§à¸²à¸¡à¹€à¸«à¸¡à¸²à¸°à¸à¸±à¸šà¸ªà¸·à¹ˆà¸­à¸•à¹ˆà¸²à¸‡à¹† à¹„à¸”à¹‰à¹€à¸›à¹‡à¸™à¸­à¸¢à¹ˆà¸²à¸‡à¸”à¸µ</p><p>5.à¸—à¸³à¹ƒà¸«à¹‰à¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œà¸¡à¸µà¸„à¸§à¸²à¸¡à¹€à¸›à¹‡à¸™à¸¡à¸²à¸•à¸£à¸à¸²à¸™à¸¡à¸²à¸à¸‚à¸¶à¹‰à¸™à¹à¸¥à¸°à¸¡à¸µà¸„à¸§à¸²à¸¡à¸—à¸±à¸™à¸ªà¸¡à¸±à¸¢ à¸ªà¸²à¸¡à¸²à¸£à¸–à¸£à¸­à¸‡à¸£à¸±à¸šà¸à¸²à¸£à¹ƒà¸Šà¹‰à¸‡à¸²à¸™à¹ƒà¸™à¸­à¸™à¸²à¸„à¸•à¹„à¸”à¹‰à¸”à¸µ</p>', 'CSS à¸„à¸·à¸­ à¸ à¸²à¸©à¸²à¸—à¸µà¹ˆà¹ƒà¸Šà¹‰à¸ªà¸³à¸«à¸£à¸±à¸šà¸•à¸à¹à¸•à¹ˆà¸‡à¹€à¸­à¸à¸ªà¸²à¸£ HTML/XHTML à¹ƒà¸«à¹‰à¸¡à¸µà¸«à¸™à¹‰à¸²à¸•à¸² à¸ªà¸µà¸ªà¸±à¸™ à¸£à¸°à¸¢à¸°à¸«à¹ˆà¸²à¸‡ à¸žà¸·à¹‰à¸™à¸«', 'Programing', '2023-05-17 05:07:44', 1, 'poom');
INSERT INTO `article_tb` (`id_article`, `title`, `header_image`, `content`, `description`, `categories`, `time_stamp`, `views`, `username`) VALUES
(42, 'JavaScript à¸„à¸·à¸­à¸­à¸°à¹„à¸£', '162212523320230517_125103.jpg', '<p>JavaScript à¸„à¸·à¸­à¸­à¸°à¹„à¸£<br>JavaScript à¹€à¸›à¹‡à¸™à¸ à¸²à¸©à¸²à¹‚à¸›à¸£à¹à¸à¸£à¸¡à¸—à¸µà¹ˆà¸™à¸±à¸à¸žà¸±à¸’à¸™à¸²à¹ƒà¸Šà¹‰à¹ƒà¸™à¸à¸²à¸£à¸ªà¸£à¹‰à¸²à¸‡à¸«à¸™à¹‰à¸²à¹€à¸§à¹‡à¸šà¹à¸šà¸šà¸­à¸´à¸™à¹€à¸—à¸­à¸£à¹Œà¹à¸­à¸„à¸—à¸µà¸Ÿ à¸•à¸±à¹‰à¸‡à¹à¸•à¹ˆà¸à¸²à¸£à¸£à¸µà¹€à¸Ÿà¸£à¸Šà¸Ÿà¸µà¸”à¸ªà¸·à¹ˆà¸­à¹‚à¸‹à¹€à¸Šà¸µà¸¢à¸¥à¹„à¸›à¸ˆà¸™à¸–à¸¶à¸‡à¸à¸²à¸£à¹à¸ªà¸”à¸‡à¸ à¸²à¸žà¹€à¸„à¸¥à¸·à¹ˆà¸­à¸™à¹„à¸«à¸§à¹à¸¥à¸°à¹à¸œà¸™à¸—à¸µà¹ˆà¹à¸šà¸šà¸­à¸´à¸™à¹€à¸—à¸­à¸£à¹Œà¹à¸­à¸„à¸—à¸µà¸Ÿ à¸Ÿà¸±à¸‡à¸à¹Œà¸Šà¸±à¸™à¸‚à¸­à¸‡ JavaScript à¸ªà¸²à¸¡à¸²à¸£à¸–à¸›à¸£à¸±à¸šà¸›à¸£à¸¸à¸‡à¸›à¸£à¸°à¸ªà¸šà¸à¸²à¸£à¸“à¹Œà¸—à¸µà¹ˆà¸œà¸¹à¹‰à¹ƒà¸Šà¹‰à¸ˆà¸°à¹„à¸”à¹‰à¸£à¸±à¸šà¸ˆà¸²à¸à¸à¸²à¸£à¹ƒà¸Šà¹‰à¸‡à¸²à¸™à¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œ à¹à¸¥à¸°à¹ƒà¸™à¸à¸²à¸™à¸°à¸—à¸µà¹ˆà¹€à¸›à¹‡à¸™à¸ à¸²à¸©à¸²à¹ƒà¸™à¸à¸²à¸£à¹€à¸‚à¸µà¸¢à¸™à¸ªà¸„à¸£à¸´à¸›à¸•à¹Œà¸à¸±à¹ˆà¸‡à¹„à¸„à¸¥à¹€à¸­à¹‡à¸™à¸•à¹Œ à¸ˆà¸¶à¸‡à¹€à¸›à¹‡à¸™à¸«à¸™à¸¶à¹ˆà¸‡à¹ƒà¸™à¹€à¸—à¸„à¹‚à¸™à¹‚à¸¥à¸¢à¸µà¸«à¸¥à¸±à¸à¸‚à¸­à¸‡ World Wide Web à¸¢à¸à¸•à¸±à¸§à¸­à¸¢à¹ˆà¸²à¸‡à¹€à¸Šà¹ˆà¸™ à¹€à¸¡à¸·à¹ˆà¸­à¸„à¸¸à¸“à¸—à¹ˆà¸­à¸‡à¹€à¸§à¹‡à¸šà¹à¸¥à¹‰à¸§à¹€à¸«à¹‡à¸™à¸ à¸²à¸žà¸ªà¹„à¸¥à¸”à¹Œ à¹€à¸¡à¸™à¸¹à¸”à¸£à¹‡à¸­à¸›à¸”à¸²à¸§à¸™à¹Œà¹à¸šà¸šà¸„à¸¥à¸´à¸à¹ƒà¸«à¹‰à¹à¸ªà¸”à¸‡à¸œà¸¥ à¸«à¸£à¸·à¸­à¸ªà¸µà¸­à¸‡à¸„à¹Œà¸›à¸£à¸°à¸à¸­à¸šà¸—à¸µà¹ˆà¹€à¸›à¸¥à¸µà¹ˆà¸¢à¸™à¹à¸šà¸šà¹„à¸”à¸™à¸²à¸¡à¸´à¸à¸šà¸™à¸«à¸™à¹‰à¸²à¹€à¸§à¹‡à¸š à¸™à¸±à¹ˆà¸™à¸„à¸·à¸­à¸„à¸¸à¸“à¹€à¸«à¹‡à¸™à¹€à¸­à¸Ÿà¹€à¸Ÿà¸à¸•à¹Œà¸‚à¸­à¸‡ JavaScript</p><p>JavaScript à¸™à¸³à¹„à¸›à¹ƒà¸Šà¹‰à¸—à¸³à¸­à¸°à¹„à¸£<br>à¹à¸•à¹ˆà¸à¹ˆà¸­à¸™à¹€à¸§à¹‡à¸šà¹€à¸žà¸ˆà¹€à¸›à¹‡à¸™à¹à¸šà¸šà¸„à¸‡à¸—à¸µà¹ˆà¸„à¸¥à¹‰à¸²à¸¢à¸à¸±à¸šà¸«à¸™à¹‰à¸²à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­ à¹‚à¸”à¸¢à¸«à¸¥à¸±à¸à¹à¸¥à¹‰à¸§à¸«à¸™à¹‰à¸²à¹€à¸žà¸ˆà¸„à¸‡à¸—à¸µà¹ˆà¹à¸ªà¸”à¸‡à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¹ƒà¸™à¹€à¸„à¹‰à¸²à¹‚à¸„à¸£à¸‡à¸—à¸µà¹ˆà¸•à¸²à¸¢à¸•à¸±à¸§ à¹à¸¥à¸°à¹„à¸¡à¹ˆà¹„à¸”à¹‰à¸—à¸³à¸—à¸¸à¸à¸­à¸¢à¹ˆà¸²à¸‡à¸—à¸µà¹ˆà¸•à¸­à¸™à¸™à¸µà¹‰à¹€à¸£à¸²à¸„à¸²à¸”à¸«à¸§à¸±à¸‡à¸ˆà¸²à¸à¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œà¸ªà¸¡à¸±à¸¢à¹ƒà¸«à¸¡à¹ˆ JavaScript à¹€à¸à¸´à¸”à¸‚à¸¶à¹‰à¸™à¹ƒà¸™à¸à¸²à¸™à¸°à¹€à¸—à¸„à¹‚à¸™à¹‚à¸¥à¸¢à¸µà¸à¸±à¹ˆà¸‡à¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œà¹€à¸žà¸·à¹ˆà¸­à¸—à¸³à¹ƒà¸«à¹‰à¹€à¸§à¹‡à¸šà¹à¸­à¸›à¸žà¸¥à¸´à¹€à¸„à¸Šà¸±à¸™à¸¡à¸µà¸„à¸§à¸²à¸¡à¹€à¸›à¹‡à¸™à¹„à¸”à¸™à¸²à¸¡à¸´à¸à¸¡à¸²à¸à¸‚à¸¶à¹‰à¸™ à¹€à¸¡à¸·à¹ˆà¸­à¹ƒà¸Šà¹‰ JavaScript à¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œà¸ˆà¸°à¸ªà¸²à¸¡à¸²à¸£à¸–à¸•à¸­à¸šà¸ªà¸™à¸­à¸‡à¸•à¹ˆà¸­à¸à¸²à¸£à¹‚à¸•à¹‰à¸•à¸­à¸šà¸‚à¸­à¸‡à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰à¹à¸¥à¸°à¹€à¸›à¸¥à¸µà¹ˆà¸¢à¸™à¹à¸›à¸¥à¸‡à¹€à¸„à¹‰à¸²à¹‚à¸„à¸£à¸‡à¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¸šà¸™à¹€à¸§à¹‡à¸šà¹€à¸žà¸ˆà¹„à¸”à¹‰</p><p>à¹€à¸¡à¸·à¹ˆà¸­à¸ à¸²à¸©à¸²à¸œà¹ˆà¸²à¸™à¸à¸²à¸£à¸žà¸±à¸’à¸™à¸²à¸­à¸¢à¹ˆà¸²à¸‡à¹€à¸•à¹‡à¸¡à¸—à¸µà¹ˆ à¸™à¸±à¸à¸žà¸±à¸’à¸™à¸² JavaScript à¸à¹‡à¸ªà¸£à¹‰à¸²à¸‡à¹„à¸¥à¸šà¸£à¸²à¸£à¸µ à¹€à¸Ÿà¸£à¸¡à¹€à¸§à¸´à¸£à¹Œà¸ à¹à¸¥à¸°à¹à¸™à¸§à¸—à¸²à¸‡à¸›à¸à¸´à¸šà¸±à¸•à¸´à¹ƒà¸™à¸à¸²à¸£à¹€à¸‚à¸µà¸¢à¸™à¹‚à¸›à¸£à¹à¸à¸£à¸¡ à¹à¸¥à¹‰à¸§à¹€à¸£à¸´à¹ˆà¸¡à¸™à¸³ JavaScript à¹„à¸›à¹ƒà¸Šà¹‰à¸™à¸­à¸à¹€à¸§à¹‡à¸šà¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œ à¸§à¸±à¸™à¸™à¸µà¹‰ à¸„à¸¸à¸“à¸ªà¸²à¸¡à¸²à¸£à¸–à¹ƒà¸Šà¹‰ JavaScript à¸ªà¸³à¸«à¸£à¸±à¸šà¸—à¸±à¹ˆà¸‡à¸à¸²à¸£à¸žà¸±à¸’à¸™à¸²à¸à¸±à¹ˆà¸‡à¹„à¸„à¸¥à¹€à¸­à¹‡à¸™à¸•à¹Œà¹à¸¥à¸°à¸à¸±à¹ˆà¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œ à¹€à¸£à¸²à¹ƒà¸«à¹‰à¸•à¸±à¸§à¸­à¸¢à¹ˆà¸²à¸‡à¸à¸£à¸“à¸µà¸à¸²à¸£à¹ƒà¸Šà¹‰à¸žà¸šà¸—à¸µà¹ˆà¸žà¸šà¸šà¹ˆà¸­à¸¢à¸šà¸²à¸‡à¸ªà¹ˆà¸§à¸™à¹ƒà¸™à¸«à¸±à¸§à¸‚à¹‰à¸­à¸¢à¹ˆà¸­à¸¢à¸•à¹ˆà¸­à¹„à¸›à¸™à¸µà¹‰:</p><p>à¹à¸•à¹ˆà¸à¹ˆà¸­à¸™à¹€à¸§à¹‡à¸šà¹€à¸žà¸ˆà¹€à¸›à¹‡à¸™à¹à¸šà¸šà¸„à¸‡à¸—à¸µà¹ˆà¸„à¸¥à¹‰à¸²à¸¢à¸à¸±à¸šà¸«à¸™à¹‰à¸²à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­ à¹‚à¸”à¸¢à¸«à¸¥à¸±à¸à¹à¸¥à¹‰à¸§à¸«à¸™à¹‰à¸²à¹€à¸žà¸ˆà¸„à¸‡à¸—à¸µà¹ˆà¹à¸ªà¸”à¸‡à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¹ƒà¸™à¹€à¸„à¹‰à¸²à¹‚à¸„à¸£à¸‡à¸—à¸µà¹ˆà¸•à¸²à¸¢à¸•à¸±à¸§ à¹à¸¥à¸°à¹„à¸¡à¹ˆà¹„à¸”à¹‰à¸—à¸³à¸—à¸¸à¸à¸­à¸¢à¹ˆà¸²à¸‡à¸—à¸µà¹ˆà¸•à¸­à¸™à¸™à¸µà¹‰à¹€à¸£à¸²à¸„à¸²à¸”à¸«à¸§à¸±à¸‡à¸ˆà¸²à¸à¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œà¸ªà¸¡à¸±à¸¢à¹ƒà¸«à¸¡à¹ˆ JavaScript à¹€à¸à¸´à¸”à¸‚à¸¶à¹‰à¸™à¹ƒà¸™à¸à¸²à¸™à¸°à¹€à¸—à¸„à¹‚à¸™à¹‚à¸¥à¸¢à¸µà¸à¸±à¹ˆà¸‡à¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œà¹€à¸žà¸·à¹ˆà¸­à¸—à¸³à¹ƒà¸«à¹‰à¹€à¸§à¹‡à¸šà¹à¸­à¸›à¸žà¸¥à¸´à¹€à¸„à¸Šà¸±à¸™à¸¡à¸µà¸„à¸§à¸²à¸¡à¹€à¸›à¹‡à¸™à¹„à¸”à¸™à¸²à¸¡à¸´à¸à¸¡à¸²à¸à¸‚à¸¶à¹‰à¸™ à¹€à¸¡à¸·à¹ˆà¸­à¹ƒà¸Šà¹‰ JavaScript à¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œà¸ˆà¸°à¸ªà¸²à¸¡à¸²à¸£à¸–à¸•à¸­à¸šà¸ªà¸™à¸­à¸‡à¸•à¹ˆà¸­à¸à¸²à¸£à¹‚à¸•à¹‰à¸•à¸­à¸šà¸‚à¸­à¸‡à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰à¹à¸¥à¸°à¹€à¸›à¸¥à¸µà¹ˆà¸¢à¸™à¹à¸›à¸¥à¸‡à¹€à¸„à¹‰à¸²à¹‚à¸„à¸£à¸‡à¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¸šà¸™à¹€à¸§à¹‡à¸šà¹€à¸žà¸ˆà¹„à¸”à¹‰</p><p>à¹€à¸¡à¸·à¹ˆà¸­à¸ à¸²à¸©à¸²à¸œà¹ˆà¸²à¸™à¸à¸²à¸£à¸žà¸±à¸’à¸™à¸²à¸­à¸¢à¹ˆà¸²à¸‡à¹€à¸•à¹‡à¸¡à¸—à¸µà¹ˆ à¸™à¸±à¸à¸žà¸±à¸’à¸™à¸² JavaScript à¸à¹‡à¸ªà¸£à¹‰à¸²à¸‡à¹„à¸¥à¸šà¸£à¸²à¸£à¸µ à¹€à¸Ÿà¸£à¸¡à¹€à¸§à¸´à¸£à¹Œà¸ à¹à¸¥à¸°à¹à¸™à¸§à¸—à¸²à¸‡à¸›à¸à¸´à¸šà¸±à¸•à¸´à¹ƒà¸™à¸à¸²à¸£à¹€à¸‚à¸µà¸¢à¸™à¹‚à¸›à¸£à¹à¸à¸£à¸¡ à¹à¸¥à¹‰à¸§à¹€à¸£à¸´à¹ˆà¸¡à¸™à¸³ JavaScript à¹„à¸›à¹ƒà¸Šà¹‰à¸™à¸­à¸à¹€à¸§à¹‡à¸šà¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œ à¸§à¸±à¸™à¸™à¸µà¹‰ à¸„à¸¸à¸“à¸ªà¸²à¸¡à¸²à¸£à¸–à¹ƒà¸Šà¹‰ JavaScript à¸ªà¸³à¸«à¸£à¸±à¸šà¸—à¸±à¹ˆà¸‡à¸à¸²à¸£à¸žà¸±à¸’à¸™à¸²à¸à¸±à¹ˆà¸‡à¹„à¸„à¸¥à¹€à¸­à¹‡à¸™à¸•à¹Œà¹à¸¥à¸°à¸à¸±à¹ˆà¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œ à¹€à¸£à¸²à¹ƒà¸«à¹‰à¸•à¸±à¸§à¸­à¸¢à¹ˆà¸²à¸‡à¸à¸£à¸“à¸µà¸à¸²à¸£à¹ƒà¸Šà¹‰à¸žà¸šà¸—à¸µà¹ˆà¸žà¸šà¸šà¹ˆà¸­à¸¢à¸šà¸²à¸‡à¸ªà¹ˆà¸§à¸™à¹ƒà¸™à¸«à¸±à¸§à¸‚à¹‰à¸­à¸¢à¹ˆà¸­à¸¢à¸•à¹ˆà¸­à¹„à¸›à¸™à¸µà¹‰:</p><p>&nbsp;</p><p>JavaScript à¸—à¸³à¸‡à¸²à¸™à¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£<br>à¸ à¸²à¸©à¸²à¹‚à¸›à¸£à¹à¸à¸£à¸¡à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”à¸—à¸³à¸‡à¸²à¸™à¸”à¹‰à¸§à¸¢à¸à¸²à¸£à¹à¸›à¸¥à¹„à¸§à¸¢à¸²à¸à¸£à¸“à¹Œà¸—à¸µà¹ˆà¸„à¸¥à¹‰à¸²à¸¢à¸ à¸²à¸©à¸²à¸­à¸±à¸‡à¸à¸¤à¸©à¹€à¸›à¹‡à¸™à¹‚à¸„à¹‰à¸”à¸ªà¸³à¸«à¸£à¸±à¸šà¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡ à¸ˆà¸²à¸à¸™à¸±à¹‰à¸™à¸£à¸°à¸šà¸šà¸›à¸à¸´à¸šà¸±à¸•à¸´à¸à¸²à¸£à¸ˆà¸°à¹€à¸£à¸µà¸¢à¸à¹ƒà¸Šà¹‰à¹‚à¸„à¹‰à¸”à¸™à¸±à¹‰à¸™ JavaScript à¹„à¸”à¹‰à¸£à¸±à¸šà¸à¸²à¸£à¸ˆà¸±à¸”à¸›à¸£à¸°à¹€à¸ à¸—à¸­à¸¢à¹ˆà¸²à¸‡à¸à¸§à¹‰à¸²à¸‡ à¹† à¸§à¹ˆà¸²à¹€à¸›à¹‡à¸™à¸ à¸²à¸©à¸²à¹€à¸‚à¸µà¸¢à¸™à¸ªà¸„à¸£à¸´à¸›à¸•à¹Œ à¸«à¸£à¸·à¸­à¸ à¸²à¸©à¸²à¸—à¸µà¹ˆà¹à¸›à¸¥à¸œà¸¥à¹à¸¥à¹‰à¸§ à¹‚à¸„à¹‰à¸” JavaScript à¹„à¸”à¹‰à¸£à¸±à¸šà¸à¸²à¸£à¹à¸›à¸¥à¸œà¸¥â€”à¸™à¸±à¹ˆà¸™à¸„à¸·à¸­ à¹à¸›à¸¥à¹‚à¸”à¸¢à¸•à¸£à¸‡à¹€à¸›à¹‡à¸™à¹‚à¸„à¹‰à¸”à¸ à¸²à¸©à¸²à¸ªà¸³à¸«à¸£à¸±à¸šà¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡ à¸”à¹‰à¸§à¸¢à¸à¸¥à¹„à¸à¸¥ JavaScript à¹ƒà¸™à¸‚à¸“à¸°à¸—à¸µà¹ˆà¹ƒà¸™à¸ à¸²à¸©à¸²à¹‚à¸›à¸£à¹à¸à¸£à¸¡à¸­à¸·à¹ˆà¸™ à¹† à¸„à¸­à¸¡à¹„à¸žà¹€à¸¥à¸­à¸£à¹Œà¸ˆà¸°à¸„à¸­à¸¡à¹„à¸žà¸¥à¹Œà¹‚à¸„à¹‰à¸”à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”à¹€à¸›à¹‡à¸™à¹‚à¸„à¹‰à¸”à¸ªà¸³à¸«à¸£à¸±à¸šà¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¹ƒà¸™à¸‚à¸±à¹‰à¸™à¸•à¸­à¸™à¸—à¸µà¹ˆà¹à¸¢à¸à¸•à¹ˆà¸²à¸‡à¸«à¸²à¸ à¸”à¸±à¸‡à¸™à¸±à¹‰à¸™ à¸ à¸²à¸©à¸²à¹€à¸‚à¸µà¸¢à¸™à¸ªà¸„à¸£à¸´à¸›à¸•à¹Œà¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”à¸ˆà¸¶à¸‡à¹€à¸›à¹‡à¸™à¸ à¸²à¸©à¸²à¹‚à¸›à¸£à¹à¸à¸£à¸¡ à¹à¸•à¹ˆà¹„à¸¡à¹ˆà¹ƒà¸Šà¹ˆà¸§à¹ˆà¸²à¸ à¸²à¸©à¸²à¹‚à¸›à¸£à¹à¸à¸£à¸¡à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”à¸ˆà¸°à¹€à¸›à¹‡à¸™à¸ à¸²à¸©à¸²à¹€à¸‚à¸µà¸¢à¸™à¸ªà¸„à¸£à¸´à¸›à¸•à¹Œà¹€à¸ªà¸¡à¸­à¹„à¸›</p><p>à¸à¸¥à¹„à¸ JavaScript<br>à¸à¸¥à¹„à¸ JavaScript à¸„à¸·à¸­à¹‚à¸›à¸£à¹à¸à¸£à¸¡à¸„à¸­à¸¡à¸žà¸´à¸§à¹€à¸•à¸­à¸£à¹Œà¸—à¸µà¹ˆà¹€à¸£à¸µà¸¢à¸à¹ƒà¸Šà¹‰à¹‚à¸„à¹‰à¸” JavaScript à¸à¸¥à¹„à¸ JavaScript à¹€à¸„à¸¢à¹€à¸›à¹‡à¸™à¹€à¸žà¸µà¸¢à¸‡à¸•à¸±à¸§à¹à¸›à¸¥à¸œà¸¥ à¹à¸•à¹ˆà¸à¸¥à¹„à¸à¸ªà¸¡à¸±à¸¢à¹ƒà¸«à¸¡à¹ˆà¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”à¹ƒà¸Šà¹‰à¸à¸²à¸£à¸„à¸­à¸¡à¹„à¸žà¸¥à¹Œà¹à¸šà¸š Just-in-time à¸«à¸£à¸·à¸­à¸£à¸±à¸™à¹„à¸—à¸¡à¹Œà¹€à¸žà¸·à¹ˆà¸­à¸›à¸£à¸±à¸šà¸›à¸£à¸¸à¸‡à¸›à¸£à¸°à¸ªà¸´à¸—à¸˜à¸´à¸ à¸²à¸ž</p><p>JavaScript à¸à¸±à¹ˆà¸‡à¹„à¸„à¸¥à¹€à¸­à¹‡à¸™à¸•à¹Œ<br>JavaScript à¸à¸±à¹ˆà¸‡à¹„à¸„à¸¥à¹€à¸­à¹‡à¸™à¸•à¹Œà¸«à¸¡à¸²à¸¢à¸–à¸¶à¸‡à¸§à¸´à¸˜à¸µà¸—à¸µà¹ˆ JavaScript à¸—à¸³à¸‡à¸²à¸™à¹ƒà¸™à¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œà¸‚à¸­à¸‡à¸„à¸¸à¸“ à¹ƒà¸™à¸à¸£à¸“à¸µ à¸à¸¥à¹„à¸ JavaScript à¸ˆà¸°à¸­à¸¢à¸¹à¹ˆà¸ à¸²à¸¢à¹ƒà¸™à¹‚à¸„à¹‰à¸”à¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œ à¹€à¸§à¹‡à¸šà¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œà¹€à¸ˆà¹‰à¸²à¹ƒà¸«à¸à¹ˆ à¹† à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”à¸ˆà¸°à¸¡à¸²à¸žà¸£à¹‰à¸­à¸¡à¸à¸±à¸šà¸à¸¥à¹„à¸ JavaScript à¹ƒà¸™à¸•à¸±à¸§</p><p>à¸™à¸±à¸à¸žà¸±à¸’à¸™à¸²à¹à¸­à¸›à¸žà¸¥à¸´à¹€à¸„à¸Šà¸±à¸™à¹€à¸§à¹‡à¸šà¸ˆà¸°à¹€à¸‚à¸µà¸¢à¸™à¹‚à¸„à¹‰à¸” JavaScript à¸—à¸µà¹ˆà¸¡à¸µà¸Ÿà¸±à¸‡à¸à¹Œà¸Šà¸±à¸™à¸—à¸µà¹ˆà¹à¸•à¸à¸•à¹ˆà¸²à¸‡à¸à¸±à¸™à¸ªà¸±à¸¡à¸žà¸±à¸™à¸˜à¹Œà¸à¸±à¸šà¹€à¸«à¸•à¸¸à¸à¸²à¸£à¸“à¹Œà¸•à¹ˆà¸²à¸‡ à¹† à¹€à¸Šà¹ˆà¸™ à¸à¸²à¸£à¸„à¸¥à¸´à¸à¹€à¸¡à¸²à¸ªà¹Œ à¸«à¸£à¸·à¸­à¸à¸²à¸£à¹€à¸¥à¸·à¹ˆà¸­à¸™à¹€à¸¡à¸²à¸ªà¹Œà¸œà¹ˆà¸²à¸™ à¸Ÿà¸±à¸‡à¸à¹Œà¸Šà¸±à¸™à¹€à¸«à¸¥à¹ˆà¸²à¸™à¸µà¹‰à¸ˆà¸°à¹€à¸›à¸¥à¸µà¹ˆà¸¢à¸™à¹à¸›à¸¥à¸‡ HTML à¹à¸¥à¸° CSS</p><p>à¸•à¹ˆà¸­à¹„à¸›à¸™à¸µà¹‰à¹€à¸›à¹‡à¸™à¸ à¸²à¸žà¸£à¸§à¸¡à¸§à¹ˆà¸² JavaScript à¸à¸±à¹ˆà¸‡à¹„à¸„à¸¥à¹€à¸­à¹‡à¸™à¸•à¹Œà¸—à¸³à¸‡à¸²à¸™à¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£:</p><p>1 &nbsp; à¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œà¹‚à¸«à¸¥à¸”à¹€à¸§à¹‡à¸šà¹€à¸žà¸ˆà¹€à¸¡à¸·à¹ˆà¸­à¸„à¸¸à¸“à¹€à¸¢à¸µà¹ˆà¸¢à¸¡à¸Šà¸¡à¹€à¸§à¹‡à¸šà¹€à¸žà¸ˆ</p><p>2 &nbsp; à¸£à¸°à¸«à¸§à¹ˆà¸²à¸‡à¸à¸²à¸£à¹‚à¸«à¸¥à¸” à¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œà¹à¸›à¸¥à¸‡à¸«à¸™à¹‰à¸²à¹à¸¥à¸°à¸­à¸‡à¸„à¹Œà¸›à¸£à¸°à¸à¸­à¸šà¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”à¸‚à¸­à¸‡à¸«à¸™à¹‰à¸² à¹€à¸Šà¹ˆà¸™ à¸›à¸¸à¹ˆà¸¡ à¸›à¹‰à¸²à¸¢ à¹à¸¥à¸°à¸à¸¥à¹ˆà¸­à¸‡à¸”à¸£à¸­à¸›à¸”à¸²à¸§à¸™à¹Œ à¹€à¸›à¹‡à¸™à¹‚à¸„à¸£à¸‡à¸ªà¸£à¹‰à¸²à¸‡à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸—à¸µà¹ˆà¹€à¸£à¸µà¸¢à¸à¸§à¹ˆà¸²à¹‚à¸¡à¹€à¸”à¸¥à¸­à¹‡à¸­à¸šà¹€à¸ˆà¸à¸•à¹Œà¹€à¸­à¸à¸ªà¸²à¸£ (DOM)</p><p>3 &nbsp; à¸à¸¥à¹„à¸ JavaScript à¸‚à¸­à¸‡à¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œà¹à¸›à¸¥à¸‡à¹‚à¸„à¹‰à¸” JavaScript à¹€à¸›à¹‡à¸™à¹„à¸šà¸•à¹Œà¹‚à¸„à¹‰à¸” à¹‚à¸„à¹‰à¸”à¸™à¸µà¹‰à¹€à¸›à¹‡à¸™à¸•à¸±à¸§à¸à¸¥à¸²à¸‡à¸£à¸°à¸«à¸§à¹ˆà¸²à¸‡à¹„à¸§à¸¢à¸²à¸à¸£à¸“à¹Œ JavaScript à¹à¸¥à¸°à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡</p><p>4 &nbsp; à¹€à¸«à¸•à¸¸à¸à¸²à¸£à¸“à¹Œà¸•à¹ˆà¸²à¸‡ à¹† à¹€à¸Šà¹ˆà¸™ à¸à¸²à¸£à¸„à¸¥à¸´à¸à¹€à¸¡à¸²à¸ªà¹Œà¸šà¸™à¸›à¸¸à¹ˆà¸¡ à¸ˆà¸°à¸à¸£à¸°à¸•à¸¸à¹‰à¸™à¹ƒà¸«à¹‰à¸šà¸¥à¹‡à¸­à¸à¹‚à¸„à¹‰à¸” JavaScript à¸—à¸µà¹ˆà¹€à¸à¸µà¹ˆà¸¢à¸§à¸‚à¹‰à¸­à¸‡à¸”à¸³à¹€à¸™à¸´à¸™à¸à¸²à¸£ à¸ˆà¸²à¸à¸™à¸±à¹‰à¸™à¸à¸¥à¹„à¸à¸ˆà¸°à¹à¸›à¸¥à¸œà¸¥à¹„à¸šà¸•à¹Œà¹‚à¸„à¹‰à¸” à¹à¸¥à¸°à¸—à¸³à¸à¸²à¸£à¹€à¸›à¸¥à¸µà¹ˆà¸¢à¸™à¹à¸›à¸¥à¸‡ DOM</p><p>5 &nbsp; à¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œà¹à¸ªà¸”à¸‡à¸œà¸¥ DOM à¹ƒà¸«à¸¡à¹ˆ</p><p>JavaScript à¸à¸±à¹ˆà¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œ<br>JavaScript à¸à¸±à¹ˆà¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œà¸«à¸¡à¸²à¸¢à¸–à¸¶à¸‡à¸à¸²à¸£à¹ƒà¸Šà¹‰à¸ à¸²à¸©à¸²à¹€à¸‚à¸µà¸¢à¸™à¹‚à¸„à¹‰à¸”à¹ƒà¸™à¸¥à¸­à¸ˆà¸´à¸à¸‚à¸­à¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œà¹à¸šà¹‡à¸„à¹€à¸­à¸™à¸”à¹Œ à¹ƒà¸™à¸à¸£à¸“à¸µà¸™à¸µà¹‰ à¸à¸¥à¹„à¸ JavaScript à¸ˆà¸°à¸­à¸¢à¸¹à¹ˆà¸šà¸™à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œà¹‚à¸”à¸¢à¸•à¸£à¸‡ à¸Ÿà¸±à¸‡à¸à¹Œà¸Šà¸±à¸™ JavaScript à¸à¸±à¹ˆà¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œà¸ªà¸²à¸¡à¸²à¸£à¸–à¹€à¸‚à¹‰à¸²à¸–à¸¶à¸‡à¸à¸²à¸™à¸‚à¹‰à¸­à¸¡à¸¹à¸¥ à¸”à¸³à¹€à¸™à¸´à¸™à¸à¸²à¸£à¸—à¸²à¸‡à¸•à¸£à¸£à¸à¸°à¹à¸šà¸šà¸•à¹ˆà¸²à¸‡ à¹† à¹à¸¥à¸°à¸•à¸­à¸šà¸ªà¸™à¸­à¸‡à¸•à¹ˆà¸­à¹€à¸«à¸•à¸¸à¸à¸²à¸£à¸“à¹Œà¸•à¹ˆà¸²à¸‡ à¹† à¸—à¸µà¹ˆà¸–à¸¹à¸à¸à¸£à¸°à¸•à¸¸à¹‰à¸™à¸ˆà¸²à¸à¸£à¸°à¸šà¸šà¸›à¸à¸´à¸šà¸±à¸•à¸´à¸à¸²à¸£à¸‚à¸­à¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œ à¸‚à¹‰à¸­à¹„à¸”à¹‰à¹€à¸›à¸£à¸µà¸¢à¸šà¸«à¸¥à¸±à¸à¸‚à¸­à¸‡à¸à¸²à¸£à¹€à¸‚à¸µà¸¢à¸™à¸ªà¸„à¸£à¸´à¸›à¸•à¹Œà¸à¸±à¹ˆà¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œà¸„à¸·à¸­à¸„à¸¸à¸“à¸ªà¸²à¸¡à¸²à¸£à¸–à¸›à¸£à¸±à¸šà¹à¸•à¹ˆà¸‡à¸à¸²à¸£à¸•à¸­à¸šà¸ªà¸™à¸­à¸‡à¸‚à¸­à¸‡à¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œà¹‚à¸”à¸¢à¸­à¹‰à¸²à¸‡à¸­à¸´à¸‡à¸•à¸²à¸¡à¸‚à¹‰à¸­à¸à¸³à¸«à¸™à¸”à¸‚à¸­à¸‡à¸„à¸¸à¸“ à¸ªà¸´à¸—à¸˜à¸´à¹Œà¹€à¸‚à¹‰à¸²à¸–à¸¶à¸‡à¸‚à¸­à¸‡à¸„à¸¸à¸“ à¹à¸¥à¸°à¸„à¸³à¸‚à¸­à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸ˆà¸²à¸à¸£à¸°à¸šà¸šà¹„à¸”à¹‰à¹€à¸›à¹‡à¸™à¸­à¸¢à¹ˆà¸²à¸‡à¸¡à¸²à¸</p><p>à¸à¸±à¹ˆà¸‡à¹„à¸„à¸¥à¹€à¸­à¹‡à¸™à¸•à¹Œà¹€à¸—à¸µà¸¢à¸šà¸à¸±à¸šà¸à¸±à¹ˆà¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œ<br>à¸„à¸³à¸§à¹ˆà¸²à¹„à¸”à¸™à¸²à¸¡à¸´à¸à¸­à¸˜à¸´à¸šà¸²à¸¢ JavaScript à¸—à¸±à¹‰à¸‡à¸à¸±à¹ˆà¸‡à¹„à¸„à¸¥à¹€à¸­à¹‡à¸™à¸•à¹Œà¹à¸¥à¸°à¸à¸±à¹ˆà¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œ à¸žà¸¤à¸•à¸´à¸à¸£à¸£à¸¡à¹„à¸”à¸™à¸²à¸¡à¸´à¸à¸„à¸·à¸­à¸„à¸§à¸²à¸¡à¸ªà¸²à¸¡à¸²à¸£à¸–à¸—à¸µà¹ˆà¸ˆà¸°à¸­à¸±à¸›à¹€à¸”à¸•à¸à¸²à¸£à¹à¸ªà¸”à¸‡à¸‚à¸­à¸‡à¹€à¸§à¹‡à¸šà¹€à¸žà¸ˆà¹€à¸žà¸·à¹ˆà¸­à¸ªà¸£à¹‰à¸²à¸‡à¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¹ƒà¸«à¸¡à¹ˆà¸•à¸²à¸¡à¸—à¸µà¹ˆà¸ˆà¸³à¹€à¸›à¹‡à¸™ à¸„à¸§à¸²à¸¡à¹à¸•à¸à¸•à¹ˆà¸²à¸‡à¸£à¸°à¸«à¸§à¹ˆà¸²à¸‡ JavaScript à¸à¸±à¹ˆà¸‡à¹„à¸„à¸¥à¹€à¸­à¹‡à¸™à¸•à¹Œà¹à¸¥à¸°à¸à¸±à¹ˆà¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œà¸­à¸¢à¸¹à¹ˆà¸—à¸µà¹ˆà¸§à¸´à¸˜à¸µà¸à¸²à¸£à¸—à¸µà¹ˆ JavaScript à¸ªà¸£à¹‰à¸²à¸‡à¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¹ƒà¸«à¸¡à¹ˆ à¹‚à¸„à¹‰à¸”à¸à¸±à¹ˆà¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œà¸ªà¸£à¹‰à¸²à¸‡à¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¹ƒà¸«à¸¡à¹ˆà¹à¸šà¸šà¹„à¸”à¸™à¸²à¸¡à¸´à¸à¸”à¹‰à¸§à¸¢à¸à¸²à¸£à¹ƒà¸Šà¹‰à¸¥à¸­à¸ˆà¸´à¸à¸‚à¸­à¸‡à¹à¸­à¸›à¸žà¸¥à¸´à¹€à¸„à¸Šà¸±à¸™à¹à¸¥à¸°à¸›à¸£à¸±à¸šà¹€à¸›à¸¥à¸µà¹ˆà¸¢à¸™à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸ˆà¸²à¸à¸à¸²à¸™à¸‚à¹‰à¸­à¸¡à¸¹à¸¥ à¸ªà¹ˆà¸§à¸™ JavaScript à¸à¸±à¹ˆà¸‡à¹„à¸„à¸¥à¹€à¸­à¹‡à¸™à¸•à¹Œà¸ªà¸£à¹‰à¸²à¸‡à¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¹ƒà¸«à¸¡à¹ˆà¹à¸šà¸šà¹„à¸”à¸™à¸²à¸¡à¸´à¸à¸ à¸²à¸¢à¹ƒà¸™à¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œà¹‚à¸”à¸¢à¹ƒà¸Šà¹‰à¸¥à¸­à¸ˆà¸´à¸à¸­à¸´à¸™à¹€à¸—à¸­à¸£à¹Œà¹€à¸Ÿà¸‹à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰ à¹à¸¥à¸°à¸›à¸£à¸±à¸šà¹€à¸›à¸¥à¸µà¹ˆà¸¢à¸™à¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¹€à¸§à¹‡à¸šà¹€à¸žà¸ˆà¸—à¸µà¹ˆà¸­à¸¢à¸¹à¹ˆà¸šà¸™à¹„à¸„à¸¥à¹€à¸­à¹‡à¸™à¸•à¹Œà¸­à¸¢à¸¹à¹ˆà¹à¸¥à¹‰à¸§ à¸„à¸§à¸²à¸¡à¸«à¸¡à¸²à¸¢à¸¡à¸µà¸„à¸§à¸²à¸¡à¹à¸•à¸à¸•à¹ˆà¸²à¸‡à¸à¸±à¸™à¹€à¸¥à¹‡à¸à¸™à¹‰à¸­à¸¢à¹ƒà¸™à¸ªà¸­à¸‡à¸šà¸£à¸´à¸šà¸—à¹à¸•à¹ˆà¸à¹‡à¸¡à¸µà¸„à¸§à¸²à¸¡à¹€à¸à¸µà¹ˆà¸¢à¸§à¸‚à¹‰à¸­à¸‡à¸à¸±à¸™ à¹à¸¥à¸°à¸—à¸±à¹‰à¸‡à¸ªà¸­à¸‡à¹à¸™à¸§à¸—à¸²à¸‡à¸—à¸³à¸‡à¸²à¸™à¸£à¹ˆà¸§à¸¡à¸à¸±à¸™à¹€à¸žà¸·à¹ˆà¸­à¸›à¸£à¸±à¸šà¸›à¸£à¸¸à¸‡à¸›à¸£à¸°à¸ªà¸´à¸—à¸˜à¸´à¸ à¸²à¸žà¸à¸²à¸£à¹ƒà¸Šà¹‰à¸‡à¸²à¸™à¸‚à¸­à¸‡à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰</p><p>à¸™à¸­à¸à¹€à¸«à¸™à¸·à¸­à¸ˆà¸²à¸à¸à¸²à¸£à¸™à¸³à¹„à¸›à¹ƒà¸Šà¹‰à¹ƒà¸™à¸„à¸¸à¸“à¸ªà¸¡à¸šà¸±à¸•à¸´à¹„à¸”à¸™à¸²à¸¡à¸´à¸à¹à¸¥à¹‰à¸§ à¸„à¸§à¸²à¸¡à¹à¸•à¸à¸•à¹ˆà¸²à¸‡à¸­à¸µà¸à¸›à¸£à¸°à¸à¸²à¸£à¸«à¸™à¸¶à¹ˆà¸‡à¸£à¸°à¸«à¸§à¹ˆà¸²à¸‡à¸à¸²à¸£à¹ƒà¸Šà¹‰ JavaScript à¸ªà¸­à¸‡à¹à¸šà¸šà¸„à¸·à¸­à¸—à¸£à¸±à¸žà¸¢à¸²à¸à¸£à¸—à¸µà¹ˆà¹‚à¸„à¹‰à¸”à¸ªà¸²à¸¡à¸²à¸£à¸–à¹€à¸‚à¹‰à¸²à¸–à¸¶à¸‡à¹„à¸”à¹‰ à¸—à¸²à¸‡à¸à¸±à¹ˆà¸‡à¹„à¸„à¸¥à¹€à¸­à¹‡à¸™à¸•à¹Œ à¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œà¸ˆà¸°à¸„à¸§à¸šà¸„à¸¸à¸¡à¸ªà¸ à¸²à¸žà¹à¸§à¸”à¸¥à¹‰à¸­à¸¡à¸£à¸±à¸™à¹„à¸—à¸¡à¹Œà¸‚à¸­à¸‡ JavaScript à¹‚à¸„à¹‰à¸”à¸ˆà¸¶à¸‡à¸ªà¸²à¸¡à¸²à¸£à¸–à¹€à¸‚à¹‰à¸²à¸–à¸¶à¸‡à¹„à¸”à¹‰à¹€à¸žà¸µà¸¢à¸‡à¸—à¸£à¸±à¸žà¸¢à¸²à¸à¸£à¸—à¸µà¹ˆà¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œà¸­à¸™à¸¸à¸à¸²à¸•à¹ƒà¸«à¹‰à¹‚à¸„à¹‰à¸”à¹€à¸‚à¹‰à¸²à¸–à¸¶à¸‡à¹€à¸—à¹ˆà¸²à¸™à¸±à¹‰à¸™ à¸•à¸±à¸§à¸­à¸¢à¹ˆà¸²à¸‡à¹€à¸Šà¹ˆà¸™ à¹‚à¸„à¹‰à¸”à¹„à¸¡à¹ˆà¸ªà¸²à¸¡à¸²à¸£à¸–à¹€à¸‚à¸µà¸¢à¸™à¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¸¥à¸‡à¹ƒà¸™à¸®à¸²à¸£à¹Œà¸”à¸”à¸´à¸ªà¸à¹Œà¸‚à¸­à¸‡à¸„à¸¸à¸“à¹„à¸”à¹‰à¹€à¸§à¹‰à¸™à¹à¸•à¹ˆà¸„à¸¸à¸“à¸ˆà¸°à¸„à¸¥à¸´à¸à¸›à¸¸à¹ˆà¸¡à¸”à¸²à¸§à¸™à¹Œà¹‚à¸«à¸¥à¸” à¹ƒà¸™à¸—à¸²à¸‡à¸à¸¥à¸±à¸šà¸à¸±à¸™ à¸Ÿà¸±à¸‡à¸à¹Œà¸Šà¸±à¸™à¸à¸±à¹ˆà¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œà¸ªà¸²à¸¡à¸²à¸£à¸–à¹€à¸‚à¹‰à¸²à¸–à¸¶à¸‡à¸—à¸£à¸±à¸žà¸¢à¸²à¸à¸£à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”à¸‚à¸­à¸‡à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œà¹„à¸”à¹‰à¸•à¸²à¸¡à¸—à¸µà¹ˆà¸ˆà¸³à¹€à¸›à¹‡à¸™</p><p>à¹„à¸¥à¸šà¸£à¸²à¸£à¸µ JavaScript à¸„à¸·à¸­à¸­à¸°à¹„à¸£<br>à¹„à¸¥à¸šà¸£à¸²à¸£à¸µ JavaScript à¸„à¸·à¸­à¸Šà¸¸à¸”à¸ªà¹ˆà¸§à¸™à¸¢à¹ˆà¸­à¸¢à¸‚à¸­à¸‡à¹‚à¸„à¹‰à¸”à¸—à¸µà¹ˆà¹€à¸‚à¸µà¸¢à¸™à¹„à¸§à¹‰à¸à¹ˆà¸­à¸™à¸‹à¸¶à¹ˆà¸‡à¸™à¸±à¸à¸žà¸±à¸’à¸™à¸²à¹€à¸§à¹‡à¸šà¸ªà¸²à¸¡à¸²à¸£à¸–à¸™à¸³à¸¡à¸²à¹ƒà¸Šà¹‰à¹ƒà¸«à¸¡à¹ˆà¹€à¸žà¸·à¹ˆà¸­à¹ƒà¸Šà¹‰à¸Ÿà¸±à¸‡à¸à¹Œà¸Šà¸±à¸™à¸¡à¸²à¸•à¸£à¸à¸²à¸™à¸‚à¸­à¸‡ JavaScript à¹‚à¸„à¹‰à¸”à¹ƒà¸™à¹„à¸¥à¸šà¸£à¸²à¸£à¸µ JavaScript à¸–à¸¹à¸à¹ƒà¸ªà¹ˆà¹€à¸‚à¹‰à¸²à¹ƒà¸™à¸ªà¹ˆà¸§à¸™à¸—à¸µà¹ˆà¹€à¸«à¸¥à¸·à¸­à¸‚à¸­à¸‡à¹‚à¸„à¹‰à¸”à¸‚à¸­à¸‡à¹‚à¸›à¸£à¹€à¸ˆà¸à¸•à¹Œ à¹‚à¸”à¸¢à¸”à¸³à¹€à¸™à¸´à¸™à¸à¸²à¸£à¸•à¸²à¸¡à¸„à¸§à¸²à¸¡à¸ˆà¸³à¹€à¸›à¹‡à¸™ à¸«à¸²à¸à¸„à¸¸à¸“à¸¡à¸­à¸‡à¸§à¹ˆà¸²à¹‚à¸„à¹‰à¸”à¹à¸­à¸›à¸žà¸¥à¸´à¹€à¸„à¸Šà¸±à¸™ JavaScript à¹€à¸›à¹‡à¸™à¸šà¹‰à¸²à¸™ à¹„à¸¥à¸šà¸£à¸²à¸£à¸µ JavaScript à¸à¹‡à¹€à¸›à¹‡à¸™à¹€à¸ªà¸¡à¸·à¸­à¸™à¹€à¸Ÿà¸­à¸£à¹Œà¸™à¸´à¹€à¸ˆà¸­à¸£à¹Œà¸ªà¸³à¹€à¸£à¹‡à¸ˆà¸£à¸¹à¸›à¸—à¸µà¹ˆà¸™à¸±à¸à¸žà¸±à¸’à¸™à¸²à¸ªà¸²à¸¡à¸²à¸£à¸–à¸™à¸³à¸¡à¸²à¹ƒà¸Šà¹‰à¹€à¸žà¸·à¹ˆà¸­à¸›à¸£à¸±à¸šà¸›à¸£à¸¸à¸‡à¸à¸²à¸£à¸—à¸³à¸‡à¸²à¸™à¸‚à¸­à¸‡à¸šà¹‰à¸²à¸™</p><p>à¸•à¹ˆà¸­à¹„à¸›à¸™à¸µà¹‰à¹€à¸›à¹‡à¸™à¸à¸²à¸£à¹ƒà¸Šà¹‰à¸‡à¸²à¸™à¸—à¸µà¹ˆà¸žà¸šà¸šà¹ˆà¸­à¸¢à¸ªà¸³à¸«à¸£à¸±à¸šà¹„à¸¥à¸šà¸£à¸²à¸£à¸µ JavaScript:</p><p>à¸à¸²à¸£à¹à¸ªà¸”à¸‡à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¹€à¸›à¹‡à¸™à¸ à¸²à¸ž<br>à¸à¸²à¸£à¹à¸ªà¸”à¸‡à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¹€à¸›à¹‡à¸™à¸ à¸²à¸žà¸¡à¸µà¸„à¸§à¸²à¸¡à¸ªà¸³à¸„à¸±à¸à¸ªà¸³à¸«à¸£à¸±à¸šà¸œà¸¹à¹‰à¹ƒà¸Šà¹‰à¹€à¸žà¸·à¹ˆà¸­à¸”à¸¹à¸ªà¸–à¸´à¸•à¸´ à¹€à¸›à¹‡à¸™à¸•à¹‰à¸™ à¹ƒà¸™à¹à¸œà¸‡à¸œà¸¹à¹‰à¸”à¸¹à¹à¸¥ à¹à¸”à¸Šà¸šà¸­à¸£à¹Œà¸” à¹à¸¥à¸°à¸•à¸±à¸§à¸§à¸±à¸”à¸›à¸£à¸°à¸ªà¸´à¸—à¸˜à¸´à¸ à¸²à¸ž</p><p>à¹„à¸¥à¸šà¸£à¸²à¸£à¸µà¸•à¹ˆà¸²à¸‡ à¹† à¹€à¸Šà¹ˆà¸™ Chart.js, ApexCharts à¹à¸¥à¸° Algolia Places à¸¡à¸µà¸Ÿà¸±à¸‡à¸à¹Œà¸Šà¸±à¸™à¹ƒà¸™à¸•à¸±à¸§à¸—à¸µà¹ˆà¸„à¸¸à¸“à¸ªà¸²à¸¡à¸²à¸£à¸–à¹ƒà¸Šà¹‰à¸ªà¸£à¹‰à¸²à¸‡à¹à¸­à¸›à¸žà¸¥à¸´à¹€à¸„à¸Šà¸±à¸™à¹€à¸§à¹‡à¸šà¸—à¸µà¹ˆà¹à¸ªà¸”à¸‡à¸œà¸¥à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¹€à¸›à¹‡à¸™à¹à¸œà¸™à¸ à¸²à¸žà¹à¸¥à¸°à¹à¸œà¸™à¸—à¸µà¹ˆà¹„à¸”à¹‰</p><p>à¸à¸²à¸£à¸ˆà¸±à¸”à¸à¸²à¸£ DOM<br>à¸„à¸¸à¸“à¸ªà¸²à¸¡à¸²à¸£à¸–à¹ƒà¸Šà¹‰à¹„à¸¥à¸šà¸£à¸²à¸£à¸µ à¹€à¸Šà¹ˆà¸™ jQuery à¹à¸¥à¸° Umbrella JS à¹€à¸žà¸·à¹ˆà¸­à¸—à¸³à¹ƒà¸«à¹‰à¸à¸²à¸£à¸žà¸±à¸’à¸™à¸²à¹€à¸§à¹‡à¸šà¹€à¸›à¹‡à¸™à¹€à¸£à¸·à¹ˆà¸­à¸‡à¸‡à¹ˆà¸²à¸¢ à¹€à¸žà¸£à¸²à¸°à¹„à¸¥à¸šà¸£à¸²à¸£à¸µà¹€à¸«à¸¥à¹ˆà¸²à¸™à¸µà¹‰à¸¡à¸µà¹‚à¸„à¹‰à¸”à¸ªà¸³à¸«à¸£à¸±à¸šà¸Ÿà¸±à¸‡à¸à¹Œà¸Šà¸±à¸™à¸¡à¸²à¸•à¸£à¸à¸²à¸™à¸‚à¸­à¸‡à¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œ à¹€à¸Šà¹ˆà¸™ à¹à¸­à¸™à¸´à¹€à¸¡à¸Šà¸±à¸™à¹€à¸¡à¸™à¸¹ à¹à¸à¸¥à¹€à¸¥à¸­à¸£à¸µà¸ à¸²à¸ž à¸›à¸¸à¹ˆà¸¡ à¹„à¸¥à¸—à¹Œà¸šà¹‡à¸­à¸à¸‹à¹Œ à¹à¸¥à¸°à¸­à¸µà¸à¸¡à¸²à¸à¸¡à¸²à¸¢</p><p>à¹à¸šà¸šà¸Ÿà¸­à¸£à¹Œà¸¡<br>à¸à¸²à¸£à¸žà¸±à¸’à¸™à¸²à¹€à¸§à¹‡à¸šà¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”à¹ƒà¸Šà¹‰à¹à¸šà¸šà¸Ÿà¸­à¸£à¹Œà¸¡à¸ªà¸³à¸«à¸£à¸±à¸šà¹ƒà¸«à¹‰à¸œà¸¹à¹‰à¹€à¸¢à¸µà¹ˆà¸¢à¸¡à¸Šà¸¡à¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œà¸•à¸´à¸”à¸•à¹ˆà¸­à¹ƒà¸„à¸£à¸ªà¸±à¸à¸„à¸™ à¸ªà¸±à¹ˆà¸‡à¸‹à¸·à¹‰à¸­à¸œà¸¥à¸´à¸•à¸ à¸±à¸“à¸‘à¹Œ à¹à¸¥à¸°à¸¥à¸‡à¸—à¸°à¹€à¸šà¸µà¸¢à¸™à¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡à¸­à¸µà¹€à¸§à¸™à¸•à¹Œ à¹„à¸¥à¸šà¸£à¸²à¸£à¸µ JavaScript à¸šà¸²à¸‡à¸­à¸¢à¹ˆà¸²à¸‡ à¹€à¸Šà¹ˆà¸™ wForms, LiveValidation, Validanguage à¹à¸¥à¸° qForms à¸—à¸³à¹ƒà¸«à¹‰à¸Ÿà¸±à¸‡à¸à¹Œà¸Šà¸±à¸™à¹€à¸à¸µà¹ˆà¸¢à¸§à¸à¸±à¸šà¹à¸šà¸šà¸Ÿà¸­à¸£à¹Œà¸¡à¸‡à¹ˆà¸²à¸¢à¸‚à¸¶à¹‰à¸™ à¸‹à¸¶à¹ˆà¸‡à¸£à¸§à¸¡à¸–à¸¶à¸‡à¸à¸²à¸£à¸ªà¸­à¸šà¸—à¸§à¸™à¹à¸šà¸šà¸Ÿà¸­à¸£à¹Œà¸¡ à¹€à¸„à¹‰à¸²à¹‚à¸„à¸£à¸‡ à¹€à¸‡à¸·à¹ˆà¸­à¸™à¹„à¸‚ à¹à¸¥à¸°à¸à¸²à¸£à¹€à¸›à¸¥à¸µà¹ˆà¸¢à¸™à¸ªà¸ à¸²à¸ž<br>à¸Ÿà¸±à¸‡à¸à¹Œà¸Šà¸±à¸™à¸„à¸“à¸´à¸•à¸¨à¸²à¸ªà¸•à¸£à¹Œà¹à¸¥à¸°à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡<br>à¹à¸­à¸›à¸žà¸¥à¸´à¹€à¸„à¸Šà¸±à¸™à¹€à¸§à¹‡à¸šà¸¡à¸²à¸à¸¡à¸²à¸¢à¸•à¹‰à¸­à¸‡à¹à¸à¹‰à¸ªà¸¡à¸à¸²à¸£à¸—à¸²à¸‡à¸„à¸“à¸´à¸•à¸¨à¸²à¸ªà¸•à¸£à¹Œà¹à¸¥à¸°à¸›à¸£à¸°à¸¡à¸§à¸¥à¸œà¸¥à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸§à¸±à¸™à¸—à¸µà¹ˆ à¹€à¸§à¸¥à¸² à¹à¸¥à¸°à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡ à¹à¸—à¸™à¸—à¸µà¹ˆà¸ˆà¸°à¸ªà¹ˆà¸‡à¸„à¸³à¸‚à¸­à¸”à¸±à¸‡à¸à¸¥à¹ˆà¸²à¸§à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”à¹„à¸›à¸¢à¸±à¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œ à¸à¸²à¸£à¸ˆà¸±à¸”à¸à¸²à¸£à¸„à¸³à¸‚à¸­à¹€à¸«à¸¥à¹ˆà¸²à¸™à¸µà¹‰à¸šà¸²à¸‡à¸ªà¹ˆà¸§à¸™à¸šà¸™à¸à¸±à¹ˆà¸‡à¹„à¸„à¸¥à¹€à¸­à¹‡à¸™à¸•à¹Œà¸ˆà¸°à¸¡à¸µà¸›à¸£à¸°à¸ªà¸´à¸—à¸˜à¸´à¸ à¸²à¸žà¸¡à¸²à¸à¸à¸§à¹ˆà¸² à¸™à¸±à¸à¸žà¸±à¸’à¸™à¸²à¹€à¸§à¹‡à¸šà¸—à¸³à¹€à¸Šà¹ˆà¸™à¸™à¸µà¹‰à¹„à¸”à¹‰à¸”à¹‰à¸§à¸¢à¸à¸²à¸£à¹ƒà¸Šà¹‰à¹„à¸¥à¸šà¸£à¸²à¸£à¸µ JavaScript à¹€à¸Šà¹ˆà¸™ Date.js, Sylvester à¹à¸¥à¸° JavaScript URL Library</p><p>à¹€à¸Ÿà¸£à¸¡à¹€à¸§à¸´à¸£à¹Œà¸ JavaScript à¸„à¸·à¸­à¸­à¸°à¹„à¸£<br>à¹€à¸Šà¹ˆà¸™à¹€à¸”à¸µà¸¢à¸§à¸à¸±à¸šà¹„à¸¥à¸šà¸£à¸²à¸£à¸µ JavaScript à¹€à¸Ÿà¸£à¸¡à¹€à¸§à¸´à¸£à¹Œà¸ JavaScript à¸„à¸·à¸­à¸Šà¸¸à¸”à¸ªà¹ˆà¸§à¸™à¸¢à¹ˆà¸­à¸¢à¸‚à¸­à¸‡à¹‚à¸„à¹‰à¸”à¸—à¸µà¹ˆà¹€à¸‚à¸µà¸¢à¸™à¹„à¸§à¹‰à¸à¹ˆà¸­à¸™à¸‹à¸¶à¹ˆà¸‡à¸—à¸³à¸«à¸™à¹‰à¸²à¸—à¸µà¹ˆà¸•à¹ˆà¸²à¸‡ à¹† à¹à¸¥à¸°à¸ªà¸²à¸¡à¸²à¸£à¸–à¸™à¸³à¸¡à¸²à¹ƒà¸Šà¹‰à¸‹à¹‰à¸³à¹„à¸”à¹‰ à¸­à¸¢à¹ˆà¸²à¸‡à¹„à¸£à¸à¹‡à¸•à¸²à¸¡ à¹ƒà¸™à¸‚à¸“à¸°à¸—à¸µà¹ˆà¹„à¸¥à¸šà¸£à¸²à¸£à¸µ JavaScript à¹€à¸›à¹‡à¸™à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸¡à¸·à¸­à¹€à¸‰à¸žà¸²à¸°à¸—à¸²à¸‡à¸ªà¸³à¸«à¸£à¸±à¸šà¸à¸²à¸£à¹ƒà¸Šà¹‰à¸‡à¸²à¸™à¸•à¸²à¸¡à¸•à¹‰à¸­à¸‡à¸à¸²à¸£ à¹€à¸Ÿà¸£à¸¡à¹€à¸§à¸´à¸£à¹Œà¸ JavaScript à¸„à¸·à¸­à¸Šà¸¸à¸”à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸¡à¸·à¸­à¸—à¸µà¹ˆà¸„à¸£à¸šà¸–à¹‰à¸§à¸™à¸—à¸µà¹ˆà¸Šà¹ˆà¸§à¸¢à¸à¹ˆà¸­à¸£à¹ˆà¸²à¸‡à¹à¸¥à¸°à¸ˆà¸±à¸”à¸£à¸°à¹€à¸šà¸µà¸¢à¸šà¹à¸­à¸›à¸žà¸¥à¸´à¹€à¸„à¸Šà¸±à¸™à¹€à¸§à¹‡à¸šà¹ƒà¸” à¹† à¸«à¸²à¸à¸„à¸¸à¸“à¸¡à¸­à¸‡à¸§à¹ˆà¸²à¹à¸­à¸›à¸žà¸¥à¸´à¹€à¸„à¸Šà¸±à¸™ JavaScript à¹€à¸›à¹‡à¸™à¸šà¹‰à¸²à¸™ à¹€à¸Ÿà¸£à¸¡à¹€à¸§à¸´à¸£à¹Œà¸ JavaScript à¸à¹‡à¹€à¸›à¹‡à¸™à¹€à¸ªà¸¡à¸·à¸­à¸™à¸žà¸´à¸¡à¸žà¹Œà¹€à¸‚à¸µà¸¢à¸§à¸—à¸µà¹ˆà¹ƒà¸Šà¹‰à¸ªà¸£à¹‰à¸²à¸‡à¸šà¹‰à¸²à¸™</p><p>à¸•à¹ˆà¸­à¹„à¸›à¸™à¸µà¹‰à¹€à¸›à¹‡à¸™à¸•à¸±à¸§à¸­à¸¢à¹ˆà¸²à¸‡à¸šà¸²à¸‡à¸ªà¹ˆà¸§à¸™à¸‚à¸­à¸‡à¸à¸²à¸£à¹ƒà¸Šà¹‰à¹€à¸Ÿà¸£à¸¡à¹€à¸§à¸´à¸£à¹Œà¸ JavaScript:</p><p>à¸à¸²à¸£à¸žà¸±à¸’à¸™à¸²à¹à¸­à¸›à¸žà¸¥à¸´à¹€à¸„à¸Šà¸±à¸™à¹€à¸§à¹‡à¸šà¹à¸¥à¸°à¹à¸­à¸›à¸žà¸¥à¸´à¹€à¸„à¸Šà¸±à¸™à¸šà¸·à¸­à¸–à¸·à¸­<br>AngularJS à¸„à¸·à¸­à¹€à¸Ÿà¸£à¸¡à¹€à¸§à¸´à¸£à¹Œà¸à¸—à¸µà¹ˆà¸—à¸³à¹ƒà¸«à¹‰à¸à¸²à¸£à¸žà¸±à¸’à¸™à¸²à¹à¸¥à¸°à¸—à¸”à¸ªà¸­à¸šà¹à¸­à¸›à¸žà¸¥à¸´à¹€à¸„à¸Šà¸±à¸™à¹€à¸§à¹‡à¸šà¸‡à¹ˆà¸²à¸¢à¸‚à¸¶à¹‰à¸™ à¹€à¸Šà¹ˆà¸™ à¹à¸­à¸›à¸žà¸¥à¸´à¹€à¸„à¸Šà¸±à¸™à¸­à¸µà¸„à¸­à¸¡à¹€à¸¡à¸´à¸£à¹Œà¸‹ à¹à¸­à¸›à¸žà¸¥à¸´à¹€à¸„à¸Šà¸±à¸™à¹ƒà¸™à¹€à¸§à¸¥à¸²à¸ˆà¸£à¸´à¸‡ à¹à¸¥à¸°à¹à¸­à¸›à¸žà¸¥à¸´à¹€à¸„à¸Šà¸±à¸™à¸§à¸´à¸”à¸µà¹‚à¸­ React Native à¹€à¸›à¹‡à¸™à¸­à¸µà¸à¹€à¸Ÿà¸£à¸¡à¹€à¸§à¸´à¸£à¹Œà¸à¸«à¸™à¸¶à¹ˆà¸‡à¸—à¸µà¹ˆà¸ªà¸™à¸±à¸šà¸ªà¸™à¸¸à¸™à¸à¸²à¸£à¸žà¸±à¸’à¸™à¸²à¹à¸­à¸›à¸žà¸¥à¸´à¹€à¸„à¸Šà¸±à¸™à¸¡à¸·à¸­à¸–à¸·à¸­à¸—à¸µà¹ˆà¹à¸ªà¸”à¸‡à¸œà¸¥à¹à¸šà¸šà¹€à¸™à¸—à¸µà¸Ÿà¸ªà¸³à¸«à¸£à¸±à¸š iOS à¹à¸¥à¸° Android</p><p>à¸à¸²à¸£à¸žà¸±à¸’à¸™à¸²à¹€à¸§à¹‡à¸šà¹à¸šà¸šà¸•à¸­à¸šà¸ªà¸™à¸­à¸‡<br>à¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œà¹à¸šà¸šà¸•à¸­à¸šà¸ªà¸™à¸­à¸‡à¹ƒà¸«à¹‰à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰à¹„à¸”à¹‰à¸£à¸±à¸šà¸›à¸£à¸°à¸ªà¸šà¸à¸²à¸£à¸“à¹Œà¸à¸²à¸£à¹ƒà¸Šà¹‰à¸‡à¸²à¸™à¸—à¸µà¹ˆà¸ªà¸­à¸”à¸„à¸¥à¹‰à¸­à¸‡à¸à¸±à¸™à¹ƒà¸™à¸—à¸¸à¸à¸­à¸¸à¸›à¸à¸£à¸“à¹Œ à¸•à¸±à¸§à¸­à¸¢à¹ˆà¸²à¸‡à¹€à¸Šà¹ˆà¸™ à¸«à¸™à¹‰à¸²à¸ˆà¸­à¸¡à¸·à¸­à¸–à¸·à¸­à¹à¸¥à¸°à¹à¸—à¹‡à¸šà¹€à¸¥à¹‡à¸•à¸¡à¸µà¸‚à¸™à¸²à¸”à¹€à¸¥à¹‡à¸à¸à¸§à¹ˆà¸²à¸«à¸™à¹‰à¸²à¸ˆà¸­à¹€à¸”à¸ªà¸à¹Œà¸—à¹‡à¸­à¸›à¹à¸¥à¸°à¹à¸¥à¹‡à¸›à¸—à¹‡à¸­à¸› à¸„à¸¸à¸“à¸­à¸¢à¸²à¸à¹ƒà¸«à¹‰à¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œà¹à¸ªà¸”à¸‡à¸œà¸¥à¹à¸¥à¸°à¸™à¸³à¹€à¸ªà¸™à¸­à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸­à¸¢à¹ˆà¸²à¸‡à¹à¸¡à¹ˆà¸™à¸¢à¸³à¹à¸¡à¹‰à¸šà¸™à¸«à¸™à¹‰à¸²à¸ˆà¸­à¸—à¸µà¹ˆà¹€à¸¥à¹‡à¸à¸à¸§à¹ˆà¸² à¹‚à¸”à¸¢à¹„à¸¡à¹ˆà¸ˆà¸³à¹€à¸›à¹‡à¸™à¸•à¹‰à¸­à¸‡à¸•à¸±à¸”à¸ªà¹ˆà¸§à¸™à¸›à¸¥à¸²à¸¢à¸‚à¸­à¸‡à¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œà¸­à¸­à¸ à¹€à¸›à¹‡à¸™à¸•à¹‰à¸™ à¹€à¸¡à¸·à¹ˆà¸­à¹ƒà¸Šà¹‰à¹€à¸Ÿà¸£à¸¡à¹€à¸§à¸´à¸£à¹Œà¸à¹€à¸Šà¹ˆà¸™ Bootstrap à¹à¸¥à¸° Ember.js à¸™à¸±à¸à¸žà¸±à¸’à¸™à¸²à¸ªà¸²à¸¡à¸²à¸£à¸–à¹„à¸”à¹‰à¸£à¸±à¸šà¸›à¸£à¸°à¹‚à¸¢à¸Šà¸™à¹Œà¸ˆà¸²à¸à¸à¸²à¸£à¸­à¸­à¸à¹à¸šà¸šà¹à¸šà¸šà¸•à¸­à¸šà¸ªà¸™à¸­à¸‡à¹à¸¥à¸°à¸›à¸£à¸±à¸šà¹à¸•à¹ˆà¸‡à¸£à¸¹à¸›à¸¥à¸±à¸à¸©à¸“à¹Œà¹à¸¥à¸°à¸„à¸§à¸²à¸¡à¸£à¸¹à¹‰à¸ªà¸¶à¸à¸‚à¸­à¸‡à¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œà¹„à¸”à¹‰à¹ƒà¸™à¹à¸žà¸¥à¸•à¸Ÿà¸­à¸£à¹Œà¸¡à¸•à¹ˆà¸²à¸‡ à¹†</p><p>à¸à¸²à¸£à¸žà¸±à¸’à¸™à¸²à¹à¸­à¸›à¸žà¸¥à¸´à¹€à¸„à¸Šà¸±à¸™à¸à¸±à¹ˆà¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œ<br>Node.js à¸„à¸·à¸­à¹€à¸Ÿà¸£à¸¡à¹€à¸§à¸´à¸£à¹Œà¸ JavaScript à¹‚à¸­à¹€à¸žà¹ˆà¸™à¸‹à¸­à¸£à¹Œà¸ªà¸à¸±à¹ˆà¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œà¸—à¸µà¹ˆà¹€à¸£à¸µà¸¢à¸à¹ƒà¸Šà¹‰à¹‚à¸„à¹‰à¸” JavaScript à¸™à¸­à¸à¹€à¸šà¸£à¸²à¸§à¹Œà¹€à¸‹à¸­à¸£à¹Œ à¸™à¸±à¸à¸žà¸±à¸’à¸™à¸²à¹ƒà¸Šà¹‰à¹€à¸Ÿà¸£à¸¡à¹€à¸§à¸´à¸£à¹Œà¸à¸™à¸µà¹‰à¹€à¸žà¸·à¹ˆà¸­à¸ªà¸£à¹‰à¸²à¸‡à¹à¸­à¸›à¸žà¸¥à¸´à¹€à¸„à¸Šà¸±à¸™à¸à¸±à¹ˆà¸‡à¹€à¸‹à¸´à¸£à¹Œà¸Ÿà¹€à¸§à¸­à¸£à¹Œà¸šà¸™à¹€à¸„à¸£à¸·à¸­à¸‚à¹ˆà¸²à¸¢à¸—à¸µà¹ˆà¸›à¸£à¸±à¸šà¸‚à¸™à¸²à¸”à¹„à¸”à¹‰ à¸£à¸§à¸”à¹€à¸£à¹‡à¸§ à¹à¸¥à¸°à¹€à¸Šà¸·à¹ˆà¸­à¸–à¸·à¸­à¹„à¸”à¹‰ à¹€à¸Ÿà¸£à¸¡à¹€à¸§à¸´à¸£à¹Œà¸à¸™à¸µà¹‰à¸ªà¸²à¸¡à¸²à¸£à¸–à¸ˆà¸±à¸”à¸à¸²à¸£à¸„à¸³à¸‚à¸­ HTTP à¹à¸¥à¸° Data Stream à¸ªà¸™à¸±à¸šà¸ªà¸™à¸¸à¸™à¸£à¸°à¸šà¸šà¹„à¸Ÿà¸¥à¹Œ à¹à¸¥à¸°à¸ˆà¸±à¸”à¸à¸²à¸£à¸à¸£à¸°à¸šà¸§à¸™à¸à¸²à¸£à¹à¸šà¹‡à¸„à¹€à¸­à¸™à¸”à¹Œà¸«à¸¥à¸²à¸¢à¸à¸£à¸°à¸šà¸§à¸™à¸à¸²à¸£à¸žà¸£à¹‰à¸­à¸¡à¸à¸±à¸™</p>', 'JavaScript à¹€à¸›à¹‡à¸™à¸ à¸²à¸©à¸²à¹‚à¸›à¸£à¹à¸à¸£à¸¡à¸—à¸µà¹ˆà¸™à¸±à¸à¸žà¸±à¸’à¸™à¸²à¹ƒà¸Šà¹‰à¹ƒà¸™à¸à¸²à¸£à¸ªà¸£à¹‰à¸²à¸‡à¸«à¸™à¹‰à¸²à¹€à¸§à¹‡à¸šà¹à¸šà¸šà¸­à¸´à¸™à¹€à¸—à¸­à¸£à¹Œà¹à¸­à¸„à¸—à¸µ', 'Programing', '2023-05-17 05:51:03', 1, 'poom');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `avatar`, `username`, `password`, `email`, `role`) VALUES
(1, '173235335520230202_031614.jpg', 'poom', '12345678', 'poom05@gmail.com', 'admin'),
(15, '139897746820230128_134838.jpg', 'ton', '12345678', 'phakphumi05@gmail.com', 'user'),
(16, '131189744820230131_120445.jpg', 'poom01', '12345678', 'poom01@gmail.com', 'admin'),
(18, '4147472820230202_074009.jpg', 'poom02', '123456', 'poom02@gmail.com', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article_comment`
--
ALTER TABLE `article_comment`
  ADD PRIMARY KEY (`id_comm`),
  ADD KEY `username` (`username`),
  ADD KEY `id_article` (`id_article`);

--
-- Indexes for table `article_tb`
--
ALTER TABLE `article_tb`
  ADD PRIMARY KEY (`id_article`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article_comment`
--
ALTER TABLE `article_comment`
  MODIFY `id_comm` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `article_tb`
--
ALTER TABLE `article_tb`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_comment`
--
ALTER TABLE `article_comment`
  ADD CONSTRAINT `id_article` FOREIGN KEY (`id_article`) REFERENCES `article_tb` (`id_article`),
  ADD CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"articles_db\",\"table\":\"users\"},{\"db\":\"articles_db\",\"table\":\"article_tb\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-05-18 10:55:06', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
