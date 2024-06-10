/*
 Navicat Premium Dump SQL

 Source Server         : boss_travel
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : lopte_key

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 10/06/2024 19:24:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries`  (
  `id` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES (1, 'Vietsub', '2024-05-08 16:09:44', '2024-05-30 01:51:28', 'vietsub');
INSERT INTO `countries` VALUES (3, 'Thuyết Minh', '2024-05-09 08:43:15', '2024-05-30 01:51:47', 'thuyet-minh');
INSERT INTO `countries` VALUES (4, 'Lồng Tiếng', '2024-05-09 08:43:22', '2024-05-30 01:53:08', 'long-tieng');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for games
-- ----------------------------
DROP TABLE IF EXISTS `games`;
CREATE TABLE `games`  (
  `id` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `genre_id` int NULL DEFAULT NULL,
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mod_feartured` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `view` int NULL DEFAULT NULL,
  `genre_name` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of games
-- ----------------------------
INSERT INTO `games` VALUES (4, 'Dead Target Mod Full Guns Vip ( Coin, Dimion, Iteam, Skin )', 3, '1.0.4', 'https://www.gamelopte.com/wp-content/uploads/2022/10/IMG_20230712_025007-678x381.png', '<p><strong><span style=\"color: rgb(0, 0, 0)\">- One Hit</span></strong></p><p><strong><span style=\"color: rgb(0, 0, 0)\">- Vô Hạn Tiền</span></strong></p>', '<p>​<span style=\"color: rgb(0, 0, 0);font-size: 14px\">Bạn đang tìm kiếm một thể loại game bắn súng giải trí cực hay với những tính năng ưu việt sẽ mở ra tất cả các cơ sở súng đắt nhất trong thể loại game này, những game này có tính giải trí rất cao khi Tải về và cài đặt theo video hướng dẫn bên dưới của tôi, bạn sẽ được có thể mở khóa tất cả tiền và kim cương, đá quý và mọi thứ trong trò chơi này, đặc biệt tôi rất thích các chế độ súng và súng. Điều này kết hợp với các chế độ sạc đã được mở trong mod Dead Trigger này sẽ giúp bạn chơi game cực kỳ hào hứng khi trải nghiệm thể loại game mod bắn súng đình đám này. .</span>​</p>', '2024-05-20 15:07:56', '2024-05-29 16:07:16', 'dead-target-mod-full-guns-vip--coin-dimion-iteam-skin-', 0, 12, NULL);
INSERT INTO `games` VALUES (5, 'Ben Nguyen 2233', 1, '1.0.4', 'https://gamehayvl.com/wp-content/uploads/2024/05/catch-tame.jpeg', '<p><span style=\"color: rgb(255, 0, 0)\"><strong>Tính năng mod</strong></span><strong>:&nbsp;</strong>123</p><p>Version: 213213</p>', '<p>Hi 123321</p>', '2024-05-21 15:00:04', '2024-05-30 04:43:53', 'ben-nguyen-2233', 1, 9, NULL);
INSERT INTO `games` VALUES (6, 'Emma Watson', 3, '1.0.43', 'https://sohanews.sohacdn.com/zoom/540_340/160588918557773824/2023/5/24/photo1684899945061-1684899945134404131119.jpg', '<p>Dndndjdjdj</p>', '<p>Ndjdkdodkdkdk</p>', '2024-05-26 14:22:51', '2024-06-05 15:15:10', 'emma-watson', 0, 9, NULL);
INSERT INTO `games` VALUES (7, '123123 123', 123333, '1.0.43', 'https://phim.nguonc.com/public/images/Post/5/RBJAlV_4f.jpg', '<p>3123123</p>', '<p>32123123</p>', '2024-05-29 15:30:55', '2024-05-29 16:07:13', '123123-123', 0, 5, NULL);
INSERT INTO `games` VALUES (8, '1', 0, '1.0.4', 'https://salt.tikicdn.com/cache/750x750/ts/product/6f/3f/58/80b2a6075864f509d332757b6bcfaac4.jpg', '<p>212</p>', '<p>2121</p>', '2024-05-29 15:31:46', '2024-06-05 15:15:13', '1', 0, 2, 1213);

-- ----------------------------
-- Table structure for games_genres
-- ----------------------------
DROP TABLE IF EXISTS `games_genres`;
CREATE TABLE `games_genres`  (
  `id` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of games_genres
-- ----------------------------
INSERT INTO `games_genres` VALUES (1, 'Nhập vai', 'nhap-vai', '2024-05-20 21:47:09', '2024-05-20 21:47:10');
INSERT INTO `games_genres` VALUES (3, 'Hành động 1', 'hanh-dong-1', '2024-05-21 05:44:40', '2024-05-21 05:44:40');

-- ----------------------------
-- Table structure for games_links
-- ----------------------------
DROP TABLE IF EXISTS `games_links`;
CREATE TABLE `games_links`  (
  `id` int NULL DEFAULT NULL,
  `game_id` int NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of games_links
-- ----------------------------
INSERT INTO `games_links` VALUES (22, 5, '23213aazzz');
INSERT INTO `games_links` VALUES (39, 4, '213213');

-- ----------------------------
-- Table structure for genres
-- ----------------------------
DROP TABLE IF EXISTS `genres`;
CREATE TABLE `genres`  (
  `id` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of genres
-- ----------------------------
INSERT INTO `genres` VALUES (1, 'Phim Hay Khác', '2024-05-08 15:45:16', '2024-05-26 15:12:32', 'phim-hay-khac');
INSERT INTO `genres` VALUES (3, 'Chiếu Rạp Việt', '2024-05-08 15:48:40', '2024-05-26 15:12:18', 'chieu-rap-viet');
INSERT INTO `genres` VALUES (4, 'Chiếu Rạp Nước Ngoài', '2024-05-09 13:05:28', '2024-05-26 15:11:57', 'chieu-rap-nuoc-ngoai');

-- ----------------------------
-- Table structure for key_types
-- ----------------------------
DROP TABLE IF EXISTS `key_types`;
CREATE TABLE `key_types`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_day` int NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of key_types
-- ----------------------------
INSERT INTO `key_types` VALUES (1, 'Key 1 Ngày', 1, 10000, '2024-06-01 05:47:44', '2024-06-01 05:47:44');
INSERT INTO `key_types` VALUES (2, 'Key 2 Ngày', 2, 20000, '2024-06-01 05:53:11', '2024-06-01 05:53:11');
INSERT INTO `key_types` VALUES (3, 'Key 7 Ngày', 7, 50000, '2024-06-01 05:53:32', '2024-06-01 05:53:32');
INSERT INTO `key_types` VALUES (4, 'Key 1 Tháng', 30, 70000, '2024-06-01 05:53:47', '2024-06-01 05:53:47');

-- ----------------------------
-- Table structure for keys
-- ----------------------------
DROP TABLE IF EXISTS `keys`;
CREATE TABLE `keys`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_day` int NOT NULL,
  `expired` date NULL DEFAULT NULL,
  `session_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `key_type_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `keys_key_type_id_foreign`(`key_type_id` ASC) USING BTREE,
  CONSTRAINT `keys_key_type_id_foreign` FOREIGN KEY (`key_type_id`) REFERENCES `key_types` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of keys
-- ----------------------------
INSERT INTO `keys` VALUES (1, 'ahihi', 2, '2024-06-03', NULL, 2, '2024-06-04 14:49:49', '2024-06-01 07:00:37', 1);
INSERT INTO `keys` VALUES (2, 'ahihi 456', 2, '2024-06-04', NULL, 2, '2024-06-04 14:49:50', '2024-06-01 07:03:32', 1);
INSERT INTO `keys` VALUES (3, 'ahihi 123', 1, '2024-06-06', NULL, 1, '2024-06-04 14:49:50', NULL, 1);
INSERT INTO `keys` VALUES (4, '1390', 1, NULL, NULL, 1, '2024-06-09 18:59:57', '2024-06-09 18:59:57', 1);
INSERT INTO `keys` VALUES (5, '1391', 1, NULL, NULL, 1, '2024-06-04 14:55:53', NULL, 0);
INSERT INTO `keys` VALUES (6, '1392', 1, NULL, NULL, 1, '2024-06-04 14:55:56', NULL, 0);
INSERT INTO `keys` VALUES (7, 'avc', 1, NULL, NULL, 1, '2024-06-04 14:51:08', '2024-06-04 14:51:08', 0);
INSERT INTO `keys` VALUES (8, '112233', 2, NULL, NULL, 2, '2024-06-04 15:07:27', '2024-06-04 15:07:27', 1);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2024_06_01_065440_create_keys_table', 1);
INSERT INTO `migrations` VALUES (6, '2024_06_01_070045_create_orders_table', 1);
INSERT INTO `migrations` VALUES (7, '2024_06_01_070203_create_payments_table', 1);
INSERT INTO `migrations` VALUES (8, '2024_06_01_070422_create_pets_table', 1);

-- ----------------------------
-- Table structure for movie_banners
-- ----------------------------
DROP TABLE IF EXISTS `movie_banners`;
CREATE TABLE `movie_banners`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `movie_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of movie_banners
-- ----------------------------

-- ----------------------------
-- Table structure for movie_countries
-- ----------------------------
DROP TABLE IF EXISTS `movie_countries`;
CREATE TABLE `movie_countries`  (
  `id` int NULL DEFAULT NULL,
  `movie_id` int NULL DEFAULT NULL,
  `country_id` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of movie_countries
-- ----------------------------
INSERT INTO `movie_countries` VALUES (1, 108, 4);
INSERT INTO `movie_countries` VALUES (2, 107, 3);
INSERT INTO `movie_countries` VALUES (3, 110, 3);
INSERT INTO `movie_countries` VALUES (4, 111, 1);
INSERT INTO `movie_countries` VALUES (5, 112, 4);
INSERT INTO `movie_countries` VALUES (6, 113, 1);
INSERT INTO `movie_countries` VALUES (7, 114, 1);
INSERT INTO `movie_countries` VALUES (8, 115, 1);
INSERT INTO `movie_countries` VALUES (9, 116, 1);
INSERT INTO `movie_countries` VALUES (10, 117, 3);
INSERT INTO `movie_countries` VALUES (12, 119, 1);
INSERT INTO `movie_countries` VALUES (13, 120, 1);
INSERT INTO `movie_countries` VALUES (14, 121, 1);
INSERT INTO `movie_countries` VALUES (15, 122, 1);
INSERT INTO `movie_countries` VALUES (16, 123, 1);
INSERT INTO `movie_countries` VALUES (17, 124, 1);
INSERT INTO `movie_countries` VALUES (18, 125, 1);
INSERT INTO `movie_countries` VALUES (19, 126, 1);
INSERT INTO `movie_countries` VALUES (28, 184, 1);
INSERT INTO `movie_countries` VALUES (29, 184, 3);
INSERT INTO `movie_countries` VALUES (30, 184, 4);
INSERT INTO `movie_countries` VALUES (36, 185, 1);
INSERT INTO `movie_countries` VALUES (37, 185, 3);
INSERT INTO `movie_countries` VALUES (38, 186, 1);
INSERT INTO `movie_countries` VALUES (39, 186, 3);
INSERT INTO `movie_countries` VALUES (42, 151, 1);
INSERT INTO `movie_countries` VALUES (43, 151, 3);
INSERT INTO `movie_countries` VALUES (44, 174, 1);
INSERT INTO `movie_countries` VALUES (45, 174, 3);

-- ----------------------------
-- Table structure for movie_genres
-- ----------------------------
DROP TABLE IF EXISTS `movie_genres`;
CREATE TABLE `movie_genres`  (
  `id` int NULL DEFAULT NULL,
  `movie_id` int NULL DEFAULT NULL,
  `genre_id` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of movie_genres
-- ----------------------------
INSERT INTO `movie_genres` VALUES (103, 110, 3);
INSERT INTO `movie_genres` VALUES (104, 111, 3);
INSERT INTO `movie_genres` VALUES (105, 112, 3);
INSERT INTO `movie_genres` VALUES (106, 113, 3);
INSERT INTO `movie_genres` VALUES (107, 114, 3);
INSERT INTO `movie_genres` VALUES (108, 115, 3);
INSERT INTO `movie_genres` VALUES (109, 116, 3);
INSERT INTO `movie_genres` VALUES (110, 117, 3);
INSERT INTO `movie_genres` VALUES (111, 118, 3);
INSERT INTO `movie_genres` VALUES (112, 119, 3);
INSERT INTO `movie_genres` VALUES (113, 120, 3);
INSERT INTO `movie_genres` VALUES (114, 121, 3);
INSERT INTO `movie_genres` VALUES (115, 122, 3);
INSERT INTO `movie_genres` VALUES (116, 123, 3);
INSERT INTO `movie_genres` VALUES (117, 124, 3);
INSERT INTO `movie_genres` VALUES (118, 125, 3);
INSERT INTO `movie_genres` VALUES (119, 126, 3);
INSERT INTO `movie_genres` VALUES (132, 108, 3);
INSERT INTO `movie_genres` VALUES (135, 128, 3);
INSERT INTO `movie_genres` VALUES (136, 129, 3);
INSERT INTO `movie_genres` VALUES (139, 107, 3);
INSERT INTO `movie_genres` VALUES (140, 127, 4);
INSERT INTO `movie_genres` VALUES (141, 130, 4);
INSERT INTO `movie_genres` VALUES (142, 131, 4);
INSERT INTO `movie_genres` VALUES (143, 132, 4);
INSERT INTO `movie_genres` VALUES (144, 133, 3);
INSERT INTO `movie_genres` VALUES (145, 134, 1);
INSERT INTO `movie_genres` VALUES (146, 135, 4);
INSERT INTO `movie_genres` VALUES (147, 136, 4);
INSERT INTO `movie_genres` VALUES (148, 137, 4);
INSERT INTO `movie_genres` VALUES (149, 138, 4);
INSERT INTO `movie_genres` VALUES (150, 139, 3);
INSERT INTO `movie_genres` VALUES (151, 140, 4);
INSERT INTO `movie_genres` VALUES (152, 141, 3);
INSERT INTO `movie_genres` VALUES (153, 142, 3);
INSERT INTO `movie_genres` VALUES (154, 143, 4);
INSERT INTO `movie_genres` VALUES (155, 144, 4);
INSERT INTO `movie_genres` VALUES (156, 145, 1);
INSERT INTO `movie_genres` VALUES (157, 146, 4);
INSERT INTO `movie_genres` VALUES (158, 147, 3);
INSERT INTO `movie_genres` VALUES (159, 148, 1);
INSERT INTO `movie_genres` VALUES (160, 149, 3);
INSERT INTO `movie_genres` VALUES (161, 150, 3);
INSERT INTO `movie_genres` VALUES (163, 152, 4);
INSERT INTO `movie_genres` VALUES (164, 153, 1);
INSERT INTO `movie_genres` VALUES (165, 154, 1);
INSERT INTO `movie_genres` VALUES (166, 155, 1);
INSERT INTO `movie_genres` VALUES (167, 156, 3);
INSERT INTO `movie_genres` VALUES (168, 157, 3);
INSERT INTO `movie_genres` VALUES (170, 159, 4);
INSERT INTO `movie_genres` VALUES (171, 160, 1);
INSERT INTO `movie_genres` VALUES (172, 161, 3);
INSERT INTO `movie_genres` VALUES (173, 162, 4);
INSERT INTO `movie_genres` VALUES (174, 163, 4);
INSERT INTO `movie_genres` VALUES (175, 164, 4);
INSERT INTO `movie_genres` VALUES (176, 165, 1);
INSERT INTO `movie_genres` VALUES (177, 166, 1);
INSERT INTO `movie_genres` VALUES (178, 167, 1);
INSERT INTO `movie_genres` VALUES (179, 168, 3);
INSERT INTO `movie_genres` VALUES (180, 169, 4);
INSERT INTO `movie_genres` VALUES (181, 170, 1);
INSERT INTO `movie_genres` VALUES (182, 171, 1);
INSERT INTO `movie_genres` VALUES (183, 172, 4);
INSERT INTO `movie_genres` VALUES (184, 173, 4);
INSERT INTO `movie_genres` VALUES (186, 175, 1);
INSERT INTO `movie_genres` VALUES (187, 176, 4);
INSERT INTO `movie_genres` VALUES (188, 158, 1);
INSERT INTO `movie_genres` VALUES (189, 177, 4);
INSERT INTO `movie_genres` VALUES (190, 178, 3);
INSERT INTO `movie_genres` VALUES (191, 179, 3);
INSERT INTO `movie_genres` VALUES (192, 180, 4);
INSERT INTO `movie_genres` VALUES (197, 184, 1);
INSERT INTO `movie_genres` VALUES (201, 185, 1);
INSERT INTO `movie_genres` VALUES (202, 186, 3);
INSERT INTO `movie_genres` VALUES (206, 151, 4);
INSERT INTO `movie_genres` VALUES (207, 174, 4);

-- ----------------------------
-- Table structure for movie_links
-- ----------------------------
DROP TABLE IF EXISTS `movie_links`;
CREATE TABLE `movie_links`  (
  `id` int NULL DEFAULT NULL,
  `movie_id` int NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of movie_links
-- ----------------------------
INSERT INTO `movie_links` VALUES (57, 110, 'https://terabox.com/s/1UDiaT3DZXvHw2--C3RaW7g', '');
INSERT INTO `movie_links` VALUES (61, 111, 'https://terabox.com/s/1AW4SpwATBChKem_c0qmcng', '');
INSERT INTO `movie_links` VALUES (65, 112, 'https://terabox.com/s/1pcDB2hSAXRWHgYoIeWGtzw', '');
INSERT INTO `movie_links` VALUES (66, 112, 'https://terabox.com/s/1KNIruvLS2kRaPuosNfEfqQ', '');
INSERT INTO `movie_links` VALUES (67, 112, 'https://terabox.com/s/1AVvYzfvO3YwvaZkEbDMhGQ', '');
INSERT INTO `movie_links` VALUES (68, 112, 'https://terabox.com/s/1rHHfpXHW9v9ZBtONgOBXnQ', '');
INSERT INTO `movie_links` VALUES (69, 112, 'https://terabox.com/s/1dSDIMTkjEw2lR86oMUr9iA', '');
INSERT INTO `movie_links` VALUES (70, 112, 'https://terabox.com/s/1UTIrDtBnBwqdShjg2T2aLA', '');
INSERT INTO `movie_links` VALUES (71, 112, 'https://terabox.com/s/1sH85aE-IeX45CG9dkuiCXg', '');
INSERT INTO `movie_links` VALUES (77, 114, 'https://terabox.com/s/1QQR92Z3ms6f7OHtWDjvwvQ', '');
INSERT INTO `movie_links` VALUES (78, 115, 'https://terabox.com/s/10LUKYDNzxQK1U7HavlT_wg', '');
INSERT INTO `movie_links` VALUES (79, 116, 'https://terabox.com/s/1pTDY0Q4QU5wvfAuZzlXhYQ', '');
INSERT INTO `movie_links` VALUES (80, 117, 'https://terabox.com/s/1b50vNG0AUL2iZJ2o6Gc_8g', '');
INSERT INTO `movie_links` VALUES (81, 113, 'https://terabox.com/s/1doxxofqjF9ei9NFb3H07Mg', '');
INSERT INTO `movie_links` VALUES (82, 118, 'https://terabox.com/s/1YpOeay3xthx7yhkMRDKvGA', '');
INSERT INTO `movie_links` VALUES (83, 119, 'https://terabox.com/s/1oU6-XvjhTG4bs5olPE7nUQ', '');
INSERT INTO `movie_links` VALUES (84, 120, 'https://terabox.com/s/1Z3xQeSjeasQknhEC5e90AQ', '');
INSERT INTO `movie_links` VALUES (85, 121, 'https://terabox.com/s/11uSHRb9JTzT6Pl5kWzONmQ', '');
INSERT INTO `movie_links` VALUES (86, 122, 'https://terabox.com/s/1VbsFC29oO6_44wBZTDm9Vg', '');
INSERT INTO `movie_links` VALUES (87, 123, 'https://terabox.com/s/1vUsSso8RwMveoyZIuO3Dtw', '');
INSERT INTO `movie_links` VALUES (88, 124, 'https://terabox.com/s/1WTfzMSIX9rCwt0pDhrli6w', '');
INSERT INTO `movie_links` VALUES (89, 125, 'https://terabox.com/s/1Vokbufctmx4-UzJmxoM70A', '');
INSERT INTO `movie_links` VALUES (90, 126, 'https://terabox.com/s/1GRyszApEOjQ_YbjVQDrKcA', '');
INSERT INTO `movie_links` VALUES (98, 108, 'https://terabox.com/s/1h2Zln-GK_E8VjnsywB4P0A', '');
INSERT INTO `movie_links` VALUES (100, 128, 'https://terabox.com/s/1qfp6S_YBl1RGS7KZE4xOng', '');
INSERT INTO `movie_links` VALUES (101, 129, 'https://vip.opstream14.com/20220624/15423_ae4f7fcd/index.m3u8', '');
INSERT INTO `movie_links` VALUES (103, 107, 'https://terabox.com/s/1MWxPrHo82VbRHxaI1FMgjA', '');
INSERT INTO `movie_links` VALUES (104, 127, 'https://terabox.com/s/1tTHXgPv3sF8A_ZxQZc95wg', '');
INSERT INTO `movie_links` VALUES (105, 130, 'https://terabox.com/s/1p12DeUUMBH6HsYx0MRKJTg', '');
INSERT INTO `movie_links` VALUES (106, 131, 'https://terabox.com/s/17e-0ELztbsThcMZfKh_EEw', '');
INSERT INTO `movie_links` VALUES (107, 132, 'https://vip.opstream14.com/20220804/19469_c0ec4a7b/1000k/hls/mixed.m3u8', '');
INSERT INTO `movie_links` VALUES (108, 133, 'https://vip.opstream15.com/20230406/37450_4028f901/3000k/hls/mixed.m3u8', '');
INSERT INTO `movie_links` VALUES (109, 134, 'https://terabox.com/s/1NsZXKKtUrGs54hTKMJjgCA', '');
INSERT INTO `movie_links` VALUES (110, 135, 'https://terabox.com/s/1ZrtuAwI88mCHwKUNWcuKkg', '');
INSERT INTO `movie_links` VALUES (111, 136, 'https://terabox.com/s/1gmDj_0J47bTcMGXZhPc6hg', '');
INSERT INTO `movie_links` VALUES (112, 137, 'https://terabox.com/s/1F_PwcUXjrCpJC4-5v6XzLg', '');
INSERT INTO `movie_links` VALUES (113, 138, 'https://embed.streamc.xyz/embed.php?hash=658f1c20026e4bee3a2e7146f37844cb', '');
INSERT INTO `movie_links` VALUES (114, 139, 'https://helvid.net/play/index/9c059828a39b', '');
INSERT INTO `movie_links` VALUES (115, 140, 'https://vip.opstream17.com/20240320/2906_322ec0b3/3000k/hls/mixed.m3u8', '');
INSERT INTO `movie_links` VALUES (116, 141, 'https://terabox.com/s/1XduTThq3gXpkLYXynEkcRg', '');
INSERT INTO `movie_links` VALUES (117, 142, 'https://terabox.com/s/1JbU1B7JnJub-PhsbGBXeXQ', '');
INSERT INTO `movie_links` VALUES (118, 143, 'https://vip.opstream13.com/share/7d2a383e54274888b4b73b97e1aaa491', '');
INSERT INTO `movie_links` VALUES (119, 144, 'https://vip.opstream17.com/share/e3b6fb0fd4df098162eede3313c54a8d', '');
INSERT INTO `movie_links` VALUES (120, 145, 'https://vip.opstream17.com/share/0a4bbceda17a6253386bc9eb45240e25', '');
INSERT INTO `movie_links` VALUES (121, 146, 'https://terabox.com/s/1WOdiq9GpywQ7VYkh6EfoiQ', '');
INSERT INTO `movie_links` VALUES (122, 147, 'https://terabox.com/s/17ja6ejEOFTeHI3deFKDruQ', '');
INSERT INTO `movie_links` VALUES (123, 148, 'https://terabox.com/s/1E2pjYzE8DyJFtvGjRXojaQ', '');
INSERT INTO `movie_links` VALUES (124, 149, 'https://terabox.com/s/1H3wvlJ_5swNirq4DDGr6bg', '');
INSERT INTO `movie_links` VALUES (125, 150, 'https://s1.phim1280.tv/20231212/fojeQHLC/3000kb/hls/index.m3u8', '');
INSERT INTO `movie_links` VALUES (127, 152, 'https://ok.ru/videoembed/7031066593897', '');
INSERT INTO `movie_links` VALUES (128, 153, 'https://terabox.com/s/1PHqm-be6z1pxPvHI6wqQQg', '');
INSERT INTO `movie_links` VALUES (129, 154, 'https://terabox.com/s/1N1BPXsJvKka_RrBke15qwQ', '');
INSERT INTO `movie_links` VALUES (130, 155, 'https://terabox.com/s/1v2hMMkwg5WEgDsrHGExjyA', '');
INSERT INTO `movie_links` VALUES (131, 156, 'https://vip.opstream16.com/share/6ecbdd6ec859d284dc13885a37ce8d81', '');
INSERT INTO `movie_links` VALUES (132, 157, 'https://vip.opstream15.com/share/218a0aefd1d1a4be65601cc6ddc1520e', '');
INSERT INTO `movie_links` VALUES (134, 159, 'https://terabox.com/s/1Zq5QBYtS9fJI--RCLqGkNQ', '');
INSERT INTO `movie_links` VALUES (135, 160, 'https://terabox.com/s/1nXmqzlbRbbZ3Mj-ZAOLMyg', '');
INSERT INTO `movie_links` VALUES (136, 161, 'https://terabox.com/s/1TrLY0TR210WqCz65zJKXUg', '');
INSERT INTO `movie_links` VALUES (137, 162, 'https://terabox.com/s/12G87VRbj5T1ndzgl-JizAQ', '');
INSERT INTO `movie_links` VALUES (138, 163, 'https://terabox.com/s/1tZm9hPV6285urVPegixIgQ', '');
INSERT INTO `movie_links` VALUES (139, 164, 'https://terabox.com/s/1sYlNN5MV1kN-LeDpAQduMQ', '');
INSERT INTO `movie_links` VALUES (140, 165, 'https://vip.opstream15.com/share/ad10bfd27bfb2f0d81310a8a732e7bb6', '');
INSERT INTO `movie_links` VALUES (141, 166, 'https://ok.ru/videoembed/6905143691881?autoplay=1', '');
INSERT INTO `movie_links` VALUES (142, 167, 'https://vip.opstream13.com/20240308/3158_bcc3c1ce/3000k/hls/mixed.m3u8', '');
INSERT INTO `movie_links` VALUES (143, 168, 'https://embed2.streamc.xyz/embed.php?hash=b2942d15594131d098e794a6113d5fda', '');
INSERT INTO `movie_links` VALUES (144, 169, 'https://vip.opstream16.com/20221116/26044_d0702a4e/1941186/hls/mixed.m3u8', '');
INSERT INTO `movie_links` VALUES (145, 170, 'https://ok.ru/videoembed/895200201382', '');
INSERT INTO `movie_links` VALUES (146, 171, 'https://s3.phim1280.tv/20240524/jroqOltz/index.m3u8', '');
INSERT INTO `movie_links` VALUES (147, 172, 'https://ok.ru/videoembed/7121823926889?autoplay=1', '');
INSERT INTO `movie_links` VALUES (148, 173, 'https://ok.ru/videoembed/7115815914089?autoplay=1', '');
INSERT INTO `movie_links` VALUES (150, 175, 'https://ok.ru/videoembed/1261948373670?autoplay=1', '');
INSERT INTO `movie_links` VALUES (151, 176, 'https://ok.ru/videoembed/3578829474475?autoplay=1', '');
INSERT INTO `movie_links` VALUES (152, 158, 'https://ok.ru/videoembed/7072398314089?autoplay=1', '');
INSERT INTO `movie_links` VALUES (153, 177, 'https://ok.ru/videoembed/6916936239721?autoplay=1', '');
INSERT INTO `movie_links` VALUES (154, 178, 'https://terabox.com/s/1I0B7stX9m4TCOCgwBanldw', '');
INSERT INTO `movie_links` VALUES (155, 179, 'https://terabox.com/s/1L1a983pzuY9qgszWdnN57g', '');
INSERT INTO `movie_links` VALUES (156, 180, 'https://terabox.com/s/1uaUtkSin7XscKIx_wfdh3g', '');
INSERT INTO `movie_links` VALUES (160, 184, '321', '132');
INSERT INTO `movie_links` VALUES (164, 185, '42', '12');
INSERT INTO `movie_links` VALUES (165, 185, '62', '22');
INSERT INTO `movie_links` VALUES (166, 186, '23.com', 'Link vietsub');
INSERT INTO `movie_links` VALUES (168, 151, 'https://vip.opstream14.com/20220306/842_c29f1ec7/index.m3u8', 'Link vietsub');
INSERT INTO `movie_links` VALUES (169, 174, 'https://vip.opstream13.com/share/6195f47dcff14b8f242aa333cdb2703e', 'Link vietsub');

-- ----------------------------
-- Table structure for movies
-- ----------------------------
DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies`  (
  `id` int NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `embedded` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_vietsub` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `release_date` int NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  `view` int NULL DEFAULT NULL,
  `trailer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of movies
-- ----------------------------
INSERT INTO `movies` VALUES (107, 'Quỷ Cẩu', 'quy-cau', 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/1800x/71252117777b696995f01934522c402d/1/0/1080x1350-quy-cau.jpg', '<p>e wer ewrwe rwe 234234 234<span style=\"color: rgb(255, 0, 0)\"> 23</span></p>', NULL, 'Việt', 2024, '2024-05-10 03:57:34', '2024-05-26 15:02:26', 34, 'cYCOcxWgPVU', NULL);
INSERT INTO `movies` VALUES (108, 'Người Vợ Cuối Cùng', 'nguoi-vo-cuoi-cung', 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/7/0/700x1000_13_1_.jpg', 'asdasdas á dá dá 3e2321321 êfwe', NULL, 'Việt', 2023, '2024-05-10 03:58:50', '2024-05-26 14:40:05', 9, 'ygvNCEbMusE', NULL);
INSERT INTO `movies` VALUES (110, 'Livestream', 'livestream', 'https://image.phunuonline.com.vn/fckeditor/upload/2023/20230723/images/chuyen-tu-the-gioi-ao-_981690118339.jpg', 'Bodkin\r\nBodkin - Một nhóm tác giả podcast đủ thành phần bắt đầu điều tra những vụ mất tích bí ẩn từ nhiều thập kỷ trước tại một thị trấn mê hoặc ở Ireland, nơi có những bí mật đen tối khủng khiếp.', NULL, 'Việt', 2023, '2024-05-11 14:20:08', '2024-05-29 13:32:12', 12, 'xZlQu4QP2FM', NULL);
INSERT INTO `movies` VALUES (111, 'Nhà Không Bán', 'nha-khong-ban', 'https://m.media-amazon.com/images/M/MV5BYjIzZTBkMzMtMzE2ZC00NjYwLWIwNGItMzE1Zjg0Y2FkZGQ3XkEyXkFqcGdeQXVyNDc0Njc1NTY@._V1_.jpg', 'Maxton Hall - Die Welt Zwischen Uns - When Ruby unwittingly witnesses an explosive secret at Maxton Hall private school, the arrogant millionaire heir James Beaufort has to deal with the quick-witted scholarship student for better or worse: He is determined to silence Ruby. Their passionate exchange of words unexpectedly ignites a spark...', NULL, 'Việt', 2022, '2024-05-11 14:21:41', '2024-05-29 13:32:31', 4, 'uAt37KNG8oM', NULL);
INSERT INTO `movies` VALUES (112, 'Mất tích đêm 30', 'mat-tich-dem-30', 'https://s129135.cdn.mytvnet.vn/vimages/242x364/73/38/88/87/7c/ca/73887-pmattichdem301-movies-mytv.jpg', 'Em Là Ánh Sáng Của Anh - Cố Lâm Tinh, đại thiếu gia nhà họ Cố trước giờ ngang ngược, kiêu căng vô tình gặp gỡ Trần Tư Nam, một trợ giảng đại học kiên cường, lương thiện. Cố Lâm Tinh lâm vào hoàn cảnh sa sút, buộc phải ký thỏa thuận thuê chung nhà, hai người từ đó bắt đầu cuộc sống chung ngọt ngào. Tuy nhiên mâu thuẫn gia đình đã nảy sinh. Trước những tin đồn bịa đặt và cám dỗ của đồng tiền, Cố Lâm Tinh và Trần Tư Nam sẽ lựa chọn như thế nào?', NULL, 'Việt', 2024, '2024-05-11 14:22:41', '2024-05-25 17:09:38', 6, '-H6wmo8WGlI', NULL);
INSERT INTO `movies` VALUES (113, 'Siêu Lừa Gặp Siêu Lầy', 'sieu-lua-gap-sieu-lay', 'https://upload.wikimedia.org/wikipedia/vi/b/b1/%C3%81p_ph%C3%ADch_Si%C3%AAu_l%E1%BB%ABa_g%E1%BA%B7p_si%C3%AAu_l%E1%BA%A7y.jpg', 'Chủ Tịch Lớp 9 - Một truyện tranh về đời sống học đường trong đó một học sinh phạm pháp tên Na I-soo trở thành hiệu trưởng của một ngôi trường ưu tú bị cha cậu để lại. Nó mô tả quá trình năng động của Na I-soo, người đã sống một cuộc đời khó khăn và là những học sinh ưu tú nhất của trường, tìm hiểu nhau và thay đổi.', NULL, 'Việt', 2023, '2024-05-11 14:23:26', '2024-05-25 17:10:04', 10, 'ecNMIlP7wIs', NULL);
INSERT INTO `movies` VALUES (114, 'Hạnh Phúc Máu', 'hanh-phuc-mau', 'https://cdn.galaxycine.vn/media/2022/10/12/hpm_1665546188603.jpg', 'Chân Thành Với Tình Yêu - Yeon Bo-Ra ( Yoo In-Na ) là một nhà văn và cô làm việc dưới bút danh Deborah. Cô là tác giả của cuốn sách bán chạy nhất về tình yêu và cô cũng nổi tiếng với vai trò là huấn luyện viên hẹn hò. Cô đã có nhiều câu nói nổi tiếng với tư cách là huấn luyện viên hẹn hò và nhận được thiện cảm từ công chúng. Trong vai Deborah, Yeon Bo-Ra là người trung thực, hóm hỉnh và được phụ nữ yêu thích. Với vai Yeon Bo-Ra, mọi chuyện với cô ấy lại khác. Cô có quan hệ với Lee Soo-Hyeok ( Yoon Hyun-Min ).', NULL, 'Việt', 2023, '2024-05-11 14:24:39', '2024-05-26 15:21:32', 7, '_VQqMUKMBKQ', NULL);
INSERT INTO `movies` VALUES (115, 'Con nhót mót chồng', 'con-nhot-mot-chong', 'https://cinema.momocdn.net/img/6002971679248154-MAIN--CUASO-GUI_SIZESOCIAL.jpg', 'Một Màu Xanh Khác \r\n- Câu chuyện về Chen Xiao-man, một công nhân di cư ở Bắc Kinh, quay về quê hương Jingdezhen và gặp gỡ Ke Yan. Họ cùng nhau làm việc để khởi nghiệp và truyền đạt di sản văn hóa phi vật thể.', NULL, 'Việt', 2023, '2024-05-11 14:29:37', '2024-05-25 17:23:13', 6, 'e7KHOQ-alqY', NULL);
INSERT INTO `movies` VALUES (116, 'Đêm tối rực rỡ', 'dem-toi-ruc-ro', 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/r/s/rsz_dtrr_-_tro_lai_rap-min.jpg', 'Xin Hãy Yêu Anh Như Vậy - Xin hãy yêu anh như vậy\" là một bộ phim truyền hình tình cảm đô thị do đạo diễn Trương Bác Dục (đạo diễn của \"Khúc biến tấu ánh trăng\") chỉ đạo, có sự tham gia của Hồ Nhất Thiên (diễn viên chính trong \"Gửi thời thanh xuân ngây thơ tươi đẹp\"), Lương Khiết (người đóng chính trong \"Một ngày biến thành em\") đóng vai chính. Câu chuyện xoay quanh Diệp Hàm (do Hồ Nhất Thiên đóng), một biên tập viên chính trị có tính kỷ luật, chăm chỉ, tình cờ giúp đỡ Lý Tiêu Tiêu (do Lương Khiết đóng), một giáo viên thể dục vụng về, đáng yêu hết lần này đến lần khác. Tuy nhiên, vì những trải nghiệm trong quá khứ, Diệp Hàm khó lòng mở cửa trái tim một lần nữa. Từ Giai Thành (Đại Húc đóng) một nhà xuất bản nhiệt huyết và thẳng thắn , tình cờ gặp lại Đồng Y Văn (Tôn Gia Linh đóng), người mẫu nổi tiếng ngày xưa. Họ cố gắng cân bằng giữa tình yêu và sự nghiệp. Mối quan hệ giữa bốn người trở nên phức tạp và thách thức do Tiêu Tiêu thầm yêu Giai Thành. Trong những thăng trầm và khó khăn, Diệp Hàm bảo vệ tình cảm thầm kín và sự yếu đuối của Tiêu Tiêu', NULL, 'Việt', 2023, '2024-05-11 14:30:14', '2024-05-25 16:25:39', 3, '_50ay0lxkM0', NULL);
INSERT INTO `movies` VALUES (117, 'Tro Tàn Rực Rỡ', 'tro-tan-ruc-ro', 'https://upload.wikimedia.org/wikipedia/vi/2/20/Tro_t%C3%A0n_r%E1%BB%B1c_r%E1%BB%A1.jpeg', 'Xin Hãy Yêu Anh Như Vậy - Xin hãy yêu anh như vậy\" là một bộ phim truyền hình tình cảm đô thị do đạo diễn Trương Bác Dục (đạo diễn của \"Khúc biến tấu ánh trăng\") chỉ đạo, có sự tham gia của Hồ Nhất Thiên (diễn viên chính trong \"Gửi thời thanh xuân ngây thơ tươi đẹp\"), Lương Khiết (người đóng chính trong \"Một ngày biến thành em\") đóng vai chính. Câu chuyện xoay quanh Diệp Hàm (do Hồ Nhất Thiên đóng), một biên tập viên chính trị có tính kỷ luật, chăm chỉ, tình cờ giúp đỡ Lý Tiêu Tiêu (do Lương Khiết đóng), một giáo viên thể dục vụng về, đáng yêu hết lần này đến lần khác. Tuy nhiên, vì những trải nghiệm trong quá khứ, Diệp Hàm khó lòng mở cửa trái tim một lần nữa. Từ Giai Thành (Đại Húc đóng) một nhà xuất bản nhiệt huyết và thẳng thắn , tình cờ gặp lại Đồng Y Văn (Tôn Gia Linh đóng), người mẫu nổi tiếng ngày xưa. Họ cố gắng cân bằng giữa tình yêu và sự nghiệp. Mối quan hệ giữa bốn người trở nên phức tạp và thách thức do Tiêu Tiêu thầm yêu Giai Thành. Trong những thăng trầm và khó khăn, Diệp Hàm bảo vệ tình cảm thầm kín và sự yếu đuối của Tiêu Tiêu', NULL, 'Việt', 2022, '2024-05-11 14:30:14', '2024-05-25 15:27:05', 1, 'Sx0gdaeeGi4', NULL);
INSERT INTO `movies` VALUES (118, 'Em và Trịnh', 'em-va-trinh', 'https://upload.wikimedia.org/wikipedia/vi/b/b3/Poster_gioi_thieu_phim_Em_va_Trinh.jpg', 'Xin Hãy Yêu Anh Như Vậy - Xin hãy yêu anh như vậy\" là một bộ phim truyền hình tình cảm đô thị do đạo diễn Trương Bác Dục (đạo diễn của \"Khúc biến tấu ánh trăng\") chỉ đạo, có sự tham gia của Hồ Nhất Thiên (diễn viên chính trong \"Gửi thời thanh xuân ngây thơ tươi đẹp\"), Lương Khiết (người đóng chính trong \"Một ngày biến thành em\") đóng vai chính. Câu chuyện xoay quanh Diệp Hàm (do Hồ Nhất Thiên đóng), một biên tập viên chính trị có tính kỷ luật, chăm chỉ, tình cờ giúp đỡ Lý Tiêu Tiêu (do Lương Khiết đóng), một giáo viên thể dục vụng về, đáng yêu hết lần này đến lần khác. Tuy nhiên, vì những trải nghiệm trong quá khứ, Diệp Hàm khó lòng mở cửa trái tim một lần nữa. Từ Giai Thành (Đại Húc đóng) một nhà xuất bản nhiệt huyết và thẳng thắn , tình cờ gặp lại Đồng Y Văn (Tôn Gia Linh đóng), người mẫu nổi tiếng ngày xưa. Họ cố gắng cân bằng giữa tình yêu và sự nghiệp. Mối quan hệ giữa bốn người trở nên phức tạp và thách thức do Tiêu Tiêu thầm yêu Giai Thành. Trong những thăng trầm và khó khăn, Diệp Hàm bảo vệ tình cảm thầm kín và sự yếu đuối của Tiêu Tiêu', NULL, 'Việt', 2023, '2024-05-11 14:30:14', '2024-05-26 13:54:37', 2, 'EOOIa7RFRpk', NULL);
INSERT INTO `movies` VALUES (119, 'Trên Bàn Nhậu Dưới Bàn Mưu', 'tren-ban-nhau-duoi-ban-muu', 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/4/7/470wx700h_4_.jpg', NULL, NULL, 'Việt', 2022, '2024-05-25 15:34:49', '2024-05-25 17:02:16', 2, 'rZYVIK0R6sg', NULL);
INSERT INTO `movies` VALUES (120, 'Chiếm Đoạt', 'chiem-doat', 'https://images2.thanhnien.vn/528068263637045248/2023/10/26/39553704710160244516275787957946211629240442n-1698322914767764078755.jpg', NULL, NULL, 'Việt', 2023, '2024-05-25 15:36:46', '2024-05-29 15:26:32', 4, '7fxTYETyjDw', NULL);
INSERT INTO `movies` VALUES (121, 'Thiên Thần Hộ Mệnh', 'thien-than-ho-menh', 'https://upload.wikimedia.org/wikipedia/vi/f/f3/Thi%C3%AAn_th%E1%BA%A7n_h%E1%BB%99_m%E1%BB%87nh.jpg', NULL, NULL, 'Việt', 2021, '2024-05-25 15:39:17', '2024-05-25 15:39:17', 0, 'FzoWWAJeFgM', NULL);
INSERT INTO `movies` VALUES (122, 'Biệt Đội Rất Ổn', 'biet-doi-rat-on', 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/b/d/bdro_main-poster_1_.jpg', NULL, NULL, 'Việt', 2023, '2024-05-25 15:40:47', '2024-05-26 15:38:11', 4, 'XHvNz4g88pE', NULL);
INSERT INTO `movies` VALUES (123, 'Truy Sát', 'truy-sat', 'https://photo.znews.vn/w660/Uploaded/xbhunku/2016_04_21/TruySat_MainPoster.jpg', NULL, NULL, 'Việt', 2016, '2024-05-25 15:44:58', '2024-05-25 15:44:58', 0, 'baDiTmgAlss', NULL);
INSERT INTO `movies` VALUES (124, 'Trạng Quỳnh', 'trang-quynh', 'https://static.vieon.vn/vieplay-image/poster_v4/2021/02/02/8vojcowt_660x946-trangquynh.jpg', NULL, NULL, 'Việt', 2019, '2024-05-25 15:47:58', '2024-05-27 07:03:05', 1, 'ikXMNocYUeY', NULL);
INSERT INTO `movies` VALUES (125, 'Trạng Tí Phiêu Lưu Ký', 'trang-ti-phieu-luu-ky', 'https://upload.wikimedia.org/wikipedia/vi/c/cc/Tr%E1%BA%A1ng_T%C3%AD_2020.jpg', NULL, NULL, 'Việt', 2021, '2024-05-25 15:51:33', '2024-05-25 15:51:33', 0, 'qnDLYACgd38', NULL);
INSERT INTO `movies` VALUES (126, 'Bẫy Ngọt Ngào', 'bay-ngot-ngao', 'https://vcdn1-giaitri.vnecdn.net/2022/03/22/bay-nnn-2-jpeg-4122-1644492964-6309-1647916490.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=Lp8lzbs-AA4Z2u27aBIIjA', NULL, NULL, 'Việt', 2022, '2024-05-25 15:55:33', '2024-05-25 15:55:33', 0, 'reyG2qWzG-M', NULL);
INSERT INTO `movies` VALUES (127, 'Godzilla x Kong: Đế Chế Mới', 'godzilla-x-kong-de-che-moi-', 'https://cdn.galaxycine.vn/media/2024/4/1/god-x-kong-500_1711942287737.jpg', NULL, NULL, 'Thuyết Minh', 2024, '2024-05-25 17:06:34', '2024-05-30 01:55:38', 49, 'qqrpMRDuPfc', 'Mỹ');
INSERT INTO `movies` VALUES (128, 'Thất Sơn Tâm Linh', 'that-son-tam-linh', 'https://upload.wikimedia.org/wikipedia/vi/c/c4/Thatsontamlinhphim.jpg', NULL, NULL, 'Việt', 2019, '2024-05-26 13:57:11', '2024-05-26 14:48:14', 0, 'GlrCgPsO-sI', 'Việt Nam');
INSERT INTO `movies` VALUES (129, 'Tiệc Trăng Máu', 'tiec-trang-mau', 'https://upload.wikimedia.org/wikipedia/vi/c/cc/Tiec_trang_mau_poster.jpg', NULL, NULL, 'Việt', 2020, '2024-05-26 14:25:44', '2024-05-26 14:50:31', 0, 'nh0BklwPN9Q', 'Việt Nam');
INSERT INTO `movies` VALUES (130, 'Kung Fu Panda 4', 'kung-fu-panda-4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDWsg7Sz4s_AECXwls9qNTW5wQRHfn09L9gp-tDNV8nQ&s', NULL, NULL, 'Lồng Tiếng', 2024, '2024-05-26 14:31:51', '2024-05-29 13:49:59', 8, '_inKs4eeHiI', 'Mỹ');
INSERT INTO `movies` VALUES (131, 'Quỷ Ăn Tạng', 'quy-an-tang', 'https://bloganchoi.com/wp-content/uploads/2024/01/review-phim-kinh-di-tee-yod-quy-an-tang-3-696x1031.jpg', NULL, NULL, 'VietSub', 2023, '2024-05-26 14:45:05', '2024-05-27 07:03:36', 5, '9jyPXIf4wVk', 'Thái Lan');
INSERT INTO `movies` VALUES (132, 'Hậu Duệ - Tình Ngời Duyên Ma', 'hau-due---tinh-ngoi-duyen-ma', 'https://cdn.galaxycine.vn/media/2022/5/12/300_1652340849814.jpg', NULL, NULL, 'Vietsub', 2022, '2024-05-26 14:59:21', '2024-05-26 15:51:33', 3, 'Yx6h_rgZrY8', 'Thái Lan');
INSERT INTO `movies` VALUES (133, 'Mười: Lời Nguyền Trở Lại', 'muoi-loi-nguyen-tro-lai', 'https://upload.wikimedia.org/wikipedia/vi/a/a6/Poster_phim_Muoi_loi_nguyen_tro_lai_2022.jpg', NULL, NULL, 'Việt', 2022, '2024-05-26 15:56:01', '2024-05-26 15:56:01', 0, 'FQhA7--t2XE', 'Việt');
INSERT INTO `movies` VALUES (134, 'Hương Vị Của Đồng Tiền', 'huong-vi-cua-dong-tien', 'https://kenh14cdn.com/ccccccccccccg1jbkOfv1Ncccccccc/Image/2012/05/3rdWeek/120517cineTTOM27_06081.jpg', NULL, NULL, 'Vietsub', 2012, '2024-05-26 15:59:22', '2024-05-27 11:00:24', 3, 'GdWNcdm0u9w', 'Hàn Quốc');
INSERT INTO `movies` VALUES (135, 'Biệt Đội Đánh Thuê 4', '-biet-doi-danh-thue-4-', 'https://upload.wikimedia.org/wikipedia/vi/thumb/2/2e/BI%E1%BB%86T_%C4%90%E1%BB%98I_%C4%90%C3%81NH_THU%C3%8A_4_Poster.jpg/220px-BI%E1%BB%86T_%C4%90%E1%BB%98I_%C4%90%C3%81NH_THU%C3%8A_4_Poster.jpg', NULL, NULL, 'Thuyết Minh', 2023, '2024-05-26 16:03:44', '2024-05-26 16:03:44', 0, 'TsoMyppHSjM', 'Mỹ');
INSERT INTO `movies` VALUES (136, 'Quá Nhanh Quá Nguy Hiểm 10', 'qua-nhanh-qua-nguy-hiem-10-', 'https://cinema.momocdn.net/img/81f4daaf-77a6-4ad0-a0df-6c25b0f876a1-32329716854355802.jpg', NULL, NULL, 'Thuyết Minh', 2023, '2024-05-26 16:06:54', '2024-05-27 03:12:02', 1, 'JSE9vhCuxs8', 'Mỹ');
INSERT INTO `movies` VALUES (137, 'Dune Hành Tinh Cát', '-dune-hanh-tinh-cat', 'https://upload.wikimedia.org/wikipedia/vi/e/e9/Dune_H%C3%A0nh_tinh_c%C3%A1t_poster.jpg', NULL, NULL, 'Thuyết Minh', 2024, '2024-05-26 16:11:50', '2024-05-26 16:11:50', 0, '0ZqTYVYcx4k', 'Mỹ');
INSERT INTO `movies` VALUES (138, 'Trạm Tàu Ma', 'tram-tau-ma', 'https://cdn.galaxycine.vn/media/2023/4/14/300x450_1681459257447.jpg', NULL, NULL, 'Thuyết Minh', 2023, '2024-05-26 16:22:23', '2024-05-26 16:22:23', 0, 'JZKNMSJ3edQ', 'Hàn Quốc');
INSERT INTO `movies` VALUES (139, 'Cô Gái Đến Từ Quá Khứ', 'co-gai-den-tu-qua-khu', 'https://upload.wikimedia.org/wikipedia/vi/thumb/8/84/%C3%81p_ph%C3%ADch_phim_C%C3%B4_g%C3%A1i_t%E1%BB%AB_qu%C3%A1_kh%E1%BB%A9.jpg/220px-%C3%81p_ph%C3%ADch_phim_C%C3%B4_g%C3%A1i_t%E1%BB%AB_qu%C3%A1_kh%E1%BB%A9.jpg', NULL, NULL, 'Việt', 2022, '2024-05-26 16:35:36', '2024-05-26 16:35:36', 0, 'WsBV9s1SqpM', 'Việt');
INSERT INTO `movies` VALUES (140, 'Bà Thím Báo Thù', 'ba-thim-bao-thu', 'https://image.tmdb.org/t/p/w600_and_h900_bestv2/rSDoRSxxnFB5pQxlDta0HRcXfHp.jpg', NULL, NULL, 'Vietsub', 2024, '2024-05-26 16:54:06', '2024-05-27 12:17:57', 2, 'SJgPu1wgaSk', 'Hàn Quốc');
INSERT INTO `movies` VALUES (141, 'Bắt Kim Thang', 'bat-kim-thang-', 'https://thanhnien.mediacdn.vn/Uploaded/caotung/2019_10_29/6588048428252001708278775122808983739957248n-1-15623988668721752875141_HAIS.jpg?width=500', NULL, NULL, 'Việt', 2019, '2024-05-27 08:06:20', '2024-05-27 08:06:20', 0, 'mNLu1cQwZcE', 'Việt');
INSERT INTO `movies` VALUES (142, 'Mai', 'mai', 'https://photo2.tinhte.vn/data/attachment-files/2024/05/8339100_n764Alj5Uf1uMtnEpN3OkVyLob5.jpg', NULL, NULL, 'Việt', 2024, '2024-05-27 08:09:37', '2024-05-27 08:09:37', 0, 'EX6clvId19s', 'Việt');
INSERT INTO `movies` VALUES (143, 'Quật Mộ Trùng Ma', 'quat-mo-trung-ma', 'https://daknong.1cdn.vn/2024/02/29/exhuma-quat-mo-trung-ma-exhuma-2024-poster(1).jpg', NULL, NULL, 'Vietsub', 2024, '2024-05-27 08:14:06', '2024-05-27 08:14:06', 0, '7LH-TIcPqks', 'Hàn Quốc');
INSERT INTO `movies` VALUES (144, 'Biệt Đội Săn Ma: Kỷ Nguyên Băng Giá', 'biet-doi-san-ma-ky-nguyen-bang-gia-', 'https://gcs.tripi.vn/public-tripi/tripi-feed/img/476103dci/anh-mo-ta.png', NULL, NULL, 'Vietsub', 2024, '2024-05-27 08:20:57', '2024-05-27 08:20:57', 0, '2IZxmLHYEhI', 'Mỹ');
INSERT INTO `movies` VALUES (145, 'Gangnam Thất Thủ', 'gangnam-that-thu', 'https://2.bp.blogspot.com/-pj5EfgT6chA/Zg5hUMlBUPI/AAAAAAAGB7U/GuEvKv7BtssmTlohdtKPeGtCEXKP2udnQCNcBGAsYHQ/s0/unnamed.png', NULL, NULL, 'Vietsub', 2023, '2024-05-27 08:23:01', '2024-05-27 08:23:01', 0, 'zjrC1NK5Le4', 'Hàn Quốc');
INSERT INTO `movies` VALUES (146, 'Rebel Moon Phần 2: Kẻ Khắc Vết Sẹo', 'rebel-moon-phan-2-ke-khac-vet-seo', 'https://i.mpcdn.top/c/0NK6DXg/rebel-moon-phan-2-ke-khac-vet-seo.jpg?', NULL, NULL, 'Lồng Tiếng', 2024, '2024-05-27 08:26:14', '2024-05-27 08:26:14', 0, 'LHBE5xZHUHY', 'Mỹ');
INSERT INTO `movies` VALUES (147, 'Vợ Ba', 'vo-ba', 'https://upload.wikimedia.org/wikipedia/vi/6/6a/The_Third_Wife_poster.jpg', NULL, NULL, 'Việt', 2019, '2024-05-27 08:28:22', '2024-05-27 08:28:22', 0, 'e3Gr7r7yWU8', 'Việt');
INSERT INTO `movies` VALUES (148, 'Tru Tiên', 'tru-tien-', 'https://static.vieon.vn/vieplay-image/poster_v4/2021/02/05/vkwut23d_660x946-trutien.jpg', NULL, NULL, 'Thuyết Minh', 2019, '2024-05-27 08:31:49', '2024-05-27 08:31:49', 0, 'jCT9rLCndrM', 'Trung Quốc');
INSERT INTO `movies` VALUES (149, 'Võ Sinh Đại Chiến', 'vo-sinh-dai-chien', 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/r/s/rsz_vsdc_mainposter.jpg', NULL, NULL, 'Việt', 2021, '2024-05-27 08:33:44', '2024-05-27 13:59:14', 1, 'mrNqbx4vUvA', 'Việt');
INSERT INTO `movies` VALUES (150, '1990', '1990', 'https://cdn.galaxycine.vn/media/2022/1/21/300wx450h_1642749307890.jpg', NULL, NULL, 'Việt', 2021, '2024-05-27 08:35:32', '2024-05-27 13:45:31', 1, 't_cnepmzoUI', 'Việt');
INSERT INTO `movies` VALUES (151, 'Dora Thành Phố Mất Tích', 'dora-thanh-pho-mat-tich', 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/d/o/doraexpl_intl_payoff_2.jpg', NULL, NULL, 'Vietsub', 2019, '2024-05-27 08:37:32', '2024-05-30 14:43:59', 6, 'oh1rev27uvE', 'Mỹ');
INSERT INTO `movies` VALUES (152, 'Tu Viện Máu', 'tu-vien-mau', 'https://boxofficevietnam.com/wp-content/uploads/2024/04/65fe7284ac510041015982.jpg', NULL, NULL, 'Thuyết Minh', 2024, '2024-05-27 08:40:16', '2024-05-27 08:40:16', 0, 'ewxS9Z-XXYo', 'Mỹ');
INSERT INTO `movies` VALUES (153, 'Nhà Nghỉ Melati', 'nha-nghi-melati', 'https://motchill.mx/storage/images/nha-nghi-melati-nha-nghi-melati-dgxAwIOrKzBp78Dc0vq67rLN8Ik.jpg', NULL, NULL, 'Vietsub', 2023, '2024-05-27 08:42:36', '2024-05-27 08:42:36', 0, 'CG3xfZd1kmc', 'Thái Lan');
INSERT INTO `movies` VALUES (154, 'Bóng Ma Khách Sạn', 'bong-ma-khach-san', 'https://m.media-amazon.com/images/M/MV5BYTZmZWViMzEtYjJhYy00YjI3LTgxZGYtY2M5MWNhZjQ5NDc0XkEyXkFqcGdeQXVyNTg2MDI2Njc@._V1_QL75_UY281_CR18,0,190,281_.jpg', NULL, NULL, 'Vietsub', 2023, '2024-05-27 08:47:31', '2024-05-27 08:47:31', 0, 'e6YHQHfMYAA', 'Thái Lan');
INSERT INTO `movies` VALUES (155, 'Tân Nương Giấy', 'tan-nuong-giay', 'https://pic2.iqiyipic.com/image/20231211/a9/ca/v_174553549_m_601_vi_260_360.jpg', NULL, NULL, 'Thuyết Minh', 2023, '2024-05-27 08:52:25', '2024-05-27 08:52:25', 0, 'opaHZNNXe1w', 'Trung Quốc');
INSERT INTO `movies` VALUES (156, 'Mắt Biết', 'mat-biet', 'https://upload.wikimedia.org/wikipedia/vi/4/42/%C3%81p_ph%C3%ADch_phim_M%E1%BA%AFt_bi%E1%BA%BFc.jpg', NULL, NULL, 'Việt', 2019, '2024-05-27 08:54:47', '2024-05-27 08:54:47', 0, 'ITlQ0oU7tDA', 'Việt Nam');
INSERT INTO `movies` VALUES (157, 'Em Là Bà Nội Của Anh', 'em-la-ba-noi-cua-anh', 'https://upload.wikimedia.org/wikipedia/vi/7/72/Poster-ELBNCA.jpg', NULL, NULL, 'Việt', 2015, '2024-05-27 08:57:58', '2024-05-27 08:57:58', 0, 'jvB0ZrAqzkc', 'Việt Nam');
INSERT INTO `movies` VALUES (158, 'Quái Vật Godzilla', 'quai-vat-godzilla', 'https://lh6.googleusercontent.com/proxy/ZLVUtafTCcEhyYMaXBk1IaVxFLkiBSw-LVoE4xy2sIb5Ci-jOr9HDN4Zxpo6-PqrX9748dWigoKoutL1XP5-T3lKdfJDvBRXuAUK92Y', NULL, NULL, 'Thuyết Minh', 2023, '2024-05-27 09:02:36', '2024-05-30 02:05:50', 4, 'VvSrHIX5a-0', 'Nhật Bản');
INSERT INTO `movies` VALUES (159, 'Nhà Vịt Di Cư', 'nha-vit-di-cu', 'https://upload.wikimedia.org/wikipedia/vi/6/69/NH%C3%80_V%E1%BB%8AT_DI_C%C6%AF_-_VIETNAM_POSTER.jpg', NULL, NULL, 'Thuyết Minh', 2023, '2024-05-27 09:04:54', '2024-05-27 09:04:54', 0, 'B4SgxY6SoZ4', 'Mỹ');
INSERT INTO `movies` VALUES (160, 'Ma Lai Đòi Xác', 'ma-lai-doi-xac-', 'https://i.mpcdn.top/c/X6Nm6Lx/tra-xac-cho-ta.jpg?1716459603', NULL, NULL, 'Vietsub', 2024, '2024-05-27 09:12:58', '2024-05-27 09:12:58', 0, '3jAKbvrptRk', 'Thái Lan');
INSERT INTO `movies` VALUES (161, 'Chàng Vợ Của Em', 'chang-vo-cua-em', 'https://static.vieon.vn/vieplay-image/poster_v4/2021/05/10/osnt83m1_660x946-changvocuaem.jpg', NULL, NULL, 'Việt', 2018, '2024-05-27 09:15:03', '2024-05-29 15:26:13', 4, 'Or3SqGR_Qg4', 'Việt Nam');
INSERT INTO `movies` VALUES (162, 'Hành Tinh Khỉ: Vương Quốc Mới', 'hanh-tinh-khi-vuong-quoc-moi-', 'https://kenh14cdn.com/203336854389633024/2024/5/11/photo-9-17154140270891708198523.jpeg', NULL, NULL, 'Vietsub Cam', 2024, '2024-05-27 09:17:26', '2024-05-28 12:52:40', 1, 'Z0EL1PDgPS0', 'Mỹ');
INSERT INTO `movies` VALUES (163, 'Gia Đình Croods: Kỷ Nguyên Mới', 'gia-dinh-croods-ky-nguyen-moi', 'https://homepage.momocdn.net/cinema/s256x384/momo-cdn-api-220615131541-637908957413894833.jpg', NULL, NULL, 'Lồng Tiếng', 2020, '2024-05-27 09:19:31', '2024-05-27 09:50:48', 1, 'D6P0xcxonXo', 'Mỹ');
INSERT INTO `movies` VALUES (164, 'Quái Vật Biển Khơi', 'quai-vat-bien-khoi-', 'https://i.pinimg.com/564x/02/a0/fd/02a0fdd4db2f02034ea6d76275cbeaad.jpg', NULL, NULL, 'Lồng Tiếng', 2022, '2024-05-27 09:22:11', '2024-05-27 12:58:18', 1, '_plsyM1KdyE', 'Mỹ');
INSERT INTO `movies` VALUES (165, 'Bạch Tuột Nam Cực', 'bach-tuot-nam-cuc', 'https://m.media-amazon.com/images/M/MV5BMDFjYjcwNTktYjIxNC00YTliLWE0NzYtMTNkOGY1ODZlNGIyXkEyXkFqcGdeQXVyMjQzNzc0MzA@._V1_.jpg', NULL, NULL, 'Vietsub', 2023, '2024-05-27 09:29:58', '2024-05-27 09:29:58', 0, '-VIjfJ2gO30', 'Trung Quốc');
INSERT INTO `movies` VALUES (166, 'Trường An Ba Vạn Dặm', 'truong-an-ba-van-dam', 'https://www.picclickimg.com/mg8AAOSwhcFlxhFM/DVD-Chinese-Movie-Chang-An-2023-%E9%95%BF%E5%AE%89%E4%B8%89%E4%B8%87%E9%87%8C.webp', NULL, NULL, 'Thuyết Minh', 2023, '2024-05-27 09:32:49', '2024-05-27 09:32:49', 0, 'BXcNs9G4Klo', 'Trung Quốc');
INSERT INTO `movies` VALUES (167, 'Hoa Thiên Cốt', 'hoa-thien-cot', 'https://baogiaothong.mediacdn.vn/files/baogiay1/2015/12/15/hoa-thien-cot-0634.jpg', NULL, NULL, 'Vietsub', 2024, '2024-05-27 09:48:25', '2024-05-28 14:25:29', 6, 'lC1UZJuCSOM', 'Trung Quốc');
INSERT INTO `movies` VALUES (168, 'RÒM', 'rom', 'https://static2.vieon.vn/vieplay-image/poster_v4/2023/05/31/njbbrx5m_660x946-rom.png', NULL, NULL, 'Việt', 2020, '2024-05-27 10:14:34', '2024-05-27 10:14:34', 0, 'XRm1P7oGpMQ', 'Việt');
INSERT INTO `movies` VALUES (169, 'Nhiệm Vụ Truy Tìm Tờ Vé Số', 'nhiem-vu-truy-tim-to-ve-so', 'https://image.tmdb.org/t/p/original/rTCRCzcERzJfPphM1gqujhMEREo.jpg', NULL, NULL, 'Vietsub', 2022, '2024-05-27 10:57:32', '2024-05-29 07:47:12', 1, 'o-11JnKxHB0', 'Thái Lan');
INSERT INTO `movies` VALUES (170, 'Siêu Sao Bí Mật', 'sieu-sao-bi-mat', 'https://upload.wikimedia.org/wikipedia/en/5/50/Secret_Superstar_-_Poster_3.jpg', NULL, NULL, 'Thuyết Minh', 2017, '2024-05-27 13:20:19', '2024-05-27 14:20:35', 1, 'J_yb8HORges', 'Ấn Độ');
INSERT INTO `movies` VALUES (171, 'Cương Thi Cổ Sát', 'cuong-thi-co-sat', 'https://img.phimapi.com/upload/vod/20240524-1/5de44ab1d20b3b6199300b585b18883d.jpg', NULL, NULL, 'Vietsub', 2024, '2024-05-29 07:36:26', '2024-05-29 07:36:26', 0, 'o3pZUDDdwXA', 'Trung Quốc');
INSERT INTO `movies` VALUES (172, 'Cuộc Chiến AI', 'cuoc-chien-ai', 'https://image.tmdb.org/t/p/original//bcM2Tl5HlsvPBnL8DKP9Ie6vU4r.jpg', NULL, NULL, 'Thuyết Minh', 2024, '2024-05-29 07:39:43', '2024-05-29 07:39:43', 0, 'Jokpt_LJpbw', 'Mỹ');
INSERT INTO `movies` VALUES (173, 'Ngày Tàn Của Đế Quốc', 'ngay-tan-cua-de-quoc', 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/c5f0a1eff4c394a251036189ccddaacd/4/7/470wx700h-civilwar.jpg', NULL, NULL, 'Thuyết Minh', 2024, '2024-05-29 07:43:25', '2024-05-29 07:43:25', 0, '3ORa9l0ev_8', 'Mỹ');
INSERT INTO `movies` VALUES (174, 'Vây Hãm: Kẻ Trừng Phạt', 'vay-ham-ke-trung-phat', 'https://iguov8nhvyobj.vcdn.cloud/media/catalog/product/cache/1/image/1800x/71252117777b696995f01934522c402d/4/0/406x600-roundup.jpg', NULL, NULL, 'Vietsub', 2024, '2024-05-29 07:46:21', '2024-05-30 14:39:54', 1, 'kwOgIPZvdgg', 'Hàn Quốc');
INSERT INTO `movies` VALUES (175, 'Thỏ Peter 1', 'tho-peter-1', 'https://upload.wikimedia.org/wikipedia/vi/3/3a/Th%E1%BB%8F_Peter_Vietnam.jpg', NULL, NULL, 'Thuyết Minh', 2018, '2024-05-29 07:55:13', '2024-05-30 02:05:51', 2, '74nM1rBgRbM', 'Mỹ');
INSERT INTO `movies` VALUES (176, 'Thỏ Peter 2: Cuộc Trốn Chạy', 'tho-peter-2-cuoc-tron-chay', 'https://image.tmdb.org/t/p/original/u0hUtTYghRnybYqCbr5Zl2vTb9G.jpg', NULL, NULL, 'Lồng Tiếng', 2021, '2024-05-29 08:00:52', '2024-05-29 15:46:33', 2, 'XDSbhWVxNIw', 'Mỹ');
INSERT INTO `movies` VALUES (177, 'Quý Cô Mạng Nhện', 'quy-co-mang-nhen', 'https://bizweb.dktcdn.net/100/064/189/products/1-3fbbefa8-dd09-4dc3-a5c3-46ecae9248fe.jpg?v=1711354233710', NULL, NULL, 'Thuyết Minh', 2024, '2024-05-29 08:23:43', '2024-05-29 13:52:41', 2, 'FKhKm3X6CiQ', 'Mỹ');
INSERT INTO `movies` VALUES (178, 'Em Chưa 18', 'em-chua-18', 'https://upload.wikimedia.org/wikipedia/vi/1/1f/Em_ch%C6%B0a_18_poster.jpg', NULL, NULL, 'Việt', 2017, '2024-05-29 08:53:51', '2024-05-29 08:55:09', 1, 'JumMd7g61Gw', 'Việt Nam');
INSERT INTO `movies` VALUES (179, 'Nhà Bà Nữ', 'nha-ba-nu', 'https://upload.wikimedia.org/wikipedia/vi/6/6f/%C3%81p_ph%C3%ADch_phim_Nh%C3%A0_b%C3%A0_N%E1%BB%AF.jpg', NULL, NULL, 'Việt', 2023, '2024-05-29 09:27:18', '2024-05-29 09:27:18', 0, 'IkaP0KJWTsQ', 'Việt Nam');
INSERT INTO `movies` VALUES (180, 'Anh Em Super Mario', 'anh-em-super-mario', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBLiubESFNRvdb7vmuGAAOSYgfJfEjkMu6BQ&s', NULL, NULL, 'Vietsub', 2023, '2024-05-29 11:00:15', '2024-05-29 13:27:19', 1, 'QcinmCfoh8E', 'Mỹ');
INSERT INTO `movies` VALUES (184, '23123123', '23123123', 'https://itviec.com/blog/wp-content/uploads/2022/08/figma-la-gi-thumbnew.webp', NULL, NULL, '1', 2022, '2024-05-29 14:50:27', '2024-05-30 03:48:19', 13, 'cYCOcxWgPVU', 'ACTOR, USA');
INSERT INTO `movies` VALUES (185, '3123123213 asdasd', '3123123213-asdasd', 'https://phim.nguonc.com/public/images/Post/5/RBJAlV_4f.jpg', NULL, NULL, '1', 2022, '2024-05-29 15:14:02', '2024-05-29 15:46:14', 1, 'cYCOcxWgPVU', 'ACTOR, USA');
INSERT INTO `movies` VALUES (186, 'asdasda asd asdas sad', 'asdasda-asd-asdas-sad', 'https://itviec.com/blog/wp-content/uploads/2022/08/figma-la-gi-thumbnew.webp', NULL, NULL, '1', 2022, '2024-05-29 15:17:56', '2024-05-30 01:56:21', 5, 'cYCOcxWgPVU', 'ACTOR, USA');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `key_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `orders_user_id_foreign`(`user_id` ASC) USING BTREE,
  INDEX `orders_key_id_foreign`(`key_id` ASC) USING BTREE,
  CONSTRAINT `orders_key_id_foreign` FOREIGN KEY (`key_id`) REFERENCES `keys` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (7, 1, 4, 0, '2024-06-04 06:51:43', '2024-06-04 06:51:43');
INSERT INTO `orders` VALUES (8, 1, 5, 0, '2024-06-04 06:51:56', '2024-06-04 06:51:56');
INSERT INTO `orders` VALUES (9, 1, 5, 0, '2024-06-04 14:02:36', '2024-06-04 14:02:36');
INSERT INTO `orders` VALUES (10, 1, 6, 0, '2024-06-04 14:02:50', '2024-06-04 14:02:50');
INSERT INTO `orders` VALUES (11, 1, 6, 0, '2024-06-04 14:05:24', '2024-06-04 14:05:24');
INSERT INTO `orders` VALUES (12, 1, 7, 0, '2024-06-04 14:09:57', '2024-06-04 14:09:57');
INSERT INTO `orders` VALUES (13, 1, 7, 0, '2024-06-04 14:50:08', '2024-06-04 14:50:08');
INSERT INTO `orders` VALUES (14, 1, 7, 0, '2024-06-04 14:51:08', '2024-06-04 14:51:08');
INSERT INTO `orders` VALUES (15, 1, 8, 0, '2024-06-04 15:07:27', '2024-06-04 15:07:27');

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` int NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `payments_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of payments
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for pets
-- ----------------------------
DROP TABLE IF EXISTS `pets`;
CREATE TABLE `pets`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `damage` int NOT NULL,
  `get_at_level` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pets
-- ----------------------------

-- ----------------------------
-- Table structure for post_images
-- ----------------------------
DROP TABLE IF EXISTS `post_images`;
CREATE TABLE `post_images`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint UNSIGNED NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `post_id`(`post_id` ASC) USING BTREE,
  CONSTRAINT `post_images_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_images
-- ----------------------------
INSERT INTO `post_images` VALUES (1, 12, '/public/uploads/files/1717945199431e781d-d74b-44c2-8257-57c9dabd946e.png');
INSERT INTO `post_images` VALUES (2, 12, '/public/uploads/files/1717945199334089275_534801568720125_8099951798510166826_n.jpg');

-- ----------------------------
-- Table structure for post_likes
-- ----------------------------
DROP TABLE IF EXISTS `post_likes`;
CREATE TABLE `post_likes`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `post_id` bigint UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `post_id`(`post_id` ASC) USING BTREE,
  CONSTRAINT `post_likes_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_likes
-- ----------------------------
INSERT INTO `post_likes` VALUES (8, '127.0.0.1', 1, '2024-06-07 20:09:07', '2024-06-07 20:09:07');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 'ewqeqwe qư eqw', 'ewqeqwe-qu-eqw', '<p>ưqqwewqe</p>', 'Dead Target Mod Full Guns Vip ( Coin, Dimion, Iteam, Skin )', '2024-06-06 11:54:04', '2024-06-07 13:12:46', 1);
INSERT INTO `posts` VALUES (2, 'ewqeqwe qư eqw', 'ewqeqwe-qu-eqw', '<p>ưqqwewqe</p>', 'Dead Target Mod Full Guns Vip ( Coin, Dimion, Iteam, Skin )', '2024-06-06 11:54:27', '2024-06-07 13:12:48', 1);
INSERT INTO `posts` VALUES (3, 'dasdasdas asdasdad', 'dasdasdas-asdasdad', '<p>asdasdas 13213</p>', 'Ben Nguyen 2233', '2024-06-06 11:54:50', '2024-06-07 20:07:33', 1);
INSERT INTO `posts` VALUES (4, 'asdasd asdasdas dasdasd as dasdasd', 'asdasd-asdasdas-dasdasd-as-dasdasd', NULL, 'Dead Target Mod Full Guns Vip ( Coin, Dimion, Iteam, Skin )', '2024-06-06 13:34:06', '2024-06-06 13:34:06', 0);
INSERT INTO `posts` VALUES (9, NULL, '', '<p>sad</p>', 'Dead Target Mod Full Guns Vip ( Coin, Dimion, Iteam, Skin )', '2024-06-06 13:53:00', '2024-06-06 13:53:00', 0);
INSERT INTO `posts` VALUES (10, 'Top 5 Món Ăn Truyền Thống Đốn Tim Gen Z Khi Tới Huế, set kèo \"săn lùng\" ngay thôi! Vẻ đẹ', 'top-5-mon-an-truyen-thong-don-tim-gen-z-khi-toi-hue-set-keo-san-lung-ngay-thoi-ve-de', '<p>13123 123123</p>', 'Dead Target Mod Full Guns Vip ( Coin, Dimion, Iteam, Skin )', '2024-06-07 20:24:50', '2024-06-07 20:24:50', 0);
INSERT INTO `posts` VALUES (12, 'Top 5 Quán Ăn Lâu Đời Nhất Quanh Phố Cổ Hội An, bạn đã thưởng qua chưa?', 'top-5-quan-an-lau-doi-nhat-quanh-pho-co-hoi-an-ban-da-thuong-qua-chua', '<p>Vẻ đẹp trường tồn của cố đô Huế không chỉ nằm ở nét quyến rũ của những danh lam thắng cảnh nổi tiếng mà còn ở văn hóa ẩm thực độc đáo, luôn đậm sắc đủ hương và không gì có thể thay thế được. Ẩm thực Huế cho đến nay đã trở thành một triết lý, gắn liền với con người và chiều dài lịch sử của đất cố đô trăm năm mà thành. Bởi vậy cho dù bạn là gen X, gen Y hay gen Z thì vẫn không thể nào thoát khỏi sự hấp dẫn trời sinh của nền ẩm thực muôn màu vạn sắc này. Hôm nay trong số ẩm thực mới, hãy cùng Shopeefood điểm qua top 5 món ăn truyền thông đốn tim Gen Z khi tới Huế để hiểu thêm về con người, văn hóa xứ cố đô nhé</p><p><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image&quot;,&quot;height&quot;:512,&quot;url&quot;:&quot;data:image/png;base64,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&quot;,&quot;width&quot;:512}\" data-trix-content-type=\"image\" class=\"attachment attachment--preview\"><img src=\"data:image/png;base64,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\" width=\"512\" height=\"512\"><figcaption class=\"attachment__caption\"></figcaption></figure></p><p>Vẻ đẹp trường tồn của cố đô Huế không chỉ nằm ở nét quyến rũ của những danh lam thắng cảnh nổi tiếng mà còn ở văn hóa ẩm thực độc đáo, luôn đậm sắc đủ hương và không gì có thể thay thế được. Ẩm thực Huế cho đến nay đã trở thành một triết lý, gắn liền với con người và chiều dài lịch sử của đất cố đô trăm năm mà thành. Bởi vậy cho dù bạn là gen X, gen Y hay gen Z thì vẫn không thể nào thoát khỏi sự hấp dẫn trời sinh của nền ẩm thực muôn màu vạn sắc này. Hôm nay trong số ẩm thực mới, hãy cùng Shopeefood điểm qua top 5 món ăn truyền thông đốn tim Gen Z khi tới Huế để hiểu thêm về con người, văn hóa xứ cố đô nhé</p><p><br></p>', 'Dead Target Mod Full Guns Vip ( Coin, Dimion, Iteam, Skin )', '2024-06-09 19:26:14', '2024-06-09 19:43:50', 1);

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `payload` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_activity` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sessions
-- ----------------------------

-- ----------------------------
-- Table structure for total_rewards
-- ----------------------------
DROP TABLE IF EXISTS `total_rewards`;
CREATE TABLE `total_rewards`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `total_reward` int NULL DEFAULT NULL,
  `apply_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of total_rewards
-- ----------------------------
INSERT INTO `total_rewards` VALUES (1, 100000, '2024-06-07');
INSERT INTO `total_rewards` VALUES (2, 200000, '2024-07-01');

-- ----------------------------
-- Table structure for user_posts
-- ----------------------------
DROP TABLE IF EXISTS `user_posts`;
CREATE TABLE `user_posts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `post_id` bigint UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `post_id`(`post_id` ASC) USING BTREE,
  CONSTRAINT `user_posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_posts_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_posts
-- ----------------------------
INSERT INTO `user_posts` VALUES (1, 1, 1);
INSERT INTO `user_posts` VALUES (2, 1, 2);
INSERT INTO `user_posts` VALUES (3, 1, 3);
INSERT INTO `user_posts` VALUES (9, 1, 4);
INSERT INTO `user_posts` VALUES (10, 1, 10);
INSERT INTO `user_posts` VALUES (12, 1, 12);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` int NOT NULL DEFAULT 0,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Admin1', 740000, 'nben19732@gmail.com', NULL, '$2y$12$Il2hsGVaWQsqWVq0xUYHQu1OHUuD8GwPbfvNJ8IFeA1DpreUFXRTm', NULL, '2024-06-01 05:16:01', '2024-06-06 15:36:56', '/uploads/avatar/1717663016mon-ngon-quan-1-mi-kho-xa-xiu.jpg');
INSERT INTO `users` VALUES (3, 'Nguyễn Hồ Thanh Bền', 0, 'nben19733@gmail.com', NULL, '$2y$12$7Uvg9fPELCKhF/Gg0BgD6.tEn/vmhcg5Sf8ck3MJKp6skXpTN.JlW', NULL, '2024-06-06 13:56:01', '2024-06-06 13:56:01', '');
INSERT INTO `users` VALUES (4, 'Dan Stevens', 0, 'nphuc19732@gmail.com', NULL, '$2y$12$aqWBVYOrEfPiLUaVI/tucuhoshpyt4/WCrzfEHqQYaUJjTdd3Mv4.', NULL, '2024-06-09 18:58:17', '2024-06-09 18:58:17', 'https://i.pinimg.com/736x/0d/64/98/0d64989794b1a4c9d89bff571d3d5842.jpg');

SET FOREIGN_KEY_CHECKS = 1;
