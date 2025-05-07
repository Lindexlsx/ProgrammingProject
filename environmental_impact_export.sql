-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2025 at 11:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `environmental_impact`
--

-- --------------------------------------------------------

--
-- Table structure for table `construction_product`
--

CREATE TABLE `construction_product` (
  `id` int(11) NOT NULL COMMENT 'primary key',
  `name` varchar(100) NOT NULL COMMENT 'name of material',
  `layer` varchar(50) NOT NULL COMMENT 'structure, thermal insulation, ...',
  `mass_density` float NOT NULL COMMENT 'kg/m³ (ik zorg later voor link met functionele eenheid)',
  `environmental_impact` float NOT NULL COMMENT 'kg CO2-eq/kg (ik zorg later voor link met functionele eenheid)',
  `unit_price` float DEFAULT NULL COMMENT 'optional',
  `image` varchar(255) NOT NULL COMMENT 'pad of URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `construction_product`
--

INSERT INTO `construction_product` (`id`, `name`, `layer`, `mass_density`, `environmental_impact`, `unit_price`, `image`) VALUES
(1, 'Polymer modified bitumen (PMB)', 'Waterproofing membrane', 1200, 0.326, NULL, ''),
(2, 'Concrete C25/30', 'Roof deck', 2400, 0.115, NULL, ''),
(3, 'Polyurethane Rigid Foam', 'Thermal insulation', 35, 4.26, NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `construction_product`
--
ALTER TABLE `construction_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `construction_product`
--
ALTER TABLE `construction_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key', AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
