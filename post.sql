-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2021 at 09:09 AM
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
(7, 'Master Promotion', '<p style=\"margin-left:48px\">Master promotion digunakan untuk menseting harga jual existing menjadi harga jual promosi dan pada microsite akan menggunakan harga promosi jika masih berlaku periode promosi yang telah diinput. Untuk dapat menggunakan fasititas ini user dapat klik sub menu <strong>master promotion pada menu ecommerce</strong>. Berikut adalah tampilah utama menu ini</p>\r\n\r\n<p style=\"margin-left:48px\"><img src=\"/media/uploads/2021/05/18/image-20210518173329-1.png\" style=\"height:203px; width:700px\" /></p>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px\">Untuk menambahkan data baru sebagai item promosi dapat dilakukan dengan cara klik add disebelah caption.</p>\r\n\r\n<ul>\r\n	<li><strong>Add Data Baru</strong></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:48px\"><img src=\"/media/uploads/2021/05/18/image-20210518173329-2.png\" style=\"height:535px; width:551px\" /></p>\r\n\r\n<p style=\"margin-left:48px\">Berikut adalah step yang harus diikuti dalam pengisian master promosi.</p>\r\n\r\n<ol style=\"list-style-type:lower-alpha\">\r\n	<li>Memilih Brand yang akan di seting harga promosinya dengan cara klik cari pada pencarian Brand.</li>\r\n	<li>Tentukan store apa yang akan di seting harga promosinya dengan cara klik cari pda store promotion</li>\r\n	<li>Memilih item apa yang ingin diseting sebagai item promosi pada pilihan item, kemudian klik cari</li>\r\n	<li>Input promotion price tanpa grouping seperti contoh diatas, kemudian&nbsp; isi promotion description dan masa berlaku promosi pada pilihan start date dan end date.</li>\r\n</ol>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:48px\">&nbsp;User juga dapat merevisi dan mendelete data apabila ada suatu kesalahan input, dengan cara klik edit atau delete pada button di list main page menu ini.</p>', '2021-05-18 10:33:40.547836', 1, ''),
(9, 'Delivery Order CS', '<p>Delivery order CS digunakan untuk mengentry pesanan customer via cs melalui whatsapp order, menu ini dapat di akses di mogul Eccomerce kemudian pilih sub menu Delivery Order Cs.</p>\r\n\r\n<p>Berikut Detail Penggunaan Menu ini :</p>\r\n\r\n<p>1. Input Data Customer dan pilih Store yang dituju, kemudian klik nexk</p>\r\n\r\n<p><img src=\"/media/uploads/2021/05/20/image.png\" style=\"height:1023px; width:800px\" /></p>\r\n\r\n<p>2.&nbsp; Klik Add pada Order untuk menambahkan pesanan, kemudian klik next</p>\r\n\r\n<p><img src=\"/media/uploads/2021/05/20/image_ZPQPL8V.png\" style=\"height:468px; width:800px\" /></p>\r\n\r\n<p>3.&nbsp; Customer service dapat menambahkan remark jika dibutuhkan, kemudian klik order</p>\r\n\r\n<p><img src=\"/media/uploads/2021/05/20/image_r4PxLU0.png\" style=\"height:538px; width:800px\" /></p>', '2021-05-20 06:38:47.668922', 1, ''),
(10, 'Setting Jam Shifting', '<p>HR dapat melakukan custom configurasi untuk menentukan jam shofting karyawan sebagai acuan jam masuk dan jam pulang. Fasilitas ini dapat di akses pada menu <strong>HR</strong> kemudian pilih menu <strong>Attendance Setting.</strong></p>\r\n\r\n<p><img src=\"/media/uploads/2021/05/20/image_h0bH4DK.png\" style=\"height:106px; width:282px\" />&nbsp;</p>\r\n\r\n<p>Lending page utama menu ini adalah seperti gambar berikut&nbsp;</p>\r\n\r\n<p><img src=\"/media/uploads/2021/05/20/image_0ksBnlg.png\" style=\"height:358px; width:1065px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Untuk dapat merubaha jam shifting HR dapat klik tombol edit dan klik Delete untuk menghapus data jika ada kesalahan dan perlu dihapus.</p>\r\n\r\n<p>HR juga dapat menambahkan data shifting baru dengan klik Add pada pojok kanan, berikut adalah laman Add Page yang akan muncul</p>\r\n\r\n<p><img src=\"/media/uploads/2021/05/20/image_Y7UaguM.png\" style=\"height:310px; width:714px\" /></p>\r\n\r\n<p>&nbsp;</p>', '2021-05-20 06:48:14.653494', 4, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_Category_id_c39266cf_fk_category_id` (`Category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
