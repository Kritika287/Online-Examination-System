-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2022 at 10:23 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic`
--

CREATE TABLE `academic` (
  `Academicname` varchar(10) NOT NULL,
  `Academicabb` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic`
--

INSERT INTO `academic` (`Academicname`, `Academicabb`) VALUES
('2019', '2019'),
('2020', '2020'),
('2021', '2021'),
('2022', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Aid` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `Repass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Aid`, `Email`, `Name`, `Pass`, `Repass`) VALUES
('AD01', 'ad01_manish@banasthali.in', 'Manish Shukla', 'apple@123', 'apple@123'),
('AD02', 'ad02_shubham@banasthali.in', 'Shubham Goel', 'mouse@345', 'mouse@345'),
('AD03', 'ad03_naitik@banasthali.in', 'Naitik Raj', 'banana@760', 'banana@760'),
('AD04', 'ad04_kaushik@banasthali.in', 'Kaushik Sharma', 'guraffe435', 'guraffe435');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Ccode` varchar(10) NOT NULL,
  `Cname` varchar(100) NOT NULL,
  `Cabb` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Ccode`, `Cname`, `Cabb`) VALUES
('BIO101', 'BIOLOGY', 'BIO'),
('CHE102', 'Thermodynamics', 'THERMO'),
('CS209', 'Data Structures', 'DS'),
('CS304', 'Java Programming', 'JAVA'),
('CS308', 'Operating Systems', 'OS'),
('CS317', 'Artificial Intelligence and Machine Learning', 'AIML'),
('CS405', 'Compiler Design', 'CD'),
('ECO307', 'Fundamentals of Economics', 'ECO'),
('EEE101', 'Electrical Engineering', 'EE'),
('ENGG101', 'Engineering Drawing and Graphics', 'ED'),
('ENGG201', 'Structure and Properties of Materials', 'SPM'),
('IT302', 'Internet and Web Technology', 'IWT'),
('MATH311', 'Numerical Methods', 'NM'),
('MGMT310', 'Principles of Management', 'POM'),
('PHY101', 'Applied Optics', 'OPTICS');

-- --------------------------------------------------------

--
-- Table structure for table `programme`
--

CREATE TABLE `programme` (
  `Programname` varchar(100) NOT NULL,
  `Programabb` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programme`
--

INSERT INTO `programme` (`Programname`, `Programabb`) VALUES
('Bachelor of Arts', 'BA'),
('Bachelor of Arts + Bachelor of Laws', 'B.A.L.L.B.'),
('Bachelor of Commerce ', 'B.Com'),
('Bachelor of Computer Applications ', 'BCA'),
('Bachelor of Design', 'B.Des'),
('Bachelor of Pharmacy', 'B.Pharm'),
('Bachelor of Technology ', 'B.Tech'),
('Master of Business Administration ', 'MBA'),
('Master of Science', 'M.Sc'),
('Ph.D', 'Ph.D');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `Qid` int(8) NOT NULL AUTO_INCREMENT,
  `Testid` varchar(10) NOT NULL,
  `Ques` varchar(1000) NOT NULL,
  `Opt1` varchar(500) NOT NULL,
  `Opt2` varchar(500) NOT NULL,
  `Opt3` varchar(500) DEFAULT NULL,
  `Opt4` varchar(500) DEFAULT NULL,
  `Ans` varchar(500) NOT NULL,
  `Maxmark` int(2) NOT NULL,
  `Negmark` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `Sid` varchar(10) NOT NULL,
  `Testid` varchar(10) NOT NULL,
  `TotalMarks` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `Semname` varchar(50) NOT NULL,
  `Semabb` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`Semname`, `Semabb`) VALUES
('Semester I', 'I'),
('Semester II', 'II'),
('Semester III', 'III'),
('Semester IV', 'IV'),
('Semester IX', 'IX'),
('Semester V', 'V'),
('Semester VI', 'VI'),
('Semester VII', 'VII'),
('Semester VIII', 'VIII'),
('Semester X', 'X');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Sid` varchar(10) NOT NULL,
  `Eno` varchar(9) DEFAULT NULL,
  `Rollno` bigint(7) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contactno` bigint(10) NOT NULL,
  `Altcontactno` bigint(10) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `Repass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Sid`, `Eno`, `Rollno`, `Name`, `Email`, `Contactno`, `Altcontactno`, `Pass`, `Repass`) VALUES
('BTBTC21361', '2019/6576', 2114556, 'Vaishnavi', 'btbtc21361_vaishnavi@banasthali.in', 8967656345, 9355354648, 'orange$$123', 'orange$$123'),
('btbti19051', '2019/1334', 1913593, 'Latika Singh', 'btbti19051_latika@banasthali.in', 8448315639, 9911526983, 'listener#456', 'listener#456'),
('btbti19149', '2019/1366', 1913639, 'Shubhangi', 'btbti19149_shubhangi@banasthali.in', 7356755678, 7356752323, 'grapes^785', 'grapes^785'),
('HEMSO20020', '2019/8765', 1526788, 'Anahulata', 'HEMSO20020_@anahulatabanasthali.in', 8635456785, 8645633737, 'avacado**&!', 'avacado**&!'),
('lwbli21192', '2019/2345', 2178453, 'PRAGYA SINGH', 'lwbli21192_pragya@banasthali.in', 7356758952, 7356758965, 'mouse@345', 'mouse@345'),
('Wbbcm19913', '2019/1234', 1914563, 'Riyanshi Agarwal', 'wbbcm19913_riyanshi@banasthali.in', 7467856678, 9132543465, 'apple@123', 'apple@123');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Subname` varchar(100) NOT NULL,
  `Subabb` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`Subname`, `Subabb`) VALUES
('Accountancy', 'ACC'),
('Aeronautical Engineering', 'AE'),
('Automobile Engineering', 'AUTO'),
('Biotechnology', 'BT'),
('Chemical Engineering', 'CE'),
('Computer Science', 'CS'),
('Electrical and Electronics Engineering', 'EEE'),
('Electronics & Communication', 'EC'),
('Electronics and Electrical', 'EE'),
('Finance', 'FIN'),
('Information Technology', 'IT'),
('Mechanical Engineering', 'ME'),
('Mechatronics', 'MCTR'),
('Psychology', 'PSY');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Tid` varchar(20) NOT NULL,
  `Tname` varchar(50) NOT NULL,
  `Dept` varchar(100) NOT NULL,
  `Phno` bigint(10) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `Repass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Tid`, `Tname`, `Dept`, `Phno`, `Email`, `Pass`, `Repass`) VALUES
('TCTCB12345', 'Mrs. Pooja Sharma', 'Chemistry', 7834675991, 'tctcb12345_pooja@banasthali.in', 'lichi@juice', 'lichi@juice'),
('TCTCI12789', 'Ms. Manisha Kumari', 'Computer Science', 8759695738, 'tctci12789_manisha@banasthali.in', 'apricot^ty', 'apricot^ty'),
('TETEF13579', 'Mr. Vipin Sharma', 'Commerce and Management', 9487576523, 'tetef13579_vipin@bansthali.in', 'jalmahal)(*', 'jalmahal)(*'),
('TRTRU75643', 'Mr. Rakesh Gupta', 'Mathematics and Statistics', 7866563897, 'trtru75643_rakesh@banasthali.in', 'typhoon&ice', 'typhoon&ice');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `Testid` varchar(20) NOT NULL,
  `Testdate` date NOT NULL,
  `Testduration` int(3) NOT NULL,
  `Programname` varchar(100) NOT NULL,
  `Subname` varchar(100) NOT NULL,
  `Semname` varchar(50) NOT NULL,
  `Academicname` varchar(10) NOT NULL,
  `Ccode` varchar(10) NOT NULL,
  `TotalQ` int(3) NOT NULL,
  `Tname` varchar(50) NOT NULL,
  `Instruction` varchar(200) NOT NULL,
  `Pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic`
--
ALTER TABLE `academic`
  ADD PRIMARY KEY (`Academicname`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Aid`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Ccode`);

--
-- Indexes for table `programme`
--
ALTER TABLE `programme`
  ADD PRIMARY KEY (`Programname`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`Qid`,`Testid`),
  ADD KEY `fk_testid` (`Testid`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`Sid`,`Testid`),
  ADD KEY `fk_test` (`Testid`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`Semname`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Sid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Subname`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Tid`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`Testid`),
  ADD KEY `fk_academic` (`Academicname`),
  ADD KEY `fk_course` (`Ccode`),
  ADD KEY `fk_programme` (`Programname`),
  ADD KEY `fk_semester` (`Semname`),
  ADD KEY `fk_subject` (`Subname`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `fk_testid` FOREIGN KEY (`Testid`) REFERENCES `test` (`Testid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `fk_sid` FOREIGN KEY (`Sid`) REFERENCES `student` (`Sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_test` FOREIGN KEY (`Testid`) REFERENCES `test` (`Testid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `fk_academic` FOREIGN KEY (`Academicname`) REFERENCES `academic` (`Academicname`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_course` FOREIGN KEY (`Ccode`) REFERENCES `course` (`Ccode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_programme` FOREIGN KEY (`Programname`) REFERENCES `programme` (`Programname`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_semester` FOREIGN KEY (`Semname`) REFERENCES `semester` (`Semname`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_subject` FOREIGN KEY (`Subname`) REFERENCES `subject` (`Subname`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
