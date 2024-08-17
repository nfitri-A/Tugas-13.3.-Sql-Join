-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.39 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table sql_join.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `status` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sql_join.categories: ~3 rows (approximately)
INSERT INTO `categories` (`id`, `user_id`, `code`, `name`, `slug`, `description`, `status`, `photo`) VALUES
	(1, 1, 'C001', 'Electronics', 'electronics', 'Category for electronic items', 'active', 'electronics.jpg'),
	(2, 2, 'C002', 'Books', 'books', 'Category for various books', 'active', 'books.jpg'),
	(3, 1, 'C003', 'Clothing', 'clothing', 'Category for clothes and apparel', 'inactive', 'clothing.jpg');

-- Dumping structure for table sql_join.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext,
  `photo` varchar(255) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sql_join.products: ~3 rows (approximately)
INSERT INTO `products` (`id`, `category_id`, `user_id`, `code`, `name`, `slug`, `description`, `photo`, `qty`, `unit`, `price`, `status`) VALUES
	(1, 1, 1, 'P001', 'Product One', 'product-one', 'This is the first product.', 'photo1.jpg', 100, 'pcs', 19.99, 'available'),
	(2, 2, 2, 'P002', 'Product Two', 'product-two', 'This is the second product.', 'photo2.jpg', 50, 'pcs', 29.99, 'available'),
	(3, 3, 1, 'P003', 'Product Three', 'product-three', 'This is the third product.', 'photo3.jpg', 75, 'pcs', 39.99, 'out of stock');

-- Dumping structure for table sql_join.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table sql_join.users: ~3 rows (approximately)
INSERT INTO `users` (`id`, `email`, `name`, `password`, `address`, `role`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'john.doe@example.com', 'John Doe', 'password123', '123 Main St', 'admin', 'active', '2024-08-17 03:12:48', '2024-08-17 03:12:48'),
	(2, 'jane.smith@example.com', 'Jane Smith', 'password456', '456 Elm St', 'user', 'inactive', '2024-08-17 03:12:48', '2024-08-17 03:12:48'),
	(3, 'michael.jones@example.com', 'Michael Jones', 'password789', '789 Oak St', 'user', 'active', '2024-08-17 03:12:48', '2024-08-17 03:12:48');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
