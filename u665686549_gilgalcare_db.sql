-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 10, 2025 at 03:12 PM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u665686549_gilgalcare_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `availablitities`
--

CREATE TABLE `availablitities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `day` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `availablitities`
--

INSERT INTO `availablitities` (`id`, `listing_id`, `day`, `start_time`, `end_time`, `is_enabled`, `created_at`, `updated_at`) VALUES
(24, 3, 'Monday', '10:00:00', '17:00:00', 1, NULL, '2025-01-02 15:42:04'),
(25, 3, 'Tuesday', '11:00:00', '18:00:00', 0, NULL, '2025-01-02 15:42:04'),
(26, 3, 'Wednesday', '10:00:00', '18:00:00', 0, NULL, '2025-01-02 15:42:04'),
(27, 3, 'Thursday', '10:00:00', '18:00:00', 0, NULL, '2025-01-02 15:42:04'),
(28, 3, 'Friday', '10:00:00', '18:00:00', 0, NULL, '2025-01-02 15:42:04'),
(29, 2, 'Monday', '10:00:00', '17:00:00', 1, NULL, '2025-01-02 16:06:29'),
(30, 2, 'Tuesday', '11:00:00', '18:00:00', 1, NULL, '2025-01-02 16:06:29'),
(31, 2, 'Wednesday', '10:00:00', '18:00:00', 1, NULL, '2025-01-02 16:06:29'),
(32, 2, 'Thursday', '10:00:00', '18:00:00', 1, NULL, '2025-01-02 16:06:29'),
(33, 2, 'Friday', '10:00:00', '18:00:00', 1, NULL, '2025-01-02 16:06:29'),
(39, 4, 'Monday', '10:00:00', '14:00:00', 1, NULL, '2025-01-12 08:39:34'),
(69, 9, 'Monday', '09:00:00', '18:00:00', 1, NULL, '2025-01-14 18:31:04'),
(70, 9, 'Tuesday', '09:00:00', '18:00:00', 1, NULL, '2025-01-14 18:31:04'),
(71, 9, 'Wednesday', '09:00:00', '18:00:00', 1, NULL, '2025-01-14 18:31:04'),
(72, 9, 'Thursday', '09:00:00', '18:00:00', 1, NULL, '2025-01-14 18:31:04'),
(73, 9, 'Friday', '09:00:00', '18:00:00', 1, NULL, '2025-01-14 18:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `business_listings`
--

CREATE TABLE `business_listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `listing_title` varchar(191) NOT NULL,
  `listing_description` text NOT NULL,
  `added_by` bigint(20) UNSIGNED NOT NULL,
  `tagline` varchar(191) DEFAULT NULL,
  `price_range` decimal(10,2) DEFAULT NULL,
  `price_from` decimal(10,2) DEFAULT NULL,
  `price_to` decimal(10,2) DEFAULT NULL,
  `features_information` text DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `address` varchar(191) NOT NULL,
  `map_lat` varchar(191) DEFAULT NULL,
  `map_long` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  `google_plus` varchar(191) DEFAULT NULL,
  `instagram` varchar(191) DEFAULT NULL,
  `featured_image` varchar(191) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('published','draft','unpublished') NOT NULL DEFAULT 'published',
  `page_views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_shares` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `business_open_hours` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`business_open_hours`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_listings`
--

INSERT INTO `business_listings` (`id`, `uuid`, `listing_title`, `listing_description`, `added_by`, `tagline`, `price_range`, `price_from`, `price_to`, `features_information`, `location`, `address`, `map_lat`, `map_long`, `email`, `website`, `phone`, `facebook`, `twitter`, `google_plus`, `instagram`, `featured_image`, `logo`, `created_at`, `updated_at`, `status`, `page_views`, `total_shares`, `business_open_hours`) VALUES
(2, 'f8de83ce-eee5-4fa5-8eff-ef65f83a2195', 'GreenLeaf Café', 'GreenLeaf Café is a contemporary, eco-friendly café located in the heart of Downtown. Our passion for serving high-quality, organic food is matched by our commitment to sustainability. We offer a variety of breakfast and lunch options, including vegan, vegetarian, and gluten-free choices, ensuring that everyone has something delicious to enjoy. From our rich organic coffee to our fresh salads, we guarantee that each dish is made from the best locally sourced ingredients.\r\n\r\nAt GreenLeaf Café, we don’t just focus on food – we aim to create an experience. Our inviting atmosphere features wooden interiors, plenty of natural light, and plants throughout, which contribute to our mission of connecting people with nature. We also offer free Wi-Fi, so whether you’re working or relaxing, you’ll feel at home.\r\n\r\nOur menu is thoughtfully curated to bring out the best flavors of the season. Each week, we introduce a new special that highlights the freshest produce available, allowing us to keep our offerings dynamic and exciting. You can also enjoy our seasonal beverages, from cold-pressed juices to homemade smoothies.\r\n\r\nWe’re proud to be part of the local community and support various environmental causes. The café is powered by renewable energy, and we use eco-friendly packaging to reduce waste. We believe in creating a space that encourages people to slow down, enjoy their meals, and make meaningful connections.\r\n\r\nWhether you\'re in the mood for a relaxing afternoon, a quick bite, or a place to work, GreenLeaf Café is here to provide a peaceful oasis in a busy city. Our friendly and knowledgeable staff are always ready to help you find the perfect meal or drink for your mood.', 34, 'GreenLeaf Café is a contemporary, eco-friendly café located in the heart of Downtown.', NULL, NULL, NULL, '[\"Organic and Locally-Sourced Menu,Seasonal Specials\",\"Cozy Atmosphere with Free Wi-Fi,Eco-Friendly Practices\",\"Compostable Packaging,Outdoor Seating Available\",\"Pet-Friendly\"]', NULL, 'Sydney NSW, Australia', '-33.8688197', '151.2092955', 'contact@greenleafcafe.com', 'https://greenleafcafe.com', '5551234567', NULL, NULL, NULL, NULL, 'listing_images/EMnI3wQxFIYWMFTSlM4d11SOBztll9XxPVl8t2rM.webp', 'listing_logos/RPxMLCQpQ9i81Whp0OUHEYs9fdZsFhlAbofJKC2e.jpg', '2025-01-02 15:35:27', '2025-04-21 15:55:13', 'published', 10, 4, NULL),
(3, 'c50b61d5-28b0-40cc-94f3-bb29440fd89c', 'TechPro Solutions', 'echPro Solutions is an innovative IT solutions provider dedicated to empowering businesses with cutting-edge technology. Specializing in custom software development, IT consulting, and cybersecurity services, we help businesses optimize their operations and stay ahead of the competition. With over a decade of experience in the tech industry, our team of experts is committed to delivering high-quality, reliable, and scalable solutions.\r\n\r\nWe understand that technology can be complex, which is why our goal is to simplify it for you. Whether you need a tailored enterprise resource planning (ERP) system, a robust website, or secure network infrastructure, TechPro Solutions works closely with you to identify your needs and create a solution that is efficient and cost-effective.\r\n\r\nOur services extend beyond just software; we also offer comprehensive IT consulting to help businesses make informed decisions on technology investments. We help streamline IT operations, improve security protocols, and provide strategic guidance to align technology with business goals. Additionally, our cybersecurity experts protect sensitive data and ensure your systems are safe from cyber threats.\r\n\r\nWhat sets us apart is our commitment to client satisfaction. We pride ourselves on transparent communication, personalized service, and delivering results on time and within budget. Our track record includes successfully completed projects for small startups to large enterprises across various industries, from finance to healthcare.\r\n\r\nAt TechPro Solutions, we believe in building long-term partnerships with our clients. We offer 24/7 customer support, ensuring you never feel alone when it comes to managing your tech needs.', 34, 'TechPro Solutions is an innovative IT solutions provider empowering businesses with cutting-edge technology.', NULL, NULL, NULL, '[\"Custom Software Development\",\"IT Consulting and Strategic Guidance,Cybersecurity Solutions\",\"24/7 Customer Support\",\"Scalable and Reliable Solutions\",\"Expertise in Multiple Industries\",\"Cloud Integration Services\"]', NULL, 'Melbourne VIC, Australia', '-37.8136276', '144.9630576', 'support@techprosolutions.com', 'https://techprosolutions.com', '5559876543', NULL, NULL, NULL, NULL, 'listing_images/x40ceyauUIXScYRZsGoMdogrfnhJBuZr2FFuU7iW.png', 'listing_logos/AeRM9MDUO8k9mQiG9ypC964A30yuM0FQaR54xA9M.webp', '2025-01-02 15:42:03', '2025-04-21 15:55:11', 'published', 10, 4, NULL),
(4, '5efd51d9-6e7c-41a2-bb70-60bea67cf47a', 'Test Title', 'gte its testing by developer', 34, 'gte', NULL, NULL, NULL, '[\"sssss\",\"ssssssssss\"]', NULL, 'Tarneit VIC 3029, Australia', '-37.8362006', '144.6722205', 'as@gmail.com', 'the.com', '1231231231', NULL, NULL, NULL, NULL, 'listing_images/t7d5mi2htJU6FjYCzvu7A0aUgMfxgICWephWNM4b.png', 'listing_logos/Eqlzsvlv64kexhhSe1H9ZOHJAoIUvUFVtJOr8WwU.png', '2025-01-12 08:39:34', '2025-01-12 11:33:38', 'published', 2, 1, NULL),
(9, '80a7031b-eafc-4459-9647-ba073de4ffbc', 'Bella Couture Boutique', 'In addition to our stunning clothing collection, we carry a wide selection of premium jewelry\r\n\r\nBella Couture Boutique offers a curated collection of high-fashion clothing, accessories, and jewelry for women who want to express their individuality through style. Located in the heart of the city, our boutique features a mix of trendy and timeless pieces that are perfect for any occasion – from casual outings to formal events. At Bella Couture, we believe that fashion should be a reflection of your personality. Our selection is handpicked to offer a variety of styles, ensuring there’s something for every woman. Whether you’re looking for a chic dress for a night out, a tailored blazer for work, or unique accessories to elevate your outfit, we have it all. Our store is designed to provide a luxurious shopping experience, with personalized styling advice from our fashion experts. We offer one-on-one consultations to help you create outfits that highlight your best features and suit your lifestyle. If you’re in need of a wardrobe refresh or have a special event coming up, we are here to guide you. In addition to our stunning clothing collection, we carry a wide selection of premium jewelry, handbags, and shoes that perfectly complement any outfit. We only work with reputable designers to ensure the highest quality and craftsmanship. At Bella Couture Boutique, we believe that shopping should be an experience, not just a transaction. Our warm, welcoming atmosphere and attention to detail make every visit special. We also offer online shopping for those who prefer the convenience of shopping from home.', 4, 'In addition to our stunning clothing collection, we carry a wide selection of premium jewelry', NULL, NULL, NULL, '[\"High-Fashion Clothing, Jewelry, and Accessories\",\"Personalized Styling Consultations\",\"One-of-a-Kind Designer Pieces\",\"Dresses, Blazers, and Handbags\",\"Luxurious Shopping Experience\",\"Online Shopping Available\",\"Expert Fashion Advices\"]', NULL, 'The Rocks NSW 2000, Australia', '-33.859062', '151.2080421', 'info@bellacouture.com', 'https://bellacouture.com', '5555671234', NULL, NULL, NULL, NULL, 'listing_images/elHTTPdOB5Cnr8JE5kJ2hCaczLYEEUrKHuBOMgBs.jpg', 'listing_logos/InOcW7ECtYGpZYXfjxEZlLpwws1JOf4cLQ2mBMuA.jpg', '2025-01-14 18:30:05', '2025-04-21 15:55:20', 'published', 3, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_listing_meta`
--

CREATE TABLE `business_listing_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `business_listing_id` bigint(20) UNSIGNED NOT NULL,
  `gallery_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_listing_meta`
--

INSERT INTO `business_listing_meta` (`id`, `uuid`, `business_listing_id`, `gallery_image`, `created_at`, `updated_at`) VALUES
(3, '05a549ba-8ede-4f27-a47a-d3f13b48a480', 2, 'listing_gallery/2/u0nF4ihhgStvGTHdy6flByNTtqOh5TUT5zA5tsFi.jpeg', '2025-01-02 15:35:27', '2025-01-02 15:35:27'),
(4, '3408df5d-2bae-4cd1-b9ae-b0f7e928535c', 2, 'listing_gallery/2/4WBKfr605o2TCC8DcUy1yqpVo5fWA8qg4RMlLAbS.jpg', '2025-01-02 15:35:27', '2025-01-02 15:35:27'),
(5, '230d715c-1f45-4aab-a06c-bcebeca6660a', 3, 'listing_gallery/3/HbybCYuTxicGKYGPqWlaGTy05xvDlyrZghFIHjji.png', '2025-01-02 15:42:03', '2025-01-02 15:42:03'),
(6, '992e591f-3b43-42cb-8f5a-89424150c3ea', 3, 'listing_gallery/3/YtN0DuXKwsbmYnJyefdl9VBCpdVU7L4w6U3tLKxY.png', '2025-01-02 15:42:03', '2025-01-02 15:42:03'),
(7, '689365bb-1273-4ece-ae6d-0ea6ec91aee4', 3, 'listing_gallery/3/ukkvU9wGztONZTd2DnXxVKzcP5kjrzgP2Vt0Odke.png', '2025-01-02 15:42:03', '2025-01-02 15:42:03'),
(8, '59599bf0-eec0-43c8-9868-09d4736a494f', 4, 'listing_gallery/4/h7Z6ruseg1yUJfRIJ7omVUlhJeVqgxmifvBhIAiu.jpg', '2025-01-12 08:39:34', '2025-01-12 08:39:34'),
(9, 'b8d60901-9de8-4054-8f2e-a93768d6f325', 4, 'listing_gallery/4/6d0Q9L2KgjFtVP4ZdiViUtUVt9uKU2z1Hb0JdYTN.jpg', '2025-01-12 08:39:34', '2025-01-12 08:39:34'),
(18, 'bcf88b91-9fbc-44bc-bfaa-1149d8806beb', 9, 'listing_gallery/9/RwVwJQvgqqHfvwh2NlJB2Hcs60hW4hb28kOSikhP.jpg', '2025-01-14 18:30:05', '2025-01-14 18:30:05'),
(19, 'f11eb0ae-d283-4b42-a283-9baa0c779867', 9, 'listing_gallery/9/mlFSsUswqjP0OiZ0gA4nkjXsh8j4iaNOqJzb8kev.jpeg', '2025-01-14 18:30:05', '2025-01-14 18:30:05');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(191) NOT NULL,
  `owner` varchar(191) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `feature_image` varchar(191) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `status` enum('published','unpublished') NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `feature_image`, `details`, `location`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Domestic assistance', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accomodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(3, 'Veterinary Hospital', 'category_images/aB0VRUyD3vwfceYN2BkfOoDbLOcpLJ4fD4r9lfQd.png', 'We provide veterinary services.', 'Australia', 'unpublished', '2024-09-14 13:35:30', '2024-10-15 09:24:10'),
(5, 'Accommodation / Tenancy Assistance', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(6, 'Assistance Animals', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(7, 'Assistance for Employment or Education', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(8, 'Assistance in coordinating or managing life stages/transitions and supports', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(9, 'Assistance products for personal care and safety', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(10, 'Assistance to access and/or maintain employment and/or education', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(11, 'Assistance with daily life tasks in a group or shared living arrangement', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(12, 'Assistance with travel/transport arrangements', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(13, 'Assistive equipment for recreation', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(14, 'Assistive products for household tasks', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(15, 'Behaviour Support', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(16, 'Communication and information equipment', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(17, 'Community nursing care for high needs', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(18, 'Customised Prosthetics', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(19, 'Daily Personal Activities', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(20, 'Development of daily living and life skills', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(21, 'Early Intervention supports for early childhood', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(22, 'Exercise Physiology and Physical Wellbeing activities', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(23, 'Group and Centre Based Activities', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(24, 'Hearing Equipment', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(25, 'Hearing Services', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(26, 'High Intensity Daily Personal Activities', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(27, 'Home modification design and construction', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(28, 'Household Tasks', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02'),
(29, 'Innovative Community Participation', 'category_images/2QPpYHsGxvTzw2CkZdAWUtmQQ3JmznHz2nSjnigU.jpg', 'we provide accommodation service', 'Australia', 'published', '2024-09-14 12:50:54', '2024-10-15 09:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `category_listings`
--

CREATE TABLE `category_listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_listing_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_listings`
--

INSERT INTO `category_listings` (`id`, `business_listing_id`, `category_id`, `created_at`, `updated_at`) VALUES
(4, 3, 16, NULL, NULL),
(5, 3, 20, NULL, NULL),
(6, 2, 2, NULL, NULL),
(9, 4, 2, NULL, NULL),
(10, 4, 3, NULL, NULL),
(45, 9, 9, NULL, NULL),
(46, 9, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_form_entries`
--

CREATE TABLE `contact_form_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `query` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_form_entries`
--

INSERT INTO `contact_form_entries` (`id`, `first_name`, `last_name`, `phone`, `email`, `subject`, `query`, `created_at`, `updated_at`) VALUES
(1, 'aa', 'aa', '787777899', 'parassharmadeveloper@gmail.com', 'aa', 'asdasd', '2024-11-16 10:24:25', '2024-11-16 10:24:25'),
(2, 'uhkihiuy', 'huhyigyi', '6555555555', 'kjh@ytfug.com', 'kuhuygttu', 'hbkhgfdtrstdkiik', '2024-11-16 10:34:03', '2024-11-16 10:34:03'),
(3, 'hjgjuyygj', 'mnjhuji', '8768765655', 'jnkhjuh@jhhyu.com', 'kjhuhhuui', 'jfrifrfhkjrnfkjfnkjvnfvhiryufyrfhjrnfnfnv', '2024-12-23 16:15:23', '2024-12-23 16:15:23'),
(4, 'dwdweded', 'dedeeeded', '8978677667', 'dee@fgr5.com', 'ddddddd', 'ddddddddddddddddddddddddddddd', '2025-01-07 15:13:37', '2025-01-07 15:13:37'),
(5, 'fdff', 'fffffff', '3333333333', 'ddd@jhh.com', 'dddddddddddddd', 'eeeeeeeeeeeeeeeee', '2025-01-07 15:16:01', '2025-01-07 15:16:01'),
(6, 'dddddddddd', 'dddddddddddd', '8888888888', 'ioji@knjnh.com', 'dddddddddlj', 'dddddddddd', '2025-01-07 15:16:54', '2025-01-07 15:16:54'),
(7, 'paras', NULL, NULL, 'paras@gmail.como', NULL, 'test', '2025-01-08 10:42:13', '2025-01-08 10:42:13'),
(8, 'Arthua Ramsy', 'Hyperion Tech', '0422400373', 'hello@hyperiontech.com.au', 'test', 'test1', '2025-01-08 10:42:51', '2025-01-08 10:42:51'),
(9, 'khkiuihyuyu', NULL, NULL, 'jhh@trtf.com', NULL, 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '2025-01-08 14:40:46', '2025-01-08 14:40:46'),
(10, 'jjjjjjjjjjjj', NULL, NULL, 'jjh@tfgy.com', NULL, 'jhjggfhhfgfgfjgjgggghghghghg', '2025-01-08 14:43:06', '2025-01-08 14:43:06'),
(11, 'asd', NULL, NULL, 'asdW@f.v', NULL, 'asd', '2025-01-09 09:32:29', '2025-01-09 09:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `business_listing_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `title`, `name`, `email`, `review`, `rating`, `business_listing_id`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 'abc', 'abc', 'parassharmadeveloper@gmail.com', 'good service', 4, 2, 32, '2025-01-08 10:55:42', '2025-01-08 10:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listing_views`
--

CREATE TABLE `listing_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `business_listing_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_views`
--

INSERT INTO `listing_views` (`id`, `ip_address`, `business_listing_id`, `created_at`, `updated_at`) VALUES
(2, '152.58.125.119', 2, '2025-01-02 16:03:42', '2025-01-02 16:03:42'),
(3, '2401:4900:5f22:b081:f473:9f26:7cdb:2518', 3, '2025-01-02 16:13:00', '2025-01-02 16:13:00'),
(4, '152.59.90.215', 3, '2025-01-03 06:16:43', '2025-01-03 06:16:43'),
(5, '152.59.90.215', 2, '2025-01-03 06:20:16', '2025-01-03 06:20:16'),
(7, '2401:d006:9501:2d00:504:4467:8f8d:f13d', 3, '2025-01-06 06:21:56', '2025-01-06 06:21:56'),
(8, '152.58.88.65', 3, '2025-01-06 11:01:08', '2025-01-06 11:01:08'),
(9, '152.59.93.237', 3, '2025-01-06 11:04:47', '2025-01-06 11:04:47'),
(10, '152.59.91.118', 3, '2025-01-06 11:08:40', '2025-01-06 11:08:40'),
(12, '152.58.125.100', 2, '2025-01-06 11:53:46', '2025-01-06 11:53:46'),
(14, '2400:80c0:200e:d94:3401:7c30:99e5:4937', 2, '2025-01-07 14:40:07', '2025-01-07 14:40:07'),
(17, '49.184.233.242', 3, '2025-01-08 10:41:39', '2025-01-08 10:41:39'),
(18, '49.184.233.242', 2, '2025-01-08 10:44:19', '2025-01-08 10:44:19'),
(19, '152.58.88.253', 2, '2025-01-08 11:09:16', '2025-01-08 11:09:16'),
(21, '152.58.88.253', 3, '2025-01-08 11:38:20', '2025-01-08 11:38:20'),
(22, '2400:80c0:200e:d09:289c:1411:f14f:c3d0', 2, '2025-01-08 13:49:34', '2025-01-08 13:49:34'),
(25, '152.58.124.112', 2, '2025-01-09 09:19:31', '2025-01-09 09:19:31'),
(26, '2409:40d6:e:13d3:5433:3744:9d01:fb01', 4, '2025-01-12 08:39:42', '2025-01-12 08:39:42'),
(27, '49.184.233.242', 4, '2025-01-12 11:32:35', '2025-01-12 11:32:35'),
(29, '2400:80c0:200e:99b:6d30:a263:162c:2068', 9, '2025-01-14 18:31:29', '2025-01-14 18:31:29'),
(30, '2400:80c0:200e:99b:6d30:a263:162c:2068', 2, '2025-01-14 18:34:04', '2025-01-14 18:34:04'),
(31, '152.59.91.154', 9, '2025-01-15 07:52:39', '2025-01-15 07:52:39'),
(32, '152.59.91.37', 3, '2025-04-21 15:55:11', '2025-04-21 15:55:11'),
(33, '152.59.91.37', 2, '2025-04-21 15:55:13', '2025-04-21 15:55:13'),
(34, '152.59.91.37', 9, '2025-04-21 15:55:20', '2025-04-21 15:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_18_102038_create_personal_access_tokens_table', 1),
(5, '2024_08_01_160356_create_categories_table', 1),
(6, '2024_08_01_160408_create_business_listings_table', 1),
(7, '2024_08_01_160417_create_business_listing_meta_table', 1),
(8, '2024_08_18_083333_add_field_to_business_listings', 1),
(9, '2024_08_23_101528_create_feedbacks_table', 1),
(10, '2024_08_23_104654_add_stats_to_business_listings_table', 1),
(11, '2024_08_23_105038_create_listing_views_table', 1),
(12, '2024_10_22_064458_add_business_open_hours_to_business_listings_table', 2),
(13, '2024_11_07_160234_create_subscription_plans_table', 2),
(14, '2024_11_07_175818_create_subscriptions_table', 2),
(15, '2024_11_07_180135_add_stripe_customer_id_to_users_table', 2),
(16, '2024_11_08_122500_add_uuid_to_subscription_plans_table', 3),
(17, '2024_11_13_175619_create_contact_form_entries_table', 4),
(18, '2024_12_18_040341_create_availablitities_table', 5),
(20, '2024_12_27_152419_create_category_listings_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(6, 'App\\Models\\User', 1, 'admin@gmail.com', 'eaf8b6f5462a39b5481ab483b7621488cc57709c1810df92f28b599f256900e7', '[\"*\"]', '2024-09-14 12:47:23', NULL, '2024-09-14 12:41:13', '2024-09-14 12:47:23'),
(8, 'App\\Models\\User', 2, 'ankuu@gmail.com', 'f351589e6be4c48fe48ff04babab50184b1834d1f70d6e5f2fb4de639726c767', '[\"*\"]', NULL, NULL, '2024-09-14 14:05:47', '2024-09-14 14:05:47'),
(10, 'App\\Models\\User', 3, 'ankuu1@gmail.com', '23da139f7f721290b3b55e400e29edc5f143b60aab917489feb310d183ab9740', '[\"*\"]', NULL, NULL, '2024-09-14 14:16:23', '2024-09-14 14:16:23'),
(12, 'App\\Models\\User', 4, 'ankuu2@gmail.com', 'c74f024a8a159b7c970b7a3d4e0e4d3c0b9f87c450159fafc392f05389348ca2', '[\"*\"]', NULL, NULL, '2024-09-14 14:26:35', '2024-09-14 14:26:35'),
(17, 'App\\Models\\User', 5, 'user@gmail.com', 'f7de8c052ee1587aa59937c7431dd05c76f36528a19d3444950b62e70e70e5a5', '[\"*\"]', NULL, NULL, '2024-09-16 17:02:48', '2024-09-16 17:02:48'),
(18, 'App\\Models\\User', 5, 'user@gmail.com', 'd6b8d1784eaa934753200fa1f6d27f5a696d195b30eb0fd70be0c8f1dd4635b5', '[\"*\"]', '2024-09-16 17:03:04', NULL, '2024-09-16 17:03:03', '2024-09-16 17:03:04'),
(23, 'App\\Models\\User', 6, 'abc@gmail.com', '53cb0ede07b7d4a3fa8291a4b69e8cc943a763076fca3bebeaa02e7e57431c0f', '[\"*\"]', NULL, NULL, '2024-10-15 09:02:31', '2024-10-15 09:02:31'),
(24, 'App\\Models\\User', 7, 'arthua84@gmail.com', 'ae4f58fddf0ccf18a8e92264ad508295f755a8ab05ab573e70db32ee41826ad8', '[\"*\"]', NULL, NULL, '2024-10-15 09:03:52', '2024-10-15 09:03:52'),
(28, 'App\\Models\\User', 1, 'admin@gmail.com', '5c160dd0e4d07bebd4d175d3c321c40f0472b1bf7a659334517c35e8caf37a38', '[\"*\"]', '2024-10-15 09:24:17', NULL, '2024-10-15 09:20:01', '2024-10-15 09:24:17'),
(31, 'App\\Models\\User', 8, 'abcd@gmail.com', '78415a8b2ee0b3d4ab59c0e271f4c92d7a7a535d3c4a9de16e4cf0cefcb744c3', '[\"*\"]', NULL, NULL, '2024-10-17 06:09:24', '2024-10-17 06:09:24'),
(34, 'App\\Models\\User', 9, '123@gmail.com', '9a86237dd36e99137c770b456b1783618be50b2c7f0ac22ce3bf15cd53b8cf26', '[\"*\"]', NULL, NULL, '2024-10-17 06:12:38', '2024-10-17 06:12:38'),
(40, 'App\\Models\\User', 10, 'thankyou@gmail.com', 'cc297c79bbaacbb08cece315c7767bb33920e1d834f7b91302d0cdbef5aa5ad1', '[\"*\"]', NULL, NULL, '2024-10-21 11:54:49', '2024-10-21 11:54:49'),
(43, 'App\\Models\\User', 11, 'paras@gmail.com', 'e5ea2149c7636689bdfb66b8ce0a1998ddc82e6cf960513cc3754c162f0592a5', '[\"*\"]', NULL, NULL, '2024-10-22 07:55:05', '2024-10-22 07:55:05'),
(44, 'App\\Models\\User', 12, 'manu@gmail.com', '168ffd137224ee26ed21e814403accb54274d1af1a729ea21027e08d77a6be3b', '[\"*\"]', NULL, NULL, '2024-10-22 07:55:35', '2024-10-22 07:55:35'),
(46, 'App\\Models\\User', 1, 'admin@gmail.com', '1c03046c782f2beb23cf3ec788ef599a65b5143791de495331bfc818751a1da2', '[\"*\"]', '2024-11-05 15:01:03', NULL, '2024-11-05 14:48:55', '2024-11-05 15:01:03'),
(47, 'App\\Models\\User', 1, 'admin@gmail.com', 'b6c0bfe1502b7fc2356219b72d7133879703f1f2a280176c073e991c2e9d61b6', '[\"*\"]', '2024-11-07 15:49:19', NULL, '2024-11-07 15:48:40', '2024-11-07 15:49:19'),
(49, 'App\\Models\\User', 1, 'admin@gmail.com', 'f7edd83a1fbd4f1a4eb4e8bfb8eff6b27fc756abfce3f43ae629ca7a8437e697', '[\"*\"]', '2024-11-16 10:23:30', NULL, '2024-11-08 11:18:08', '2024-11-16 10:23:30'),
(51, 'App\\Models\\User', 13, 'ankita@gmail.com', 'b1a8f50b0f9e62689bff5d7e45d73f57ffc1bcb01a26299ed4c6cee43edae5c4', '[\"*\"]', NULL, NULL, '2024-11-10 12:52:32', '2024-11-10 12:52:32'),
(54, 'App\\Models\\User', 14, 'njkn@ghg.com', '0cd56ca3fb629b715a18e6a0790bedba74320d6d1f08cbce5871ad984fd7c8e4', '[\"*\"]', NULL, NULL, '2024-11-10 13:49:58', '2024-11-10 13:49:58'),
(55, 'App\\Models\\User', 15, 'jkj@ghhj.com', '136b5e828b43f7b9c7527ede50a9180289528749da4941acc6ba0dcd9b9015f9', '[\"*\"]', NULL, NULL, '2024-11-10 13:51:06', '2024-11-10 13:51:06'),
(56, 'App\\Models\\User', 16, 'kh@jhj.com', '711962575dba23539d2b115a666e982c4c60978fdc115556df764a1454183ce0', '[\"*\"]', NULL, NULL, '2024-11-10 14:03:15', '2024-11-10 14:03:15'),
(57, 'App\\Models\\User', 17, 'hjjuu@rtfg.com', 'a3c1029044b629181fad3fd7a5cea110040bfaae2a1ed15000b800f20e775e09', '[\"*\"]', NULL, NULL, '2024-11-10 14:06:57', '2024-11-10 14:06:57'),
(58, 'App\\Models\\User', 18, 'hjb@ghgh.com', '31839bbfbbb0cd03d0f63bdf5f2f8679c313b25798abc498fe3d517f34a1744a', '[\"*\"]', NULL, NULL, '2024-11-10 14:09:27', '2024-11-10 14:09:27'),
(60, 'App\\Models\\User', 19, 'kh@kjh.com', '973a49084e11dfabaf4b4935b0de8e9ac500df0028e0266049cd2d1ba45347a0', '[\"*\"]', NULL, NULL, '2024-11-11 17:08:02', '2024-11-11 17:08:02'),
(61, 'App\\Models\\User', 20, 'klj@jkkj.com', '8260cea2ad97b273bb9aa93393ab6a07162aac702d55bb8d2f9cf555e9390d9e', '[\"*\"]', NULL, NULL, '2024-11-11 17:12:05', '2024-11-11 17:12:05'),
(62, 'App\\Models\\User', 21, 'kljo@jk.com', '113382d9b149ca71f116b7989a6612c06271d1453e7bc2ab8fe1a9548167f389', '[\"*\"]', NULL, NULL, '2024-11-11 17:15:47', '2024-11-11 17:15:47'),
(63, 'App\\Models\\User', 22, 'info@truewebmakers.com', 'ad6cf490b4272bea2887cd497f60bdc24f2c489d4c82949e46fc9a0589a19524', '[\"*\"]', NULL, NULL, '2024-11-12 08:47:43', '2024-11-12 08:47:43'),
(65, 'App\\Models\\User', 23, 'testqq@gmail.com', '69a60aa980a137401b683ca0957569c4c739ec02e688d8dacf58117be27aee51', '[\"*\"]', NULL, NULL, '2024-11-12 08:50:42', '2024-11-12 08:50:42'),
(69, 'App\\Models\\User', 24, 'parassharma@truewebmakers.com', '413b56a7fca326c8ed898f7a86afd2a840cfe6f5c36a515218cce63d9739385c', '[\"*\"]', NULL, NULL, '2024-11-13 16:34:48', '2024-11-13 16:34:48'),
(72, 'App\\Models\\User', 1, 'admin@gmail.com', '86b48ad9967147d51ae3809a4d1dcff41bc6d5c52f1f8ee1dd64e622bc288919', '[\"*\"]', '2024-11-16 10:24:30', NULL, '2024-11-13 16:53:45', '2024-11-16 10:24:30'),
(73, 'App\\Models\\User', 25, 'jkhu@redtg.com', '3004faa26b9c9531a896423e5b8901413fe03ce3915e986814aa9edb6ff96063', '[\"*\"]', NULL, NULL, '2024-11-13 17:06:22', '2024-11-13 17:06:22'),
(74, 'App\\Models\\User', 24, 'parassharma@truewebmakers.com', 'b3a403649ecbbd94cc5de9d6c0ed0772904b7ee8860ef8f897e8a9d038926b7c', '[\"*\"]', '2024-11-13 17:15:42', NULL, '2024-11-13 17:15:42', '2024-11-13 17:15:42'),
(77, 'App\\Models\\User', 26, 'ankuu3@gmail.com', '5ec47346b285d18efd819b25ebec7d77a853b38da8e16b70bc8c1a9e3f14b75c', '[\"*\"]', NULL, NULL, '2024-11-13 18:13:17', '2024-11-13 18:13:17'),
(79, 'App\\Models\\User', 27, 'paras2@gmail.com', '43bceecf1a7a41729b4f35c149623239858b826860d10612e05cf62bf8ded716', '[\"*\"]', NULL, NULL, '2024-11-14 07:52:20', '2024-11-14 07:52:20'),
(81, 'App\\Models\\User', 1, 'admin@gmail.com', '3e7f346636d47592e10fc3cd18a515e396c52a8122070048a572cad43f4d8560', '[\"*\"]', '2024-11-16 07:28:02', NULL, '2024-11-16 07:27:54', '2024-11-16 07:28:02'),
(85, 'App\\Models\\User', 4, 'ankuu2@gmail.com', '1882d483ae6aef32e597fa815732bfe708b2b00573ffbb84cb0fd7a4b786b39a', '[\"*\"]', '2024-11-16 10:39:45', NULL, '2024-11-16 07:42:06', '2024-11-16 10:39:45'),
(87, 'App\\Models\\User', 1, 'admin@gmail.com', '83c1a5d2ace995f191c3c6a3f7dc68cc2ecded2a45ea5146ebc22152dbfb4617', '[\"*\"]', '2024-11-16 11:00:34', NULL, '2024-11-16 11:00:31', '2024-11-16 11:00:34'),
(88, 'App\\Models\\User', 1, 'admin@gmail.com', '893cdfb4c2ca803c0ee5429f52e61cfa891dbd489002b8050bfaa7a70de3a31d', '[\"*\"]', '2024-11-16 11:43:26', NULL, '2024-11-16 11:01:12', '2024-11-16 11:43:26'),
(91, 'App\\Models\\User', 1, 'admin@gmail.com', '50bb6324a07f8d1300db2bb6e7c413bff08cd192286b66bd6dd8f8a406ae3fd0', '[\"*\"]', '2024-12-14 17:42:32', NULL, '2024-12-14 17:42:27', '2024-12-14 17:42:32'),
(94, 'App\\Models\\User', 28, 'hyperiontech@gmail.com', '918129d2c2336a08474f2cdaf26d5f3970e951fe388dd256a0907bf255b89e3c', '[\"*\"]', NULL, NULL, '2024-12-23 07:07:17', '2024-12-23 07:07:17'),
(95, 'App\\Models\\User', 29, 'hyperiontech1@gmail.com', '25b2739a255708edeef0ca86def7a1ab242d50e596ad4fc7ce064678b4e8f41e', '[\"*\"]', NULL, NULL, '2024-12-23 07:10:07', '2024-12-23 07:10:07'),
(96, 'App\\Models\\User', 29, 'hyperiontech1@gmail.com', '4817a903b58deebb367c4600f81450377db1ebe02319916aa6c96a7bbb4cdcfa', '[\"*\"]', '2024-12-23 07:12:41', NULL, '2024-12-23 07:11:28', '2024-12-23 07:12:41'),
(99, 'App\\Models\\User', 30, 'truewebmakers@gmail.com', 'ef4edea200092bd7a7edc23e232438839d2063444a88aabea3647c7873f5cbc4', '[\"*\"]', NULL, NULL, '2024-12-24 15:39:03', '2024-12-24 15:39:03'),
(100, 'App\\Models\\User', 31, 'parassharmadeveloper@gmail.com', '6d4fcf8a67928c04977ff9259d6d77a12821aa0f51f35c2f2200bd79974aa79f', '[\"*\"]', NULL, NULL, '2024-12-24 15:51:01', '2024-12-24 15:51:01'),
(102, 'App\\Models\\User', 32, 'parassharmadeveloper@gmail.com', 'c43ff9daa2f48dedb6b59d52188384eccc2af85380e021e8fd93f55eb03c3251', '[\"*\"]', NULL, NULL, '2024-12-24 16:12:57', '2024-12-24 16:12:57'),
(113, 'App\\Models\\User', 4, 'ankuu2@gmail.com', '2fb1fda7d248a99e391493b8b6dc966e8623e8d014559032d1084c5a7e58693f', '[\"*\"]', '2024-12-30 17:27:01', NULL, '2024-12-30 16:24:32', '2024-12-30 17:27:01'),
(115, 'App\\Models\\User', 33, 'codecliniclab@gmail.com', 'c7daec3642b773bd4a31168636162df1ccf5b4341689920d9d2d78d8de49647c', '[\"*\"]', NULL, NULL, '2024-12-31 07:20:02', '2024-12-31 07:20:02'),
(119, 'App\\Models\\User', 33, 'codecliniclab@gmail.com', '87ea82e6d8e4aee7c08af4f31b03372e7bdd1da1b7a5e275acf752fb63b06f2c', '[\"*\"]', '2025-01-02 14:50:35', NULL, '2025-01-02 12:34:45', '2025-01-02 14:50:35'),
(121, 'App\\Models\\User', 34, 'truewebmakers@gmail.com', '70d839d6f01798a446e85735277a29c788338e332a19467029e1c36e2582717e', '[\"*\"]', NULL, NULL, '2025-01-02 15:19:49', '2025-01-02 15:19:49'),
(136, 'App\\Models\\User', 4, 'ankuu2@gmail.com', 'b18de51d7456b310de543cc4a1b84d29ee64a491d3d9cfbd3bd0b0784bd2757a', '[\"*\"]', '2025-01-14 18:33:36', NULL, '2025-01-08 15:04:24', '2025-01-14 18:33:36'),
(138, 'App\\Models\\User', 34, 'truewebmakers@gmail.com', '30a7df40a0430d0d1b634cc3ce631cd30564fc161d96a8647b5f0be5b8bc1f5b', '[\"*\"]', '2025-01-12 08:39:42', NULL, '2025-01-12 08:37:15', '2025-01-12 08:39:42'),
(142, 'App\\Models\\User', 4, 'ankuu2@gmail.com', '44c0d44b8ae003fce968ce22b13fbe17ea0d5d6fbe5096063ac1c5258526d520', '[\"*\"]', '2025-01-27 16:59:29', NULL, '2025-01-13 16:15:57', '2025-01-27 16:59:29');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9pUEsiCgw2BU16wFTvcH2y8nLZvugdOaUhFmFf58', NULL, '152.59.91.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnp1bDJzaUk2S3cwWmRDMWRRRUpLYVVVclZpTEQ2NHBPWXNDOXNodCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA0OiJodHRwczovL3dlYmFwcC5oeXBlcmlvbnRlY2guY29tLmF1L2dpbGdhbGNhcmVwcm92aWRlci9lbWFpbC92ZXJpZnkvMzMvNjg0YmU5NGM3Mjg3ZDQxMDUwZmViODI0OTk3OTZmMGFiMDU5ODFmND9leHBpcmVzPTE3MzU2MzMyMDImc2lnbmF0dXJlPTA5NjRiMmQ3ZjBhZDY3ZWUwYjMyMDBkODVmYTU4NmU2ZDAxNzE2OGQwOTQ1MzU3MDVlMWY4NTE0NGExNjAzMWEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735629649),
('LY9E1JD6FA2pHLV7PWKVRQhCSwCW3nrujZibA8Ys', NULL, '152.58.125.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUNqVXBpa2lnV0UwSlQ4d2x5YlJ2aWY4cUh0VDkySGFDMGNOYzhodSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA0OiJodHRwczovL3dlYmFwcC5oeXBlcmlvbnRlY2guY29tLmF1L2dpbGdhbGNhcmVwcm92aWRlci9lbWFpbC92ZXJpZnkvMzIvY2M5MzU0Y2E5ZGIyZGZkODg1NjM2NTZlM2RlOTgyNDU4YTBlY2U4NT9leHBpcmVzPTE3MzUwNjAzNzcmc2lnbmF0dXJlPTg5YzUyMjczZGI0ZTEyZWMxNGE1NzM5MzcxNTU3OTQ4MzQ0NjZmZWYzOGJhMDVjYWNhZTQ4MGE4MmYwZWQ3NDIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735058284),
('rTW8SypA9KQKIDyQjpq2Z3ayRHAaveKDmlSd6z40', NULL, '2409:40d6:e4:ce90:594f:fa3e:7f16:ae2b', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_1_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/131.0.6778.154 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUxOYlR5WUYxNUtVOHBpQkdmWkUxRk1EWFlYZ0QyU01mQzBiekdXaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA0OiJodHRwczovL3dlYmFwcC5oeXBlcmlvbnRlY2guY29tLmF1L2dpbGdhbGNhcmVwcm92aWRlci9lbWFpbC92ZXJpZnkvMzIvY2M5MzU0Y2E5ZGIyZGZkODg1NjM2NTZlM2RlOTgyNDU4YTBlY2U4NT9leHBpcmVzPTE3MzUwNjAzNzcmc2lnbmF0dXJlPTg5YzUyMjczZGI0ZTEyZWMxNGE1NzM5MzcxNTU3OTQ4MzQ0NjZmZWYzOGJhMDVjYWNhZTQ4MGE4MmYwZWQ3NDIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735070803),
('ztFF3st9W8VRn9lkohTkhsjjXvAr5R9s1LDXEair', NULL, '152.58.125.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidnh6UjN4ZTZQWUc5OHlYdjFQSDc3NkViOHlGaFdtcnJGWTZ6QldvYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA0OiJodHRwczovL3dlYmFwcC5oeXBlcmlvbnRlY2guY29tLmF1L2dpbGdhbGNhcmVwcm92aWRlci9lbWFpbC92ZXJpZnkvMzQvOWI1ZmM4ZjEzODc5OWVkNTM1MTM3ZGExY2ZkMmM1NjE3ZGY3NzliOT9leHBpcmVzPTE3MzU4MzQ3ODkmc2lnbmF0dXJlPWNlZGY4OTQ2OTUwZjc2NzJmN2Q1NjVkNjJhMTliNmE3N2I0NGUyNzI0OTkwNzE2YWZkNTdkZDVhYjQ1YjkxNWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735831258);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `stripe_subscription_id` varchar(191) NOT NULL,
  `stripe_price_id` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `name`, `stripe_subscription_id`, `stripe_price_id`, `status`, `created_at`, `updated_at`) VALUES
(4, 22, 'My Plan 9', 'sub_1QKFlFFOjqYjuziS14wSDca5', 'price_1QJtnzFOjqYjuziSrnDWP2kB', 'active', '2024-11-12 08:47:47', '2024-11-12 08:47:47'),
(6, 24, 'My Plan 9', 'sub_1QKjWoFOjqYjuziSXzHcwTJw', 'price_1QJtnzFOjqYjuziSrnDWP2kB', 'active', '2024-11-13 16:34:52', '2024-11-13 16:34:52'),
(7, 26, 'Advanced one', 'sub_1QKl47FOjqYjuziSUTr6sTAt', 'price_1QJaRqFOjqYjuziSPa3yVWws', 'active', '2024-11-13 18:13:21', '2024-11-13 18:13:21'),
(8, 27, 'My Plan 9', 'sub_1QKxqkFOjqYjuziSTpKtjlt5', 'price_1QJtnzFOjqYjuziSrnDWP2kB', 'active', '2024-11-14 07:52:24', '2024-11-14 07:52:24'),
(9, 29, 'My Plan 9', 'sub_1QZ5mHFOjqYjuziSgzlpw6tQ', 'price_1QJtnzFOjqYjuziSrnDWP2kB', 'active', '2024-12-23 07:10:12', '2024-12-23 07:10:12'),
(10, 33, 'My Plan 9', 'sub_1QbzkJFOjqYjuziSxo9IQZd2', 'price_1QJtnzFOjqYjuziSrnDWP2kB', 'active', '2024-12-31 07:20:09', '2024-12-31 07:20:09'),
(11, 34, 'My Plan 9', 'sub_1QcqBhFOjqYjuziSMKeQ0O9D', 'price_1QJtnzFOjqYjuziSrnDWP2kB', 'active', '2025-01-02 15:19:56', '2025-01-02 15:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plans`
--

CREATE TABLE `subscription_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(191) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `term` enum('month','year') NOT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`features`)),
  `stripe_price_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_plans`
--

INSERT INTO `subscription_plans` (`id`, `uuid`, `name`, `price`, `term`, `features`, `stripe_price_id`, `created_at`, `updated_at`) VALUES
(6, '5ed3fd38-8cc6-49a7-821e-024b6b9a1486', 'My Plan 9', 49.99, 'month', '{\"features[\'business_name\']\":true,\"features[\'website_url\']\":true,\"features[\'address\']\":true,\"features[\'map_location\']\":true}', 'price_1QJtnzFOjqYjuziSrnDWP2kB', '2024-11-09 10:39:35', '2024-11-11 09:21:07'),
(7, 'c37b08a3-d376-4f0a-ab8c-aa5e1a6f5f94', 'Advanced one', 1000.00, 'year', '{\"features[\'business_name\']\":true,\"features[\'email\']\":true,\"features[\'add_up_to_3_business_locations\']\":true,\"features[\'highest_search_display_priority\']\":true,\"features[\'business_description\']\":true,\"features[\'upload_gallery_images\']\":true,\"features[\'features_based_on_plan\']\":true}', 'price_1QJaRqFOjqYjuziSPa3yVWws', '2024-11-10 12:40:58', '2024-11-10 12:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stripe_customer_id` varchar(191) DEFAULT NULL,
  `uuid` char(36) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `user_type` enum('admin','business','user') NOT NULL DEFAULT 'user',
  `notes` text DEFAULT NULL,
  `profile_pic` varchar(191) DEFAULT NULL,
  `fb_link` varchar(191) DEFAULT NULL,
  `twitter_link` varchar(191) DEFAULT NULL,
  `googleplus_link` varchar(191) DEFAULT NULL,
  `insta_link` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `stripe_customer_id`, `uuid`, `name`, `phone`, `email`, `email_verified_at`, `password`, `user_type`, `notes`, `profile_pic`, `fb_link`, `twitter_link`, `googleplus_link`, `insta_link`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, '15c08828-8eb8-463f-a03f-c14d2c595ed6', 'Admin User', '8950990009', 'admin@gmail.com', NULL, '$2y$12$PaCwzFf3mZhfnAKuB4dd6.ee6iDaySpU3fcjPmkSbvlZAJJwf9w8e', 'admin', 'Its me developer', 'profile_pics/Iq0Ohht79P4tmowOT2vorb2ex2fvDQpCYR89pOSb.png', 'https://facebook.com', 'https://twitter.com', 'https://google.com', 'https://insta.com', NULL, '2024-09-12 07:49:04', '2024-09-12 07:55:46'),
(2, NULL, '928fd010-60b4-418f-b9cc-b5b3a1ec6e37', 'Ankita Khokhar', NULL, 'ankuu@gmail.com', NULL, '$2y$12$/eqTRbp44gRdiEI2i2K.6.KqU68exhVEIi8ZftTR3bdI3LMjpsddq', 'business', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-14 14:05:47', '2024-09-14 14:05:47'),
(3, NULL, '970edc8a-cec2-4ccb-839f-65a436174f70', 'Ankuu', NULL, 'ankuu1@gmail.com', '2024-12-24 21:37:09', '$2y$12$JI0filCEoGBwb7CF.YvNHuUJwYwVx3YdB1pB15cw5dphUs8pxJiSq', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-14 14:16:23', '2024-09-14 14:16:23'),
(4, NULL, '4b02c544-65f4-4470-9f78-9e8e80270360', 'Ankuu', NULL, 'ankuu2@gmail.com', '2024-12-24 21:37:28', '$2y$12$x6JEnfGk/vOct3q1eOLfD.3bt0auyHJ9621jLxHTd7e.F08kPcEiy', 'business', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-14 14:26:35', '2024-09-14 14:26:35'),
(5, NULL, 'b8e749b7-3116-4d1d-ba2a-6020efdae4e7', 'user', NULL, 'user@gmail.com', NULL, '$2y$12$FNbAS/mNAGUjLolqzjrUseWwlJPZkM2pmyeiyYcSdQpLUp6mAwnfq', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-16 17:02:48', '2024-09-16 17:02:48'),
(6, NULL, '5afb1994-16ba-40f0-a4b7-8e47758511b2', 'abc', NULL, 'abc@gmail.com', NULL, '$2y$12$w1jPKpmJ4LRv8UToN2RbKu.9n8aa1dIDDHsfrI.Y6LD.lHfiIecEa', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-15 09:02:31', '2024-10-15 09:02:31'),
(7, NULL, 'd38fc1bb-0be0-48d4-872c-2656f4a234c6', 'Arthua Ramsy', '0422400373444', 'arthua84@gmail.com', NULL, '$2y$12$qcBhRABLjNwhRLkC6B24tuuikhE2p6DxSsZBSnkYwE2y7hezDcRrC', 'business', 'hrkkkkkkkk', 'profile_pics/34Ct061c6zQyE2rNa5DtUcRw8aKaoaKhcxLRb1EB.jpg', NULL, NULL, NULL, NULL, NULL, '2024-10-15 09:03:52', '2024-10-15 09:05:23'),
(10, NULL, '468f6339-614e-47ea-9c4e-cd41ec939ba5', 'abc', NULL, 'thankyou@gmail.com', NULL, '$2y$12$jmV2uZHQwDA5mcEuaVPUNeTxvB88NJ8hnmbr1BqBQp6G3CX4XINOe', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-21 11:54:49', '2024-10-21 11:54:49'),
(11, NULL, '94e14f80-a8c4-43a5-9106-3c7ca3e77592', 'Paras', NULL, 'paras@gmail.com', NULL, '$2y$12$fobSJf.MK1NxhYEigyL1JOvJoWHuFgetfqvi/CoU0MFWdS6ion5LG', 'user', 'hello', 'profile_pics/wPMnNPPhDkQrEpUZ7RYpdTYwmJDN2k28HTfyKMia.jpg', NULL, NULL, NULL, NULL, NULL, '2024-10-22 07:55:05', '2024-12-23 07:05:11'),
(12, NULL, '8c68f640-109b-4664-a05f-7b049dd176d9', 'Manu', NULL, 'manu@gmail.com', NULL, '$2y$12$3nuyPB1SL.hf0M0XSruDM.q4aXRqe60qsTTDAg1HajRMj1g962oCS', 'business', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-22 07:55:35', '2024-10-22 07:55:35'),
(13, NULL, '0afd9ea4-ca8a-4ea5-a422-edc0d7215579', 'Ankita', NULL, 'ankita@gmail.com', NULL, '$2y$12$WOGykpWr9cgXNIjCQuMg7.inS8PjDhRgbu1dXOt5OY0X.Rc5kQaYu', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-10 12:52:32', '2024-11-10 12:52:32'),
(22, 'cus_RCf5VgpYPXkxES', '9d68d4d9-f09c-4124-adad-d23bd84588a6', 'Test', NULL, 'info@truewebmakers.com', NULL, '$2y$12$qtfoeUc.TuAfozQQUXUby.2kl9VYQyUov9nRfZTnDWSo9d69cW.OG', 'business', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 08:47:43', '2024-11-12 08:47:43'),
(24, 'cus_RD9qqfo3TwaC6v', 'a574efe2-9684-4b6c-ba64-6e85aec957a7', 'Paras Sharma', NULL, 'parassharma@truewebmakers.com', NULL, '$2y$12$gqDeij.SaKo8SrE6Q.Js7uDmDKpC1mS95w.4Zyb6fOVznIDXLHLuK', 'business', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-13 16:34:48', '2024-11-13 16:34:48'),
(26, 'cus_RDBQnoTgDBlEE1', 'ebe1d942-38fe-4a81-920e-e4b5f6642006', 'jnhui', NULL, 'ankuu3@gmail.com', NULL, '$2y$12$eZ1zjXXTNAs5HQp9PXq5depT88sMlacssyc1tmPjGSbFQ3TXyvhZu', 'business', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-13 18:13:17', '2024-11-13 18:13:17'),
(27, 'cus_RDOeoly4ffWAU8', 'ccc56e04-40ab-4a69-8554-bc4e11ea1a1a', 'Paras', NULL, 'paras2@gmail.com', NULL, '$2y$12$aUNOZI1bIrb9eSCMY44ZxeccGBfIkriHaHVMvJm/Tskq1XznSiLdO', 'business', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-14 07:52:20', '2024-11-14 07:52:21'),
(28, NULL, '0a681f40-89aa-4201-a94c-9eb9bdd9b283', 'Arthua RAmsy', NULL, 'hyperiontech@gmail.com', NULL, '$2y$12$k/QcNW9ZRLyG4Erj4dNmMuqC2s7h7n3xEQA05Uqdqg3zTFPNOa3ZK', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-23 07:07:17', '2024-12-23 07:07:17'),
(29, 'cus_RRzlssnBSn5ea2', 'e843e6e6-738c-4d13-a077-b53b3bf538a7', 'Arthua Ramsy', NULL, 'hyperiontech1@gmail.com', NULL, '$2y$12$qpNvtiJsYZwfBUsoeqqbru4GQw0RouxVvmgwpujS6ZGL3gdbRDgz2', 'business', NULL, 'profile_pics/wnzzLZxRwykv6lvv1J3TJgE9SNgKpBQAdiss7dtA.jpg', NULL, NULL, NULL, NULL, NULL, '2024-12-23 07:10:07', '2024-12-23 07:12:04'),
(32, NULL, 'c7cffab0-00c8-4967-b000-297e1b0f581f', 'Paras Sharma', NULL, 'parassharmadeveloper@gmail.com', '2024-12-24 20:06:43', '$2y$12$TNmGoFtYLaADD3I1NKc28OX1NuDxg488JL89Hd/F2qBtEdTXqtH5u', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-24 16:12:57', '2024-12-24 20:06:43'),
(33, 'cus_RUzjXHAH3kQkCq', 'a87c1131-aa66-444e-9fab-bde596655254', 'Paras Sharama', '7897897897', 'codecliniclab@gmail.com', '2024-12-31 07:20:49', '$2y$12$Ln9CNi5cqWjdvydZuRvSbO4l0wcINPj/7UZsBE8HDPBYkPL8lU6p2', 'business', NULL, 'profile_pics/uqDv34YqvVOixz70NQahuUqMQVxPdWcHWJ9kPCyK.jpg', NULL, NULL, NULL, NULL, NULL, '2024-12-31 07:20:02', '2024-12-31 08:14:32'),
(34, 'cus_RVrvTdxoMckAoB', '3b5b055f-b7b5-4347-bb98-e87c37abb380', 'Paras Sharma', '0422400373', 'truewebmakers@gmail.com', '2025-01-02 15:20:58', '$2y$12$9ZLMtwDUzEiG.cBkXB7z6OVANMPMFOhmIBO.h.L4BMktZbVqCL55m', 'business', NULL, 'profile_pics/ae6rPtjH1ch7EhIYXjuVjmy22zVUR6eSHTjU6CDi.jpg', NULL, NULL, NULL, NULL, NULL, '2025-01-02 15:19:49', '2025-01-12 11:35:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `availablitities`
--
ALTER TABLE `availablitities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `availablitities_listing_id_foreign` (`listing_id`);

--
-- Indexes for table `business_listings`
--
ALTER TABLE `business_listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `business_listings_added_by_foreign` (`added_by`);

--
-- Indexes for table `business_listing_meta`
--
ALTER TABLE `business_listing_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `business_listing_meta_business_listing_id_foreign` (`business_listing_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_listings`
--
ALTER TABLE `category_listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_listings_business_listing_id_foreign` (`business_listing_id`),
  ADD KEY `category_listings_category_id_foreign` (`category_id`);

--
-- Indexes for table `contact_form_entries`
--
ALTER TABLE `contact_form_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedbacks_business_listing_id_foreign` (`business_listing_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_views`
--
ALTER TABLE `listing_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listing_views_business_listing_id_foreign` (`business_listing_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_foreign` (`user_id`);

--
-- Indexes for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_plans_uuid_unique` (`uuid`);

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
-- AUTO_INCREMENT for table `availablitities`
--
ALTER TABLE `availablitities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `business_listings`
--
ALTER TABLE `business_listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `business_listing_meta`
--
ALTER TABLE `business_listing_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `category_listings`
--
ALTER TABLE `category_listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `contact_form_entries`
--
ALTER TABLE `contact_form_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listing_views`
--
ALTER TABLE `listing_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `availablitities`
--
ALTER TABLE `availablitities`
  ADD CONSTRAINT `availablitities_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `business_listings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `business_listings`
--
ALTER TABLE `business_listings`
  ADD CONSTRAINT `business_listings_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `business_listing_meta`
--
ALTER TABLE `business_listing_meta`
  ADD CONSTRAINT `business_listing_meta_business_listing_id_foreign` FOREIGN KEY (`business_listing_id`) REFERENCES `business_listings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_listings`
--
ALTER TABLE `category_listings`
  ADD CONSTRAINT `category_listings_business_listing_id_foreign` FOREIGN KEY (`business_listing_id`) REFERENCES `business_listings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_listings_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_business_listing_id_foreign` FOREIGN KEY (`business_listing_id`) REFERENCES `business_listings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `listing_views`
--
ALTER TABLE `listing_views`
  ADD CONSTRAINT `listing_views_business_listing_id_foreign` FOREIGN KEY (`business_listing_id`) REFERENCES `business_listings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
