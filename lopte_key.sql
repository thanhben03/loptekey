/*
 Navicat Premium Dump SQL

 Source Server         : boss_travel
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : lopte_key

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 06/06/2024 09:27:17
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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of keys
-- ----------------------------
INSERT INTO `keys` VALUES (1, 'ahihi', 2, '2024-06-03', NULL, 2, '2024-06-04 14:49:49', '2024-06-01 07:00:37', 1);
INSERT INTO `keys` VALUES (2, 'ahihi 456', 2, '2024-06-04', NULL, 2, '2024-06-04 14:49:50', '2024-06-01 07:03:32', 1);
INSERT INTO `keys` VALUES (3, 'ahihi 123', 1, '2024-06-06', NULL, 1, '2024-06-04 14:49:50', NULL, 1);
INSERT INTO `keys` VALUES (4, '1390', 1, NULL, NULL, 1, '2024-06-04 14:55:53', NULL, 0);
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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pets
-- ----------------------------

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tag_id` bigint UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_posts
-- ----------------------------

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
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Admin', 740000, 'nben19732@gmail.com', NULL, '$2y$12$Il2hsGVaWQsqWVq0xUYHQu1OHUuD8GwPbfvNJ8IFeA1DpreUFXRTm', NULL, '2024-06-01 05:16:01', '2024-06-04 15:07:27');

SET FOREIGN_KEY_CHECKS = 1;
