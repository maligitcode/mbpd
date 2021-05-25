-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2021 at 05:55 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dms`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'ecommerce'),
(2, 'finance'),
(5, 'hrd'),
(3, 'it'),
(4, 'operations'),
(6, 'project');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
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
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add post', 8, 'add_post'),
(30, 'Can change post', 8, 'change_post'),
(31, 'Can delete post', 8, 'delete_post'),
(32, 'Can view post', 8, 'view_post'),
(33, 'Can add project', 9, 'add_project'),
(34, 'Can change project', 9, 'change_project'),
(35, 'Can delete project', 9, 'delete_project'),
(36, 'Can view project', 9, 'view_project'),
(37, 'Can add projectdocument', 10, 'add_projectdocument'),
(38, 'Can change projectdocument', 10, 'change_projectdocument'),
(39, 'Can delete projectdocument', 10, 'delete_projectdocument'),
(40, 'Can view projectdocument', 10, 'view_projectdocument');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$m4Bc7uiLTdLcDtrSPe4DDV$7leAHF/Ceuarq3j/LY1Ue6KSrCyrMWwalud0SKcW9rk=', '2021-05-20 03:49:53.000000', 1, 'admin', '', '', 'aliofficial.net@gmail.com', 1, 1, '2021-05-20 03:49:28.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `categoryname` varchar(20) NOT NULL,
  `categorydesc` longtext NOT NULL,
  `link` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryname`, `categorydesc`, `link`) VALUES
(1, 'Ecommerce', 'ecommerce department', 'ecommerce'),
(2, 'Finance', 'finanance department', 'finance'),
(3, 'Project', 'project department', 'project'),
(4, 'HR', 'hrd department', 'hrd'),
(5, 'IT', 'it department', 'it'),
(6, 'OPS', 'operations department', 'operations');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-05-20 03:53:20.259904', '1', 'ecommerce', 1, '[{\"added\": {}}]', 3, 1),
(2, '2021-05-20 03:53:27.748468', '2', 'finance', 1, '[{\"added\": {}}]', 3, 1),
(3, '2021-05-20 03:53:35.604783', '3', 'it', 1, '[{\"added\": {}}]', 3, 1),
(4, '2021-05-20 03:53:40.957372', '4', 'operations', 1, '[{\"added\": {}}]', 3, 1),
(5, '2021-05-20 03:53:48.972307', '5', 'hrd', 1, '[{\"added\": {}}]', 3, 1),
(6, '2021-05-20 03:53:54.433437', '6', 'project', 1, '[{\"added\": {}}]', 3, 1),
(7, '2021-05-20 03:55:24.375088', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1);

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
(7, 'category', 'category'),
(5, 'contenttypes', 'contenttype'),
(8, 'dashboard', 'post'),
(9, 'project', 'project'),
(10, 'project', 'projectdocument'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-05-19 09:53:56.703297'),
(2, 'auth', '0001_initial', '2021-05-19 09:54:06.722429'),
(3, 'admin', '0001_initial', '2021-05-19 09:54:09.234973'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-05-19 09:54:09.331019'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-19 09:54:09.514971'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-05-19 09:54:12.822623'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-05-19 09:54:12.902364'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-05-19 09:54:13.086312'),
(9, 'auth', '0004_alter_user_username_opts', '2021-05-19 09:54:13.206358'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-05-19 09:54:14.403078'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-05-19 09:54:14.534846'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-05-19 09:54:14.604190'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-05-19 09:54:14.751744'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-05-19 09:54:14.905554'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-05-19 09:54:14.985557'),
(16, 'auth', '0011_update_proxy_permissions', '2021-05-19 09:54:15.017557'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-05-19 09:54:15.081560'),
(18, 'category', '0001_initial', '2021-05-19 09:54:15.273590'),
(19, 'category', '0002_category_link', '2021-05-19 09:54:15.849554'),
(20, 'dashboard', '0001_initial', '2021-05-19 09:54:17.134491'),
(21, 'dashboard', '0002_alter_post_table', '2021-05-19 09:54:17.278471'),
(22, 'dashboard', '0003_rename_category_post_category_id', '2021-05-19 09:54:19.747579'),
(23, 'dashboard', '0004_rename_category_id_post_category', '2021-05-19 09:54:21.883374'),
(24, 'dashboard', '0005_alter_post_body', '2021-05-19 09:54:23.610851'),
(25, 'dashboard', '0006_post_file', '2021-05-19 09:54:24.258763'),
(26, 'dashboard', '0007_alter_post_file', '2021-05-19 09:54:27.387017'),
(27, 'dashboard', '0008_alter_post_file', '2021-05-19 09:54:28.911678'),
(28, 'dashboard', '0009_auto_20210519_1310', '2021-05-19 09:54:29.031630'),
(29, 'project', '0001_initial', '2021-05-19 09:54:31.676270'),
(30, 'project', '0002_projectdocument', '2021-05-19 09:54:35.340723'),
(31, 'sessions', '0001_initial', '2021-05-19 09:54:37.130078');

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
('wl6yyogo8eippbo2xmq71e9sn6k1lcj8', '.eJxVjEEOwiAURO_C2pDSfiC4dO8ZCDD_S9W0SWlXxrtrky50O--9eamYtrXGrfESR6izMur0u-VUHjztAPc03WZd5mldxqx3RR-06esMfl4O9--gpla_tQSiDsGHHgYUBpgeLOwcAQODjJeOEhAkZ2tMSJ4teWFvC2Vxot4f8DU4rA:1ljZh3:aVA1XJKfvYimYA_LxZ3m7b2l3c-pqvj7RMSbTCXNE6k', '2021-06-03 03:49:53.538134');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` bigint(20) NOT NULL,
  `title` varchar(225) NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  `date_upload` datetime(6) NOT NULL,
  `Project_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `title`, `file`, `date_upload`, `Project_id`) VALUES
(3, 'Master Promotion', 'documents/hcms_error.PNG', '2021-05-19 15:02:53.791410', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` bigint(20) NOT NULL,
  `title` varchar(225) NOT NULL,
  `body` longtext NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `Category_id` bigint(20) NOT NULL,
  `file` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `body`, `date_added`, `Category_id`, `file`) VALUES
(1, 'Saleable Item', '<p style=\"margin-left:48px\">Saleable item digunakan untuk menentukan harga tiap store agar masing-masing store dapat memiliki harga product yang berbeda. Step ini merupakan salah satu sarat wajib agar product dapat di display di microsite yang kita punya.</p>\r\n\r\n<p style=\"margin-left:48px\">Untuk mengakses menu ini user dapat klik sub menu <strong>Saleable item</strong> pada menu <strong>Ecommerce</strong>. Brikut adalah main page saleable item</p>\r\n\r\n<p style=\"margin-left:48px\"><img src=\"/media/uploads/2021/05/18/image-20210518170447-1.png\" style=\"height:68px; width:700px\" /></p>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px\">Pada kolom search user dapat melakukan pencarian data yang sudah di input. Untuk menambahkan data baru user dapat melakukan klik pada button <strong>Add. </strong>Berikut adalah gambar UI dari form add.</p>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Tambah data baru</strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px\"><img src=\"/media/uploads/2021/05/18/image-20210518170447-2.png\" style=\"height:596px; width:559px\" /></p>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px\">Berikut adalah Langkah yang harus diikuti untuk menambahkan data pada menu saleable item :</p>\r\n\r\n<ol style=\"list-style-type:lower-alpha\">\r\n	<li>User diharuskan memilih Brand yang ingin ditambahkan sebagai item saleable dengan cara klik cari pada kolom isian Brand</li>\r\n</ol>\r\n\r\n<p style=\"margin-left:72px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:72px\"><img src=\"/media/uploads/2021/05/18/image-20210518170447-3.png\" style=\"height:281px; width:577px\" /></p>\r\n\r\n<p style=\"margin-left:72px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:72px\">Pada list Brand user juga dapat melakukan pencarian data kemudian klik nama Company yang dituju.</p>\r\n\r\n<ol start=\"2\" style=\"list-style-type:lower-alpha\">\r\n	<li>User memilih store apa saja yang ingin di seting harga jualnya, user dapat memilih lebih dari satu store dengan cara activekan checkbox pada list store yang tersedia , kemidian klik close pada popup store, seperti gambar dibawah.</li>\r\n</ol>\r\n\r\n<p style=\"margin-left:72px\"><img src=\"/media/uploads/2021/05/18/image-20210518170447-4.png\" style=\"height:307px; width:578px\" /></p>\r\n\r\n<p style=\"margin-left:72px\">&nbsp;</p>\r\n\r\n<ol start=\"3\" style=\"list-style-type:lower-alpha\">\r\n	<li>Setelah Store dipilih, user dapat menentukan item apa yang ingin di seting harga jualnya pada kolom item, dengan cara klik button pencarian kemudian pilih item yang diinginkan dengan cara klik pada list item yang dimaksud pada popup.</li>\r\n</ol>\r\n\r\n<p style=\"margin-left:48px\"><img src=\"/media/uploads/2021/05/18/image-20210518170447-5.png\" style=\"height:260px; width:585px\" /></p>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<ol start=\"4\" style=\"list-style-type:lower-alpha\">\r\n	<li>Untuk menseting harga jual dapat di input angka tanpa grouping pada textfield isian Price. <img src=\"/media/uploads/2021/05/18/image-20210518170447-6.png\" style=\"height:55px; width:575px\" /></li>\r\n	<li>Kemudian step selanjutnya menentukan item lable, apakah ingin di setting sebagai item Delivery, Pickme atau All.</li>\r\n</ol>\r\n\r\n<p style=\"margin-left:72px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:72px\"><em>Note :</em></p>\r\n\r\n<p style=\"margin-left:72px\"><em>&nbsp;- Item delivery adalah item yang akan di jual di microsite web online shop</em></p>\r\n\r\n<ul>\r\n	<li><em>Item Pick me adalah item yang akan dijual pada delivery inhouse kita.</em></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:96px\">&nbsp;</p>\r\n\r\n<ol start=\"6\" style=\"list-style-type:lower-alpha\">\r\n	<li>Langkah terakhir user dapat menentukan kapan mulai berlaku dan berakhirnya harga jual tersebut pada inputan startdate dan end date</li>\r\n</ol>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>EDIT DATA</strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\">Untuk melakukan edit data user dapat mengklik button edit pada list di laman utama menu saleable item, user dapat merevisi data-data yang ingin dirubah sebagai contoh seperti gambar dibawah</p>\r\n\r\n<p style=\"margin-left:48px\"><img src=\"/media/uploads/2021/05/18/image-20210518170447-7.png\" style=\"height:484px; width:540px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>COPY DATA</strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:72px\">Pada menu saleable item juga disediakan fasilatas untuk mengcopy data dari satu store ke beberapa store lain yang dituju. Untuk dapat menggunakan fasilitas ini user dapat mengklik button copy pada list data di main page menu ini.</p>\r\n\r\n<p style=\"margin-left:72px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:72px\"><img src=\"/media/uploads/2021/05/18/image-20210518170447-8.png\" style=\"height:549px; width:826px\" /></p>\r\n\r\n<p style=\"margin-left:72px\">Dari fasilitas ini user dapat memilih store apa saja yang ingin menggunakan data existing dari store sekarang dengan cara klik cari lalu pilih store yang dituju pada kolom Store Duplicate, disini juga dapat menentukan Kembali harga jual dan label item yang diinginkan.</p>\r\n\r\n<p style=\"margin-left:72px\">Untuk mendelete data user dapat klik delete pada list di main page saleable item.</p>', '2021-05-18 10:06:10.142443', 1, NULL),
(5, 'Manual Book Master Product', '<p style=\"margin-left:48px\">Master Product digunakan sebagai master product kita yang akan dijual di customer,</p>\r\n\r\n<p style=\"margin-left:48px\">yang nantinya bisa digunakan untuk keperluan Wingstop atau Carl&rsquo;s Junior pada web online shop maupun delivery inhouse. Untuk menggunakan menu ini user dapat mengakses sub menu <strong>Product Item</strong> pada menu<strong> Ecommerce</strong></p>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px\"><img src=\"/media/uploads/2021/05/17/image-20210517163048-1.png\" style=\"height:187px; width:245px\" /></p>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px\">Pada tampilan utama product item user dapat melihat data-data yang sudah di entry dengan memfilter dara berdasarkan category dan sub categorynya.</p>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px\"><img src=\"/media/uploads/2021/05/17/image-20210517163048-2.png\" style=\"height:202px; width:800px\" /></p>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px\">Untuk menambahkan item baru user dapat melakukan klik <strong>add</strong> pada caption di sebelah kanan. Adapun tampilan form untuk entry data baru adalah sebagai berikut</p>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px\"><img src=\"/media/uploads/2021/05/17/image-20210517163048-3.png\" style=\"height:514px; width:797px\" /></p>\r\n\r\n<p style=\"margin-left:48px\">Alur penggunaan fasilitas ini yaitu :</p>\r\n\r\n<ol style=\"list-style-type:lower-alpha\">\r\n	<li>User memilih brand apa yang akan di inputkan item baru dengan cara klik search pada company name</li>\r\n	<li>Item name dan Item Desc dapat diisi sebagai keterangan nama product beserta deskripsinya yang ingin dijual.</li>\r\n	<li>Kemudian menentukan category dan sub category yang sesuai dengan product tersebut dengan cara klik search pada kolom tersebut.</li>\r\n	<li>User dapat menentukan apakah item tersebut langsung active atau inactive, item active yang dimaksud adalah item akan langsung dijual di microsite yang kita miliki.</li>\r\n	<li>User dapat menentukan order number berapa yang akan di display di web online shop wingstop dan carl&rsquo;s junior, untuk melihat order number existing user dapat melihatnya di list product atau tampilan utama saat user membuka menu ini, order number ini menentukan urutan display pada web online shop yang &nbsp;kita miliki.</li>\r\n	<li>Picture digunakan untuk mengupload gambar item yang akan di display di web online shop.</li>\r\n</ol>\r\n\r\n<p style=\"margin-left:72px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:72px\">Berikut contoh pengisian untuk form ini</p>\r\n\r\n<p style=\"margin-left:72px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:72px\"><img src=\"/media/uploads/2021/05/17/image-20210517163048-4.png\" style=\"height:459px; width:831px\" /></p>\r\n\r\n<p style=\"margin-left:72px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px\"><br />\r\nUntuk melakukan <strong>edit dan delete data</strong> apabila ada kesalahan input, user dapat kembali ke halaman awal di menu ini kemudian klik edit atau delete yang ada pada list.</p>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px\"><img src=\"/media/uploads/2021/05/17/image-20210517163048-5.png\" style=\"height:135px; width:344px\" /> &nbsp;</p>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px\">Berikut ini adalah display dari form edit, sedangkan cara penggunaanya sama dengan form add pada pembahasan sebelumnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"/media/uploads/2021/05/17/image-20210517163048-6.png\" style=\"height:529px; width:831px\" /></p>', '2021-05-17 09:31:10.347715', 1, NULL),
(7, 'Master Promotion', '<p style=\"margin-left:48px\">Master promotion digunakan untuk menseting harga jual existing menjadi harga jual promosi dan pada microsite akan menggunakan harga promosi jika masih berlaku periode promosi yang telah diinput. Untuk dapat menggunakan fasititas ini user dapat klik sub menu <strong>master promotion pada menu ecommerce</strong>. Berikut adalah tampilah utama menu ini</p>\r\n\r\n<p style=\"margin-left:48px\"><img src=\"/media/uploads/2021/05/18/image-20210518173329-1.png\" style=\"height:203px; width:700px\" /></p>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px\">Untuk menambahkan data baru sebagai item promosi dapat dilakukan dengan cara klik add disebelah caption.</p>\r\n\r\n<ul>\r\n	<li><strong>Add Data Baru</strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><img src=\"/media/uploads/2021/05/18/image-20210518173329-2.png\" style=\"height:535px; width:551px\" /></p>\r\n\r\n<p style=\"margin-left:48px\">Berikut adalah step yang harus diikuti dalam pengisian master promosi.</p>\r\n\r\n<ol style=\"list-style-type:lower-alpha\">\r\n	<li>Memilih Brand yang akan di seting harga promosinya dengan cara klik cari pada pencarian Brand.</li>\r\n	<li>Tentukan store apa yang akan di seting harga promosinya dengan cara klik cari pda store promotion</li>\r\n	<li>Memilih item apa yang ingin diseting sebagai item promosi pada pilihan item, kemudian klik cari</li>\r\n	<li>Input promotion price tanpa grouping seperti contoh diatas, kemudian&nbsp; isi promotion description dan masa berlaku promosi pada pilihan start date dan end date.</li>\r\n</ol>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;User juga dapat merevisi dan mendelete data apabila ada suatu kesalahan input, dengan cara klik edit atau delete pada button di list main page menu ini.</p>', '2021-05-18 10:33:40.547836', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` bigint(20) NOT NULL,
  `title` varchar(225) NOT NULL,
  `progress` int(11) NOT NULL,
  `date_updated` datetime(6) NOT NULL,
  `Category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `title`, `progress`, `date_updated`, `Category_id`) VALUES
(1, 'Website Wingstop', 100, '2021-05-19 08:16:57.495939', 1),
(2, 'Customer Tracking', 100, '2021-05-19 08:39:35.286262', 1);

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
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_Project_id_b70d2e61_fk_project_id` (`Project_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_Category_id_c39266cf_fk_category_id` (`Category_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_Category_id_f52d6e1e_fk_category_id` (`Category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- Constraints for table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `document_Project_id_b70d2e61_fk_project_id` FOREIGN KEY (`Project_id`) REFERENCES `project` (`id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_Category_id_f52d6e1e_fk_category_id` FOREIGN KEY (`Category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
