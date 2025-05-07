-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2025 at 01:38 PM
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
  `layer` enum('Ballast','Waterproofing membrane','Thermal insulation','Vapour barrier','Roof deck','Interior finish') NOT NULL COMMENT 'structure, thermal insulation, ...',
  `functional_unit` enum('m','m2','m3','kg') NOT NULL COMMENT 'm, m2, m3, kg, ...',
  `environmental_impact` float NOT NULL COMMENT 'kg CO2-eq/functional_unit',
  `unit_price` float DEFAULT NULL COMMENT 'optional',
  `image` varchar(255) NOT NULL COMMENT 'pad of URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `construction_product`
--

INSERT INTO `construction_product` (`id`, `name`, `layer`, `functional_unit`, `environmental_impact`, `unit_price`, `image`) VALUES
(59, 'name', '', '', 0, 0, 'image'),
(60, 'Concrete cast in situ (average as in TOTEM)', 'Roof deck', 'm3', 307, 0, ''),
(61, 'Reinforced concrete cast in situ (average as in TOTEM)', 'Roof deck', 'm3', 530, 0, ''),
(62, 'Recycled reinforced concrete cast in situ (average as in TOTEM)', 'Roof deck', 'm3', 484, 0, ''),
(63, 'Fibre-reinforced concrete cast in situ (average as in TOTEM)', 'Roof deck', 'm3', 398, 0, ''),
(64, 'Concrete cast in situ ( C12/15,  E0,  CEM I)', 'Roof deck', 'm3', 312, 0, ''),
(65, 'Concrete cast in situ ( C12/15,  E0,  CEM IIIA)', 'Roof deck', 'm3', 228, 0, ''),
(66, 'Concrete cast in situ ( C12/15,  E0,  CEM IIIB)', 'Roof deck', 'm3', 185, 0, ''),
(67, 'Concrete cast in situ ( C16/20,  E0,  CEM I)', 'Roof deck', 'm3', 330, 0, ''),
(68, 'Concrete cast in situ ( C16/20,  E0,  CEM IIIA)', 'Roof deck', 'm3', 239, 0, ''),
(69, 'Concrete cast in situ ( C16/20,  E0,  CEM IIIB)', 'Roof deck', 'm3', 193, 0, ''),
(70, 'Concrete cast in situ ( C20/25,  E1,  CEM I)', 'Roof deck', 'm3', 358, 0, ''),
(71, 'Concrete cast in situ ( C20/25,  E1,  CEM IIA)', 'Roof deck', 'm3', 336, 0, ''),
(72, 'Concrete cast in situ ( C20/25,  E1,  CEM IIB)', 'Roof deck', 'm3', 296, 0, ''),
(73, 'Concrete cast in situ ( C20/25,  E1,  CEM IIIA)', 'Roof deck', 'm3', 257, 0, ''),
(74, 'Concrete cast in situ ( C20/25,  E1,  CEM IIIB)', 'Roof deck', 'm3', 206, 0, ''),
(75, 'Concrete cast in situ ( C25/30,  EE2,  CEM I)', 'Roof deck', 'm3', 387, 0, ''),
(76, 'Concrete cast in situ ( C25/30,  EE2,  CEM IIA)', 'Roof deck', 'm3', 364, 0, ''),
(77, 'Concrete cast in situ ( C25/30,  EE2,  CEM IIB)', 'Roof deck', 'm3', 319, 0, ''),
(78, 'Concrete cast in situ ( C25/30,  EE2,  CEM IIIA)', 'Roof deck', 'm3', 276, 0, ''),
(79, 'Concrete cast in situ ( C25/30,  EE2,  CEM IIIB)', 'Roof deck', 'm3', 220, 0, ''),
(80, 'Concrete cast in situ ( C30/37,  EE3,  CEM I)', 'Roof deck', 'm3', 416, 0, ''),
(81, 'Concrete cast in situ ( C30/37,  EE3,  CEM IIA)', 'Roof deck', 'm3', 390, 0, ''),
(82, 'Concrete cast in situ ( C30/37,  EE3,  CEM IIB)', 'Roof deck', 'm3', 341, 0, ''),
(83, 'Concrete cast in situ ( C30/37,  EE3,  CEM IIIA)', 'Roof deck', 'm3', 295, 0, ''),
(84, 'Concrete cast in situ ( C30/37,  EE3,  CEM IIIB)', 'Roof deck', 'm3', 233, 0, ''),
(85, 'Concrete cast in situ ( C30/37,  EE3,  CEM V/A)', 'Roof deck', 'm3', 287, 0, ''),
(86, 'Concrete cast in situ ( C35/45,  EE4,  CEM I)', 'Roof deck', 'm3', 444, 0, ''),
(87, 'Concrete cast in situ ( C35/45,  EE4,  CEM IIA)', 'Roof deck', 'm3', 416, 0, ''),
(88, 'Concrete cast in situ ( C35/45,  EE4,  CEM IIB)', 'Roof deck', 'm3', 363, 0, ''),
(89, 'Concrete cast in situ ( C35/45,  EE4,  CEM IIIA)', 'Roof deck', 'm3', 313, 0, ''),
(90, 'Concrete cast in situ ( C35/45,  EE4,  CEM IIIB)', 'Roof deck', 'm3', 246, 0, ''),
(91, 'Concrete cast in situ ( C35/45,  EE4,  CEM VA)', 'Roof deck', 'm3', 304, 0, ''),
(92, 'Concrete cast in situ ( C40/50,  EE4,  CEM I)', 'Roof deck', 'm3', 463, 0, ''),
(93, 'Concrete cast in situ ( C40/50,  EE4,  CEM IIA)', 'Roof deck', 'm3', 434, 0, ''),
(94, 'Concrete cast in situ ( C40/50,  EE4,  CEM IIB)', 'Roof deck', 'm3', 378, 0, ''),
(95, 'Concrete cast in situ ( C40/50,  EE4,  CEM IIIA)', 'Roof deck', 'm3', 325, 0, ''),
(96, 'Concrete cast in situ ( C40/50,  EE4,  CEM IIIB)', 'Roof deck', 'm3', 255, 0, ''),
(97, 'Cement cast in situ', 'Roof deck', 'm3', 299, 0, ''),
(98, 'Reinforcing steel', 'Roof deck', 'kg', 2, 0, ''),
(99, 'Steel (untreated)', 'Roof deck', 'kg', 2, 0, ''),
(100, 'Softwood (untreated)', 'Roof deck', 'm3', 130, 0, ''),
(101, 'CLT (Cross Laminated Timber)', 'Roof deck', 'm3', 185, 0, ''),
(102, 'LVL (Laminated Verneer Lumber)', 'Roof deck', 'm3', 425, 0, ''),
(103, 'Insulation | Stone wool ', 'Thermal insulation', 'kg', 1, 0, ''),
(104, 'Insulation | Glass wool ', 'Thermal insulation', 'kg', 2, 0, ''),
(105, 'Insulation | PUR Foam | Blown on site', 'Thermal insulation', 'm3', 711, 0, ''),
(106, 'Insulation | Board | EPS', 'Thermal insulation', 'm3', 197, 0, ''),
(107, 'Insulation | Board | XPS', 'Thermal insulation', 'm3', 467, 0, ''),
(108, 'Insulation | Board | Cellular glass', 'Thermal insulation', 'm3', 181, 0, ''),
(109, 'Insulation | Board | Wood fibre For cavity wall | Ties and clips to be added', 'Thermal insulation', 'm3', 105, 0, ''),
(110, 'Water proofing sheet | Polymer bitumen (7 mm) | Loose laid | To be ballasted', 'Waterproofing membrane', 'm2', 10, 0, ''),
(111, 'Proofing sheet | EPDM (1.2 mm) | Loose laid | To be ballasted', 'Waterproofing membrane', 'm2', 2, 0, ''),
(112, 'Gypsum plasterboard (15 mm)', 'Interior finish', 'm2', 4, 0, ''),
(113, 'Gypsum plaster (15 mm)', 'Interior finish', 'm2', 4, 0, '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key', AUTO_INCREMENT=114;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
