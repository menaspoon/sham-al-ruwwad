-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 10, 2023 at 12:27 PM
-- Server version: 5.7.39-42-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dboejl9gjpg7cz`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `picture` varchar(255) CHARACTER SET utf32 DEFAULT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `about_ar` text,
  `about_en` text,
  `vision_ar` text,
  `vision_en` text,
  `mission_ar` text,
  `mission_en` text,
  `manage_ar` text,
  `manage_en` text,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `picture`, `title_ar`, `title_en`, `about_ar`, `about_en`, `vision_ar`, `vision_en`, `mission_ar`, `mission_en`, `manage_ar`, `manage_en`, `updated_at`) VALUES
(1, NULL, 'لسنا وحدنا.', 'WEREN\'T ALONE.', 'بغض النظر عن الطريقه  التي كنت تستخدمها خلال رحلتك فى البحث عن منزل احلامك او بيع عقاراك نحن هنا لتمكينك من تحقيق ذلك وجعل كل الأشياء بسيطة وفعالة وممتعة. تاسست سهم الرواد العقاريه عام 2007 بقياده الخبير العقارى الاستاذ | عبدالرحمن الجابري ليقود مجموعه من المفكرين والمسوقيين فى المجال العقارى السكنى والتجارى لأيجاد الحلول لأكثر التحديات العقارية تعقيدًا.', 'No matter what method you used during your journey searching for your dream home or selling your property we are here to enable you to achieve that and make all things simple, efficient and fun. Arrowad Real Estate was established in 2007 under the leadership of the real estate expert, Mr. | Abdul Rahman Al Jabri to lead a group of thinkers and marketers in the field of residential and commercial real estate to find solutions to the most complex real estate challenges.', 'من خلال منصتنا التسويقية ذات المستوى العالمي والعلامة التجارية الرائدة في مجال العقارات الفاخرة نسعى لتقديم خدمات عقارية سكنيه وتجاريه للمشترين والبائعين في جميع أنحاء العالم.', 'Through our world-class marketing platform and a leading brand in luxury real estate, we strive to provide residential and commercial real estate services to buyers and sellers all over the world.', 'بصفتنا مؤسسه رائده في التسويق العقاري ، فإننا نقوم بتوفير الوقت لعملائنا من خلال عقلية تعتمد على الحلول المبتكرة لـ توصيل البائعين والمشتريين الى هدفهم بسهوله .', 'As a leading organization in real estate marketing, we save time for our clients through a mindset that depends on innovative solutions to deliver sellers and buyers to their goal easily.', 'نحن ملتزمون بإعطائك أفضل تجربة للعثورعلى  افضل الخدمات العقاريه من خلال فريقنا المحترف والمتخصص فى المجال العقارى  لجعل رحلتك فى البيع والشراء سلسة وممتعه .', 'We are committed to giving you the best experience to find the best real estate services through our professional team specialized in the real estate field to make your journey in buying and selling smooth and enjoyable.', '2022-09-27 17:31:52');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name_ar`, `name_en`) VALUES
(1, 'للايجار', NULL),
(2, 'للبيع', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chat_ad`
--

CREATE TABLE `chat_ad` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `responsible` int(11) DEFAULT NULL,
  `ad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_ad`
--

INSERT INTO `chat_ad` (`id`, `user`, `responsible`, `ad`) VALUES
(5, 4, 4, 56),
(6, 5, 4, 56),
(7, 6, 6, 58),
(8, 4, 6, 58),
(9, 7, 6, 61),
(10, 7, 6, 67),
(11, 7, 4, 63),
(12, 4, 8, 76),
(13, 4, 4, 90),
(14, 7, 8, 85),
(15, NULL, NULL, NULL),
(16, 30, 18, 307);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `country` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name_ar`, `name_en`, `country`) VALUES
(1, 'الرياض', NULL, NULL),
(2, 'جده', NULL, NULL),
(3, 'المدينه المنوره', NULL, NULL),
(4, 'تبوك', NULL, NULL),
(5, 'الدمام', NULL, NULL),
(6, 'الاحساء', NULL, NULL),
(7, 'القطيف', NULL, NULL),
(8, 'خميس مشيط', NULL, NULL),
(9, 'المظيلف', NULL, NULL),
(10, 'الهفوف', NULL, NULL),
(11, 'المبرز', NULL, NULL),
(12, 'الطائف', NULL, NULL),
(13, 'نجران', NULL, NULL),
(14, 'حفر الباطن', NULL, NULL),
(15, 'الجبيل', NULL, NULL),
(16, 'ضباء', NULL, NULL),
(17, 'الخرج', '', NULL),
(18, 'الثقبة', NULL, NULL),
(19, 'ينبع البحر', NULL, NULL),
(20, 'الخبر', NULL, NULL),
(21, 'عرعر', NULL, NULL),
(22, 'الحوية', NULL, NULL),
(23, 'عنيزه', NULL, NULL),
(24, 'سكاكا', NULL, NULL),
(25, 'القريات', NULL, NULL),
(26, 'الظهران', NULL, NULL),
(27, 'الباحة', NULL, NULL),
(28, 'الزلفي', NULL, NULL),
(29, 'الرس', NULL, NULL),
(30, 'وادى الدواسر', NULL, NULL),
(31, 'بيشه', NULL, NULL),
(32, 'سيهات', NULL, NULL),
(33, 'شروره', NULL, NULL),
(34, 'بحره', NULL, NULL),
(35, 'تاروت', NULL, NULL),
(36, 'الدوادمى', NULL, NULL),
(37, 'صبياء', NULL, NULL),
(38, 'بيش', NULL, NULL),
(39, 'احد رفيدة', NULL, NULL),
(40, 'الفريش', NULL, NULL),
(41, 'بارق', NULL, NULL),
(42, 'الحوطه', NULL, NULL),
(43, 'رابغ', NULL, NULL),
(44, 'مكة المكرمة', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `address_ar` varchar(255) DEFAULT NULL,
  `address_en` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `email1` varchar(255) DEFAULT NULL,
  `email2` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `snap` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `address_ar`, `address_en`, `phone1`, `phone2`, `email1`, `email2`, `facebook`, `google`, `linkedin`, `instagram`, `twitter`, `whatsapp`, `snap`, `updated_at`) VALUES
(1, 'الزمرد، طريق الملك سعود، ابحر الشمالية، المملكة العربية السعودية', 'الزمرد، طريق الملك سعود، ابحر الشمالية، المملكة العربية السعودية', '9665057789666+', '966504350074+', 'sahm.alruwwad@gmail.com', NULL, 'https://www.facebook.com/sahm.alruwwad.9', NULL, NULL, 'https://www.instagram.com/sahm.alruwwad', 'https://twitter.com/sahm_alruwwad', 'https://iwtsp.com/966507789666', NULL, '2022-09-27 19:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name_ar`, `name_en`) VALUES
(1, 'ريال سعودي', 'SR'),
(2, 'جنية مصري', 'Egyptian Pound'),
(3, 'درهم امارتي', 'UAE'),
(4, 'دينار كويتي', 'Kuwaiti Dinar'),
(5, 'دينار أردني', 'Jordanian dinar'),
(6, 'دينار بحريني', 'Bahraini dinar'),
(7, 'دينار ليبي', 'Ld'),
(8, 'دولار امريكي', 'American dollar');

-- --------------------------------------------------------

--
-- Table structure for table `face_estates`
--

CREATE TABLE `face_estates` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `face_estates`
--

INSERT INTO `face_estates` (`id`, `name_ar`, `name_en`) VALUES
(1, 'شمال', 'north'),
(2, 'شرق', 'east'),
(3, 'غرب', 'West'),
(4, 'جنوب', 'South'),
(5, 'شمالي شرقي', 'northeast'),
(6, 'جنوبي شرقي', 'southeast'),
(7, 'جنوب غربي', 'Southwest'),
(8, 'شمالي غربي', 'northwest'),
(9, '3 شوارع', NULL),
(10, '4 شوارع', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `offer` int(11) DEFAULT NULL,
  `extintion` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `photo`, `offer`, `extintion`) VALUES
(3, '1ff80e7a81cbdeadf1db764d9ff1be9a.jpg', 6, 'jpg'),
(4, '35701de1e1b4a8993b3d21f85f5f619f.jpg', 6, 'jpg'),
(5, '6f39034e3653cc55b0473eeb39093297.jpeg', 47, 'jpeg'),
(6, 'f9f5191794f271e7bcd7b31a176db7c8.jpg', 55, 'jpg'),
(7, 'd9a2cd34af0ab5ca9342f4c1d13fde52.jpeg', 56, 'jpeg'),
(8, 'b2b7e69bf699e9d0ee77ec58db15f70b.jpg', 3, 'jpg'),
(9, 'b220844b37bc7ce70e0f4dc06306bdf8.webp', 59, 'webp'),
(10, '2482fdb9e8fcfa59391315cb3aa14f68.JPG', 60, 'jpg'),
(12, '25bb9c5cd58dd32e0a83c98465df700a.png', 62, 'png'),
(13, '8305d7266d77ec0b15b7e5b26bb2c627.png', 62, 'png'),
(14, '61192fb4c35a6d0c23040d4872d4121e.png', 62, 'png'),
(15, 'c2d74f3423224f4ed3cc78cd9645a607.png', 62, 'png'),
(16, '029acc34da7947327a360802466ad851.png', 62, 'png'),
(17, '56fd67cff0e7eddfaa796da47548bab6.png', 62, 'png'),
(18, '11bb83eb32a32bba83e7ab4225b5bbe2.png', 62, 'png'),
(19, 'fa1e36a153ac93a3201baab4ae6e92be.png', 62, 'png'),
(20, '826d15b43df9e3b57a27c583ce7f97e1.jpg', 55, 'jpg'),
(21, '326add35848548612708740ea4fb11b5.png', 56, 'png'),
(22, '01349c285e1639162c9e389120f90ddb.JPG', 57, 'jpg'),
(23, '4f376befbe788d66a13ebade89a62d83.JPG', 58, 'jpg'),
(24, '0d0a19e42ac233ee528b4f3a433de5a2.JPG', 59, 'jpg'),
(25, '25cde5046edaa1ecdd587421ad74a707.jpg', 60, 'jpg'),
(27, 'e9151e54ef8af9237a86f6b0ca9e8d42.jpg', 62, 'jpg'),
(28, 'cff4695cc5ec8de5aaf059da51eeb134.JPG', 63, 'jpg'),
(29, 'd51e85c96682e30e3f7a2c0b923d102c.JPG', 63, 'jpg'),
(30, '602b7aabc451e84fe5460ff92cf0ddca.jpg', 64, 'jpg'),
(31, 'e0aa1b4180fb1a09fd3add135d342821.jpg', 65, 'jpg'),
(32, '3d04252893ff96876f6b19cf803c9350.jpeg', 66, 'jpeg'),
(33, 'a4f34404aec5bc64bbe466121e76205e.jpg', 67, 'jpg'),
(34, '1f81efcfca09df6054fd67205d4a0f65.PNG', 68, 'png'),
(35, '89a8d1ccd94e297782b821fef4390225.PNG', 69, 'png'),
(36, 'd71fd8ef56940f8d1bb9000434a4c578.jpg', 70, 'jpg'),
(37, '3b11627456f7090143081c85a5377935.PNG', 71, 'png'),
(42, 'a4a3994c1857ab46495a4670a2fedc69.jpg', 74, 'jpg'),
(43, 'e81cbcc5ca891408edef293711987da5.jpeg', 75, 'jpeg'),
(44, 'e5923cbf6d433bcc9d94fb0127ecc4d5.jpeg', 75, 'jpeg'),
(45, 'b8cafd4130290e246350119587a6a536.jpeg', 75, 'jpeg'),
(46, '7f220ee64ca02cbb2b59b9c543258af9.jpeg', 75, 'jpeg'),
(47, '5257cbb59ba5839f8c27cea8f7050ff1.jpeg', 75, 'jpeg'),
(49, '8d9b8cf19b7884604547b29c9c528a38.jpeg', 76, 'jpeg'),
(50, '8d9b8cf19b7884604547b29c9c528a38.jpeg', 76, 'jpeg'),
(51, '4afac29a58377718370b12838ecd94bb.jpeg', 76, 'jpeg'),
(52, 'e68ccd181f8353fde0dda65591641958.jpeg', 76, 'jpeg'),
(53, '3d1a3d65a1897c65d33407866967c9f5.jpeg', 76, 'jpeg'),
(54, '879663773f11ac64036c10b0596f23db.jpeg', 77, 'jpeg'),
(55, '38c11e4192c8d86cbe01dc94531262c3.jpeg', 78, 'jpeg'),
(56, '86dac3aec6a60e7fe3106bd0ef8ccb90.jpeg', 79, 'jpeg'),
(57, '91b6730dd2323cea0c32bfe631279cce.jpeg', 79, 'jpeg'),
(58, '6af6eadbc24e29111ac1b82c67430632.jpeg', 79, 'jpeg'),
(59, 'eea6a16b6b90f980a709c9afbb26c7d3.jpeg', 79, 'jpeg'),
(60, '365e6e5219faba5c104caf78e6087d36.jpeg', 79, 'jpeg'),
(61, '6288cc4ed3eb048624448936c24fcb4e.jpeg', 79, 'jpeg'),
(62, 'a6a1ce2a6256385052ca35662120b308.jpeg', 79, 'jpeg'),
(63, 'e6754e43ada9f5aa55d458fa891aed19.jpeg', 80, 'jpeg'),
(67, '7c9afdae914965eaa28a8295b338f1b2.jpeg', 81, 'jpeg'),
(68, 'a9bb9bdacd6283dfd4045050f79d6840.jpeg', 82, 'jpeg'),
(69, '112c8daecf3a5506fcdc79d2e6ec50bb.MOV', 73, 'MOV'),
(75, 'b2f43f4b8175d9c8d1d032e07f6c8e7d.jpg', 88, 'jpg'),
(76, '26777486f869ad29edc51c9e434e5d40.jpg', 88, 'jpg'),
(77, '29519c179744ce2791a847d0e791d0d2.jpg', 88, 'jpg'),
(78, 'b3a6435fd965bc0469d7ca92c6610c48.jpg', 88, 'jpg'),
(79, '26777486f869ad29edc51c9e434e5d40.jpg', 88, 'jpg'),
(80, 'd1e5d99525c84a81a641bc26954471d6.jpg', 89, 'jpg'),
(81, '0bc407752649a6b41c65e1bacd06e8df.jpg', 89, 'jpg'),
(82, 'ffb5581da3039c10029604d971e7636f.jpg', 89, 'jpg'),
(83, '56ce0d684853de02c32b836b03a3b4b2.jpg', 89, 'jpg'),
(84, '32d08674b9c5075774a74ac5ee41270a.jpg', 89, 'jpg'),
(85, 'eade0b8e8dcf1ed3a00be30fe419e329.jpg', 89, 'jpg'),
(86, '68ed442494ac907435769130d74f9e67.jpg', 89, 'jpg'),
(87, 'd0d7afbe2e7f6dfc927abcc383ee51f6.jpg', 89, 'jpg'),
(88, '29dbac5674bd640640ad43890c455550.jpg', 89, 'jpg'),
(89, '8d4b6cf364274b362f5006870d889630.jpg', 89, 'jpg'),
(90, 'cf868dc8ae0e949f24c67c39b4d52c6c.jpg', 89, 'jpg'),
(91, 'd586f1446bb7e34e55327ac785874c8c.jpg', 89, 'jpg'),
(92, 'd986f26528f1984cfefc4db6d534a063.jpg', 90, 'jpg'),
(93, '3aa3ccc4073536ae1cd73b5d82980bf6.mp4', 91, 'mpg'),
(94, '8bc12df583279f8d2e4efbee66535cff.png', 91, 'jpeg'),
(95, '17c018f4cad747537eb9775d519af06f.JPG', 92, 'jpeg'),
(96, '83874676c7be7485e003ff885e1506b4.PNG', 93, 'PNG'),
(97, '0810929534b928e9b11591492700885d.jpg', 94, 'jpg'),
(98, '3b0420a75e0f30805481d15880d1c67f.mp4', 95, 'mp4'),
(100, '4c4a695544333b7074842ce6a1920a31.png', 90, 'png'),
(101, '58334bf4a24605218bc1681116e5a4d2.jpg', 91, 'jpg'),
(102, 'ac1a486487e9ae5d82aa95196f67fb5b.png', 200, 'jpeg'),
(105, '4b82c63143e69b03cd9e1fdc82ec45bf.jpeg', 201, 'jpeg'),
(106, '6c0af2a11a4178af7b3bc4161a09b7ce.jpeg', 201, 'jpeg'),
(107, '0f7dbb3521d2bb43e8c899b75c86070e.jpeg', 201, 'jpeg'),
(108, 'c10841bbb53c8646340a4468994172e6.jpeg', 201, 'jpeg'),
(109, '53a61540b6f5a3e3f486509ed558fa39.jpeg', 201, 'jpeg'),
(110, 'f0a7ac00d89f37ee9e428291ea5c7d3c.jpeg', 201, 'jpeg'),
(111, '7a746c84134dd351c6f6fce01cdb4d94.jpeg', 201, 'jpeg'),
(112, '19e31a2d3308a41134a43f8da0386c68.jpeg', 201, 'jpeg'),
(118, '55e1d4aaf929a66ba6cab78eff8df262.jpeg', 203, 'jpeg'),
(119, 'a32e40216186b5b98e9b9765c1247685.jpeg', 203, 'jpeg'),
(120, 'eaf00521853e8313dbe17c3c4ab0ff2e.jpeg', 203, 'jpeg'),
(121, '19af85722e60ba116dc93f03265ba04b.jpeg', 203, 'jpeg'),
(122, '1fed5b6f15250500aee4530d5a2fa91a.jpeg', 203, 'jpeg'),
(123, '5a3ebfb8cba6b50f8a881e53ed69b58c.jpeg', 203, 'jpeg'),
(124, 'ba33521826cee066e7ba07a89e9ed6b5.jpeg', 203, 'jpeg'),
(125, 'd970eced00ab20fccb1fa6f07ad3c643.jpeg', 203, 'jpeg'),
(126, 'e26b74a86ff47cf1acd9f8d734185bb7.JPG', 204, 'JPG'),
(127, '0ddb37394facba8b68141c8b80f9a850.JPG', 205, 'JPG'),
(128, '3a1f7d574db3f1f487d2a16fde93d843.jpeg', 206, 'jpeg'),
(129, 'f1b7be0464468000932efe01a3e8cef7.jpeg', 207, 'jpeg'),
(130, '443bfed9c41a39d7fe8337f1a587577a.jpeg', 207, 'jpeg'),
(131, '30172db7346589b64bc897e0dac65dab.jpeg', 207, 'jpeg'),
(132, '3ef3593e3787591384671d8b345463fb.jpeg', 207, 'jpeg'),
(133, 'aa41c76709327aa429b9a18f85657abd.jpeg', 207, 'jpeg'),
(134, 'fc1f5d4f1617ba19310b0c53edbf7fec.jpeg', 207, 'jpeg'),
(135, 'd3bfa52d0f2dc39729d264b540ca447b.jpeg', 207, 'jpeg'),
(136, 'b63261af97f0eba45529e46e9620f31c.jpeg', 207, 'jpeg'),
(137, 'a09e8f93648806a5ae0f4a2a1c0bacdf.jpeg', 207, 'jpeg'),
(138, '1c13d8a2c6b6ad2d45cba21d11fd82d4.jpeg', 207, 'jpeg'),
(139, '683f015e54c9252a90e9e6f362c969ad.jpeg', 207, 'jpeg'),
(140, 'cb6be726ec329f53752f1be655f78c4d.jpeg', 207, 'jpeg'),
(141, 'b63261af97f0eba45529e46e9620f31c.jpeg', 207, 'jpeg'),
(142, '6db50a61d2e30a8354ada142cbf25837.jpeg', 207, 'jpeg'),
(143, '18f18f332d6739c9e8ea82f7856b7d75.jpeg', 207, 'jpeg'),
(144, '3a1d22ae0c6dd7424a5adb448c60e70f.jpeg', 207, 'jpeg'),
(145, '3ef3593e3787591384671d8b345463fb.jpeg', 207, 'jpeg'),
(146, '78959b4724aa70ffa280be319c8f24c1.jpeg', 207, 'jpeg'),
(147, 'fc1f5d4f1617ba19310b0c53edbf7fec.jpeg', 207, 'jpeg'),
(148, '753ac07d6a7380770ee531e105874e82.jpeg', 207, 'jpeg'),
(149, '424581671e80387f116ed2ea4fb3c54c.jpeg', 207, 'jpeg'),
(150, 'cdab89214b51c58ac1df9d02b9d82cfd.jpeg', 207, 'jpeg'),
(151, '4a7a6b9ed0346d5187c1633afe9a0377.jpeg', 207, 'jpeg'),
(152, '494f7883c6d0e1bc0f752832bebaabb9.jpeg', 208, 'jpeg'),
(153, 'bfaad3e051f1db546ae3f93f7d004549.mp4', 208, 'mp4'),
(154, 'efb5a97f159993a3eef7c274473a83c1.jpeg', 209, 'jpeg'),
(155, 'f44816a3c945bcb3a2dd2a4391e87bdb.jpeg', 209, 'jpeg'),
(156, '78119106a87e684e1198f8a4612cb3e9.jpeg', 209, 'jpeg'),
(157, 'eaaaad0052a35204aa5dcce392041fa1.jpeg', 209, 'jpeg'),
(158, 'cc13e7d448bb52a5b13e0d473d6e8fe0.jpeg', 209, 'jpeg'),
(159, '23b29b545e8c6d7afc101660a3065b18.jpeg', 209, 'jpeg'),
(160, '01fbceae208766835c7332dd3d2ed909.jpeg', 209, 'jpeg'),
(161, '09634945249c96ec8a2fd199345fa6e9.jpeg', 209, 'jpeg'),
(162, '667c16510851b417d0b6b5ee2975a8df.jpeg', 209, 'jpeg'),
(163, 'b5d50dda85af54cd1a4c57ac692a5349.jpeg', 209, 'jpeg'),
(164, 'cc13e7d448bb52a5b13e0d473d6e8fe0.jpeg', 209, 'jpeg'),
(165, '30c1cdc23b6623df25d79c47495a28bd.JPG', 87, 'JPG'),
(166, '99e97e61919c5afd4a82131f0b02a556.JPG', 87, 'JPG'),
(169, '9d5100ab2c57d5f4f5ac9e46ca5a139b.png', 86, 'png'),
(170, '9b72480e6485cad01724da9591865309.JPG', 85, 'JPG'),
(171, '87556f6c3976851f65992dc276722622.JPG', 85, 'JPG'),
(172, '50ae329307296022ff8236ddec8d0118.JPG', 85, 'JPG'),
(173, '9f44d30d4ccadb509f797ff1882d0dd9.JPG', 85, 'JPG'),
(174, 'faeb6845a23c728a3e743d3e39eaf9f8.JPG', 87, 'JPG'),
(175, '4da067ac707a4eff1b19e4d093360dd0.JPG', 85, 'JPG'),
(176, '3d369d64e4101877e6f1e2af32e24344.JPG', 85, 'JPG'),
(177, 'a45c60e58a49788195c999f349f254ad.JPG', 85, 'JPG'),
(178, 'adc3a5e46847efc749f862fc2b769313.JPG', 85, 'JPG'),
(179, 'a25b8704e470ca01f026064804e3d4de.JPG', 84, 'JPG'),
(180, '7130b7dde042c8034540590820e79bb1.JPG', 84, 'JPG'),
(181, '428f2cf763bdb8c17230b0d24f967791.JPG', 84, 'JPG'),
(182, 'c83a1471696e40cd62ee043e9c8ffd98.JPG', 84, 'JPG'),
(183, '1e6ee4fda2455ddee55b8b8a91025f2e.JPG', 83, 'JPG'),
(184, 'b1f4dfbb10485614f021187d6c85c48d.JPG', 83, 'JPG'),
(185, '296516936c3bb2f1fc9406fc1eb1184d.JPG', 83, 'JPG'),
(186, '0a942f31c337d3d42be50e29fa6ec461.jpeg', 210, 'jpeg'),
(188, 'a605644f1c214d54771ccc3ae5774595.jpeg', 211, 'jpeg'),
(189, '2cfff2499a746d242aac23b41ff52aee.jpeg', 211, 'jpeg'),
(190, 'a605644f1c214d54771ccc3ae5774595.jpeg', 211, 'jpeg'),
(191, '78bbf977f06a3009549904a422901098.jpeg', 211, 'jpeg'),
(192, 'e18315bcb609345cbd0174aef7d2999a.mp4', 211, 'mp4'),
(193, 'cc67ee1236a8a686feca486e7fc1df38.jpeg', 212, 'jpeg'),
(194, 'dff520f041e4e1dbfba394442b60d077.jpeg', 212, 'jpeg'),
(195, '7675eb9f7d6c27a1c146b45f12d0bfb4.jpeg', 212, 'jpeg'),
(196, 'd9c86704df9efd099f65e97591be3035.jpeg', 212, 'jpeg'),
(197, 'dff520f041e4e1dbfba394442b60d077.jpeg', 212, 'jpeg'),
(198, 'ec9d2658fd10d18dcb55e955be8cac63.jpeg', 212, 'jpeg'),
(199, 'c1b54df0108c973e4e12b0be3a37a581.jpeg', 212, 'jpeg'),
(200, 'c424b7b1941aec7c292294502a3089ff.jpeg', 213, 'jpeg'),
(201, 'e887d2e2a44e8d03a160b564371531dc.mp4', 213, 'mp4'),
(202, 'ab5aed10cb4630e907ef97e2d3f3d998.MOV', 214, 'MOV'),
(203, 'dbbbffd2773c10ef90364764513975ab.png', 215, 'png'),
(204, 'd13d3ded30156543ec07dd19d0b1a8aa.jpg', 216, 'jpg'),
(205, 'eb97facab55690b8d8ceb51d39c6a0dc.jpeg', 217, 'jpeg'),
(206, 'fde49d255fa688eac574040f84c1c16f.jpeg', 217, 'jpeg'),
(207, 'f74bdc11c8e762cc17b9b5f9f98855f5.jpeg', 217, 'jpeg'),
(208, '9bc1a0757cc9d9568a2ea71735540adf.jpeg', 218, 'jpeg'),
(209, 'c97ea6de678fe7ec91b9c9c55515cd47.jpeg', 219, 'jpeg'),
(210, '77276c1aa6ea2b96055259411abd75a6.jpeg', 220, 'jpeg'),
(211, '90f3494bea7d04e1ba33f4f84c12fc66.jpeg', 220, 'jpeg'),
(212, 'c0940d8c1cbfd63f2081f9e8e2cf7bee.jpeg', 221, 'jpeg'),
(213, '63eb8504690513d72921e511dd077f47.jpeg', 221, 'jpeg'),
(214, '7961c35f36e2f9926ad67cef39bca885.jpeg', 221, 'jpeg'),
(215, '2cba2cb93e8d3c5778ab491af337b4ce.jpeg', 221, 'jpeg'),
(216, '54362b6f0bd9bec025529f0a070de049.jpeg', 221, 'jpeg'),
(217, 'ce9405a557c8665e61b2361b8949ebb6.jpeg', 221, 'jpeg'),
(218, '7154d8b98e16a41a4ef53bd245eab21b.jpeg', 221, 'jpeg'),
(219, '5c4b1fbd8b4ae0c305dbeeec55506adc.jpeg', 221, 'jpeg'),
(220, '76e416c433f4d7bb2e7719f51da9f237.jpeg', 221, 'jpeg'),
(221, 'fa3b5e973fb2289d6e48fecbe7ee175f.jpeg', 221, 'jpeg'),
(222, '54362b6f0bd9bec025529f0a070de049.jpeg', 221, 'jpeg'),
(223, 'ff0ebaf3029e0f2838574f3dbd2452b5.jpeg', 222, 'jpeg'),
(224, 'd8a8ee41ebbccaf4c2c9db7391793f63.jpeg', 223, 'jpeg'),
(225, '5dbf5a14bc508d25710d1d21e4d752d1.jpeg', 223, 'jpeg'),
(226, '6425f1fea69cf4f54109fbeefbb1490f.jpeg', 223, 'jpeg'),
(227, '655f3bbf42a763180c7d1c00e27d1a1a.jpeg', 223, 'jpeg'),
(228, '72b1d712a926d73e498d97c6d39d5a98.jpeg', 223, 'jpeg'),
(229, '88a2575e1db11807fd4c8cae6990c4e4.jpeg', 223, 'jpeg'),
(230, '52e17e9c8ff9d83be922c173494e71cd.jpeg', 223, 'jpeg'),
(231, '4f292b7f4071b0814d5c397372371f45.jpeg', 223, 'jpeg'),
(232, 'd9d4d599d61e71df9415fd5d6e3f3c6f.jpeg', 223, 'jpeg'),
(233, '65a3a53f68620315a2268968a19c3c7d.jpeg', 223, 'jpeg'),
(234, 'f53818165fd06619de8ebea503f5de6d.jpeg', 224, 'jpeg'),
(235, 'a12846ece0097246a994e3ccb46bd981.jpeg', 224, 'jpeg'),
(236, 'e960f826a0c1bd5eeba65463f8873a12.jpeg', 224, 'jpeg'),
(237, 'e07a846a9204ea9a56d70b397987cd74.jpeg', 224, 'jpeg'),
(238, 'b4350a3d73aa2e3188521362e121f05c.jpeg', 224, 'jpeg'),
(239, 'f6031e5abf2d52417cf49649ce3e60f7.jpeg', 225, 'jpeg'),
(240, '8d65b5c548cc53c652df230660857280.jpeg', 225, 'jpeg'),
(241, '7b99d811a102cfa75b5b641b3b1a178a.jpeg', 225, 'jpeg'),
(242, 'dfecf809053ca7ed6777832f0d54233b.jpeg', 225, 'jpeg'),
(243, '6ee02aa684c73ba673e57aa650603ce1.jpeg', 225, 'jpeg'),
(244, '44f08a7f5e61b562ace1cf33dd20d66b.jpeg', 225, 'jpeg'),
(245, '9a8d9035c8a8008d4b5b63799541e439.jpeg', 225, 'jpeg'),
(246, '54a484a64b029d4428a115c92b7fc5a9.jpeg', 225, 'jpeg'),
(247, 'fafecb7ebe89b6a35b8b1491a89e95e4.jpeg', 225, 'jpeg'),
(248, 'd8307c07dcf2d65942a34a4e3de3fc2c.jpeg', 225, 'jpeg'),
(249, '18f670a0c08b696ea7b55a11528af441.jpeg', 225, 'jpeg'),
(250, 'fafecb7ebe89b6a35b8b1491a89e95e4.jpeg', 225, 'jpeg'),
(251, 'cb59753cb7b659a9f91958699fb82ebf.jpeg', 225, 'jpeg'),
(252, 'd8a914d45fa950ddbdad86549e1cdfcb.jpeg', 225, 'jpeg'),
(253, '9a8d9035c8a8008d4b5b63799541e439.jpeg', 225, 'jpeg'),
(254, 'bcc955b014724b21518caa1c97a0cad7.jpeg', 225, 'jpeg'),
(255, 'dac83dca2fb32e12f005678cfd76e6ff.jpeg', 226, 'jpeg'),
(256, '8d3309f77c3d06328a664b44aabb92dd.jpeg', 226, 'jpeg'),
(257, 'deb10b037554514c20ca8b903f278ebe.jpeg', 226, 'jpeg'),
(258, '3910d2e170b1e3bf8310a43253a43160.jpeg', 226, 'jpeg'),
(259, '8bbaba727242613d7abecb0361cda349.jpeg', 226, 'jpeg'),
(260, '8bbaba727242613d7abecb0361cda349.jpeg', 226, 'jpeg'),
(261, '74b8722a84cec4d069525bb28bfb140b.jpeg', 226, 'jpeg'),
(262, '93f938972b464fbc0da9fca2a87c7df2.jpeg', 226, 'jpeg'),
(263, 'deb10b037554514c20ca8b903f278ebe.jpeg', 226, 'jpeg'),
(264, '5537eaf86577478c4a3b80f597b54146.jpeg', 227, 'jpeg'),
(265, '8c02101c9206413bdb105a0139327658.jpeg', 228, 'jpeg'),
(266, '2ee640eb5f72c0c6c5b037ae1d95a92d.jpeg', 228, 'jpeg'),
(267, 'd0dd8cd4755d2e9f0e9f6995c151cfd7.jpeg', 228, 'jpeg'),
(268, 'a6619a9df2bc54cecf89f8a69993f0fe.jpeg', 228, 'jpeg'),
(269, 'a6619a9df2bc54cecf89f8a69993f0fe.jpeg', 228, 'jpeg'),
(270, '4e2cd7fb11524029edb2468b1a669848.jpeg', 228, 'jpeg'),
(271, 'f601b9ef82fd8f83966a677b5ef25e41.jpeg', 228, 'jpeg'),
(272, '6de33d9121f19c0438336a12be9398ca.jpeg', 228, 'jpeg'),
(273, 'a80a86b8b6d3001a2f94e538b3530207.jpeg', 228, 'jpeg'),
(274, '27dffedd1b3fe149c2ec6e85d50e7073.jpg', 229, 'jpg'),
(275, 'b26fd9b03fac4a37de724fd81dd1a845.jpeg', 230, 'jpeg'),
(276, '51a784694a1060e905a97bd6b5daa1de.JPG', 231, 'JPG'),
(277, '7cc096678594191faca81f4f75a3f83d.JPG', 231, 'JPG'),
(278, '4e497ff030314652867e93968e8bbfe6.JPG', 231, 'JPG'),
(279, '22e87d3895dd45dc5e1c42be998eb376.JPG', 231, 'JPG'),
(280, '9e0f9a029603296e8ec4bb07cd964568.JPG', 231, 'JPG'),
(281, 'b88ef8175b36e7ca3fe81831128a62d9.JPG', 231, 'JPG'),
(282, 'c5a07bf1e5d3e1989a276b14c40990c5.JPG', 231, 'JPG'),
(283, 'a2adbbb80c3849e23f8519130697e5a1.JPG', 231, 'JPG'),
(284, '6877e5a8e7161caa2e447c00775b35d5.JPG', 231, 'JPG'),
(285, 'a2adbbb80c3849e23f8519130697e5a1.JPG', 231, 'JPG'),
(286, '50c679475e0c3f6847af4555b11a09dd.jpeg', 232, 'jpeg'),
(287, '9c1f9857bd5c6c3198743098b0c2db75.jpeg', 233, 'jpeg'),
(288, 'f6320b347c23653eff345d573a3aef70.mp4', 233, 'mp4'),
(289, '553cdaf77b00d1dd20ee5b6b086fff50.JPG', 234, 'JPG'),
(290, '8eee785a2e0b61899954660a4b2ead51.JPG', 234, 'JPG'),
(291, '2e252ebdf69be50af3983217cc748746.JPG', 234, 'JPG'),
(292, '93acc20d5523a528524bda796cf517dc.JPG', 234, 'JPG'),
(293, '8e1c7c349938cc8f6a2182265942ffeb.JPG', 234, 'JPG'),
(294, '1b7e6c587868e45f911e7d7c7a2479f6.JPG', 234, 'JPG'),
(295, 'be2f55bcde30c539341e4d8229ce4a1a.JPG', 234, 'JPG'),
(296, 'c7f223c14dc167105221234425dc84e8.jpeg', 235, 'jpeg'),
(297, 'd71bda4ea4352378ca40dde66b47b0b3.JPG', 236, 'JPG'),
(298, '61c47831c292438988164047dd774723.jpeg', 237, 'jpeg'),
(299, '407a0786f74246684c55ded8ce7c71a5.mp4', 237, 'mp4'),
(300, '16057560ed00fd176f8c435f6ceb8e20.mp4', 237, 'mp4'),
(301, 'e8acac160757d69f9afe4e64469aab81.jpeg', 237, 'jpeg'),
(302, 'cd5013c2f3c1d0fa86ebe2dd10a3b415.jpeg', 237, 'jpeg'),
(303, '61ab668784d596f5b0196b635800664e.jpeg', 238, 'jpeg'),
(304, '0d7a1ea7c0957fead497d6482ef73c7d.jpeg', 238, 'jpeg'),
(305, '214115f92202e75c794edad547fea1e4.jpeg', 238, 'jpeg'),
(306, '78e68eadf934ae7fe800481896555475.jpeg', 238, 'jpeg'),
(307, '016fb42f473f529d548841082cd9ca03.jpeg', 238, 'jpeg'),
(308, '3bdcbdff13698709b6c2da60a3912366.jpeg', 238, 'jpeg'),
(309, '82f7e28f81ec4bf58d03dd818ffd2319.jpeg', 238, 'jpeg'),
(310, 'ca482802226b4c38e725024bed0d48c5.jpeg', 238, 'jpeg'),
(311, '82f7e28f81ec4bf58d03dd818ffd2319.jpeg', 238, 'jpeg'),
(312, '00f347f8a004024c359f74880152ddaf.jpeg', 238, 'jpeg'),
(313, '65cb3de84968eb861ac799fabbe2a877.jpeg', 238, 'jpeg'),
(314, '5f4ae712f3775050019dcf46ba5ab8df.jpeg', 238, 'jpeg'),
(315, '82f7e28f81ec4bf58d03dd818ffd2319.jpeg', 238, 'jpeg'),
(316, '3ce7ee774c6dddc962d88d62eb193a7a.jpeg', 238, 'jpeg'),
(317, '00f347f8a004024c359f74880152ddaf.jpeg', 238, 'jpeg'),
(318, 'bd7b993b0bdec4c6c636a4f04624e82b.jpeg', 238, 'jpeg'),
(319, '3ce7ee774c6dddc962d88d62eb193a7a.jpeg', 238, 'jpeg'),
(320, 'ba914b2f4f424983b4f679c38ce37304.jpeg', 238, 'jpeg'),
(321, '82f7e28f81ec4bf58d03dd818ffd2319.jpeg', 238, 'jpeg'),
(322, '214115f92202e75c794edad547fea1e4.jpeg', 238, 'jpeg'),
(323, 'd3fc8d5c14c896ffbead10aaada24fc2.jpeg', 238, 'jpeg'),
(324, '8ab2d90deec3e33e73446d977fca6cdc.jpeg', 239, 'jpeg'),
(325, '73a1c6fb59c5a4791c25da2abe7251a2.jpeg', 239, 'jpeg'),
(326, '37de2fad2db9fc22a79aed747ead9754.mp4', 239, 'mp4'),
(327, '73a1c6fb59c5a4791c25da2abe7251a2.mp4', 239, 'mp4'),
(328, '34d1d181a25689332d8eb452c2cd7260.mp4', 239, 'mp4'),
(329, '894bb8239510c5490afa0c9ad18e51a2.mp4', 239, 'mp4'),
(330, '1d7951d383fe05f26ab0e6741890a311.jpeg', 239, 'jpeg'),
(331, 'f19b44b464665d29335fc111c45a82b0.jpeg', 239, 'jpeg'),
(332, '73a1c6fb59c5a4791c25da2abe7251a2.jpeg', 239, 'jpeg'),
(333, '894bb8239510c5490afa0c9ad18e51a2.jpeg', 239, 'jpeg'),
(334, '360adb1fc9702dd67acc669427c5119d.jpeg', 239, 'jpeg'),
(335, '44de12b9e3174d1ce46452f7c92f9d35.jpeg', 239, 'jpeg'),
(336, '34d1d181a25689332d8eb452c2cd7260.jpeg', 239, 'jpeg'),
(337, '0ebdd2a19f826ade3fca86d0de360e34.jpeg', 239, 'jpeg'),
(338, 'b0ce09f1ceee8faeab8081eaba5f8ced.jpeg', 239, 'jpeg'),
(339, 'b0ce09f1ceee8faeab8081eaba5f8ced.jpeg', 239, 'jpeg'),
(340, 'c591a00364b85e3560d705b2fb1f0f44.jpeg', 240, 'jpeg'),
(341, 'a77aacddef9a82b08bce12e805804828.jpeg', 241, 'jpeg'),
(342, '012171cfead1887613c5640b3bdd301b.jpeg', 241, 'jpeg'),
(343, '4147b9e10fdb62af8fcdd4253cece64c.mp4', 241, 'mp4'),
(344, '1480aa13a17f9fa33e6a5777ed58f223.jpeg', 241, 'jpeg'),
(345, '53aa064fb6b7ff62122f703630aa88e0.jpeg', 241, 'jpeg'),
(346, 'c94b49bfab1c16b48b5360e021b3ce92.jpeg', 241, 'jpeg'),
(347, 'b9625f95dcaef5c873862810ebba7650.jpeg', 241, 'jpeg'),
(348, '2aec01987f52bdfe7f84301f48e79df6.jpeg', 241, 'jpeg'),
(349, '8afd88b6dc5df66bea83ddec40222e9d.jpeg', 241, 'jpeg'),
(350, '12ab65086c56a03fb147fabb52fa8352.jpeg', 242, 'jpeg'),
(351, '09946cd3687858d02358e95ddf23f38a.jpeg', 243, 'jpeg'),
(352, '8f1fd1c216497df8d34f13fa93a72e3c.jpeg', 244, 'jpeg'),
(353, '1dd132a7c52969b986fe54dce9d09427.jpg', 245, 'jpg'),
(354, '30a49fc6ed8cea64344dfb2eff6ecb64.png', 246, 'png'),
(355, 'da70f6552e62817aa324702cc37dcd7a.jpeg', 247, 'jpeg'),
(356, '351a159e16944fa18dd5baa1824e3c88.jpg', 248, 'jpg'),
(357, '354056de9033288440c7b50e1626facb.jpeg', 249, 'jpeg'),
(358, 'a0c365a49c1cf2c2facfe2a80c339a4b.mp4', 247, 'mp4'),
(359, 'dd569cfd4726400648dbcc2107f62ed8.mp4', 247, 'mp4'),
(360, 'cc1980a039156eda5bfbbc3da85930a7.jpeg', 247, 'jpeg'),
(361, 'd810c75fa36394c7c64f1ea42fa4ba26.jpeg', 250, 'jpeg'),
(362, 'e9922f5bde1795c2a6a380452a7221db.jpeg', 251, 'jpeg'),
(363, '3ab69ff4ff4f604ee2b7442dd3b3e9d8.jpg', 252, 'jpg'),
(364, 'a75b3e870f0493736311dadb3c66f050.png', 253, 'png'),
(365, 'b6e5f58130d4b94caac3ce25181e1e57.jpeg', 251, 'jpeg'),
(366, '0d8522377d0f9083108ef64bbfd59271.mp4', 251, 'mp4'),
(367, '338d8951c171aa5db8062ea52b3f20be.jpeg', 251, 'jpeg'),
(368, 'dbf7082eff011e5a966fb1163b91984c.jpeg', 251, 'jpeg'),
(369, '94239ed606bae856cf8508c40e77fec8.jpeg', 251, 'jpeg'),
(370, 'bd8fad37569335c2cebc1ce02c4777a0.jpeg', 251, 'jpeg'),
(371, 'd40682308ff0def9dea5220c0f366d29.jpeg', 251, 'jpeg'),
(372, '58cc551d61133277009331f458b4c00c.jpeg', 251, 'jpeg'),
(373, 'd353bc7cc8ca5319ed9691bb1a909053.jpeg', 254, 'jpeg'),
(374, '507db3aed65505b323dca70aeec3d81a.jpeg', 255, 'jpeg'),
(375, '09d3539f9ffaf212d18b58001ba9d7ec.jpeg', 255, 'jpeg'),
(376, 'a494243e41dff219f878e61dc66729ed.jpeg', 255, 'jpeg'),
(377, '4d61037c7a33018efb02d3b790ca89ae.jpeg', 256, 'jpeg'),
(378, '6a627edab2a378efd6bf54a560e872a7.jpeg', 256, 'jpeg'),
(379, '92abc098f770d5dcdc488c192fdbbff0.jpeg', 256, 'jpeg'),
(380, '6a627edab2a378efd6bf54a560e872a7.jpeg', 256, 'jpeg'),
(381, '937de4f125a684059b108ed62b17a8a1.jpeg', 256, 'jpeg'),
(382, '5123d4013fc13dc0f1154c75454b643c.jpeg', 256, 'jpeg'),
(383, '30c29e6d8959b07ba2b008e9b9df5932.jpeg', 256, 'jpeg'),
(384, '32ad6a4e57476a379afbed9f318b7127.jpeg', 256, 'jpeg'),
(385, '4fe11e01844dfef4ceeb9a1d81275438.jpeg', 256, 'jpeg'),
(386, '32ad6a4e57476a379afbed9f318b7127.jpeg', 256, 'jpeg'),
(387, '5c97042da925004558c91f6c460610f2.jpeg', 256, 'jpeg'),
(388, '661a7344ba633a8fabcb533002e289cc.jpeg', 256, 'jpeg'),
(389, '4a29dc575f3377be5105217734bfadc7.jpeg', 256, 'jpeg'),
(390, 'eeda932a2b3a51d342af6eb308e3ec24.jpeg', 256, 'jpeg'),
(391, '1d094b6e4d56cb5c73df5a599037af11.jpeg', 256, 'jpeg'),
(392, '937de4f125a684059b108ed62b17a8a1.jpeg', 256, 'jpeg'),
(393, '8468e5681273e4bb8219388f4bb447a7.png', 257, 'png'),
(394, 'e5db0a44edd00293a7bfbee0dcce9ed5.png', 258, 'png'),
(395, '7e6bb3b8b41bbfbb4b8777689e0169f1.png', 259, 'png'),
(396, '6358fcb39de6f457c794fcc32532b95c.png', 260, 'png'),
(397, '97e313afc060c2a5e1c5d42786137444.png', 261, 'png'),
(398, 'b8474e30061feb4f8b4bcad090c9380d.jpeg', 262, 'jpeg'),
(399, '479f764347f0d7f23b367c5207320c19.jpeg', 263, 'jpeg'),
(400, 'c7748bd5cfe660280a5db8004ed9f5a9.png', 264, 'png'),
(401, '4a5d521350c2ca041ea4411bc5d35af4.jpeg', 265, 'jpeg'),
(402, 'a41af47d21d1f65965c442f3843075ee.jpeg', 266, 'jpeg'),
(403, '0dbbbc01769404d22232af649be26729.jpeg', 266, 'jpeg'),
(404, '4e406d15a22128fc45ff1e97d2c99491.jpeg', 266, 'jpeg'),
(405, 'fe33896c7cc47c9a38f169cfedd2db26.jpeg', 266, 'jpeg'),
(406, '380789e20b2b68753aa6f8222a05a984.jpeg', 266, 'jpeg'),
(407, '4e406d15a22128fc45ff1e97d2c99491.jpeg', 266, 'jpeg'),
(408, '03f472f2846e2acf8f13e97cae90677b.jpeg', 266, 'jpeg'),
(409, '0dbbbc01769404d22232af649be26729.jpeg', 266, 'jpeg'),
(410, '81e695969003207abae59a8371f29578.jpeg', 266, 'jpeg'),
(411, '424b8eb5a0673e435ef380cf26ec170c.jpeg', 266, 'jpeg'),
(412, '13c9fb9eeac2bc6675031cf167d29f24.jpeg', 266, 'jpeg'),
(413, 'ea9a72310803211c0b89f8ceba76a0b8.jpeg', 266, 'jpeg'),
(414, '13c9fb9eeac2bc6675031cf167d29f24.jpeg', 266, 'jpeg'),
(415, '8ac24f0965441c83191d3755d70e143f.jpeg', 266, 'jpeg'),
(416, '4e406d15a22128fc45ff1e97d2c99491.jpeg', 266, 'jpeg'),
(417, '377513de47fc70fd919a0c73e7a6ae37.jpeg', 266, 'jpeg'),
(418, '0379eeb4414aebc9f393c90a9b0dacdd.jpeg', 267, 'jpeg'),
(419, 'bdb773bf398c5f4a22e05527b0646e7f.jpeg', 268, 'jpeg'),
(420, '9da3bdf8cf7d78bc308aff5ee215bf8d.jpeg', 268, 'jpeg'),
(421, 'bd99dfa1dd33c923d0235bc769bca999.jpeg', 268, 'jpeg'),
(422, '3d5a699ead5bfb2369f5e74c7ccd8421.jpeg', 268, 'jpeg'),
(423, '3d5a699ead5bfb2369f5e74c7ccd8421.jpeg', 268, 'jpeg'),
(424, '9da3bdf8cf7d78bc308aff5ee215bf8d.jpeg', 268, 'jpeg'),
(425, '622673ec6520524d04548ef58a6339d0.jpeg', 269, 'jpeg'),
(426, '37bbf3f834574a45dcb73612209e8323.jpeg', 270, 'jpeg'),
(427, '066f6de45ad035f6ad671b2243cec359.jpeg', 271, 'jpeg'),
(428, 'b5a376498b98ea59402664193f1e45ab.jpeg', 272, 'jpeg'),
(429, 'e97e9cb364eb7f8647158aec9a50f61a.jpeg', 273, 'jpeg'),
(430, '5a7a1b26a3194aa8aea990d6e4e159cf.mp4', 273, 'mp4'),
(431, '17a97b5453d491f32745c0c6b2805c76.jpeg', 273, 'jpeg'),
(432, '2b77ad22bf69f215da91359b15872c89.jpeg', 273, 'jpeg'),
(433, 'a6519b50ca6c793b7edcf8a8aad6eb52.jpeg', 273, 'jpeg'),
(434, 'ae0900c5ad3c6b106a79d82ac315c254.jpeg', 273, 'jpeg'),
(435, '9b0fe8733628c6f8df39c585093e5e30.jpeg', 273, 'jpeg'),
(436, '9cce6542531ed76c5277a5cdf7b0cb63.jpeg', 274, 'jpeg'),
(437, '3cd23ef43d097890637f6c6e4d892a97.jpeg', 275, 'jpeg'),
(438, 'db538acf7e7981f4407623477fd8b1d4.jpeg', 275, 'jpeg'),
(439, '36fed6aba1af4bc249a69b7483b9ac6a.jpeg', 275, 'jpeg'),
(440, '6099a6c3c17fd2a44d1bb29075cc70d8.jpeg', 275, 'jpeg'),
(441, '43e45c9bd9c4122d4603389b2d235752.jpeg', 275, 'jpeg'),
(442, '75f47a2c6bbaba038d8855fc0c79289d.jpeg', 275, 'jpeg'),
(443, 'db538acf7e7981f4407623477fd8b1d4.jpeg', 275, 'jpeg'),
(444, '336abe3bf0af3fdb977caab554309cfa.jpeg', 276, 'jpeg'),
(445, '469897f27d3a2b95cf4b6fb752713acf.jpeg', 277, 'jpeg'),
(446, '0ac14b2666ebfd27089863812990dabf.jpeg', 278, 'jpeg'),
(447, '794a2bc8b173f14d0fd3b223e5c98f08.jpeg', 279, 'jpeg'),
(448, '7855f182bbcf37d43e305c72174974ae.jpeg', 280, 'jpeg'),
(449, '6f1565fa76bb233681a347cabba32b24.jpeg', 281, 'jpeg'),
(450, '70955abd356929a2fe296ae985c15820.jpeg', 282, 'jpeg'),
(451, '112ce6154f5fbd156eda1cb72aad9037.jpeg', 283, 'jpeg'),
(452, '8bfca4abafbbfa178a1f3c5ffa492f92.jpeg', 284, 'jpeg'),
(453, '92cc7edfff477409546c4e9322de47a3.jpeg', 284, 'jpeg'),
(454, '22fff6b0dff9c35638fc5c145f694844.jpeg', 284, 'jpeg'),
(455, 'ad12a1b51602c80dfc6787ad0d3155e9.jpeg', 284, 'jpeg'),
(456, 'd1079c5cadf8430e9cbe3418c1f0e4ee.jpeg', 284, 'jpeg'),
(457, '9f9d27491d5ce03495b9f6abc415f796.jpeg', 284, 'jpeg'),
(458, '737cf9facbb8f3d7d21b05c589372a6f.jpeg', 284, 'jpeg'),
(459, 'c498602001c8d1c555f81908bd9b84f6.jpeg', 284, 'jpeg'),
(460, '62fb72e8bcd3ac719bcf3ecb11162ad8.jpeg', 284, 'jpeg'),
(461, 'd4892afd42397531785efd62db583527.jpeg', 284, 'jpeg'),
(462, 'bed2df40a20cd14ae0e9ac6121b4c825.jpeg', 285, 'jpeg'),
(463, 'b31e1f141e263be3da2900fba23e5e71.jpeg', 286, 'jpeg'),
(464, '8ce16bf68061e05e90b45d41bed078df.jpeg', 287, 'jpeg'),
(465, '5eec6e3922f361c5642e62e12459bfbb.jpeg', 288, 'jpeg'),
(466, '232fb64697c7bf658f9c2e0d8383c3c5.jpeg', 289, 'jpeg'),
(467, '3cad1eddddc5f293d3d732756c293e16.jpeg', 290, 'jpeg'),
(468, 'c377742019169fd206853776b032a2f4.jpeg', 291, 'jpeg'),
(469, '52d07f512455a816ff6efe05709e21c7.jpeg', 292, 'jpeg'),
(470, '975430a356f84b0f213ccfe521a4c624.jpeg', 292, 'jpeg'),
(471, '679cd4f74c1e995f341ef6aadc495598.jpeg', 292, 'jpeg'),
(472, '679cd4f74c1e995f341ef6aadc495598.jpeg', 292, 'jpeg'),
(473, '0c3b82c5d54abb0f085097e881b94f36.jpeg', 292, 'jpeg'),
(474, '3965ebf008b87819426c68ee5a007259.jpeg', 292, 'jpeg'),
(475, '5ca01769b8e978ca7c09259fa5277008.jpeg', 292, 'jpeg'),
(476, '47d9bf9eaf53dc48f837d70bc6641c53.jpeg', 292, 'jpeg'),
(477, 'f17747875a235c625998bf55f4966ae5.jpeg', 292, 'jpeg'),
(478, '7ad44c86bafffcc1e476837d5231fb90.jpeg', 292, 'jpeg'),
(479, '91b3b5a7a6127accc916665e0632db4f.jpeg', 292, 'jpeg'),
(480, 'e1a2e88f3f0cc9dd59181d841cbe8d73.jpeg', 292, 'jpeg'),
(481, '63d74e71f890207fe422ae0b73870c26.jpeg', 292, 'jpeg'),
(482, '975430a356f84b0f213ccfe521a4c624.jpeg', 292, 'jpeg'),
(483, '3e37c2ab5194231ab3abf3140562c575.jpeg', 293, 'jpeg'),
(484, 'ea6e9ec3c18594ae2f8cf31ca83682ea.jpeg', 294, 'jpeg'),
(485, 'e603867e464fe4b83303de8a49fe5adb.jpeg', 295, 'jpeg'),
(486, 'd1d97f001ed500342fed06dffd2ae378.jpeg', 295, 'jpeg'),
(487, '2dd071d673cad86e4acd32a8e6bf0643.jpeg', 295, 'jpeg'),
(488, 'f08b88a82e5c38d855a7e6a1a850aad0.jpeg', 295, 'jpeg'),
(489, 'c0c1bb54cc3f4480d734e6026b508fc5.jpeg', 295, 'jpeg'),
(490, '7d0bf837f75c072d84fcf5a10261df9f.jpeg', 295, 'jpeg'),
(491, 'e5b948a47514be0a9953c14933c5b71a.jpeg', 295, 'jpeg'),
(492, 'f8dfd40bbef9dd1fdd83fe0574b48413.jpeg', 295, 'jpeg'),
(493, '06aec9a0d20889ac54527e1eebc1ca8a.jpeg', 295, 'jpeg'),
(494, 'f801442dd2d7813b2d20a8eaa4c112a5.jpeg', 295, 'jpeg'),
(495, 'd1d97f001ed500342fed06dffd2ae378.jpeg', 295, 'jpeg'),
(496, 'f801442dd2d7813b2d20a8eaa4c112a5.jpeg', 295, 'jpeg'),
(497, 'a82ca5c6538f0251e75acf72912e5b52.jpeg', 295, 'jpeg'),
(498, '315267c4114a2281e837a83d6b9e7030.jpeg', 295, 'jpeg'),
(499, 'e4edc81a8910249c711caf0c5cab0f99.jpeg', 295, 'jpeg'),
(500, '4e4d8ebda086f5e0ac7ac8663e9f44cb.jpeg', 295, 'jpeg'),
(501, 'a82ca5c6538f0251e75acf72912e5b52.jpeg', 295, 'jpeg'),
(502, '7d0bf837f75c072d84fcf5a10261df9f.jpeg', 295, 'jpeg'),
(503, '79f8e1652f09ce3b7272b47f42fd4e88.jpeg', 296, 'jpeg'),
(504, 'ebac4a38df19cf852b35e0b255bfce6a.jpeg', 297, 'jpeg'),
(505, '2d10619d6bbf26209fd370b58310c34d.jpeg', 298, 'jpeg'),
(506, '9d8b718c722810a09ddc75b54e1ce4f2.jpeg', 298, 'jpeg'),
(507, 'e62095af527dbc9cd94686a8d08de62b.jpeg', 298, 'jpeg'),
(508, '6e568f1d48b7b6f1dddd3ba09519d420.jpeg', 298, 'jpeg'),
(509, '6e568f1d48b7b6f1dddd3ba09519d420.jpeg', 298, 'jpeg'),
(510, '6814d7670dfe7dfa866ee992ebf3972e.jpeg', 299, 'jpeg'),
(511, 'be06046bfd454fc8a3ca5625d60b040d.jpeg', 300, 'jpeg'),
(512, '73294a8a7cba6a91e061f965f1ff24ac.jpeg', 300, 'jpeg'),
(513, '1071c564902395fa6a44254eecaf29f5.jpeg', 300, 'jpeg'),
(514, '0ab7acd321ba55f94a2b2d8828cbd01c.jpeg', 300, 'jpeg'),
(515, '2ea2e90b455cfa19ac3971b93d10eb7a.jpeg', 300, 'jpeg'),
(516, '0ab7acd321ba55f94a2b2d8828cbd01c.jpeg', 300, 'jpeg'),
(517, '73294a8a7cba6a91e061f965f1ff24ac.jpeg', 300, 'jpeg'),
(518, '99092e8cbee7d76d1cbc307c387630ed.jpeg', 300, 'jpeg'),
(519, 'dc0f06afb76616bdfe727ed06fd2418e.jpeg', 300, 'jpeg'),
(520, '7c2d02986e74ffcab0e99debbded7c13.jpeg', 300, 'jpeg'),
(521, '33d047edef714dd232f5b050d80c0603.jpeg', 300, 'jpeg'),
(522, '8a490de0c2bcb75f36a0e9b151fa9b30.jpeg', 300, 'jpeg'),
(523, '2ea2e90b455cfa19ac3971b93d10eb7a.jpeg', 300, 'jpeg'),
(524, '0ab7acd321ba55f94a2b2d8828cbd01c.jpeg', 300, 'jpeg'),
(525, '2ea2e90b455cfa19ac3971b93d10eb7a.jpeg', 300, 'jpeg'),
(526, '33d047edef714dd232f5b050d80c0603.jpeg', 300, 'jpeg'),
(527, 'bdfc5d780904b80ac0f7ea1a7b855d52.jpeg', 300, 'jpeg'),
(528, 'e608e3839c4af774640d6b0f0bda09be.jpeg', 300, 'jpeg'),
(529, '891d7f49fc6a29bb6c3543f129e2e5c2.jpeg', 300, 'jpeg'),
(530, 'e608e3839c4af774640d6b0f0bda09be.jpeg', 300, 'jpeg'),
(531, '3f5f1bae015559ffb810008812dd447a.jpeg', 300, 'jpeg'),
(532, 'c1b468224599906a755494b67293d396.jpeg', 301, 'jpeg'),
(533, '488f034aa8e0c52667032e3f201a6987.jpeg', 302, 'jpeg'),
(534, '4de9a02c68cbb6ec2c4ae6da2d9313de.mp4', 302, 'mp4'),
(535, '596930b76b05e05e2a58f13f20a91ea8.jpeg', 302, 'jpeg'),
(536, '41da32bf8693211c6f5636b7cd8675a5.jpeg', 302, 'jpeg'),
(537, '5dd3ae6940acab22b4fa830d0096270b.jpeg', 302, 'jpeg'),
(538, '345f23e7b6101735c1fdf1f794619b99.jpeg', 302, 'jpeg'),
(539, '3aa449bae5d957f3cd401cff6dc77b14.mp4', 302, 'mp4'),
(540, '3aa449bae5d957f3cd401cff6dc77b14.mp4', 302, 'mp4'),
(541, 'f3833aadcd324d6c65399ac60cd861d1.jpeg', 303, 'jpeg'),
(542, 'ed4303ff6447038155efc6f8346eb309.jpeg', 304, 'jpeg'),
(543, 'f3d24ed7c3f52077dccb49ee7222f7e9.jpeg', 305, 'jpeg'),
(544, 'd44c501bcec169320abf4625d84c4a90.jpeg', 306, 'jpeg'),
(545, '8ee227b698de6ce21b940a048f0c986d.jpeg', 307, 'jpeg'),
(546, '1678c85fd4ad08b4f3cae46951299d1b.jpeg', 307, 'jpeg'),
(547, 'ba738e97d69b306e11a22c97ec559429.jpeg', 307, 'jpeg'),
(548, '6236c290391dfa73fe12b908f802983a.jpeg', 307, 'jpeg'),
(549, '938d5c772f3bad2347af28e79bb21c1d.jpeg', 307, 'jpeg'),
(550, '9b7fa780e24c3d8f48c0938b9d1e22f2.jpeg', 307, 'jpeg'),
(551, 'afa00df5bb7bd29ebfc9848d29edfe88.jpeg', 307, 'jpeg'),
(552, 'c244d717737488a959d3ef31b4af84d8.jpeg', 307, 'jpeg'),
(553, 'c244d717737488a959d3ef31b4af84d8.jpeg', 307, 'jpeg'),
(554, '8a55f5cce062026df2d7a4af07c21326.jpeg', 307, 'jpeg'),
(555, 'b276e3b36e8c2208f0dc9da11b5750f4.jpeg', 307, 'jpeg'),
(556, 'cd52f13e4aacac20f727cc791a493823.jpeg', 307, 'jpeg'),
(557, 'ba738e97d69b306e11a22c97ec559429.jpeg', 307, 'jpeg'),
(558, '05709df92a02605d83542406e17c3487.jpeg', 307, 'jpeg'),
(559, '874131715c040a0f78bb1d5b8c0fa412.jpeg', 307, 'jpeg'),
(560, '7ef87f6e26621e68d03c71af33217e1b.jpg', 308, 'jpg'),
(561, 'f694869cd787b3c00a02fa1ddad51de3.jpg', 308, 'jpg'),
(562, 'd462ef991b73e43da71dfe2524971919.jpg', 308, 'jpg'),
(563, '613fa02f91130514217cd92b04049339.jpg', 308, 'jpg'),
(564, '6037c450972c6c6250f725f494873596.jpg', 308, 'jpg'),
(565, '8ca7f7a55b66cbe58f41ffc28a45bba6.jpg', 308, 'jpg'),
(566, '77ef396e36fda25fc88674479eb192e6.jpg', 308, 'jpg'),
(567, '113ebd4628a56e1e817e474d1d8a9173.jpg', 308, 'jpg'),
(568, '40df05698b430cf09ad566e64104fc1b.jpeg', 309, 'jpeg'),
(569, '31b41ba1e5fc3dad2bf5c2532e651f27.jpeg', 310, 'jpeg'),
(570, 'c8015cfa3ea59580fa30e4eaeb3c797a.jpeg', 311, 'jpeg'),
(571, 'c95e955a4492dde2b262a52a39513b17.jpeg', 311, 'jpeg'),
(572, '373475a9cb37a7b568ca06467958ace0.jpeg', 311, 'jpeg'),
(573, '6cb8a6c7644737607bb86e1e490077f5.jpeg', 311, 'jpeg'),
(574, '66f34db01afa6ad915bddec601413acf.jpeg', 311, 'jpeg'),
(575, '4a2bdd517d6f09de00eadff68dcef1a6.jpeg', 312, 'jpeg'),
(576, 'c405659381e34f54e2e339c630714ceb.jpeg', 313, 'jpeg'),
(577, '759502ff6f488f25dc0c5a6c076ccbd0.jpeg', 314, 'jpeg'),
(578, '4d7a3a902569fe4a74292655b79313ed.jpeg', 315, 'jpeg'),
(579, '41f9cf3edeb1f89f51fdab82702f0040.jpeg', 316, 'jpeg'),
(580, '200719de218fe0a71bb9a81defcbbfe8.jpeg', 317, 'jpeg'),
(581, '18e458d564fd0d6e5daa02d3e5560413.jpeg', 318, 'jpeg'),
(582, '9f01da8b98bef26a568601a18e59b57c.jpeg', 319, 'jpeg'),
(583, '39de10acdffe885d73e39623139729f2.jpeg', 320, 'jpeg'),
(584, '6a5c24c65d7e8f9b29e308a982d3411a.jpeg', 321, 'jpeg'),
(585, '31caf3897e68a487dd9bc2167f91a062.jpeg', 322, 'jpeg'),
(586, '208e6df1c2e517b55276f1cbb4ec74b5.jpeg', 323, 'jpeg'),
(587, 'ecdf4150b72c917f6e80c1f86cf513f3.jpeg', 324, 'jpeg'),
(588, 'd5d1507bbcdcf4fdc8ebfe6648e2bc36.jpeg', 323, 'jpeg'),
(589, '05cce77f70d81f9b8f1461bca124cd07.jpeg', 325, 'jpeg'),
(590, '943536cd89195632b0574b30eeacee4f.jpeg', 326, 'jpeg'),
(591, '680653391501f8b5a1668bbf39eaad83.jpeg', 326, 'jpeg'),
(592, 'c7ba784dd52659bd76cb8a60ef263027.jpeg', 326, 'jpeg'),
(593, '71da877ff9665a3f8424ea6323939ad7.jpeg', 326, 'jpeg'),
(594, 'c04258967a9a8f09751105c72e80d50a.jpeg', 326, 'jpeg'),
(595, '4aee0a9c0ebaeaf496c594e5328fbd2e.jpeg', 326, 'jpeg'),
(596, 'd58e19445098cba2d41c964d24beb520.jpeg', 327, 'jpeg'),
(597, 'da8f1094a7ac8ce092fdec553f49c20f.jpeg', 328, 'jpeg'),
(598, '51818c47aab39e4f5bc37e546387bc45.jpeg', 329, 'jpeg'),
(599, 'be1a1ff7bfa8909f88801a0f77d9dece.jpeg', 330, 'jpeg'),
(600, 'c172c86aaa5f51f0db1625eb3d50ad7c.jpeg', 331, 'jpeg'),
(601, '2198864809a6d6eea355fbeb9f7c66a4.jpeg', 332, 'jpeg'),
(602, 'a19b1629ca5d67b533be93bf2473795d.jpeg', 332, 'jpeg'),
(603, 'cf82665c9b8ad433ba0137118c0237a7.jpeg', 332, 'jpeg'),
(604, 'fc73dbd7f6bf27f06ffb941e882f9bfa.jpeg', 332, 'jpeg'),
(605, 'd967d43b5586a15160f4b22eff12d78d.jpeg', 332, 'jpeg'),
(606, '7f5898980e39bffc5df6d43e994a2d4b.jpeg', 332, 'jpeg'),
(607, 'b6735ea5195917a84d812d843c4194b9.jpeg', 332, 'jpeg'),
(608, 'f7c2c92bf6653c07c6dca1c8251c2919.jpeg', 332, 'jpeg'),
(609, '821e65348e23a03884f4d01a5c8ef02a.jpeg', 333, 'jpeg'),
(610, '7faa29b0ade21dfe654931c701741054.jpeg', 333, 'jpeg'),
(611, '88b98775a17c76c9430341e7dd5d64bf.jpeg', 333, 'jpeg'),
(612, '52fa0aa7669f0eb99747f2f199b5de0b.jpeg', 333, 'jpeg'),
(613, 'a556fae1778b22d985b3364c2c4d631e.jpeg', 333, 'jpeg'),
(614, 'c0acfa0857a5b30dac2b2b5fa29e7ffe.jpeg', 333, 'jpeg'),
(615, '623a49b6cb608c649874bbee5df657a7.jpeg', 333, 'jpeg'),
(616, 'c2d3d7315321f4c2771690110a95ea9f.jpeg', 333, 'jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `love_it`
--

CREATE TABLE `love_it` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `offer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `love_it`
--

INSERT INTO `love_it` (`id`, `user`, `offer`) VALUES
(1, NULL, 47),
(2, 4, 246),
(3, NULL, 227),
(4, NULL, 301),
(5, NULL, 290),
(6, NULL, 285),
(7, NULL, 283),
(8, NULL, 276),
(9, NULL, 274),
(10, NULL, 314),
(11, NULL, 322),
(12, NULL, 223),
(13, NULL, 209),
(14, NULL, 209),
(15, NULL, 209),
(16, NULL, 209),
(17, NULL, 209),
(18, NULL, 321);

-- --------------------------------------------------------

--
-- Table structure for table `messenger`
--

CREATE TABLE `messenger` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `responsible` int(11) DEFAULT NULL,
  `ads` int(11) DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `user_view` int(11) DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `message` text CHARACTER SET utf8,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messenger`
--

INSERT INTO `messenger` (`id`, `user`, `responsible`, `ads`, `date`, `sender`, `user_view`, `view`, `message`, `updated_at`) VALUES
(21, 4, 4, 56, NULL, 4, 4, 1, 'hi', '2022-10-09 15:52:31'),
(22, 5, 4, 56, NULL, 5, 4, 1, 'lvpfh', '2022-10-09 15:52:31'),
(23, 6, 6, 58, NULL, 6, 6, 1, 'مرحبا', '2022-09-30 19:43:12'),
(24, 4, 6, 58, NULL, 4, 6, 1, 'مرحبا', '2022-09-30 19:43:12'),
(25, 7, 6, 61, NULL, 7, 6, 1, 'lvpfh ;ij;oihliuhliuhlilظمنزىوتاناررتلالؤتؤ\nظزاولبتبتتيىل', '2022-09-30 19:43:12'),
(26, 6, 6, 58, NULL, 6, 6, 1, 'اهلا وسهلا', '2022-09-30 19:43:12'),
(27, 7, 6, 67, NULL, 7, 6, 1, 'السلام عليكم', '2022-09-30 19:43:12'),
(28, 7, 6, 67, NULL, 6, 7, 1, 'وعليكم السلام', '2022-10-10 15:02:45'),
(29, 7, 6, 61, NULL, 7, 6, 1, 'مرحبا', '2022-09-30 19:43:12'),
(30, 7, 6, 67, NULL, 6, 7, 1, 'وعليكم السلام 2', '2022-10-10 15:02:45'),
(31, 7, 6, 61, NULL, 7, 6, 1, 'مرحبا 123', '2022-09-30 19:43:12'),
(32, 7, 6, 67, NULL, 7, 6, 1, 'وعليكم السلام', '2022-09-30 19:43:12'),
(33, 7, 6, 67, NULL, 7, 6, 1, NULL, '2022-09-30 19:43:12'),
(34, 7, 4, 63, NULL, 7, 4, 1, 'مرحبتين 1', '2022-10-09 15:52:31'),
(35, 7, 4, 63, NULL, 4, 7, 1, 'اهلا', '2022-10-10 15:02:45'),
(36, 7, 4, 63, NULL, 4, 7, 1, NULL, '2022-10-10 15:02:45'),
(37, 7, 4, 63, NULL, 4, 7, 1, 'عع', '2022-10-10 15:02:45'),
(38, 7, 4, 63, NULL, 4, 7, 1, NULL, '2022-10-10 15:02:45'),
(39, 7, 4, 63, NULL, 7, 4, 1, 'مرحبتين 2', '2022-10-09 15:52:31'),
(40, 7, 4, 63, NULL, 4, 7, 1, 'G', '2022-10-10 15:02:45'),
(41, 7, 6, 67, NULL, 7, 6, 1, 'بكم', '2022-09-30 19:43:12'),
(42, 7, 6, 67, NULL, 7, 6, 1, 'بكم ؟؟؟؟', '2022-09-30 19:43:12'),
(43, 7, 6, 67, NULL, 7, 6, 1, NULL, '2022-09-30 19:43:12'),
(44, 7, 6, 61, NULL, 7, 6, 1, 'تهكنىنتىمىممات', '2022-09-30 19:43:12'),
(45, 7, 4, 63, NULL, 4, 7, 1, 'نن', '2022-10-10 15:02:45'),
(46, 4, 8, 76, NULL, 4, 8, 1, 'مرحبا', '2022-10-16 13:10:05'),
(47, 4, 8, 76, NULL, 4, 8, 1, 'كيف حالك', '2022-10-16 13:10:05'),
(48, 4, 8, 76, NULL, 8, 4, 1, 'اهلين', '2022-10-09 15:52:31'),
(49, 4, 4, 90, NULL, 4, 4, 1, 'انا مهتم باعلانك 55', '2022-10-09 15:52:31'),
(50, 4, 4, 90, NULL, 4, 4, 1, 'انا مهتم باعلانك 55', '2022-10-09 15:52:31'),
(51, 7, 8, 85, NULL, 7, 8, 1, 'انا مهتم باعلانك للبيع فيلا مودرن فاخرة في ابحرالشماليه حي الياقوت', '2022-10-16 13:10:05'),
(52, 7, 8, 85, NULL, 7, 8, 1, NULL, '2022-10-16 13:10:05'),
(53, 7, 8, 85, NULL, 7, 8, 1, 'انا مهتم باعلانك للبيع فيلا مودرن فاخرة في ابحرالشماليه حي الياقوت', '2022-10-16 13:10:05'),
(54, 30, 18, 307, NULL, 30, 18, 0, 'انا مهتم باعلانك شقه للبيع 5 غرف من المالك مباشره افراغ فوري في السلامة', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `neighborhood`
--

CREATE TABLE `neighborhood` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `city` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `neighborhood`
--

INSERT INTO `neighborhood` (`id`, `name_ar`, `name_en`, `city`) VALUES
(9, 'النور', NULL, 5),
(10, 'المنار', NULL, 5),
(11, 'الاندلس', NULL, 5),
(29, 'حي النهضة', NULL, 2),
(30, 'حي الصفا', NULL, 2),
(31, 'حي بريمان', NULL, 2),
(32, 'حي الكورنيش الشمالي', NULL, 2),
(33, 'حي الزهراء', NULL, 2),
(35, 'حي الحره الشرقية', NULL, 3),
(36, 'حي الدويمه', NULL, 3),
(37, 'حي مخطط الملك فهد', NULL, 3),
(38, 'حي مخطط شوران', NULL, 3),
(39, 'حي النور', NULL, 2),
(40, 'حي الوزيريه', NULL, 2),
(41, 'حي الصفا', NULL, 2),
(42, 'حي الفردوس', NULL, 2),
(43, 'حي اللؤلؤه', NULL, 2),
(44, 'حي الشاطئ', NULL, 2),
(45, 'حي الشراع', NULL, 2),
(46, 'حي الزمرد', NULL, 2),
(47, 'حي الحرازات', NULL, 2),
(49, 'حي بني مالك', NULL, 2),
(50, 'حي المرجان', NULL, 2),
(51, 'حي ابحر الجنوبيه', NULL, 2),
(52, 'حي المكرونه', NULL, 2),
(53, 'حي الكوثر', NULL, 2),
(54, 'حي الشرفيه', NULL, 2),
(55, 'حي ابحر الشماليه', NULL, 2),
(56, 'حي مشرفه', NULL, 2),
(58, 'حي الحمدانيه', NULL, 2),
(59, 'حي الملز', NULL, 1),
(60, 'حي الصمد', NULL, 43),
(61, 'حي الرحمانية', NULL, 2),
(62, 'حي المنتزهات', NULL, 2),
(63, 'حي الصواري', NULL, 2),
(64, 'حي الجميزة', NULL, 44),
(65, 'حي العوالي', NULL, 44),
(66, 'حي الزايدي', NULL, 44),
(67, 'حي العزيزية', NULL, 44),
(68, 'حي الملك فهد', NULL, 44),
(69, 'حي المسفلة', NULL, 44),
(70, 'حي الراشدية', NULL, 44),
(71, 'حي الشوقية', NULL, 44),
(72, 'حي الرصيفة', NULL, 44),
(73, 'حي بطحاء قريش', NULL, 44),
(74, 'حي محبس الجن', NULL, 44),
(75, 'حي الياقوت', NULL, 2),
(76, 'حي المنارات', NULL, 2),
(77, 'حي جوهرة العروس', NULL, 2),
(78, 'حي خليج سلمان', NULL, 2),
(79, 'حي الجامعيين', NULL, 2),
(80, 'حي البساتين', NULL, 2),
(81, 'حي الروضة', NULL, 2),
(82, 'حي المروه', NULL, 2),
(83, 'حي البوادي', NULL, 2),
(84, 'حي المبعوث', NULL, 3),
(85, 'حي حمرا الاسد', NULL, 3),
(86, 'حي طيبه', NULL, 2),
(87, 'حي الرياض', NULL, 2),
(88, 'حي الاجاويد', NULL, 2),
(89, 'حي المحمديه', NULL, 2),
(90, 'حي السلامه', NULL, 2),
(91, 'حي الحمرا', NULL, 2),
(92, 'حي الريان', NULL, 2),
(93, 'حي النزهه', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `text_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `text_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_view` int(11) DEFAULT '0',
  `view` int(11) DEFAULT '0',
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user`, `text_ar`, `text_en`, `user_view`, `view`, `created`, `updated_at`) VALUES
(24, 4, 'eeeeee', 'eeeee', 0, 1, '13, 9, 2022', '2022-09-13 15:18:37'),
(25, 4, 'hhhhhhh', 'hhhhhhhhhhh', 0, 1, '13, 9, 2022', '2022-09-13 15:18:37'),
(26, 4, 'yy', 'yy', 0, 1, '13, 9, 2022', '2022-09-13 15:18:47'),
(27, 4, 'غانم0حخىلاةنمخحلاانتللا89هرى', NULL, 4, 1, '20, 9, 2022', '2022-09-21 06:09:40'),
(28, 8, 'هلا', NULL, 0, 1, '30, 9, 2022', '2022-09-30 22:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `advertiser` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `category` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `parking` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bedroom` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bathroom` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bedroom_bathroom` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bedroom_hall` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bath` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sqft` text CHARACTER SET utf8,
  `health_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `health_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `education_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `education_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hall` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `board` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `elevator` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `kitchen` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `services` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `adaptation` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `badron` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `swimming_pool` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `driver_room` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `servant_room` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `laundry_room` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `text_ar` text CHARACTER SET utf8,
  `text_en` text CHARACTER SET utf8,
  `lat` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lng` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `picture` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `floor` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `face` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `floors` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `carpark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `shops` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `property_age` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `street_width` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `length` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `width` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `advertiser_relationship` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `families` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `furnished` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `rental_term` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `car_entrance` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `property_floor_no` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `apartment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hall_stair` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `verse` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cellar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `duplex` varchar(255) CHARACTER SET utf32 DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `appendix` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `football_stadium` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `volleyball_court` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `amusement_park` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `families_category` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `purpose` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `number_of_wells` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `number_of_trees` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `store_number` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `flat_apartment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `floor_balance` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `advertiser_phone` text CHARACTER SET utf8,
  `neighborhood` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `search` text CHARACTER SET utf8,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `advertiser`, `name_ar`, `name_en`, `address_ar`, `address_en`, `price`, `currency`, `status`, `category`, `type`, `city`, `parking`, `bedroom`, `bathroom`, `bedroom_bathroom`, `bedroom_hall`, `bath`, `sqft`, `health_ar`, `health_en`, `education_ar`, `education_en`, `hall`, `board`, `elevator`, `kitchen`, `services`, `adaptation`, `badron`, `swimming_pool`, `driver_room`, `servant_room`, `laundry_room`, `text_ar`, `text_en`, `lat`, `lng`, `picture`, `floor`, `district`, `face`, `floors`, `carpark`, `shops`, `property_age`, `street_width`, `length`, `width`, `advertiser_relationship`, `families`, `furnished`, `rental_term`, `car_entrance`, `property_floor_no`, `apartment`, `hall_stair`, `verse`, `cellar`, `duplex`, `area`, `appendix`, `football_stadium`, `volleyball_court`, `amusement_park`, `families_category`, `purpose`, `number_of_wells`, `number_of_trees`, `store_number`, `flat_apartment`, `floor_balance`, `advertiser_phone`, `neighborhood`, `search`, `updated_at`) VALUES
(65, '6', 'فيلا البندر', NULL, 'ابحر الشماليه', NULL, '4000000', NULL, 0, '2', 3, '2', NULL, '5', NULL, NULL, NULL, '5', '550', NULL, NULL, NULL, NULL, '3', '3', 'yes', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'اخايباخيبارلانترلخعسانىبنملاعلخسبلابتلاخبالت', NULL, '21.76132577654809', '39.10775841334349', 'e0aa1b4180fb1a09fd3add135d342821.jpg', '', NULL, '5', '2', NULL, NULL, '2', '32', '10', '30', 'marketed', NULL, 'yes', NULL, 'yes', NULL, NULL, 'yes', 'yes', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9894666', NULL, 'فيلا', '2022-09-25 16:23:28'),
(75, '8', 'للبيع فيلا في ابحرالشماليه حي الصواري', NULL, 'للبيع فيلا في ابحر الشمالية حي الصواري', NULL, '1650000', '1', 0, '2', 3, '2', NULL, '5', NULL, NULL, NULL, '7', '300', NULL, NULL, NULL, NULL, '3', '2', 'yes', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا مودرن في أبحر الشمالية (حي الصواري)\r\nمساحة الارض ٣٠٠متر\r\nشارع ١٦ شرقي\r\nالسعر 1,650,000\r\nمسبح\r\nغرفة سائق\r\nتأسيس مصعد\r\nالدور الارضي \r\n(١)مجلس رجال\r\n(١)مجلس نساء \r\n(١)صالة وسيعه \r\n(١)مطبخ\r\n(٢)حمامين\r\n\r\nالدور الاول \r\n(٤)غرف نوم\r\n(١)صالة\r\n(٣)حمامات\r\n\r\nالملحق \r\n(٢)غرفتين \r\n(١)صالة\r\n(٢)حمامين\r\n(١)غرفة غسيل \r\nغرفة شغالة\r\n\r\nللاستفسار 0555013819', NULL, '21.798673008111788', '39.11682997463044', '5257cbb59ba5839f8c27cea8f7050ff1.jpeg', '', NULL, '2', '٣', NULL, NULL, NULL, '15', '12', '24', 'marketed', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع فيلا في ابحرالشماليه حي الصواري - للبيع فيلا في ابحر الشمالية حي الصواري - جدة - فيلا - apartment\r\n - للبيع - ', '2022-09-27 20:42:39'),
(76, '8', 'للايجار شقة في ابحرالشمالية حي الزمرد', NULL, 'للايجار شقة في ابحرالشماليه حي الزمرد', NULL, '32000', '1', 0, '1', 1, '2', NULL, '4', NULL, NULL, NULL, '3', '200', NULL, NULL, NULL, NULL, '1', NULL, 'no', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للايجار شقة في ابحرالشماليه حي الزمرد\r\n(٤)غرف \r\n(١)صالة\r\n(١)مطبخ\r\n(٣)حمامات\r\nمدخلين \r\n32000/الف سنوي', NULL, '24.794213816803946', '46.6946406875', '3d1a3d65a1897c65d33407866967c9f5.jpeg', '', NULL, '3', NULL, NULL, NULL, '3', '15', '200', '10', 'marketed', 'families_families', NULL, 'annual', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'front', NULL, '5012463', NULL, ' - للايجار شقة في ابحرالشماليه حي الزمرد - جدة ابحرالشماليه - شقة - apartment\r\n - للايجار - ', '2022-09-28 13:22:10'),
(77, '8', 'للبيع فيلا نظام شقق في ابحرالشمالية حي الزمرد', NULL, 'للبيع فيلا مدرن في ابحرالشمالية حي الزمرد', NULL, '1900000', '1', 0, '2', 3, '2', NULL, NULL, NULL, NULL, NULL, NULL, '312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع فيلا  \"نظام شقق\" في ابحرالشماليه حي الزمرد\r\nمساحة الارض٣١٢.٥\r\nالسعر 1,900,000\r\n\r\n\r\n\"الدورالارضي\"\r\n\r\n(٤)غرف\r\n(١)صالة\r\n(٣)حمامات\r\n(١)مطبخ\r\nمدخلين\r\n\r\n\r\n\"الدورالاول\"\r\n\r\n(٥)غرف \r\n(١)صالة\r\n(٣)حمامات \r\n(١)مطبخ \r\n\r\n\r\n\"الملحق\"\r\n(١)غرفة\r\n(١)مطبخ\r\n(١)حمام\r\n(١)صالة وسيعه \r\nسطح امامي وخلفي\r\n\r\nيوجد ‏تأسيس مصعد\r\n‏غرفة سائق \r\n\r\n\r\nللاستفسار 0555013819', NULL, '24.794213816803946', '46.6946406875', '879663773f11ac64036c10b0596f23db.jpeg', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', '25', 'marketed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع فيلا نظام شقق في ابحرالشمالية حي الزمرد - للبيع فيلا مدرن في ابحرالشمالية حي الزمرد - جدة - فيلا - apartment\r\n - للبيع - ', '2022-09-30 21:09:03'),
(78, '8', 'للبيع فيلا مودرن في ابحرالشماليه حي الصواري', NULL, 'للبيع فيلا مودرن في ابحرالشماليه حي الصواري', NULL, '1800000', NULL, 0, '2', 3, '2', NULL, '6', NULL, NULL, NULL, '7', '312', NULL, NULL, NULL, NULL, '1', '2', 'yes', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا مودرن في (حي الصواري)ابحرالشماليه \r\nمساحة الارض ٣١٢.٥\r\nالسعر 1,800,000\r\n\r\nالدور الارضي :\r\n(١)غرفة سائق\r\n(١)مسبح\r\n(١)مطبخ\r\n(١)مجلس رجال\r\n(١)مجلس نساء\r\n(١)صالة\r\n(٢)حمامين\r\n\r\nالدور الاول:\r\n(٤)غرف نوم\r\n(٣)حمامات\r\n(١)صالة\r\n(١)سيرفيس\r\n\r\nالملحق:\r\n(٢)غرفتين \r\n(١)صالة\r\n(١)غرفة شغالة\r\n(١)غرفة غسيل\r\n\r\n\r\nمعلن ١٢٣٦١٠٠\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '38c11e4192c8d86cbe01dc94531262c3.jpeg', '', NULL, '2', '٣', NULL, NULL, NULL, '15', '12', '25', 'marketed', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' - للبيع فيلا مودرن في ابحرالشماليه حي الصواري - جده - فيلا - apartment\r\n - للبيع - ', '2022-09-30 21:51:53'),
(79, '8', 'للبيع فيلامودرن في ابحرالشماليه حي الياقوت', NULL, 'للبيع فيلامودرن في ابحرالشماليه حي الياقوت', NULL, '1600000', NULL, 0, '2', 3, '2', NULL, '6', NULL, NULL, NULL, '7', '270', NULL, NULL, NULL, NULL, '2', '2', 'yes', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا دورين وملحق في أبحر الشمالية حي الياقوت \r\n\r\nمساحة الارض٢٧٥متر\r\n‎1,600,000السعر\r\nالدور الارضي:\r\nمدخلين \r\nغرفة سائق\r\n(١)مجلس رجال\r\n(١)مجلس نساء\r\n(١)صالة وسيعة\r\n(١)مطبخ\r\n(٢)حمامين\r\nمسبخ \r\n\r\nالدورالاول \r\n(٤)غرف نوم\r\n(١)صالة\r\n(٣)حمامات \r\nسيرفيس \r\n\r\nالملحق:\r\n\r\n(٢)غرفتين \r\n(١)صالة\r\n(١)حمام\r\n\r\nمعلن ١٢٣٦١٠٠\r\nللاستفسار 0555013819', NULL, '24.794213816803946', '46.6946406875', 'a6a1ce2a6256385052ca35662120b308.jpeg', '', NULL, '4', '٣', NULL, NULL, NULL, '15', '11', '24', 'marketed', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' - للبيع فيلامودرن في ابحرالشماليه حي الياقوت - جده - فيلا - apartment\r\n - للبيع - ', '2022-09-30 21:53:06'),
(80, '8', 'للبيع فيلا مودرن في ابحرالشماليه حي الزمرد', NULL, 'للبيع فيلا مودرن في ابحرالشماليه حي الزمرد', NULL, '1830000', '1', 0, '2', 3, '2', NULL, '6', NULL, NULL, NULL, '7', '312', NULL, NULL, NULL, NULL, '2', '2', 'yes', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا مودرن في أبحر الشمالية حي الزمرد مساحة الارض 312,5\r\nالسعر 1,800,000\r\n\r\nالدور الارضي \r\nمجلس رجال \r\nمجلس نساء \r\nصالة وسيعه \r\nمطبخ \r\nحمامين \r\nمسبح \r\nتأسيس مصعد \r\n\r\nالدور الاول \r\n(٤)غرف نوم\r\n(١)صالة\r\n(٣)حمامات \r\n\r\nالملحق \r\n(١)غرفة نوم\r\n(١)حمام\r\n(غرفة غسيل)\r\n(غرفة شغالة بحمام)\r\n\r\nمعلن ١٢٣٦١٠٠\r\nللاستفسار 0555013819', NULL, '24.794213816803946', '46.6946406875', 'e6754e43ada9f5aa55d458fa891aed19.jpeg', '', NULL, '4', '٣', NULL, NULL, NULL, '15', '12', '25', 'marketed', NULL, NULL, NULL, 'yes', NULL, NULL, 'yes', NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5012463', NULL, ' - للبيع فيلا مودرن في ابحرالشماليه حي الزمرد - جده - فيلا - apartment\r\n - للبيع - ', '2022-09-30 21:54:33'),
(81, '8', 'للبيع فيلا في ابحرالشماليه حي الزمرد', NULL, 'للبيع فيلا في ابحرالشماليه حي الزمرد', NULL, '1850000', '1', 0, '2', 3, '2', NULL, '6', NULL, NULL, NULL, '8', '312', NULL, NULL, NULL, NULL, '3', '2', 'yes', NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, 'للبيع فيلا مودرن في أبحر الشمالية (حي الزمرد)\r\n\r\nمساحة الارض ٣١٢.٥\r\nالدور الارضي\r\n(١)غرفة سائق بحمام\r\n(١)تاسيس مصعد \r\n(١)مسبح \r\n(١)مطبخ \r\n(١)مجلس رجال \r\n(١)صالة وسيعه\r\n(١)مجلس نساء\r\n(٢)حمامين \r\n\r\nالدور الاول :\r\n\r\n(٤)غرف نوم\r\n(٣)حمامات\r\n(١)صالة\r\n\r\nالملحق :\r\n\r\n(٢)غرفتين\r\n(١)صالة\r\n(٢)حمامين\r\n\r\nالسعر1,850,000\r\nمعلن 1236100\r\n\r\nللاستفسار  0555013819', NULL, '24.794213816803946', '46.6946406875', '7c9afdae914965eaa28a8295b338f1b2.jpeg', '', NULL, '1', '٣', NULL, NULL, NULL, '15', '12', '25', 'owner', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' - للبيع فيلا في ابحرالشماليه حي الزمرد - جدة - فيلا - apartment\r\n - للبيع - ', '2022-09-30 21:56:45'),
(82, '8', 'للبيع فيلامودرن في ابحرالشمالية حي الياقوت شارعين', NULL, 'للبيع فيلا مودرن فاخرة بحي الياقوت شارعين', NULL, '2300000', '1', 0, '2', 3, '2', NULL, '6', NULL, NULL, NULL, '7', '335', NULL, NULL, NULL, NULL, NULL, '2', 'yes', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا مودرن فاخرة في ابحرالشمالية (حي الياقوت) تشطيب فاخر\r\n\r\nمساحة الارض ٣٣٥متر \r\nشارعين ١٥+١٥\r\nالدور الارضي \r\nمجلس رجال \r\nصالة طعام رجال \r\nمجلس نساء \r\nصالة وسيعه \r\nمطبخ \r\nحمامين \r\nغرفة غسيل \r\nغرفة شغالة\r\n\r\nالدور الاول \r\n(٤)غرف نوم كل غرفة بحمام مستقل \r\n(٤)حمامات \r\n(١)صالة وسيعة\r\n\r\nالملحق \r\n(٢)غرفتين كل غرفة بحمام مستقل\r\n(٢)حمامين\r\n(١)صالة\r\nسطوح \r\n تاسيس مصعد \r\nمعلن ١٢٣٦١٠٠\r\nللاستفسار 0555013819', NULL, '24.794213816803946', '46.6946406875', 'a9bb9bdacd6283dfd4045050f79d6840.jpeg', '', NULL, '6', '٣', NULL, NULL, NULL, '15', '13', '25', 'marketed', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'فيلا للبيع - للبيع فيلا مودرن فاخرة بحي الياقوت شارعين - جدة - فيلا - apartment\r\n - للبيع - ', '2022-09-30 21:55:36'),
(83, '8', 'للبيع فيلا مودرن تشطيب فاخر في ابحرالشماليه حي اللؤلؤة', NULL, 'للبيع فيلا مودرن تشطيب فاخر في ابحرالشماليه حي اللؤلؤة', NULL, '1950000', '1', 0, '2', 3, '2', NULL, '6', NULL, NULL, NULL, '7', '270', NULL, NULL, NULL, NULL, '2', '2', 'yes', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, '*مشروع صفوة المنازل العقاريه*\r\n\r\n*فلل مودرن في حي اللؤلؤ*\r\n( مخطط بقشان ) \r\nمساحة *٢٧٠م* منفصله \r\nمساحة المباني *٥٥٠* \r\n\r\n*الدور الارضي*: مجلس رجال وصالة \r\nوصالة طعام ومطبخ.\r\n\r\n*الدور الاول*: غرفة نوم ماستر \r\nوغرفتين نوم ( كل غرفة بدورة مياه ) وصالة\r\n\r\n*الدور الثاني*: غرفتين نوم وغرفة خادمه\r\n وغرفة غسيل.\r\n\r\n- الدور الارضي تكييف دكت\r\n- مسبح\r\n- مصعد \r\n- سمارت هوم\r\n\r\nالسعر 1,950,000', NULL, '24.794213816803946', '46.6946406875', '1e6ee4fda2455ddee55b8b8a91025f2e.JPG', '', NULL, '1', '٣', NULL, NULL, NULL, '20', '11', '23', 'marketed', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' - للبيع فيلا مودرن تشطيب فاخر في ابحرالشماليه حي اللؤلؤة - جدة - فيلا - apartment\r\n - للبيع - ', '2022-10-25 18:58:42'),
(84, '8', 'للبيع فيلا مودرن تشطيب فاخر في ابحرالشماليه حي اللؤلؤة', NULL, 'للبيع فيلا مودرن في ابحرالشماليه حي الياقوت', NULL, '1650000', '1', 0, '2', 3, '2', NULL, '5', NULL, NULL, NULL, '7', '262', NULL, NULL, NULL, NULL, '2', '2', 'yes', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا فاخره في أبحر الشمالية (حي الياقوت)\r\n\r\nمساحة الارض ٢٦٢.٥\r\n\r\nالدور الارضي\r\nمسبح \r\nتأسيس مصعد \r\nمطبخ\r\nحمامين \r\nمجلس رجال \r\nمجلس نساء \r\nصالة وسيعه \r\n\r\nالدور الاول \r\n(٤)غرف نوم\r\n(١)صالة \r\n(٣)حمامات\r\nسيرفيس \r\n\r\nالملحق\r\n(٢)غرفتين \r\n(١)صالة\r\n(١)حمام\r\nسطوح\r\nالسعر 1,650,000\r\n\r\nمعلن ١٢٣٦١٠٠\r\nللاستفسار 0555013819', NULL, '24.794213816803946', '46.6946406875', 'c83a1471696e40cd62ee043e9c8ffd98.JPG', '', NULL, '2', '٣', NULL, NULL, NULL, '15', '11', '24', 'owner', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' - للبيع فيلا مودرن في ابحرالشماليه حي الياقوت - جدة - فيلا - apartment\r\n - للبيع - ', '2022-10-25 18:49:36'),
(85, '8', 'للبيع فيلا مودرن فاخرة في ابحرالشماليه حي الياقوت', NULL, 'للبيع فيلا مودرن فاخرة في ابحرالشماليه حي الياقوت', NULL, '1650000', '1', 0, '2', 3, '2', NULL, '6', NULL, NULL, NULL, '7', '262', NULL, NULL, NULL, NULL, '2', '2', 'yes', NULL, NULL, NULL, NULL, 'yes', 'yes', NULL, NULL, 'للبيع فيلا فاخره في أبحر الشمالية (حي الياقوت)\r\n\r\nمساحة الارض ٢٦٢.٥\r\n\r\nالدور الارضي\r\nمسبح \r\nتأسيس مصعد \r\nمطبخ\r\nحمامين \r\nمجلس رجال \r\nمجلس نساء \r\nصالة وسيعه \r\n\r\nالدور الاول \r\n(٤)غرف نوم\r\n(١)صالة \r\n(٣)حمامات\r\nسيرفيس \r\n\r\nالملحق\r\n(٢)غرفتين \r\n(١)صالة\r\n(١)حمام\r\nسطوح\r\n\r\nمعلن ١٢٣٦١٠٠\r\nللاستفسار 0555013819', NULL, '24.794213816803946', '46.6946406875', '9f44d30d4ccadb509f797ff1882d0dd9.JPG', '', NULL, '4', '٣', NULL, NULL, NULL, '15', '11', '25', 'marketed', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' - للبيع فيلا مودرن فاخرة في ابحرالشماليه حي الياقوت - جده - فيلا - apartment\r\n - للبيع - ', '2022-10-25 18:40:42'),
(86, '8', 'للبيع قطعة ارض سكنية  حي الفنار', NULL, 'ابحرالشمالية حي الفنار', NULL, '750000', '1', 0, '2', 8, '2', NULL, NULL, NULL, NULL, NULL, NULL, '400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع قطعة ارض سكنية في ابحرالشماليه حي الفنار\r\n٤٠٠متر\r\nشارع ١٥', NULL, '24.794213816803946', '46.6946406875', '9d5100ab2c57d5f4f5ac9e46ca5a139b.png', '', NULL, '1', NULL, NULL, NULL, NULL, '20', '15', '20', 'marketed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'residential', NULL, NULL, NULL, NULL, NULL, '5012463', NULL, 'للبيع قطعة ارض سكنية في ابحرالشمالية حي الفنار - للبيع قطعة ارض سكنية في ابحرالشمالية حي الفنار - جدة - ارض - building for sale - للبيع - ', '2022-10-25 18:02:15'),
(87, '8', 'للايجار ‏استراحة ‏يومي في حي البحيرات', NULL, 'ابحر الشماليه | حي البحيرات', NULL, '1700', '1', 0, '1', 6, '2', NULL, '3', NULL, NULL, NULL, '6', '900', NULL, NULL, NULL, NULL, '2', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '‏للإيجار استراحة عبارة عن قسمين ‏رجال ونساء في ابحر الشمالية حي البحيرات مساحة الاستراحة 900 متر\r\n‏الأسعار تبدا من 1000 ريال لين 1700 ريال', NULL, '24.794213816803946', '46.6946406875', '99e97e61919c5afd4a82131f0b02a556.JPG', '', NULL, NULL, NULL, NULL, NULL, NULL, '15', '30', '30', 'marketed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, '5012463', NULL, 'للايجار ‏استراحة في حي البحيرات - للايجار ‏استراحة في حي البحيرات - جدة - استراحـــــــة - farms for sale - للايجار - ', '2022-10-25 18:22:54'),
(88, '11', 'شقه للبيع', NULL, 'حي الواحه مخطط سندس', NULL, '595', '1', 0, '2', 1, '2', NULL, '4', NULL, NULL, NULL, '3', '134', NULL, NULL, NULL, NULL, '1', NULL, 'yes', '1', NULL, NULL, NULL, NULL, 'yes', NULL, NULL, 'حي الواحه مخطط سندس\r\n٤غرف ٣دورت مياه\r\nوصاله ومطبخ\r\nمدخلين لشقه ////رقم جوال 0542469830\r\nخزان مستقل\r\nعداد كهرباء مستقل\r\nغرفه سواق خاص \r\nموقف خاص لشقه\r\nقدام الحديقه ومسجد ومدارس\r\nوقرب الخدمات وشارع العام\r\nالمساحه ١٣٤ في أصك\r\nوعلى الطبيعه ١٤٤\r\nالسعر ٥٩٥', NULL, '24.794213816803946', '46.6946406875', '26777486f869ad29edc51c9e434e5d40.jpg', '', NULL, '5', NULL, NULL, NULL, '1', '10', '4', '5', 'marketed', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9113232', NULL, 'شقه للبيع - حي الواحه مخطط سندس - جده - شقة - apartment\r\n - للبيع - ', '2022-10-01 23:06:57'),
(201, '7', 'فيلا دوبلكس بأبحر الشمالية - مخطط البندر', NULL, 'ابحر الشمالية - مخطط البندر', NULL, '2250000', '1', 0, '2', 3, '2', NULL, '9', NULL, NULL, NULL, '6', '478', NULL, NULL, NULL, NULL, '4', '4', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'فيلا دوبلكس\r\nبأبحر الشمالية - مخطط البندر بموقع مميز جداً\r\nأرقى حي بمنطقة أبحر\r\nالحي مجهز بكامل الخدمات أسفلت - رصيف - إضاءة - شبكات انترنت متعددة - عداد ماء \r\n\r\nالمواصفات:\r\nمساحة الارض 300 م٢ \r\nمساحة المباني 478 م٢\r\nموقع مميز تفتح مباشرةً على حديقة أمامية ومسجد وحديقتين غرب الموقع\r\nمسبح كبير\r\n5 غرف نوم\r\n\r\nمدخلين للڤيلا ومكونة من :\r\n\r\n- الدور الأرضي :\r\nصالون وغرفة طعام وصالة بنظام منطقة مفتوحة “ open space “ مطلة على حديقة داخلية ومسبح \r\n+ مطبخ وحمامين\r\n\r\n- الدور الأول :\r\nغرفة النوم الرئيسية بطول 12م X عرض 8 م مع غرفة للملابس مستقلة ٣٫٥٠x٣م مجهزة بالدواليب وحمام خاص ٥x٣٫٥م وجاكوزي وبوفيه صغير\r\n+\r\n٢ غرف نوم وحمام\r\n\r\n - الدور الثاني :\r\n2 غرف نوم وحمام \r\nغرفة خادمة مع حمام مطله على سطح صغير\r\n+بوفيه صغير \r\n+ سطح كبير بباب مستقل\r\n\r\nمميزات اضافية للڤيلا :\r\n\r\n- جميع الغرف الشبابيك كبيرة ٢x٢م تسمح بدخول الإضاءة الطبيعية للغرف\r\n\r\n- زجاج دبل فيس بني\r\n\r\n- ممر الحوش الخلفي مظلل ومعزول ضد الحرارة والمطر مع باب وتكييف\r\n\r\n- مظلة جراج سيارات\r\n\r\n- الواجهة حجر\r\n\r\n- 3 خزانات ماء بالسطح\r\n\r\n- مكيفات الصالات والصالون والمطبخ دكت\r\n\r\n- غرف النوم بمكيفات سبليت\r\n\r\n- جميع الإضاءة LED موفرة للطاقة\r\n\r\n- واجهة الڤيلا :\r\nجنوبية\r\nمطلة على حديقة ومسجد \r\nوحديقتين اخرى من الجهة الغربية\r\n\r\n- منافذ الڤيلا :  \r\nشارع الملك فيصل وشارع الامير عبدالله الفيصل وشارع الامير مشعل بن ماجد ونافذة لطريق المدينة وطريق الملك وطريق الحرمين\r\n\r\nالمطلوب : 2 مليون و250 ألف صافي\r\nرقم التواصل : 0507789666', NULL, '24.794213816803946', '46.6946406875', '3e00626848d94eb3ee1bea1be9e83b5d.jpeg', '', NULL, '4', '3', NULL, NULL, '0', '20', '0', '0', 'marketed', NULL, 'yes', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '205001', NULL, '2250000 - بأبحر الشمالية - مخطط البندر - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-11 18:50:27'),
(203, '7', 'فيلا دوبلكس بأبحر الشمالية', NULL, 'ابحر الشمالية', NULL, '1750000', '1', 0, '2', 3, '2', NULL, '8', NULL, NULL, NULL, '6', '262', NULL, NULL, NULL, NULL, '4', '3', 'yes', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'المساحة 262 متر\r\nالدور الأرضي\r\nمجلس رجال مع مغاسل ودورة مياه\r\nغرفة طعام \r\nمطبخ\r\nمجلس نساء مع مغاسل ودورة مياه\r\nمسبح \r\n\r\nالدور الأول \r\nغرفة النوم الرئيسية مع غرفة ملابس ودورة مياه\r\nغرفتين نوم كل غرفة لها بلكونة خاصة\r\nصالة كبيرة\r\nدورة مياه\r\n\r\nالملحق\r\nغرفة كبيرة مطلة على السطح \r\nغرفة نوم\r\nغرفة غسيل\r\nدورة مياة\r\nسطح أمامي كبير \r\nسطح خلفي صغير\r\n——————————\r\nتأسيس مصعد\r\nغرفة حارس\r\n\r\nالمطلوب مليون و750 الف\r\nرقم التواصل | 0507789666', NULL, '24.794213816803946', '46.6946406875', '55e1d4aaf929a66ba6cab78eff8df262.jpeg', '', NULL, '5', '3', NULL, NULL, '0', '20', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', 'الحـــــي', 'فيلا دوبلكس بأبحر الشمالية - ابحر الشمالية - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-28 18:32:52'),
(206, '7', 'عماره للبيع في حي مشرفة', NULL, 'جده | حى مشرفه', NULL, '2000000', '1', 0, '2', 9, '2', NULL, '10', NULL, NULL, NULL, NULL, '540', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'عماره للبيع في حي مشرفة مساحتها 540م واجهته شرقية\r\n16 شقه على النحو التالي :-\r\n1 شقه من 4 غرف وصاله\r\n5 شقق من غرفتين وصاله\r\n5شقق من غرفتين\r\n4 ملاحق من غرفه وصاله\r\n1 غرفه\r\n7 عدادت كهرباء\r\nالدخل السنوي :\r\nالدخل الشهري:\r\nالكهرباء على المالك\r\nالمطلوب 2 مليون صافي ونهائي‬\r\nالدخل السنوي:,284,000\r\nالدخل الشهري:23,700\r\nللتواصل | 0507789666', NULL, '24.794213816803946', '46.6946406875', '3a1f7d574db3f1f487d2a16fde93d843.jpeg', '', NULL, '2', '3', NULL, NULL, '10', '0', '20', '25', 'marketed', NULL, 'no', NULL, NULL, NULL, '16', NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'residential', NULL, NULL, NULL, NULL, NULL, '0507789666', NULL, 'عماره للبيع في حي مشرفة - جده | حى مشرفه - 2 - عمـــــــارة - floors for sale - للبيع - ', '2022-10-25 14:59:42'),
(207, '7', 'للبيع قصر مصغر حى الريان', NULL, 'جده | حى الريان', NULL, '5000000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '6', '750', NULL, NULL, NULL, NULL, '5', '7', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع قصر مصغر حى الريان عمره 8 سنوات المطلوب 5مليون قابله \r\nللتفاوض لمزيد من تفاصيل القصر مرفق الصور والتفاصيل كامله \r\n للتواصل ٠٥٠٧٧٨٩٦٦٦', NULL, '24.794213816803946', '46.6946406875', 'f1b7be0464468000932efe01a3e8cef7.jpeg', '', NULL, '6', '3', NULL, NULL, '8', '52', '30', '25', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '٠٥٠٧٧٨٩٦٦٦', NULL, 'للبيع قصر مصغر حى الريان - جده | حى الريان - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-25 15:47:07'),
(208, '7', 'للبيع فيلا مودرن حي الصواري', NULL, 'جده | ابحر الشماليه - حى الصواري', NULL, '2100000', '1', 0, '2', 3, '2', NULL, '8', NULL, NULL, NULL, '4', '370', NULL, NULL, NULL, NULL, '3', '2', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا مودرن (مفصولة)في أبحر الشمالية حي الصواري \r\nالتفاصيل كتالي:\r\nمساحة الارض 370متر\r\nشارع15\r\n\r\nالدور الارضي:\r\n(١)مسبح\r\n(١)مجلس رجال\r\n(١)مجلس نساء\r\n(١)صالة وسيعة\r\n(١)مطبخ\r\n(٢)حمامين\r\n\r\nالدور الاول:\r\n(٤)غرف\r\n(١)صالة\r\n(٣)حمامات \r\n\r\nالملحق:\r\n(٢)غرفتين\r\n(١)صالة\r\n(١)حمام\r\n(غرفة شغالة بحمام )\r\n\r\nيوجد تأسيس مصعد \r\nالسعر 2,100,000\r\nللتواصل :\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '494f7883c6d0e1bc0f752832bebaabb9.jpeg', '', NULL, NULL, NULL, NULL, NULL, NULL, '15', '15', '20', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', NULL, 'للبيع فيلا مودرن -  - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-25 16:16:24'),
(209, '7', 'شقه للايجار حى الصواري', NULL, 'ابحر الشمالية | حى الصواري', NULL, '28000', '1', 0, '1', 1, '2', NULL, '3', NULL, NULL, NULL, '2', '200', NULL, NULL, NULL, NULL, '1', NULL, 'yes', '1', NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'شقه للايجار حى الصواري ابحر الشماليه مكونه من 3 غرف\r\n2 حمام\r\nمطبخ امريكي راكب\r\nصاله\r\nحوش مفتوح علي الصاله . بدون الاثاث مطلوب 28 الف سنوى للتواصل 0507789666', NULL, '24.794213816803946', '46.6946406875', 'efb5a97f159993a3eef7c274473a83c1.jpeg', '', NULL, '1', NULL, NULL, NULL, '5', '15', '15', '30', 'marketed', 'families_families', 'no', 'annual', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', NULL, 'شقه للايجار - ابحر الشمالية | حى الصواري - 2 - شقة - apartment\r\n - للايجار - ', '2022-10-25 16:34:24'),
(210, '7', 'للإيجار فيلا دبلكس جديد مودرن', NULL, 'جده | حي الياقوت ابحر الشماليه', NULL, '90000', '1', 0, '1', 3, '2', NULL, '7', NULL, NULL, NULL, '5', '370', NULL, NULL, NULL, NULL, '2', '3', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للإيجار فيلا دبلكس جديد مودرن \r\nفي حي الياقوت ابحر الشماليه \r\nشارع غربي عرض ٣٠ متر مسفلت ومنور جديد مساحة الارض٣٧٠\r\nتتكون الفلا من دورين وملحق \r\nالدور الأرضي / مجالس استقبال  \r\nمجلس رجال ودوره مياه ومجلس وصاله نساء ودوره مياه ومطبخ ومسبح \r\nالدور الاول/  ٤ غرف نوم \r\nغرفه نوم ماستر بدوره مياه بالاضافه إلى ثلاث غرف نوم وصاله ودورتين مياه وسرفس \r\nالملحق/ غرفتين \r\nغرفتين نوم ودورتين مياه وسطوح \r\nيوجد مكيفات راكبه في جميع الفلا \r\nيوجد مسبح \r\nيوجد غرفه حارس \r\nمطلوب 90 ألف\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '0a942f31c337d3d42be50e29fa6ec461.jpeg', '', NULL, '3', '3', NULL, NULL, '0', '30', '15', '10', 'marketed', NULL, 'no', 'annual', 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', NULL, 'للإيجار فيلا دبلكس جديد مودرن - جده | حي الياقوت ابحر الشماليه - 2 - فيلا - apartment\r\n - للايجار - ', '2022-10-25 19:13:28'),
(211, '7', 'للبيع شقق تشطيب فاخر', NULL, 'جده | ابحر الشماليه -حي الصواري', NULL, '750000', '1', 0, '2', 1, '2', NULL, '5', NULL, NULL, NULL, '4', '155', NULL, NULL, NULL, NULL, '1', NULL, 'yes', '1', NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'للبيع شقق تشطيب فاخر في ابحر الشماليه (حي الصواري)\r\nمساحه 155 متر \r\nامام حديقه \r\nمدخلين \r\nخمس غرف وصاله \r\nمطبخ + غرفه شغاله \r\n4 دورات مياه \r\nموقف خاص \r\nخزان ارضي + خزان علوي خاص \r\nعداد مستقل \r\nيوجد مصعدين في العماره \r\nسعر الشقه الاماميه 750 الف \r\nسعر الشقه الخلفيه ب 720 الف\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '78bbf977f06a3009549904a422901098.jpeg', '', NULL, '1', NULL, NULL, NULL, '0', '20', '15', '20', 'marketed', 'families_families', 'no', NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', NULL, 'للبيع شقق تشطيب فاخر - جده | ابحر الشماليه -حي الصواري - 2 - شقة - apartment\r\n - للبيع - ', '2022-10-25 19:34:34'),
(212, '7', 'شقق تمليك في المدينه المنوره', NULL, 'المدينه المنوره | مخطط البدرانى', NULL, '0', '1', 0, '2', 1, '3', NULL, '5', NULL, NULL, NULL, '3', '200', NULL, NULL, NULL, NULL, '1', NULL, 'yes', '1', NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'شقق تمليك في المدينه المنوره مخطط البدرانى  تبعد عن الحرم النبوي  مسافة 7 كيلو باسعار  جدا مناسبه مساحة الشقه ٢٠٠ متر مكونه من 5 غرف ومستودع و٣ دورات  مياه داخل حد الحرم الاسعار من ٧٢٠ الف للتواصل  0500441232', NULL, '24.794213816803946', '46.6946406875', 'cc67ee1236a8a686feca486e7fc1df38.jpeg', '', NULL, '1', NULL, NULL, NULL, '0', '15', '50', '100', 'marketed', 'families_families', 'no', NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0500441232', NULL, 'شقق تمليك في المدينه المنوره - المدينه المنوره | مخطط البدرانى - 3 - شقة - apartment\r\n - للبيع - ', '2022-10-25 19:51:54'),
(213, '7', 'للبيع فيلا مودرن حي اللؤلؤه', NULL, 'جده | ابحر الشماليه - حي اللؤلؤة', NULL, '2550000', '1', 0, '2', 3, '2', NULL, '8', NULL, NULL, NULL, '6', '375', NULL, NULL, NULL, NULL, '4', '3', 'yes', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا مودرن في ابحرالشماليه ( حي اللؤلؤة)\r\nدبل هاي صاله الدور الاول\r\nقريبه من البحر و شارع عبدالله الفيصل \r\nامكانية روية البحر من سطح الفيلا \r\nمساحه /٣٧٥ م\r\nالدور الارضي / مدخلين \r\nصوالين مفتوحه عل مستويات بانخفاض و ارتفاع\r\n ومطبخ + غرفه الشغاله و الغسيل \r\n الدور الاول / ٣ غرف نوم كل غرفه بحمامها و \r\nوصاله  دبلوماسي عل الملحق \r\n الملحق / غرفتين نوم بحماماتها \r\n————-\r\nتكييف مركزي + مسبح + مصعد \r\n—-\r\nمطلوب / 2 مليون و 550 الف \r\n——-\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'c424b7b1941aec7c292294502a3089ff.jpeg', '', NULL, '3', '3', NULL, NULL, '0', '20', '20', '15', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', NULL, 'للبيع فيلا مودرن حي اللؤلؤه - جده | ابحر الشماليه - حي اللؤلؤة - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-25 20:15:03'),
(214, '8', 'للبيع فيلا مودرن فاخرة في أبحر الشمالية حي الصواري', NULL, 'للبيع فيلا مودرن فاخرة في أبحر الشمالية حي الصواري', NULL, '2200000', '1', 0, '2', 3, '2', NULL, '6', NULL, NULL, NULL, '7', '370', NULL, NULL, NULL, NULL, '3', '2', 'yes', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, NULL, NULL, '24.794213816803946', '46.6946406875', 'ab5aed10cb4630e907ef97e2d3f3d998.MOV', '', NULL, '4', '٣', NULL, NULL, NULL, '15', '12', '25', 'marketed', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع فيلا مودرن فاخرة في أبحر الشمالية حي الصواري - للبيع فيلا مودرن فاخرة في أبحر الشمالية حي الصواري - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-26 20:24:49'),
(217, '7', 'للبيع عماره سكنيه وتجارية', NULL, 'رابغ - حي الصمد', NULL, '2350000', '1', 0, '2', 9, '43', NULL, '15', NULL, NULL, NULL, NULL, '1200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع عماره فى رابغ  سكنيه وتجارية مواصفاتها ٤ محلات داخليه فاضيه ، ٩ محلات مؤجره بمبلغ ١٢٧٠٠٠ ، عدد ١٢ شقه مؤجره بمبلغ ٨٧٠٠٠ ، إجمالي دخل العماره الحالي ٢١٤٠٠٠ ، شقه واحده فاضيه ، مساحة الا ض 1200 ميار مربع  40x30 ، 2 مليون ونصف اقل مبلغ 2 مليون وثلاثمائة الف ريال صافي  . للتواصل 0504350074', NULL, '24.794213816803946', '46.6946406875', 'eb97facab55690b8d8ceb51d39c6a0dc.jpeg', '', NULL, '1', '3', NULL, '9', '5', '20', '30', '40', 'agent', NULL, 'no', NULL, NULL, NULL, '12', NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'res_comm', NULL, NULL, NULL, NULL, NULL, '0504350074', '60', 'للبيع عماره سكنيه وتجارية - رابغ - حي الصمد - 43 - عمـــــــارة - floors for sale - للبيع - ', '2022-10-28 17:29:02'),
(218, '7', 'لبيع فلل مودرن فاخرة حي الياقوت', NULL, 'ابحر الشماليه | حي الياقوت', NULL, '1800000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '8', '262', NULL, NULL, NULL, NULL, '4', '3', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فلل مودرن فاخرة في ابحرالشماليه (حي الياقوت)\r\nمساحة الارض 262\r\nالدور الارضي :\r\nمدخلين نساء ورجال\r\n(١)مسبح\r\n(١)مجلس رجال\r\n(١)صالة وسيعه\r\n(١)مطبخ\r\n(٢)حمامين \r\n\r\nالدور الاول :\r\n(٤)غرف \r\n(١)صالة\r\n(٣)حمامات\r\n\r\nالملحق:\r\n(٢)غرفتين نوم\r\n(١)صالة\r\n(١)حمام\r\nسطوح\r\n \r\nيوجد تأسيس مصعد\r\nالسعر 1,800,000\r\n0555013819', NULL, '22.094093310559284', '39.17277900000001', '9bc1a0757cc9d9568a2ea71735540adf.jpeg', '', NULL, '2', '3', NULL, NULL, '0', '20', '15', '20', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '55', 'لبيع فلل مودرن فاخرة حي الياقوت - ابحر الشماليه | حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-28 17:39:24'),
(219, '7', 'للبيع فيلا مودرن منفصله حي الزمرد', NULL, 'جده | ابحر الشمالية -  حي الزمرد', NULL, '1650000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '6', '312', NULL, NULL, NULL, NULL, '5', '4', 'yes', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا مودرن في ابحر الشمالية حي الزمرد \r\n• مساحة : ٣١٢ م \r\n• الواجهة : شمال \r\n• منفصلة \r\n• شارع : ١٦ م\r\n\r\n• الدور الأرضي :\r\nمجلس رجال + مجلس نساء + صاله كبيره + مطبخ + ٢ دورة مياه + مصعد موساس \r\n------------------------------------\r\n• الدور الأول :\r\n٢ غرفة نوم ماستر بحمام + ٢ غرفة ملابس + ٢ غرفة نوم بحمام مشترك + صاله\r\n------------------------------------\r\n• الملحق :\r\nغرفة نوم  + غرفة غسيل + ٢حمام + صاله + سطح ..\r\n\r\n• موقف خاص\r\n• مسبح\r\n• مصعد \r\n\r\n• يتميز الموقع بالهدوء والنظافة وقربه من الخدمات.\r\n• تمّ بناء الفيلا وتشطيبها بأجود وأفضل المواد والقطع المتوفرة.\r\n• ضمان على السباكة و الكهرباء و الدهانات و الخزانات.\r\nالسعر 1,650,000\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'c97ea6de678fe7ec91b9c9c55515cd47.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '16', '15', '20', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '55', 'للبيع فيلا مودرن منفصله حي الزمرد - جده | ابحر الشمالية -  حي الزمرد - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-28 17:46:03'),
(220, '7', 'للبيع فيلا متصله حي الزمرد', NULL, 'جده | ابحر الشمالية -  حي الزمرد', NULL, '1800000', '1', 0, '2', 3, '2', NULL, '9', NULL, NULL, NULL, '6', '312', NULL, NULL, NULL, NULL, '4', '3', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'حي \r\nالزمرد \r\nفيلا متصله مساحه 312 مبنيه على مجمل المساحه الدور الارضي مجلس ومقلط للرجال ودوره مياه  .ومجلس النساء كبير مع دوره مياه مع مطبخ الدور الاول اربع غرف نوم ثلاث دورات المياه وصاله وسيرفس  الملحق غرفه كبيره مع دوره مياه وصاله وغرفه خادمه مع دوره مياه وغرفه غسيل عدد الاسطح اثنان امامي وخلفي يوجد بالحوش حديقه مشجره مع امكانيه عمل مسبح في هذه المنطقه الشارع 15 تطل على حديقه كبيره\r\n\r\nمطلوب مليون و 800 الف صافي \r\n0507789666', NULL, '24.794213816803946', '46.6946406875', '77276c1aa6ea2b96055259411abd75a6.jpeg', '', NULL, '2', '2', NULL, NULL, '0', '15', '15', '30', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '55', 'للبيع فيلا متصله حي الزمرد - جده | ابحر الشمالية -  حي الزمرد - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-28 17:54:34'),
(221, '7', 'للبيع فيلا مستعملة (حي الياقوت 1)', NULL, 'جده | ابحر الشمالية - حي الياقوت', NULL, '2600000', '1', 0, '2', 3, '2', NULL, '9', NULL, NULL, NULL, '6', '400', NULL, NULL, NULL, NULL, '4', '3', 'yes', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'للبيع فيلا مستعملة (حي الياقوت 1) \r\nبناء شخصي  \r\n\r\nمساحة الأرض: 400 متر\r\nمساحة البناء : 720 \r\n\r\nعدد الأدوار : دورين وملحق \r\nعمر البناء : 4 سنين  \r\n\r\nالدور الأرضي : \r\nمجلس رجال \r\nمجلس نساء \r\nعدد ٢ حمام \r\nمطبخ كبير \r\nصالة\r\nمدخلين \r\nالدور الأول : \r\n(٤) غرف نوم \r\n واحده منها ماستر مع حمام \r\n٣ حمامات \r\nصالة \r\nمطبخ\r\n \r\nالدور الثاني: \r\n٢ غرف نوم\r\nغرفة غسيل\r\n٢ حمام \r\nصالة كبيره \r\nسطح \r\n \r\nيوجد غرفة سائق وغرفة مخزن ومصعد مركب وتكييف مركزي الدور الاول والثاني والدور الارضي رخام بكامل .\r\nمطلوب ٢ مليون ٦٠٠ صافي\r\nرقم التواصل 0507789666', NULL, '24.794213816803946', '46.6946406875', 'c0940d8c1cbfd63f2081f9e8e2cf7bee.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '20', '20', '40', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '55', 'للبيع فيلا مستعملة (حي الياقوت 1) - جده | ابحر الشمالية - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-28 18:01:40'),
(222, '7', '‏للبيع فيلا مودرن حي الياقوت', NULL, 'جده | ابحر الشمالية - حي الياقوت', NULL, '1650000', '1', 0, '2', 3, '2', NULL, '9', NULL, NULL, NULL, '8', '262', NULL, NULL, NULL, NULL, '4', '5', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, '‏للبيع فيلا مودرن في ابحر الشمالية حي الياقوت\r\nمساحة الارض 262\r\nالسعر 1,650,000\r\n‏الدور الأرضي ‏التفاصيل كالتالي\r\n\r\n‏مجلس رجال دورة مياه \r\n‏الصالة وسيعة بدورة مياه \r\n‏يوجد مسبح \r\n‏مطبخ \r\n\r\n‏الدور الأول \r\n‏أربع غرف نوم \r\n‏ثلاثة حمامات \r\n‏صاله\r\n\r\n‏الملحق\r\n غرفة نوم حمام\r\n‏غرفة شغالة وحمام \r\n‏سطوح \r\n‏يوجد تأسيس مصعد\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'ff0ebaf3029e0f2838574f3dbd2452b5.jpeg', '', NULL, '3', '3', NULL, NULL, '0', '15', '30', '20', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '55', '‏للبيع فيلا مودرن حي الياقوت - جده | ابحر الشمالية - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-28 18:07:34'),
(223, '7', 'شقه للايجار  بأبحر الشماليه', NULL, 'جده | ابحر الشماليه', NULL, '20000', '1', 0, '1', 1, '2', NULL, '4', NULL, NULL, NULL, '2', '185', NULL, NULL, NULL, NULL, '1', NULL, 'no', '1', NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'شقه للايجار  بأبحر الشماليه  مكونه من  4غرفه 2حَمام  و1 مطبخ  المطلوب 20 الف سنوى للتواصل على الرقم الواتس 0507789666', NULL, '24.794213816803946', '46.6946406875', 'd8a8ee41ebbccaf4c2c9db7391793f63.jpeg', '', NULL, '1', NULL, NULL, NULL, '5', '15', '30', '40', 'marketed', 'families_families', 'no', 'annual', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '55', 'شقه للايجار  بأبحر الشماليه - جده | ابحر الشماليه - 2 - شقة - apartment\r\n - للايجار - ', '2022-10-28 18:13:23'),
(224, '7', 'فلل دورين وملحق فى الحمدانيه', NULL, 'جده | الحمدانية مخطط السعيد', NULL, '1450000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '8', '300', NULL, NULL, NULL, NULL, '7', '6', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'فلل دورين وملحق \r\nالحمدانية مخطط السعيد\r\nمساحة ٣٠٠ \r\nشغل شخصي و تشطيب فاخر \r\nالدور الارضي \" \r\nمجلس رجال مع حمام ومغسلة خاصه +مقلط+ مجلس نساء مع الصاله مفتوحه كبير جداً مع مدخل جانبي خاص و دورات مياه ومغسلة خاصه / مطبخ كبير +حوشين\r\nالدور الاول \" \r\nجناح نوم رئيسي +جناح نوم خاص + غرفتين ودورت مياه +صالة + سريفس+حوش صغير\r\nالملحق \" \r\nجناح نوم +غرفة غسيل +سطح + صالة + حوش\r\n\r\nمؤسس مصعد \r\nيوجد غرفة حارس \r\nيوجد مدخل لسيارة \r\nضمانات على السباكة والكهرباء \r\nالفلل مزودة بكاميرات و بنظام مراقبة متكامل\r\n\r\nمطلوب مليون و٤٥٠/الف\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'f53818165fd06619de8ebea503f5de6d.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '20', '30', '25', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '58', 'فلل دورين وملحق فى الحمدانيه - جده | الحمدانية مخطط السعيد - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-28 18:21:14'),
(225, '7', 'للبيع فيلا مودرن فى ابحر الشمالية', NULL, 'جده | ابحر الشمالية', NULL, '1750000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '6', '262', NULL, NULL, NULL, NULL, '5', '4', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'المساحة 262 متر\r\nالدور الأرضي\r\nمجلس رجال مع مغاسل ودورة مياه\r\nغرفة طعام \r\nمطبخ\r\nمجلس نساء مع مغاسل ودورة مياه\r\nمسبح \r\n\r\nالدور الأول \r\nغرفة النوم الرئيسية مع غرفة ملابس ودورة مياه\r\nغرفتين نوم كل غرفة لها بلكونة خاصة\r\nصالة كبيرة\r\nدورة مياه\r\n\r\nالملحق\r\nغرفة كبيرة مطلة على السطح \r\nغرفة نوم\r\nغرفة غسيل\r\nدورة مياة\r\nسطح أمامي كبير \r\nسطح خلفي صغير\r\n——————————\r\nتأسيس مصعد\r\nغرفة حارس\r\n\r\nالمطلوب مليون و750 الف\r\nرقم التواصل | 0507789666', NULL, '24.794213816803946', '46.6946406875', 'f6031e5abf2d52417cf49649ce3e60f7.jpeg', '', NULL, '2', '3', NULL, NULL, '0', '20', '20', '15', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '55', 'للبيع فيلا مودرن فى ابحر الشمالية - جده | ابحر الشمالية - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-28 18:30:58'),
(226, '7', 'للبيع فيلا دوبلكس مخطط البندر', NULL, 'جده | ابحر الشمالية - مخطط البندر', NULL, '2250000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '6', '300', NULL, NULL, NULL, NULL, '8', '6', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'فيلا دوبلكس\r\nبأبحر الشمالية - مخطط البندر بموقع مميز جداً\r\nأرقى حي بمنطقة أبحر\r\nالحي مجهز بكامل الخدمات أسفلت - رصيف - إضاءة - شبكات انترنت متعددة - عداد ماء \r\n\r\nالمواصفات:\r\nمساحة الارض 300 م٢ \r\nمساحة المباني 478 م٢\r\nموقع مميز تفتح مباشرةً على حديقة أمامية ومسجد وحديقتين غرب الموقع\r\nمسبح كبير\r\n5 غرف نوم\r\n\r\nمدخلين للڤيلا ومكونة من :\r\n\r\n- الدور الأرضي :\r\nصالون وغرفة طعام وصالة بنظام منطقة مفتوحة “ open space “ مطلة على حديقة داخلية ومسبح \r\n+ مطبخ وحمامين\r\n\r\n- الدور الأول :\r\nغرفة النوم الرئيسية بطول 12م X عرض 8 م مع غرفة للملابس مستقلة ٣٫٥٠x٣م مجهزة بالدواليب وحمام خاص ٥x٣٫٥م وجاكوزي وبوفيه صغير\r\n+\r\n٢ غرف نوم وحمام\r\n\r\n - الدور الثاني :\r\n2 غرف نوم وحمام \r\nغرفة خادمة مع حمام مطله على سطح صغير\r\n+بوفيه صغير \r\n+ سطح كبير بباب مستقل\r\n\r\nمميزات اضافية للڤيلا :\r\n\r\n- جميع الغرف الشبابيك كبيرة ٢x٢م تسمح بدخول الإضاءة الطبيعية للغرف\r\n\r\n- زجاج دبل فيس بني\r\n\r\n- ممر الحوش الخلفي مظلل ومعزول ضد الحرارة والمطر مع باب وتكييف\r\n\r\n- مظلة جراج سيارات\r\n\r\n- الواجهة حجر\r\n\r\n- 3 خزانات ماء بالسطح\r\n\r\n- مكيفات الصالات والصالون والمطبخ دكت\r\n\r\n- غرف النوم بمكيفات سبليت\r\n\r\n- جميع الإضاءة LED موفرة للطاقة\r\n\r\n- واجهة الڤيلا :\r\nجنوبية\r\nمطلة على حديقة ومسجد \r\nوحديقتين اخرى من الجهة الغربية\r\n\r\n- منافذ الڤيلا :  \r\nشارع الملك فيصل وشارع الامير عبدالله الفيصل وشارع الامير مشعل بن ماجد ونافذة لطريق المدينة وطريق الملك وطريق الحرمين\r\n\r\nالمطلوب : 2 مليون و250 ألف صافي\r\nرقم التواصل | 0507789666', NULL, '24.794213816803946', '46.6946406875', 'dac83dca2fb32e12f005678cfd76e6ff.jpeg', '', NULL, '4', '3', NULL, NULL, '0', '20', '20', '30', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '55', 'للبيع فيلا دوبلكس مخطط البندر - جده | ابحر الشمالية - مخطط البندر - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-28 18:49:34'),
(227, '7', 'للبيع فيلا مودرن حي اللؤلؤه', NULL, 'جده | ابحر الشماليه - حي اللؤلؤة', NULL, '1450000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '6', '200', NULL, NULL, NULL, NULL, '5', '4', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'ابحرالشماليه حي اللؤلؤه \r\nمساحة الارض٢٠٠متر\r\nالسعر 1,450,000\r\nالتفاصيل كتالي:\r\nالدورالارضي \r\nمجلس رجال\r\nصالة وسيعه\r\nمطبخ\r\nحمامين\r\nمسبح\r\nمدخلين\r\n\r\nالدور الاول \r\n(٣)غرف نوم\r\n(٣)حمامات\r\n(١)صالة\r\n\r\nالملحق \r\n(١)غرفة\r\n(١)حمام\r\nغرفة شغالة بحمام\r\n\r\nيوجد تاسيس مصعد\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '5537eaf86577478c4a3b80f597b54146.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '20', '15', '10', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '55', 'للبيع فيلا مودرن حي اللؤلؤه - جده | ابحر الشماليه - حي اللؤلؤة - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-28 18:55:33'),
(228, '7', 'للبيع فيلا مستعملة حي الياقوت 1', NULL, 'جده | ابحر الشماليه - حي الياقوت', NULL, '2600000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '6', '400', NULL, NULL, NULL, NULL, '5', '4', 'yes', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'للبيع فيلا مستعملة (حي الياقوت 1) \r\nبناء شخصي  \r\n\r\nمساحة الأرض: 400 متر\r\nمساحة البناء : 720 \r\n\r\nعدد الأدوار : دورين وملحق \r\nعمر البناء : 4 سنين  \r\n\r\nالدور الأرضي : \r\nمجلس رجال \r\nمجلس نساء \r\nعدد ٢ حمام \r\nمطبخ كبير \r\nصالة\r\nمدخلين \r\nالدور الأول : \r\n(٤) غرف نوم \r\n واحده منها ماستر مع حمام \r\n٣ حمامات \r\nصالة \r\nمطبخ\r\n \r\nالدور الثاني: \r\n٢ غرف نوم\r\nغرفة غسيل\r\n٢ حمام \r\nصالة كبيره \r\nسطح \r\n \r\nيوجد غرفة سائق وغرفة مخزن ومصعد مركب وتكييف مركزي الدور الاول والثاني والدور الارضي رخام بكامل .\r\nمطلوب ٢ مليون ٦٠٠ صافي\r\nرقم التواصل 0507789666', NULL, '24.794213816803946', '46.6946406875', '8c02101c9206413bdb105a0139327658.jpeg', '', NULL, '1', '3', NULL, NULL, '4', '20', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '55', 'للبيع فيلا مستعملة حي الياقوت 1 - جده | ابحر الشماليه - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-28 19:05:07'),
(229, '7', 'فيلا دوبلكس فاخرة للبيع حي الياقوت', NULL, 'جده | ابحر الشمالية - حي الياقوت', NULL, '1900000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '8', '312', NULL, NULL, NULL, NULL, '6', '7', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'فيلا دوبلكس فاخرة للبيع  \r\n بناء شخصي \r\n\r\nالموقع/ أبحر الشمالية حي الياقوت - خلف ماكدونالدز  بعابر القارات،،\r\nالمساحة:  ٣١٢.٥ م٢\r\nمساحة المباني: ٥٤٠م٢\r\nدورين وملحق\r\n\r\n- [ ] الدور الارضي يتكون من :\r\nقسم الرجال:\r\n- مجلس رجال \r\n- غرفة طعام رجال\r\n- حمام \r\nقسم النساء:\r\n- صالة كبيرة مفتوحة على المسبح \r\n- مطبخ \r\n- حمام \r\n- [ ] الدور الأول يتكون من\r\n(صالة+ ٤ غرف نوم+ ٤ حمامات) على النحو التالي:\r\n- صالة كبيرة\r\n- غرفة نوم رئيسية بحمام ( ماستر) \r\n- غرفة نوم أطفال مستقلة بحمام\r\n- غرفة نوم بحمام \r\n- غرفة نوم \r\n- حمام \r\n- سيرفس صغير \r\n\r\n- [ ] الملحق يتكون من/\r\n- صالة كبيرة\r\n- غرفة نوم \r\n- غرفة شغالة بحمام\r\n- غرفة غسيل \r\n- مستودع \r\n- حمام\r\n- سطح \r\nالمواصفات :\r\n- مسبح كبير \r\n- تأسيس مصعد\r\n- موقف سيارة \r\n- سمارت هوم ( تأسيس نظام ذكي للأبواب والستائر والكهرباء )\r\n- دخول ذكي\r\n- سيفتي هوم ( نظام أمن مراقبة وإنذار الحريق) \r\n- بناء شخصي وبأفضل المواد\r\n- ضمان معماري على المباني ١٠ سنوات \r\n- ضمان المواد ( الوكيل )\r\n- تصوير جميع مراحل البناء \r\n- صك الكتروني جاهز للإفراغ \r\nالسعر مليون و٩٠٠ الف ريال صافي\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '27dffedd1b3fe149c2ec6e85d50e7073.jpg', '', NULL, '1', '3', NULL, NULL, '0', '20', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '55', 'فيلا دوبلكس فاخرة للبيع حي الياقوت - جده | ابحر الشمالية - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-28 19:36:55'),
(230, '7', 'للبيع فيلا  \"نظام شقق\" في  حي الزمرد', NULL, 'جده | ابحر الشمالية -  حي الزمرد', NULL, '1900000', '1', 0, '2', 3, '2', NULL, '8', NULL, NULL, NULL, '6', '312', NULL, NULL, NULL, NULL, '5', '4', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'للبيع فيلا  \"نظام شقق\" في ابحرالشماليه حي الزمرد\r\nمساحة الارض٣١٢.٥\r\nالسعر 1,900,000\r\n\r\n\r\n\"الدورالارضي\"\r\n\r\n(٤)غرف\r\n(١)صالة\r\n(٣)حمامات\r\n(١)مطبخ\r\nمدخلين\r\n\r\n\r\n\"الدورالاول\"\r\n\r\n(٥)غرف \r\n(١)صالة\r\n(٣)حمامات \r\n(١)مطبخ \r\n\r\n\r\n\"الملحق\"\r\n(١)غرفة\r\n(١)مطبخ\r\n(١)حمام\r\n(١)صالة وسيعه \r\nسطح امامي وخلفي\r\n\r\nيوجد ‏تأسيس مصعد\r\n‏غرفة سائق \r\n\r\nمعلن 1236100\r\nللاستفسار 0555013819', NULL, '24.794213816803946', '46.6946406875', 'b26fd9b03fac4a37de724fd81dd1a845.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '20', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1236100', '55', 'للبيع فيلا  \"نظام شقق\" في  حي الزمرد - جده | ابحر الشمالية -  حي الزمرد - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-28 19:52:46'),
(231, '7', 'للبيع فيلا مودرن حي الزمرد', NULL, 'جده | ابحر الشمالية -  حي الزمرد', NULL, '1550000', '1', 0, '2', 3, '2', NULL, '15', NULL, NULL, NULL, '6', '300', NULL, NULL, NULL, NULL, '5', '4', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'فلة سكنية\r\nدورين وملحق\r\nم. الأرض : 300 م٢\r\nأطوالها :24\r\nعرضها :12.5\r\nالمنطقة :مكة المكرمة\r\nالمدينة :جدة\r\nالحي : أبحر الشمالية _ الزمرد\r\nالواجهه : شرقية\r\nشارع : 32م٢\r\nالدور الأرضي:\r\nمجلس رجال  + مقلط + مطبخ عربي + صالة نساء + مجلس نساء + تأسيس مصعد + (٢) دورات مياه + جلسة \r\nالدور الأول:\r\n( ٢ ) ماستر غرفة نوم رئيسية + غرفتين نوم بحمام مشترك + صالة + سيرفس \r\nالملحق\r\nغرفتين نوم بحمام مشترك + الصالة + منطقة غسيل + غرفة خادمة + السطح\r\n\r\nالسعر : 1.550.000\r\n\r\nرقم التواصل 0507789666', NULL, '24.794213816803946', '46.6946406875', '51a784694a1060e905a97bd6b5daa1de.JPG', '', NULL, '2', '3', NULL, NULL, '0', '32', '24', '12', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '55', 'للبيع فيلا مودرن حي الزمرد - جده | ابحر الشمالية -  حي الزمرد - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-28 20:21:35'),
(232, '7', 'للبيع فيلا مودرن في حي الصواري', NULL, 'جده | ابحر الشمالية -  حي الصواري', NULL, '1800000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '6', '312', NULL, NULL, NULL, NULL, '5', '4', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'للبيع فيلا مودرن في (حي الصواري)ابحرالشماليه \r\nمساحة الارض ٣١٢.٥\r\nالسعر 1,800,000\r\n\r\nالدور الارضي :\r\n(١)غرفة سائق\r\n(١)مسبح\r\n(١)مطبخ\r\n(١)مجلس رجال\r\n(١)مجلس نساء\r\n(١)صالة\r\n(٢)حمامين\r\n\r\nالدور الاول:\r\n(٤)غرف نوم\r\n(٣)حمامات\r\n(١)صالة\r\n(١)سيرفيس\r\n\r\nالملحق:\r\n(٢)غرفتين \r\n(١)صالة\r\n(١)غرفة شغالة\r\n(١)غرفة غسيل\r\n\r\n\r\nمعلن ١٢٣٦١٠٠\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '50c679475e0c3f6847af4555b11a09dd.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '20', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '١٢٣٦١٠٠', '55', 'للبيع فيلا مودرن في حي الصواري - جده | ابحر الشمالية -  حي الصواري - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-28 20:43:39'),
(233, '7', 'شقه تمليك  للبيع في الصفا', NULL, 'جده | حى الصفا', NULL, '370000', '1', 1, '2', 1, '2', NULL, '4', NULL, NULL, NULL, '2', '0', NULL, NULL, NULL, NULL, '1', NULL, 'yes', '1', NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'شقه تمليك  للبيع في الصفا\r\nمكونه من\r\n٤ غرف و صاله و مطبخ و دورتين مياه\r\nوجهتها أماميه\r\nمطلوب ٣٧٠ الف صافي\r\n٠٥٠٧٧٨٩٦٦٦', NULL, '24.794213816803946', '46.6946406875', '9c1f9857bd5c6c3198743098b0c2db75.jpeg', '', NULL, '1', NULL, NULL, NULL, '0', '0', '0', NULL, 'marketed', 'families_families', 'no', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '٠٥٠٧٧٨٩٦٦٦', '30', 'شقه تمليك  للبيع في الصفا - جده | حى الصفا - 2 - شقة - apartment\r\n - للبيع - ', '2022-11-04 09:12:04'),
(234, '7', 'للبيع فيلا مودرن في  (حي الصواري)', NULL, 'جده | ابحر الشمالية -  حي الصواري', NULL, '1650000', '1', 0, '2', 3, '2', NULL, '9', NULL, NULL, NULL, '6', '300', NULL, NULL, NULL, NULL, '5', '4', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'للبيع فيلا مودرن في أبحر الشمالية (حي الصواري)\r\nمساحة الارض ٣٠٠متر\r\nشارع ١٦ شرقي\r\nالسعر 1,650,000\r\nمسبح\r\nغرفة سائق\r\nتأسيس مصعد\r\nالدور الارضي \r\n(١)مجلس رجال\r\n(١)مجلس نساء \r\n(١)صالة وسيعه \r\n(١)مطبخ\r\n(٢)حمامين\r\n\r\nالدور الاول \r\n(٤)غرف نوم\r\n(١)صالة\r\n(٣)حمامات\r\n\r\nالملحق \r\n(٢)غرفتين \r\n(١)صالة\r\n(٢)حمامين\r\n(١)غرفة غسيل \r\nغرفة شغالة\r\n\r\nمعلن1236100\r\n\r\nللاستفسار 0555013819', NULL, '24.794213816803946', '46.6946406875', '553cdaf77b00d1dd20ee5b6b086fff50.JPG', '', NULL, '2', '3', NULL, NULL, '0', '16', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1236100', '55', 'للبيع فيلا مودرن في  (حي الصواري) - جده | ابحر الشمالية -  حي الصواري - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-28 21:57:01');
INSERT INTO `offers` (`id`, `advertiser`, `name_ar`, `name_en`, `address_ar`, `address_en`, `price`, `currency`, `status`, `category`, `type`, `city`, `parking`, `bedroom`, `bathroom`, `bedroom_bathroom`, `bedroom_hall`, `bath`, `sqft`, `health_ar`, `health_en`, `education_ar`, `education_en`, `hall`, `board`, `elevator`, `kitchen`, `services`, `adaptation`, `badron`, `swimming_pool`, `driver_room`, `servant_room`, `laundry_room`, `text_ar`, `text_en`, `lat`, `lng`, `picture`, `floor`, `district`, `face`, `floors`, `carpark`, `shops`, `property_age`, `street_width`, `length`, `width`, `advertiser_relationship`, `families`, `furnished`, `rental_term`, `car_entrance`, `property_floor_no`, `apartment`, `hall_stair`, `verse`, `cellar`, `duplex`, `area`, `appendix`, `football_stadium`, `volleyball_court`, `amusement_park`, `families_category`, `purpose`, `number_of_wells`, `number_of_trees`, `store_number`, `flat_apartment`, `floor_balance`, `advertiser_phone`, `neighborhood`, `search`, `updated_at`) VALUES
(235, '7', 'للبيع فيلا دورين وملحق في حي الياقوت', NULL, 'جده | ابحر الشمالية -  حي الياقوت', NULL, '1600000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '6', '275', NULL, NULL, NULL, NULL, '5', '4', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا دورين وملحق في أبحر الشمالية حي الياقوت \r\n\r\nمساحة الارض٢٧٥متر\r\n‎1,600,000السعر\r\nالدور الارضي:\r\nمدخلين \r\nغرفة سائق\r\n(١)مجلس رجال\r\n(١)مجلس نساء\r\n(١)صالة وسيعة\r\n(١)مطبخ\r\n(٢)حمامين\r\nمسبخ \r\n\r\nالدورالاول \r\n(٤)غرف نوم\r\n(١)صالة\r\n(٣)حمامات \r\nسيرفيس \r\n\r\nالملحق:\r\n\r\n(٢)غرفتين \r\n(١)صالة\r\n(١)حمام\r\n\r\nمعلن ١٢٣٦١٠٠\r\nللاستفسار 0555013819', NULL, '24.794213816803946', '46.6946406875', 'c7f223c14dc167105221234425dc84e8.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '20', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '55', 'للبيع فيلا دورين وملحق في حي الياقوت - جده | ابحر الشمالية -  حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-28 22:09:28'),
(236, '7', 'للبيع فيلا فاخره في (حي الياقوت)', NULL, 'جده | ابحر الشمالية - حي الياقوت', NULL, '1700000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '6', '287', NULL, NULL, NULL, NULL, '5', '5', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا فاخره في أبحر الشمالية (حي الياقوت)\r\n\r\nمساحة الارض 287\r\n\r\nالدور الارضي\r\nمسبح \r\nتأسيس مصعد \r\nمطبخ\r\nحمامين \r\nمجلس رجال \r\nمجلس نساء \r\nصالة وسيعه \r\n\r\nالدور الاول \r\n(٤)غرف نوم\r\n(١)صالة \r\n(٣)حمامات\r\n\r\n\r\nالملحق\r\n(٢)غرفتين \r\n(١)صالة\r\n(١)حمام\r\n(١)غرفة غسيل\r\nسطوح\r\nالسعر 1,700,000\r\n\r\nمعلن ١٢٣٦١٠٠\r\nللاستفسار 0555013819', NULL, '24.794213816803946', '46.6946406875', 'd71bda4ea4352378ca40dde66b47b0b3.JPG', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '١٢٣٦١٠٠', '55', 'للبيع فيلا فاخره في (حي الياقوت) - جده | ابحر الشمالية - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-28 22:20:28'),
(237, '7', 'للبيع فلل دورين وملحق فى الرحمانية', NULL, 'جده | حي الرحمانية', NULL, '1600000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '0', NULL, NULL, NULL, NULL, '5', '4', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'دورين وملحق مدخلين\r\nالدور الاول مجلسين ومقلط وصاله ومطبخ كبير ودورتين مياه\r\nالدور الثاني اربع غرف نوم ٣ دورات مياه وصاله\r\nالملحق غرفتين وصاله وسيرفس\r\nودورة مياه والسطح\r\nشلال\r\nغرفة سايق\r\nمدخل سياره\r\nمطلوب في الفلل على شارعين \r\nمليون و ٦٠٠ الف \r\nو الفلل على شارع واحد مليون و ٥٨٠ الف صافي\r\nللتواصل 0507789666', NULL, '24.794213816803946', '46.6946406875', '61c47831c292438988164047dd774723.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '61', 'للبيع فلل دورين وملحق فى الرحمانية - جده | حي الرحمانية - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-29 19:52:35'),
(238, '7', 'فلل دورين وملحق فى حى الشراع', NULL, 'جده | ابحر الشمالية -  حي الشراع', NULL, '1950000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '6', '300', NULL, NULL, NULL, NULL, '5', '5', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, '/ ڤيلا منفصلة + ٢ ڤيلا دوبلكس \r\nحي الشراع - أبحر الشمالية \r\n\r\nمساحة الارض ٣٠٠ م \r\nمساحة المباني ٥٨٠ م مربع \r\n\r\nالڤيلا عبارة عن دورين + ملحق + مسبح + درج داخلي + مصعد مؤسس \r\n الملحق عبارة عن شقة منفصلة ( سويت )\r\nتصميم حديث واجهات وارضيات رخامية \r\nتكييف مركزي لمجلس الرجال في الدور الارض + الماستر رووم\r\nتشطيب فندقي عالي الجودة \r\nاشراف هندسي متكامل للمشروع وضمانات على المباني والتأسيس لسنين طويلة  \r\nموقع مميز وحيوي جداً في حي راقي قريب من طريق الامير نايف \r\nسعر الڤيلا المنفصلة / ٢ مليون و ٢٠٠ ريال \r\nسعر الڤيلا الدوبلكس مليون و ٩٥٠ الف  \r\nالاسعار قابلة للتفاوض ..\r\nللتواصل على 0507789666', NULL, '24.794213816803946', '46.6946406875', '61ab668784d596f5b0196b635800664e.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '25', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '45', 'فلل دورين وملحق فى حى الشراع - جده | ابحر الشمالية -  حي الشراع - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-30 18:33:29'),
(239, '7', 'روف للبيع فى حى النهضه', NULL, 'جده | حي النهضه', NULL, '5000000', '1', 0, '2', 9, '2', NULL, '10', NULL, NULL, NULL, NULL, '720', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'روف للبيع فى حى النهضه . مواصفتها هيئة العقار من ناحية الموقع نظير طريق الملك العام قريب جداً من الرد سي مول العمارة في حالة ممتازة تحت اشراف اتحاد الملاك متوفر الماء دون انقطاع مساحة الروف 720 م مربع يحتوي على 10غرفة وسته حمامات ومطبخ كبير وجناح للخدم غرفتين وحمام وغرفة سائق وموقفين للسيارة مطلوب في الوقت الحاضر خمسة مليون ريال قابل للمفاوضة اذا كان المشتري جـاد وللمشتري الحق في معاينة الموقع \r\nللتواصل | 0507789666', NULL, '24.794213816803946', '46.6946406875', '8ab2d90deec3e33e73446d977fca6cdc.jpeg', '', NULL, '3', '4', NULL, NULL, '0', '35', '0', '0', 'marketed', NULL, 'no', NULL, NULL, NULL, '0', NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'residential', NULL, NULL, NULL, NULL, NULL, '0507789666', '29', 'عماره للبيع فى حى النهضه - جده | حي النهضه - 2 - عمـــــــارة - floors for sale - للبيع - ', '2022-10-31 12:12:47'),
(240, '7', 'للبيـــــــــــع فيلا فاخره حي اللؤلؤه', NULL, 'جده | ابحر الشماليه - حي اللؤلؤة', NULL, '1450000', '1', 0, '2', 3, '2', NULL, '9', NULL, NULL, NULL, '6', '200', NULL, NULL, NULL, NULL, '5', '4', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيـــــــــــع فيلا فاخره مودرين في ابحر الشماليه مخطط حي اللؤلؤه \r\n:- مساحة 200 متر شارع 16 جنوبي \r\n:- المواصفات \r\n:- دورين وملحق\r\n_ _ _ _ _ _ _ _ _ _ \r\n ( الدور الارضي) \r\n- مجلس رجال \r\n- مجلس نساء\r\n - مسبح\r\n- صاله\r\n- دورتين مياه\r\n_ _ _ _ _ _ _ _ _ _ \r\n(- الدور لأول) \r\n- غرفه نوم رئيسيه مع دورة مياه خاصه\r\n- غرفتين نوم بدورة مياه مشترك \r\n- صاله\r\n- مطبخ سرفس \r\n_ _ _ _ _ _ _ _ _ _ \r\n(- الملحق) \r\n- غرفة نوم بدوره مياه \r\n- صاله\r\n- غرفه غسيل \r\n- غرفة شغاله \r\n- سطوح أمامي وخلفي\r\n_ _ _ _ _ _ _ _ _ _ \r\n:- مميزات\r\n:- نظام صوتي ونظام LED\r\n:- تأسيس مصعد \r\n:- مسبح \r\n:- موقف سيارة\r\n:- غرفه سائق \r\n:- ضمانات على المبنى \r\n:- ضمانات على السباكه والكهرباء \r\n\r\nالسعر المطلوب مليون 450  الف \r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'c591a00364b85e3560d705b2fb1f0f44.jpeg', '', NULL, '4', '3', NULL, NULL, '0', '16', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '43', 'للبيـــــــــــع فيلا فاخره مودرين - جده | ابحر الشماليه - حي اللؤلؤة - 2 - فيلا - apartment\r\n - للبيع - ', '2022-10-31 19:37:14'),
(241, '7', 'للبيع شقه فى حى الصفا', NULL, 'جده - حي الصفا', NULL, '765000', '1', 0, '2', 1, '2', NULL, '3', NULL, NULL, NULL, '2', '190', NULL, NULL, NULL, NULL, '2', NULL, 'yes', '2', NULL, 'no', NULL, NULL, 'yes', NULL, NULL, 'للجادين فقط سعر خاص\r\nالسعر :765000\r\nالمالك يرغب في بيع العقار بالسعر الموضح اعلاه عمر العقار ١١ سنه تشطيب سوبر المساحه ١٩٠ متر مربع موقف سياره لا يوجد غرفة حارس السعر قابل لمفاوضه \r\nللتواصل 0507789666', NULL, '24.794213816803946', '46.6946406875', 'a77aacddef9a82b08bce12e805804828.jpeg', '', NULL, '1', NULL, NULL, NULL, '11', '20', '0', '0', 'marketed', 'families_families', 'no', NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '30', 'للبيع شقه فى حى الصفا - جده - حي الصفا - 2 - شقة - apartment\r\n - للبيع - ', '2022-11-01 15:56:20'),
(242, '7', 'للبيع عمارة في حي المنتزهات', NULL, 'جده - حي المنتزهات', NULL, '6000000', '1', 0, '2', 9, '2', NULL, '0', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع عمارة في حي المنتزهات \r\nالعماره ٥ ادوار وملحق\r\nعلى شارعين\r\n١٣ شقة اربع غرف وصاله ومطبخ وحمامين \r\n٤ شقق ثلاث غرف وصالة ومطبخ وحمامين \r\nشقة غرفة وصالة ومطبخ وحمامين \r\nغرفة حارس \r\nغرفة في الملحق الخارجي \r\n١٥ عداد\r\nالارض يوجد بها خرائط\r\nتصميم فيلتين وكل فيلاخلفها ثلاث شقق\r\nوتصريح بناء\r\nالارض مقسومه على قطعتين\r\nمطلوب ٦ مليون صافي\r\nللتواصل\r\n0507789666', NULL, '24.794213816803946', '46.6946406875', '12ab65086c56a03fb147fabb52fa8352.jpeg', '', NULL, '2', '5', NULL, NULL, '0', '0', '0', '0', 'owner', NULL, 'no', NULL, NULL, NULL, '17', NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'residential', NULL, NULL, NULL, NULL, NULL, '0507789666', '62', 'للبيع عمارة في حي المنتزهات - جده - حي المنتزهات - 2 - عمـــــــارة - floors for sale - للبيع - ', '2022-11-01 16:11:02'),
(243, '7', 'للبيع فيلا فى حي الصواري', NULL, 'جده | ابحر الشمالية - حي الصواري', NULL, '1500000', '1', 0, '2', 3, '2', NULL, '8', NULL, NULL, NULL, '6', '250', NULL, NULL, NULL, NULL, '5', '4', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'للبيع فيلا فى ابحر الشمالية (حي الصواري )\r\nمساحة الارض٢٥٠متر\r\nشارع١٥\r\nالسعر 1,500,000\r\n\r\nالدور الارضي:\r\n(١)مجلس رجال \r\n(١)مجلس نساء\r\n(١)مسبح\r\n(١)مطبخ\r\n(٢)حمامين \r\n\r\nالدور الاول \r\n(٤)غرف نوم\r\n(١)صالة\r\n(٣)حمامات \r\n\r\nالملحق \r\n(٢)غرف نوم\r\n(٢)حمامين \r\n(١)غرفة غسيل \r\n\r\nيوجد تأسيس مصعد \r\nللتواصل | \r\n 0555013819', NULL, '24.794213816803946', '46.6946406875', '09946cd3687858d02358e95ddf23f38a.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '15', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '63', ' - جده | ابحر الشمالية - حي الصواري - 2 - فيلا - apartment\r\n - للبيع - ', '2022-11-04 14:17:09'),
(244, '7', 'للبيع فيلا مودرن (مفصولة) في حي الزمرد', NULL, 'جده | ابحر الشمالية -  حي الزمرد', NULL, '2100000', '1', 0, '2', 3, '2', NULL, '5', NULL, NULL, NULL, '9', '375', NULL, NULL, NULL, NULL, '1', '2', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا مودرن (مفصولة) في حي الزمرد\r\nالمساحة للفلة 375.         \r\nعدد غرف النوم 5\r\nعدد دورات المياه 9 \r\nيوجد غرفة غسيل وغرفة خادمة وغرفة سائق المصعد مؤسس و مسبح \r\n\r\nالسعر للوحدة 2,100,000 ريال\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '8f1fd1c216497df8d34f13fa93a72e3c.jpeg', '', NULL, '3', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '46', 'للبيع فيلا مودرن (مفصولة) في حي الزمرد - جده | ابحر الشمالية -  حي الزمرد - 2 - فيلا - apartment\r\n - للبيع - ', '2022-11-02 16:15:52'),
(247, '7', 'شقة للبيع فى مكه المكرمة', NULL, 'مكة المكرمة - محبس الجن', NULL, '850000', '1', 0, '2', 1, '44', NULL, '2', NULL, NULL, NULL, '2', '98', NULL, NULL, NULL, NULL, '1', NULL, 'yes', '1', NULL, 'yes', NULL, NULL, 'no', NULL, NULL, 'شقة للبيع فى مكه المكرمة منازل الكرام 2 رقم  501  المساحه 97.5 متر \r\nمكونة من غرفتين نوم وصالة ومطبخ وعدد 2 حمامات\r\n\r\nتتميز الشقة بوجود مدخلين بحيث يمكن استخ.دام الشقة كشقتين منفصلتين.\r\n\r\nالشقه شاملة الخدمات\r\nالشي الذي يميز الشقة عن باقي الشقق في المبنى هو:\r\n\r\n- مكيفات اسبيلت.\r\n\r\n- اثاث كامل فاخر مع دواليب الملابس.\r\n\r\n- مطبخ فاخر مع كامل التجهيزات\r\n\r\n- تجهيزات كاملة للمطبخ (تلاجه - وغسالة ملابس - ادوات مطبخ) واثاث كامل فاخر.\r\n\r\n- تسليك خاص للكهرباء.\r\n\r\n- تسليك خاص لغسالة الملابس في المطبخ . \r\nالمطلوب 850 الف ريال \r\nللتواصل 0507789666', NULL, '24.794213816803946', '46.6946406875', 'da70f6552e62817aa324702cc37dcd7a.jpeg', '', NULL, '1', NULL, NULL, NULL, '0', '0', '0', '0', 'marketed', 'families_families', 'yes', NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '74', 'شقة للبيع فى مكه المكرمة - مكة المكرمة - محبس الجن - 44 - شقة - apartment\r\n - للبيع - ', '2022-11-06 16:01:27'),
(251, '7', 'شقه للايجار حى الزهراء', NULL, 'جده - حى الزهراء', NULL, '75000', '1', 0, '1', 1, '2', NULL, '3', NULL, NULL, NULL, '4', '155', NULL, NULL, NULL, NULL, '1', NULL, 'yes', '1', NULL, 'yes', NULL, NULL, 'no', NULL, NULL, 'شقه في حي الزهراء للإيجار \r\nمساحتها ١٥٥ متر \r\nمكونه من:\r\n3 غرف نوم و صاله و ٤ دورات مياه و مطبخ و مدخل سياره و مصعد و مكيفات\r\nالشقة فيها خمسة مكيفات اسبيليت ومطبخ راكب بكل الاجهزه\r\n\r\nمطلوب ٧٥ ألف\r\n\r\nللاستفسار\r\n0507789666', NULL, '24.794213816803946', '46.6946406875', 'e9922f5bde1795c2a6a380452a7221db.jpeg', '', NULL, '1', NULL, NULL, NULL, '0', '0', '0', '0', 'marketed', 'families_families', 'no', 'annual', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '33', 'شقه للايجار حى الزهراء - جده - حى الزهراء - 2 - شقة - apartment\r\n - للايجار - ', '2022-11-07 11:58:15'),
(254, '7', 'للبيع فيلا مودرن في ابحرالشماليه', NULL, 'جده | ابحر الشمالية - حي الياقوت', NULL, '1700000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '250', NULL, NULL, NULL, NULL, '5', '4', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا مودرن في ابحرالشماليه (حي الياقوت)\r\n\r\nمساحة الارض٢٥٠متر\r\nالسعر 1,700,000\r\n\r\nالدور الارضي :\r\n(١)مسبح \r\n(١)مجلس رجال \r\n(١)صالة وسيعه\r\n(١)مطبخ\r\n(٢)حمامين\r\n\r\nالدور الاول:\r\n(٣)غرف \r\n(١)صالة\r\n(٢)حمامين\r\n(١)سيرفس \r\n\r\nالملحق :\r\n(٢)غرفتين\r\n(١)صالة\r\nغرفة شغالة بحمام\r\n\r\nيوجد تاسيس مصعد \r\nللاستفسار 0555013819', NULL, '24.794213816803946', '46.6946406875', 'd353bc7cc8ca5319ed9691bb1a909053.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '75', 'للبيع فيلا مودرن في ابحرالشماليه - جده | ابحر الشمالية - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2022-11-07 18:49:31'),
(255, '7', 'للبيع فيلا في ابحرالشماليه', NULL, 'جده | ابحر الشمالية -  حي الشراع', NULL, '3000000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '300', NULL, NULL, NULL, NULL, '5', '4', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'للبيع فيلا في ابحرالشماليه حي الشراع(بناء شخصي) شارعين \r\nمساحة الارض 300متر\r\nالسعر 3,000,000\r\nجميع مكيفات الفيلا راكبة\r\nمطبخ راكب \r\nيوجد بدروم \r\nغرفة سائق\r\n\r\nالبدروم عبارة عن \r\nصالتان وسيعه \r\n\r\nالدور الارضي :\r\n(١)مجلس رجال \r\n(١)مجلط\r\n(١)مجلس نساء\r\n(١)صالة\r\n(١)مطبخ راكب\r\n(٢)حمامين\r\n\r\nالدور الاول:\r\n(٤)غرف نوم كل غرفة بحمام مستقل\r\n(٤)حمامات\r\n(١)صالة\r\n\r\nالملحق:\r\n\r\n(٢)غرفتين بحمامتها\r\n(١)صالة\r\n(١)غرف غسيل \r\n(١)غرفةًشغالة بحمام\r\nسطوح\r\n\r\nيوجد تأسيس مصعد\r\nيوجد عداد موية\r\n\r\nلتواصل. 0555013819', NULL, '24.794213816803946', '46.6946406875', '507db3aed65505b323dca70aeec3d81a.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'yes', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '45', 'للبيع فيلا في ابحرالشماليه - جده | ابحر الشمالية -  حي الشراع - 2 - فيلا - apartment\r\n - للبيع - ', '2022-11-12 09:46:54'),
(256, '7', 'للبيع فلل فاخره حي المنارات', NULL, 'جده - حي المنارات', NULL, '1750000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '300', NULL, NULL, NULL, NULL, '5', '5', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فلل فاخره حي المنارات \r\nتصميمات  وتشطيبات  عصريه  و راقيه  موقع مميز على  شارع ابو بكر بن محمد السقاف \r\nمساحه الارض 300 م ومساحة المبانى 500 م \r\nالمواصفات :\r\nالدور الارضي  يتكون من :\r\nمجلس رجال ، 2 دوره مياه ، صاله طعام مطلعه على المسبح ، صاله كبيره مطله على المسبح ، مطبخ ومخزن خارجي .\r\nالدور الاول يتكون من : \r\nصاله ، غرفه رئيسيه مع صاله ودوره مياه ، غرفه نوم ودوره مياه خاصه ، غرفتين نوم ودوره مياه مشتركه .\r\nالدور الثانى (الملحق) يتكون من : \r\nصاله كبيره مطله على المسبح ودوره مياه،  غرفه خادمه مع دوره مياه  ، غرفه غسيل الملابس ، سطحين منفصله. \r\n \r\nالمطلوب _ مليون و ٧٥٠ الف\r\nللتواصل _ 0507789666', NULL, '24.794213816803946', '46.6946406875', '4d61037c7a33018efb02d3b790ca89ae.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '76', 'للبيع فلل فاخره حي المنارات - جده - حي المنارات - 2 - فيلا - apartment\r\n - للبيع - ', '2022-11-12 10:08:28'),
(257, '7', 'للبيع 5 قطع اراضي في مخطط الصفوه', NULL, 'جده - مخطط الصفوه', NULL, '2000000', '1', 0, '2', 8, '2', NULL, NULL, NULL, NULL, NULL, NULL, '750', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع 5 قطع اراضي  بجده مخطط الصفوه باقدو  \r\nتتراوح المساحات من 625 الى 750متر مطلوب فيها ال 5 قطع كامله \r\n2 مليون صافي . للتواصل 0504350074', NULL, '24.794213816803946', '46.6946406875', '8468e5681273e4bb8219388f4bb447a7.png', '', NULL, '1', NULL, NULL, '0', NULL, '0', '0', '0', 'marketed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'res_comm', NULL, NULL, NULL, NULL, NULL, '0504350074', '55', 'للبيع 5 قطع اراضي في مخطط الصفوه - جده - مخطط الصفوه - 2 - ارض - building for sale - للبيع - ', '2022-11-13 15:46:55'),
(258, '7', 'للبيع  قطع اراضي في مخطط 606', NULL, 'جده - مخطط 606', NULL, '500000', '1', 0, '2', 8, '2', NULL, NULL, NULL, NULL, NULL, NULL, '400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع  قطع ارضي في  للبيع  قطع ارضي في  جده مخطط 606  العشيريه خلف اسماك المرجان المخطط يوجد فيه كهرباء. ومويه مساحات القطع 400متر \r\nالا سعار تبداء  من 500الف  اقل من قيمة شقق التمليك ي بلاش . للتواصل 0504350074', NULL, '24.794213816803946', '46.6946406875', 'e5db0a44edd00293a7bfbee0dcce9ed5.png', '', NULL, '1', NULL, NULL, '0', NULL, '0', '0', '0', 'marketed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'res_comm', NULL, NULL, NULL, NULL, NULL, '0504350074', '55', 'للبيع  قطع اراضي في مخطط 606 - جده - مخطط 606 - 2 - ارض - building for sale - للبيع - ', '2022-11-13 15:55:51'),
(259, '7', 'للبيع  قطعة اراض في جوهرة العروس', NULL, 'جده - حى جوهرة العروس', NULL, '900000', '1', 0, '2', 8, '2', NULL, NULL, NULL, NULL, NULL, NULL, '868', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع  قطعه مالها مثيل  بجوهرة العروس مخطط 1ي  مساحه 868 متر شارع 25 جنوبي مطلوب 900الف للتواصل 0504350074', NULL, '24.794213816803946', '46.6946406875', '7e6bb3b8b41bbfbb4b8777689e0169f1.png', '', NULL, '4', NULL, NULL, '0', NULL, '25', '0', '0', 'marketed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'res_comm', NULL, NULL, NULL, NULL, NULL, '0504350074', '77', 'للبيع  قطعة اراض في جوهرة العروس - جده - حى جوهرة العروس - 2 - ارض - building for sale - للبيع - ', '2022-11-13 16:03:44'),
(260, '7', 'للبيع  قطعة اراض تجارية في خليج سلمان', NULL, 'جده - خليج سلمان', NULL, '2400000', '1', 0, '2', 8, '2', NULL, NULL, NULL, NULL, NULL, NULL, '900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع  قطعة ارض تجاريه موقع مميز بجده خليج سلمان شارع الحزم مساحه 900متر  مطلوب 2 مليون و 400الف للتواصل 0504350074', NULL, '24.794213816803946', '46.6946406875', '6358fcb39de6f457c794fcc32532b95c.png', '', NULL, '1', NULL, NULL, '0', NULL, '0', '0', '0', 'marketed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'commercial', NULL, NULL, NULL, NULL, NULL, '0504350074', '78', 'للبيع  قطعة اراض تجارية في خليج سلمان - جده - خليج سلمان - 2 - ارض - building for sale - للبيع - ', '2022-11-13 16:12:53'),
(261, '7', 'للبيع نص قطعة فى مخطط الجامعيين', NULL, 'جده - حى الجامعيين', NULL, '650000', '1', 0, '2', 8, '2', NULL, NULL, NULL, NULL, NULL, NULL, '600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع  نص قطعة في مخطط الجامعيين ( أ ) عسفان شرق مخطط الرياض مساحه 600 متر (15*40) مطلوب 650 الف قابل للتفاوض \r\nللتواصل 0504350074', NULL, '24.794213816803946', '46.6946406875', '97e313afc060c2a5e1c5d42786137444.png', '', NULL, '1', NULL, NULL, '0', NULL, '0', '40', '15', 'marketed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'res_comm', NULL, NULL, NULL, NULL, NULL, '0504350074', '79', 'للبيع نص قطعة فى مخطط الجامعيين - جده - حى الجامعيين - 2 - ارض - building for sale - للبيع - ', '2022-11-14 15:41:34'),
(262, '7', '‏للإيجار مكتب أداري في حي البساتين', NULL, 'جده - حي البساتين', NULL, '60000', '1', 0, '1', 7, '2', NULL, NULL, NULL, NULL, NULL, NULL, '105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '‏للإيجار مكتب أداري في حي البساتين\r\nالمساحة ١٠٥ متر مربع\r\nالإيجار 60,000\r\n9000 قيمه مضافة \r\nللتواصل :\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'b8474e30061feb4f8b4bcad090c9380d.jpeg', '', NULL, '1', NULL, NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, NULL, 'annual', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '80', ' - جده - حي البساتين - 2 - مكتب تجاري - Commercial land for sale - للايجار - ', '2022-11-14 15:52:52'),
(263, '7', 'للبيع فيلا مودرن فاخرة في أبحر الشمالية', NULL, 'جده | ابحر الشمالية -  حي الزمرد', NULL, '2400000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '375', NULL, NULL, NULL, NULL, '5', '5', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا مودرن فاخرة في أبحر الشمالية (حي الزمرد)\r\nمساحة الارض 375متر\r\nالسعر 2,400,000\r\n\r\nالدورالارضي:\r\n(١)مجلس رجال \r\n(١)مجلس نساء\r\n(١)صالة طعام رجال\r\n(١)صالة وسيعة\r\n(١)مطبخ \r\n(٢)حمامين\r\n(١)مسبح \r\n\r\nالدور الاول:\r\n(٤)غرف نوم بحماماتها \r\n(١)صالة\r\n(٤)حمامات\r\n\r\nالملحق:\r\n(١)صالة\r\n(١)غرفة نوم\r\n(٢)حمامين\r\nغرفة شغالة\r\nغرفة غسيل \r\n\r\nيوجد تأسيس مصعد \r\nللاستفسار  0555013819', NULL, '24.794213816803946', '46.6946406875', '479f764347f0d7f23b367c5207320c19.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '46', 'للبيع فيلا مودرن فاخرة في أبحر الشمالية - جده | ابحر الشمالية -  حي الزمرد - 2 - فيلا - apartment\r\n - للبيع - ', '2022-11-14 15:59:43'),
(264, '7', 'مطلوب اراضي', NULL, 'جده | ابحر الشمالية', NULL, '0', '1', 0, '2', 8, '2', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'مطلوب اراضي سكنيه وتجاريه بمدينة جده \r\nابحر الشماليه /خليج سلمان / جوهرة العروس / طيبه الفرعيه /مخططات الهجره\r\nللتواصل | 0504350074', NULL, '24.794213816803946', '46.6946406875', 'c7748bd5cfe660280a5db8004ed9f5a9.png', '', NULL, '1', NULL, NULL, '0', NULL, '0', '0', '0', 'owner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'res_comm', NULL, NULL, NULL, NULL, NULL, '0504350074', '55', 'مطلوب اراضي - جده | ابحر الشمالية - 2 - ارض - building for sale - للبيع - ', '2022-11-15 14:01:36'),
(265, '7', 'للبيع فلل مودرن فاخرة في ابحرالشماليه', NULL, 'جده | ابحر الشمالية - حي الياقوت', NULL, '1750000', '1', 0, '2', 3, '2', NULL, '8', NULL, NULL, NULL, '6', '262', NULL, NULL, NULL, NULL, '5', '5', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فلل مودرن فاخرة في ابحرالشماليه (حي الياقوت)\r\nمساحة الارض 262\r\nشارع 15\r\nالدور الارضي :\r\nمدخلين نساء ورجال\r\n(١)مسبح\r\n(١)مجلس رجال\r\n(١)صالة وسيعه\r\n(١)مطبخ\r\n(٢)حمامين \r\n\r\nالدور الاول :\r\n(٤)غرف \r\n(١)صالة\r\n(٣)حمامات\r\n\r\nالملحق:\r\n(٢)غرفتين نوم\r\n(١)صالة\r\n(١)حمام\r\nسطوح\r\n \r\nيوجد تأسيس مصعد\r\nالسعر 1,750,000\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '4a5d521350c2ca041ea4411bc5d35af4.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '15', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '75', 'للبيع فلل مودرن فاخرة في ابحرالشماليه - جده | ابحر الشمالية - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2022-11-15 14:11:36'),
(266, '7', 'للبيع شقه في مكه الشوقيه', NULL, 'مكه المكرمه - الشوقيه المسفله', NULL, '600000', '1', 0, '2', 1, '44', NULL, '4', NULL, NULL, NULL, '2', '160', NULL, NULL, NULL, NULL, '1', NULL, 'yes', '1', NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'للبيع شقه في الشوقيه المسفله  بصك اكتروني .. نظيفه ..مؤجره..على جبل تطل على منظر الحرم والساعه بمنظر جميل خلاب...في عمارة بالبيد\r\nيوجد مصعد..والشقه وسيعه.  ١٦٠م ..مكونه من ٤غرف كبيره وصاله كبيره..و٢حمام ومطبخ... العماره هادئه وسكانها ذوي خلق..\r\nمعروضه للبيع بي ٦٠٠الف صافي ..يتحمل المشتري الضريبه والمكتب...\r\nللتواصل : 0507789666', NULL, '24.794213816803946', '46.6946406875', 'a41af47d21d1f65965c442f3843075ee.jpeg', '', NULL, '1', NULL, NULL, NULL, '0', '0', '0', '0', 'marketed', 'families_families', 'no', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '71', 'للبيع شقه في مكه الشوقيه - مكه المكرمه - الشوقيه المسفله - 44 - شقة - apartment\r\n - للبيع - ', '2022-11-15 17:31:42'),
(267, '7', 'للبيع فيلا فى حي الروضه', NULL, 'جده - حي الروضه', NULL, '6000000', '1', 0, '2', 3, '2', NULL, '0', NULL, NULL, NULL, '0', '870', NULL, NULL, NULL, NULL, '0', '0', 'yes', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا فى حي الروضه \r\nمساحه 870 متر \r\nعلى شارعين مطلوب 6 مليون صافي خلف مكتبة جرير شارع صاري \r\nلتواصل 0504350074', NULL, '24.794213816803946', '46.6946406875', '0379eeb4414aebc9f393c90a9b0dacdd.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0504350074', '81', 'للبيع فيلا فى حي الروضه - جده - حي الروضه - 2 - فيلا - apartment\r\n - للبيع - ', '2022-11-16 18:42:23'),
(268, '7', 'شقه للبيع  في حي المروه', NULL, 'جده - حى المروه', NULL, '780000', '1', 0, '2', 1, '2', NULL, '5', NULL, NULL, NULL, '4', '0', NULL, NULL, NULL, NULL, '3', NULL, 'yes', '1', NULL, 'no', NULL, NULL, 'yes', NULL, NULL, 'شقه للبيع \r\nفي حي المروه\r\nعمارة المياسم تتكون الشقه من  :\r\nمجلسين و صاله مع غرفه مفتوحه على الصاله \r\nو ٤ غرف نوم و ٤ دورات مياه \r\nو مطبخ\r\nو غرفة سائق و غرفة شغاله \r\nمع خزان مستقل \r\n مطلوب 780 الف صافي\r\n\r\nللتواصل / 0507789666', NULL, '24.794213816803946', '46.6946406875', 'bdb773bf398c5f4a22e05527b0646e7f.jpeg', '', NULL, '1', NULL, NULL, NULL, '0', '0', '0', '0', 'marketed', 'families_families', 'no', NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '82', 'شقه للبيع  في حي المروه - جده - حى المروه - 2 - شقة - apartment\r\n - للبيع - ', '2022-11-16 18:52:00'),
(269, '7', 'للبيع فيلا مودرن في حي الزمرد', NULL, 'جده | ابحر الشمالية -  حي الزمرد', NULL, '1800000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '312', NULL, NULL, NULL, NULL, '5', '4', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا مودرن في حي الزمرد \r\nمساحة كل فيلا ٣١٢م \r\nالتفاصيل :\r\nالدور الأرضي : \r\n٢دورت مياه باضافة الي بالمغاسل\r\n١ صالون رجال \r\n١صالون نساء\r\nيوجد صاله مع اطلاله على المسبح\r\nويوجد جلسة دخلية الهوة المفتوح\r\nوصاله ومطبخ \r\nالدور الأول :\r\nغرفة ماستر بالاضافه إلى غرفة ملابس\r\nغرفة ماستر عاديه + صاله \r\n٢ غرفة اطفال دورت مياه خارجيه \r\nالملحق :\r\n٢ غرفة نوم \r\n١ دورة مياه \r\n١ غرفة غسيل\r\n١ صاله مطله على الملحق\r\nمميزات : \r\nيوجد مكان لتأسيس غرفة المصعد\r\nيوجد صور وفيديوهات لمراحل البناء \r\nوعزل المياه والكهرباء حسب مواصفات شركة الكهرباء\r\nويوجد مسبح \r\nالسعر مليون ٨٠٠ الف\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '622673ec6520524d04548ef58a6339d0.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '46', 'للبيع فيلا مودرن في حي الزمرد - جده | ابحر الشمالية -  حي الزمرد - 2 - فيلا - apartment\r\n - للبيع - ', '2022-11-19 07:34:23'),
(270, '7', 'ارض للبيع فى 100ج س', NULL, 'جده | ابحر الشمالية - 100ج س', NULL, '1200000', '1', 0, '2', 8, '2', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ارض للبيع فى 100ج س \r\nالمطلوب  مليون و200الف للتواصل 0504350074', NULL, '24.794213816803946', '46.6946406875', '37bbf3f834574a45dcb73612209e8323.jpeg', '', NULL, '1', NULL, NULL, NULL, NULL, '0', '0', '0', 'agent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0504350074', '55', 'ارض للبيع فى 100ج س -  - 2 - ارض - building for sale - للبيع - ', '2022-11-19 07:45:34'),
(271, '16', 'للبيع عماره فى حي الريان', NULL, 'جده - حي الريان', NULL, '4000000', '1', 0, '2', 9, '2', NULL, '4', NULL, NULL, NULL, NULL, '650', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع عماره فى حي الريان\r\nمساحة الارض ٦٥٠\r\nعماره اربع ادوار وملحق على مساحة اغلب السطح\r\nعشر شقق اربع غرف وصالة عدا شقتين في الدور الارضي ثلاثة غرف\r\nفيلا دورين كبيره جداً\r\nعمر العماره ١٢ سنه بناء شخصي', NULL, '24.794213816803946', '46.6946406875', '066f6de45ad035f6ad671b2243cec359.jpeg', '', NULL, NULL, '5', NULL, '0', '14', '16', '30', '25', 'owner', NULL, NULL, NULL, NULL, NULL, '10', NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555367104', '61', ' -  - 2 - عمـــــــارة - floors for sale - للبيع - ', '2022-11-21 10:50:23'),
(272, '7', 'للبيع فيلا مودرن في ابحرالشماليه', NULL, 'جده | ابحر الشمالية - حي الياقوت', NULL, '1650000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '262', NULL, NULL, NULL, NULL, '5', '5', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا مودرن في ابحرالشماليه حي الياقوت \r\nالسعر 1,650,000\r\n\r\nالدور الارضي:\r\n(١)غرفة سائق بحمام\r\n(١)مسبح\r\n(١)مطبخ\r\n(١)مجلس رجال\r\n(١)مجلس نساء \r\n(١)صالة\r\n(٢)حمامين \r\n\r\nالدورالاول \r\n(٤)غرف نوم\r\n(١)حمامين\r\n(١)صالة\r\n\r\nالملحق\r\n(٢)غرفة نوم \r\n(١)غرفة شغالة بحمام\r\n(١)حمام\r\n\r\nمساحة الارض 262,5\r\nيوجد تأسيس مصعد \r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'b5a376498b98ea59402664193f1e45ab.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '75', 'للبيع فيلا مودرن في ابحرالشماليه - جده | ابحر الشمالية - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2022-11-25 13:42:38'),
(273, '7', 'ثلاث فلل دبلكس عظم  للبيع', NULL, 'جده | مدينه البحيرات', NULL, '3500000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '918', NULL, NULL, NULL, NULL, '5', '5', 'yes', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'عاجل عاجل\r\n ثلاث فلل دبلكس عظم  للبيع\r\n\r\nالموقع البحيرات نهاية شارع الملك سعود\r\n\r\n على مساحة 918 متر شارعين وحديقه شوارع 16  الكهربأء واصله فيها كل فيلا عداد200 امبير شغاله \r\n\r\n مساحة الارض 916 متر شارعين 16\r\n شارع شرقي وشارع جنوبي\r\n الصك ٧٨ / ج / س  \r\nلها كروكي جديدمسجل تسجيل عقاري بأسم المالك\r\n\r\nكلها على الشارع وكلها على واجهات\r\n الان الشركه الشركة انهت السفلته وشغالين على الترصيف \r\n كل فيلا مدخلين تفصيل راقي\r\n جداً\r\n\r\n\r\nالثلاثه الفلال مليسه باقي بس الملاحق السباكه وتسليك الكهربأ جاهزه التسليك كل فيلا بي خزان وبياره مكان المصاعدجاهزه\r\nالمطلوب ثلاثه مليون وخمسمائة الف ريال صافي قابل للتفاوض \r\n\r\nالضريبه والدلاله على المشتري \r\n\r\nللتواصل / 0507789666', NULL, '24.794213816803946', '46.6946406875', 'e97e9cb364eb7f8647158aec9a50f61a.jpeg', '', NULL, '5', '3', NULL, NULL, '0', '16', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '55', 'ثلاث فلل دبلكس عظم  للبيع - جده | مدينه البحيرات - 2 - فيلا - apartment\r\n - للبيع - ', '2022-11-25 17:48:28'),
(274, '7', 'للبيع فيلا ابحر الشمالية - حي الصواري', NULL, 'جده | ابحر الشمالية -  حي الصواري', NULL, '1500000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '6', '250', NULL, NULL, NULL, NULL, '5', '5', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'للبيع فيلا جدة - ابحر الشمالية - حي الصواري\r\nالمساحه 250 م - شارع 16 + شارعين 16\r\nتتكون من دورين و ملحق مفصوله ب الكامل\r\n\r\nالدور الارضي: مجلس رجال ( بدورة مياه ) و مغسله\r\nصاله + مطبخ + حديقه\r\n\r\nالدور الاول: 4 غرف نوم + 4 دورات مياه + صاله\r\n\r\nالملحق: غرفتين نوم + 2 حمام + غرفه خادمه ب غرفه غسيل\r\n\r\nالسعر 1,500,000\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '9cce6542531ed76c5277a5cdf7b0cb63.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '16', '0', '0', 'owner', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '63', 'للبيع فيلا ابحر الشمالية - حي الصواري - جده | ابحر الشمالية -  حي الصواري - 2 - فيلا - apartment\r\n - للبيع - ', '2022-11-30 17:26:08'),
(275, '7', 'للبيع عماره سكنية تجاريه فى حى البوادي', NULL, 'جده - حى البوادي', NULL, '7000000', '1', 0, '2', 9, '2', NULL, '15', NULL, NULL, NULL, NULL, '900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'عماره للبيع فى حى البوادي \r\n معلومات العمارة \r\n الدور الارضي  \r\nعبارة عن عدد اربعة معارض كبيرة + واحد معرض صغير كل معرض بحمام ما عدا المعرض الصغير ومعظمها بميزانين\r\n        ١) مكتب للعمارة عبارة عن غرفة وحمام مؤثت بدواليب وماصة وجلسة زاوية وكمبويتر   \r\n٢) غرفة وحمام ومطبخ كسكن للحارس \r\n ٣)  مستودع تحت سلم الدرج بداوليب حديدية \r\n  شقة (٣) مكونة من عدد اربعة غرف وصالتين ومطبخ وحمامين \r\n شقة (٤) مكونة من ثلاثة غرف ومطبخ وحمامين  \r\nالدور الاول فوق الارضي \r\n شقة (٥) عبارة عن اربعة غرف وصالتين كبيرة ومطبخ وعدد اثنين حمام \r\n شقة (٦) عبارة عن ثلاثة غرف وصالتين ومطبخ وحمامين \r\n شقة (٧) عبارة عن ثلاثة غرف ومطبخ وحمامين \r\n   الدور الثاني \r\n شقتين (٨+٩) كل شقة منهما عبارة عن اربعة غرف وصالتين ومطبخ وحمامين وبلكونة علي الشارع الرئيسي \r\n شقة (١٠) عبارة عن ستة غرف وصالة ومطبخ واربعة حمامات وبلكونتين مغفلة واحدة منهم متصلة بالمطبخ وبها عدد إثنين مكيفات اسبليت يونت واثنين مكيف جداري \r\n الدور الثالث\r\n شقتين (١١+١٢) كل شقة منهما عبارة عن اربعة غرف وصالتين ومطبخ وحمامين وبلكونة علي الشارع الرئيسي وكل غرف الشقتين ومطابخها مكيفة بالاسبليت يونت خمسة مكيفات لكل شقة \r\n شقة(١٣) عبارة عن ستة غرف وصالة ومطبخ امريكي مفتوح علي احد الغرف واربعة حمامات وبلكونتين مغلقة احدهم مجهزة كمطبخ للطبيخ (ديرتي كيتشن) بدواليب رخام وشفاط معلق والأخرى مجهزه كمكتب مذاكرة للاطفال والشقة كلها مكيفة تكييف مركزي واسقف مستعارة وانارة مخفية واستريو لجميع الغرف والصالات كما يوجد سنترال هاتفي لكل الغرف متصل بالحارس والملاحق العلوية والمطبخ العلوي ومكتب العمارة\r\n الدور الاخير والسطح\r\n شقة(١٤) عبارة عن غرفتين ومطبخ وحمام \r\n شقة (١٥) عبارة عن ملحق اضافي من بريفاب غرفتين وحمام ومطبخ بالاضافة لمطبخ كبير مجهز بالدواليب والرخام علماً ان جميع الغرف  \r\n  والمطبخ مكيفة تكييف شباك \r\nخلاصة مكونات العمارة \r\n عدد ٤ معارض كبيرة وواحد معرض صغير .\r\n عدد ٢ غرف صغيرة بالخلف للسائقين بحمام ومطبخ مشترك من البريفاب للسائقين\r\n عدد ٢ شقة خدمات كل شقة غرفة واحدة وحمام وواحدة منهم بمطبخ\r\n عدد ٢ شقة ملاحق كل شقة غرفتين \r\n عدد ٣ شقق كل شقة ثلاثة غرف .\r\n عدد ٦ شقة كل شقة اربعة غرف .\r\n عدد ٢ شقة كل شقة ستة غرف .\r\n مميزات العمارة \r\n العمارة مساحة ارضها ٩٠٠ متر مربع تطل علي ثلاثة شوارع وحديقة منها شارع تجاري مزدوج وجميع الواجهات علي الشوارع ملبسة برخام والمدخل سقف ساقط وديكور والسلم والطرق ملبسة كلها رخام للسقف وديكورات جبسية واسبوتات انارة ولمبات طوارئ في حالة انقطاع الكهرباء العمومي .\r\nمساحة الأرض ٩٠٠ متر مربع .\r\nيوجد بالعمارة كميرات مراقبة داخل الممرات    وخارج العمارة شاملة مواقف السيارات ويوجد خمسة مواقف مغطاه يالعمارة  وعدد كمرات المراقبة بعدد ١٦  كاميرة .\r\n مصعد كهربائي .\r\n عدد ١٧ عداد كهرباء .\r\n جميع الشقق والمعارض بعداد ماء داخلي مستقل لكل منهم . \r\n- دش مركزي لكامل العمارة بامكانية التحكم في الفصل عن كل شقة ومعرض وكذلك ٤ محطات فيديو اختيارية .\r\n عدد ٤ خزانات علوية فيبرجلاس سعة كل خزان خمسة متر مكعب مضخات لرفع المياة بنظام مراقبة وتحكم .\r\n- جميع الغرف والممرات بديكورات جبسية وواحدة من الشقق الكبيرة المكيفة بتكيف مركزي بها اسقف مستعارة وديكورات جبس واسبوتات .  \r\n جميع مطابخ الشقق بدواليب وسطحها رخام .\r\n دائرة تلفزيونية لمراقبة باب الشارع والتحكم في فتحه \r\n من ممتلكات العمارة عدد اربعة واحدات تكييف مركزي + ١٢ وحدة تكييف اسبليت + ٧ مكيفات جداري علماً ان جميع مطابخ الشقق بدواليب في المطابخ وسطحها رخام .\r\nللتواصل 0507789666', NULL, '24.794213816803946', '46.6946406875', '3cd23ef43d097890637f6c6e4d892a97.jpeg', '', NULL, '1', '4', NULL, '4', '0', '20', '0', '0', 'marketed', NULL, 'no', NULL, NULL, NULL, '15', NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'res_comm', NULL, NULL, NULL, NULL, NULL, '0507789666', '83', 'للبيع عماره سكنية تجاريه فى حى البوادي - جده - حى البوادي - 2 - عمـــــــارة - floors for sale - للبيع - ', '2022-11-30 17:40:09'),
(276, '7', 'للبيع فيلا (نظام شقق ) في أبحرالشمالية (حي الزمرد)', NULL, 'جده | ابحر الشمالية -  حي الزمرد', NULL, '1900000', '1', 0, '2', 3, '2', NULL, '8', NULL, NULL, NULL, '6', '312', NULL, NULL, NULL, NULL, '5', '5', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'للبيع فيلا (نظام شقق ) في أبحرالشمالية (حي الزمرد) مفصولة\r\n\r\nالدور الارضي عبارة عن شقة خاصة بمدخل مستقل \r\nالتفاصيل كتالي:\r\n\r\n(٤)غرف (١)صالة (١)مطبخ (٣)حمامات (مدخلين)\r\n\r\nالدور الاول مع الملحق درج داخلي \r\n(٣)غرفتين نوم \r\n(١)مجلس رجالة\r\n(١)مجلس نساء وصالة مفتوح ع بعض \r\n(١)غرفة شغالة. \r\n(٢)صالتان\r\n(٤)حمامات \r\n\r\nتاسيس مصعد \r\nمساحة الارض 312,5\r\nالسعر 1,900,000\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '336abe3bf0af3fdb977caab554309cfa.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '3', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, 'residential', NULL, NULL, NULL, NULL, NULL, '0555013819', '46', 'للبيع فيلا (نظام شقق ) في أبحرالشمالية (حي الزمرد) - جده | ابحر الشمالية -  حي الزمرد - 2 - فيلا - apartment\r\n - للبيع - ', '2022-11-30 17:48:23'),
(277, '7', 'للبيع فيلا مودرن فاخرة في حي المنارات', NULL, 'جده | ابحر الشماليه - حي المنارات', NULL, '1950000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '6', '312', NULL, NULL, NULL, NULL, '5', '5', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا مودرن فاخرة في ابحر الشمالية حي المنارات \r\nمساحة الارض ٣١٢\r\nشارع بعرض ٣٠ \r\nالدور الارضي:\r\n(١)مجلس رجال \r\n(١)صالة طعام رجال\r\n(١)مجلس نساء\r\n(١)صالة وسيعه\r\n(١)مطبخ \r\n(٢)حمامين\r\n(١)مسبح\r\n(١)غرفة سائق \r\n\r\nالدور الاول :\r\n(٤)غرف نوم\r\n(٤)حمامات\r\n(١)صالة\r\n\r\nالملحق:\r\n(٢)غرفتين نوم\r\n(٢)حمامين\r\n(١)صالة\r\n(غرفة شغالة بحمام)\r\n\r\nيوجد تأسيس مصعد \r\n\r\nالسعر 1,950,000\r\n\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '469897f27d3a2b95cf4b6fb752713acf.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '30', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '76', 'للبيع فيلا مودرن فاخرة في حي المنارات - جده | ابحر الشماليه - حي المنارات - 2 - فيلا - apartment\r\n - للبيع - ', '2022-12-04 13:27:22'),
(278, '7', 'للبيع فيلا في أبحر الشمالية (حي المنارات)', NULL, 'جده | ابحر الشمالية -  حي المنارات', NULL, '1700000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '300', NULL, NULL, NULL, NULL, '5', '5', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'للبيع فيلا في أبحر الشمالية (حي المنارات)\r\nمساحة الارض300متر\r\nالسعر 1,700,000\r\nالدورالارضي:\r\n(١)مجلس رجال\r\n(١)صالة\r\n(١)مطبخ \r\n(٢)حمامين \r\n(١)مجلس نساء\r\n\r\nالدور الاول:\r\n(٤)غرف نوم\r\n(٣)حمامات \r\n(١)صالة\r\n\r\nالملحق \r\n(٢)غرفتين نوم\r\n(١)صالة\r\n(٢)حمامين\r\n\r\nيوجد تاسيس مصعد \r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '0ac14b2666ebfd27089863812990dabf.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '76', 'للبيع فيلا في أبحر الشمالية (حي المنارات) - جده | ابحر الشمالية -  حي المنارات - 2 - فيلا - apartment\r\n - للبيع - ', '2022-12-06 19:44:17'),
(279, '7', 'فيلا للبيع في مخطط الرحيلي حي طيبة', NULL, 'جده | مخطط الرحيلي - حي طيبه', NULL, '1500000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '260', NULL, NULL, NULL, NULL, '5', '5', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'فيلا للبيع شغل ممتاز ماشاءالله مفصوله من ‏الأمام متصله من الخلف \r\nفي مخطط الرحيلي حي طيبة \r\nالمساحهـ 260 م \r\nشارع 16 غربي \r\n\r\nتتكون من دورين و ملحق \r\n\r\nالدور الارضي: مجلس رجال بحمام + مجلط + مجلس نساء بحمام + صاله + مطبخ + تأسس مصعد + مدخلين + غرفة سائق \r\n\r\nالدور الاول: غرفة نوم ‏رئيسية بحمام + غرفة نوم بحمام + غرفتين نوم بحمام مشترك + صاله + سرفيس صغير \r\n\r\nالملحق: غرفتين نوم بحمام مشترك + صاله + غرفة شغالة بحمام + غرفة غسيل + سطوح \r\n\r\nالسعر مليون و 500 الف\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '794a2bc8b173f14d0fd3b223e5c98f08.jpeg', '', NULL, '3', '3', NULL, NULL, '0', '16', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '86', 'فيلا للبيع في مخطط الرحيلي حي طيبة - جده | مخطط الرحيلي - حي طيبه - 2 - فيلا - apartment\r\n - للبيع - ', '2022-12-06 19:53:58'),
(280, '7', 'فيلا نظام شقق للبيع', NULL, 'جده - مخطط الرياض', NULL, '3000000', '1', 0, '2', 3, '2', NULL, '15', NULL, NULL, NULL, '13', '620', NULL, NULL, NULL, NULL, '14', '10', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'فيلا نظام شقق للبيع \r\nفي مخطط الرياض على شارعين ٢٥ و ١٦      المساحه 620.5 متر\r\n-الدور الارضي شقتين كل شقه ٥غرف و٣دورة مياه وصاله ومطبخ ومدخلين ماجره كل شقه ٣٠الف ريال \r\n-الدور الثاني شقتين كل شقه من ٦غرف و٣دورة مياه وصاله ومطبخ ومدخلين جديده توها\r\n مشطبه\r\n-الدور الثالث فيلا روف ٧غرف ٥دورة مياه ٢مستودع ومطبخ وصاله كبيره وصطوح سفلي واخر علوي فيها فيلا نظام شقق للبيع\r\nفي مخطط الرياض\r\n-الدور الارضي شقتين كل شقه ٥غرف و٣دورة مياه وصاله ومطبخ ومدخلين ماجره كل شقه ٣٠الف ريال \r\n-الدور الثاني شقتين كل شقه من ٦غرف و٣دورة مياه وصاله ومطبخ ومدخلين جديده توها\r\n مشطبه\r\n-الدور الثالث فيلا روف ٧غرف ٥دورة مياه ٢مستودع ومطبخ وصاله كبيره وصطوح سفلي واخر علوي و خزان غاز للفيلا وراكب مدخلين\r\nيوجد تاسيس مصعد الكيبل راكب \r\n وراكب مدخلين\r\nيوجد تاسيس مصعد الكيبل الحوش يكفي ٣ مواقف  راكب\r\nمطلوب \r\n3 مليون شامل\r\nللتواصل \r\n0507789666', NULL, '24.794213816803946', '46.6946406875', '7855f182bbcf37d43e305c72174974ae.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '25', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '8', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '87', 'فيلا نظام شقق للبيع - جده - مخطط الرياض - 2 - فيلا - apartment\r\n - للبيع - ', '2022-12-06 20:03:00'),
(281, '7', 'فيلا للبيع نظام شقق في حي الاجاويد', NULL, 'جده - حي الاجاويد', NULL, '4700000', '1', 0, '2', 3, '2', NULL, '15', NULL, NULL, NULL, '6', '900', NULL, NULL, NULL, NULL, '5', '5', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'فيلا للبيع نظام شقق في حي الاجاويد ( الهدى )\r\nعمرها ٧ سنوات\r\nالدور الارضي\r\n3 شقق\r\n_وحده منها نظام فله دورين 3غرف نوم فوق وحمامين.. تحت صاله ومجلسين ضيافه ومطبخ وحمامين\r\n_والشقتين الارضيه 3غرف وصاله ومطبخ وحمامين.\r\nالدور الاول\r\nشقه دور كامل 7غرف و5حمامات ومطبخ وصالتين\r\nالدور الثاني شقتين.. 4غرف وصاله ومطبخ و3 حمامات وحوش خاص داخل كل شقه\r\nخزانين ماء كبيرة\r\nغرفة حارس\r\nالمساحه 900\r\nعلى شارعين شمالي شرقي\r\n\r\nمطلوب\r\n4 مليون و 700 الف صافي\r\n\r\nللتواصل\r\n0507789666', NULL, '24.794213816803946', '46.6946406875', '6f1565fa76bb233681a347cabba32b24.jpeg', '', NULL, '5', '3', NULL, NULL, '7', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '7', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '88', 'فيلا للبيع نظام شقق في حي الاجاويد - جده - حي الاجاويد - 2 - فيلا - apartment\r\n - للبيع - ', '2022-12-10 07:04:00'),
(282, '7', 'شقه جديده للايجار في حي مشرفه', NULL, 'جده - حي مشرفه', NULL, '60000', '1', 0, '1', 1, '2', NULL, '6', NULL, NULL, NULL, '4', '0', NULL, NULL, NULL, NULL, '2', NULL, 'yes', '1', NULL, 'no', NULL, NULL, 'yes', NULL, NULL, 'شقه جديده للايجار \r\nفي حي مشرفه موقع ممتاز وحيوي بين طريق المدينه وشارع فلسطين \r\nالدور الثاني يوجد مصعد\r\nمدخلين\r\n٦ غرف \r\n٤ حمامات \r\nمطبخ \r\nصالتين \r\nغرفه سايق موجوده \r\n( لكن مو ضمن السعر ذا ) \r\nوموقف سياره\r\n\r\nمطلوب ٦٠ الف', NULL, '24.794213816803946', '46.6946406875', '70955abd356929a2fe296ae985c15820.jpeg', '', NULL, '1', NULL, NULL, NULL, '0', '0', '0', '0', 'owner', 'families_families', 'no', 'annual', 'yes', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'front', NULL, NULL, '56', 'شقه جديده للايجار في حي مشرفه - جده - حي مشرفه - 2 - شقة - apartment\r\n - للايجار - ', '2022-12-10 07:14:54'),
(283, '7', 'للبيع فيلا مودرن في ابحر الشمالية حي (الصواري)', NULL, 'جده |  ابحر الشماليه - حى الصواري', NULL, '1800000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '312', NULL, NULL, NULL, NULL, '5', '5', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا مودرن في ابحر الشمالية حي (الصواري )\r\nمساحة الارض ٣١٢.٥\r\nالسعر 1,800,000\r\nالدورالارضي:\r\n(١)مجلس رجال \r\n(١)مجلس نساء \r\n(١)صالة\r\n(١)مطبخ\r\n(٢)حمامين\r\n(١)مسبح\r\n(غرفة سائق بحمام)\r\n\r\nالدور الاول \r\n(٤)غرف نوم\r\n(٤)حمامات\r\n(١)صالة\r\n\r\nالملحق \r\n(٢)غرفتين نوم\r\n(١)صالة\r\n(١)غرفة شغالة بحمام\r\n(١)غرفة غسيل\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '112ce6154f5fbd156eda1cb72aad9037.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '63', 'للبيع فيلا مودرن في ابحر الشمالية حي (الصواري) - جده |  ابحر الشماليه - حى الصواري - 2 - فيلا - apartment\r\n - للبيع - ', '2022-12-10 07:21:10'),
(284, '7', 'للبيع فيلا دوبلكس متصله حي المحمديه', NULL, 'جده - حي المحمديه', NULL, '2500000', '1', 0, '2', 3, '2', NULL, '8', NULL, NULL, NULL, '7', '250', NULL, NULL, NULL, NULL, '3', '3', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'فيلا دوبلكس متصله \r\nحي المحمديه متفرعه من شارع الامير سلطان ثالث فيلا يمين شارع سلطان\r\nمخطط الجفري\r\nمساحة الارض ٢٥٠ متر\r\nعمر المبنى ٢٠ سنه\r\nواجهه جنوبي \r\nشارع ١٦   أخذه جزء من T \r\nمقابل مسجد \r\nالدور الأرضي مكون مدخل من مجلسين رجال يسار ووحدت  مغاسل وحمام ضيوف ومجلس حريم وصاله كبيره ومطبخ كبير متصل فيه مطبخ ملحق صغير \r\nحوش خلفي \r\nالدور الأول غرف نوم عدد ثلاث غرف الغرفه الماستر بها حمام وغرفتين نوم كل غرفه بها حمام وصاله مطله ع الدرج\r\nالدور الثاني غرفه مكتب \r\nوملحق به غرفه كبيره مع حمام ومكان للغسيل وحوش خلفي وأمامي\r\nمطلوب ٢مليون و ٥٠٠ الف صافي\r\nللتواصل ٠٥٠٧٧٨٩٦٦٦', NULL, '24.794213816803946', '46.6946406875', '8bfca4abafbbfa178a1f3c5ffa492f92.jpeg', '', NULL, '4', '3', NULL, NULL, '20', '16', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '٠٥٠٧٧٨٩٦٦٦', '89', 'للبيع فيلا دوبلكس متصله حي المحمديه - جده - حي المحمديه - 2 - فيلا - apartment\r\n - للبيع - ', '2022-12-10 07:31:23');
INSERT INTO `offers` (`id`, `advertiser`, `name_ar`, `name_en`, `address_ar`, `address_en`, `price`, `currency`, `status`, `category`, `type`, `city`, `parking`, `bedroom`, `bathroom`, `bedroom_bathroom`, `bedroom_hall`, `bath`, `sqft`, `health_ar`, `health_en`, `education_ar`, `education_en`, `hall`, `board`, `elevator`, `kitchen`, `services`, `adaptation`, `badron`, `swimming_pool`, `driver_room`, `servant_room`, `laundry_room`, `text_ar`, `text_en`, `lat`, `lng`, `picture`, `floor`, `district`, `face`, `floors`, `carpark`, `shops`, `property_age`, `street_width`, `length`, `width`, `advertiser_relationship`, `families`, `furnished`, `rental_term`, `car_entrance`, `property_floor_no`, `apartment`, `hall_stair`, `verse`, `cellar`, `duplex`, `area`, `appendix`, `football_stadium`, `volleyball_court`, `amusement_park`, `families_category`, `purpose`, `number_of_wells`, `number_of_trees`, `store_number`, `flat_apartment`, `floor_balance`, `advertiser_phone`, `neighborhood`, `search`, `updated_at`) VALUES
(285, '7', 'للبيع فلل دبلكس حي الصواري', NULL, 'جده | ابحر الشمالية -  حي الصواري', NULL, '2200000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '6', '322', NULL, NULL, NULL, NULL, '5', '5', 'yes', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'للبيع فلل دبلكس فاخرة في جده أبحر الشماليه مخطط المنتزه الغربي حي الصواري التبه مقابل أكاديمية وعد المنطقة النظيفه شارع ١٥ غربي\r\nمساحة الارض ٣٢٢م لكل وحدة مسطح المباني ٧٣٤م٢\r\nدورين وملحق \r\nالدور الاول صالون رجال طعام  صالوم نساء بالاضافة الى دورتين مياه تابعة لهما مطبخ غرفة شغالة دورة مياه\r\nالدور الاول\r\n ٤ اجنحة كل غرفة بدورة مياه مستقلة بالاضافة الى صالة عائلية وسرفيس\r\nالملحق\r\n غرفتين نوم كل غرفة بدورة مياه خاصة بها وغرفة غسيل \r\nالمميزات.\r\nتم تجهيز احدى الفلل بنظام البيت الذكي ومكيفات سبليت.\r\nوانذار للحريق. المصعد راكب بنظام ال VVVF وهو نظام يعطي المصعد سلاسة ومرونة عند الانطلاق والتوقف ومجهز ببطاريات طوارئ\r\n\r\nسخانات مياه فورية راكبة ماركة اريستون كميرات راكبة تأسيس مكيفات سبليت وتأسيس صوتيات وسنترال ومقويات WiFi في جميع الادوار.\r\nجميع النوافذ سوبر سرايا مع شتر كهربائي لجميع الادوار\r\nمغاسل رخام امبرادور مع مرايات بلمبات ليد ستائر شورات للحمامات. \r\nالحوش كراج للسيارة  غرفة حارس \r\n السعر 2,200,000\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'bed2df40a20cd14ae0e9ac6121b4c825.jpeg', '', NULL, '3', '3', NULL, NULL, '0', '15', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '63', 'للبيع فلل دبلكس حي الصواري - جده | ابحر الشمالية -  حي الصواري - 2 - فيلا - apartment\r\n - للبيع - ', '2022-12-11 14:20:14'),
(286, '7', 'للبيع فيلا مودرن حي الياقوت', NULL, 'جده | ابحر الشمالية - حي الياقوت', NULL, '1750000', '1', 0, '2', 3, '2', NULL, '4', NULL, NULL, NULL, '6', '262', NULL, NULL, NULL, NULL, '2', '2', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'المساحة 262.5.                                   أبحر الشمالية حي الياقوت \r\nعدد الغرف 4.          دورات المياه 6 \r\nيوجد غرفة خادمة وغرفة غسيل ومسبح ومصعد مؤسس \r\n\r\nملاحظة يوجد امام الفله حديقة \r\nالسعر 1,750,000\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'b31e1f141e263be3da2900fba23e5e71.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '75', 'للبيع فيلا مودرن حي الياقوت - جده | ابحر الشمالية - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2022-12-21 16:01:24'),
(287, '7', 'روف للبيع في حي الحمدانية', NULL, 'جده - حى الحمدانيه', NULL, '830000', '1', 0, '2', 3, '2', NULL, '5', NULL, NULL, NULL, '5', '270', NULL, NULL, NULL, NULL, '2', '1', 'yes', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'روف للبيع في حي الحمدانية \r\nالمساحه 270 متر \r\nيتكون من 5غرف و5 دورات مياة وصالة ومطبخ  وسطوح وغرفة شغاله وغرفة سائق وخزان علوي وخزان سفلي مستقل\r\nمطلوب\r\n830 الف صافي\r\nللتواصل \r\n0507789666', NULL, '24.794213816803946', '46.6946406875', '8ce16bf68061e05e90b45d41bed078df.jpeg', '', NULL, '1', '4', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'no', NULL, '0', 'no', 'no', 'no', 'no', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '58', 'روف للبيع في حي الحمدانية - جده - حى الحمدانيه - 2 - فيلا - apartment\r\n - للبيع - ', '2022-12-25 14:27:05'),
(288, '7', 'للبيع فلل في مخطط الخالدية السياحي', NULL, 'جده | ابحر الشمالية -  حي الزمرد', NULL, '1800000', '1', 0, '2', 3, '2', NULL, '6', NULL, NULL, NULL, '8', '312', NULL, NULL, NULL, NULL, '2', '2', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'للبيع فلل في مخطط الخالدية السياحي \r\nمساحة ارض كل فيلا ٣١٢.٥ \r\n٦ غرف نوم \r\n٨ حمامات \r\n٣ صوالين \r\nمكيفات دكت\r\nتشطيب ممتاز  \r\nمباشر \r\nمطلوب ١،٨٠٠،٠٠٠', NULL, '24.794213816803946', '46.6946406875', '5eec6e3922f361c5642e62e12459bfbb.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '46', 'للبيع فلل في مخطط الخالدية السياحي - جده | ابحر الشمالية -  حي الزمرد - 2 - فيلا - apartment\r\n - للبيع - ', '2022-12-25 14:34:53'),
(289, '7', 'شقق  جديدة للتمليك حي السلامة', NULL, 'جده - حى السلامه', NULL, '1050000', '1', 0, '2', 1, '2', NULL, '5', NULL, NULL, NULL, '5', '210', NULL, NULL, NULL, NULL, '1', NULL, 'yes', '1', NULL, 'no', NULL, NULL, 'yes', NULL, NULL, 'شقق  جديدة للتمليك حي السلامة مخطط الهزاع شمال شارع قريش \r\nمساحة الشقة ٢١٠ متر \r\nمكونة الشقة :\r\n٥ غرف\r\n٤ حمامات \r\nغرفة خادمة \r\nغرفة سائق\r\nخزان مستقيل سفلي و خزان مستقيل علوي\r\nالاسعار ابتداء من ١،٠٥٠،٠٠٠', NULL, '24.794213816803946', '46.6946406875', '232fb64697c7bf658f9c2e0d8383c3c5.jpeg', '', NULL, '1', NULL, NULL, NULL, '0', '0', '0', '0', 'marketed', 'families_families', 'no', NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '90', 'شقق  جديدة للتمليك حي السلامة - جده - حى السلامه - 2 - شقة - apartment\r\n - للبيع - ', '2022-12-25 14:43:13'),
(290, '7', 'شقق  جديدة للتمليك حي الصواري', NULL, 'جده | حي الصواري', NULL, '880000', '1', 0, '2', 1, '2', NULL, '6', NULL, NULL, NULL, '5', '225', NULL, NULL, NULL, NULL, '1', NULL, 'yes', '1', NULL, 'no', NULL, NULL, 'yes', NULL, NULL, 'شقق للتمليك \r\n-الموقع: مخطط فال الموسى حي -الصواري في ابحر الشمالية\r\n-مساحة الشقة: ٢٢٥ م\r\n-عدد الغرف: ٦ + صاله\r\n-عدد الحمامات: ٥ \r\n-غرفة خادمة \r\n-غرفة سائق بحمام\r\n-كل شقة خزان علوي وسفلي\r\nالسعر يبدأ من ٨٨٠,٠٠٠ ريال', NULL, '24.794213816803946', '46.6946406875', '3cad1eddddc5f293d3d732756c293e16.jpeg', '', NULL, '1', NULL, NULL, NULL, '0', '0', '0', '0', 'marketed', 'families_families', 'no', NULL, 'yes', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'front', NULL, '0507789666', '63', 'شقق  جديدة للتمليك حي الصواري - جده | حي الصواري - 2 - شقة - apartment\r\n - للبيع - ', '2022-12-25 14:52:17'),
(291, '7', 'للبيع فيلا مفصولة في حي الصواري', NULL, 'جده | ابحر الشمالية -  حي الصواري', NULL, '1450000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '8', '300', NULL, NULL, NULL, NULL, '4', '4', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'للبيع فيلا مفصولة في أبحر الشمالية حي الصواري \r\nمساحة الارض ٣٠٠متر\r\nشارع عوض ٢٠ \r\nبسعر 1,450,000\r\n\r\nالدورالارضي \r\nمجلس رجال +مجلط \r\nصالة \r\nمطبخ\r\nحمامين \r\n\r\nالدور الاول \r\n٤غرف نوم\r\nصالة\r\n٣حمامات\r\nسيرفس\r\n\r\nالملحق \r\nغرفتين \r\nصالة\r\nحمام\r\n\r\nللاستفسار  0555013819', NULL, '24.794213816803946', '46.6946406875', 'c377742019169fd206853776b032a2f4.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '20', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '63', 'للبيع فيلا مفصولة في حي الصواري - جده | ابحر الشمالية -  حي الصواري - 2 - فيلا - apartment\r\n - للبيع - ', '2022-12-25 15:20:46'),
(292, '7', 'فيلا مودرن للايجار فى حى اللؤلوه', NULL, 'جده | ابحر الشماليه - حي اللؤلؤة', NULL, '75000', '1', 0, '1', 3, '2', NULL, '8', NULL, NULL, NULL, '8', '320', NULL, NULL, NULL, NULL, '3', '3', 'yes', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للإيجار فيلا مودرن \r\nمدخلين للفيلا + كراج للسيارة \r\nالدور الأرضي مكون من \r\nصالون بمساحه 6 متر * 10 متر + حمام ضيوف \r\nصالة كيره 8 متر * 12 متر + حمام للصالة + مطبخ كبير راكب 5 متر * 6 متر \r\nمسبح + مصعد راكب + غرفه سائق\r\nالدور الأول مكون من \r\nغرفه رئيسيه 10 متر * 6 متر + حمام للغرفة 3 متر * 3.5 متر + غرفه ملابس \r\nغرفه مع حمام مستقل 5 متر * 5 متر  \r\nعدد 2 غرفه بمساحه 5 متر * 5 متر + حمام + صالة 6 متر * 5 متر + مطبخ سيرفيس \r\nالملحق مكون من \r\nعدد 2 غرفه بمساحه 5 متر * 5 متر + حمام + صالة 6 متر * 5 متر + غرفه غسيل \r\nسطح كبير  \r\nالعنوان / أبحر الشمالية – حي اللؤلؤة – شارع الأمير عبد المجيد \r\nللتواصل على الرقم الواتس 0572996748', NULL, '24.794213816803946', '46.6946406875', '52d07f512455a816ff6efe05709e21c7.jpeg', '', NULL, '3', '3', NULL, NULL, '3', '25', '0', '0', 'marketed', NULL, 'no', 'annual', 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0572996748', '43', 'فيلا مودرن للايجار فى حى اللؤلوه - جده | ابحر الشماليه - حي اللؤلؤة - 2 - فيلا - apartment\r\n - للايجار - ', '2022-12-28 20:23:29'),
(293, '7', 'ثلاث فلل مودرن في حي المشاعل', NULL, 'جده |  ابحر الشماليه - حى المشاعل', NULL, '1900000', '1', 0, '2', 3, '2', NULL, '15', NULL, NULL, NULL, '10', '300', NULL, NULL, NULL, NULL, '8', '6', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'ثلاث فلل مودرن في حي المشاعل على واجهتين واجهه شرقيه شارع ١٦ م واجهة شمالية ٢٥ م مساحه/ ٣٠٠ م الدور الارضي مجلس رجال +٢ حمامات + صالتين مفتوحه في بعض الصالة دبل هاي الصالة والمطبخ مطله عل المسبح الدور الاول ٤ غرف نوم و صاله و ٣ حمامات شباك غرفة النوم الرئيسيه في واجهه الفيلا الملحق غرفة غسيل + غرفة شغالة مع حمامها غرفة + حمام + صاله كبيره شباك الصاله كبير يفتح في السطح سترة السطح في المقدمة زجاج فيها مسبح و تاسيس مصعد غرفة حارس وكراج ——— تاسيس مكيف مركزي الدور الارضي + الاول ضمانات عل السباكه و الكهرباء/ سنه والانشاءا / خمس سنوات الأسعار كما يلي: هي ثلاث فلل وحده على شارعين ٢٥، ١٦ سعرها مليونين و٢٠٠ وحده على شارع ٢٥ سعرها مليونين وحده على شارع ١٦ سعرها. مليون و٩٠٠/الف 0555013819', NULL, '24.794213816803946', '46.6946406875', '3e37c2ab5194231ab3abf3140562c575.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '25', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '55', 'ثلاث فلل مودرن في حي المشاعل - جده |  ابحر الشماليه - حى المشاعل - 2 - فيلا - apartment\r\n - للبيع - ', '2023-01-14 13:40:40'),
(294, '7', 'للبيع فيلا مودرن في ابحر الشمالية حي (الزمرد)', NULL, 'جده | ابحر الشمالية -  حي الزمرد', NULL, '1800000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '8', '312', NULL, NULL, NULL, NULL, '6', '4', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا مودرن في ابحر الشمالية حي (الزمرد)\r\nمساحة الارض ٣١٢.٥\r\nالسعر 1,800,000\r\nالدورالارضي:\r\n(١)مجلس رجال \r\n(١)مجلس نساء \r\n(١)صالة\r\n(١)مطبخ\r\n(٢)حمامين\r\n(١)مسبح\r\n(غرفة سائق بحمام)\r\n\r\nالدور الاول \r\n(٤)غرف نوم\r\n(٤)حمامات\r\n(١)صالة\r\n\r\nالملحق \r\n(٢)غرفتين نوم\r\n(١)صالة\r\n(١)غرفة شغالة بحمام\r\n(١)غرفة غسيل\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'ea6e9ec3c18594ae2f8cf31ca83682ea.jpeg', '', NULL, '1', '3', NULL, NULL, '0', NULL, '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '46', 'للبيع فيلا مودرن في ابحر الشمالية حي (الزمرد) - جده | ابحر الشمالية -  حي الزمرد - 2 - فيلا - apartment\r\n - للبيع - ', '2023-01-17 18:52:10'),
(295, '7', 'فيلا للبيع بسعر مغرى في ابحر الشمالية الشاطي الذهبي', NULL, 'جده | ابحر الشمالية -  الشاطئ الذهبي', NULL, '2000000', '1', 0, '2', 3, '2', NULL, '6', NULL, NULL, NULL, '6', '308', NULL, NULL, NULL, NULL, '3', '4', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'فيلا للبيع بسعر مغرى في ابحر الشمالية الشاطي الذهبي \r\nالأرضي  صوالين والاول 4 غرف نوم والملحق غرفة شغاله\r\nعمر الفيلا ١٠ سنوات\r\nالمساحة 308 متر مربع\r\nالسعر المطلوب ٢ مليون\r\nللتواصل: 0507789666', NULL, '24.794213816803946', '46.6946406875', 'e603867e464fe4b83303de8a49fe5adb.jpeg', '', NULL, '1', '3', NULL, NULL, '10', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '55', ' - جده | ابحر الشمالية -  الشاطئ الذهبي - 2 - فيلا - apartment\r\n - للبيع - ', '2023-01-22 19:25:11'),
(296, '7', 'عماره للبيع حي المروه جده', NULL, 'جده - حى المروه', NULL, '5500000', '1', 0, '2', 9, '2', NULL, '6', NULL, NULL, NULL, NULL, '760', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'عماره للبيع حي المروه جده \r\n8 شقق من 6 غرف وصاله مساحة الشقه 240 متر \r\nوفلتين من دورين روف \r\nعمر العماره 12 سنه \r\nالمساحه 760 متر\r\nالعماره واجهتين \r\n\r\nالمطلوب 5 مليون و500الف قابل التفاوض\r\nللتواصل 0507789666', NULL, '24.794213816803946', '46.6946406875', '79f8e1652f09ce3b7272b47f42fd4e88.jpeg', '', NULL, '1', '3', NULL, NULL, '12', '0', '0', '0', 'marketed', NULL, 'no', NULL, NULL, NULL, '8', NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'residential', NULL, NULL, NULL, NULL, NULL, '0507789666', '82', 'عماره للبيع حي المروه جده - جده - حى المروه - 2 - عمـــــــارة - floors for sale - للبيع - ', '2023-01-24 16:41:11'),
(297, '7', 'للبيع عماره (هدد) حي الحمرا', NULL, 'جده | حي الحمرا', NULL, '3300000', '1', 0, '2', 9, '2', NULL, '12', NULL, NULL, NULL, NULL, '548', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع \r\nعماره 3 ادوار وملحق 6شقق وملحق \r\nمساحه 548 متر حي الحمرا خلف التامينات \r\nالمطلوب 3 مليون و300الف\r\nللتواصل 0507789666', NULL, '24.794213816803946', '46.6946406875', 'ebac4a38df19cf852b35e0b255bfce6a.jpeg', '', NULL, '1', '3', NULL, NULL, '40', '0', '0', '0', 'marketed', NULL, 'no', NULL, NULL, NULL, '6', NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'residential', NULL, NULL, NULL, NULL, NULL, '0507789666', '91', 'للبيع عماره (هدد) حي الحمرا - جده | حي الحمرا - 2 - عمـــــــارة - floors for sale - للبيع - ', '2023-01-24 16:54:06'),
(298, '7', 'للبيع فلل في مخطط السعيد', NULL, 'جده | ابحر الشماليه - مخطط السعيد', NULL, '1550000', '1', 0, '2', 3, '2', NULL, '8', NULL, NULL, NULL, '6', '300', NULL, NULL, NULL, NULL, '3', '2', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'فلل مخطط السعيد\r\nمشروع جديد ومميز من حيث مداخل ومخارج الحي يربط بينه وبين الخطوط الرئيسية ٥ د من اهم المعالم مدينة الملك عبدالله الرياضية عبارة عن : \r\n\r\nفيلا بمخطط السعيد بواجهات مختلفة\r\nتبدأ مساحة الأرض من ٣٠٠ م \r\nمسطح مباني ٤٨٧،٥ م \r\n\r\nالدور الأرضي :\r\nمجلس رجال مقلط دورة مياه\r\nصالة استقبال نساء مع سفرة طعام ودورة مياه \r\nمطبخ \r\nتاسيس مصعد\r\n\r\nالدور الأول :\r\nغرفتين نوم ماستر \r\nغرفتين نوم مع دورة مياه مشتركة صالة مطبخ سيرفيس\r\n\r\nالملحق :\r\nغرفتين نوم مع دورة مشتركة صالة  + حمام غسيل \r\nسطح خارجي بجلسات رائعة ومساحات جميلة \r\nتبدأ الأسعار من ١،٥٥٠،٠٠٠\r\nللتواصل : 0507789666\r\nالضمانات : \r\n* التمديدات الكهربائية ٢٥ سنة من شركة الفنار .\r\n* المفاتيح الكهربائية ٢٥ سنة من شركة الأنوار .\r\n* القطع الصحية ٥ سنوات .\r\n* السباكة ٥ سنوات .\r\n* تشققات الجدارن وهبوط البلاط سنتان .\r\n* الشلال ٥ سنوات .\r\n* بديل الخشب ٣ سنوات .\r\n* جميع مرتحل البناء تحت إشراف مكتب هندسي + إختبار تربة بالمختبر + شهادة إختبار خرسانة  :', NULL, '24.794213816803946', '46.6946406875', '2d10619d6bbf26209fd370b58310c34d.jpeg', '', NULL, '1', '2', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '55', 'للبيع فلل في مخطط السعيد - جده | ابحر الشماليه - مخطط السعيد - 2 - فيلا - apartment\r\n - للبيع - ', '2023-01-24 17:32:14'),
(299, '7', 'للبيع شقق تمليك حي الريان', NULL, 'جده - حى الريان', NULL, '0', '1', 0, '2', 1, '2', NULL, '6', NULL, NULL, NULL, '5', '224', NULL, NULL, NULL, NULL, '2', NULL, 'yes', '1', NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'للبيع \r\nشقق تمليك حي الريان \r\nالشقه من 6 غرف و5 حمامات  مساحة الشقه 224 متر الدور شقتين للتواصل 0507789666', NULL, '24.794213816803946', '46.6946406875', '6814d7670dfe7dfa866ee992ebf3972e.jpeg', '', NULL, '1', NULL, NULL, NULL, '0', '0', '0', '0', 'marketed', 'families_families', 'no', NULL, 'yes', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'front', NULL, '0507789666', '92', 'للبيع شقق تمليك حي الريان - جده - حى الريان - 2 - شقة - apartment\r\n - للبيع - ', '2023-01-24 17:38:11'),
(300, '7', 'شقه فاخره للايجار حي الشراع', NULL, 'جده | ابحر الشمالية -  حي الشراع', NULL, '30000', '1', 0, '1', 1, '2', NULL, '4', NULL, NULL, NULL, '2', '200', NULL, NULL, NULL, NULL, '2', NULL, 'yes', '1', NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'شقة  للايجار  4 غرف وصاله و٢ حمام ومطبخ راكب.  أبحر الشماليه شارع الامير نايف \r\nالمطلوب ٣٠ الف سنوي \r\n للتواصل : 0572996748', NULL, '24.794213816803946', '46.6946406875', 'be06046bfd454fc8a3ca5625d60b040d.jpeg', '', NULL, '1', NULL, NULL, NULL, '3', '20', '0', '0', 'marketed', 'families_families', 'no', 'annual', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0572996748', '45', 'شقه فاخره للايجار حي الشراع - جده | ابحر الشمالية -  حي الشراع - 2 - شقة - apartment\r\n - للايجار - ', '2023-01-25 18:06:11'),
(301, '7', 'للبيع فيلا +٣ شقق', NULL, 'جده | ابحر الشمالية -  مخطط هشام', NULL, '4000000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '8', '686', NULL, NULL, NULL, NULL, '5', '4', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'مخطط هشام \r\nفيلا +٣ شقق للبيع\r\nمواصفات الفيلا \r\nمساحتها 686 متر \r\nالدور الأرضي ١ مجلس رجال مع حمام ومغاسل \r\n١ سفرت طعام او مقلط \r\n١ مجلس نساء مع حمام ومغاسل \r\n١ مطبخ + غرفه خادمه مع حمام \r\nالدور الأولي ٤ غرف نوم ماستر مع الحمامات ٢ صاله كبيره ١ سرفس \r\nالمحلق مفتوح مع صاله كبيره مع حمام ومغسله +سطوح كبير\r\nالشقق كل شقه مكونة من\r\n٢ غرف نوم ماستر مع الحمامات ١مجلس رجال مع حمام ومغاسل\r\n١ صالهً كبيره ١ مطبخ ١ غرفه غسيل\r\nمطلوب \r\n4 مليون\r\nللتواصل : 0592558702', NULL, '24.794213816803946', '46.6946406875', 'c1b468224599906a755494b67293d396.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '3', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0592558702', '55', 'للبيع فيلا +٣ شقق - جده | ابحر الشمالية -  مخطط هشام - 2 - فيلا - apartment\r\n - للبيع - ', '2023-01-30 15:48:46'),
(302, '7', 'للبيع شقه مؤثثه بمدينة الملك عبدالله الاقتصادية', NULL, 'جده - مدينة الملك عبدالله الاقتصادية', NULL, '0', '1', 0, '2', 13, '2', NULL, '1', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, 'للبيع شقه مؤثثه بمدينة الملك عبدالله الاقتصادية رقم الشقه 22 عمارة V1_3 عباره عن غرفه وصاله ومطبخ وحمام \r\nللتواصل 0507789666', NULL, '24.794213816803946', '46.6946406875', '488f034aa8e0c52667032e3f201a6987.jpeg', '', NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '55', 'للبيع شقه مؤثثه بمدينة الملك عبدالله الاقتصادية - جده - مدينة الملك عبدالله الاقتصادية - 2 - شقة مفروشـــة - building for rent - للبيع - ', '2023-01-30 15:55:28'),
(303, '7', NULL, NULL, 'جده | ابحر الشمالية - حي الياقوت', NULL, '1500000', '1', 0, '2', 3, '2', NULL, '8', NULL, NULL, NULL, '6', '230', NULL, NULL, NULL, NULL, '4', '1', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'للبيع فيلا مودرن في ابحر الشمالية حي (الياقوت )\r\nمساحة الارض 230\r\nالسعر 1,500,000\r\nالدورالارضي:\r\n(١)مجلس رجال \r\n(١)صالة\r\n(١)مطبخ\r\n(٢)حمامين\r\n(غرفة سائق بحمام)\r\n\r\nالدور الاول \r\n(٣)غرف نوم\r\n(٣)حمامات\r\n(١)صالة\r\n\r\nالملحق \r\n(٢)غرفتين نوم\r\n(١)صالة\r\n\r\nشارع20\r\n\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'f3833aadcd324d6c65399ac60cd861d1.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '20', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '75', ' - جده | ابحر الشمالية - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2023-02-11 09:13:03'),
(304, '7', NULL, NULL, 'جده | ابحر الشمالية -  حي الزمرد', NULL, '300000', NULL, 0, '2', 3, '2', NULL, '8', NULL, NULL, NULL, '6', '618', NULL, NULL, NULL, NULL, '3', '2', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا وشقة في ابحرالشماليه حي الزمرد (بناء شخصي)\r\n\r\nالفيلا عبارة عن دورين مدخل مستقل \r\nالدور الارضي صوالين وصالة ومطبخ ومسبح حوش دوانية\r\nغرف سائق \r\nالدور الاول ٥غرف نوم كل غرفة بحمام مستقل صالة وسيعه\r\n\r\nالملحق عبارة عن شقة \r\n٤غرف صاله ٣حمامات مطبخ مدخلين غرفة غسيل \r\nمدخل خاص  يوجد تاسيس مصعد\r\n\r\nجميع البلاط من شركة ابيات \r\nشغل فاخر \r\nمساحة الارض 618\r\nشارعين\r\nالسعر 3,000,000\r\n\r\n(ملاحظة البيع بحالتها)\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'ed4303ff6447038155efc6f8346eb309.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '1', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '46', ' - جده | ابحر الشمالية -  حي الزمرد - 2 - فيلا - apartment\r\n - للبيع - ', '2023-02-17 11:30:53'),
(305, '7', 'للبيع فيلا وشقة في ابحرالشماليه', NULL, 'جده | ابحر الشمالية -  حي الزمرد', NULL, '3000000', '1', 0, '2', 3, '2', NULL, '10', NULL, NULL, NULL, '6', '618', NULL, NULL, NULL, NULL, '3', '4', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا وشقة في ابحرالشماليه حي الزمرد (بناء شخصي)\r\n\r\nالفيلا عبارة عن دورين مدخل مستقل \r\nالدور الارضي صوالين وصالة ومطبخ ومسبح حوش دوانية\r\nغرف سائق \r\nالدور الاول ٥غرف نوم كل غرفة بحمام مستقل صالة وسيعه\r\n\r\nالملحق عبارة عن شقة \r\n٤غرف صاله ٣حمامات مطبخ مدخلين غرفة غسيل \r\nمدخل خاص  يوجد تاسيس مصعد\r\n\r\nجميع البلاط من شركة ابيات \r\nشغل فاخر \r\nمساحة الارض 618\r\nشارعين\r\nالسعر 3,000,000\r\n\r\n(ملاحظة البيع بحالتها)\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'f3d24ed7c3f52077dccb49ee7222f7e9.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '1', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '46', 'للبيع فيلا وشقة في ابحرالشماليه - جده | ابحر الشمالية -  حي الزمرد - 2 - فيلا - apartment\r\n - للبيع - ', '2023-02-17 11:44:38'),
(306, '7', 'للبيع فندق سكني تجاري عضم', NULL, 'جده - حى الصفا', NULL, '0', '1', 0, '2', 9, '2', NULL, '57', NULL, NULL, NULL, NULL, '1660', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع فندق سكني تجاري عضم \r\nمكون من  \r\nاربعة طوابق وميزان \r\nفيه ٥٧ وحده سكني  وفيلتين روف \r\nو٨ محلات تجاريه  ومواقف في البدروم تتسع ل ٢٦ سياره \r\nمساحه تقريبيه ١٦٦٠ \r\nعلى شارع محمد نصيف تبعد عن المطار ٦دقائق حي الصفا بجده\r\nللتواصل 0507789666', NULL, '24.794213816803946', '46.6946406875', 'd44c501bcec169320abf4625d84c4a90.jpeg', '', NULL, '1', '4', NULL, '8', '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, NULL, NULL, '2', NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'res_comm', NULL, NULL, NULL, NULL, NULL, '0507789666', '41', 'للبيع فندق سكني تجاري عضم - جده - حى الصفا - 2 - عمـــــــارة - floors for sale - للبيع - ', '2023-02-21 15:13:52'),
(307, '18', 'شقه للبيع 5 غرف من المالك مباشره افراغ فوري في السلامة', NULL, 'جدة حي السلامة', NULL, '790000', '1', 0, '2', 1, '2', NULL, '5', NULL, NULL, NULL, '3', '170', NULL, NULL, NULL, NULL, '1', NULL, 'yes', '1', NULL, 'yes', NULL, NULL, 'yes', NULL, NULL, 'لتمليك شقه 《5》 غرف بسعر مميز وموقع قريب من الخدمات\r\n⭐️عرض حصري في #جدة ~ حي #السلامة⭐️\r\nمكون من :\r\n5 غرف نوم\r\n3 دورات مياه\r\nمطبخ\r\nصالة\r\nغرفة شغاله\r\nغرفة سائق\r\n-\r\n✔️المساحة : 170 م\r\n✔️السعر : 790 الف\r\n#افراغ فوري\r\n⭕️ يقبل البنك والكاش ⭕️\r\nللتواصل والاستفسار :0535150743', NULL, '24.794213816803946', '46.6946406875', '874131715c040a0f78bb1d5b8c0fa412.jpeg', '', NULL, '1', NULL, NULL, NULL, '1', '15', '20', '20', 'owner', 'families_families', 'no', NULL, 'yes', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'front', NULL, NULL, '90', 'شقه للبيع 5 غرف من المالك مباشره افراغ فوري في السلامة - جدة حي السلامة - 2 - شقة - apartment\r\n - للبيع - ', '2023-02-24 19:58:14'),
(308, '20', 'اقسام البناء للتسويق العقاري', NULL, 'حي الشراع ابحر الشماليه', NULL, '1650000', '1', 0, '2', 3, NULL, NULL, '5', NULL, NULL, NULL, '5', '200', NULL, NULL, NULL, NULL, '2', '2', 'yes', NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, 'فيلا للبيع ابحر الشماليه تتكون من 5 غرف و 5 حمامات عمر العقار 7 سنين موقع ممتاز في ابحر الشماليه', NULL, '24.794213816803946', '46.6946406875', '113ebd4628a56e1e817e474d1d8a9173.jpg', '', NULL, '3', '3', NULL, NULL, '7', '20', '10', '10', 'marketed', NULL, 'yes', NULL, 'yes', NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '55', 'اقسام البناء للتسويق العقاري - حي الشراع ابحر الشماليه -  - فيلا - apartment\r\n - للبيع - ', '2023-02-28 07:57:10'),
(309, '7', 'للبيع فيلا مودرن حي الياقوت', NULL, 'جده | ابحر الشمالية - حي الياقوت', NULL, '1650000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '5', '315', NULL, NULL, NULL, NULL, '4', '3', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'فيلا فاخرة للبيع - ابحر الشمالية - حي الياقوت \r\nالمساحه ٣١٥ م - شارعها ١٦ - واجهتها غربية \r\n\r\nتتكون من دورين و ملحق \r\nالدور الارضي: مجلس رجال ( بدورة مياه و مغاسل ) \r\nمجلس نساء ( بدورة مياه و مغاسل ) صاله + مطبخ + حديقه \r\n\r\nالدور الاول : غرفه نوم ماستر ( بدورة مياه و غرفه ملابس ) ثلاث غرف نوم + دورتين مياه + صاله + بلكونة جانبية \r\n\r\nالملحق : غرفه نوم ( بدورة مياه ) غرفه خادمة ( بدورة مياه ) غرفه غسيل + صاله مطله على السطح \r\n\r\nتم تسيس العقار على اعلاء مستويات الجودة \r\nتوجد ضمانات على الكهرباء و السباكة ( ٢٥ ) عام \r\nتوجد ضمانات انشائية للعقار\r\nالسعر 1,650,000\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '40df05698b430cf09ad566e64104fc1b.jpeg', '', NULL, '3', '3', NULL, NULL, '0', '16', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '75', 'للبيع فيلا مودرن حي الياقوت - جده | ابحر الشمالية - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2023-03-08 13:01:07'),
(310, '7', 'للبيع فيلا مودرن في ابحر الشمالية حي (الياقوت )', NULL, 'جده | ابحر الشمالية - حي الياقوت', NULL, '1750000', '1', 0, '2', 3, '2', NULL, '8', NULL, NULL, NULL, '6', '275', NULL, NULL, NULL, NULL, '3', '2', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا مودرن في ابحر الشمالية حي (الياقوت )\r\nمساحة الارض 275\r\nالسعر 1,750,000 الشارعين\r\nالدورالارضي:\r\n(١)مجلس رجال \r\n(١)صالةوسيعه\r\n(١)مطبخ\r\n(١)مسبح\r\n(٢)حمامين\r\n(غرفة سائق بحمام)\r\n\r\nالدور الاول \r\n(٣)غرف نوم\r\n(٣)حمامات\r\n(١)صالة\r\n\r\nالملحق \r\n(٢)غرفتين نوم\r\n(١)صالة\r\n\r\nشارعين \r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '31b41ba1e5fc3dad2bf5c2532e651f27.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'yes', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '75', 'للبيع فيلا مودرن في ابحر الشمالية حي (الياقوت ) - جده | ابحر الشمالية - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2023-03-08 13:10:29'),
(311, '7', 'للبيع مشروع تمليك النزهه 11 شقه', NULL, 'جده | حي النزهه', NULL, '525000', '1', 0, '2', 9, '2', NULL, '4', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع مشروع تمليك النزهه 11 شقه مواصفات 3 غرف و3 حمامات السعر 525 الف 6 شقق مواصفات 4 غرف و 3 حمامات مع صاله كبيره الاسعار من 550الف التواصل 0507789666', NULL, '24.794213816803946', '46.6946406875', 'c8015cfa3ea59580fa30e4eaeb3c797a.jpeg', '', NULL, '1', '6', NULL, '10', '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, NULL, NULL, '11', NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'res_comm', NULL, NULL, NULL, NULL, NULL, '0507789666', '93', 'للبيع مشروع تمليك النزهه 11 شقه - جده | حي النزهه - 2 - عمـــــــارة - floors for sale - للبيع - ', '2023-03-08 14:31:12'),
(312, '7', 'للبيع دورين و ملحق', NULL, 'جده | ابحر الشماليه - حي اللؤلؤة', NULL, '1500000', '1', 0, '2', 3, '2', NULL, '8', NULL, NULL, NULL, '6', '200', NULL, NULL, NULL, NULL, '3', '1', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'جدة - ابحر الشمالية - حي الولوة \r\nالمساحه ٢٠٠ م - شارعها ١٦ م - الواجة شرقية \r\n\r\nتتكون من دورين و ملحق \r\nالدور الارضي : مجلس رجال ( بدورة مياه ) صاله + مطبخ + مسبح \r\n\r\nالدور الثاني : ثلاث غرف نوم + ثلاث دورات مياه + صاله + بلكونة جانبية \r\n\r\nالملحق : غرفتين نوم + دورة مياه + غرفه غسيل \r\nالسعر مليون ٥٠٠/الف\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '4a2bdd517d6f09de00eadff68dcef1a6.jpeg', '', NULL, '2', '3', NULL, NULL, '0', '16', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '43', 'للبيع دورين و ملحق - جده | ابحر الشماليه - حي اللؤلؤة - 2 - فيلا - apartment\r\n - للبيع - ', '2023-03-14 15:36:28'),
(313, '7', 'للإيجار شقه في ابحرالشماليه', NULL, 'جده | ابحر الشمالية -  حي الصواري', NULL, '55000', '1', 0, '1', 1, '2', NULL, '6', NULL, NULL, NULL, '3', '240', NULL, NULL, NULL, NULL, '2', NULL, 'yes', '1', NULL, 'yes', NULL, NULL, 'yes', NULL, NULL, 'للإيجار شقه في ابحرالشماليه حي الصواري جديدة  أمام الحديقه وسهل الوصول والدخول لها يوجد مطبخ راكب ومكيفات مساحة الشقه 240 شرحه جدا وواسعة \r\n٦ غرف مدخلين طبعًا\r\nغرفة خادمة وسائق \r\nالشقه جديده لم تسكن \r\nالسعر٥٥ الف \r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'c405659381e34f54e2e339c630714ceb.jpeg', '', NULL, '1', NULL, NULL, NULL, '0', '0', '0', '0', 'marketed', 'families_families', 'no', 'annual', 'yes', '3', NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'front', NULL, '0555013819', '63', 'للإيجار شقه في ابحرالشماليه - جده | ابحر الشمالية -  حي الصواري - 2 - شقة - apartment\r\n - للايجار - ', '2023-03-14 16:08:06'),
(314, '7', 'للبيع فيلا مودرن فاخرة في أبحرالشمالية حي الياقوت', NULL, 'جده | ابحر الشمالية - حي الياقوت', NULL, '1700000', '1', 0, '2', 3, '2', NULL, '8', NULL, NULL, NULL, '6', '257', NULL, NULL, NULL, NULL, '3', '2', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا مودرن فاخرة في أبحرالشمالية حي الياقوت \r\nمساحة الارض٢٥٧ \r\nشارع 15\r\n\r\nالدور الارضي \r\nغرفة سائق \r\nمسبح \r\nمجلس رجال \r\nدورتين مياة مع المغاسل \r\nصالة ومجلس نساء \r\nمطبخ \r\n\r\nالدور الاول \r\n(٣)غرف نوم\r\n(٢)حمامين \r\n(١)صالة\r\n\r\nالملحق\r\nغرفتين \r\nصالة\r\nحمام \r\nسطوح \r\nالسعر 1,700,000\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '759502ff6f488f25dc0c5a6c076ccbd0.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '15', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '-1', 'yes', 'no', 'no', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '75', 'للبيع فيلا مودرن فاخرة في أبحرالشمالية حي الياقوت - جده | ابحر الشمالية - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2023-03-14 16:12:51'),
(315, '21', 'ناصر', NULL, 'مركز الحسو تابع محافظة الحناكيه', NULL, '60000', '1', 0, '2', 8, '3', NULL, NULL, NULL, NULL, NULL, NULL, '660', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع ارض بمركز الحسو تابع للحناكيه يبعد عن المدينة المنورة ٢٥٠ ك تقريباً\r\nشارع ٣٠ م\r\nمخطط رقم 854/و', NULL, '24.613068498040427', '41.61785388385528', '4d7a3a902569fe4a74292655b79313ed.jpeg', '', NULL, '4', NULL, NULL, NULL, NULL, '30', '30', '22', 'owner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'type', 'ناصر - مركز الحسو تابع محافظة الحناكيه - 3 - ارض - building for sale - للبيع - ', '2023-03-21 11:00:45'),
(316, '7', 'للايجار فيلا في ابحرالشماليه حي الصواري', NULL, 'جده | ابحر الشمالية -  حي الصواري', NULL, '55000', '1', 0, '1', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '250', NULL, NULL, NULL, NULL, '3', '3', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'للايجار فيلا في ابحرالشماليه حي الصواري \r\nمساحة الارض ٢٥٠متر \r\nالدور الارضي :\r\nمجلس رجال \r\nمجلس نساء \r\nصالة \r\nمطبخ \r\nحمامين\r\nالدور الاول \r\n٣غرف نوم\r\nصالة \r\nحمامين\r\nالملحق \r\nغرفتين\r\nحمامين \r\nغرفة غسيل \r\nالسعر 55,000\r\nللاستفسار 0555013819', NULL, '24.794213816803946', '46.6946406875', '41f9cf3edeb1f89f51fdab82702f0040.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', 'annual', 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '63', 'للايجار فيلا في ابحرالشماليه حي الصواري - جده | ابحر الشمالية -  حي الصواري - 2 - فيلا - apartment\r\n - للايجار - ', '2023-04-09 19:34:41'),
(317, '7', 'للايجار فيلا في ابحرالشماليه حي اللؤلؤة', NULL, 'جده | ابحر الشماليه - حي اللؤلؤة', NULL, '55000', '1', 0, '1', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '200', NULL, NULL, NULL, NULL, '3', '1', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'للايجار فيلا في ابحرالشماليه حي اللؤلؤة\r\nمساحة الارض ٢٠٠متر\r\nمكيفات مركزي راكبه \r\nالدور الارضي :\r\nمجلس رجال \r\nمجلس نساء \r\nصالة \r\nمطبخ راااكب\r\nحمامين\r\nالدور الاول \r\n٣غرف نوم\r\nصالة \r\nحمامين\r\nالملحق \r\nغرفتين\r\nحمامين \r\nغرفة غسيل \r\nالسعر 55,000 \r\nللاستفسار 0555013819', NULL, '24.794213816803946', '46.6946406875', '200719de218fe0a71bb9a81defcbbfe8.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', 'annual', 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '43', 'للايجار فيلا في ابحرالشماليه حي اللؤلؤة - جده | ابحر الشماليه - حي اللؤلؤة - 2 - فيلا - apartment\r\n - للايجار - ', '2023-04-09 19:39:26'),
(318, '7', 'للبيع فيلا في ابحرالشماليه حي الياقوت', NULL, 'جده | ابحر الشمالية - حي الياقوت', NULL, '1300000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '231', NULL, NULL, NULL, NULL, '3', '2', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'للبيع فيلا في ابحرالشماليه حي الياقوت \r\nمساحة الارض ٢٣١\r\n\r\nالدور الارضي :\r\nمسبح\r\nمجلس رجال \r\nصالة وسيعه\r\nمطبخ \r\nحمامين\r\nالدور الاول \r\n٣غرف نوم\r\nصالة \r\nحمامين\r\nالملحق \r\nغرفتين\r\nحمامين \r\nغرفة غسيل \r\nالسعر 1,300,000\r\nللاستفسار 0555013819', NULL, '24.794213816803946', '46.6946406875', '18e458d564fd0d6e5daa02d3e5560413.jpeg', '', NULL, '2', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '75', 'للبيع فيلا في ابحرالشماليه حي الياقوت - جده | ابحر الشمالية - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2023-04-09 19:43:42'),
(319, '7', 'للبيع فيلا في ابحرالشماليه حي الصواري', NULL, NULL, NULL, '155000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '250', NULL, NULL, NULL, NULL, '3', '3', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا في ابحرالشماليه حي الصواري\r\nالسعر 1,550,000\r\nالمساحة 250 متر مربع\r\nالمسطحات 450 متر مربع\r\nنظام البناء لبشه كامل\r\nالدفان علي مراحل واستلام هندسي\r\nالحديد سابك و بن دعجم\r\nالبلوك خرساني و احمر\r\nالصب صبة خرسانية بمب\r\nالسباكة القبلان للتغذية والراجحي للصرف\r\nالكهرباء اسلاك بحرك والطبلونات الفنار\r\nتوزيع ثلاثي للكهرباء كل دور منفصل\r\nتاسيس مصعد كهرباء ومباني\r\nمسبح \r\nمنطقة زرع \r\nواجهه مودرن \r\nمغاسل رخامية\r\nتشطيبات فاخرة\r\nضمان علي العظم 10 سنوات\r\nضمان علي العزل 10 سنوات\r\nضمان علي اعمال الكهرباء والسباكة 3 سنوات\r\nللاستفسار 0555013819', NULL, '24.794213816803946', '46.6946406875', '9f01da8b98bef26a568601a18e59b57c.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '63', 'للبيع فيلا في ابحرالشماليه حي الصواري -  - 2 - فيلا - apartment\r\n - للبيع - ', '2023-04-09 19:48:13'),
(320, '7', 'للايجار عمارة بلكامل  جديدة', NULL, 'جده | ابحر الشمالية -  حي الزمرد', NULL, '160000', '1', 0, '1', 9, '2', NULL, '10', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للايجار عمارة جديدة مكونه من ثلاث طوابق مع الارضي الدور الاول شقتين مكونه من اربع غرف وصاله ومطبخ وثلاث حمامات\r\nالدور الثاني شقتين مكونه من خمس غرف وصاله ومطبخ وثلاث حمامات\r\nالدور الثالث روف \r\nالموقع ابحر الشمالية حي الزمرد مقابل منتجع انديقو\r\nالتاجير بالكامل بسعر(160) الف \r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '39de10acdffe885d73e39623139729f2.jpeg', '', NULL, '4', '3', NULL, '0', '0', '0', '0', '0', 'marketed', NULL, 'no', 'annual', NULL, NULL, '5', NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '46', 'للايجار عمارة بلكامل  جديدة - جده | ابحر الشمالية -  حي الزمرد - 2 - عمـــــــارة - floors for sale - للايجار - ', '2023-04-09 19:53:59'),
(321, '7', 'للبيع فيلا دور واحد في جدة', NULL, 'جده |  ابحر الشماليه - حى النور', NULL, '1100000', '1', 0, '2', 2, '2', NULL, '7', NULL, NULL, NULL, '6', '312', NULL, NULL, NULL, NULL, NULL, '4', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع فيلا دور واحد في جدة \r\nابحر الشمالية في حي النور\r\nالسعر  1,100,000\r\nمساحة الفيلا: 312.5 \r\nواجهة غربية شارع عرض 15م \r\nمكونات الدور :\r\nثلاث غرف نوم ومجلس وصالة طعام وصاله معيشة ومطبخ وثلاث دورات مياه \r\n موقف داخلي  للسيارة بباب الكتروني \r\n حوش خارجي \r\nسطح  كبير \r\nمنطقة كوفي قبل السطح\r\nحديقة \r\nمميزات الدور:\r\n -إمكانية بناء دور ثاني\r\n- يوجد شهادة اشغال وشهادة اتمام بناء\r\n-مؤسس بداخلها مصعد \r\n-تشطيب سوبر ديلوكس \r\n -بناء شخصي \r\n-تقبل البنوك\r\n-من المالك مباشرة و السعي كامل \r\nللوسطاء او للمشتري\r\n-ضمانات نبرو والفنار \r\n- يوجد صور مراحل المشروع\r\n\r\n#رقم المخطط :6 / ج س \r\nالطول على الشارع: 12م#\r\nالعمق :٢٥م\r\n مواقع قريبة :\r\n10 دقائق من البحر \r\n15 دقيقة من مخطط الامير نايف \r\nالكلية التقنية الرقمية للبنات\r\nجامعة الاعمال والتكنولوجيا \r\nحديقة شاطئ الخيول \r\nحديقة بحر ذهبان \r\nمستشفى قوى الامن\r\nطريق نافذ على طريق المدينة الجديد\r\nقريبة من طريق الامير عبدالمجيد \r\n للاستفسار 0555013819', NULL, '24.794213816803946', '46.6946406875', '6a5c24c65d7e8f9b29e308a982d3411a.jpeg', '', NULL, '3', NULL, NULL, NULL, '0', '15', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '39', 'للبيع فيلا دور واحد في جدة - جده |  ابحر الشماليه - حى النور - 2 - دور - Villas for sale\r\n - للبيع - ', '2023-04-09 22:21:05'),
(322, '7', 'للبيع فيلًا مودرن في ابحر الشمالية', NULL, 'جده | ابحر الشماليه - حي الشراع', NULL, '3600000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '400', NULL, NULL, NULL, NULL, '4', '3', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلًا مودرن في ابحر الشمالية \r\n\r\nحي الشراع \r\n\r\nمواصفات الفيلا\r\n\r\nتشطيبات عصريه بمساحات مفتوحه مطلة على الحديقة واضاءة طبيعيه مطلة على الفناء الداخلي والمسبح مع مراعاة اقصى قدر من الخصوصية.\r\nتم توثيق جميع مراحل البناء بداية من الاساسات وانتهاء بأعمال العزل والتشطيب.\r\n\r\nالمواصفات:\r\n١- صالات مفتوحه في الدور الارضي\r\n٢ - مطبخ مطل على الحديقة + مطبخ ملحق اضافي\r\n٣- ثلاث غرف نوم اطفال مع حمام مستقل لكل غرفه\r\n٤- جناح غرفه نوم رئيسيه مع تراس مستقل \r\n٥- تراس اخر منفصل يخدم العائلة مع الصاله.\r\n٦- التكييف المركزي في الصالات الرئيسيه من شركه جنرال\r\n٧- اطقم الحمامات الصحيه من شركه hatch\r\n\r\nالضمانات:\r\n١- ضمان على اعمال الالمونيوم مقدم من شركه ابيات لمده ٢٥ سنه\r\n٢- ضمان على الابواب مقدام من شركه ابيات لمده ١٠ سنوات\r\n٣- ضمان على سيفونات الكراسي المعلقه مقدم من شركه ابيات لمده ١٠ سنوات\r\n٤- ضمان تمديدات المكيفات السبلت مقدم من شركه اساد لمده ٥ سنوات\r\n٥- ضمان على الاطقم من الصحيه من شركه هاتش لمده سنه\r\n٦- ضمان مقدم من المالك ضد المصنعيه لكل من الكهرباء والسباكه لمده سنه.\r\n\r\nمساحه الارض ٤٠٠ متر\r\nمساحه المباني ٥٧٠ متر\r\n\r\nالسعر ٣ مليون و ٦٠٠ الف تفاوض للجاد\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '31caf3897e68a487dd9bc2167f91a062.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '-1', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '45', ' - جده | ابحر الشماليه - حي الشراع - 2 - فيلا - apartment\r\n - للبيع - ', '2023-04-10 17:29:30'),
(324, '7', 'للبيع عمارة في حي الريان 3', NULL, 'جده | ابحر الشمالية -  حي الريان', NULL, '6000000', '1', 0, '2', 9, '2', NULL, '15', NULL, NULL, NULL, NULL, '600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'للبيع عمارة في حي الريان 3 \r\nمساحة  الارض 600 \r\nالعمر تقريبا 10 سنوات\r\n7ادوار  \r\nدور الارضي  مواقف سيارات وغرفتين للحارس والسواق \r\nمن الدور الاول الي الرابع \r\n8 شقق من خمس غرف و3 حمامات وصاله \r\nوالدور الخامس والسادس \r\n  فلة علي نظام شقق\r\nمن 4 شقق  3 غرف وحمامين وصاله وسطح  \r\n دخل العمارة في السنه350 الف وكل الشقق عقود اكترونيةجديدة\r\nالسعر 6,000,000\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'ecdf4150b72c917f6e80c1f86cf513f3.jpeg', '', NULL, '1', '7', NULL, '0', '10', '0', '0', '0', 'marketed', NULL, 'no', NULL, NULL, NULL, '12', NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'residential', NULL, NULL, NULL, NULL, NULL, '0555013819', '92', 'للبيع عمارة في حي الريان 3 - جده | ابحر الشمالية -  حي الريان - 2 - عمـــــــارة - floors for sale - للبيع - ', '2023-04-15 23:57:40'),
(325, '7', 'للبيع شقة في مخطط السندس', NULL, 'جده -  مخطط السندس', NULL, '600000', '1', 0, '2', 1, '2', NULL, '5', NULL, NULL, NULL, '3', '160', NULL, NULL, NULL, NULL, '1', NULL, 'yes', '1', NULL, 'no', NULL, NULL, 'yes', NULL, NULL, 'للبيع شقة في مخطط السندس\r\n\r\n- واجهة أمامية\r\n- مساحة ١٦٠ \r\n- مدخلين\r\n- ٥ غرف وصالة ومبطخ \r\n- ٣ دورات مياه \r\n- غرفة سائق\r\n- موقف خاص\r\n- السعر: ٦٠٠ الف ريال\r\nللاستفسار 0555013819', NULL, '24.794213816803946', '46.6946406875', '05cce77f70d81f9b8f1461bca124cd07.jpeg', '', NULL, '1', NULL, NULL, NULL, '0', '0', '0', '0', 'marketed', 'families_families', 'no', NULL, 'yes', '2', NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'front', NULL, '0555013819', '55', 'للبيع شقة في مخطط السندس - جده -  مخطط السندس - 2 - شقة - apartment\r\n - للبيع - ', '2023-04-16 00:07:10'),
(326, '7', 'البيع شقه حي الشفا جنوب جده', NULL, 'جده - حى الشفا', NULL, '350000', '1', 0, '2', 1, '2', NULL, '3', NULL, NULL, NULL, '2', '0', NULL, NULL, NULL, NULL, '2', NULL, 'yes', '1', NULL, 'no', NULL, NULL, 'no', NULL, NULL, 'البيع شقه ٣ غرف و ٣ حمامات ومطبخ وصاله ومجلس رجال موجره ب ٢٤ الف شقه خلفيه الدور الثاني مطلوب 350الف قابل التفاوض، حي الشفا جنوب جده  للتواصل : 0507789666', NULL, '24.794213816803946', '46.6946406875', '943536cd89195632b0574b30eeacee4f.jpeg', '', NULL, '1', NULL, NULL, NULL, '0', '0', '0', '0', 'marketed', 'families_families', 'no', NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0507789666', '11', 'البيع شقه حي الشفا جنوب جده - جده - حى الشفا - 2 - شقة - apartment\r\n - للبيع - ', '2023-04-19 19:47:33'),
(327, '7', 'للبيع فيلا دوبلكس منفصله من الامام  متصله  من الخلف', NULL, 'جده | ابحر الشمالية - حي الياقوت', NULL, '1550000', '1', 0, '2', 3, '2', NULL, '8', NULL, NULL, NULL, '6', '420', NULL, NULL, NULL, NULL, '3', '3', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, '✅للبيع فيلا دوبلكس منفصله من الامام  متصله  من الخلف  *مودرن\r\nالموقع حي الياقوت ابحر\r\nبناء شخصي مميز بتشطيب فاخر\r\n للبيع فلل فاخره تشطيب فاخر....\r\nمخطط هشام موقع مميز .\r\nمساحة 250 م فلتين  \r\nمساحه 275 م فله \r\nمساحه 320 م فله شارعين \r\nمساحةالأرض ٢٥٠م٢\r\n*على شارع 16 غربي\r\nمساحة المباني٤٢٠م٢\r\n\r\nمواصفات البناء\r\n-بلاط درجة اولى\r\n-الكهرباء والسباكه ذات درجه أولى\r\nديكورات مميزة لجميع الغرف والصالات\r\nمكيفات اسبليت مؤسس لكامل الفيلا\r\nكراج للسياره\r\n-شبابيك المنيوم دبل قلاس مع إكسسوارات أصلية\r\n-جبس مودرن للسقف\r\n-أبواب درجه أولى\r\n-مسبح\r\n-مصعد مؤسس\r\n-غرفة حارس\r\n\r\n-الدور الارضي: \r\nمجلس رجال ومجلس نساء. صاله. ٢دورات مياه. مدخلين. مطبخ.وغرفة شغاله_ صاله وغرفة سائق\r\n-الدم١ور الاول:\r\n *٤غرف نوم. ٣دورات مياه. صاله. \r\n-الملحق: \r\n غرفه ١دورات مياه.\r\nغرفة غسيل \r\n *-سطحين ٢\r\nملاحظه/يوجد سيدي خاص بالفله من الحفر الى التشطيب للاطلاع  \r\nعلى نظافة العمل*                                 شعارنا الامانه في العمل*\r\nالأسعار تبدا من 1,550,000\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'd58e19445098cba2d41c964d24beb520.jpeg', '', NULL, '3', '3', NULL, NULL, '0', '16', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '-1', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '75', ' - جده | ابحر الشمالية - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2023-05-01 17:26:43'),
(328, '7', 'للبيع فيلا في ابحرالشماليه حي الياقوت', NULL, 'جده | ابحر الشمالية - حي الياقوت', NULL, '1300000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '200', NULL, NULL, NULL, NULL, '2', '3', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا في ابحرالشماليه حي الياقوت \r\nمساحة الارض ٢٠٠متر\r\nالسعر 1,300,000\r\nالدور الارضي \r\n(١)مجلس رجال \r\n(١)صاله وسيعه\r\n(١)مطبخ\r\n(٢)حمامين\r\n(١)مسبح\r\nالدور الاول \r\n(٣)غرف نوم\r\n(٢)حمامين\r\n(١)صاله\r\nالملحق\r\n(٢)غرفتين\r\n(١)صاله\r\nحمام \r\nسطوح \r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'da8f1094a7ac8ce092fdec553f49c20f.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '75', 'للبيع فيلا في ابحرالشماليه حي الياقوت - جده | ابحر الشمالية - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2023-05-02 16:59:30'),
(329, '7', 'للبيع فيلا في ابحرالشماليه حي الياقوت', NULL, 'جده | ابحر الشمالية - حي الياقوت', NULL, '1300000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '200', NULL, NULL, NULL, NULL, '3', '3', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا في ابحرالشماليه حي الياقوت \r\nمساحة الارض ٢٠٠متر\r\nالسعر 1,300,000\r\n\r\nالدور الارضي \r\n(١)مجلس رجال \r\n(١)صاله وسيعه\r\n(١)مطبخ\r\n(٢)حمامين\r\n(١)مسبح\r\n\r\nالدور الاول \r\n(٤)غرف نوم\r\n(٣)حمامين\r\n(١)صاله\r\n\r\nالملحق\r\n(٢)غرفتين\r\n(١)صاله\r\nحمام \r\nسطوح \r\n0555013819', NULL, '24.794213816803946', '46.6946406875', '51818c47aab39e4f5bc37e546387bc45.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '75', 'للبيع فيلا في ابحرالشماليه حي الياقوت - جده | ابحر الشمالية - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2023-05-02 17:08:43'),
(330, '7', 'للبيع فيلا (مفصولة)في ابحرالشماليه حي الياقوت', NULL, 'جده | ابحر الشمالية - حي الياقوت', NULL, '1500000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '262', NULL, NULL, NULL, NULL, '3', '2', 'no', NULL, NULL, NULL, NULL, 'no', 'yes', 'yes', NULL, 'للبيع فيلا (مفصولة)في ابحرالشماليه حي الياقوت \r\nمساحة الارض ٢٦٢\r\nالسعر 1,500,000\r\nالدور الارضي \r\n(١)مجلس رجال \r\n(١)صاله وسيعه\r\n(١)مطبخ\r\n(٢)حمامين\r\nالدور الاول \r\n(٤)غرف نوم\r\n(٣)حمامين\r\n(١)صاله\r\n\r\nالملحق\r\n(١)غرفتين\r\n(١)صاله\r\nحمام \r\nسطوح \r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'be1a1ff7bfa8909f88801a0f77d9dece.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '75', 'للبيع فيلا (مفصولة)في ابحرالشماليه حي الياقوت - جده | ابحر الشمالية - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2023-05-02 17:13:36'),
(331, '7', 'للبيع فيلا في ابحرالشماليه حي الياقوت', NULL, 'جده | ابحر الشمالية - حي الياقوت', NULL, '1800000', '1', 0, '2', 3, '2', NULL, '7', NULL, NULL, NULL, '6', '322', NULL, NULL, NULL, NULL, '3', '2', 'no', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', NULL, 'للبيع فيلا في ابحرالشماليه حي الياقوت \r\nمساحة الارض 322\r\nالسعر 1,800,000\r\nشارع عرض30\r\n\r\nالدور الارضي \r\n(١)مجلس رجال \r\n(١)صالة طعام رجال\r\n(١)مجلس نساء\r\n(١)صاله وسيعه\r\n(١)مطبخ\r\n(٢)حمامين\r\n(١)مسبح\r\n\r\nالدور الاول \r\n(٤)غرف نوم\r\n(٤)حمامين\r\n(١)صاله\r\n\r\nالملحق\r\n(٢)غرفتين\r\n(١)صاله\r\n(٢)حمامين\r\n\r\n\r\n0555013819', NULL, '24.794213816803946', '46.6946406875', 'c172c86aaa5f51f0db1625eb3d50ad7c.jpeg', '', NULL, '1', '3', NULL, NULL, '0', '0', '0', '0', 'marketed', NULL, 'no', NULL, 'yes', NULL, '0', 'yes', 'no', 'no', 'no', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555013819', '75', 'للبيع فيلا في ابحرالشماليه حي الياقوت - جده | ابحر الشمالية - حي الياقوت - 2 - فيلا - apartment\r\n - للبيع - ', '2023-05-03 17:25:57');
INSERT INTO `offers` (`id`, `advertiser`, `name_ar`, `name_en`, `address_ar`, `address_en`, `price`, `currency`, `status`, `category`, `type`, `city`, `parking`, `bedroom`, `bathroom`, `bedroom_bathroom`, `bedroom_hall`, `bath`, `sqft`, `health_ar`, `health_en`, `education_ar`, `education_en`, `hall`, `board`, `elevator`, `kitchen`, `services`, `adaptation`, `badron`, `swimming_pool`, `driver_room`, `servant_room`, `laundry_room`, `text_ar`, `text_en`, `lat`, `lng`, `picture`, `floor`, `district`, `face`, `floors`, `carpark`, `shops`, `property_age`, `street_width`, `length`, `width`, `advertiser_relationship`, `families`, `furnished`, `rental_term`, `car_entrance`, `property_floor_no`, `apartment`, `hall_stair`, `verse`, `cellar`, `duplex`, `area`, `appendix`, `football_stadium`, `volleyball_court`, `amusement_park`, `families_category`, `purpose`, `number_of_wells`, `number_of_trees`, `store_number`, `flat_apartment`, `floor_balance`, `advertiser_phone`, `neighborhood`, `search`, `updated_at`) VALUES
(332, '35', NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*السلام عليكم ورحمه الله وبركاته*\r\n*يتوفر لدينا شقق للايجار عوائل*\r\n*مكونة من غرفتين*\r\n*وصالة*\r\n*ومبطخ راكب*\r\n*حمام ودورة مياه*\r\n*فرش غير مستعمل جديد*\r\n*مساحة الشقة 240متر*\r\n*الدور ألأول*\r\n*عمر البناء 4سنوات*\r\n*سكن عوائل*\r\n*قريب لين الخدمات*\r\n*موجود نيت سريع في الشقة*\r\n*موقف خاص*\r\n*أجار الشقة (5000) الف في الشهر*\r\n*الدفع شهري*\r\n*موقع أبها*', NULL, '18.235528971287724', '42.51426293121678', 'f7c2c92bf6653c07c6dca1c8251c2919.jpeg', '', NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, 'marketed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555656938', 'type', ' -  -  - شقة مفروشـــة - building for rent - للايجار - ', '2023-07-26 19:25:12'),
(333, '35', NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*السلام عليكم ورحمه الله وبركاته*\r\n*يتوفر لدينا شقق للايجار عوائل*\r\n*مكونة من غرفتين*\r\n*وصالة*\r\n*ومبطخ راكب*\r\n*حمام ودورة مياه*\r\n*فرش غير مستعمل جديد*\r\n*مساحة الشقة 240متر*\r\n*الدور ألأول*\r\n*عمر البناء 4سنوات*\r\n*سكن عوائل*\r\n*قريب لين الخدمات*\r\n*موجود نيت سريع في الشقة*\r\n*موقف خاص*\r\n*أجار الشقة (5000) الف في الشهر*\r\n*الدفع شهري*\r\n*موقع أبها*', NULL, '18.21892054103019', '42.53459540625001', 'c2d3d7315321f4c2771690110a95ea9f.jpeg', '', NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, 'marketed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0555656938', 'type', ' -  -  - شقة مفروشـــة - building for rent - للايجار - ', '2023-07-26 19:29:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('Abdulhadi1a@hotmail.com', '$2y$10$OmPo67NCs/9b.imwldYhkeoUb6BA0LFJmPrTtZ5EXXuccvnoYfsGG', '2022-10-21 14:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `text` text CHARACTER SET utf8,
  `offer` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `text`, `offer`, `type`) VALUES
(1, 'hj', '47', 'offer'),
(2, 'hj', '1', 'advertiser'),
(3, 'قققققققققق', '59', 'offer');

-- --------------------------------------------------------

--
-- Table structure for table `request_property`
--

CREATE TABLE `request_property` (
  `id` int(11) NOT NULL,
  `advertiser` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `start` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `end` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `room` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bathroom` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `district_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `district_2` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `district_3` varchar(255) DEFAULT NULL,
  `district_4` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `status` varchar(255) CHARACTER SET utf8 DEFAULT 'wating',
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `updated_at` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request_property`
--

INSERT INTO `request_property` (`id`, `advertiser`, `name`, `phone`, `type`, `city`, `start`, `end`, `room`, `bathroom`, `district_1`, `district_2`, `district_3`, `district_4`, `description`, `status`, `created`, `updated_at`) VALUES
(7, 2, 'Mena Saleep', '2233445544', 'نو', 'alex', '4000', '10000', 'ثق', '2', 'الاول', 'الثاني', 'الثالث', 'الرابع', 'yu', 'wating', NULL, NULL),
(8, 3, 'twse', '2233445544', 'نو', 'alex', '4000', '10000', 'ثق', '2', 'الاول', 'الثاني', 'الثالث', 'الرابعbnbvbvnbv', 'nbn', 'wating', NULL, NULL),
(9, 4, 'عقار في جدة', '11422255256767', 'شقة', 'جدة', '4000', '5000', '2', '2', 'الاول', 'الثاني', 'الثالث', 'الرابع', '2222222222', 'wating', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request_property_offers`
--

CREATE TABLE `request_property_offers` (
  `id` int(11) NOT NULL,
  `offer` int(11) DEFAULT NULL,
  `text` text CHARACTER SET utf8,
  `author` int(11) DEFAULT NULL,
  `created` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request_property_offers`
--

INSERT INTO `request_property_offers` (`id`, `offer`, `text`, `author`, `created`) VALUES
(1, 4, 'mm', 2, '30, 8, 2022'),
(2, 4, 'tyttytytytytyty', 2, '30, 8, 2022'),
(3, 4, 'test', 2, '30, 8, 2022'),
(4, 4, 'bnbhn', 2, '30, 8, 2022'),
(5, 4, 'test', 3, '31, 8, 2022'),
(6, 4, 'trssssssssssssss', 3, '31, 8, 2022'),
(8, 7, 'test', 3, 'August 31, 2022, 9:14 am'),
(9, 8, 'ooooooooooooo', 3, 'August 31, 2022, 9:16 am'),
(10, 7, 'عرض تجريبي', 2, '13, 9, 2022'),
(13, 9, 'فق', 4, '13, 9, 2022'),
(14, 9, 'لال', 4, '13, 9, 2022'),
(15, 7, 'ttttttt', 4, '13, 9, 2022'),
(16, 9, 'غانم0حخىلاةنمخحلاانتللا89هرى', 6, '20, 9, 2022');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name_ar`, `name_en`) VALUES
(0, 'غير معرف', 'none'),
(1, 'تم البيع', NULL),
(2, 'تم التاجير', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `text_ar` text,
  `text_en` text,
  `type` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `type_estates`
--

CREATE TABLE `type_estates` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type_estates`
--

INSERT INTO `type_estates` (`id`, `name_ar`, `name_en`, `class`) VALUES
(1, 'شقة', 'apartment\r\n', 'land'),
(2, 'دور', 'Villas for sale\r\n', NULL),
(3, 'فيلا', 'apartment\r\n', NULL),
(4, 'محــــــل', 'House for sale\r\n', NULL),
(6, 'استراحـــــــة', 'farms for sale', NULL),
(7, 'مكتب تجاري', 'Commercial land for sale', NULL),
(8, 'ارض', 'building for sale', NULL),
(9, 'عمـــــــارة', 'floors for sale', NULL),
(10, 'مستــــــــودع', 'houses for rent', NULL),
(11, 'مخيــــــــم', 'floors for rent', NULL),
(12, 'غرفــــــــة', 'Villas for rent', NULL),
(13, 'شقة مفروشـــة', 'building for rent', NULL),
(14, 'شاليـــــــة', 'Shops for rent', NULL),
(15, 'مزرعــــــــــة', 'Rest houses for rent', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8 DEFAULT 'user avatar.png',
  `text_password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `inista` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `snap` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `acount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `picture`, `text_password`, `phone`, `facebook`, `twitter`, `inista`, `snap`, `acount`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Mena Saleep', 'menaspoon73@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, '$2y$10$fWtEPt7UZ4COMlyVmM6NFutRCfKZ3SKL0oGhPaVvCyxn4mr2y23X.', 'ZBewQ5Wcd6GVD7Lxp2tBUL5kV89dltc6KxHcBgAQ1o20df0mGut1ZY3IewVT', '2022-09-13 07:52:17', '2022-10-08 18:24:55'),
(5, 'Test', 'te.mail@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.2d6wrCSHVn7Tvppx.wqROBusS.EYKKHlw3MLkaNArZ8r5SMeMIPG', NULL, '2022-09-13 09:24:27', '2022-09-13 09:24:27'),
(6, 'سهم الرواد', 'sahm.alruwwad@gmail.com', 'user avatar.png', NULL, '966536312220', NULL, NULL, NULL, NULL, 'admin', NULL, '$2y$10$IRs9QInY2CmnlRKDVZJOl.AYFRJPqiAHOwDSCEFfrRWBf8eO/aHd.', 'lRS6ijVCarcVbRkuyPOLYKLGI8mj2wsr3De8og6kh22d8FsVRutApFLzoOFY', '2022-09-14 14:20:08', '2022-10-08 10:21:49'),
(7, 'abdulrahman 1', 'a8rt8@yahoo.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, '$2y$10$sRLrPJjKN8KVyslLlMnP.uZgS9v8mnNREWcg1umZSpBALQX95ST82', NULL, '2022-09-19 16:35:14', '2022-09-19 16:35:14'),
(8, 'ابو محمد', 'wwwv600@gmail.com', '1664576260dd.jpeg', 'Tt1234567', '0555013819', NULL, NULL, NULL, 'ver.7', NULL, NULL, '$2y$10$10/uq1aDsyKxNJNUTqhwROb6wp2dRrrx1cJLEfdfi2jEhrTsic1fG', NULL, '2022-09-27 16:09:53', '2022-09-27 16:09:53'),
(9, 'Admin', 'sahm.alruwwad@admin.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, 'admin', 'admin', NULL, '$2y$10$vWmaG/Dmuxzb2WipjGdYyuQ4okueorFu0./cTGqf0iVsny3Tnq7W2', NULL, '2022-09-27 17:24:14', '2022-09-27 17:24:14'),
(10, 'بشير الشامي', 'hhhguuu44@gmail.com', 'user avatar.png', NULL, '0542469830', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Y7au.z/s7rr.p2cNAyph4uAtFr8oHFp.d1kdk4820Bbquye7.1WqG', NULL, '2022-09-30 16:13:23', '2022-09-30 16:13:23'),
(11, 'بشير الشامي', 'hhhguuu44@gmail.om', 'user avatar.png', '70708080', '0542469830', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FUnI8VN7nKREcf04t2vGG.TXclrUOL1pMY/1b5HnYGJ.HbncgfDbe', NULL, '2022-10-01 17:40:51', '2022-10-01 17:40:51'),
(12, 'ابورواد', 'abdulrahman1@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pfvUePAelAEPaBdO1GvLDOh2ECYY4BgfHvr9iR70jTbhl0CuVx4ui', NULL, '2022-10-07 15:52:35', '2022-10-07 15:52:35'),
(13, 'sell2day', 'selltowday@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, 'admin', 'admin', NULL, '$2y$10$ztj.itXbAAlVjVkRJSVFWuoKpiSkSMrfS4P9vTTQoeVEwN.jgFfPe', NULL, '2022-10-08 07:21:35', '2022-10-08 07:21:35'),
(14, '1089347429', 'Abdulhadi1a@hotmail.com', 'user avatar.png', 'Aa123456', '0592183000', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$RsOrNI0Iwmo.cc9.TfSnWeYG/NKB8s.4F9BDHkNCCKAx/WguJXDjG', NULL, '2022-10-21 14:18:00', '2022-10-21 14:18:00'),
(15, 'azaz_2013@outlook.com', 'azaz_2013@outlook.com', 'user avatar.png', '12345678', '0550501962', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$op6lUkvXoKAln/SlehfBAOw.YVeALYWY7xpl9JgUN1K29x1aVi.PG', NULL, '2022-10-22 10:25:59', '2022-10-22 10:25:59'),
(16, 'Alaalbal5', 'Altaymani@hotmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$r3wrwa.fYc81wCR01wQLeeZAC.7Di1G2q2a2uMCmLueLjF8Z3AGCG', NULL, '2022-11-20 23:43:15', '2022-11-20 23:43:15'),
(17, 'Hatim Bamukrah', 'hasb9999@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$cDq7/cayyZajOCMZHT2wKuYNjAGTAa4aPDazeOv7fhxFMvRqxhcfq', NULL, '2023-02-19 05:25:24', '2023-02-19 05:25:24'),
(18, 'ام امير  للعقارات', 'amamyrllqarat@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$etw4Ij.1MusjECuTdF34JO13fKJ08bL/8WZNURwNdjgv0cFXADKiC', NULL, '2023-02-24 19:00:41', '2023-02-24 19:00:41'),
(19, 'امجد صالح', 'am2002gh@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Ku9u9yTdn8xKFfAt4q8QVOKcWYhAgIs7VaLNQ/r1K1QstJllnVQ42', NULL, '2023-02-25 19:48:29', '2023-02-25 19:48:29'),
(20, 'Kmal', 'kimo.saied638@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Wx9ZRSmqEzZFxHCkrwT88e.chBctozVl8HWYqVknTpLuYGxqZJCXW', NULL, '2023-02-28 07:51:26', '2023-02-28 07:51:26'),
(21, 'ناصر الميموني', 'nmrm2010@hotmail.com', 'user avatar.png', NULL, '555353679', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4WG37Mk5ofng6DtraUBfCupj8Y4YoSP1k.uHLZFwsMHdZ09SUfEiu', NULL, '2023-03-21 10:48:59', '2023-03-21 10:48:59'),
(22, 'Ali SK1499', 'saqr2200222@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bOsPVIjqQer7Vnl7FC/e6./BuG31tdo.KSRb9ZpH0e1FGewoxsNXK', NULL, '2023-03-28 08:51:48', '2023-03-28 08:51:48'),
(23, 'THAMER ALMANDAH', 'admantc@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$88suoiaCeMeqOo55oXI91OWbFYxl.Gn4pLy2B7Ns4nxNdtLuUODF2', NULL, '2023-04-02 12:18:37', '2023-04-02 12:18:37'),
(24, 'مشعل الزهراني', 'meshal39836@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/.fw7.nj.Q828c/pbXJMVeOzvSgGLBbxtWAYvVAQ7GoA/s8WCTqE2', NULL, '2023-04-07 18:09:38', '2023-04-07 18:09:38'),
(25, 'Subyelh', 'subyelh321@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ffpgHrCoO2LnRc/P8JrI9.ifsa60W4j4ygba8Vy8yr3t9TBOo2rY6', NULL, '2023-04-08 12:46:49', '2023-04-08 12:46:49'),
(26, 'أم جوان', 'Zft121212@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$q/cDTgHQ/.XdzNPG4v3Nz.yogMPpK23xkNk3dW5v/WD/NhcglGRVm', NULL, '2023-04-14 11:39:45', '2023-04-14 11:39:45'),
(27, 'ALRUW123', 'sa_12_sa@outlook.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tCRJZ707Sb66/6ynytGnD.xNNeS8JVWnEQuADrHS7VCl4lJOuzpVK', NULL, '2023-05-02 14:04:34', '2023-05-02 14:04:34'),
(28, 'mohdali', 'a.m55411@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$dE4CHLVLeM8h0WXen7RJ8uag636a4BX2fTyCz2Iz5jKmi802QM2hy', NULL, '2023-05-16 13:57:54', '2023-05-16 13:57:54'),
(29, 'محمد بن ضيف', 'sawaedinjaz@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$a5yd/2NjmPY5jirnQqOqEubSEmOBlJwyXymWwzkwMxPfr3refUVrG', NULL, '2023-05-19 23:50:05', '2023-05-19 23:50:05'),
(30, 'عبدالله شقيقي', 'alaslii.10.1@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$b/sXWwW8H94Ovdt/VmLaG.ywuRLdYqrgriXuQjr1TSr0y7LtzE5t6', NULL, '2023-05-21 17:41:39', '2023-05-21 17:41:39'),
(31, 'صالح', 'sess0280@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bO9SLfFZt6jjdmBwv3Tk4e6ilB.AgM8w7zQ9TGu.vZykO2kix6aH2', NULL, '2023-05-30 15:48:08', '2023-05-30 15:48:08'),
(32, 'Ashwag Alamoudi', 'shooog.alamoudi@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JXnT10/JSw0MrQqfEzI9q.U5.U31eQcLww4xfiRryniOJQJ6DaBt.', NULL, '2023-06-01 15:04:44', '2023-06-01 15:04:44'),
(33, 'Kmalll', 'janat.saied638@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$fNWqpkmZaUHJPOIqkTUyS.OyNCOdBGwcp2JE/EbKwH7sKM5Bv6CMO', NULL, '2023-06-08 23:03:22', '2023-06-08 23:03:22'),
(34, 'حنين', 'haninalmhmade@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$VDR16FxjzZm0hjtCW5eXbOfwJCnUatKy4y9Cn.WQn.daJHKcgYOxe', NULL, '2023-07-19 16:57:18', '2023-07-19 16:57:18'),
(35, 'حيدان', 'haiidan888@gmail.com', 'user avatar.png', 'Haidan711', '0555656938', NULL, NULL, NULL, 'hay2444', NULL, NULL, '$2y$10$N5dDdi4wI6Gzsu.irBt6BO0sZ4wxySEyZDOG/Cz9wnfsquinAwx9y', NULL, '2023-07-26 19:15:13', '2023-07-26 19:15:13'),
(36, 'yamlaw1', 'yamlaw1@gmail.com', 'user avatar.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$iC8YglNUntfLhNOdlHtSkeKGFNFQpHsym2OMeFXg30zs8beupa9Y6', NULL, '2023-08-07 13:08:48', '2023-08-07 13:08:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_ad`
--
ALTER TABLE `chat_ad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `face_estates`
--
ALTER TABLE `face_estates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `love_it`
--
ALTER TABLE `love_it`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger`
--
ALTER TABLE `messenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `neighborhood`
--
ALTER TABLE `neighborhood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_property`
--
ALTER TABLE `request_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_property_offers`
--
ALTER TABLE `request_property_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_estates`
--
ALTER TABLE `type_estates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chat_ad`
--
ALTER TABLE `chat_ad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `face_estates`
--
ALTER TABLE `face_estates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=617;

--
-- AUTO_INCREMENT for table `love_it`
--
ALTER TABLE `love_it`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `messenger`
--
ALTER TABLE `messenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `neighborhood`
--
ALTER TABLE `neighborhood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `request_property`
--
ALTER TABLE `request_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `request_property_offers`
--
ALTER TABLE `request_property_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `type_estates`
--
ALTER TABLE `type_estates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
