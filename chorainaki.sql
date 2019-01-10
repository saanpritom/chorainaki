-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 10, 2019 at 10:20 AM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chorainaki`
--

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authtoken_token`
--

INSERT INTO `authtoken_token` (`key`, `created`, `user_id`) VALUES
('0c6de531a2602588fb1680e2f1be5768250d4872', '2019-01-10 05:45:11.897955', 1),
('6940f4cd85945a1787b6f37a233c94f8f14ef2e1', '2019-01-08 07:14:44.049423', 5),
('9fb749a63b9c4d2af5e2bb6e2735b480ffe9c182', '2019-01-10 08:49:01.193977', 17),
('efa3c172a8024f7e2f7ec6abc07f12cd3f7042a0', '2019-01-10 08:56:34.193372', 18);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add custom user', 6, 'add_customuser'),
(22, 'Can change custom user', 6, 'change_customuser'),
(23, 'Can delete custom user', 6, 'delete_customuser'),
(24, 'Can view custom user', 6, 'view_customuser'),
(25, 'Can add Token', 7, 'add_token'),
(26, 'Can change Token', 7, 'change_token'),
(27, 'Can delete Token', 7, 'delete_token'),
(28, 'Can view Token', 7, 'view_token'),
(29, 'Can add custom user token', 8, 'add_customusertoken'),
(30, 'Can change custom user token', 8, 'change_customusertoken'),
(31, 'Can delete custom user token', 8, 'delete_customusertoken'),
(32, 'Can view custom user token', 8, 'view_customusertoken');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
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

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-01-07 14:24:09.526790', '4', 'esha@yahoo.com', 3, '', 6, 1),
(2, '2019-01-07 14:24:09.627948', '3', 'vijay@gamil.com', 3, '', 6, 1),
(3, '2019-01-07 14:24:09.769844', '2', 'pranto.awal84@gmail.com', 3, '', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
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
(7, 'authtoken', 'token'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(6, 'users', 'customuser'),
(8, 'users', 'customusertoken');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
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
(1, 'contenttypes', '0001_initial', '2019-01-07 13:20:14.211470'),
(2, 'contenttypes', '0002_remove_content_type_name', '2019-01-07 13:20:15.431240'),
(3, 'auth', '0001_initial', '2019-01-07 13:20:20.037066'),
(4, 'auth', '0002_alter_permission_name_max_length', '2019-01-07 13:20:20.171005'),
(5, 'auth', '0003_alter_user_email_max_length', '2019-01-07 13:20:20.223910'),
(6, 'auth', '0004_alter_user_username_opts', '2019-01-07 13:20:20.288129'),
(7, 'auth', '0005_alter_user_last_login_null', '2019-01-07 13:20:20.340901'),
(8, 'auth', '0006_require_contenttypes_0002', '2019-01-07 13:20:20.388111'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2019-01-07 13:20:20.441280'),
(10, 'auth', '0008_alter_user_username_max_length', '2019-01-07 13:20:20.491469'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2019-01-07 13:20:20.541344'),
(12, 'users', '0001_initial', '2019-01-07 13:20:25.611574'),
(13, 'admin', '0001_initial', '2019-01-07 13:20:27.560190'),
(14, 'admin', '0002_logentry_remove_auto_add', '2019-01-07 13:20:27.613470'),
(15, 'admin', '0003_logentry_add_action_flag_choices', '2019-01-07 13:20:27.668458'),
(16, 'sessions', '0001_initial', '2019-01-07 13:20:28.311619'),
(17, 'authtoken', '0001_initial', '2019-01-08 07:04:14.780047'),
(18, 'authtoken', '0002_auto_20160226_1747', '2019-01-08 07:04:14.851006'),
(19, 'users', '0002_customusertoken', '2019-01-10 09:49:52.812352'),
(20, 'users', '0003_auto_20190110_1607', '2019-01-10 10:16:36.882337');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('11xh81fexrf9ueny2mzdbyrh4vlr38ac', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 07:11:46.642515'),
('2db5wutzx1kbfr8cyymq380lmsblgj7z', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 05:11:21.036377'),
('3179dzlbxztakr4s1tfr1culovzswc4s', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 07:12:47.474028'),
('59m8a2yzgofxvtzy32ncotwc11m1kdu3', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 08:40:10.881823'),
('5toiqsto0uwxjpz6olxah0loaqh36jc0', 'MGExMjAzY2EyYTY1YmQ0YTY2OTE5MWU3YjVkODAwZjgzM2E1N2M3ZTp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjhmNGFkMjFhZTBjMjIzMjQ5NGNiZGNkZmRlZjU0ODY0MTA1YTlkNSJ9', '2019-01-24 09:15:37.729287'),
('9k5dmi7p69h74ixsludhgxh1b4biopek', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 05:51:14.840731'),
('dk2dalzl0hgo98ufuwk45xtzcht0w1z8', 'ZGJiZGEwZGJmMDQ5MjZmNmM3MDhiZWJmNDczMzE1MjQ3MmY3ZDJhMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMTU5OTM0ZGZjN2MwMjQ5NTY3NmVkNWYxMzIyYjRlZmIyNWQ3ZDc3In0=', '2019-01-24 08:44:53.573586'),
('ea7mxolqla8c4fcppscczkf40ktw3k4k', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 08:39:25.093853'),
('epp41siq7mhbhgukkefalrm257j3g714', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 07:13:35.332752'),
('fpxczybgff6m3voh8opzwezgq5muunwq', 'MGExMjAzY2EyYTY1YmQ0YTY2OTE5MWU3YjVkODAwZjgzM2E1N2M3ZTp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjhmNGFkMjFhZTBjMjIzMjQ5NGNiZGNkZmRlZjU0ODY0MTA1YTlkNSJ9', '2019-01-24 09:23:33.077780'),
('fzbee21xlilnlkd77pl6b8g8fhz7xr6k', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 08:38:51.381234'),
('gauog1ugc8jqhyqfcfcn0yygwyyfo0g6', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 08:37:47.545181'),
('jaz4h9be9xojd9fdoq6vn4urnzg057ez', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 05:28:54.547384'),
('lacojafjlmluetjox9s3ooh9k05la3t8', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 05:14:55.771048'),
('lpje78kl5g483rsww43kosxknf02dqa6', 'MGExMjAzY2EyYTY1YmQ0YTY2OTE5MWU3YjVkODAwZjgzM2E1N2M3ZTp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjhmNGFkMjFhZTBjMjIzMjQ5NGNiZGNkZmRlZjU0ODY0MTA1YTlkNSJ9', '2019-01-24 09:09:38.614649'),
('ltfilaw8k1o15ustuotfii7o4psn6kzi', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 07:12:14.239930'),
('n13x2189axwjid2xwaar4lt15sof9izv', 'MGExMjAzY2EyYTY1YmQ0YTY2OTE5MWU3YjVkODAwZjgzM2E1N2M3ZTp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjhmNGFkMjFhZTBjMjIzMjQ5NGNiZGNkZmRlZjU0ODY0MTA1YTlkNSJ9', '2019-01-24 08:57:15.235444'),
('nrj8zdto5aedvtwnd73vlaodmj3571be', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 05:02:32.240088'),
('q84hwl1nn5hm2zr55fc6lr2oqu9dr3ef', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 05:34:36.103951'),
('r6mnrnf4re3lqno4qi9pz5bu34k4g2uz', 'MGExMjAzY2EyYTY1YmQ0YTY2OTE5MWU3YjVkODAwZjgzM2E1N2M3ZTp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjhmNGFkMjFhZTBjMjIzMjQ5NGNiZGNkZmRlZjU0ODY0MTA1YTlkNSJ9', '2019-01-24 09:09:57.467635'),
('tyyw2y03jnykgxb1ddmhcxm409i3u71v', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 05:41:24.579932'),
('u4o8jybjpdklfiz0i7fiumqrg4hisgxw', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 06:57:36.468567'),
('v4gydlx7fnurednvy0qt7cyq4k5u8gaz', 'MGExMjAzY2EyYTY1YmQ0YTY2OTE5MWU3YjVkODAwZjgzM2E1N2M3ZTp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjhmNGFkMjFhZTBjMjIzMjQ5NGNiZGNkZmRlZjU0ODY0MTA1YTlkNSJ9', '2019-01-24 09:03:55.845401'),
('w4pj8fnrdzx2plm9fqqpu9cqm181qzt1', 'MGExMjAzY2EyYTY1YmQ0YTY2OTE5MWU3YjVkODAwZjgzM2E1N2M3ZTp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjhmNGFkMjFhZTBjMjIzMjQ5NGNiZGNkZmRlZjU0ODY0MTA1YTlkNSJ9', '2019-01-24 10:03:19.812104'),
('waj6hki4ocmmypfwxwre6u23m7qyskqq', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 05:10:33.390825'),
('wcq54ftyobxhdl9u32rapawrur5r49ja', 'MGExMjAzY2EyYTY1YmQ0YTY2OTE5MWU3YjVkODAwZjgzM2E1N2M3ZTp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjhmNGFkMjFhZTBjMjIzMjQ5NGNiZGNkZmRlZjU0ODY0MTA1YTlkNSJ9', '2019-01-24 09:24:05.344001'),
('wj0xz2rozivac32bekyf3zrqyow4rake', 'MGExMjAzY2EyYTY1YmQ0YTY2OTE5MWU3YjVkODAwZjgzM2E1N2M3ZTp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjhmNGFkMjFhZTBjMjIzMjQ5NGNiZGNkZmRlZjU0ODY0MTA1YTlkNSJ9', '2019-01-24 09:23:22.055149'),
('wjsj9yi0lnk9pbiq4wvj66tkfjyq1r4m', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 08:38:06.410741'),
('xge2zn3k4uiq1vw7sc56zpbtgv1zna7w', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 07:14:11.347592'),
('ydgx1f2iaywpyzqhnd2lz2k7lb2twdyq', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 05:13:42.047212'),
('zf6sa5m0oudtxupeddm8wx4bnvzfjsiq', 'MGExMjAzY2EyYTY1YmQ0YTY2OTE5MWU3YjVkODAwZjgzM2E1N2M3ZTp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjhmNGFkMjFhZTBjMjIzMjQ5NGNiZGNkZmRlZjU0ODY0MTA1YTlkNSJ9', '2019-01-24 09:16:20.657370'),
('zpkwivyayrmgcyhjhndo2yxr2ipal18m', 'Zjg3ZjY5YTllNmJjNjViN2RkZjk4MjMzYzdiZDkwNWVhZjUwNGZlMjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzhhMjVkZWI3OTA5MTZhMmI3MWQ4MzI5OGM1MGQ4ODBiMzAzNTkyIn0=', '2019-01-24 06:55:50.104296');

-- --------------------------------------------------------

--
-- Table structure for table `users_customuser`
--

DROP TABLE IF EXISTS `users_customuser`;
CREATE TABLE `users_customuser` (
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
  `date_joined` datetime(6) NOT NULL,
  `full_name` varchar(256) NOT NULL,
  `mobile_number` varchar(80) NOT NULL,
  `address` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_customuser`
--

INSERT INTO `users_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `full_name`, `mobile_number`, `address`) VALUES
(1, 'pbkdf2_sha256$120000$zHGDIwu1f7ly$nMRhNLBQs1Q/avzuYDN5d+2lWOQlegCXHFLyHpqOj6g=', '2019-01-10 08:44:53.529562', 1, 'root', '', '', 'root@idopia.co', 1, 1, '2019-01-07 13:34:13.516999', '', '', ''),
(5, 'pbkdf2_sha256$120000$uqkOQLVSzjJM$M3BVFrNhSwAjvj6xY0yHi88YZTWi/OGHnTiqBRq2lj0=', '2019-01-10 08:40:10.876236', 0, 'john.snow@gmail.com', '', '', '', 0, 1, '2019-01-07 14:23:02.466274', 'John Snow', '00889976654554', 'Block B, New Aurlington, Texas, USA'),
(6, '12345678', NULL, 0, 'farhad@gmail.com', '', '', '', 0, 1, '2019-01-08 10:53:19.242245', 'Farhad Hassan', '09887887788', 'jkhasdf sadfj sdaljflsda fsd'),
(7, 'pbkdf2_sha256$120000$LMng2f32DJYg$fnyzjviYx0LnT4BFsNbzJpX7aftByhtCSFsQPBDEKHU=', NULL, 0, 'sks@gmail.com', '', '', '', 0, 1, '2019-01-09 03:43:10.686206', 'SKS VLS', '9908877778989', 'lkasdjf sadklfj sadlkfjs dalfjsadk'),
(8, 'superacces123', NULL, 0, 'nancy@gmail.com', '', '', '', 0, 1, '2019-01-09 04:58:34.206353', 'Nancy', '09887887788', ''),
(9, 'superacces123', NULL, 0, 'ab@gmail.com', '', '', '', 0, 1, '2019-01-09 06:06:05.131026', 'AB de Villiars', '98879989990', ''),
(10, 'superacces123', NULL, 0, 'fransisco@yahoo.co', '', '', '', 0, 1, '2019-01-09 06:10:25.733684', 'Fransisco DLS', '989897987', 'ljklasdjf asldkfj salkfjsadl fsaldjflsdjf'),
(11, 'superacces123', NULL, 0, 'kelly@gmail.com', '', '', '', 0, 1, '2019-01-09 06:19:45.959993', 'Kelly Madisson', '2343534534635', 'USA'),
(12, 'superacces123', NULL, 0, 'ira@bylc.org', '', '', '', 0, 1, '2019-01-09 06:24:06.226529', 'Tanzila Shawqat', '8999989988', 'Mirpur DOHS, Dhaka'),
(13, 'superacces123', NULL, 0, 'zoha@bylc.org', '', '', '', 0, 1, '2019-01-09 09:22:38.423934', 'Zoha', '09090908', 'alkjfsa dfsaldkfsd'),
(14, 'superacces123', NULL, 0, 'abir@bylc.org', '', '', '', 0, 1, '2019-01-09 10:58:06.853529', 'Abir', '09887887788', 'asdfsadfsadfsadf'),
(15, 'superacces123', NULL, 0, 'sami@bylc.org', '', '', '', 0, 1, '2019-01-09 11:14:42.911203', 'Sami Khan', '+880187654341', 'Baridhara, Dhaka 1212'),
(16, 'superacces123', NULL, 0, 'isko@gmail.com', '', '', '', 0, 1, '2019-01-10 08:45:47.271358', 'Vincent Isko', '0909808098', 'Barcelona, Spain'),
(17, 'superacces123', NULL, 0, 'joakim@gmail.com', '', '', '', 0, 1, '2019-01-10 08:49:00.854554', 'Joakim Lo', '44534333455', 'Berlin, Germany'),
(18, 'pbkdf2_sha256$120000$BgvF9Tury5lb$IYaNlxoEWvEMSOPReYPxa2YMxSxYAEG7RIr4b+eIoaI=', '2019-01-10 10:03:19.800451', 0, 'stefan@gmail.com', '', '', '', 0, 1, '2019-01-10 08:56:34.162744', 'Stefan Aloneso', '988998889', 'London, England');

-- --------------------------------------------------------

--
-- Table structure for table `users_customuser_groups`
--

DROP TABLE IF EXISTS `users_customuser_groups`;
CREATE TABLE `users_customuser_groups` (
  `id` int(11) NOT NULL,
  `customuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_customuser_user_permissions`
--

DROP TABLE IF EXISTS `users_customuser_user_permissions`;
CREATE TABLE `users_customuser_user_permissions` (
  `id` int(11) NOT NULL,
  `customuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_customuser_id` (`user_id`);

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
-- Indexes for table `users_customuser`
--
ALTER TABLE `users_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_customuser_groups`
--
ALTER TABLE `users_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_customuser_groups_customuser_id_group_id_76b619e3_uniq` (`customuser_id`,`group_id`),
  ADD KEY `users_customuser_groups_group_id_01390b14_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `users_customuser_user_permissions`
--
ALTER TABLE `users_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `users_customuser_use_permission_id_baaa2f74_fk_auth_perm` (`permission_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users_customuser`
--
ALTER TABLE `users_customuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users_customuser_groups`
--
ALTER TABLE `users_customuser_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_customuser_user_permissions`
--
ALTER TABLE `users_customuser_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `users_customuser_groups`
--
ALTER TABLE `users_customuser_groups`
  ADD CONSTRAINT `users_customuser_gro_customuser_id_958147bf_fk_users_cus` FOREIGN KEY (`customuser_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `users_customuser_groups_group_id_01390b14_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `users_customuser_user_permissions`
--
ALTER TABLE `users_customuser_user_permissions`
  ADD CONSTRAINT `users_customuser_use_customuser_id_5771478b_fk_users_cus` FOREIGN KEY (`customuser_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `users_customuser_use_permission_id_baaa2f74_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
