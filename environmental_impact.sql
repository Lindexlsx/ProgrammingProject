-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2025 at 10:15 AM
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
  `mass_density` float DEFAULT NULL COMMENT 'kg/m³',
  `functional_unit` enum('m','m2','m3','kg') NOT NULL COMMENT 'm, m2, m3, kg, ...',
  `environmental_impact` float NOT NULL COMMENT 'kg CO2-eq/functional_unit',
  `unit_price` float DEFAULT NULL COMMENT 'optional',
  `image` varchar(255) DEFAULT NULL COMMENT 'pad of URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `construction_product`
--

INSERT INTO `construction_product` (`id`, `name`, `layer`, `mass_density`, `functional_unit`, `environmental_impact`, `unit_price`, `image`) VALUES
(115, 'Concrete cast in situ (average as in TOTEM)', 'Roof deck', 0, 'm3', 307, 0, ''),
(116, 'Reinforced concrete cast in situ (average as in TOTEM)', 'Roof deck', 0, 'm3', 530, 0, ''),
(117, 'Recycled reinforced concrete cast in situ (average as in TOTEM)', 'Roof deck', 0, 'm3', 484, 0, ''),
(118, 'Fibre-reinforced concrete cast in situ (average as in TOTEM)', 'Roof deck', 0, 'm3', 398, 0, ''),
(119, 'Concrete cast in situ ( C12/15,  E0,  CEM I)', 'Roof deck', 0, 'm3', 312, 0, ''),
(120, 'Concrete cast in situ ( C12/15,  E0,  CEM IIIA)', 'Roof deck', 0, 'm3', 228, 0, ''),
(121, 'Concrete cast in situ ( C12/15,  E0,  CEM IIIB)', 'Roof deck', 0, 'm3', 185, 0, ''),
(122, 'Concrete cast in situ ( C16/20,  E0,  CEM I)', 'Roof deck', 0, 'm3', 330, 0, ''),
(123, 'Concrete cast in situ ( C16/20,  E0,  CEM IIIA)', 'Roof deck', 0, 'm3', 239, 0, ''),
(124, 'Concrete cast in situ ( C16/20,  E0,  CEM IIIB)', 'Roof deck', 0, 'm3', 193, 0, ''),
(125, 'Concrete cast in situ ( C20/25,  E1,  CEM I)', 'Roof deck', 0, 'm3', 358, 0, ''),
(126, 'Concrete cast in situ ( C20/25,  E1,  CEM IIA)', 'Roof deck', 0, 'm3', 336, 0, ''),
(127, 'Concrete cast in situ ( C20/25,  E1,  CEM IIB)', 'Roof deck', 0, 'm3', 296, 0, ''),
(128, 'Concrete cast in situ ( C20/25,  E1,  CEM IIIA)', 'Roof deck', 0, 'm3', 257, 0, ''),
(129, 'Concrete cast in situ ( C20/25,  E1,  CEM IIIB)', 'Roof deck', 0, 'm3', 206, 0, ''),
(130, 'Concrete cast in situ ( C25/30,  EE2,  CEM I)', 'Roof deck', 0, 'm3', 387, 0, ''),
(131, 'Concrete cast in situ ( C25/30,  EE2,  CEM IIA)', 'Roof deck', 0, 'm3', 364, 0, ''),
(132, 'Concrete cast in situ ( C25/30,  EE2,  CEM IIB)', 'Roof deck', 0, 'm3', 319, 0, ''),
(133, 'Concrete cast in situ ( C25/30,  EE2,  CEM IIIA)', 'Roof deck', 0, 'm3', 276, 0, ''),
(134, 'Concrete cast in situ ( C25/30,  EE2,  CEM IIIB)', 'Roof deck', 0, 'm3', 220, 0, ''),
(135, 'Concrete cast in situ ( C30/37,  EE3,  CEM I)', 'Roof deck', 0, 'm3', 416, 0, ''),
(136, 'Concrete cast in situ ( C30/37,  EE3,  CEM IIA)', 'Roof deck', 0, 'm3', 390, 0, ''),
(137, 'Concrete cast in situ ( C30/37,  EE3,  CEM IIB)', 'Roof deck', 0, 'm3', 341, 0, ''),
(138, 'Concrete cast in situ ( C30/37,  EE3,  CEM IIIA)', 'Roof deck', 0, 'm3', 295, 0, ''),
(139, 'Concrete cast in situ ( C30/37,  EE3,  CEM IIIB)', 'Roof deck', 0, 'm3', 233, 0, ''),
(140, 'Concrete cast in situ ( C30/37,  EE3,  CEM V/A)', 'Roof deck', 0, 'm3', 287, 0, ''),
(141, 'Concrete cast in situ ( C35/45,  EE4,  CEM I)', 'Roof deck', 0, 'm3', 444, 0, ''),
(142, 'Concrete cast in situ ( C35/45,  EE4,  CEM IIA)', 'Roof deck', 0, 'm3', 416, 0, ''),
(143, 'Concrete cast in situ ( C35/45,  EE4,  CEM IIB)', 'Roof deck', 0, 'm3', 363, 0, ''),
(144, 'Concrete cast in situ ( C35/45,  EE4,  CEM IIIA)', 'Roof deck', 0, 'm3', 313, 0, ''),
(145, 'Concrete cast in situ ( C35/45,  EE4,  CEM IIIB)', 'Roof deck', 0, 'm3', 246, 0, ''),
(146, 'Concrete cast in situ ( C35/45,  EE4,  CEM VA)', 'Roof deck', 0, 'm3', 304, 0, ''),
(147, 'Concrete cast in situ ( C40/50,  EE4,  CEM I)', 'Roof deck', 0, 'm3', 463, 0, ''),
(148, 'Concrete cast in situ ( C40/50,  EE4,  CEM IIA)', 'Roof deck', 0, 'm3', 434, 0, ''),
(149, 'Concrete cast in situ ( C40/50,  EE4,  CEM IIB)', 'Roof deck', 0, 'm3', 378, 0, ''),
(150, 'Concrete cast in situ ( C40/50,  EE4,  CEM IIIA)', 'Roof deck', 0, 'm3', 325, 0, ''),
(151, 'Concrete cast in situ ( C40/50,  EE4,  CEM IIIB)', 'Roof deck', 0, 'm3', 255, 0, ''),
(152, 'Cement cast in situ', 'Roof deck', 0, 'm3', 299, 0, ''),
(153, 'Reinforcing steel', 'Roof deck', 7850, 'kg', 2, 0, ''),
(154, 'Steel (untreated)', 'Roof deck', 7850, 'kg', 2, 0, ''),
(155, 'Softwood (untreated)', 'Roof deck', 0, 'm3', 130, 0, ''),
(156, 'CLT (Cross Laminated Timber)', 'Roof deck', 0, 'm3', 185, 0, ''),
(157, 'LVL (Laminated Verneer Lumber)', 'Roof deck', 0, 'm3', 425, 0, ''),
(158, 'Insulation | Stone wool ', 'Thermal insulation', 150, 'kg', 1, 0, ''),
(159, 'Insulation | Glass wool ', 'Thermal insulation', 75, 'kg', 2, 0, ''),
(160, 'Insulation | PUR Foam | Blown on site', 'Thermal insulation', 0, 'm3', 711, 0, ''),
(161, 'Insulation | Board | EPS', 'Thermal insulation', 0, 'm3', 197, 0, ''),
(162, 'Insulation | Board | XPS', 'Thermal insulation', 0, 'm3', 467, 0, ''),
(163, 'Insulation | Board | Cellular glass', 'Thermal insulation', 0, 'm3', 181, 0, ''),
(164, 'Insulation | Board | Wood fibre For cavity wall | Ties and clips to be added', 'Thermal insulation', 0, 'm3', 105, 0, ''),
(165, 'Water proofing sheet | Polymer bitumen (7 mm) | Loose laid | To be ballasted', 'Waterproofing membrane', 0, 'm2', 10, 0, ''),
(166, 'Proofing sheet | EPDM (1.2 mm) | Loose laid | To be ballasted', 'Waterproofing membrane', 0, 'm2', 2, 0, ''),
(167, 'Gypsum plasterboard (15 mm)', 'Interior finish', 0, 'm2', 4, 0, ''),
(168, 'Gypsum plaster (15 mm)', 'Interior finish', 0, 'm2', 4, 0, ''),
(169, 'Uncoated cellular insulation material', 'Thermal insulation', 95, 'kg', 1.62285, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roof_project`
--

CREATE TABLE `roof_project` (
  `id` int(11) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `total_impact` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roof_project`
--

INSERT INTO `roof_project` (`id`, `project_name`, `total_impact`, `created_at`) VALUES
(1, 'Beton + PUR + bitumen', 187.1, '2025-06-16 07:35:57'),
(2, 'Gerecycleerd beton + EPS + bitumen', 136.35, '2025-06-16 08:02:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `construction_product`
--
ALTER TABLE `construction_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roof_project`
--
ALTER TABLE `roof_project`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `construction_product`
--
ALTER TABLE `construction_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key', AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `roof_project`
--
ALTER TABLE `roof_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
