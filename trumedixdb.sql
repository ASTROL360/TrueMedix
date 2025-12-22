-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2025 at 03:25 AM
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
-- Database: `trumedixdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `name` text NOT NULL,
  `email` varchar(59) NOT NULL,
  `department` text NOT NULL,
  `doctor` varchar(255) NOT NULL,
  `appointment_date` text NOT NULL,
  `appointment_time` text NOT NULL,
  `admin_message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_id`, `user_id`, `doctor_id`, `status`, `notes`, `created_at`, `name`, `email`, `department`, `doctor`, `appointment_date`, `appointment_time`, `admin_message`) VALUES
(1, 9, 6, 'Pending', 'My son is having breathing issues temporarily', '2025-06-03 08:44:01', 'martha', 'martha12@gmail.com', 'Cardiology', 'Dr. Smith', '2025-06-18', '10:00 AM', NULL),
(2, 2, 7, 'Approved', '5 year old head ache', '2025-06-09 23:10:15', 'MIKE', 'mike@gmail.com', 'Pediatrics', 'Dr. Viola Davis', '2025-06-12', '10:00 AM', 'Your lab test is ready');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `complaint_id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `urgency` enum('Low','Medium','High','Critical') DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `message` text NOT NULL,
  `screenshot_path` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `response` text DEFAULT NULL,
  `responded_at` timestamp NULL DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`complaint_id`, `Name`, `category`, `urgency`, `phone`, `message`, `screenshot_path`, `status`, `submitted_at`, `response`, `responded_at`, `user_email`, `user_id`) VALUES
(1, 'mark', 'Billing Issue', 'Low', '09079085438', 'I was wondering if there was any way.my bill could be re-evaluated. Thank you', NULL, 'Pending', '2025-05-30 06:45:48', NULL, NULL, NULL, NULL),
(2, 'user', 'Appointments', 'Low', '09045678946', 'I booked an appointment and i  havent been given any feedback whatsoever', NULL, 'Pending', '2025-05-30 07:09:51', 'We will do something about it and get back to you sir', '2025-05-31 09:47:22', NULL, NULL),
(6, 'martha', 'Appointments', 'Low', '07037541895', 'my appointment has been delayed. May i know the reason behind this?', NULL, 'Pending', '2025-06-03 08:45:22', NULL, NULL, NULL, NULL),
(7, 'mary', 'Appointments', 'Medium', '09065867319', 'i cant seem to book an appointment', 'C:\\Users\\DELL\\Downloads\\doctors\\femaledoc7.jpg', 'Pending', '2025-06-09 23:05:02', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_stats`
--

CREATE TABLE `department_stats` (
  `id` int(11) NOT NULL,
  `department` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `hours` varchar(100) DEFAULT NULL,
  `visits` int(11) DEFAULT 0,
  `available_slots` int(11) DEFAULT 0,
  `created_date` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `assigned_doctors` text DEFAULT NULL,
  `services` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_stats`
--

INSERT INTO `department_stats` (`id`, `department`, `description`, `hours`, `visits`, `available_slots`, `created_date`, `status`, `assigned_doctors`, `services`) VALUES
(1, 'Cardiology', 'Treating hearts and Givving a chance for Love to reign\n \n', '9:00 - 17:00', 0, 10, '2025-06-02', 1, '[6]', 'We offer Tests,We Treat Heart Realated Diseases,We give counselling on operation,We adminster and prescribe treatments for the heart'),
(7, 'Neurology', 'Curing Minds & Treating Brain related Sickness', '9:00 - 17:00', 0, 10, '2025-06-02', 1, '[5]', 'We offer IR Scan,We offer Lab tests and other,We offer affordable medicines,We offer therapy'),
(8, 'Pediatrics', 'We treat Children and heal the future of the generation ', '8:00 - 17:00', 0, 10, '2025-06-02', 1, '[7]', 'We offer Therapy,Observable Analysis,We offer diagnose Test'),
(9, 'Maternity', 'W offer Multiple Services for Pregnancy Woman including delivery', '08:00 - 17:00', 0, 10, '2025-06-02', 1, '[10]', 'Antenatal care,Motherhood classes,Pregnancy Consultations,WE help in delivery,We prescribe multiple ways to make your journey as smooth as possible'),
(10, 'Dermatology', 'We treat Skin related diseases including cancer\nOur goal is to make your skin glow ', '08:00 - 02:00', 0, 10, '2025-06-02', 1, '[8]', 'We treat Skin cancer,We diagnose multiple creams and drugs to improve skin,We give induction sessions'),
(11, 'Clinical(Check ups)', 'We provide overall check ups', '09:00 - 01:00', 0, 10, '2025-06-02', 1, '[9]', 'We provide overall check ups,Diagnostic observation with immediate lab results,We provide Labtests');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `department` text NOT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `status` enum('Active','On Leave','Retired') DEFAULT 'Active',
  `bio` text DEFAULT NULL,
  `history` text DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `employment_date` date DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `specialization` text NOT NULL,
  `pending_appointments_count` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `name`, `department`, `salary`, `status`, `bio`, `history`, `photo_path`, `employment_date`, `department_id`, `specialization`, `pending_appointments_count`) VALUES
(5, 'Dr. Brown Antwi', 'Neurology', 15000.00, 'Active', 'I love my work a lot', 'Heard Cardiologist at who', 'C:\\Users\\DELL\\Downloads\\doctors\\maledoc1.jpg', '2015-06-11', NULL, 'Neurologist', 0),
(6, 'Dr. Smith ', 'Cardiology', 10000.00, 'Retired', 'I Love Protecting hearts, the source of love', 'Served as medic for paramilitary at N.A.T.O war', 'C:\\Users\\DELL\\Downloads\\doctors\\maledoc3.jpg', '2016-06-15', NULL, 'Interventional Cardiologist', 0),
(7, 'Dr. Viola Davis', 'Pediatrics', 30000.00, 'Active', 'I love saving kids, or should i say joy givers', 'Head of Pediatric Unit at N.G.O for 3 years', 'C:\\Users\\DELL\\Downloads\\doctors\\femaledoc10.jpg', '2019-06-12', NULL, 'Pediatrician', 0),
(9, 'Dr. Alice ', 'Clinical(Check-ups)', 25000.00, 'Active', 'I believe Health is Wealth ', 'Nill', 'C:\\Users\\DELL\\Downloads\\doctors\\femaledoc9.jpg', '2021-06-17', NULL, 'Diagnostic Specialist', 0),
(10, 'Dr. Maxine Harding', 'Maternity', 30000.00, 'Retired', 'I believe prgnancy is a beautiful phase in a woman life', 'Over 135 succcessful deliveries', 'C:\\Users\\DELL\\Downloads\\doctors\\femaledoc8.jpg', '2020-06-18', NULL, 'Gynecologist', 0),
(11, 'Dr. Lena Kwarteng', 'Neurology', 30000.00, 'Active', 'Passionate about mind thinkers', 'Manager of Nero Science Dept at Seal League', 'C:\\Users\\DELL\\Downloads\\doctors\\images.jpg', '2012-06-08', NULL, 'Neuro Specialist', 0),
(12, 'Dr. Samantha', 'Pediatrics', 30000.00, 'Active', 'I love the joy givers of the wotld', 'Nill', 'C:\\Users\\DELL\\Downloads\\doctors\\images (1).jpg', '2018-06-07', NULL, 'Pediatrician', 0),
(13, 'Dr. Stephanie', 'Maternity', 35000.00, 'Retired', 'Maternity is a beautiful phase in a female life', 'Multiple successful operations', 'C:\\Users\\DELL\\Downloads\\doctors\\femaledoc6.jpg', '2019-06-14', NULL, 'Obstetrician', 0),
(14, 'Dr. Adams Lincoln', 'Cardiology', 40000.00, 'Active', 'Every operation brings closer achievement', 'Multiple Successsfull operations', 'C:\\Users\\DELL\\Downloads\\doctors\\maledoc6.jpg', '2019-06-13', NULL, 'Interventional Cardiologst', 0),
(16, 'Dr. Bob', 'Clinical(Check-ups)', 30000.00, 'Active', 'I believe Health is Wealth ', 'Nill', 'C:\\Users\\DELL\\Downloads\\doctors\\maledoc2.jpg', '2020-06-19', NULL, 'General Practicioner', 0),
(18, 'Dr. Rose', 'Dermatology', 30000.00, 'Active', 'Our skin is an outer presentation of our inner beauty', 'Skin Critic and Theorist ', 'C:\\Users\\DELL\\Downloads\\doctors\\femaledoc4.jpg', '2022-06-16', NULL, 'Skin Specialist', 0),
(19, 'Dr. Marcus Foley', 'Dermatology', 40000.00, 'Active', 'Our skin is an outer presentation of our inner beauty', 'Skin Critic and Theorist ', 'C:\\Users\\DELL\\Downloads\\doctors\\maledoc7.jpg', '2018-06-14', NULL, 'Dermatologist', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `role` varchar(50) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `address` text NOT NULL,
  `remember_me` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `birth_date`, `role`, `gender`, `address`, `remember_me`, `created_at`) VALUES
(2, 'MIKE', 'mike@gmail.com', '12345', '2025-05-28', 'Admin', 'Male', 'Nightingale oh', 0, '2025-05-27 23:49:39'),
(7, 'male', 'male@gmail.com', '12345', '2025-05-28', 'Patient', 'Male', '1234 sad', 0, '2025-05-28 01:37:21'),
(8, 'mark', 'mark@gmail.com', 'mark1', '2025-05-30', 'Patient', 'Male', 'West mine', 0, '2025-05-30 05:59:32'),
(9, 'Martha', 'martha12@gmail.com', '1234', '2025-05-31', 'Patient', 'Female', 'On Golden Resist Mare Street', 0, '2025-05-31 16:24:47'),
(10, 'Elaine', 'Elaine@yahoo.com', '1234', '2025-05-31', 'Patient', 'Female', 'Mislot Ferdinand Way', 0, '2025-05-31 16:26:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`complaint_id`),
  ADD KEY `fk_user` (`user_id`);

--
-- Indexes for table `department_stats`
--
ALTER TABLE `department_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `department_stats`
--
ALTER TABLE `department_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`);

--
-- Constraints for table `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_stats` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
