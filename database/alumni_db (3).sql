-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2024 at 08:18 AM
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
-- Database: `alumni_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnus_bio`
--

CREATE TABLE `alumnus_bio` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `batch` year(4) NOT NULL,
  `course_id` int(30) NOT NULL,
  `email` varchar(250) NOT NULL,
  `skills` text NOT NULL,
  `avatar` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= Unverified, 1= Verified',
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alumnus_bio`
--

INSERT INTO `alumnus_bio` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `batch`, `course_id`, `email`, `skills`, `avatar`, `status`, `date_created`) VALUES
(4, 'Anish', '', 'Tamang', 'Male', '2021', 6, 'anishtamang@gmail.com', 'Python, SQL', '', 0, '2024-04-03'),
(5, 'Rajan', '', 'Thapa', 'Male', '2019', 2, 'rajanthapa@gmail.com', 'Java, JavaScript', '', 0, '2024-04-03'),
(6, 'Bibek', '', 'Sharma', 'Male', '2020', 3, 'bibeksharma@gmail.com', 'C++, Python', '', 0, '2024-04-03'),
(7, 'Suresh', '', 'Gurung', 'Male', '2023', 4, 'sureshgurung@gmail.com', 'HTML, CSS, JavaScript', '', 0, '2024-04-03'),
(8, 'Binod', '', 'Shrestha', 'Male', '2022', 4, 'binodshrestha@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(9, 'Dipesh', '', 'Bhandari', 'Male', '2019', 1, 'dipeshbhandari@gmail.com', 'SQL, MongoDB', '', 0, '2024-04-03'),
(10, 'Aakash', '', 'Maharjan', 'Male', '2020', 6, 'aakashmaharjan@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(11, 'Roshan', '', 'Basnet', 'Male', '2021', 3, 'roshanbasnet@gmail.com', 'JavaScript, ReactJS', '', 0, '2024-04-03'),
(12, 'Sandeep', '', 'Rai', 'Male', '2022', 4, 'sandeeprai@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(13, 'Nabin', '', 'Khatri', 'Male', '2023', 4, 'nabinkhatri@gmail.com', 'C#, ASP.NET', '', 0, '2024-04-03'),
(14, 'Prakash', '', 'Joshi', 'Male', '2019', 1, 'prakashjoshi@gmail.com', 'Java, Hibernate', '', 0, '2024-04-03'),
(15, 'Sajan', '', 'Thakuri', 'Male', '2020', 2, 'sajanthakuri@gmail.com', 'PHP, Laravel', '', 0, '2024-04-03'),
(16, 'Bijay', '', 'Adhikari', 'Male', '2021', 3, 'bijayadhikari@gmail.com', 'Python, Django', '', 1, '2024-04-03'),
(17, 'Ganesh', '', 'Chaudhary', 'Male', '2022', 4, 'ganeshchaudhary@gmail.com', 'HTML, CSS', '', 0, '2024-04-03'),
(18, 'Deepak', '', 'Rawat', 'Male', '2023', 4, 'deepakrawat@gmail.com', 'JavaScript, Node.js', '', 0, '2024-04-03'),
(19, 'Kamal', '', 'Magar', 'Male', '2019', 1, 'kamalmagar@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(20, 'Dinesh', '', 'Acharya', 'Male', '2020', 2, 'dineshacharya@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(21, 'Anil', '', 'Karki', 'Male', '2021', 3, 'anilkarki@gmail.com', 'SQL, PostgreSQL', '', 0, '2024-04-03'),
(22, 'Subash', '', 'Poudel', 'Male', '2022', 4, 'subashpoudel@gmail.com', 'Java, JDBC', '', 0, '2024-04-03'),
(23, 'Ramesh', '', 'Dangol', 'Male', '2023', 4, 'rameshdangol@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(24, 'Arjun', '', 'Rana', 'Male', '2019', 5, 'arjunrana@gmail.com', 'JavaScript, React Native', '', 0, '2024-04-03'),
(25, 'Rajendra', '', 'Bista', 'Male', '2020', 2, 'rajendrabista@gmail.com', 'Java, Spring MVC', '', 0, '2024-04-03'),
(26, 'Manoj', '', 'Tamrakar', 'Male', '2021', 3, 'manojtamrakar@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(27, 'Suman', '', 'Khadka', 'Male', '2022', 4, 'sumankhadka@gmail.com', 'HTML, CSS, Bootstrap', '', 0, '2024-04-03'),
(28, 'Santosh', '', 'Neupane', 'Male', '2023', 3, 'santoshneupane@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(29, 'Pramod', '', 'Oli', 'Male', '2019', 1, 'pramodoli@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(30, 'Ashish', '', 'Gautam', 'Male', '2020', 2, 'ashishgautam@gmail.com', 'JavaScript, Vue.js', '', 0, '2024-04-03'),
(31, 'Nirajan', '', 'Subedi', 'Male', '2021', 3, 'nirajansubedi@gmail.com', 'SQL, MySQL', '', 0, '2024-04-03'),
(32, 'Ram Krishna', '', 'Limbu', 'Male', '2022', 4, 'ramkrishnalimbu@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(33, 'Bimal', '', 'Tharu', 'Male', '2023', 3, 'bimaltharu@gmail.com', 'Java, Hibernate', '', 0, '2024-04-03'),
(34, 'Bibek', '', 'Lohani', 'Male', '2019', 1, 'bibeklohani@gmail.com', 'JavaScript, ReactJS', '', 0, '2024-04-03'),
(35, 'Nischal', '', 'Aryal', 'Male', '2020', 2, 'nischalaryal@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(36, 'Bikash', '', 'Dahal', 'Male', '2021', 3, 'bikashdahal@gmail.com', 'SQL, PostgreSQL', '', 0, '2024-04-03'),
(37, 'Niraj', '', 'Pariyar', 'Male', '2022', 4, 'nirajpariyar@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(38, 'Ashok', '', 'Pathak', 'Male', '2023', 5, 'ashokpathak@gmail.com', 'JavaScript, Node.js', '', 0, '2024-04-03'),
(39, 'Raju', '', 'Budhathoki', 'Male', '2019', 1, 'rajubudhathoki@gmail.com', 'Java, JDBC', '', 0, '2024-04-03'),
(40, 'Suraj', '', 'Lamichhane', 'Male', '2020', 2, 'surajlamichhane@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(41, 'Bishal', '', 'Singh', 'Male', '2021', 3, 'bishalsingh@gmail.com', 'HTML, CSS, JavaScript', '', 0, '2024-04-03'),
(42, 'Milan', '', 'Rijal', 'Male', '2022', 4, 'milanrijal@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(43, 'Sanjay', '', 'Bhattarai', 'Male', '2023', 2, 'sanjaybhattarai@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(44, 'Manish', '', 'Pant', 'Male', '2019', 1, 'manishpant@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(45, 'Sujan', '', 'Koirala', 'Male', '2020', 2, 'sujankoirala@gmail.com', 'JavaScript, ReactJS', '', 0, '2024-04-03'),
(46, 'Rabin', '', 'Gurung', 'Male', '2021', 3, 'rabingurung@gmail.com', 'SQL, MySQL', '', 0, '2024-04-03'),
(47, 'Birendra', '', 'KC', 'Male', '2022', 4, 'birendrakc@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(48, 'Prabin', '', 'Dhakal', 'Male', '2023', 5, 'prabindhakal@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(49, 'Aayush', '', 'Rai', 'Male', '2019', 1, 'aayushrai@gmail.com', 'JavaScript, Vue.js', '', 0, '2024-04-03'),
(50, 'Rajesh', '', 'Jha', 'Male', '2020', 2, 'rajeshjha@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(51, 'Anupam', '', 'Devkota', 'Male', '2021', 3, 'anupamdevkota@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(52, 'Krishna', '', 'Maharjan', 'Male', '2022', 4, 'krishnamaharjan@gmail.com', 'HTML, CSS', '', 0, '2024-04-03'),
(53, 'Bikram', '', 'Poudyal', 'Male', '2023', 5, 'bikrampoudyal@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(54, 'Sunita', '', 'Rai', 'Female', '2019', 1, 'sunitarai@gmail.com', 'Java, JDBC', '', 0, '2024-04-03'),
(55, 'Anjali', '', 'Thapa', 'Female', '2020', 2, 'anjalithapa@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(56, 'Nisha', '', 'Lama', 'Female', '2021', 3, 'nishalama@gmail.com', 'HTML, CSS, Bootstrap', '', 0, '2024-04-03'),
(57, 'Priya', '', 'Sharma', 'Female', '2022', 4, 'priyasharma@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(58, 'Roshni', '', 'Gurung', 'Female', '2023', 5, 'roshnigurung@gmail.com', 'JavaScript, ReactJS', '', 0, '2024-04-03'),
(59, 'Asha', '', 'Limbu', 'Female', '2019', 1, 'ashalimbu@gmail.com', 'SQL, MySQL', '', 0, '2024-04-03'),
(60, 'Sweta', '', 'Tamang', 'Female', '2020', 2, 'swetatamang@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(61, 'Sita', '', 'Magar', 'Female', '2021', 3, 'sitamagar@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(62, 'Rekha', '', 'Thakuri', 'Female', '2022', 4, 'rekathakuri@gmail.com', 'JavaScript, Vue.js', '', 0, '2024-04-03'),
(63, 'Anita', '', 'Bhandari', 'Female', '2023', 5, 'anitabhandari@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(64, 'Mira', '', 'Khatri', 'Female', '2019', 1, 'mirakhatri@gmail.com', 'Java, JDBC', '', 0, '2024-04-03'),
(65, 'Sabina', '', 'Shrestha', 'Female', '2020', 2, 'sabinashrestha@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(66, 'Manju', '', 'Joshi', 'Female', '2021', 3, 'manjujoshi@gmail.com', 'HTML, CSS, Bootstrap', '', 0, '2024-04-03'),
(67, 'Shova', '', 'Acharya', 'Female', '2022', 4, 'shovaacharya@gmail.com', 'Python, Django', '', 1, '2024-04-03'),
(68, 'Sarita', '', 'Rana', 'Female', '2023', 5, 'saritarana@gmail.com', 'JavaScript, ReactJS', '', 0, '2024-04-03'),
(69, 'Pooja', '', 'Bista', 'Female', '2019', 1, 'poojabista@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(70, 'Prakriti', '', 'Adhikari', 'Female', '2020', 2, 'prakritiadhikari@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(71, 'Anju', '', 'Chaudhary', 'Female', '2021', 3, 'anjuchaudhary@gmail.com', 'SQL, MySQL', '', 0, '2024-04-03'),
(72, 'Gita', '', 'Maharjan', 'Female', '2022', 4, 'gitamaharjan@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(73, 'Meena', '', 'Basnet', 'Female', '2023', 5, 'meenabasnet@gmail.com', 'HTML, CSS', '', 1, '2024-04-03'),
(74, 'Maya', '', 'Rai', 'Female', '2019', 1, 'mayarai@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(75, 'Renuka', '', 'Dangol', 'Female', '2020', 2, 'renukadangol@gmail.com', 'JavaScript, React Native', '', 0, '2024-04-03'),
(76, 'Neetu', '', 'Rana', 'Female', '2021', 3, 'neeturana@gmail.com', 'SQL, PostgreSQL', '', 0, '2024-04-03'),
(77, 'Kamala', '', 'Tamrakar', 'Female', '2022', 4, 'kamalatamrakar@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(78, 'Kavita', '', 'Khadka', 'Female', '2023', 5, 'kavitakhadka@gmail.com', 'HTML, CSS, Bootstrap', '', 0, '2024-04-03'),
(79, 'Samjhana', '', 'Neupane', 'Female', '2019', 1, 'samjhananeupane@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(80, 'Radha', '', 'Oli', 'Female', '2020', 2, 'radhaoli@gmail.com', 'JavaScript, Vue.js', '', 0, '2024-04-03'),
(81, 'Jyoti', '', 'Gautam', 'Female', '2021', 3, 'jyotigautam@gmail.com', 'SQL, MySQL', '', 0, '2024-04-03'),
(82, 'Deepa', '', 'Subedi', 'Female', '2022', 4, 'deepasubedi@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(83, 'Ashmita', '', 'Limbu', 'Female', '2023', 5, 'ashmitalimbu@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(84, 'Anamika', '', 'Thapa', 'Female', '2019', 1, 'anamikathapa@gmail.com', 'HTML, CSS', '', 0, '2024-04-03'),
(85, 'Shanti', '', 'Bhandari', 'Female', '2020', 2, 'shantibhandari@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(86, 'Sangeeta', '', 'Karki', 'Female', '2021', 3, 'sangeetakarki@gmail.com', 'Java, JDBC', '', 0, '2024-04-03'),
(87, 'Pratima', '', 'Poudel', 'Female', '2022', 4, 'pratimapoudel@gmail.com', 'JavaScript, ReactJS', '', 0, '2024-04-03'),
(88, 'Anisha', '', 'Dangol', 'Female', '2023', 5, 'anishadangol@gmail.com', 'SQL, PostgreSQL', '', 0, '2024-04-03'),
(89, 'Nirmala', '', 'Rana', 'Female', '2019', 1, 'nirmalarana@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(90, 'Rita', '', 'Thakur', 'Female', '2020', 2, 'ritathakur@gmail.com', 'HTML, CSS, Bootstrap', '', 0, '2024-04-03'),
(91, 'Nisha', '', 'Poudel', 'Female', '2021', 3, 'nishapoudel@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(92, 'Asha', '', 'Rijal', 'Female', '2022', 4, 'asharijal@gmail.com', 'JavaScript, Vue.js', '', 0, '2024-04-03'),
(93, 'Shova', '', 'Neupane', 'Female', '2023', 5, 'shovaneupane@gmail.com', 'SQL, MySQL', '', 0, '2024-04-03'),
(94, 'Reena', '', 'Bhattarai', 'Female', '2019', 1, 'reenabhattarai@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(95, 'Binita', '', 'Pant', 'Female', '2020', 2, 'binitapant@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(96, 'Anusha', '', 'Koirala', 'Female', '2021', 3, 'anushakoirala@gmail.com', 'HTML, CSS, JavaScript', '', 0, '2024-04-03'),
(97, 'Puja', '', 'Gurung', 'Female', '2022', 4, 'pujagurung@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(98, 'Rama', '', 'Singh', 'Female', '2023', 5, 'ramasingh@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(99, 'Sabita', '', 'Raut', 'Female', '2019', 1, 'sabitaraut@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(100, 'Kiran', '', 'Adhikari', 'Female', '2020', 2, 'kiranadhikari@gmail.com', 'HTML, CSS, Bootstrap', '', 0, '2024-04-03'),
(101, 'Aruna', '', 'KC', 'Female', '2021', 3, 'arunakc@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(102, 'Bishnu', '', 'Dhakal', 'Female', '2022', 4, 'bishnudhakal@gmail.com', 'JavaScript, ReactJS', '', 0, '2024-04-03'),
(103, 'Mamata', '', 'Rai', 'Female', '2023', 5, 'mamatarai@gmail.com', 'SQL, MySQL', '', 0, '2024-04-03'),
(105, 'Deena', '', 'Dangol', 'Female', '2024', 3, 'deenadangol@gmail.com', 'Penetration Testing, Business Analysis, Firewall Configuration', '1712407560_sc.PNG', 1, '2024-04-03'),
(106, 'Sita', '', 'Shrestha', 'Female', '2024', 1, 'sitashrestha@gmail.com', 'Python, SQL', '', 0, '2024-04-03'),
(107, 'Nabin', '', 'Dhakal', 'Male', '2024', 2, 'nabindhakal@gmail.com', 'JavaScript, ReactJS', '', 0, '2024-04-03'),
(108, 'Komal', '', 'Rai', 'Female', '2024', 3, 'komalrai@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(109, 'Suresh', '', 'Bista', 'Male', '2024', 4, 'sureshbista@gmail.com', 'HTML, CSS', '', 0, '2024-04-03'),
(110, 'Anita', '', 'Sharma', 'Female', '2024', 5, 'anitasharma@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(111, 'Roshan', '', 'Magar', 'Male', '2024', 1, 'roshanmagar@gmail.com', 'SQL, MySQL', '', 0, '2024-04-03'),
(112, 'Sarita', '', 'Basnet', 'Female', '2024', 2, 'saritabasnet@gmail.com', 'JavaScript, Vue.js', '', 0, '2024-04-03'),
(113, 'Raju', '', 'Gurung', 'Male', '2024', 3, 'rajugurung@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(114, 'Anjali', '', 'Thapa', 'Female', '2024', 4, 'anjalithapa@gmail.com', 'HTML, CSS, Bootstrap', '', 0, '2024-04-03'),
(115, 'Prakash', '', 'Dangol', 'Male', '2024', 5, 'prakashdangol@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(116, 'Samir', '', 'Lama', 'Male', '2024', 1, 'samirlama@gmail.com', 'Java, JDBC', '', 0, '2024-04-03'),
(117, 'Nisha', '', 'Koirala', 'Female', '2024', 2, 'nishakoirala@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(118, 'Rajani', '', 'Shrestha', 'Female', '2024', 3, 'rajanishrestha@gmail.com', 'JavaScript, ReactJS', '', 0, '2024-04-03'),
(119, 'Dinesh', '', 'Bhandari', 'Male', '2024', 4, 'dineshbhandari@gmail.com', 'HTML, CSS', '', 0, '2024-04-03'),
(120, 'Sunita', '', 'Gurung', 'Female', '2024', 5, 'sunitagurung@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(121, 'Suman', '', 'Tamang', 'Male', '2024', 1, 'sumantamang@gmail.com', 'SQL, MySQL', '', 0, '2024-04-03'),
(122, 'Kavita', '', 'Rai', 'Female', '2024', 2, 'kavitarai@gmail.com', 'JavaScript, Vue.js', '', 0, '2024-04-03'),
(123, 'Arun', '', 'Sharma', 'Male', '2024', 3, 'arunsharma@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(124, 'Anita', '', 'Magar', 'Female', '2024', 4, 'anitamagar@gmail.com', 'HTML, CSS, Bootstrap', '', 0, '2024-04-03'),
(125, 'Bikash', '', 'Dangol', 'Male', '2024', 5, 'bikashdangol@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(126, 'Rajesh', '', 'Basnet', 'Male', '2024', 1, 'rajeshbasnet@gmail.com', 'Java, JDBC', '', 0, '2024-04-03'),
(127, 'Rita', '', 'Khadka', 'Female', '2024', 2, 'ritakhadka@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(128, 'Rajani', '', 'Pandey', 'Female', '2024', 3, 'rajanipandey@gmail.com', 'JavaScript, ReactJS', '', 0, '2024-04-03'),
(129, 'Dinesh', '', 'Shrestha', 'Male', '2024', 4, 'dineshshrestha@gmail.com', 'HTML, CSS', '', 0, '2024-04-03'),
(130, 'Sujata', '', 'Gurung', 'Female', '2024', 5, 'sujatagurung@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(131, 'Surya', '', 'Tamang', 'Male', '2024', 1, 'suryatamang@gmail.com', 'SQL, MySQL', '', 0, '2024-04-03'),
(132, 'Kumari', '', 'Rai', 'Female', '2024', 2, 'kumarirai@gmail.com', 'JavaScript, Vue.js', '', 0, '2024-04-03'),
(133, 'Anil', '', 'Sharma', 'Male', '2024', 3, 'anilsharma@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(134, 'Anita', '', 'Magar', 'Female', '2024', 4, 'anitamagar@gmail.com', 'HTML, CSS, Bootstrap', '', 0, '2024-04-03'),
(135, 'Bikram', '', 'Dangol', 'Male', '2024', 5, 'bikramdangol@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(136, 'Rajesh', '', 'Basnet', 'Male', '2024', 1, 'rajeshbasnet@gmail.com', 'Java, JDBC', '', 0, '2024-04-03'),
(137, 'Rita', '', 'Khadka', 'Female', '2024', 2, 'ritakhadka@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(138, 'Rajani', '', 'Pandey', 'Female', '2024', 3, 'rajanipandey@gmail.com', 'JavaScript, ReactJS', '', 0, '2024-04-03'),
(139, 'Dinesh', '', 'Shrestha', 'Male', '2024', 4, 'dineshshrestha@gmail.com', 'HTML, CSS', '', 0, '2024-04-03'),
(140, 'Sujata', '', 'Gurung', 'Female', '2024', 5, 'sujatagurung@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(141, 'Surya', '', 'Tamang', 'Male', '2024', 1, 'suryatamang@gmail.com', 'SQL, MySQL', '', 0, '2024-04-03'),
(142, 'Kumari', '', 'Rai', 'Female', '2024', 2, 'kumarirai@gmail.com', 'JavaScript, Vue.js', '', 0, '2024-04-03'),
(143, 'Anil', '', 'Sharma', 'Male', '2024', 3, 'anilsharma@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(144, 'Anita', '', 'Magar', 'Female', '2024', 4, 'anitamagar@gmail.com', 'HTML, CSS, Bootstrap', '', 0, '2024-04-03'),
(145, 'Bikram', '', 'Dangol', 'Male', '2024', 5, 'bikramdangol@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(146, 'Rajesh', '', 'Basnet', 'Male', '2024', 1, 'rajeshbasnet@gmail.com', 'Java, JDBC', '', 0, '2024-04-03'),
(147, 'Rita', '', 'Khadka', 'Female', '2024', 2, 'ritakhadka@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(148, 'Rajani', '', 'Pandey', 'Female', '2024', 3, 'rajanipandey@gmail.com', 'JavaScript, ReactJS', '', 0, '2024-04-03'),
(149, 'Dinesh', '', 'Shrestha', 'Male', '2024', 4, 'dineshshrestha@gmail.com', 'HTML, CSS', '', 0, '2024-04-03'),
(150, 'Sujata', '', 'Gurung', 'Female', '2024', 5, 'sujatagurung@gmail.com', 'Python, Django', '', 0, '2024-04-03'),
(151, 'Surya', '', 'Tamang', 'Male', '2024', 1, 'suryatamang@gmail.com', 'SQL, MySQL', '', 0, '2024-04-03'),
(152, 'Kumari', '', 'Rai', 'Female', '2024', 2, 'kumarirai@gmail.com', 'JavaScript, Vue.js', '', 0, '2024-04-03'),
(153, 'Anil', '', 'Sharma', 'Male', '2024', 3, 'anilsharma@gmail.com', 'Java, Spring Boot', '', 0, '2024-04-03'),
(154, 'Anita', '', 'Magar', 'Female', '2024', 4, 'anitamagar@gmail.com', 'HTML, CSS, Bootstrap', '', 0, '2024-04-03'),
(155, 'Bikram', '', 'Dangol', 'Male', '2024', 5, 'bikramdangol@gmail.com', 'Python, Flask', '', 0, '2024-04-03'),
(156, 'Sirjana', '', 'Pun', 'Female', '2020', 5, 'sirjanapun@gmail.com', 'SQL ,DBMS, Python', '', 1, '2024-04-05'),
(158, 'Ram', '', 'Sam', 'Male', '2020', 5, 'samram@gmail.com', 'SQL, Database Administrator, AI, ', '', 0, '2024-04-07'),
(159, 'Rupa', '', 'Khadka', 'Female', '2022', 4, 'rupa@gmail.com', 'DBMS', '', 1, '2024-04-09'),
(160, 'test', 'test', 'test', 'Male', '2028', 5, 'yayayay@gmail.com', 'Python, Java', '', 0, '2024-04-09'),
(161, 'ljal', 'm', 'asf', 'Male', '2028', 4, 'jabbhi@gmail.com', 'Python, Java', '', 0, '2024-04-09'),
(162, 'Bhi', 'Koi', 'Jabh', 'Male', '2019', 3, 'tintin@gmail.com', 'Python, Java', '', 1, '2024-04-09'),
(163, 'KK', 'KK', 'KK', 'Male', '2012', 3, 'kk@gmail.com', 'Python, Network Troubleshooting, IT Strategy, Project Management', '', 1, '2024-04-09'),
(164, 'Larishna', '', 'Lama', 'Female', '2020', 3, 'Larishnalama12@gmail.com', 'JavaScript, System Analysis', '', 1, '2024-04-15'),
(165, 'san', '', 'dhu', 'Male', '2020', 5, 'abc@xyz.com', 'JavaScript, SQL, Java', '', 1, '2024-04-16'),
(166, 'ojash', '', 'devkota', 'Male', '2019', 3, 'ojash@gmail.com', 'JavaScript, Database Security', '', 0, '2024-04-16'),
(167, 'ojash', '', 'devkota', 'Male', '2019', 3, 'xyz@ggmail.com', 'Requirements Gathering, UML', '', 0, '2024-04-16');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(30) NOT NULL,
  `company` varchar(250) NOT NULL,
  `location` text NOT NULL,
  `job_title` text NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `skills` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `company`, `location`, `job_title`, `description`, `user_id`, `date_created`, `skills`) VALUES
(4618, 'Microsoft Innovation Center Nepal', 'Khichapokhari,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2020-10-05 00:00:00', 'Business Analysis'),
(4619, 'Sastodeal - Be Genuine', 'Tripureshwor,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2021-09-15 00:00:00', 'Machine Learning, R'),
(4620, 'Tech Bizz Pvt. Ltd.', 'Maitidevi,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2022-07-09 00:00:00', 'Python'),
(4621, 'Bajra Technologies', 'Tinkune,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2021-09-13 00:00:00', 'Database Design, System Analysis, UML'),
(4622, 'Braindigit', 'Gyaneshwor,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2021-07-25 00:00:00', 'SQL, Database Management, Backup and Recovery'),
(4623, 'Classic Tech Pvt. Ltd.', 'New Baneshwor,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2022-04-30 00:00:00', 'Firewall Configuration, Security Auditing, Network Security'),
(4624, 'Admana Technology Pvt. Ltd.', 'Tripureshwor,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2021-10-01 00:00:00', 'R, Python, Machine Learning'),
(4625, 'Young Minds Creation Pvt. Ltd.', 'Shantinagar,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2021-02-14 00:00:00', 'Penetration Testing'),
(4626, 'Black Tech', 'Zero Kilometer,Pokhara', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2023-01-19 00:00:00', 'Node.js, JavaScript'),
(4627, 'MPercept Technology', 'Kupondole,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2021-09-19 00:00:00', 'Statistics'),
(4628, 'Truemark', 'Ranibari Chowk,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2022-08-02 00:00:00', 'Data Analysis'),
(4629, 'Technorio', 'Sankhamul,Kathamandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2020-05-15 00:00:00', 'Requirements Gathering'),
(4630, 'Code Kavya', 'Nadipur,Pokhara', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2021-12-23 00:00:00', 'Python'),
(4631, 'Truemark', 'Ranibari Chowk,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2021-04-24 00:00:00', 'Software Installation, Hardware Maintenance'),
(4632, 'Fusemachines Nepal', 'Hattisar,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2022-12-18 00:00:00', 'Hardware Maintenance, Software Installation'),
(4633, 'Black Tech', 'Zero Kilometer,Pokhara', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2021-04-25 00:00:00', 'UML, System Analysis'),
(4634, 'Semantic Creation', 'Pulchowk,Lalitpur', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-05-10 00:00:00', 'Firewall Management, Network Troubleshooting, TCP/IP'),
(4635, 'Impetus Incorporation Pvt. Ltd.', 'Pulchowk,Lalitpur', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-12-04 00:00:00', 'Network Troubleshooting'),
(4636, 'Softhover', 'Bansbari Rd,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2020-10-16 00:00:00', 'Hardware Maintenance'),
(4637, 'Kathmandu Living Labs', 'Maharajgunj,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2023-11-09 00:00:00', 'JavaScript, SQL'),
(4638, 'Wiseyak Inc.', 'Bhatbhateni,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2021-03-15 00:00:00', 'TCP/IP, Firewall Management'),
(4639, 'Aayulogic Pvt. Ltd.', 'Min Bhawan,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2020-08-09 00:00:00', 'Software Installation'),
(4640, 'Sastodeal - Be Genuine', 'Tripureshwor,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2020-11-24 00:00:00', 'Firewall Configuration, Penetration Testing, Network Security'),
(4641, 'Digital Age Nepal', 'Tahachal,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2021-10-23 00:00:00', 'Requirements Gathering, UML'),
(4642, 'Vairav Technology', 'Baluwatar,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2022-01-25 00:00:00', 'Penetration Testing'),
(4643, 'Verisk Nepal', 'Hattisar,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2021-04-30 00:00:00', 'Firewall Management, Network Troubleshooting, Network Configuration'),
(4644, 'Supreme IT Solutions Pvt. Ltd.', 'New Baneshwor,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2022-01-08 00:00:00', 'System Analysis'),
(4645, 'Code Pixelz Media Pvt. Ltd.', 'Ekantakuna Rd,Lalitpur', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2021-08-29 00:00:00', 'Hardware Maintenance, Technical Troubleshooting'),
(4646, 'Mantra Ideas Pvt. Ltd.', 'Sankhamul,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2020-10-16 00:00:00', 'Angular, Node.js, HTML'),
(4647, 'Viveka Health', 'Sanepa,Lalitpur', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2023-07-11 00:00:00', 'Penetration Testing'),
(4648, 'Ambarkaar Software Pvt. Ltd.', 'Bakhundol,Lalitpur', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2022-01-16 00:00:00', 'React, CSS, JavaScript'),
(4649, 'Infinite IT Solutions Nepal', 'Oil Nigam Kharji,Biratnagar', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-06-23 00:00:00', 'Backup and Recovery, Database Management'),
(4650, 'Itel Communications Pvt. Ltd.', 'Jawalakhel,Lalitpur', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2023-08-10 00:00:00', 'Firewall Configuration'),
(4651, 'Tech101', 'Kamaladi,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2022-07-18 00:00:00', 'Client Communication'),
(4652, 'Asterdio Inc.', 'Sankhamul,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-06-08 00:00:00', 'TCP/IP, Network Troubleshooting'),
(4653, 'Infinity Digital Agency', 'Maitidevi,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2022-03-27 00:00:00', 'Network Troubleshooting'),
(4654, 'Proshore', 'Tinkune,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2023-03-11 00:00:00', 'Project Management, Business Analysis, Client Communication'),
(4655, 'Astranix Technologies Pvt. Ltd.', 'Bharatpur,Chitwan', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2022-04-08 00:00:00', 'TCP/IP'),
(4656, 'Deerwalk', 'Sifal,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2020-11-02 00:00:00', 'Technical Troubleshooting, Software Installation, Hardware Maintenance'),
(4657, 'F1Soft International', 'Pulchowk,Lalitpur', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2023-12-15 00:00:00', 'Machine Learning, Python'),
(4658, 'Bidhee Pvt. Ltd.', 'New Baneshwor,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2022-06-13 00:00:00', 'R, Statistics, Machine Learning'),
(4659, 'Unelma Platforms', 'Ratnanagar,Chitwan', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2023-02-22 00:00:00', 'Project Management'),
(4660, 'Leapfrog Technology', 'Dillibazar,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-06-12 00:00:00', 'Backup and Recovery'),
(4661, 'Truemark', 'Ranibari Chowk,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2022-01-08 00:00:00', 'UML'),
(4662, 'Outsource Array', 'Thamel,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-01-01 00:00:00', 'Backup and Recovery, SQL, Database Management'),
(4663, 'Outsource Array', 'Thamel,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2023-06-17 00:00:00', 'Software Installation, Technical Troubleshooting'),
(4664, 'Karkhana', 'Pashupati Rd,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2020-09-19 00:00:00', 'Business Analysis'),
(4665, 'WebSoft Nepal Pvt. Ltd.', 'Indradev Marg,Narayangarh', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2023-04-04 00:00:00', 'R, Machine Learning'),
(4666, 'I3 Web Solution', 'Banasthali,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-02-05 00:00:00', 'Database Security, Database Management'),
(4667, 'Rigo Technology', 'Lazimpat,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2021-04-22 00:00:00', 'Software Installation'),
(4668, 'Karkhana', 'Pashupati Rd,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2020-04-28 00:00:00', 'Network Troubleshooting, Firewall Management, TCP/IP'),
(4669, 'E-Digital Nepal Pvt. Ltd.', 'Tinkune,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2021-07-15 00:00:00', 'C++'),
(4670, 'Clusus Information Solutions Pvt. Ltd.', 'Jhamsikhel,Lalitpur', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-11-17 00:00:00', 'TCP/IP'),
(4671, 'Infinia Hub Pvt. Ltd.', 'Tinkune,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2024-01-24 00:00:00', 'Requirements Gathering, Database Design, System Analysis'),
(4672, 'NITV Streamz Pvt. Ltd.', 'Ekantakuna,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2021-02-03 00:00:00', 'SQL, Database Security, Database Management'),
(4673, 'Rosebay Consulting Pvt. Ltd.', 'Baluwatar,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2020-01-19 00:00:00', 'Java'),
(4674, 'Unelma Platforms', 'Ratnanagar,Chitwan', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2023-08-19 00:00:00', 'Software Installation, Hardware Maintenance, Technical Troubleshooting'),
(4675, 'Kathmandu Living Labs', 'Maharajgunj,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2021-08-29 00:00:00', 'Network Configuration'),
(4676, 'Aayulogic Pvt. Ltd.', 'Min Bhawan,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2020-03-14 00:00:00', 'Client Communication, Project Management, Business Analysis'),
(4677, 'TechNepal', 'Nakhipot,Lalitpur', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2020-04-03 00:00:00', 'JavaScript, Java'),
(4678, 'Danphe Software Labs Pvt. Ltd.', 'Anamnagar,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2023-05-08 00:00:00', 'Java, JavaScript'),
(4679, 'Tech Kunja Pvt. Ltd.', 'Patan,Lalitpur', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2023-09-03 00:00:00', 'IT Strategy, Client Communication, Business Analysis'),
(4680, 'Okhati Solutions', 'Bagbazar,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2024-03-24 00:00:00', 'Backup and Recovery, SQL, Database Management'),
(4681, 'Anubhabi Technologies Pvt. Ltd.', 'Koteshwor,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2021-07-17 00:00:00', 'Firewall Management'),
(4682, 'Karkhana', 'Pashupati Rd,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-01-02 00:00:00', 'Network Configuration, Network Troubleshooting'),
(4683, 'Deerwalk', 'Sifal,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2022-02-07 00:00:00', 'Python'),
(4684, 'Kathmandu Living Labs', 'Maharajgunj,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2020-11-22 00:00:00', 'JavaScript, C++, SQL'),
(4685, 'Danfe Solution Pvt. Ltd.', 'Gyaneshwor,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2021-11-10 00:00:00', 'Node.js'),
(4686, 'ZurelSoft', 'Jawalakhel,Lalitpur', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-05-28 00:00:00', 'TCP/IP, Network Configuration'),
(4687, 'Eepos IT Services', 'Old Baneshwor,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2020-09-04 00:00:00', 'Firewall Management'),
(4688, 'Ishani Technology Pvt. Ltd.', 'Hattiban,Lalitpur', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2022-08-31 00:00:00', 'Data Analysis'),
(4689, 'Sastra Creations Pvt. Ltd.', 'Baluwatar,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2022-10-30 00:00:00', 'Firewall Management, Network Troubleshooting, Network Configuration'),
(4690, 'Aspark Systems', 'Basuki Marg,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2020-12-01 00:00:00', 'Statistics, R, Python'),
(4691, 'View Nepal', 'Kamalpokhari,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2020-04-21 00:00:00', 'Network Troubleshooting, Network Configuration, TCP/IP'),
(4692, 'LIS Nepal', 'Manbhawan,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2022-06-08 00:00:00', 'Database Security, SQL, Backup and Recovery'),
(4693, 'Heartsun Technology', 'Bharatpur,Chitwan', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2021-07-20 00:00:00', 'UML, System Analysis'),
(4694, 'Code Pixelz Media Pvt. Ltd.', 'Ekantakuna Rd,Lalitpur', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2020-02-08 00:00:00', 'C++'),
(4695, 'Shiran Techlonogies Pvt. Ltd.', 'Hattisar,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2022-11-05 00:00:00', 'Technical Troubleshooting, Hardware Maintenance'),
(4696, 'Techno Troop Inc. Pvt. Ltd.', 'Putalisadak,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2021-09-11 00:00:00', 'Machine Learning, Statistics, R'),
(4697, 'Janaki Tech', 'Harihar Bhawan,Lalitpur', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2022-09-12 00:00:00', 'Network Troubleshooting, Network Configuration'),
(4698, 'WebSoft Nepal Pvt. Ltd.', 'Indradev Marg,Narayangarh', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2020-07-18 00:00:00', 'Penetration Testing, Network Security, Firewall Configuration'),
(4699, 'Expresiv Studios', 'Dillibazar,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2020-11-01 00:00:00', 'Technical Troubleshooting'),
(4700, 'Dasmalab', 'Sanepa,Lalitpur', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2022-03-02 00:00:00', 'Statistics'),
(4701, 'UniAxilSoftwares', 'Anamnagar,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2021-09-26 00:00:00', 'Technical Troubleshooting'),
(4702, 'D-Tech Office System Pvt. Ltd.', 'New Baneshwor,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2023-11-16 00:00:00', 'IT Strategy, Project Management'),
(4703, 'Aspark Systems', 'Basuki Marg,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2023-11-02 00:00:00', 'Security Auditing, Penetration Testing, Network Security'),
(4704, 'TechNepal', 'Nakhipot,Lalitpur', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2024-01-22 00:00:00', 'Data Analysis, Python, R'),
(4705, 'Daanfe Inc Pvt. Ltd.', 'Sankhamul Road,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2023-06-21 00:00:00', 'Penetration Testing, Firewall Configuration'),
(4706, 'Growcept', 'Pulchowk,Lalitpur', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2023-07-12 00:00:00', 'Node.js, HTML'),
(4707, 'Asterdio Inc.', 'Sankhamul,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2020-05-10 00:00:00', 'CSS, JavaScript, Angular'),
(4708, 'Libresoft IT Solutions', 'Dillibazar,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2024-03-15 00:00:00', 'HTML'),
(4709, 'Tekkon Technologies', 'Baluwatar,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2021-12-29 00:00:00', 'Technical Troubleshooting'),
(4710, 'Mhuchya Technology', 'Sankhamul,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2022-09-26 00:00:00', 'R, Statistics'),
(4711, 'Mandala System Pvt. Ltd.', 'New Baneshwor,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2022-10-19 00:00:00', 'Business Analysis, Client Communication'),
(4712, 'Fusemachines Nepal', 'Hattisar,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2023-12-04 00:00:00', 'Java, JavaScript, C++'),
(4713, 'LinkBinary', 'Birtamode,Jhapa', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2023-03-13 00:00:00', 'Database Management'),
(4714, 'Gurkhatech', 'New Baneshwor,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2020-06-08 00:00:00', 'HTML, Angular, React'),
(4715, 'Pathway Technologies and Services', 'Thapathali,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2022-12-08 00:00:00', 'Database Security'),
(4716, 'Deerhold', 'Sifal,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2021-12-01 00:00:00', 'Hardware Maintenance, Software Installation, Technical Troubleshooting'),
(4717, 'Ishani Technology Pvt. Ltd.', 'Hattiban,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2021-03-25 00:00:00', 'SQL, Database Management, Database Security'),
(4718, 'Walkers Hive Pvt. Ltd.', 'Putalisadak,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2020-01-01 00:00:00', 'Hardware Maintenance, Software Installation'),
(4719, 'CellApp Innovations', 'Lainchaur,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2022-05-18 00:00:00', 'Database Management'),
(4720, 'BlackBox Technologies Pvt. Ltd.', 'Patan,Lalitpur', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2022-03-13 00:00:00', 'Client Communication, Business Analysis'),
(4721, 'Eepos IT Services', 'Old Baneshwor,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2020-02-13 00:00:00', 'Network Security'),
(4722, 'Cotiviti Nepal', 'Hattisar,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2023-01-25 00:00:00', 'SQL, JavaScript, C++'),
(4723, 'Peace Nepal DOT Com P. Ltd.', 'Kupondole,Lalitpur', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2023-01-20 00:00:00', 'React, Angular'),
(4724, 'HelloWorldCorp', 'Gairidhara,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2021-09-02 00:00:00', 'Software Installation, Hardware Maintenance, Technical Troubleshooting'),
(4725, 'Mhuchya Technology', 'Sankhamul,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2020-08-08 00:00:00', 'Security Auditing, Network Security'),
(4726, 'Expresiv Studios', 'Dillibazar,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2020-10-19 00:00:00', 'JavaScript, Python, Java'),
(4727, 'Peace Nepal DOT Com P. Ltd.', 'Kupondole,Lalitpur', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2020-01-02 00:00:00', 'UML, Database Design'),
(4728, 'EagleVision IT', 'Manbhawan,Lalitpur', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2022-11-04 00:00:00', 'Statistics'),
(4729, 'Spark Tech', 'Tinkune,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2022-01-08 00:00:00', 'Penetration Testing, Firewall Configuration, Network Security'),
(4730, 'HiUp Solutions Pvt. Ltd.', 'Chabahil,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2022-10-28 00:00:00', 'Backup and Recovery, Database Security, SQL'),
(4731, 'Segonatech', 'Battisputali,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2022-10-17 00:00:00', 'Angular, JavaScript, CSS'),
(4732, 'Bits Innovation', 'New Baneshwor,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2021-12-23 00:00:00', 'Requirements Gathering'),
(4733, 'Unifun', 'Nagpokhari,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2021-05-02 00:00:00', 'TCP/IP'),
(4734, 'IT Advisors Nepal', 'Dhumbarahi,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2023-07-28 00:00:00', 'Database Security'),
(4735, 'EagleVision IT', 'Manbhawan,Lalitpur', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2024-02-06 00:00:00', 'Python, SQL, C++'),
(4736, 'Walkers Hive Pvt. Ltd.', 'Putalisadak,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2023-04-24 00:00:00', 'Requirements Gathering, Database Design'),
(4737, 'Smartmobe Solutions', 'Tripureshwor,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-05-13 00:00:00', 'Database Management'),
(4738, 'LogPoint', 'Jawalakhel,Lalitpur', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2023-06-12 00:00:00', 'Database Design, System Analysis'),
(4739, 'Clusus Information Solutions Pvt. Ltd.', 'Jhamsikhel,Lalitpur', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2020-07-21 00:00:00', 'C++, Python'),
(4740, 'Rooster Logic Pvt. Ltd.', 'Gairidhara,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2021-04-23 00:00:00', 'Software Installation, Technical Troubleshooting'),
(4741, 'Incwell Venture', 'Jhamsikhel,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-09-30 00:00:00', 'Network Configuration'),
(4742, 'Yomari Information Services Incorporated', 'Kumaripati,Lalitpur', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2021-08-25 00:00:00', 'Hardware Maintenance, Technical Troubleshooting'),
(4743, 'Anubhabi Technologies Pvt. Ltd.', 'Koteshwor,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2023-07-10 00:00:00', 'System Analysis, UML'),
(4744, 'Perfect Active Solutions Pvt. Ltd.', 'Old Baneshwor,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2022-02-20 00:00:00', 'Security Auditing'),
(4745, 'Centerpoint Networks Pvt. Ltd.', 'Golfutar,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2022-08-10 00:00:00', 'SQL'),
(4746, 'Young Minds Creation Pvt. Ltd.', 'Shantinagar,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2021-10-19 00:00:00', 'Hardware Maintenance, Technical Troubleshooting, Software Installation'),
(4747, 'Insight Workshop', 'Kamalpokhari,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2022-04-26 00:00:00', 'Software Installation'),
(4748, 'Heartsun Technology', 'Bharatpur,Chitwan', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2022-04-10 00:00:00', 'Java, JavaScript, Python'),
(4749, 'Expresiv Studios', 'Dillibazar,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2022-08-17 00:00:00', 'Project Management, Business Analysis, IT Strategy'),
(4750, 'Amsoft Technologies', 'Gwarko,Lalitpur', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2022-08-05 00:00:00', 'Network Troubleshooting'),
(4751, 'Avionte Solutions', 'Buddhanagar,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2023-12-03 00:00:00', 'Backup and Recovery, Database Security, SQL'),
(4752, 'Atlas Tek Pvt. Ltd.', 'Gyaneshwor,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2022-06-11 00:00:00', 'Software Installation'),
(4753, 'Unifun', 'Nagpokhari,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2024-03-04 00:00:00', 'Requirements Gathering, System Analysis, UML'),
(4754, 'WebSoft Nepal Pvt. Ltd.', 'Indradev Marg,Narayangarh', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2024-02-12 00:00:00', 'System Analysis, Database Design, Requirements Gathering'),
(4755, 'Curves n\' Colors', 'Kamaladi,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2020-05-11 00:00:00', 'SQL, C++, Python'),
(4756, 'Segonatech', 'Battisputali,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2022-08-16 00:00:00', 'SQL, Java, Python'),
(4757, 'Mhuchya Technology', 'Sankhamul,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2022-07-12 00:00:00', 'Security Auditing'),
(4758, 'Tech One Global Pvt. Ltd.', 'Naxal,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2022-11-16 00:00:00', 'Network Configuration'),
(4759, 'TECHRISE', 'Jhamsikhel,Lalitpur', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2023-07-10 00:00:00', 'CSS, React, Angular'),
(4760, 'Supreme IT Solutions Pvt. Ltd.', 'New Baneshwor,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2023-11-12 00:00:00', 'SQL'),
(4761, 'Bajra Technologies', 'Tinkune,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2020-06-20 00:00:00', 'Data Analysis, R, Machine Learning'),
(4762, 'Avionte Solutions', 'Buddhanagar,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2021-03-08 00:00:00', 'Penetration Testing'),
(4763, 'HelloWorldCorp', 'Gairidhara,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-11-19 00:00:00', 'Firewall Management'),
(4764, 'Fusemachines Nepal', 'Hattisar,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2021-10-24 00:00:00', 'Business Analysis, Project Management, IT Strategy'),
(4765, 'Dolphin Dive Technology Pvt. Ltd.', 'Jhamsikhel,Lalitpur', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2021-02-05 00:00:00', 'Node.js, CSS'),
(4766, 'Sofwena Pvt. Ltd.', 'Patan Dhoka,Lalitpur', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2020-08-15 00:00:00', 'JavaScript, HTML, CSS'),
(4767, 'Itel Communications Pvt. Ltd.', 'Jawalakhel,Lalitpur', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2022-08-30 00:00:00', 'Technical Troubleshooting'),
(4768, 'Mandala System Pvt. Ltd.', 'New Baneshwor,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2021-04-05 00:00:00', 'React, HTML, Node.js'),
(4769, 'Leapfrog Technology', 'Dillibazar,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2022-02-02 00:00:00', 'Network Configuration, Network Troubleshooting, TCP/IP'),
(4770, 'Softhover', 'Bansbari Rd,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2021-07-26 00:00:00', 'JavaScript'),
(4771, 'IT Advisors Nepal', 'Dhumbarahi,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2020-06-20 00:00:00', 'HTML, Angular, Node.js'),
(4772, 'Daanfe Inc Pvt. Ltd.', 'Sankhamul Road,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2023-11-11 00:00:00', 'Machine Learning, Data Analysis, Statistics'),
(4773, 'Umanga Creation Pvt. Ltd.', 'Uttar Dhoka,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2021-04-24 00:00:00', 'Software Installation, Technical Troubleshooting, Hardware Maintenance'),
(4774, 'D-Tech Office System Pvt. Ltd.', 'New Baneshwor,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2023-07-09 00:00:00', 'JavaScript, Node.js'),
(4775, 'Mhuchya Technology', 'Sankhamul,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2022-01-12 00:00:00', 'Penetration Testing'),
(4776, 'CloudFactory', 'Bhaisepati,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2023-09-16 00:00:00', 'Database Management, Database Security'),
(4777, 'Anubhabi Technologies Pvt. Ltd.', 'Koteshwor,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2022-09-30 00:00:00', 'Angular, HTML'),
(4778, 'Infinia Hub Pvt. Ltd.', 'Tinkune,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2021-09-19 00:00:00', 'Angular, CSS'),
(4779, 'SUBISU CABLENET Pvt. Ltd.', 'Jhamsikhel,Lalitpur', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2024-03-21 00:00:00', 'Firewall Management, Network Troubleshooting'),
(4780, 'Infinia Hub Pvt. Ltd.', 'Tinkune,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2021-07-07 00:00:00', 'Python, Data Analysis'),
(4781, 'Mercantile Communications Pvt. Ltd.', 'Durbar Marg,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2023-10-09 00:00:00', 'Penetration Testing, Network Security'),
(4782, 'Technorio', 'Sankhamul,Kathamandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2021-02-04 00:00:00', 'Firewall Configuration'),
(4783, 'Heartsun Technology', 'Bharatpur,Chitwan', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2020-02-24 00:00:00', 'Client Communication, Business Analysis, IT Strategy'),
(4784, 'Enliv Technology', 'Sinamangal,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2022-04-10 00:00:00', 'HTML'),
(4785, 'Deerwalk', 'Sifal,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2023-06-30 00:00:00', 'Firewall Configuration, Penetration Testing'),
(4786, 'Walkers Hive Pvt. Ltd.', 'Putalisadak,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2022-08-20 00:00:00', 'React, JavaScript'),
(4787, 'Walkers Hive Pvt. Ltd.', 'Putalisadak,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2020-05-23 00:00:00', 'Data Analysis'),
(4788, 'Outsource Array', 'Thamel,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2023-07-03 00:00:00', 'Python, JavaScript, C++'),
(4789, 'MPercept Technology', 'Kupondole,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2021-01-08 00:00:00', 'Business Analysis'),
(4790, 'Iceberg Technology Pvt. Ltd.', 'Chandol,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2023-01-15 00:00:00', 'Node.js, CSS'),
(4791, 'Braindigit', 'Gyaneshwor,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2023-11-02 00:00:00', 'Hardware Maintenance, Technical Troubleshooting'),
(4792, 'Impetus Incorporation Pvt. Ltd.', 'Pulchowk,Lalitpur', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2024-01-08 00:00:00', 'Network Configuration'),
(4793, 'UXCam', 'Bhanimandal,Lalitpur', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2020-01-15 00:00:00', 'HTML, React'),
(4794, 'ZurelSoft', 'Jawalakhel,Lalitpur', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2022-11-08 00:00:00', 'Network Configuration, Network Troubleshooting'),
(4795, 'Webpage Nepal Pvt. Ltd.', 'New Road,Pokhara', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2020-01-21 00:00:00', 'IT Strategy, Business Analysis, Project Management'),
(4796, 'Softhover', 'Bansbari Rd,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2020-07-03 00:00:00', 'Technical Troubleshooting, Software Installation, Hardware Maintenance'),
(4797, 'UXCam', 'Bhanimandal,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2023-04-04 00:00:00', 'Backup and Recovery, SQL, Database Security'),
(4798, 'Channakya Software Pvt. Ltd.', 'Sinamangal,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2024-03-14 00:00:00', 'IT Strategy, Business Analysis, Project Management'),
(4799, 'Infinia Hub Pvt. Ltd.', 'Tinkune,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2022-01-19 00:00:00', 'Python, Data Analysis, R'),
(4800, 'Pathway Technologies and Services', 'Thapathali,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2021-12-09 00:00:00', 'Machine Learning, Data Analysis'),
(4801, 'Gurkhatech', 'New Baneshwor,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2022-07-28 00:00:00', 'Project Management'),
(4802, 'Kathmandu Living Labs', 'Maharajgunj,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2022-07-05 00:00:00', 'TCP/IP, Firewall Management'),
(4803, 'Digital Age Nepal', 'Tahachal,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-03-22 00:00:00', 'Backup and Recovery, SQL'),
(4804, 'Chhito Connect Pvt. Ltd.', 'Anamnagar,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2023-10-05 00:00:00', 'Data Analysis'),
(4805, 'Code Pixelz Media Pvt. Ltd.', 'Ekantakuna Rd,Lalitpur', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2020-10-22 00:00:00', 'Project Management, IT Strategy'),
(4806, 'Mhuchya Technology', 'Sankhamul,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2021-06-19 00:00:00', 'R, Data Analysis'),
(4807, 'Walkers Hive Pvt. Ltd.', 'Putalisadak,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2023-02-22 00:00:00', 'Hardware Maintenance, Software Installation'),
(4808, 'Mandala System Pvt. Ltd.', 'New Baneshwor,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2020-05-08 00:00:00', 'Node.js, CSS'),
(4809, 'Avionte Solutions', 'Buddhanagar,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-02-27 00:00:00', 'Database Security, Database Management, Backup and Recovery'),
(4810, 'Admana Technology Pvt. Ltd.', 'Tripureshwor,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2021-12-07 00:00:00', 'Project Management, Business Analysis'),
(4811, 'Wiseyak Inc.', 'Bhatbhateni,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2023-03-13 00:00:00', 'Network Security'),
(4812, 'TechNepal', 'Nakhipot,Lalitpur', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2024-02-11 00:00:00', 'Penetration Testing, Network Security, Security Auditing'),
(4813, 'Webpoint Solutions, LLC', 'Sanepa,Lalitpur', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2021-08-27 00:00:00', 'Hardware Maintenance, Technical Troubleshooting'),
(4814, 'Dasmalab', 'Sanepa,Lalitpur', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2021-03-07 00:00:00', 'Requirements Gathering, System Analysis, UML'),
(4815, 'Pathway Technologies and Services', 'Thapathali,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2024-01-24 00:00:00', 'SQL, Python'),
(4816, 'Young Minds Creation Pvt. Ltd.', 'Shantinagar,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2023-12-25 00:00:00', 'UML'),
(4817, 'Bajra Technologies', 'Tinkune,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2023-06-30 00:00:00', 'UML, Requirements Gathering'),
(4818, 'Softhover', 'Bansbari Rd,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2022-08-26 00:00:00', 'Software Installation, Hardware Maintenance, Technical Troubleshooting'),
(4819, 'Tech Bizz Pvt. Ltd.', 'Maitidevi,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2022-05-02 00:00:00', 'TCP/IP, Firewall Management, Network Configuration'),
(4820, 'Technorio', 'Sankhamul,Kathamandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-02-26 00:00:00', 'Database Security'),
(4821, 'Sajilo Saathi', 'Sankhamul,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2023-11-22 00:00:00', 'Network Security, Security Auditing, Penetration Testing'),
(4822, 'Astranix Technologies Pvt. Ltd.', 'Bharatpur,Chitwan', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2020-05-22 00:00:00', 'Project Management, Client Communication'),
(4823, 'ESignature Pvt. Ltd.', 'Gyaneshwor,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2022-07-27 00:00:00', 'UML'),
(4824, 'Aayulogic Pvt. Ltd.', 'Min Bhawan,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2022-11-08 00:00:00', 'Backup and Recovery, Database Security, SQL'),
(4825, 'Vairav Technology', 'Baluwatar,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2021-04-09 00:00:00', 'Requirements Gathering, System Analysis'),
(4826, 'ESignature Pvt. Ltd.', 'Gyaneshwor,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2021-11-01 00:00:00', 'Penetration Testing, Network Security, Security Auditing'),
(4827, 'E.K. Solutions Pvt. Ltd.', 'Kupondole,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2023-01-23 00:00:00', 'Database Management, SQL'),
(4828, 'Tech Kunja Pvt. Ltd.', 'Patan,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-07-15 00:00:00', 'Database Management, Backup and Recovery'),
(4829, 'Black Tech', 'Zero Kilometer,Pokhara', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2022-11-27 00:00:00', 'Network Configuration, Firewall Management'),
(4830, 'Awecode', 'Buddhanagar,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-02-08 00:00:00', 'Network Configuration, Network Troubleshooting'),
(4831, 'Amsoft Technologies', 'Gwarko,Lalitpur', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-09-19 00:00:00', 'Network Troubleshooting, Firewall Management'),
(4832, 'TechNepal', 'Nakhipot,Lalitpur', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2020-02-07 00:00:00', 'Statistics'),
(4833, 'Iceberg Technology Pvt. Ltd.', 'Chandol,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2023-11-29 00:00:00', 'Python, SQL, Java'),
(4834, 'Laser InfoTech Pvt. Ltd.', 'Bhaisepati,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-12-01 00:00:00', 'Backup and Recovery, Database Management, SQL'),
(4835, 'Three Monks', 'New Baneshwor,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2022-11-09 00:00:00', 'Machine Learning'),
(4836, 'Three Monks', 'New Baneshwor,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2022-03-16 00:00:00', 'Angular'),
(4837, 'Spark Tech', 'Tinkune,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2020-01-10 00:00:00', 'Hardware Maintenance, Technical Troubleshooting'),
(4838, 'Outsource Array', 'Thamel,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2022-11-05 00:00:00', 'UML'),
(4839, 'Docsumo', 'Mitrapark,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2021-08-09 00:00:00', 'Network Configuration'),
(4840, 'LogPoint', 'Jawalakhel,Lalitpur', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2022-06-24 00:00:00', 'Angular'),
(4841, 'BlackBox Technologies Pvt. Ltd.', 'Patan,Lalitpur', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2021-11-26 00:00:00', 'UML'),
(4842, 'Seknox Cybersecurity', 'Jhamsikhel,Lalitpur', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2020-09-08 00:00:00', 'Security Auditing, Network Security, Penetration Testing'),
(4843, 'Libresoft IT Solutions', 'Dillibazar,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2023-11-28 00:00:00', 'UML, Requirements Gathering, Database Design'),
(4844, 'Infinia Hub Pvt. Ltd.', 'Tinkune,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2020-06-28 00:00:00', 'Python, Java'),
(4845, 'Codewing Solutions', 'Bishalnagar,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2020-01-16 00:00:00', 'Python, JavaScript');
INSERT INTO `careers` (`id`, `company`, `location`, `job_title`, `description`, `user_id`, `date_created`, `skills`) VALUES
(4846, 'Techno Troop Inc. Pvt. Ltd.', 'Putalisadak,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2020-08-29 00:00:00', 'Network Security'),
(4847, 'Young Minds Creation Pvt. Ltd.', 'Shantinagar,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2021-07-17 00:00:00', 'Database Design'),
(4848, 'Nagarjun Software Technosys Pvt. Ltd.', 'Nagarjun,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2021-01-26 00:00:00', 'Network Security, Firewall Configuration'),
(4849, 'Laser InfoTech Pvt. Ltd.', 'Bhaisepati,Lalitpur', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2022-06-25 00:00:00', 'Requirements Gathering'),
(4850, 'Pathway Technologies and Services', 'Thapathali,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2024-01-09 00:00:00', 'Machine Learning, R'),
(4851, 'Viveka Health', 'Sanepa,Lalitpur', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2020-07-19 00:00:00', 'Hardware Maintenance'),
(4852, 'MPercept Technology', 'Kupondole,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2020-03-04 00:00:00', 'Network Security, Security Auditing, Firewall Configuration'),
(4853, 'Expresiv Studios', 'Dillibazar,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2021-08-03 00:00:00', 'Penetration Testing, Network Security, Firewall Configuration'),
(4854, 'Professional Computer System Pvt. Ltd.', 'Chakupat,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-01-28 00:00:00', 'Database Management, SQL'),
(4855, 'Cixware Pvt. Ltd.', 'New Baneshwor,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2023-01-06 00:00:00', 'Firewall Configuration, Penetration Testing'),
(4856, 'Semantic Creation', 'Pulchowk,Lalitpur', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2022-11-18 00:00:00', 'R, Statistics, Machine Learning'),
(4857, 'View Nepal', 'Kamalpokhari,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2020-12-26 00:00:00', 'Network Configuration, Network Troubleshooting'),
(4858, 'Tech Kunja Pvt. Ltd.', 'Patan,Lalitpur', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2022-01-02 00:00:00', 'TCP/IP, Network Configuration, Firewall Management'),
(4859, 'ThemeGrill', 'Basundhara,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2020-07-03 00:00:00', 'R'),
(4860, 'Rigo Technology', 'Lazimpat,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2020-09-16 00:00:00', 'Project Management'),
(4861, 'Rosebay Consulting Pvt. Ltd.', 'Baluwatar,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2024-03-10 00:00:00', 'Database Security, Database Management'),
(4862, 'Outsource Array', 'Thamel,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2020-03-08 00:00:00', 'Machine Learning, Data Analysis, Python'),
(4863, 'Fawesome Apps', 'Putalisadak,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2020-10-27 00:00:00', 'C++, Python, Java'),
(4864, 'Ishani Technology Pvt. Ltd.', 'Hattiban,Lalitpur', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2021-01-12 00:00:00', 'Penetration Testing, Network Security, Security Auditing'),
(4865, 'ThemeGrill', 'Basundhara,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2023-06-17 00:00:00', 'Python'),
(4866, 'Aayulogic Pvt. Ltd.', 'Min Bhawan,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2024-02-02 00:00:00', 'Penetration Testing'),
(4867, 'Insight Workshop', 'Kamalpokhari,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2021-08-14 00:00:00', 'R'),
(4868, 'Ribera Solutions', 'Pulchowk,Lalitpur', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2022-11-07 00:00:00', 'JavaScript, C++'),
(4869, 'Fawesome Apps', 'Putalisadak,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-02-20 00:00:00', 'SQL, Database Security'),
(4870, 'Itonics', 'Anamnagar,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2022-07-17 00:00:00', 'Software Installation'),
(4871, 'MPercept Technology', 'Kupondole,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2020-01-22 00:00:00', 'Network Configuration, TCP/IP'),
(4872, 'Pathway Technologies and Services', 'Thapathali,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-06-09 00:00:00', 'Network Configuration, TCP/IP, Network Troubleshooting'),
(4873, 'Lunover Digital', 'Naya Bazar,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-06-07 00:00:00', 'Firewall Management'),
(4874, 'Young Minds Creation Pvt. Ltd.', 'Shantinagar,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2023-01-11 00:00:00', 'Software Installation, Technical Troubleshooting'),
(4875, 'Cloudy Fox Technology Pvt. Ltd.', 'Anamnagar,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2024-04-02 00:00:00', 'Firewall Configuration, Network Security, Security Auditing'),
(4876, 'Infinite IT Solutions Nepal', 'Oil Nigam Kharji,Biratnagar', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2024-02-26 00:00:00', 'Java, Python, C++'),
(4877, 'Aspark Systems', 'Basuki Marg,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2021-12-31 00:00:00', 'Firewall Management, Network Troubleshooting'),
(4878, 'Verisk Nepal', 'Hattisar,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2020-08-30 00:00:00', 'React, Node.js, JavaScript'),
(4879, 'D-Tech Office System Pvt. Ltd.', 'New Baneshwor,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2023-06-03 00:00:00', 'Network Security, Security Auditing, Penetration Testing'),
(4880, 'Tech Kunja Pvt. Ltd.', 'Patan,Lalitpur', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2023-11-08 00:00:00', 'Java'),
(4881, 'InfoDevelopers', 'Sanepa,Lalitpur', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2023-08-22 00:00:00', 'Software Installation'),
(4882, 'D-Tech Office System Pvt. Ltd.', 'New Baneshwor,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2023-08-01 00:00:00', 'Business Analysis'),
(4883, 'Numeric Mind', 'Bhatbhateni,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2022-08-10 00:00:00', 'JavaScript, C++'),
(4884, 'NITV Streamz Pvt. Ltd.', 'Ekantakuna,Lalitpur', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2020-04-01 00:00:00', 'Software Installation, Hardware Maintenance'),
(4885, 'Segonatech', 'Battisputali,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2023-07-25 00:00:00', 'Software Installation, Technical Troubleshooting, Hardware Maintenance'),
(4886, 'D-Tech Office System Pvt. Ltd.', 'New Baneshwor,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2024-01-25 00:00:00', 'JavaScript, C++'),
(4887, 'Sastra Creations Pvt. Ltd.', 'Baluwatar,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2022-12-11 00:00:00', 'UML, Requirements Gathering, System Analysis'),
(4888, 'Karkhana', 'Pashupati Rd,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2022-03-16 00:00:00', 'JavaScript'),
(4889, 'Itel Communications Pvt. Ltd.', 'Jawalakhel,Lalitpur', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2021-01-26 00:00:00', 'IT Strategy, Project Management, Business Analysis'),
(4890, 'Aayulogic Pvt. Ltd.', 'Min Bhawan,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-02-05 00:00:00', 'Backup and Recovery'),
(4891, 'WebSoft Nepal Pvt. Ltd.', 'Indradev Marg,Narayangarh', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2023-10-16 00:00:00', 'Database Security, SQL'),
(4892, 'Ambarkaar Software Pvt. Ltd.', 'Bakhundol,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-07-20 00:00:00', 'Backup and Recovery, SQL, Database Security'),
(4893, 'Danfe Solution Pvt. Ltd.', 'Gyaneshwor,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2022-11-10 00:00:00', 'Technical Troubleshooting'),
(4894, 'Rigo Technology', 'Lazimpat,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2021-06-19 00:00:00', 'Node.js, HTML, JavaScript'),
(4895, 'Cotiviti Nepal', 'Hattisar,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2021-07-02 00:00:00', 'Backup and Recovery'),
(4896, 'Aspark Systems', 'Basuki Marg,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2022-08-25 00:00:00', 'Penetration Testing, Security Auditing'),
(4897, 'Pathway Technologies and Services', 'Thapathali,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2021-10-13 00:00:00', 'Machine Learning'),
(4898, 'Spark Tech', 'Tinkune,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2022-06-08 00:00:00', 'Firewall Management'),
(4899, 'View Nepal', 'Kamalpokhari,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2022-01-27 00:00:00', 'Database Design, System Analysis'),
(4900, 'GrowByData', 'Kupondole,Lalitpur', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2022-05-23 00:00:00', 'Java, JavaScript'),
(4901, 'Peace Nepal DOT Com P. Ltd.', 'Kupondole,Lalitpur', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2022-10-04 00:00:00', 'Network Troubleshooting, Firewall Management, TCP/IP'),
(4902, 'Segonatech', 'Battisputali,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2020-02-23 00:00:00', 'System Analysis, UML'),
(4903, 'Fawesome Apps', 'Putalisadak,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2023-05-15 00:00:00', 'IT Strategy, Business Analysis'),
(4904, 'HiUp Solutions Pvt. Ltd.', 'Chabahil,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2022-10-07 00:00:00', 'Software Installation'),
(4905, 'SUBISU CABLENET Pvt. Ltd.', 'Jhamsikhel,Lalitpur', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2021-02-10 00:00:00', 'Hardware Maintenance, Technical Troubleshooting'),
(4906, 'Chhito Connect Pvt. Ltd.', 'Anamnagar,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2023-09-03 00:00:00', 'Python'),
(4907, 'Susankya Tech Pvt. Ltd.', 'Kupondole,Lalitpur', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2024-03-14 00:00:00', 'Firewall Management, TCP/IP'),
(4908, 'GrowByData', 'Kupondole,Lalitpur', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2022-03-22 00:00:00', 'Project Management, Client Communication'),
(4909, 'IT Advisors Nepal', 'Dhumbarahi,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2023-02-26 00:00:00', 'Technical Troubleshooting'),
(4910, 'E.K. Solutions Pvt. Ltd.', 'Kupondole,Lalitpur', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2023-07-15 00:00:00', 'Python'),
(4911, 'Code Kavya', 'Nadipur,Pokhara', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2020-05-11 00:00:00', 'Network Troubleshooting, Network Configuration'),
(4912, 'Smartmobe Solutions', 'Tripureshwor,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2022-10-18 00:00:00', 'Network Configuration, TCP/IP, Firewall Management'),
(4913, 'QPay', 'Baluwatar,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2021-05-26 00:00:00', 'Python'),
(4914, 'Tech One Global Pvt. Ltd.', 'Naxal,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2021-08-25 00:00:00', 'Java, SQL'),
(4915, 'CloudFactory', 'Bhaisepati,Lalitpur', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2021-02-01 00:00:00', 'Data Analysis, Python, R'),
(4916, 'Parewa Labs Pvt. Ltd.', 'Lazimpat,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2024-01-01 00:00:00', 'Firewall Configuration, Network Security'),
(4917, 'Aayulogic Pvt. Ltd.', 'Min Bhawan,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2021-09-21 00:00:00', 'System Analysis, Database Design'),
(4918, 'Javra', 'Kumaripati,Lalitpur', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2024-03-09 00:00:00', 'Software Installation'),
(4919, 'Vairav Technology', 'Baluwatar,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2023-05-11 00:00:00', 'Hardware Maintenance'),
(4920, 'Supreme IT Solutions Pvt. Ltd.', 'New Baneshwor,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2022-07-07 00:00:00', 'C++, JavaScript, SQL'),
(4921, 'ZurelSoft', 'Jawalakhel,Lalitpur', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2021-04-02 00:00:00', 'Client Communication'),
(4922, 'Dolphin Dive Technology Pvt. Ltd.', 'Jhamsikhel,Lalitpur', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-06-05 00:00:00', 'Network Troubleshooting'),
(4923, 'CellApp Innovations', 'Lainchaur,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2024-03-02 00:00:00', 'Software Installation, Hardware Maintenance, Technical Troubleshooting'),
(4924, 'Dasmalab', 'Sanepa,Lalitpur', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2021-07-16 00:00:00', 'UML, System Analysis, Requirements Gathering'),
(4925, 'Libresoft IT Solutions', 'Dillibazar,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2021-04-17 00:00:00', 'Firewall Configuration'),
(4926, 'Unlimited Technology Pvt. Ltd.', 'Khichapokhari,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2020-07-25 00:00:00', 'JavaScript, Python, SQL'),
(4927, 'MPercept Technology', 'Kupondole,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2021-02-18 00:00:00', 'Security Auditing, Network Security'),
(4928, 'Aspark Systems', 'Basuki Marg,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2021-12-04 00:00:00', 'TCP/IP, Firewall Management, Network Troubleshooting'),
(4929, 'Deerwalk', 'Sifal,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2021-12-07 00:00:00', 'SQL, Database Management'),
(4930, 'F1Soft International', 'Pulchowk,Lalitpur', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2024-03-18 00:00:00', 'UML, Database Design'),
(4931, 'PageVamp', 'Sanepa,Lalitpur', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2022-09-11 00:00:00', 'R'),
(4932, 'Incessant Rain Animation Studios', 'Chhauni,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2023-06-23 00:00:00', 'SQL'),
(4933, 'TechNepal', 'Nakhipot,Lalitpur', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2022-10-20 00:00:00', 'Node.js, Angular, HTML'),
(4934, 'Proshore', 'Tinkune,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2020-01-16 00:00:00', 'Project Management'),
(4935, 'Microsoft Innovation Center Nepal', 'Khichapokhari,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2020-02-22 00:00:00', 'R, Data Analysis'),
(4936, 'Mahuri Ventures', 'Bharatpur,Chitwan', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2022-05-12 00:00:00', 'Database Management, Backup and Recovery'),
(4937, 'Iceberg Technology Pvt. Ltd.', 'Chandol,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2020-06-23 00:00:00', 'System Analysis, Database Design'),
(4938, 'Sustainable Solutions', 'Pulchowk,Lalitpur', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2023-11-16 00:00:00', 'Requirements Gathering, System Analysis'),
(4939, 'Visualise VR', 'Pulchowk,Lalitpur', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2023-05-19 00:00:00', 'Requirements Gathering, Database Design, System Analysis'),
(4940, 'Kazi Studios', 'Ekantakuna,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2022-07-17 00:00:00', 'Client Communication, IT Strategy'),
(4941, 'Zyoba Labs', 'Patan Dhoka,Lalitpur', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2024-01-19 00:00:00', 'Java, JavaScript, C++'),
(4942, 'Channakya Software Pvt. Ltd.', 'Sinamangal,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2022-10-24 00:00:00', 'System Analysis, Requirements Gathering'),
(4943, 'UXCam', 'Bhanimandal,Lalitpur', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2021-01-05 00:00:00', 'Network Security, Penetration Testing'),
(4944, 'Digital Age Nepal', 'Tahachal,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2020-11-06 00:00:00', 'Software Installation, Hardware Maintenance, Technical Troubleshooting'),
(4945, 'IT Advisors Nepal', 'Dhumbarahi,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2023-01-05 00:00:00', 'Data Analysis, Statistics'),
(4946, 'I3 Web Solution', 'Banasthali,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2022-02-11 00:00:00', 'JavaScript, CSS, HTML'),
(4947, 'Avionte Solutions', 'Buddhanagar,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2023-04-17 00:00:00', 'Statistics, Python, Data Analysis'),
(4948, 'Crystal Infosys', 'Jadibuti,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2022-01-03 00:00:00', 'SQL, Backup and Recovery'),
(4949, 'Ribera Solutions', 'Pulchowk,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-08-23 00:00:00', 'SQL, Database Management'),
(4950, 'Webpoint Solutions, LLC', 'Sanepa,Lalitpur', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2020-07-31 00:00:00', 'Hardware Maintenance'),
(4951, 'Tech101', 'Kamaladi,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2021-07-09 00:00:00', 'Security Auditing, Network Security, Firewall Configuration'),
(4952, 'Unelma Platforms', 'Ratnanagar,Chitwan', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-05-30 00:00:00', 'Database Management, Backup and Recovery'),
(4953, 'ESignature Pvt. Ltd.', 'Gyaneshwor,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2021-02-04 00:00:00', 'Backup and Recovery'),
(4954, 'Mhuchya Technology', 'Sankhamul,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2023-06-04 00:00:00', 'Network Security, Security Auditing, Firewall Configuration'),
(4955, 'Clusus Information Solutions Pvt. Ltd.', 'Jhamsikhel,Lalitpur', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2022-11-01 00:00:00', 'Python'),
(4956, 'CellApp Innovations', 'Lainchaur,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2021-06-13 00:00:00', 'Database Design, System Analysis'),
(4957, 'Kathmandu Living Labs', 'Maharajgunj,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2021-09-09 00:00:00', 'Security Auditing, Firewall Configuration, Network Security'),
(4958, 'Bidhee Pvt. Ltd.', 'New Baneshwor,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2023-02-06 00:00:00', 'Technical Troubleshooting, Hardware Maintenance, Software Installation'),
(4959, 'BroadLink Network and Communication Pvt. Ltd.', 'Sanepa,Lalitpur', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2024-01-10 00:00:00', 'Network Security, Penetration Testing, Security Auditing'),
(4960, 'Truemark', 'Ranibari Chowk,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2021-06-11 00:00:00', 'SQL, Java'),
(4961, 'HiUp Solutions Pvt. Ltd.', 'Chabahil,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2021-02-23 00:00:00', 'Client Communication'),
(4962, 'Grepsr', 'Naxal,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2022-06-08 00:00:00', 'Node.js, Angular'),
(4963, 'WebRobo', 'Setopul,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2023-09-03 00:00:00', 'R, Data Analysis, Python'),
(4964, 'Digital Age Nepal', 'Tahachal,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2021-07-11 00:00:00', 'JavaScript, React'),
(4965, 'Anubhabi Technologies Pvt. Ltd.', 'Koteshwor,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2021-06-28 00:00:00', 'Node.js, HTML'),
(4966, 'Impetus Incorporation Pvt. Ltd.', 'Pulchowk,Lalitpur', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2020-07-26 00:00:00', 'Business Analysis, Client Communication'),
(4967, 'Infinia Hub Pvt. Ltd.', 'Tinkune,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2020-05-25 00:00:00', 'IT Strategy, Project Management, Client Communication'),
(4968, 'E-Digital Nepal Pvt. Ltd.', 'Tinkune,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2021-04-06 00:00:00', 'Penetration Testing, Security Auditing'),
(4969, 'Truemark', 'Ranibari Chowk,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2020-11-03 00:00:00', 'Python'),
(4970, 'Smartmobe Solutions', 'Tripureshwor,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2020-05-16 00:00:00', 'Data Analysis'),
(4971, 'NITV Streamz Pvt. Ltd.', 'Ekantakuna,Lalitpur', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2023-07-03 00:00:00', 'JavaScript'),
(4972, 'Dolphin Dive Technology Pvt. Ltd.', 'Jhamsikhel,Lalitpur', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2020-10-22 00:00:00', 'System Analysis, Requirements Gathering, Database Design'),
(4973, 'MPercept Technology', 'Kupondole,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2022-03-25 00:00:00', 'JavaScript, Java, Python'),
(4974, 'E-Multitech Solution Pvt. Ltd.', 'Kupondol,Lalitpur', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2022-12-31 00:00:00', 'Firewall Configuration, Network Security, Security Auditing'),
(4975, 'Chulo Solutions Pvt. Ltd.', 'Kumaripati,Lalitpur', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2021-12-07 00:00:00', 'Hardware Maintenance'),
(4976, 'Tech101', 'Kamaladi,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-05-27 00:00:00', 'Network Troubleshooting, TCP/IP, Firewall Management'),
(4977, 'Dolphin Dive Technology Pvt. Ltd.', 'Jhamsikhel,Lalitpur', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2020-10-26 00:00:00', 'C++, Java'),
(4978, 'Avionte Solutions', 'Buddhanagar,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2020-05-15 00:00:00', 'Hardware Maintenance, Technical Troubleshooting, Software Installation'),
(4979, 'WebSoft Nepal Pvt. Ltd.', 'Indradev Marg,Narayangarh', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2021-12-13 00:00:00', 'IT Strategy, Client Communication'),
(4980, 'Unelma Platforms', 'Ratnanagar,Chitwan', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2020-10-01 00:00:00', 'Security Auditing'),
(4981, 'Allied Netlink Technology Pvt. Ltd.', 'Putalisadak,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2024-03-12 00:00:00', 'Hardware Maintenance, Software Installation'),
(4982, 'HiUp Solutions Pvt. Ltd.', 'Chabahil,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2021-12-12 00:00:00', 'Network Security, Firewall Configuration, Security Auditing'),
(4983, 'Deerhold', 'Sifal,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2021-04-01 00:00:00', 'Technical Troubleshooting'),
(4984, 'ZurelSoft', 'Jawalakhel,Lalitpur', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2022-11-21 00:00:00', 'Statistics'),
(4985, 'Numeric Mind', 'Bhatbhateni,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2022-11-20 00:00:00', 'JavaScript'),
(4986, 'Mhuchya Technology', 'Sankhamul,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-07-22 00:00:00', 'Database Management, Database Security'),
(4987, 'IntroCept Nepal', 'Dhobighat,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2021-06-27 00:00:00', 'Backup and Recovery, Database Security'),
(4988, 'Technorio', 'Sankhamul,Kathamandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2023-08-19 00:00:00', 'SQL, C++'),
(4989, 'GrowByData', 'Kupondole,Lalitpur', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2022-02-25 00:00:00', 'Security Auditing'),
(4990, 'Aspark Systems', 'Basuki Marg,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2023-08-09 00:00:00', 'UML, System Analysis, Database Design'),
(4991, 'Kathmandu Living Labs', 'Maharajgunj,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2021-04-09 00:00:00', 'Python, JavaScript, Java'),
(4992, 'Parewa Labs Pvt. Ltd.', 'Lazimpat,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2020-09-13 00:00:00', 'Firewall Configuration, Penetration Testing, Network Security'),
(4993, 'Perfect Active Solutions Pvt. Ltd.', 'Old Baneshwor,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2021-08-03 00:00:00', 'Network Troubleshooting, Firewall Management, Network Configuration'),
(4994, 'Centerpoint Networks Pvt. Ltd.', 'Golfutar,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2022-03-09 00:00:00', 'Software Installation'),
(4995, 'Karkhana', 'Pashupati Rd,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2020-05-31 00:00:00', 'Python, Data Analysis, Statistics'),
(4996, 'Cixware Pvt. Ltd.', 'New Baneshwor,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2020-05-20 00:00:00', 'System Analysis'),
(4997, 'Aayulogic Pvt. Ltd.', 'Min Bhawan,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2023-07-07 00:00:00', 'Penetration Testing'),
(4998, 'Technorio', 'Sankhamul,Kathamandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2020-03-23 00:00:00', 'Network Configuration, Firewall Management, Network Troubleshooting'),
(4999, 'Chulo Solutions Pvt. Ltd.', 'Kumaripati,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2023-03-06 00:00:00', 'SQL, Database Management'),
(5000, 'UXCam', 'Bhanimandal,Lalitpur', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2022-10-28 00:00:00', 'Statistics, Python, Data Analysis'),
(5001, 'big B soft', 'Kathmandu,Naya Bazar', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2021-02-11 00:00:00', 'Node.js'),
(5002, 'Manaram Technology', 'Baluwatar,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2023-07-24 00:00:00', 'HTML, Node.js, React'),
(5003, 'Swift Technology', 'Panipokhari,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2020-04-15 00:00:00', 'Network Configuration, Network Troubleshooting'),
(5004, 'SUBISU CABLENET Pvt. Ltd.', 'Jhamsikhel,Lalitpur', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2020-10-04 00:00:00', 'Requirements Gathering'),
(5005, 'Bidhee Pvt. Ltd.', 'New Baneshwor,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2021-03-26 00:00:00', 'Requirements Gathering, System Analysis'),
(5006, 'big B soft', 'Kathmandu,Naya Bazar', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2020-12-01 00:00:00', 'Client Communication, Project Management, IT Strategy'),
(5007, 'MPercept Technology', 'Kupondole,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2020-10-04 00:00:00', 'Technical Troubleshooting'),
(5008, 'TECHRISE', 'Jhamsikhel,Lalitpur', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2020-07-30 00:00:00', 'Firewall Management, Network Troubleshooting, Network Configuration'),
(5009, 'ESignature Pvt. Ltd.', 'Gyaneshwor,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2022-05-15 00:00:00', 'Penetration Testing, Firewall Configuration'),
(5010, 'Pioneer Solutions', 'Sitapaila Chowk,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2020-06-23 00:00:00', 'Project Management'),
(5011, 'Channakya Software Pvt. Ltd.', 'Sinamangal,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2022-03-10 00:00:00', 'React, Node.js, Angular'),
(5012, 'Infinity Digital Agency', 'Maitidevi,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2020-10-19 00:00:00', 'Machine Learning, R, Statistics'),
(5013, 'ESignature Pvt. Ltd.', 'Gyaneshwor,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2023-11-21 00:00:00', 'Technical Troubleshooting, Hardware Maintenance'),
(5014, 'Code Kavya', 'Nadipur,Pokhara', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2021-11-20 00:00:00', 'Machine Learning, Data Analysis, Statistics'),
(5015, 'Docsumo', 'Mitrapark,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2022-02-06 00:00:00', 'Software Installation, Hardware Maintenance, Technical Troubleshooting'),
(5016, 'View Nepal', 'Kamalpokhari,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2020-09-17 00:00:00', 'System Analysis, UML, Requirements Gathering'),
(5017, 'HelloWorldCorp', 'Gairidhara,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2022-11-20 00:00:00', 'Backup and Recovery'),
(5018, 'Sastra Creations Pvt. Ltd.', 'Baluwatar,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2023-06-27 00:00:00', 'React, Node.js, CSS'),
(5019, 'TECHRISE', 'Jhamsikhel,Lalitpur', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2022-05-10 00:00:00', 'React'),
(5020, 'E-Digital Nepal Pvt. Ltd.', 'Tinkune,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2021-06-25 00:00:00', 'Database Management, Backup and Recovery, SQL'),
(5021, 'Kathmandu Living Labs', 'Maharajgunj,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2022-08-10 00:00:00', 'Business Analysis'),
(5022, 'Seknox Cybersecurity', 'Jhamsikhel,Lalitpur', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2021-05-23 00:00:00', 'Machine Learning'),
(5023, 'Itel Communications Pvt. Ltd.', 'Jawalakhel,Lalitpur', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-10-29 00:00:00', 'Network Troubleshooting'),
(5024, 'Codewing Solutions', 'Bishalnagar,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2023-11-13 00:00:00', 'JavaScript, Python, C++'),
(5025, 'Chulo Solutions Pvt. Ltd.', 'Kumaripati,Lalitpur', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2022-01-21 00:00:00', 'Penetration Testing, Security Auditing, Firewall Configuration'),
(5026, 'Docsumo', 'Mitrapark,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2022-02-14 00:00:00', 'TCP/IP, Network Configuration'),
(5027, 'Deerhold', 'Sifal,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2024-03-09 00:00:00', 'Network Troubleshooting, Firewall Management, Network Configuration'),
(5028, 'Javra', 'Kumaripati,Lalitpur', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2022-03-22 00:00:00', 'Database Design, Requirements Gathering, System Analysis'),
(5029, 'Sastra Creations Pvt. Ltd.', 'Baluwatar,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-06-09 00:00:00', 'SQL, Backup and Recovery'),
(5030, 'ZurelSoft', 'Jawalakhel,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-06-08 00:00:00', 'Database Security'),
(5031, 'Unifun', 'Nagpokhari,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2022-03-02 00:00:00', 'System Analysis, Requirements Gathering'),
(5032, 'PageVamp', 'Sanepa,Lalitpur', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2024-01-20 00:00:00', 'Penetration Testing'),
(5033, 'SUBISU CABLENET (P.) LTD.', 'Jhamsikhel,Lalitpur', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2022-02-16 00:00:00', 'Firewall Configuration, Network Security'),
(5034, 'Zyoba Labs', 'Patan Dhoka,Lalitpur', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2020-03-24 00:00:00', 'Statistics, Machine Learning'),
(5035, 'Grepsr', 'Naxal,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2024-02-23 00:00:00', 'Technical Troubleshooting'),
(5036, 'Professional Computer System Pvt. Ltd.', 'Chakupat,Lalitpur', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2020-06-25 00:00:00', 'Technical Troubleshooting, Software Installation, Hardware Maintenance'),
(5037, 'E.K. Solutions Pvt. Ltd.', 'Kupondole,Lalitpur', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2020-10-03 00:00:00', 'UML, Database Design'),
(5038, 'Wiseyak Inc.', 'Bhatbhateni,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2022-03-04 00:00:00', 'Firewall Configuration'),
(5039, 'YoungInnovations', 'Kumaripati,Lalitpur', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2024-02-23 00:00:00', 'Project Management, IT Strategy, Client Communication'),
(5040, 'Numeric Mind', 'Bhatbhateni,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2020-03-25 00:00:00', 'Security Auditing'),
(5041, 'Anubhabi Technologies Pvt. Ltd.', 'Koteshwor,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2024-04-02 00:00:00', 'Database Design, UML'),
(5042, 'UniAxilSoftwares', 'Anamnagar,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2022-06-27 00:00:00', 'Firewall Configuration, Penetration Testing'),
(5043, 'Growcept', 'Pulchowk,Lalitpur', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2023-06-10 00:00:00', 'Python, SQL'),
(5044, 'ESignature Pvt. Ltd.', 'Gyaneshwor,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2024-02-20 00:00:00', 'Network Troubleshooting, TCP/IP, Firewall Management'),
(5045, 'ThemeGrill', 'Basundhara,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2022-12-09 00:00:00', 'Python, JavaScript, SQL'),
(5046, 'Viveka Health', 'Sanepa,Lalitpur', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2020-12-07 00:00:00', 'SQL, Java, Python'),
(5047, 'Atlas Tek Pvt. Ltd.', 'Gyaneshwor,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2020-08-13 00:00:00', 'Requirements Gathering'),
(5048, 'Itonics', 'Anamnagar,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2021-06-06 00:00:00', 'Network Troubleshooting'),
(5049, 'Deerhold', 'Sifal,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2023-02-27 00:00:00', 'Backup and Recovery, SQL'),
(5050, 'Centerpoint Networks Pvt. Ltd.', 'Golfutar,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2021-11-27 00:00:00', 'System Analysis, Requirements Gathering'),
(5051, 'Vianet Communications Pvt. Ltd.', 'Jawalakhel,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2022-05-08 00:00:00', 'Backup and Recovery'),
(5052, 'Asterdio Inc.', 'Sankhamul,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2021-11-11 00:00:00', 'Python'),
(5053, 'Jyaasa', 'Imadol,Lalitpur', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2020-07-24 00:00:00', 'Network Configuration, Firewall Management, TCP/IP'),
(5054, 'Cotiviti Nepal', 'Hattisar,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2021-01-24 00:00:00', 'Java, JavaScript'),
(5055, 'Code Kavya', 'Nadipur,Pokhara', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-01-28 00:00:00', 'SQL'),
(5056, 'Itel Communications Pvt. Ltd.', 'Jawalakhel,Lalitpur', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2022-10-24 00:00:00', 'HTML, Angular'),
(5057, 'Digital Age Nepal', 'Tahachal,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2023-08-10 00:00:00', 'Technical Troubleshooting'),
(5058, 'HelloWorldCorp', 'Gairidhara,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2024-02-27 00:00:00', 'Network Configuration, Firewall Management, Network Troubleshooting'),
(5059, 'Clusus Information Solutions Pvt. Ltd.', 'Jhamsikhel,Lalitpur', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2021-07-08 00:00:00', 'Network Configuration, TCP/IP'),
(5060, 'Young Minds Creation Pvt. Ltd.', 'Shantinagar,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2023-10-04 00:00:00', 'SQL, Database Security, Backup and Recovery'),
(5061, 'UniAxilSoftwares', 'Anamnagar,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2021-12-30 00:00:00', 'Firewall Management, TCP/IP'),
(5062, 'Mahuri Ventures', 'Bharatpur,Chitwan', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-09-23 00:00:00', 'Network Troubleshooting, Network Configuration, TCP/IP'),
(5063, 'Professional Computer System Pvt. Ltd.', 'Chakupat,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2021-02-21 00:00:00', 'Database Security, Database Management'),
(5064, 'Rosebay Consulting Pvt. Ltd.', 'Baluwatar,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2022-07-26 00:00:00', 'IT Strategy, Business Analysis'),
(5065, 'MPercept Technology', 'Kupondole,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2022-06-25 00:00:00', 'Penetration Testing'),
(5066, 'Deerwalk', 'Sifal,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2021-04-08 00:00:00', 'Machine Learning, R, Data Analysis'),
(5067, 'NepXpress Cargo & Courier', 'Buddhanagar,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2023-01-10 00:00:00', 'Project Management, Business Analysis, IT Strategy'),
(5068, 'Code Kavya', 'Nadipur,Pokhara', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2023-01-27 00:00:00', 'R'),
(5069, 'Black Tech', 'Zero Kilometer,Pokhara', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2024-01-29 00:00:00', 'Network Security'),
(5070, 'Sustainable Solutions', 'Pulchowk,Lalitpur', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2020-10-30 00:00:00', 'SQL, C++, Python'),
(5071, 'CellApp Innovations', 'Lainchaur,Kathmandu', 'Cybersecurity Analyst', 'Monitor computer networks for security breaches and implement security measures to protect data.', 1, '2022-04-20 00:00:00', 'Network Security');
INSERT INTO `careers` (`id`, `company`, `location`, `job_title`, `description`, `user_id`, `date_created`, `skills`) VALUES
(5072, 'Itel Communications Pvt. Ltd.', 'Jawalakhel,Lalitpur', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2020-02-14 00:00:00', 'C++, SQL, Java'),
(5073, 'Tech101', 'Kamaladi,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2021-05-02 00:00:00', 'Hardware Maintenance, Software Installation, Technical Troubleshooting'),
(5074, 'Dolphin Dive Technology Pvt. Ltd.', 'Jhamsikhel,Lalitpur', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2024-01-10 00:00:00', 'Data Analysis, Machine Learning, Statistics'),
(5075, 'SPI Nepal', 'Thapathali,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2021-05-28 00:00:00', 'Network Troubleshooting'),
(5076, 'Rooster Logic Pvt. Ltd.', 'Gairidhara,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2021-10-31 00:00:00', 'Backup and Recovery, Database Management, SQL'),
(5077, 'Enliv Technology', 'Sinamangal,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2020-12-14 00:00:00', 'Software Installation, Hardware Maintenance'),
(5078, 'Heartsun Technology', 'Bharatpur,Chitwan', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2022-06-04 00:00:00', 'R, Machine Learning'),
(5079, 'Fusemachines Nepal', 'Hattisar,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2022-07-19 00:00:00', 'SQL'),
(5080, 'Braindigit', 'Gyaneshwor,Kathmandu', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2022-03-31 00:00:00', 'System Analysis, Database Design'),
(5081, 'Avionte Solutions', 'Buddhanagar,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2022-03-02 00:00:00', 'SQL, Database Management, Database Security'),
(5082, 'TechNepal', 'Nakhipot,Lalitpur', 'Systems Analyst', 'Analyze and design information systems solutions to meet business needs.', 1, '2020-03-06 00:00:00', 'Database Design'),
(5083, 'Ambarkaar Software Pvt. Ltd.', 'Bakhundol,Lalitpur', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2020-12-11 00:00:00', 'CSS, Node.js, JavaScript'),
(5084, 'Tech101', 'Kamaladi,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2023-10-23 00:00:00', 'React, Node.js, CSS'),
(5085, 'Docsumo', 'Mitrapark,Kathmandu', 'IT Consultant', 'Provide advice and expertise on IT strategies and solutions to clients.', 1, '2021-05-29 00:00:00', 'Business Analysis, Client Communication, IT Strategy'),
(5086, 'Itonics', 'Anamnagar,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2023-10-06 00:00:00', 'Technical Troubleshooting'),
(5087, 'Grepsr', 'Naxal,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2021-02-14 00:00:00', 'Database Security'),
(5088, 'Bajra Technologies', 'Tinkune,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2021-08-14 00:00:00', 'JavaScript'),
(5089, 'View Nepal', 'Kamalpokhari,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2023-12-21 00:00:00', 'HTML'),
(5090, 'Iceberg Technology Pvt. Ltd.', 'Chandol,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2022-01-11 00:00:00', 'R, Machine Learning'),
(5091, 'Vianet Communications Pvt. Ltd.', 'Jawalakhel,Lalitpur', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2021-07-17 00:00:00', 'Technical Troubleshooting, Software Installation'),
(5092, 'HelloWorldCorp', 'Gairidhara,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2020-08-10 00:00:00', 'Network Troubleshooting, Network Configuration'),
(5093, 'Allied Netlink Technology Pvt. Ltd.', 'Putalisadak,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2023-08-13 00:00:00', 'CSS'),
(5094, 'Classic Tech Pvt. Ltd.', 'New Baneshwor,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-06-11 00:00:00', 'TCP/IP'),
(5095, 'PageVamp', 'Sanepa,Lalitpur', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2022-01-17 00:00:00', 'Statistics, Python, Data Analysis'),
(5096, 'Mantra Ideas Pvt. Ltd.', 'Sankhamul,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-04-19 00:00:00', 'Firewall Management, Network Troubleshooting, TCP/IP'),
(5097, 'WebSoft Nepal Pvt. Ltd.', 'Indradev Marg,Narayangarh', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2022-11-29 00:00:00', 'Firewall Management, TCP/IP'),
(5098, 'E-Digital Nepal Pvt. Ltd.', 'Tinkune,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-11-25 00:00:00', 'Firewall Management'),
(5099, 'Exotrac', 'Old Baneshwor,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2020-09-08 00:00:00', 'Firewall Management, Network Troubleshooting, Network Configuration'),
(5100, 'Vairav Technology', 'Baluwatar,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2022-04-16 00:00:00', 'C++'),
(5101, 'Insight Workshop', 'Kamalpokhari,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2023-01-11 00:00:00', 'Statistics, Python'),
(5102, 'Eepos IT Services', 'Old Baneshwor,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2023-08-05 00:00:00', 'Firewall Management, Network Configuration, Network Troubleshooting'),
(5103, 'Lunover Digital', 'Naya Bazar,Kathmandu', 'Web Developer', 'Design and develop websites and web applications using HTML, CSS, and JavaScript.', 1, '2023-11-05 00:00:00', 'HTML, React, Node.js'),
(5104, 'Aayulogic Pvt. Ltd.', 'Min Bhawan,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2023-03-11 00:00:00', 'SQL, Database Management'),
(5105, 'NITV Streamz Pvt. Ltd.', 'Ekantakuna,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2023-07-14 00:00:00', 'Backup and Recovery, Database Security, SQL'),
(5106, 'Atlas Tek Pvt. Ltd.', 'Gyaneshwor,Kathmandu', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2021-05-02 00:00:00', 'Technical Troubleshooting'),
(5107, 'Tech Kunja Pvt. Ltd.', 'Patan,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2022-11-30 00:00:00', 'Backup and Recovery, Database Security, Database Management'),
(5108, 'Tekkon Technologies', 'Baluwatar,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2024-01-05 00:00:00', 'Python'),
(5109, 'Laser InfoTech Pvt. Ltd.', 'Bhaisepati,Lalitpur', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2023-12-30 00:00:00', 'Hardware Maintenance, Software Installation'),
(5110, 'Rooster Logic Pvt. Ltd.', 'Gairidhara,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2020-04-28 00:00:00', 'C++'),
(5111, 'Infinity Digital Agency', 'Maitidevi,Kathmandu', 'Software Developer', 'Responsible for developing software applications using various programming languages and frameworks.', 1, '2020-12-11 00:00:00', 'JavaScript'),
(5112, 'Fusemachines Nepal', 'Hattisar,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2020-03-22 00:00:00', 'SQL, Backup and Recovery'),
(5113, 'Yomari Information Services Incorporated', 'Kumaripati,Lalitpur', 'IT Support Specialist', 'Provide technical support and assistance to users experiencing IT-related issues.', 1, '2020-09-11 00:00:00', 'Technical Troubleshooting'),
(5114, 'Jyaasa', 'Imadol,Lalitpur', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2021-05-27 00:00:00', 'Database Security, Database Management'),
(5115, 'Braindigit', 'Gyaneshwor,Kathmandu', 'Data Scientist', 'Analyze large datasets to extract insights and make data-driven decisions.', 1, '2021-04-12 00:00:00', 'Machine Learning, Statistics'),
(5116, 'Spark Tech', 'Tinkune,Kathmandu', 'Network Administrator', 'Responsible for the implementation and maintenance of network infrastructure.', 1, '2020-01-24 00:00:00', 'Network Configuration'),
(5117, 'Leapfrog Technology', 'Dillibazar,Kathmandu', 'Database Administrator', 'Manage and maintain databases to ensure they operate efficiently and securely.', 1, '2023-04-14 00:00:00', 'Backup and Recovery, Database Management');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `skills` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `job_description` text DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `skills`, `company_name`, `job_description`, `location`, `job`) VALUES
(1, 'C++,HTML,Java,Python', 'WorldLink Communications', 'Job description for WorldLink Communications', 'Kupondole', 'Database Administrator'),
(2, 'C++,HTML,Java,Python', 'Leapfrog', 'Job description for Leapfrog', 'Pulchowk', 'Database Administrator'),
(3, 'C++,HTML,Java,Python', 'Verisk Nepal', 'Job description for Verisk Nepal', 'Kupondole', 'Data Analyst'),
(4, 'C++,HTML,Java,Python', 'Verisk Nepal', 'Job description for Verisk Nepal', 'Kupondole', 'DevOps Engineer'),
(5, 'HTML,Java,Python', 'Verisk Nepal', 'Job description for Verisk Nepal', 'Baneshwor', 'Network Engineer'),
(6, 'C++,HTML,Java,Python', 'Mercantile', 'Job description for Mercantile', 'Samakhusi', 'DevOps Engineer'),
(7, 'C++,HTML,Java,Python', 'WorldLink Communications', 'Job description for WorldLink Communications', 'Pulchowk', 'Data Analyst'),
(8, 'C++,HTML,Java,Python', 'Mercantile', 'Job description for Mercantile', 'Samakhusi', 'Database Administrator'),
(9, 'C++,HTML,Java,Python', 'Leapfrog', 'Job description for Leapfrog', 'Pulchowk', 'DevOps Engineer'),
(10, 'C++,HTML,Java,Python', 'WorldLink Communications', 'Job description for WorldLink Communications', 'Samakhusi', 'Network Engineer'),
(11, 'C++,HTML,Java,Python', 'Leapfrog', 'Job description for Leapfrog', 'Samakhusi', 'Network Engineer'),
(12, 'C++,HTML,Java,Python', 'Verisk Nepal', 'Job description for Verisk Nepal', 'Pulchowk', 'Backend Developer'),
(13, 'C++,HTML,Java,Python', 'Mercantile', 'Job description for Mercantile', 'Samakhusi', 'Network Engineer'),
(14, 'C++,HTML,Java,Python', 'Leapfrog', 'Job description for Leapfrog', 'Baneshwor', 'Frontend Developer'),
(15, 'C++,HTML,Java,Python', 'WorldLink Communications', 'Job description for WorldLink Communications', 'Samakhusi', 'Frontend Developer'),
(16, 'C++,HTML,Java,Python', 'Verisk Nepal', 'Job description for Verisk Nepal', 'Baneshwor', 'Database Administrator'),
(17, 'C++,HTML,Java,Python', 'Mercantile', 'Job description for Mercantile', 'Jawalakhel', 'Data Analyst'),
(18, 'C++,HTML,Java,Python', 'Leapfrog', 'Job description for Leapfrog', 'Samakhusi', 'Data Analyst'),
(19, 'C++,HTML,Java,Python', 'Leapfrog', 'Job description for Leapfrog', 'Kupondole', 'Backend Developer'),
(20, 'C++,HTML,Java,Python', 'Mercantile', 'Job description for Mercantile', 'Pulchowk', 'Backend Developer'),
(21, 'C++,HTML,Java,Python', 'Verisk Nepal', 'Job description for Verisk Nepal', 'Samakhusi', 'Frontend Developer'),
(22, 'C++,HTML,Java,Python', 'WorldLink Communications', 'Job description for WorldLink Communications', 'Kupondole', 'DevOps Engineer'),
(23, 'C++,HTML,Java,Python', 'WorldLink Communications', 'Job description for WorldLink Communications', 'Pulchowk', 'Backend Developer'),
(24, 'C++,HTML,Java,Python', 'Mercantile', 'Job description for Mercantile', 'Kupondole', 'Frontend Developer');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(30) NOT NULL,
  `course` text NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `about`) VALUES
(3, 'Bsc.CSIT', ''),
(4, 'BIM', ''),
(5, 'BIT', ''),
(6, 'BCA', '');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `schedule` datetime NOT NULL,
  `banner` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `schedule`, `banner`, `date_created`) VALUES
(1, 'Sample Event', '&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Cras a est hendrerit, egestas urna quis, ullamcorper elit. Nullam a felis eget dolor vulputate vehicula. In hac habitasse platea dictumst. Nunc est urna, gravida sit amet ligula ut, aliquam fermentum lorem. Vestibulum non suscipit velit, in rhoncus orci. Vivamus pulvinar quam nec leo semper facilisis quis eu magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum lectus lorem, iaculis sed nunc nec, lacinia auctor risus.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; padding: 0px; text-align: justify;&quot;&gt;Aenean elementum, risus eget rutrum dapibus, tellus leo eleifend leo, et mattis turpis quam eu turpis. Suspendisse commodo placerat tellus, quis faucibus metus euismod sed. Cras vitae risus in felis dignissim fermentum. Morbi aliquam nisi ipsum, id aliquam tortor congue eu. Sed fringilla convallis augue, et vulputate ante convallis vitae. Integer lacinia lacus at vehicula finibus. Nullam ultrices turpis dui, volutpat pulvinar augue placerat in. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis quam metus, sollicitudin a lectus non, tincidunt sagittis odio.&lt;/p&gt;', '2020-10-16 10:00:00', '1602813060_no-image-available.png', '2020-10-16 09:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `event_commits`
--

CREATE TABLE `event_commits` (
  `id` int(30) NOT NULL,
  `event_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_commits`
--

INSERT INTO `event_commits` (`id`, `event_id`, `user_id`) VALUES
(1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `forum_comments`
--

CREATE TABLE `forum_comments` (
  `id` int(30) NOT NULL,
  `topic_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_comments`
--

INSERT INTO `forum_comments` (`id`, `topic_id`, `comment`, `user_id`, `date_created`) VALUES
(1, 3, 'Sample updated Comment', 3, '2020-10-15 15:46:03'),
(3, 3, 'Sample', 1, '2020-10-16 08:48:02'),
(5, 0, '', 1, '2020-10-16 09:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

CREATE TABLE `forum_topics` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_topics`
--

INSERT INTO `forum_topics` (`id`, `title`, `description`, `user_id`, `date_created`) VALUES
(7, 'Navigating the Tech World: Essential Skills for Aspiring IT Professionals', '&lt;span style=&quot;font-size: 14px;&quot;&gt;In the dynamic realm of IT, mastering technical skills alone is no longer sufficient for aspiring professionals. Beyond coding prowess and system proficiency, success hinges on a robust foundation of essential soft skills. Effective communication stands as a linchpin, facilitating the translation of intricate technical concepts into accessible language for diverse audiences. Moreover, adept problem-solving abilities are imperative, enabling individuals to dissect complexities, innovate solutions, and navigate challenges adeptly. The ever-evolving nature of technology underscores the need for adaptability, encouraging IT enthusiasts to embrace change, explore new methodologies, and stay ahead of industry trends. Equally paramount is collaboration, as IT projects often necessitate cohesive teamwork, idea exchange, and collective efforts toward shared objectives. By honing these vital skills alongside technical acumen, aspiring IT professionals pave a path not just to career success but also to impactful contributions within the dynamic tech landscape.&lt;/span&gt;', 1, '2024-04-06 17:56:45');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(30) NOT NULL,
  `about` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `about`, `created`) VALUES
(1, 'Samplee', '2020-10-15 13:08:27'),
(2, 'asdasd', '2020-10-15 13:15:37'),
(3, 'asdasdrtgfdg', '2020-10-15 13:15:45'),
(4, 'dfgdfgdfg', '2020-10-15 13:15:53'),
(5, 'dfgdfgdfg', '2020-10-15 13:16:07');

-- --------------------------------------------------------

--
-- Table structure for table `job_recommendations`
--

CREATE TABLE `job_recommendations` (
  `id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `recommendation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_recommendations`
--

INSERT INTO `job_recommendations` (`id`, `job_title`, `recommendation`) VALUES
(1, 'Software Engineer', 'Excellent problem-solving skills required.'),
(2, 'Data Analyst', 'Proficiency in data visualization tools is a plus.'),
(3, 'Marketing Manager', 'Experience in digital marketing strategies preferred.');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Student Community Platform', 'stucom@gmail.com', '9812312003', '1712415720_p.png', '&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align:justify;line-height:150%&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:150%;font-family:&amp;quot;Times New Roman&amp;quot;,&amp;quot;serif&amp;quot;&quot;&gt;The Student Community Platform is a web-based solution that facilitates meaningful interactions among students within an educational institution. The platform offers essential features such as user authentication with both admin and student roles, ensuring secure and personalized experiences. Users can register, log in, and engage in a variety of activities that contribute to a vibrant community experience. The platform&rsquo;s structure includes dedicated sections for forums, job recommendations, and a user directory, providing a one-stop solution for students to connect, collaborate, and stay informed.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Alumni officer, 3= alumnus',
  `auto_generated_pass` text NOT NULL,
  `alumnus_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `auto_generated_pass`, `alumnus_id`) VALUES
(1, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 1, '', 0),
(6, 'Deena Dangol', 'deenadangol@gmail.com', '220d4d2b7ca6c759b71651d494200563', 3, '', 105),
(7, 'Sirjana Pun', 'sirjanapun@gmail.com', '43599d919a15efd79fc960212c6b5970', 3, '', 156),
(10, 'Rupa Khadka', 'rupa@gmail.com', '8c14af8a19c4b0d77a4fc68ac3dfafb0', 3, '', 159),
(17, 'Larishna Lama', 'Larishnalama12@gmail.com', 'db053d6ffcfbd8882d6d297f9468a96e', 3, '', 164),
(18, 'san dhu', 'abc@xyz.com', '962a36218a682120bee6374c0eb715a0', 3, '', 165),
(19, 'ojash devkota', 'ojash@gmail.com', '1ad22485fac9af68023ac43a2439278e', 3, '', 166),
(20, 'ojash devkota', 'xyz@ggmail.com', '42f749ade7f9e195bf475f37a44cafcb', 3, '', 167);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_commits`
--
ALTER TABLE `event_commits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_recommendations`
--
ALTER TABLE `job_recommendations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
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
-- AUTO_INCREMENT for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5119;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event_commits`
--
ALTER TABLE `event_commits`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forum_comments`
--
ALTER TABLE `forum_comments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_recommendations`
--
ALTER TABLE `job_recommendations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
