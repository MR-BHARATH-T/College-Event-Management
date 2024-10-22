-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2024 at 06:42 PM
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
-- Database: `cwms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `article_list`
--

CREATE TABLE `article_list` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `short_description` text NOT NULL,
  `content_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(30) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article_list`
--

INSERT INTO `article_list` (`id`, `title`, `short_description`, `content_path`, `status`, `delete_flag`, `user_id`, `date_created`, `date_updated`) VALUES
(1, 'Sample Article 101', 'Nullam ac egestas erat. Vivamus non dui ut enim pellentesque tempor a vitae risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed condimentum ultrices dui et vehicula. Curabitur laoreet purus vel sagittis auctor. Mauris at nulla mi. Proin nec elit et nibh pretium imperdiet. In ac nisl libero.\r\n\r\nDonec aliquam odio vel felis lacinia aliquet. Integer nec nisl vel enim ultricies posuere quis et erat. Duis urna metus, mollis non eleifend non, finibus at massa. Nunc pretium dolor leo, non posuere nulla scelerisque ut. Donec eleifend consectetur elit, eget viverra libero efficitur eget. Curabitur lacinia faucibus velit, sed porta urna aliquam vestibulum. Aenean mollis dui justo, eget facilisis orci luctus sit amet. Integer enim diam, congue vestibulum facilisis eu, accumsan et dui.', 'pages/articles/sample_article_101.html', 1, 0, 1, '2022-02-28 14:08:59', '2022-02-28 14:22:29'),
(2, 'test', 'test', 'pages/articles/test.html', 0, 1, 1, '2022-02-28 14:22:44', '2022-02-28 14:23:31'),
(3, 'Sample Article', 'Etiam velit mi, pretium in aliquam quis, sodales vitae orci. Nunc consequat non odio et varius. Praesent cursus arcu eget ultricies tempus. Donec nec facilisis neque. Ut id rhoncus mauris. Suspendisse nec felis laoreet, molestie nulla ac, lobortis leo. Suspendisse venenatis convallis mauris, ornare rhoncus quam pellentesque porttitor.\r\n\r\nFusce bibendum sed tellus sit amet tristique. Donec viverra at nunc ac tincidunt. Donec varius dolor mauris, in dapibus sem sollicitudin quis. Nunc gravida dignissim dolor, sed egestas tellus tempus non. Praesent eget nisi dignissim, ornare felis ac, dignissim urna. Proin tincidunt purus sed mattis sagittis. Nunc a leo tortor. Donec id nibh posuere, eleifend erat ut, maximus tortor. Sed bibendum ante sit amet orci sodales, nec tincidunt mi consectetur. Donec et dictum urna.', 'pages/articles/sample_article.html', 1, 0, 8, '2022-02-28 15:50:59', '2022-02-28 15:51:08'),
(4, 'HELLO ', 'THIS IS THE EVENT', 'pages/articles/hello_.html', 1, 0, 1, '2024-05-14 14:59:46', '2024-06-22 07:54:20'),
(5, 'dsgs', 'srgsh', 'pages/articles/dsgs.html', 1, 1, 8, '2024-06-01 14:11:04', '2024-06-01 14:11:25'),
(6, 'NCB', 'THIS IS NEW EVENT', 'pages/articles/ncb.html', 1, 0, 1, '2024-06-08 11:50:43', '2024-06-08 11:50:43'),
(7, 'aaaaaaaaaaaaaaaaaaaaaaa', 'bbbbbbbbbbbbbbbbbbbbb', 'pages/articles/aaaaaaaaaaaaaaaaaaaaaaa.html', 1, 0, 1, '2024-07-14 10:40:56', '2024-07-14 10:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `d_name` text NOT NULL,
  `HOD` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `d_name`, `HOD`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Bachelor of Computer Application', 'Nikhil Gowda S', 'Integer ornare et mi consectetur fermentum. Vivamus nec commodo ex. Nam consectetur enim sit amet purus pretium venenatis. Fusce ac suscipit libero, ut blandit dolor. Donec bibendum rutrum tempus. Mauris nec turpis finibus, cursus libero a, laoreet nunc. Curabitur suscipit ex euismod viverra dapibus. Etiam non ullamcorper leo, ut porta dolor. Cras varius vulputate enim, ac cursus mauris consequat ut. Praesent sodales ornare ligula ut accumsan. Donec tempus, diam vel convallis aliquam, metus ipsum placerat risus, id tincidunt mi mauris at velit. Nullam mattis lectus leo, elementum accumsan orci maximus auctor. Nunc rhoncus augue ligula, at egestas risus malesuada vitae.', 1, 0, '2022-02-28 10:45:43', '2024-07-14 18:01:37'),
(2, 'Bachelor of Arts', 'Suraarchith K V', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas pretium quam nec dignissim vestibulum. Donec interdum velit vel erat sodales, ut volutpat risus molestie. Sed tincidunt condimentum neque sed dictum. Vivamus fermentum urna sed ligula tincidunt, vitae hendrerit quam blandit. Sed elementum sit amet nisl sit amet pellentesque. Cras molestie nisi dolor. Curabitur at venenatis lacus. Sed efficitur, libero vel varius auctor, nisl dui auctor urna, ac gravida nibh sem at odio.', 1, 0, '2022-02-28 10:48:12', '2024-07-14 10:46:07'),
(3, 'Bachelor of Science', 'Vibhav V', 'Mauris vulputate viverra libero sit amet eleifend. Donec ut massa consectetur, molestie libero nec, iaculis leo. Etiam facilisis sapien quis odio congue, quis tristique leo blandit. Morbi convallis finibus fringilla. Aenean convallis metus vitae velit viverra volutpat. Nulla consequat neque et hendrerit aliquam. In pulvinar vehicula semper.', 1, 0, '2022-02-28 10:50:12', '2024-07-14 18:09:27'),
(4, 'Bachelor of Commerce', 'Gagan N', 'Fusce laoreet arcu et sollicitudin varius. Vestibulum posuere venenatis ex, vel imperdiet metus luctus at. Aenean eros diam, suscipit vel consectetur sed, porta id tortor. Donec tempor porta mi, vehicula aliquam felis molestie sed. Quisque placerat, ligula ac lobortis interdum, odio odio mollis libero, quis dictum orci sem vehicula nibh. Aliquam tincidunt nunc eu vestibulum ultrices. Sed placerat arcu sed nunc imperdiet facilisis. Vestibulum placerat lectus urna, in finibus metus porttitor sit amet. Integer fringilla elit nunc, eu pulvinar sem aliquet in. Nullam rutrum enim orci, et elementum orci malesuada ac. Morbi tempor dapibus tincidunt. Sed ornare, velit nec ullamcorper bibendum, ipsum urna finibus tellus, sed fringilla mi nunc eu tortor. Integer dapibus arcu quis aliquet pulvinar. Nunc finibus risus diam, eget malesuada est efficitur eu. Curabitur vel mauris faucibus, vestibulum dolor sed, cursus orci.', 1, 0, '2022-02-28 10:51:17', '2024-07-14 16:05:12'),
(5, 'Master of Science', 'Vidharsh R S', 'Pellentesque gravida, neque at aliquam maximus, risus nunc feugiat felis, id sagittis justo quam vitae quam. Donec et massa feugiat, maximus ipsum vel, sodales nulla. Aenean rhoncus neque sed turpis bibendum cursus. Vivamus scelerisque sem lectus, vitae tristique urna commodo vitae. Proin feugiat elementum pellentesque. Aenean congue faucibus semper. Integer non volutpat mi.\r\n\r\nSuspendisse ultricies orci a hendrerit faucibus. Praesent consequat purus et massa vestibulum egestas. Fusce tincidunt imperdiet lectus eu rhoncus. Curabitur a placerat ligula, eu mattis nunc. Ut dolor enim, lobortis eget vulputate non, auctor ut metus. Integer placerat vel risus quis ultricies. Nunc convallis mi ut est consectetur cursus. Donec id metus at augue rutrum porttitor quis eu metus.', 1, 0, '2022-02-28 10:53:49', '2024-07-14 18:08:10'),
(6, 'Bachelor of Business Administration', 'Niranjan R', 'Morbi sit amet magna in justo sodales ullamcorper vel et odio. Nulla facilisi. Nulla nec auctor augue, ut lacinia sem. Curabitur pretium lacus velit. Mauris vitae mauris elementum risus congue suscipit vitae quis lectus. Vivamus id diam porttitor, vestibulum metus et, pulvinar sapien. Sed convallis hendrerit tincidunt. Sed pulvinar sem sapien, sit amet fermentum nibh fermentum quis. Morbi pretium leo vitae viverra pharetra. Nunc efficitur bibendum odio, vel semper mi commodo eu. Donec rhoncus ac nibh non hendrerit. Proin sed accumsan risus. Morbi dictum dui a eros molestie, sed luctus dolor hendrerit. Integer at commodo leo, at ullamcorper tortor. Proin sagittis felis a mollis convallis.', 1, 0, '2022-02-28 10:54:10', '2024-07-14 21:50:52'),
(7, 'Sample', '', 'Test', 1, 1, '2022-02-28 10:54:28', '2022-02-28 10:55:14'),
(8, 'Master of Computer Application', 'Fakruddin S', 'Aenean eget dignissim tellus. Nam venenatis aliquam lectus ac pretium. Mauris hendrerit quis est nec pulvinar. Pellentesque iaculis odio nisl, a sagittis urna rutrum nec. Aenean dolor nisl, varius non massa sit amet, mattis tempor magna. Suspendisse sed elit orci. Donec tempor elit tristique ullamcorper consequat. Etiam id lectus et ligula vulputate eleifend sed quis nibh. Ut id nibh consequat, semper quam vitae, blandit magna. Proin sed magna eget mi dictum vestibulum. Cras eget magna sodales, tincidunt metus vel, vestibulum urna. Vestibulum vestibulum libero eros, nec iaculis risus finibus ut. Vestibulum luctus risus magna.', 1, 0, '2022-02-28 11:16:24', '2024-07-14 21:50:52'),
(9, 'Master of Business Administration', '', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas pretium quam nec dignissim vestibulum. Donec interdum velit vel erat sodales, ut volutpat risus molestie. Sed tincidunt condimentum neque sed dictum. Vivamus fermentum urna sed ligula tincidunt, vitae hendrerit quam blandit. Sed elementum sit amet nisl sit amet pellentesque. Cras molestie nisi dolor. Curabitur at venenatis lacus. Sed efficitur, libero vel varius auctor, nisl dui auctor urna, ac gravida nibh sem at odio.', 1, 1, '2024-07-14 20:03:27', '2024-07-14 20:34:14'),
(10, 'Master of Business Administration', '', 'hfrevrfvvvc hgvdkacv hwcewvcwvv', 1, 1, '2024-07-14 20:11:15', '2024-07-14 20:32:09'),
(11, 'Master of Business Administration', '', 'Pellentesque gravida, neque at aliquam maximus, risus nunc feugiat felis, id sagittis justo quam vitae quam. Donec et massa feugiat, maximus ipsum vel, sodales nulla. Aenean rhoncus neque sed turpis bibendum cursus. Vivamus scelerisque sem lectus, vitae tristique urna commodo vitae. Proin feugiat elementum pellentesque. Aenean congue faucibus semper. Integer non volutpat mi. Suspendisse ultricies orci a hendrerit faucibus. Praesent consequat purus et massa vestibulum egestas. Fusce tincidunt imperdiet lectus eu rhoncus. Curabitur a placerat ligula, eu mattis nunc. Ut dolor enim, lobortis eget vulputate non, auctor ut metus. Integer placerat vel risus quis ultricies. Nunc convallis mi ut est consectetur cursus. Donec id metus at augue rutrum porttitor quis eu metus.', 1, 1, '2024-07-14 20:43:38', '2024-07-14 20:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `e_date` datetime NOT NULL DEFAULT current_timestamp(),
  `short_description` text NOT NULL,
  `content_path` text DEFAULT NULL,
  `invite` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `dept` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(30) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `e_date`, `short_description`, `content_path`, `invite`, `image`, `dept`, `status`, `delete_flag`, `user_id`, `date_created`, `date_updated`) VALUES
(1, 'Sample Article 101', '2024-06-08 12:22:39', 'Nullam ac egestas erat. Vivamus non dui ut enim pellentesque tempor a vitae risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed condimentum ultrices dui et vehicula. Curabitur laoreet purus vel sagittis auctor. Mauris at nulla mi. Proin nec elit et nibh pretium imperdiet. In ac nisl libero.\r\n\r\nDonec aliquam odio vel felis lacinia aliquet. Integer nec nisl vel enim ultricies posuere quis et erat. Duis urna metus, mollis non eleifend non, finibus at massa. Nunc pretium dolor leo, non posuere nulla scelerisque ut. Donec eleifend consectetur elit, eget viverra libero efficitur eget. Curabitur lacinia faucibus velit, sed porta urna aliquam vestibulum. Aenean mollis dui justo, eget facilisis orci luctus sit amet. Integer enim diam, congue vestibulum facilisis eu, accumsan et dui.', 'pages/articles/sample_article_101.html', '', NULL, '', 1, 1, 1, '2022-02-28 14:08:59', '2024-06-29 13:36:21'),
(3, 'Sample Article', '2024-06-08 12:22:39', 'Etiam velit mi, pretium in aliquam quis, sodales vitae orci. Nunc consequat non odio et varius. Praesent cursus arcu eget ultricies tempus. Donec nec facilisis neque. Ut id rhoncus mauris. Suspendisse nec felis laoreet, molestie nulla ac, lobortis leo. Suspendisse venenatis convallis mauris, ornare rhoncus quam pellentesque porttitor.\r\n\r\nFusce bibendum sed tellus sit amet tristique. Donec viverra at nunc ac tincidunt. Donec varius dolor mauris, in dapibus sem sollicitudin quis. Nunc gravida dignissim dolor, sed egestas tellus tempus non. Praesent eget nisi dignissim, ornare felis ac, dignissim urna. Proin tincidunt purus sed mattis sagittis. Nunc a leo tortor. Donec id nibh posuere, eleifend erat ut, maximus tortor. Sed bibendum ante sit amet orci sodales, nec tincidunt mi consectetur. Donec et dictum urna.', 'pages/articles/sample_article.html', '', NULL, '', 1, 1, 1, '2022-02-28 15:50:59', '2024-06-29 13:36:26'),
(18, 'NCB', '2024-06-11 13:17:00', 'This is a new Event', 'pages/events/ncb_1.html', NULL, NULL, '', 1, 1, 1, '2024-06-11 13:18:19', '2024-06-29 13:36:30'),
(25, 'YOGA DAY', '2024-06-21 07:30:00', 'WE ARE CONDUCTING YOGA DAY ON THE 21ST OF JUNE', 'pages/events/yoga_day.html', 'pages/events/invite/1720957137_e6.jpg', 'pages/events/images/1720957137_e1.jpg', '', 1, 1, 1, '2024-06-20 14:53:28', '2024-07-14 18:14:27'),
(26, 'the new event', '2024-07-01 13:40:00', 'nbdvkjsbjdbvjksd', 'pages/events/the_new_event.html', 'pages/events/invite/1719648682_e7.jpg', 'pages/events/images/1719648682_e7.jpg', '', 1, 1, 1, '2024-06-29 13:41:22', '2024-07-14 17:23:52'),
(27, 'QUIZ COMPETITION', '2024-06-15 14:00:00', 'WE ARE CONDUCTING THE QUIZ COMPETITION ON THE 15TH OF JUNE', 'pages/events/bsdhjbs.html', 'pages/events/invite/1720957682_e7.jpg', 'pages/events/images/1720957682_e4.jpg', '', 1, 1, 1, '2024-06-29 13:43:18', '2024-07-14 18:29:49'),
(28, 'FAREWELL', '2024-07-27 16:00:00', 'WE ARE CONDUCTING A FAREWELL FOR OUR FINAL-SEMESTER STUDENTS', 'pages/events/hdbhjsbvhs.html', 'pages/events/invite/1720956832_e2.jpg', 'pages/events/images/1720956833_e3.jpg', '', 1, 1, 1, '2024-06-29 13:43:45', '2024-07-14 19:35:23'),
(29, 'dvsjhsdbjv', '2024-06-26 13:44:00', 'scbjhsdvf', 'pages/events/dvsjhsdbjv.html', 'pages/events/invite/1719648873_e7.jpg', 'pages/events/images/1719648873_e7.jpg', 'Admin', 1, 1, 1, '2024-06-29 13:44:33', '2024-07-14 16:56:04'),
(30, 'hsbdjhvbjsbvgr', '2024-06-29 13:44:00', 'hjvjhfsvjger', 'pages/events/hsbdjhvbjsbvgr.html', 'pages/events/invite/1719648897_e5.jpg', 'pages/events/images/1719648898_e5.jpg', '', 1, 1, 1, '2024-06-29 13:44:57', '2024-07-14 16:56:45'),
(31, 'ANNUAL ATHLETIC MEET', '2024-07-13 11:00:00', 'WE ARE CONDUCTING AN ANNUAL ATHLETIC MEET IN OUR COLLEGE', 'pages/events/kdbsvkjsd.html', 'pages/events/invite/1720957037_e5.jpg', 'pages/events/images/1720957037_e6.jpg', '', 1, 1, 1, '2024-07-02 14:40:03', '2024-07-14 17:59:10'),
(32, 'hdbjvdmnsvsbvdfs', '2024-07-10 14:46:00', 'bkzbkjvkdszbiodtznb', 'pages/events/hdbjvdmnsvsbvdfs.html', 'pages/events/invite/1719911785_e6.jpg', 'pages/events/images/1719911785_e6.jpg', '', 1, 1, 1, '2024-07-02 14:46:25', '2024-07-14 16:56:55'),
(33, 'DJ NIGHT', '2024-07-20 16:00:00', 'WE ARE CONDUCTING DJ NIGHT IN OUR COLLEGE', 'pages/events/dxbfsxbdfbndgn.html', 'pages/events/invite/1720956548_e3.jpg', 'pages/events/images/1720956548_e2.jpg', '', 1, 1, 1, '2024-07-02 15:18:57', '2024-07-14 19:28:49'),
(34, 'hcajhcjhved', '2024-07-10 15:24:00', 'amnbcjhewbvjkw', 'pages/events/hcajhcjhved.html', 'pages/events/invite/1719914097_e6.jpg', 'pages/events/images/1719914097_e6.jpg', '', 1, 1, 1, '2024-07-02 15:24:57', '2024-07-14 16:56:38'),
(35, 'ANNUAL DAY', '2024-07-26 11:30:00', 'WE ARE CONDUCTING ANNUAL DAY IN OUR COLLEGE', 'pages/events/hcajhcjhved_1.html', 'pages/events/invite/1720956676_e1.jpg', 'pages/events/images/1720956676_e4.jpg', 'Admin', 1, 1, 1, '2024-07-02 15:25:22', '2024-07-14 19:15:56'),
(36, 'hecjvvhwbejvhwe', '2024-07-10 15:40:00', 'mnbsvhwsjhbvwrh', 'pages/events/hecjvvhwbejvhwe.html', 'pages/events/invite/1719915065_cover-1646012157.jpg', 'pages/events/images/1719915065_e6.jpg', 'Admin', 1, 1, 1, '2024-07-02 15:41:05', '2024-07-14 16:56:49'),
(37, 'INTER CLASS DRAMA COMPETITION', '2023-09-22 19:00:00', 'WE ARE CONDUCTING THE INTER CLASS DRAMA COMPETITION ', 'pages/events/sdbsfbfb.html', 'pages/events/invite/1720957836_e7.jpg', 'pages/events/images/1720957836_e2.jpg', 'Admin', 1, 1, 1, '2024-07-02 16:06:53', '2024-07-14 19:40:21'),
(38, 'SUPERNOVA', '2024-01-12 10:00:00', 'WE ARE CONDUCTING THE EDUCATION MELLA IN OUR COLLEGE', 'pages/events/segsrg.html', 'pages/events/invite/1720958018_e5.jpg', 'pages/events/images/1720958018_e2.jpg', '', 1, 0, 1, '2024-07-13 12:13:28', '2024-07-14 17:23:38'),
(39, 'dj night', '2024-07-20 15:00:00', 'we are conducting DJ night in our college', 'pages/events/dj_night.html', NULL, NULL, '', 1, 1, 1, '2024-07-14 10:44:40', '2024-07-14 16:49:06'),
(40, 'xxxxxxxxxxxxxx', '2024-07-15 18:00:00', 'xxxxxxxxxxxxxxxx', 'pages/events/xxxxxxxxxxxxxx.html', NULL, NULL, '', 1, 1, 1, '2024-07-14 13:24:45', '2024-07-14 16:48:44'),
(41, 'ANNUAL ATHLETIC MEET', '2024-07-13 10:00:00', 'WE ARE CONDUCTING AN ANNUAL ATHLETIC MEET IN OUR COLLEGE', 'pages/events/annual_athletic_meet.html', 'pages/events/invite/1720959953_e7.jpg', 'pages/events/images/1720959953_e6.jpg', '', 1, 0, 12, '2024-07-14 17:55:53', '2024-07-14 17:55:53'),
(42, 'YOGA DAY', '2024-06-21 07:00:00', 'WE ARE CONDUCTING YOGA DAY ON THE 21ST OF JUNE', 'pages/events/yoga_day_1.html', 'pages/events/invite/1720960946_e6.jpg', 'pages/events/images/1720960946_e4.jpg', '', 1, 0, 8, '2024-07-14 18:12:26', '2024-07-14 18:12:26'),
(43, 'QUIZ COMPETITION ', '2024-06-15 11:00:00', 'WE ARE CONDUCTING THE QUIZ COMPETITION ON THE 15TH OF JUNE', 'pages/events/quiz_competition_.html', 'pages/events/invite/1720961470_e7.jpg', 'pages/events/images/1720961470_e1.jpg', '', 1, 0, 18, '2024-07-14 18:21:10', '2024-07-14 18:21:10'),
(44, ' ANNUAL DAY', '2024-07-26 17:00:00', 'WE ARE CONDUCTING ANNUAL DAY IN OUR COLLEGE', 'pages/events/_annual_day.html', 'pages/events/invite/1720964402_e5.jpg', 'pages/events/images/1720964402_e2.jpg', '', 1, 0, 10, '2024-07-14 19:10:02', '2024-07-14 19:10:02'),
(45, 'DJ NIGHT', '2024-07-20 16:00:00', 'WE ARE CONDUCTING DJ NIGHT IN OUR COLLEGE', 'pages/events/dj_night_1.html', 'pages/events/invite/1720965026_e1.jpg', 'pages/events/images/1720965026_e4.jpg', '', 1, 0, 17, '2024-07-14 19:20:26', '2024-07-14 19:20:26'),
(46, 'FAREWELL', '2024-07-27 13:00:00', 'WE ARE CONDUCTING A FAREWELL FOR OUR FINAL-SEMESTER STUDENTS', 'pages/events/farewell.html', 'pages/events/invite/1720965808_e3.jpg', 'pages/events/images/1720965808_e1.jpg', '', 1, 0, 16, '2024-07-14 19:33:28', '2024-07-14 19:33:28'),
(47, 'INTER CLASS DRAMA COMPETITION', '2023-09-19 19:00:00', 'WE ARE CONDUCTING THE INTER CLASS DRAMA COMPETITION', 'pages/events/inter_class_drama_competition.html', 'pages/events/invite/1720966086_e3.jpg', 'pages/events/images/1720966086_e4.jpg', '', 1, 0, 14, '2024-07-14 19:38:06', '2024-07-14 19:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `short_description` text NOT NULL,
  `content_path` text DEFAULT NULL,
  `invite` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `dept` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(30) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `title`, `short_description`, `content_path`, `invite`, `image`, `dept`, `status`, `delete_flag`, `user_id`, `date_created`, `date_updated`) VALUES
(1, 'Sample Article 101', 'Nullam ac egestas erat. Vivamus non dui ut enim pellentesque tempor a vitae risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed condimentum ultrices dui et vehicula. Curabitur laoreet purus vel sagittis auctor. Mauris at nulla mi. Proin nec elit et nibh pretium imperdiet. In ac nisl libero.\r\n\r\nDonec aliquam odio vel felis lacinia aliquet. Integer nec nisl vel enim ultricies posuere quis et erat. Duis urna metus, mollis non eleifend non, finibus at massa. Nunc pretium dolor leo, non posuere nulla scelerisque ut. Donec eleifend consectetur elit, eget viverra libero efficitur eget. Curabitur lacinia faucibus velit, sed porta urna aliquam vestibulum. Aenean mollis dui justo, eget facilisis orci luctus sit amet. Integer enim diam, congue vestibulum facilisis eu, accumsan et dui.', NULL, NULL, NULL, '', 1, 1, 1, '2022-02-28 14:08:59', '2024-07-14 17:47:07'),
(2, 'test', 'test', NULL, NULL, NULL, '', 0, 1, 1, '2022-02-28 14:22:44', '2022-02-28 14:23:31'),
(3, 'Sample Article', 'Etiam velit mi, pretium in aliquam quis, sodales vitae orci. Nunc consequat non odio et varius. Praesent cursus arcu eget ultricies tempus. Donec nec facilisis neque. Ut id rhoncus mauris. Suspendisse nec felis laoreet, molestie nulla ac, lobortis leo. Suspendisse venenatis convallis mauris, ornare rhoncus quam pellentesque porttitor.\r\n\r\nFusce bibendum sed tellus sit amet tristique. Donec viverra at nunc ac tincidunt. Donec varius dolor mauris, in dapibus sem sollicitudin quis. Nunc gravida dignissim dolor, sed egestas tellus tempus non. Praesent eget nisi dignissim, ornare felis ac, dignissim urna. Proin tincidunt purus sed mattis sagittis. Nunc a leo tortor. Donec id nibh posuere, eleifend erat ut, maximus tortor. Sed bibendum ante sit amet orci sodales, nec tincidunt mi consectetur. Donec et dictum urna.', NULL, NULL, NULL, '', 1, 1, 8, '2022-02-28 15:50:59', '2024-07-14 17:46:55'),
(4, 'ncb reports', 'this is my new report', 'pages/reports/ncb_reports_3.html', 'pages/reports/invite/1718992661_ecd_notes.pdf', NULL, '', 1, 1, 1, '2024-06-21 23:27:41', '2024-07-14 19:16:55'),
(5, 'abc', 'xyz', 'pages/reports/abc.html', NULL, NULL, '', 1, 1, 1, '2024-06-22 07:57:53', '2024-07-02 15:37:36'),
(6, 'NCB REPORT OF 2024', 'THIS THE SAMPLE REPORT', 'pages/reports/ncb_report_of_2024.html', 'pages/reports/invite/1719299993_web_programming_bootstrap.pdf', 'pages/reports/images/1719300150_fakruddin.jpeg', '', 1, 1, 1, '2024-06-25 12:49:53', '2024-07-14 19:16:50'),
(7, 'sdvsfbsf', 'sfberdsnedtn', 'pages/reports/sdvsfbsf.html', 'pages/reports/invite/1719914221_60.college_event_management_system.docx', 'pages/reports/images/1719914221_e6.jpg', '', 1, 1, 1, '2024-07-02 15:27:01', '2024-07-14 19:17:11'),
(8, 'bakegviueiuvewigv', 'ejhafcuwefiuwebfiu', 'pages/reports/bakegviueiuvewigv.html', 'pages/reports/invite/1719914352_60.college_event_management_system.docx', 'pages/reports/images/1719914352_e6.jpg', '', 1, 1, 1, '2024-07-02 15:29:12', '2024-07-02 15:37:40'),
(9, 'nzbdvkjdabkjvb', 'samvbamdvks dkvr', 'pages/reports/nzbdvkjdabkjvb.html', 'pages/reports/invite/1719914637_60.college_event_management_system.docx', 'pages/reports/images/1719914637_cover-1715680418.jpg', '', 1, 1, 1, '2024-07-02 15:33:57', '2024-07-14 19:17:00'),
(10, 'hdbsvkjsbvkjbd', 'sbvjhsbvjhwbejv', 'pages/reports/hdbsvkjsbvkjbd.html', 'pages/reports/invite/1719914732_60.college_event_management_system.docx', 'pages/reports/images/1719914732_cover-1646012157.jpg', '', 1, 1, 1, '2024-07-02 15:35:32', '2024-07-02 15:37:44'),
(11, 'mnsdbvsbvj', 'sbcjsbjvbes', 'pages/reports/mnsdbvsbvj.html', 'pages/reports/invite/1719914817_cover-1646012157.jpg', 'pages/reports/images/1719914817_cover-1646012157.jpg', '', 1, 1, 1, '2024-07-02 15:36:57', '2024-07-02 15:37:48'),
(12, 'dvbkjsbvjks', 'svbjhrsbvuerbiv', 'pages/reports/dvbkjsbvjks.html', 'pages/reports/invite/1719914890_cover-1646012157.jpg', 'pages/reports/images/1719914890_cover-1646012157.jpg', '', 1, 1, 1, '2024-07-02 15:38:10', '2024-07-14 19:16:32'),
(13, 'abcd', 'nvdkjbkjvrdb', 'pages/reports/abcd.html', 'pages/reports/invite/1719915214_e6.jpg', 'pages/reports/images/1719915214_e6.jpg', '', 1, 1, 1, '2024-07-02 15:43:34', '2024-07-02 16:20:40'),
(14, 'sdbsfbnsf', 'sbsfnbdfndn', 'pages/reports/sdbsfbnsf.html', 'pages/reports/invite/1719915564_e6.jpg', 'pages/reports/images/1719915564_e6.jpg', '', 1, 1, 1, '2024-07-02 15:49:24', '2024-07-14 19:17:05'),
(15, 'bdjhvbjbv', 'snbcjwebvjh4', 'pages/reports/bdjhvbjbv.html', 'pages/reports/invite/1719916075_e6.jpg', 'pages/reports/images/1719916075_e6.jpg', '', 1, 1, 1, '2024-07-02 15:57:55', '2024-07-02 16:20:56'),
(16, 'abvhwsbvw', 'bwjchvjhbrvhjwv', 'pages/reports/abvhwsbvw.html', 'pages/reports/invite/1719916652_e6.jpg', 'pages/reports/images/1719916652_e6.jpg', '', 1, 1, 1, '2024-07-02 16:07:32', '2024-07-02 16:20:50'),
(17, 's', 'f', 'pages/reports/s.html', 'pages/reports/invite/1719916761_e6.jpg', 'pages/reports/images/1719916761_e6.jpg', '', 1, 1, 1, '2024-07-02 16:09:21', '2024-07-14 16:54:54'),
(18, 'a', 'a', 'pages/reports/a.html', 'pages/reports/invite/1719917424_e6.jpg', 'pages/reports/images/1719917424_e6.jpg', '', 1, 1, 1, '2024-07-02 16:20:24', '2024-07-02 16:20:35'),
(19, 'abcd', 'jbfjvbjkd', 'pages/reports/abcd_1.html', 'pages/reports/invite/1720850083_sonata_jd_graduate_trainees_2024_(1).pdf', 'pages/reports/images/1720850083_fakruddin.jpeg', '', 1, 1, 1, '2024-07-13 11:24:43', '2024-07-14 19:16:21'),
(20, 'aaaaaaaaaa', 'bbbbbbbbb', 'pages/reports/aaaaaaaaaa.html', 'pages/reports/invite/1720945951_end_sem_exam_-august_2024.pdf', 'pages/reports/images/1720945951_e7.jpg', '', 1, 1, 1, '2024-07-14 14:02:31', '2024-07-14 19:16:11'),
(21, 'ANNUAL ATHLETIC MEET', 'WE ARE CONDUCTING AN ANNUAL ATHLETIC MEET IN OUR COLLEGE MEET', 'pages/reports/annual_athletic_meet.html', 'pages/reports/invite/1720960026_e6.jpg', 'pages/reports/images/1720960026_e5.jpg', '', 1, 0, 12, '2024-07-14 17:57:06', '2024-07-14 17:57:06'),
(22, 'YOGA DAY', 'WE ARE CONDUCTING YOGA DAY ON THE 21ST OF JUNE', 'pages/reports/yoga_day.html', 'pages/reports/invite/1720961013_e4.jpg', 'pages/reports/images/1720961013_e3.jpg', '', 1, 0, 8, '2024-07-14 18:13:33', '2024-07-14 18:13:33'),
(23, 'QUIZ COMPETITION', 'WE ARE CONDUCTING THE QUIZ COMPETITION ON THE 15TH OF JUNE', 'pages/reports/quiz_competition.html', 'pages/reports/invite/1720961515_e3.jpg', 'pages/reports/images/1720961515_e2.jpg', '', 1, 0, 18, '2024-07-14 18:21:55', '2024-07-14 18:21:55'),
(24, 'ANNUAL DAY', 'WE ARE CONDUCTING ANNUAL DAY IN OUR COLLEGE', 'pages/reports/annual_day.html', 'pages/reports/invite/1720964453_e1.jpg', 'pages/reports/images/1720964453_e2.jpg', '', 1, 0, 10, '2024-07-14 19:10:53', '2024-07-14 19:10:53'),
(25, 'DJ NIGHT', 'WE ARE CONDUCTING DJ NIGHT IN OUR COLLEGE', 'pages/reports/dj_night.html', 'pages/reports/invite/1720965070_e2.jpg', 'pages/reports/images/1720965070_e3.jpg', '', 1, 0, 17, '2024-07-14 19:21:10', '2024-07-14 19:21:10'),
(26, 'FAREWELL', 'WE ARE CONDUCTING A FAREWELL FOR OUR FINAL-SEMESTER STUDENTS', 'pages/reports/farewell.html', 'pages/reports/invite/1720965856_e2.jpg', 'pages/reports/images/1720965856_e4.jpg', '', 1, 0, 16, '2024-07-14 19:34:16', '2024-07-14 19:34:16'),
(27, 'INTER CLASS DRAMA COMPETITION', 'WE ARE CONDUCTING THE INTER CLASS DRAMA COMPETITION', 'pages/reports/inter_class_drama_competition.html', 'pages/reports/invite/1720966152_e2.jpg', 'pages/reports/images/1720966152_e1.jpg', '', 1, 0, 14, '2024-07-14 19:39:12', '2024-07-14 19:39:12'),
(28, 'SUPERNOVA', 'WE ARE CONDUCTING THE EDUCATION MELLA IN OUR COLLEGE', 'pages/reports/supernova.html', 'pages/reports/invite/1720968300_e3.jpg', 'pages/reports/images/1720968300_e1.jpg', '', 1, 0, 1, '2024-07-14 20:14:18', '2024-07-14 20:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'NATIONAL COLLEGE EVENTS '),
(6, 'short_name', 'NCB EVENTS'),
(11, 'logo', 'uploads/logo-1720970217.png?v=1720970217'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1715680880.jpg?v=1715680880'),
(20, 'school_address', 'Here Street, Brgy. There, Over Here City, Negros Occidental, 6100, Philippines'),
(21, 'school_tel_no', '+456 645 9987'),
(22, 'school_mobile', '+63 912 456 4569'),
(23, 'school_email', 'info@xyzstatecollege.com'),
(24, 'map_coords', '10.676033878642961, 122.9520835825518');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `department` varchar(50) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `department`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatars/1.png?v=1646034408', NULL, 'Admin', 1, '2021-01-20 14:02:37', '2024-07-02 14:35:06'),
(8, 'Suraarchith', 'K V', 'suru', '59543671b98fc0a8ef2a598abc40e647', NULL, NULL, 'Bachelor of Arts', 2, '2022-02-28 15:49:53', '2024-07-14 14:40:51'),
(10, 'Fakruddin', 'S', 'fakru', '047af11b6ba4923d82b532128b977291', 'uploads/avatars/10.jpeg?v=1719310709', NULL, 'Master of Computer Application', 2, '2024-06-25 15:48:29', '2024-07-14 14:40:18'),
(12, 'Gagan', 'N', 'gagan', 'cc18a19beff0bdf874861a4dae6124b6', NULL, NULL, 'Bachelor of Commerce', 2, '2024-07-14 11:25:10', NULL),
(14, 'Niranjan', 'R', 'niru', 'd0b3b7d8157c3057b45342df1493d39e', NULL, NULL, 'Bachelor of Business Administration', 2, '2024-07-14 14:44:39', NULL),
(16, 'Nikhil Gowda', 'S', 'nikhil', '350d89c1cd6592bbbd1ed2e8a4f3ddba', NULL, NULL, 'Bachelor of Computer Application', 2, '2024-07-14 18:01:37', NULL),
(17, 'Vidharsh', 'R S', 'vidharsh', '116362e9416731257347e1fe799a88e3', NULL, NULL, 'Master of Science', 2, '2024-07-14 18:08:10', NULL),
(18, 'Vibhav', 'V', 'vaibhu', '1f609295cb584b5e584a267beeb3a05f', NULL, NULL, 'Bachelor of Science', 2, '2024-07-14 18:09:27', NULL),
(19, 'A', 'A', 'a', '0cc175b9c0f1b6a831c399e269772661', NULL, NULL, 'Bachelor of Business Administration', 3, '2024-07-14 20:26:08', NULL),
(20, 'B', 'B', 'b', '92eb5ffee6ae2fec3ad71c777531578f', NULL, NULL, 'Master of Computer Application', 3, '2024-07-14 21:50:47', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article_list`
--
ALTER TABLE `article_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article_list`
--
ALTER TABLE `article_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article_list`
--
ALTER TABLE `article_list`
  ADD CONSTRAINT `article_user_id_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
