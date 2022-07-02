-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2020 at 12:13 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookingtable`
--

CREATE TABLE `bookingtable` (
  `bookingID` int(11) NOT NULL,
  `movieName` varchar(100) DEFAULT NULL,
  `bookingTheatre` varchar(100) NOT NULL,
  `bookingType` varchar(100) DEFAULT NULL,
  `bookingDate` varchar(50) NOT NULL,
  `bookingTime` varchar(50) NOT NULL,
  `bookingFName` varchar(100) NOT NULL,
  `bookingLName` varchar(100) DEFAULT NULL,
  `bookingPNumber` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingtable`
--

INSERT INTO `bookingtable` (`bookingID`, `movieName`, `bookingTheatre`, `bookingType`, `bookingDate`, `bookingTime`, `bookingFName`, `bookingLName`, `bookingPNumber`) VALUES
(19, 'Bad Boys For Life', 'main-hall', '3d', '13-3', '15-00', 'Bardh ', 'Korca', '38345873399'),
(22, 'Jumanji', 'vip-hall', 'imax', '13-3', '18-00', 'Lirigzona', 'Rexha', '38349256256'),
(24, 'VENOM', 'vip-hall', 'imax', '14-3', '18-00', 'Nderim', 'Murati', ' '),
(25, 'VENOM', 'main-hall', '3d', '12-3', '15-00', 'Qendrim', 'Rexhepi', '+38349200200'),
(26, 'VENOM', 'main-hall', '3d', '12-3', '15-00', 'Qendrim', 'Rexhepi', '+38349200200'),
(28, 'Bad Boys For Life 2', 'main-hall', '2d', '12-3', '12-00', 'HASAN', 'PRISHTINA', '+38344100100');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacktable`
--

CREATE TABLE `feedbacktable` (
  `msgID` int(12) NOT NULL,
  `senderfName` varchar(50) NOT NULL,
  `senderlName` varchar(50) DEFAULT NULL,
  `sendereMail` varchar(100) NOT NULL,
  `senderfeedback` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacktable`
--

INSERT INTO `feedbacktable` (`msgID`, `senderfName`, `senderlName`, `sendereMail`, `senderfeedback`) VALUES
(1, 'Besar', 'Tasholli', 'besartasholli@mail.com', 'Hello '),
(2, 'Nderim ', 'Murati', 'nderimmurati321@gmail.com', 'Pershendetje'),
(3, 'Qendrim', 'Rexhepi', 'qr20339@ubt-uni.net', 'Pershendetje te nderuar'),
(4, 'Besar', 'sada', 'besartasholli@gmail.com', 'Ndreqe problemin');

-- --------------------------------------------------------

--
-- Table structure for table `movietable`
--

CREATE TABLE `movietable` (
  `movieID` int(11) NOT NULL,
  `movieImg` varchar(150) NOT NULL,
  `movieTitle` varchar(100) NOT NULL,
  `movieGenre` varchar(50) NOT NULL,
  `movieDuration` int(11) NOT NULL,
  `movieRelDate` date NOT NULL,
  `movieDirector` varchar(50) NOT NULL,
  `movieActors` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movietable`
--

INSERT INTO `movietable` (`movieID`, `movieImg`, `movieTitle`, `movieGenre`, `movieDuration`, `movieRelDate`, `movieDirector`, `movieActors`) VALUES
(1, 'img/movie1-poster-badboysforlife.jpg', 'Bad Boys For Life 2', ' Action, Adventure', 220, '2020-02-10', 'Anna Boden, Ryan Fleck', 'Will Smith\', \'Martin Lawrence'),
(2, 'img/movie2-poster-007.jpg', 'No Time To Die - 007', 'Action', 110, '2020-02-18', 'Daniel Craig', 'Daniel Craig'),
(3, 'img/movie3-poster-jumanji.jpg', 'JUMANJI 2', 'Comedy, Action, Adventure', 110, '2020-01-29', 'Dwayne John', 'Dwayne John, Jack Black\', \'Kevin Hart, Karen Gillan'),
(4, 'img/movie4-poster-extraction.jpg', 'EXTRACTION', 'Action', 105, '2019-01-23', 'Chris Hemsworth', 'Chris Hemsworth\', \'Russo Brothers, Joe Russo, Sam Hargrave'),
(5, 'img/movie5-poster-venom.jpg', 'VENOM', 'Fantasy,Action', 132, '2018-10-05', 'Tom Hardy', 'Tom Hardy\', \'Michelle Williams, Woody Harrelson, Jenny Slate'),
(6, 'img/movie6-poster-endgame.jpg', 'AVANGERS Endgame', 'Fantasy, Action, Thriller', 107, '2020-01-04', 'Scarlett Johansson', 'Robert Downey Jr.\', \'Scarlett Johansson, Chris Hemsworth, Chris Evans, Mark Ruffalo'),
(7, 'img/movie7-poster-capone.jpg', 'AL CAPONE', 'Action', 110, '2020-03-18', 'Tom Hardy', 'Tom Hardy'),
(8, 'mg/movie8-poster-madmaxfuryroad.jpg', 'MAD MAX FURY ROAD', 'Action,Fantasy', 110, '2015-04-12', 'Tom Hardy', 'Tom Hardy'),
(9, 'img/movie9-poster-johnwick3.jpg', 'John Wick 3', 'Action', 110, '2019-10-27', 'Keanu Reeves', 'Keanu Reeves'),
(12, 'img/movie9-poster-johnwick3.jpg', 'John Wick 3', 'Action', 190, '2020-10-27', 'Besar Bosi', 'Keanu Reeves');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingtable`
--
ALTER TABLE `bookingtable`
  ADD PRIMARY KEY (`bookingID`),
  ADD UNIQUE KEY `bookingID` (`bookingID`),
  ADD KEY `bookingID_2` (`bookingID`),
  ADD KEY `bookingID_3` (`bookingID`),
  ADD KEY `bookingID_4` (`bookingID`);

--
-- Indexes for table `feedbacktable`
--
ALTER TABLE `feedbacktable`
  ADD PRIMARY KEY (`msgID`),
  ADD UNIQUE KEY `msgID` (`msgID`);

--
-- Indexes for table `movietable`
--
ALTER TABLE `movietable`
  ADD PRIMARY KEY (`movieID`),
  ADD UNIQUE KEY `movieID` (`movieID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookingtable`
--
ALTER TABLE `bookingtable`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `feedbacktable`
--
ALTER TABLE `feedbacktable`
  MODIFY `msgID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `movietable`
--
ALTER TABLE `movietable`
  MODIFY `movieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
