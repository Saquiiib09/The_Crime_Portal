-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 12:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crime_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `c_id` int(11) NOT NULL,
  `a_no` bigint(12) NOT NULL,
  `location` varchar(50) NOT NULL,
  `type_crime` varchar(50) NOT NULL,
  `d_o_c` date NOT NULL,
  `description` varchar(7000) NOT NULL,
  `inc_status` varchar(50) DEFAULT 'Unassigned',
  `pol_status` varchar(50) DEFAULT 'null',
  `p_id` varchar(50) DEFAULT 'Null'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`c_id`, `a_no`, `location`, `type_crime`, `d_o_c`, `description`, `inc_status`, `pol_status`, `p_id`) VALUES
(1, 123214521452, 'Tollygunge', 'Robbery', '2018-12-06', 'Home has been Robbed.', 'Assigned', 'Charge sheet filled', 't101'),
(2, 55123316, 'punjab', 'muder', '2021-11-10', 'A man has killed and found in the sea', 'Unassigned', 'null', 'Null'),
(3, 5464, 'Goa', 'cyber crime', '2018-12-21', 'Illegally smuggling of weapons', 'assigned', 'Charge sheet filled', 's203'),
(4, 5155162, 'Rohdu', 'kidnapping', '2021-10-13', 'A small boy is kidnapped from school', 'assigned', 'In Process', 'p102'),
(5, 6595563, 'kashmir', 'cyber crime', '2021-10-26', 'A man is buying illegal products from dark web', 'assigned', 'Charge sheet filled ', 's203'),
(6, 525452353, 'Chandigarh', 'cyber crime', '2021-11-01', 'A group of hackers hack a company and stole all the money ', 'assigned', 'In Process', 'a102'),
(7, 437657, 'Chandigarh', 'muder', '2018-12-06', 'A man is killed with knife ', 'assigned', 'In Process', 'p103'),
(8, 45746, 'Chandigarh', 'Robbery', '2021-10-13', 'diamonds are stolen from store', 'assigned', 'Charge sheet filled', 't101'),
(9, 489456, 'punjab', 'kidnapping', '2020-11-11', 'A boy is kidnapped from the river side ', 'assigned', 'In Process', 'a102'),
(10, 50000, 'Chandigarh', 'muder', '2021-11-08', 'A man is shoot with a gun ', 'assigned', 'In Process', 'p103'),
(11, 80000, 'Rohdu', 'cyber crime', '2021-07-07', 'smuggling drugs online ', 'assigned', 'In Process', 'k202'),
(12, 0, 'shimla', 'Pick Pocket', '2003-02-02', 'wxxxc', 'Unassigned', 'null', 'Null'),
(13, 0, 'Rohdu', 'Missing Person', '2003-02-02', 'the person named atik is missing since october 2023', 'Unassigned', 'null', 'Null'),
(14, 666695696853, 'Rohdu', 'Murder', '2003-02-22', 'a dead body was found at kalyan railway station', 'Unassigned', 'null', 'Null'),
(15, 666683691553, 'Rohdu', 'Theft', '0003-02-22', 'theft', 'Unassigned', 'null', 'Null'),
(16, 666683691553, 'Rohdu', 'Robbery', '2003-02-02', 'vidvbdcnkcnsancsa', 'Unassigned', 'null', 'Null'),
(17, 666683691553, 'Rohdu', 'Murder', '2003-02-22', 'vklsdvindvlkdamlvjqe;ofjpocskcf', 'Unassigned', 'null', 'Null'),
(18, 666683691553, 'Rohdu', 'Robbery', '2023-02-22', 'sudip is robbed i govandi', 'Unassigned', 'null', 'Null');

-- --------------------------------------------------------

--
-- Table structure for table `head`
--

CREATE TABLE `head` (
  `h_id` varchar(50) NOT NULL,
  `h_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `head`
--

INSERT INTO `head` (`h_id`, `h_pass`) VALUES
('saquib', '123'),
('umang', '123');

-- --------------------------------------------------------

--
-- Table structure for table `new_case`
--

CREATE TABLE `new_case` (
  `First_Name` varchar(10) NOT NULL,
  `Middle_Name` varchar(10) NOT NULL,
  `Last_name` varchar(10) NOT NULL,
  `Address` varchar(10) NOT NULL,
  `Pin_Code` int(8) NOT NULL,
  `State` varchar(10) NOT NULL,
  `Discription` varchar(20) NOT NULL,
  `Suspect_age` varchar(10) NOT NULL,
  `Suspect_Gender` varchar(10) NOT NULL,
  `Suspect_Height` int(10) NOT NULL,
  `Weapon` varchar(10) NOT NULL,
  `Crime_Type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_case`
--

INSERT INTO `new_case` (`First_Name`, `Middle_Name`, `Last_name`, `Address`, `Pin_Code`, `State`, `Discription`, `Suspect_age`, `Suspect_Gender`, `Suspect_Height`, `Weapon`, `Crime_Type`) VALUES
('don', 'don', 'bacchi', 'ambivali', 421102, 'maharashtr', 'shooting', '25', 'Male', 8, 'AK47', 'Terrorism'),
('don', 'don', 'bacchi', 'ambivali', 421102, 'maharashtr', 'shooting', '25', 'Male', 8, 'AK47', 'Terrorism'),
('atish', 'katariya', 'chloe', 'kalyan', 421103, 'maharashtr', 'looting', '40', 'Male', 8, 'pistol', 'Theft');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `p_name` varchar(50) NOT NULL,
  `p_id` varchar(50) NOT NULL,
  `p_email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `p_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`p_name`, `p_id`, `p_email`, `spec`, `location`, `p_pass`) VALUES
('saquib khan', 'a101', '', 'crime', 'shimla', '123'),
('saqib', 'a105', 'saquibkhan15750@gmail.com', 'crime', 'shimla', '123'),
('saqib', 'a105', 'saquibkhan15750@gmail.com', 'crime', 'shimla', '123'),
('saquib khan', 'a186', 'saquibkhan15750@gmail.com', 'crime', 'shimla', '123'),
('saquib khan', 'a101', 'saquibkhan15750@gmail.com', 'crime', 'shimla', '123'),
('saqib', 'a101', 'saquibkhan15750@gmail.com', 'crime', 'shimla', '123'),
('saqib', 'a101', 'saquibkhan15750@gmail.com', 'crime', 'shimla', '123');

-- --------------------------------------------------------

--
-- Table structure for table `police_station`
--

CREATE TABLE `police_station` (
  `i_id` varchar(50) NOT NULL,
  `i_name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `i_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `police_station`
--

INSERT INTO `police_station` (`i_id`, `i_name`, `location`, `i_pass`) VALUES
('a101', 'saqib', 'shimla', '123'),
('b101', 'sudip', 'Rohdu', '123');

-- --------------------------------------------------------

--
-- Table structure for table `update_case`
--

CREATE TABLE `update_case` (
  `c_id` int(11) NOT NULL,
  `d_o_u` timestamp NOT NULL DEFAULT current_timestamp(),
  `case_update` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `update_case`
--

INSERT INTO `update_case` (`c_id`, `d_o_u`, `case_update`) VALUES
(1, '2018-12-17 10:32:12', 'Criminal Caught'),
(2, '2018-12-17 10:32:15', 'Criminal Interrogated'),
(3, '2018-12-17 10:32:21', 'Criminal Accepted the Crime'),
(4, '2018-12-17 10:32:26', 'Criminal Charged'),
(5, '2018-12-17 10:32:51', 'The case has been moved to Court.'),
(6, '2018-12-17 10:32:59', 'Criminal Verified'),
(6, '2021-11-06 10:32:06', 'Criminal Verified');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_name` varchar(50) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `u_pass` varchar(50) NOT NULL,
  `u_addr` varchar(100) NOT NULL,
  `a_no` bigint(12) NOT NULL,
  `gen` varchar(15) NOT NULL,
  `mob` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_name`, `u_id`, `u_pass`, `u_addr`, `a_no`, `gen`, `mob`) VALUES
('Satyansh Kumar', 'satyansh123@gmail.com', 'satyansh', 'Ranchi', 123214521452, 'Male', 9854123654),
('saquibkhan', 'saquibkhan15750@gmail.com', 'Sk045265@', 'ambivaloi', 666683691553, 'Male', 7738685358),
('umang bhanushali', 'umang@gmail.com', 'Sk045265@', 'dombivali', 666695696853, 'Male', 6986325863),
('rutuja umap', 'rutuja.umap15484@sakec.ac.in', 'Sk045265@', 'mumbai', 666683691553, 'Female', 7738685358),
('sudip', 'sudip@gamil.com', 'Sk045265@', 'ambivali', 666683691553, 'Male', 7506861651);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `police_station`
--
ALTER TABLE `police_station`
  ADD PRIMARY KEY (`i_id`),
  ADD UNIQUE KEY `location` (`location`);

--
-- Indexes for table `update_case`
--
ALTER TABLE `update_case`
  ADD UNIQUE KEY `d_o_u` (`d_o_u`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
