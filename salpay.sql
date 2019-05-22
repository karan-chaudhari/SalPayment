-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2019 at 08:04 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salpay`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add student', 7, 'add_student'),
(26, 'Can change student', 7, 'change_student'),
(27, 'Can delete student', 7, 'delete_student'),
(28, 'Can view student', 7, 'view_student'),
(29, 'Can add register', 8, 'add_register'),
(30, 'Can change register', 8, 'change_register'),
(31, 'Can delete register', 8, 'delete_register'),
(32, 'Can view register', 8, 'view_register'),
(33, 'Can add user register', 9, 'add_userregister'),
(34, 'Can change user register', 9, 'change_userregister'),
(35, 'Can delete user register', 9, 'delete_userregister'),
(36, 'Can view user register', 9, 'view_userregister'),
(37, 'Can add contact', 10, 'add_contact'),
(38, 'Can change contact', 10, 'change_contact'),
(39, 'Can delete contact', 10, 'delete_contact'),
(40, 'Can view contact', 10, 'view_contact'),
(41, 'Can add card', 11, 'add_card'),
(42, 'Can change card', 11, 'change_card'),
(43, 'Can delete card', 11, 'delete_card'),
(44, 'Can view card', 11, 'view_card');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  `card` varchar(30) NOT NULL,
  `cvv` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `enroll` varchar(30) NOT NULL,
  `paid_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`id`, `card`, `cvv`, `date`, `enroll`, `paid_date`) VALUES
(5, '4296741236987452', '236', '2022/11', '151130120004', '2019-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `msg` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `msg`) VALUES
(1, 'Arjun Chaudhari', 'chaudharik353@gmail.com', '971233183', 'Hello'),
(2, 'Arjun Chaudhari', 'chaudharik353@gmail.com', '971233183', 'Hello'),
(3, 'Arjun Chaudhari', 'chaudharik353@gmail.com', '971233183', 'Hello'),
(4, 'Karan Chaudhari', 'chaudharik353@gmail.com', '97123318333', 'Hello sdsd');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'SalPay', 'card'),
(10, 'SalPay', 'contact'),
(8, 'SalPay', 'register'),
(7, 'SalPay', 'student'),
(9, 'SalPay', 'userregister'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'SalPay', '0001_initial', '2019-05-06 16:41:07.116953'),
(2, 'contenttypes', '0001_initial', '2019-05-06 16:41:07.704411'),
(3, 'auth', '0001_initial', '2019-05-06 16:41:16.626957'),
(4, 'admin', '0001_initial', '2019-05-06 16:41:19.016689'),
(5, 'admin', '0002_logentry_remove_auto_add', '2019-05-06 16:41:19.110427'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2019-05-06 16:41:19.211453'),
(7, 'contenttypes', '0002_remove_content_type_name', '2019-05-06 16:41:20.277685'),
(8, 'auth', '0002_alter_permission_name_max_length', '2019-05-06 16:41:21.309116'),
(9, 'auth', '0003_alter_user_email_max_length', '2019-05-06 16:41:22.286373'),
(10, 'auth', '0004_alter_user_username_opts', '2019-05-06 16:41:22.374776'),
(11, 'auth', '0005_alter_user_last_login_null', '2019-05-06 16:41:23.102976'),
(12, 'auth', '0006_require_contenttypes_0002', '2019-05-06 16:41:23.151007'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2019-05-06 16:41:23.193233'),
(14, 'auth', '0008_alter_user_username_max_length', '2019-05-06 16:41:23.835252'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2019-05-06 16:41:24.468012'),
(16, 'sessions', '0001_initial', '2019-05-06 16:41:25.134781'),
(17, 'SalPay', '0002_register', '2019-05-17 15:15:53.169549'),
(18, 'SalPay', '0002_userregister', '2019-05-17 17:55:39.771583'),
(19, 'SalPay', '0003_auto_20190520_2339', '2019-05-20 18:09:31.143692'),
(20, 'SalPay', '0004_userregister_last_login', '2019-05-20 18:33:15.690750'),
(21, 'SalPay', '0004_auto_20190521_1117', '2019-05-21 05:47:35.760499'),
(22, 'SalPay', '0005_contact', '2019-05-21 07:48:39.295585'),
(23, 'SalPay', '0006_card', '2019-05-22 07:47:10.273044'),
(24, 'SalPay', '0007_card_enroll', '2019-05-22 08:10:09.287826'),
(25, 'SalPay', '0008_card_paid_date', '2019-05-22 17:44:05.258311');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6k12dr51oskrgtd2jf9r405imlfgv0yb', 'Y2Q1ZDEzNjljY2ZlYjFlNGI0NzBkODMzMTY4ZmNlNDUwYjY3ZmFiYTp7fQ==', '2019-06-05 18:02:53.586429'),
('kscwlzmo0jsqxbq03ljf9allanssuspj', 'Y2Q1ZDEzNjljY2ZlYjFlNGI0NzBkODMzMTY4ZmNlNDUwYjY3ZmFiYTp7fQ==', '2019-05-31 16:11:46.420750'),
('vs39bev4b05qyej8efegcbxrnrdpl3px', 'Y2Q1ZDEzNjljY2ZlYjFlNGI0NzBkODMzMTY4ZmNlNDUwYjY3ZmFiYTp7fQ==', '2019-06-04 14:54:15.915527');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `enrollment` varchar(100) NOT NULL,
  `course` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `fees` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `enrollment`, `course`, `branch`, `fees`, `dob`, `email`, `phone`) VALUES
(1, 'Aaditya Gandhi', '151130107001', 'B.E', 'Computer', '35,600', '1998-05-25', 'aadityagandhi@gmail.com ', '9964198589'),
(2, 'Mirali Panchal', '151130107002', 'B.E', 'Computer', '35,600', '1997-11-30', 'miralipanchal@gmail.com', '7622883922'),
(3, 'Heli Doshi', '151130107101', 'B.E', 'Mechanical', '34,600 ', '1998-06-26 ', 'helidoshi@gmail.com ', '9974564915'),
(4, 'Kush Patel', '151130107114', 'B.E', 'Mechanical', '34,600 ', '1998-03-04', 'kushpatel@gmail.com', '7600528954'),
(5, 'Aakash solanki', '151131107011', 'B.E', 'Civil', '33,600', '1996-08-17', 'Aakashsolanki@gmail.com', '9596978542'),
(6, 'Karan Chaudhari', '151130120004', 'B.E', 'Mechatronics', '35,600', '1997-10-22', 'chaudharik353@gmail.com', '8160202908'),
(7, 'Maulik chauhan', '151130120007', 'B.E', 'Mechatronics', '35,600', '1997-11-20', 'maulikchauhan@gmail.com', '971233183'),
(8, 'Limbani Parth', '151130120014', 'B.E', 'Mechatronics', '35, 600', '1998-03-04', 'limbani@gmail.com', '9712331833'),
(9, 'Harshal Patel', '151130120021', 'B.E', 'Mechatronics', '35,600', '1997-11-30', 'harshalpatel20@gmail.com', '97123318333');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `enroll` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `enroll`, `email`, `password`, `last_login`) VALUES
(11, '151130120004', 'chaudharik353@gmail.com', '$pbkdf2-sha256$12000$CeGcM0aIce6ds5bSGqO09v7f.x9jDOE8hzCm9F7rfU8$ZYq.sFKcLBBImyL7Ub68nPU7XqsNQhUR5Fb4wJSes2o', NULL),
(12, '151130107001', 'aadityagandhi@gmail.com', '$pbkdf2-sha256$12000$.j9nLCWEMIbQeu997z3nvHdurVUqxdj7X.udcy5FKGU$NyGlf2WFYdFmJIP.q31mJkiW/aBp22jvyFHb7tY7.Bo', NULL),
(13, '151130120001', 'Aakashsolanki@gmail.com', '$pbkdf2-sha256$12000$C.G8VwrhPIcwxjhn7P0/h7CWUkrJWSultDZGCKF0Tmk$NvhZJhzjdZ7UrZph4JLwtuKxZLob6YHlp..06tGIS7M', NULL),
(14, '151130120007', 'maulikchauhan@gmail.com', '$pbkdf2-sha256$12000$G0PIuZeSshbiHKNUam1tjXGutdaak1KK8b73vpey9l4$EYGj4lajaJPCi7g3fj029KhQIIqqCcNAoY8rRqDascI', NULL),
(15, '151130120014', 'limbani@gmail.com', '$pbkdf2-sha256$12000$dC5FiJFyLiUEQEiJkZLSWsu5974XAsB4T4kxZsw55xw$5YdSc2xsD1EReUpC8DhjBOwr9HwqoF56BfeWqW.jl1U', NULL),
(16, '151130120021', 'harshalpatel20@gmail.com', '$pbkdf2-sha256$12000$tzbG.F8LgXDOeQ.B0BpDiJFybg2hNAagdO59D4GQkjI$MRfQ45VvOm2Bcso8fhGlDSvSxtHhzxKVcYgin.oLQ6s', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email_54dc62b2_uniq` (`email`),
  ADD UNIQUE KEY `user_enroll_cf4e57ea_uniq` (`enroll`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
