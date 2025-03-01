-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: מרץ 01, 2025 בזמן 10:53 PM
-- גרסת שרת: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `glowspot`
--

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- הוצאת מידע עבור טבלה `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'John Doe', 'john@example.com', 'I have a question about my order.', '2025-02-28 16:32:40'),
(2, 'test', '500', 'test', '2025-03-01 13:18:11'),
(3, 'Reham ', 'rwreham@gmail.com', ' n,nmnjk', '2025-03-01 15:12:19'),
(4, 'Reham ', 'rwreham@gmail.com', 'hhjgggghghghggh', '2025-03-01 15:26:30'),
(5, 'jbbbn', 'rwreham@gmail.com', 'hhjgggghghghggh', '2025-03-01 16:38:03');

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- הוצאת מידע עבור טבלה `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `image`, `created_at`) VALUES
(6, 'Gucci Bloom', 399.90, 'the Gucci Bloom collection introduces Gucci Bloom Parfum, a modern reimagination of the signature white Bloom Accord. Seamlessly blending Jasmine, Coral Jasmine, and Tuberose, the scent evokes timeless elegance and refined sensuality.', '/uploads/1740864113952.png', '2025-03-01 21:21:53'),
(7, 'Gucci Guilty', 399.90, 'Guilty by Gucci is a fragrance designed for women that presents a beautiful blend of floral, sweet, fruity, spicy, and powdery aroma', '/uploads/1740864223313.png', '2025-03-01 21:23:43'),
(8, 'coco chanel mademoiselle', 700.00, 'COCO MADEMOISELLE. The essence of a bold and free woman. A feminine ambery fragrance with a strong personality and a surprising freshness.', '/uploads/1740864482504.png', '2025-03-01 21:28:02'),
(9, 'BLEU DE CHANEL', 700.00, 'BLEU DE CHANEL Parfum is an aromatic, intensely woody fragrance. It opens with powerful freshness, then lingers with a precious accord of New Caledonian sandalwood that unfurls its generous, powerful notes in a dense and sophisticated trail.', '/uploads/1740864739558.png', '2025-03-01 21:32:19');

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_role` varchar(255) DEFAULT 'user',
  `date_of_birth` date NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- הוצאת מידע עבור טבלה `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `phone_number`, `email`, `user_role`, `date_of_birth`, `user_name`, `password_hash`) VALUES
(1, 'John', 'Doe', '1234567890', 'john@example.com', 'user', '1995-05-10', 'johndoe', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f'),
(3, 'Reham', 'Wahbi', '0505715929', 'rwreham@gmail.com', 'admin', '2000-06-29', 'QueenRe', '$2b$10$BgSE5uQCqxNtUTRodMeDLOmpZFQzIyaWeJfCLKsLiy8ZAza9KHvtC'),
(6, 'testttt', 'testt', '0505715920', 'rwreha@gmail.com', 'user', '2005-02-24', 'test123', '$2b$10$MQGDHXklbazo8bpmtA/JW.JL7/gC3rgaxtu4hAUDfgmPQD5K1KDj.'),
(9, 'test5', 'test5', '0505715966', 'rwre@gmail.com', 'user', '2005-02-24', 'test5', '$2b$10$DZbBv2Rc9Gq8olTmHkYEd.xMZ1eDRpMUuQjRCQ7/KL12S2LqQnQsa');

--
-- Indexes for dumped tables
--

--
-- אינדקסים לטבלה `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- אינדקסים לטבלה `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- אינדקסים לטבלה `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_number` (`phone_number`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
