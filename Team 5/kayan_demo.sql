-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2023 at 09:07 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kayan_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `applicantID` int(11) NOT NULL,
  `FullName` varchar(225) DEFAULT NULL,
  `password` varchar(225) NOT NULL,
  `DOB` date DEFAULT NULL,
  `NationalID` varchar(225) DEFAULT NULL,
  `College` varchar(225) DEFAULT NULL,
  `Faculty` varchar(225) DEFAULT NULL,
  `YearOfStudy` varchar(225) DEFAULT NULL,
  `PhoneNo.` varchar(225) DEFAULT NULL,
  `Email` varchar(225) NOT NULL,
  `ExtraInfo` varchar(2225) DEFAULT NULL,
  `natIDimg` blob DEFAULT NULL,
  `collegeIDimg` blob DEFAULT NULL,
  `PersonalPhoto` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`applicantID`, `FullName`, `password`, `DOB`, `NationalID`, `College`, `Faculty`, `YearOfStudy`, `PhoneNo.`, `Email`, `ExtraInfo`, `natIDimg`, `collegeIDimg`, `PersonalPhoto`) VALUES
(74, 'iman', '$2y$10$s5hETOTnUJ5c1g7T3frYIuhpUNFodx9MluWsspbcP/6F.XpaZu.K.', NULL, NULL, NULL, NULL, NULL, NULL, 'iman@gmail.com', NULL, NULL, NULL, NULL),
(75, 'iman', '$2y$10$TECKs.uEUAy5Jkm8RBuzqO.zelcpX1LOGsCPht0Ru2JLsjiwTQRVW', NULL, NULL, NULL, NULL, NULL, NULL, 'iman@email.com', NULL, NULL, NULL, NULL),
(78, 'salma', '$2y$10$4shqMD5jih.PkKmFWkL/ke9ITAetaSlfMTrtGuYPamCr1yvUswGBC', NULL, NULL, NULL, NULL, NULL, NULL, 'salma1@email.com', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `courseID` int(11) NOT NULL,
  `instructorID` int(11) NOT NULL,
  `DurationInWeeks` int(11) NOT NULL,
  `instrument_taughtID` int(11) NOT NULL,
  `CapacityLeft` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `disabled_persons`
--

CREATE TABLE `disabled_persons` (
  `disabled_userID` int(11) NOT NULL,
  `Name of Caretaker` varchar(225) NOT NULL,
  `CaretakerContactNo.` varchar(225) NOT NULL,
  `RelationToUser` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `donorID` int(11) NOT NULL,
  `NameOfDonor` varchar(225) NOT NULL,
  `Amount` float NOT NULL,
  `PaidStatus` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instruments`
--

CREATE TABLE `instruments` (
  `instrumentID` int(11) NOT NULL,
  `Name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instruments`
--

INSERT INTO `instruments` (`instrumentID`, `Name`) VALUES
(1, 'guitar'),
(2, 'piano'),
(3, 'violin'),
(4, 'oud'),
(5, 'tabla'),
(6, 'qanon'),
(7, 'drums'),
(8, 'flute'),
(9, 'nay'),
(10, 'accordion'),
(11, 'mandolin'),
(12, 'xylophone');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `linkID` int(11) NOT NULL,
  `Title` varchar(2225) NOT NULL,
  `Content` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mailing_list_participants`
--

CREATE TABLE `mailing_list_participants` (
  `mlpID` int(11) NOT NULL,
  `email` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `method_ID` int(11) NOT NULL,
  `method_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods_attr`
--

CREATE TABLE `payment_methods_attr` (
  `attr_id` int(11) NOT NULL,
  `attr_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods_attr_vals`
--

CREATE TABLE `payment_methods_attr_vals` (
  `val_id` int(11) NOT NULL,
  `value` varchar(225) NOT NULL,
  `method_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `receipt_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `instrument_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `Cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `user_roleID` int(11) NOT NULL,
  `RoleType` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`user_roleID`, `RoleType`) VALUES
(0, 'Database Administrator'),
(1, 'Media Specialist'),
(2, 'Instructor'),
(3, 'Staff'),
(4, 'Applicant'),
(5, 'Donor'),
(6, 'Mailing List Subscriber');

-- --------------------------------------------------------

--
-- Table structure for table `role_links`
--

CREATE TABLE `role_links` (
  `role_ID` int(11) NOT NULL,
  `link_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffID` int(11) NOT NULL,
  `FullName` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `user_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `user_role`) VALUES
(74, 4),
(75, 4),
(78, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_course`
--

CREATE TABLE `user_course` (
  `user_ID` int(11) NOT NULL,
  `course_selectedID` int(11) NOT NULL,
  `Fees` double NOT NULL,
  `PaidStatus` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`applicantID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `applicantID` (`applicantID`);

--
-- Indexes for table `course_details`
--
ALTER TABLE `course_details`
  ADD PRIMARY KEY (`courseID`),
  ADD KEY `instrument_taughtID` (`instrument_taughtID`),
  ADD KEY `courseID` (`instructorID`);

--
-- Indexes for table `disabled_persons`
--
ALTER TABLE `disabled_persons`
  ADD PRIMARY KEY (`disabled_userID`),
  ADD KEY `disabled_userID` (`disabled_userID`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`donorID`);

--
-- Indexes for table `instruments`
--
ALTER TABLE `instruments`
  ADD PRIMARY KEY (`instrumentID`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`linkID`);

--
-- Indexes for table `mailing_list_participants`
--
ALTER TABLE `mailing_list_participants`
  ADD PRIMARY KEY (`mlpID`),
  ADD KEY `mlpID` (`mlpID`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`method_ID`);

--
-- Indexes for table `payment_methods_attr`
--
ALTER TABLE `payment_methods_attr`
  ADD PRIMARY KEY (`attr_id`);

--
-- Indexes for table `payment_methods_attr_vals`
--
ALTER TABLE `payment_methods_attr_vals`
  ADD PRIMARY KEY (`val_id`),
  ADD UNIQUE KEY `method_id` (`method_id`),
  ADD UNIQUE KEY `attr_id` (`attr_id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`receipt_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `instrument_id` (`instrument_id`),
  ADD KEY `payment_method` (`payment_method`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`user_roleID`);

--
-- Indexes for table `role_links`
--
ALTER TABLE `role_links`
  ADD PRIMARY KEY (`link_ID`,`role_ID`),
  ADD KEY `role_ID` (`role_ID`,`link_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `user_role` (`user_role`),
  ADD KEY `user_role_2` (`user_role`);

--
-- Indexes for table `user_course`
--
ALTER TABLE `user_course`
  ADD PRIMARY KEY (`user_ID`,`course_selectedID`),
  ADD KEY `user_ID` (`user_ID`,`course_selectedID`),
  ADD KEY `course_selectedID` (`course_selectedID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_details`
--
ALTER TABLE `course_details`
  MODIFY `courseID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instruments`
--
ALTER TABLE `instruments`
  MODIFY `instrumentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `linkID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `method_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods_attr`
--
ALTER TABLE `payment_methods_attr`
  MODIFY `attr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods_attr_vals`
--
ALTER TABLE `payment_methods_attr_vals`
  MODIFY `val_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `receipt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `user_roleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicant`
--
ALTER TABLE `applicant`
  ADD CONSTRAINT `applicant_ibfk_1` FOREIGN KEY (`applicantID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_details`
--
ALTER TABLE `course_details`
  ADD CONSTRAINT `course_details_ibfk_1` FOREIGN KEY (`instructorID`) REFERENCES `staff` (`staffID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_details_ibfk_2` FOREIGN KEY (`instrument_taughtID`) REFERENCES `instruments` (`instrumentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `disabled_persons`
--
ALTER TABLE `disabled_persons`
  ADD CONSTRAINT `disabled_persons_ibfk_1` FOREIGN KEY (`disabled_userID`) REFERENCES `applicant` (`applicantID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `donations_ibfk_1` FOREIGN KEY (`donorID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mailing_list_participants`
--
ALTER TABLE `mailing_list_participants`
  ADD CONSTRAINT `mailing_list_participants_ibfk_1` FOREIGN KEY (`mlpID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_methods_attr_vals`
--
ALTER TABLE `payment_methods_attr_vals`
  ADD CONSTRAINT `payment_methods_attr_vals_ibfk_1` FOREIGN KEY (`method_id`) REFERENCES `payment_methods` (`method_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_methods_attr_vals_ibfk_2` FOREIGN KEY (`attr_id`) REFERENCES `payment_methods_attr` (`attr_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`instrument_id`) REFERENCES `instruments` (`instrumentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `receipt_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `applicant` (`applicantID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `receipt_ibfk_3` FOREIGN KEY (`payment_method`) REFERENCES `payment_methods` (`method_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_links`
--
ALTER TABLE `role_links`
  ADD CONSTRAINT `role_links_ibfk_1` FOREIGN KEY (`link_ID`) REFERENCES `links` (`linkID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_links_ibfk_2` FOREIGN KEY (`role_ID`) REFERENCES `roles` (`user_roleID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`staffID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_role`) REFERENCES `roles` (`user_roleID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_course`
--
ALTER TABLE `user_course`
  ADD CONSTRAINT `user_course_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `applicant` (`applicantID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_course_ibfk_2` FOREIGN KEY (`course_selectedID`) REFERENCES `course_details` (`courseID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
