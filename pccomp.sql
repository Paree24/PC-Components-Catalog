-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2018 at 08:03 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pccomp`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatecabinetprice` (IN `price` INT)  NO SQL
UPDATE cabinet set price=price+100$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateperiprice` (IN `price` INT)  NO SQL
UPDATE peripherals set price=price+100$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `cabinet`
--

CREATE TABLE `cabinet` (
  `CaseName` varchar(30) NOT NULL,
  `Brand` varchar(30) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabinet`
--

INSERT INTO `cabinet` (`CaseName`, `Brand`, `Type`, `Price`) VALUES
('Graphite Series 780T ', 'Corsair', 'ATX', 18000),
('GX1200', 'Antec', 'ATX', 7900),
('GX200', 'Antec', 'ATX', 3500),
('GX330', 'Antec', 'ATX', 4800),
('K380', 'Cooler Master', 'ATX', 3200),
('Manta', 'Nzxt', 'Mini - ITX', 8800),
('Masterbox Lite 5', 'Cooler Master', 'ATX', 4200),
('Masterbox Lite 5 RGB', 'Cooler Master', 'ATX', 5450),
('Phantom 410', 'Nzxt', 'ATX', 8500),
('Q300L', 'Cooler Master', 'Mini - ATX', 8000),
('S340', 'Nzxt', 'ATX', 6900),
('SPEC 05', 'Corsair', 'ATX', 6000),
('SPEC-01', 'Corsair', 'ATX', 3000),
('SPEC-04', 'Corsair', 'ATX', 3800),
('Versa H15', 'Thermaltake', 'Micro - ATX', 7156),
('Versa N21', 'Thermaltake', 'ATX', 4100),
('Versa N26', 'Thermaltake', 'ATX', 3653),
('View 31', 'Thermaltake', 'ATX', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `cpu`
--

CREATE TABLE `cpu` (
  `Cname` varchar(30) NOT NULL,
  `Slot` varchar(30) NOT NULL,
  `Brand` varchar(30) NOT NULL,
  `Gen` varchar(30) NOT NULL,
  `Threads` int(11) NOT NULL,
  `Cores` int(11) NOT NULL,
  `TDP` varchar(30) NOT NULL,
  `Performance` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cpu`
--

INSERT INTO `cpu` (`Cname`, `Slot`, `Brand`, `Gen`, `Threads`, `Cores`, `TDP`, `Performance`, `Price`, `Type`) VALUES
('Ryzen 3 1300X', 'AM4', 'AMD', '1', 4, 4, '65W', 10922, 7000, 'Ryzen 3'),
('Ryzen 3 2200G', 'AM4', 'AMD', '2', 4, 4, '65W', 10023, 8330, 'Ryzen 3'),
('Ryzen 5 1600X', 'AM4', 'AMD', '1', 8, 6, '65W', 18950, 14400, 'Ryzen 5'),
('Ryzen 5 2400G', 'AM4', 'AMD', '2', 8, 4, '65W', 11393, 13900, 'Ryzen 5'),
('Ryzen 5 2600', 'AM4', 'AMD', '2', 8, 6, '65W', 20269, 17000, 'Ryzen 5'),
('Ryzen 5 2600 X', 'AM4', 'AMD', '2', 8, 6, '95W', 21691, 20000, 'Ryzen 5'),
('Ryzen 7 1700', 'AM4', 'AMD', '1', 16, 8, '65W', 20396, 21500, 'Ryzen 7'),
('Ryzen 7 2700', 'AM4', 'AMD', '2', 16, 8, '65W', 22948, 32000, 'Ryzen 7'),
('Core i9 7900X', 'FCLGA2066', 'Intel', '7', 20, 10, '140W', 33842, 81000, 'i9'),
('Core i9 7980X', 'FCLGA2066', 'Intel', '7', 36, 18, '165W', 39883, 194000, 'i9'),
('Celeron G3900', 'LGA1151', 'Intel', '6', 2, 2, '51W', 5476, 4050, 'Celeron'),
('Core i3 8100', 'LGA1151', 'Intel', '8', 4, 4, '65W', 12540, 11500, 'i3'),
('Core i3 8350K', 'LGA1151', 'Intel', '8', 4, 4, '65W', 16061, 18850, 'i3'),
('Core i5 8400', 'LGA1151', 'Intel', '8', 6, 6, '65W', 18443, 21900, 'i5'),
('Core i5 8600K', 'LGA1151', 'Intel', '8', 6, 6, '65W', 22256, 27900, 'i5'),
('Core i7 8700K', 'LGA1151', 'Intel', '8', 12, 6, '65W', 25977, 38000, 'i7'),
('Pentium G4560', 'LGA1151', 'Intel', '7', 4, 2, '54W', 7500, 7600, 'Pentium'),
('Pentium G5400', 'LGA1151', 'Intel', '8', 4, 2, '54W', 8156, 7500, 'Pentium'),
('Core 2 Duo E7500', 'LGA775', 'Intel', '0', 2, 2, '65W', 2820, 445, 'Core 2 Duo'),
('Core 2 Duo E8400', 'LGA775', 'Intel', '0', 2, 2, '65W', 3104, 495, 'Core 2 Duo'),
('Core 2 Quad Q6600', 'LGA775', 'Intel', '0', 4, 4, '65W', 4040, 1200, 'Core 2 Quad'),
('Ryzen Threadripper 1900X', 'TR4', 'AMD', '2', 16, 8, '180W', 21634, 40000, 'Threadripper'),
('Ryzen Threadripper 1950X', 'TR4', 'AMD', '1', 32, 16, '180W', 29594, 82000, 'Threadripper'),
('Ryzen Threadripper 2950X', 'TR4', 'AMD', '2', 32, 16, '180W', 38993, 100000, 'Threadripper'),
('Ryzen Threadripper 2990W', 'TR4', 'AMD', '2', 64, 32, '250W', 33493, 202000, 'Threadripper');

-- --------------------------------------------------------

--
-- Table structure for table `gpu`
--

CREATE TABLE `gpu` (
  `Gname` varchar(30) NOT NULL,
  `Brand` varchar(30) NOT NULL,
  `VRAMType` varchar(30) NOT NULL,
  `VRAMCapacity` varchar(30) NOT NULL,
  `Wattage` varchar(30) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Performance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gpu`
--

INSERT INTO `gpu` (`Gname`, `Brand`, `VRAMType`, `VRAMCapacity`, `Wattage`, `Price`, `Performance`) VALUES
('GT1030', 'Nvidia', 'GDDR5', '2 GB', '450W', 7500, 43364),
('GT710', 'Nvidia', 'DDR3', '1GB', '450W', 2400, 10593),
('GT710', 'Nvidia', 'DDR3', '2 GB', '450W', 3199, 10593),
('GTX1050', 'Nvidia', 'GDDR5', '4 GB', '450W', 14985, 72773),
('GTX1050Ti', 'Nvidia', 'GDDR5', '4 GB', '450W', 15290, 83668),
('GTX1060', 'Nvidia', 'GDDR5', '3 GB', '450W', 26499, 122529),
('GTX1060', 'Nvidia', 'GDDR5', '6 GB', '450W', 33990, 126979),
('GTX1070', 'Nvidia', 'GDDR5', '8 GB', '500W', 46500, 157857),
('GTX1080', 'Nvidia', 'GDDR5', '11 GB', '450W', 89900, 180839),
('GTX1080Ti', 'Nvidia', 'GDDR5', '11 GB', '650W', 99990, 214279),
('R7 240', 'AMD', 'DDR3', '2 GB', '450W', 3275, 26716),
('R7 360', 'AMD', 'GDDR5', '2 GB', '500W', 9949, 57311),
('RTX2080Ti', 'Nvidia', 'GDDR6', '11 GB', '650W', 139999, 348973),
('RX 460 ', 'AMD', 'DDR5', '2 GB', '450W', 22937, 66787),
('RX 550', 'AMD', 'GDDR5', '2 GB', '700W', 11999, 54016),
('RX 560', 'AMD', 'GDDR5', '4 GB', '450W', 16890, 66157),
('RX 570', 'AMD', 'GDDR5', '4 GB', '450W', 29990, 117046),
('RX 580', 'AMD', 'GDDR5', '8 GB', '450W', 28600, 121571),
('RX VEGA 56', 'AMD', 'GDDR5', '8 GB', '450W', 80099, 161027),
('RX VEGA 64', 'AMD', 'GDDR5', '8 GB ', '450W', 72499, 207988),
('WX 2100', 'AMD', 'GDDR5', '2 GB', '450W', 14114, 39838),
('WX 4100', 'AMD', 'GDDR5', '4 GB', '450W', 27899, 67507),
('WX 7100', 'AMD', 'GDDR5 ', '8 GB ', '450W', 72990, 121129);

-- --------------------------------------------------------

--
-- Table structure for table `motherboard`
--

CREATE TABLE `motherboard` (
  `Mname` varchar(30) NOT NULL,
  `Slot` varchar(30) NOT NULL,
  `RAMSlot` varchar(30) DEFAULT NULL,
  `OC` varchar(30) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motherboard`
--

INSERT INTO `motherboard` (`Mname`, `Slot`, `RAMSlot`, `OC`, `Price`) VALUES
('A320', 'AM4', 'DDR4', 'N', 4000),
('B350M', 'AM4', 'DDR4', 'Y', 7500),
('B360', 'LGA1151', 'DDR4', 'Y', 7000),
('B450M', 'AM4', 'DDR4', 'Y', 12000),
('G31', 'LGA775', 'DDR2', 'Y', 2250),
('G41', 'LGA775', 'DDR3', 'Y', 2850),
('H310M', 'LGA1151', 'DDR4', 'N', 5000),
('H370', 'LGA1151', 'DDR4', 'Y', 12400),
('X299', 'FCLGA2066', 'DDR4', 'Y', 55000),
('X399', 'TR4', 'DDR4', 'Y', 50000),
('X470', 'AM4', 'DDR4', 'Y', 16000),
('Z370', 'LGA1151', 'DDR4', 'Y', 13000);

-- --------------------------------------------------------

--
-- Table structure for table `peripherals`
--

CREATE TABLE `peripherals` (
  `PeriName` varchar(30) NOT NULL,
  `Brand` varchar(30) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peripherals`
--

INSERT INTO `peripherals` (`PeriName`, `Brand`, `Type`, `Price`) VALUES
('21.5 Inch Ultra Thin Bezel', 'DELL', 'Monitor', 9500),
('21.5inch Edge to Ede', 'HP ', 'Monitor', 9690),
('23.5inch Curved LED', 'SAMSUNG', 'Monitor', 10000),
('AmazonBasics', 'AMAZON', 'Keyboard', 650),
('B170', 'LOGITECH', 'Mouse', 600),
('G102', 'LOGITECH', 'Mouse', 1400),
('K1500', 'HP ', 'Keyboard', 620),
('K840 Mechanical', 'LOGITECH', 'Keyboard', 3800),
('KB216', 'DELL', 'Keyboard', 600),
('LG 22 inch LCD Monitor', 'LG', 'Monitor', 9500),
('MK200', 'LOGITECH', 'Keyboard', 1000),
('MS116', 'DELL', 'Mouse', 230),
('Slim Bezel 21.5inch', 'BENQ', 'Monitor', 7685),
('X1000', 'HP ', 'Mouse', 250),
('Z3700', 'HP ', 'Mouse', 1000);

--
-- Triggers `peripherals`
--
DELIMITER $$
CREATE TRIGGER `Peripheral Cap` BEFORE INSERT ON `peripherals` FOR EACH ROW set new.brand = upper(new.brand)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `psu`
--

CREATE TABLE `psu` (
  `Pname` varchar(30) NOT NULL,
  `Manufacturer` varchar(30) NOT NULL,
  `Rating` varchar(30) NOT NULL,
  `Wattage` varchar(30) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `psu`
--

INSERT INTO `psu` (`Pname`, `Manufacturer`, `Rating`, `Wattage`, `Price`) VALUES
('CS-850', 'Corsair', '80+ Gold', '850W', 10000),
('CX-650', 'Corsair', '80+ Bronze', '650W', 7000),
('CX-750', 'Corsair', '80+ Bronze', '750W', 8000),
('HCG 850W', 'Antec', '80+ Gold', '850W', 13000),
('HCP 1300W', 'Antec', '80+ Gold', '1300W', 21000),
('MasterWatt Lite 600', 'Cooler Master', '80+', '600W', 4200),
('MasterWatt Lite 750', 'Cooler Master', '80+', '750W', 7100),
('MWE 450', 'Cooler Master', '80+ Bronze', '450W', 2700),
('MWE 550', 'Cooler Master', '80+ Bronze', '550W', 3300),
('RMX 1000W', 'Corsair', '80+ Gold', '1000W', 12000),
('Smart Pro RGB 750W', 'Thermaltake', '80+ Gold', '750W', 10000),
('SmartWhite RGB 500', 'Thermaltake', '80+', '500W', 4000),
('TR2 -S 500', 'Thermaltake', '80+', '500W', 3400),
('TR2 -S 700', 'Thermaltake', '80+', '700W', 5400),
('True Power 850', 'Antec', '80+ Gold', '850W', 8000),
('TX-750', 'Corsair', '80+ GOld', '750W', 10000),
('Vanguard 850', 'Cooler Master', '80+ Gold', '850W', 12000),
('VP 600p', 'Antec', 'none', '600W', 4000),
('VS-450', 'Corsair', 'none', '450W', 2500),
('VS-550', 'Corsair', 'none', '550W', 3500),
('VS-650', 'Corsair', 'none', '650W', 4400);

-- --------------------------------------------------------

--
-- Table structure for table `ram`
--

CREATE TABLE `ram` (
  `Brand` varchar(30) NOT NULL,
  `ClockSpeed` varchar(30) NOT NULL,
  `Size` varchar(30) NOT NULL,
  `RAMSlot` varchar(30) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ram`
--

INSERT INTO `ram` (`Brand`, `ClockSpeed`, `Size`, `RAMSlot`, `Price`) VALUES
('Corsair', '0.8 GHz', '2 GB', 'DDR2', 2709),
('Corsair', '1.6 GHz', '4 GB', 'DDR3', 3299),
('Corsair', '1.9 GHz', '8 GB', 'DDR3', 5900),
('Corsair', '3 GHz', '8 GB', 'DDR4', 6090),
('Crucial', '1.3 GHz', '4 GB', 'DDR2', 2600),
('Crucial', '1.6 GHz', '4 GB', 'DDR3', 2320),
('Crucial', '2.4 GHz', '8 GB', 'DDR4', 5645),
('HyperX', '1.6 GHz', '4 GB', 'DDR3', 4499),
('HyperX', '2.1 GHz', '4 GB', 'DDR4', 4999),
('HyperX', '2.4 GHz', '8 GB', 'DDR4', 6084),
('Kingston', '0.7 GHz', '2 GB', 'DDR2', 600),
('Kingston', '1.6 GHz', '4 GB', 'DDR3', 2670),
('Transcend', '0.8 GHz', '2 GB', 'DDR2', 1600),
('Transcend', '2 GHz', '8 GB', 'DDR3', 5800),
('Transcend', '2.4  GHz', '8 GB', 'DDR4 ', 6299);

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `Sname` varchar(30) NOT NULL,
  `Brand` varchar(30) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Capacity` varchar(30) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`Sname`, `Brand`, `Type`, `Capacity`, `Price`) VALUES
('850Pro', 'Samsung', 'SSD', '250GB', 12000),
('860EVO', 'Samsung', 'SSD', '250GB', 4700),
('860EVO', 'Samsung', 'SSD', '500GB', 10000),
('A400', 'Kingston', 'SSD', '120GB', 2024),
('A400', 'Kingston', 'SSD', '240GB', 3420),
('A400', 'Kingston', 'SSD', '480GB', 6140),
('Barracuda', 'Seagate', 'HDD', '1TB', 3700),
('Barracuda', 'Seagate', 'HDD', '2TB', 5100),
('Blue', 'WD', 'HDD', '1TB', 3650),
('Blue', 'WD', 'HDD', '2TB', 5600),
('Blue', 'WD', 'HDD', '3TB', 9000),
('Blue', 'WD', 'SSD', '250GB', 5300),
('Blue', 'WD', 'SSD', '500GB', 9500),
('Green', 'WD', 'SSD', '120GB', 2086),
('Green', 'WD', 'SSD', '240GB', 3553),
('SSDPlus', 'Sandisk', 'SSD', '120GB', 2019),
('SSDPlus', 'Sandisk', 'SSD', '240GB', 4690),
('UV400', 'Kingston', 'SSD', '120GB', 2236),
('UV400', 'Kingston', 'SSD', '240GB', 5300);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabinet`
--
ALTER TABLE `cabinet`
  ADD PRIMARY KEY (`CaseName`,`Brand`);

--
-- Indexes for table `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`Slot`,`Cname`);

--
-- Indexes for table `motherboard`
--
ALTER TABLE `motherboard`
  ADD PRIMARY KEY (`Mname`,`Slot`),
  ADD KEY `Slot` (`Slot`),
  ADD KEY `RAMSlot` (`RAMSlot`);

--
-- Indexes for table `peripherals`
--
ALTER TABLE `peripherals`
  ADD PRIMARY KEY (`PeriName`);

--
-- Indexes for table `psu`
--
ALTER TABLE `psu`
  ADD PRIMARY KEY (`Pname`,`Manufacturer`,`Wattage`);

--
-- Indexes for table `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`Brand`,`ClockSpeed`,`Size`,`RAMSlot`),
  ADD KEY `RAMSlot` (`RAMSlot`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`Sname`,`Brand`,`Type`,`Capacity`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `motherboard`
--
ALTER TABLE `motherboard`
  ADD CONSTRAINT `Slot` FOREIGN KEY (`Slot`) REFERENCES `cpu` (`Slot`),
  ADD CONSTRAINT `motherboard_ibfk_1` FOREIGN KEY (`RAMSlot`) REFERENCES `ram` (`RAMSlot`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
