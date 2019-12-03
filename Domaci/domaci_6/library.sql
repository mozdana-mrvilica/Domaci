-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2019 at 11:55 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `ime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `autor`
--

INSERT INTO `autor` (`id`, `ime`) VALUES
(1, 'George R.R. Martin'),
(2, 'H. Rider Haggard'),
(3, 'C. S. Lewis'),
(4, 'Lewis Carroll'),
(5, ' J. R. R. Tolkien'),
(6, 'Agatha Christie'),
(7, 'J. K. Rowling'),
(8, 'Antoine de Saint-Exupéry'),
(9, 'Charles Dickens'),
(10, 'Miguel de Cervantes');

-- --------------------------------------------------------

--
-- Table structure for table `clanovi`
--

CREATE TABLE `clanovi` (
  `id` int(11) NOT NULL,
  `ime` varchar(100) NOT NULL,
  `adresa` varchar(100) NOT NULL,
  `broj_telefona` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clanovi`
--

INSERT INTO `clanovi` (`id`, `ime`, `adresa`, `broj_telefona`) VALUES
(1, 'Vlado Moskov', 'Njegoseva, Podgorioca', '069223283'),
(2, 'Milos Milosevic', 'Marka Radovica, Podgorica', '8638566'),
(3, 'Radule Radulovic', 'Bokeska, Podgorica', '375595670');

-- --------------------------------------------------------

--
-- Table structure for table `izdata`
--

CREATE TABLE `izdata` (
  `izdata` tinyint(1) NOT NULL,
  `clan_id` int(11) NOT NULL,
  `knjiga_id` int(11) NOT NULL,
  `zaposleni_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `izdata`
--

INSERT INTO `izdata` (`izdata`, `clan_id`, `knjiga_id`, `zaposleni_id`) VALUES
(0, 2, 6, 3),
(0, 1, 7, 1),
(0, 3, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `izdavac`
--

CREATE TABLE `izdavac` (
  `id` int(11) NOT NULL,
  `naziv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `izdavac`
--

INSERT INTO `izdavac` (`id`, `naziv`) VALUES
(1, 'Laguna'),
(2, 'Vulkan idavastvo'),
(3, 'Klett'),
(4, 'Zavod za udzbenike'),
(5, 'Pcelica izdavastvo'),
(6, 'Novi Logos');

-- --------------------------------------------------------

--
-- Table structure for table `knjiga`
--

CREATE TABLE `knjiga` (
  `id` int(11) NOT NULL,
  `naziv` varchar(100) NOT NULL,
  `izdanje` varchar(100) NOT NULL,
  `autor_id` int(11) NOT NULL,
  `izdavac_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `knjiga`
--

INSERT INTO `knjiga` (`id`, `naziv`, `izdanje`, `autor_id`, `izdavac_id`) VALUES
(1, 'Fire & Blood', '2018', 1, 2),
(2, 'Little Prince', '2011', 8, 5),
(3, 'Don Quixote', '2002', 10, 6),
(4, 'A Tale of Two Cities', '1987', 9, 4),
(5, 'She: A History of Adventure', '1887', 2, 3),
(6, 'The Lion, The Witch, and the Wardrobe', '1950', 3, 1),
(7, 'Harry Potter and the Philosopher\'s Stone', '2001', 7, 1),
(8, 'The Lord of the Rings', '1973', 5, 3),
(9, 'The Hobbit', '1939', 5, 6),
(10, 'And Then There Were None', '1990', 6, 5),
(11, 'Alice\'s Adventures in Wonderland', '2010', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `zaposleni`
--

CREATE TABLE `zaposleni` (
  `id` int(11) NOT NULL,
  `ime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zaposleni`
--

INSERT INTO `zaposleni` (`id`, `ime`) VALUES
(1, 'Milos Milosevic'),
(2, 'Petar Petrovic'),
(3, 'Janko Jankovic'),
(4, 'Marko Markovic');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clanovi`
--
ALTER TABLE `clanovi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `izdata`
--
ALTER TABLE `izdata`
  ADD KEY `izdata_fk` (`knjiga_id`),
  ADD KEY `izdata_fk_1` (`clan_id`),
  ADD KEY `izdata_fk_2` (`zaposleni_id`);

--
-- Indexes for table `izdavac`
--
ALTER TABLE `izdavac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knjiga`
--
ALTER TABLE `knjiga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `knjiga_fk` (`autor_id`),
  ADD KEY `knjiga_fk_1` (`izdavac_id`);

--
-- Indexes for table `zaposleni`
--
ALTER TABLE `zaposleni`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `clanovi`
--
ALTER TABLE `clanovi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `izdavac`
--
ALTER TABLE `izdavac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `knjiga`
--
ALTER TABLE `knjiga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `zaposleni`
--
ALTER TABLE `zaposleni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `izdata`
--
ALTER TABLE `izdata`
  ADD CONSTRAINT `izdata_fk` FOREIGN KEY (`knjiga_id`) REFERENCES `knjiga` (`id`),
  ADD CONSTRAINT `izdata_fk_1` FOREIGN KEY (`clan_id`) REFERENCES `clanovi` (`id`),
  ADD CONSTRAINT `izdata_fk_2` FOREIGN KEY (`zaposleni_id`) REFERENCES `zaposleni` (`id`);

--
-- Constraints for table `knjiga`
--
ALTER TABLE `knjiga`
  ADD CONSTRAINT `knjiga_fk` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`id`),
  ADD CONSTRAINT `knjiga_fk_1` FOREIGN KEY (`izdavac_id`) REFERENCES `izdavac` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
