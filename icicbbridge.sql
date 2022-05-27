/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : icicbbridge

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 30/03/2022 07:06:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blocks
-- ----------------------------
DROP TABLE IF EXISTS `blocks`;
CREATE TABLE `blocks`  (
  `key` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `height` bigint(20) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of blocks
-- ----------------------------
INSERT INTO `blocks` VALUES ('ICICB', 1259);
INSERT INTO `blocks` VALUES ('BSC', 0);
INSERT INTO `blocks` VALUES ('ETH', 0);

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events`  (
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `blocknumber` bigint(11) UNSIGNED NULL DEFAULT 0,
  `address` varchar(42) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `token` varchar(42) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `chain` int(11) UNSIGNED NULL DEFAULT 0,
  `targetchain` int(11) UNSIGNED NULL DEFAULT 0,
  `value` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `fee` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `sendvalue` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `tx` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `err` tinyint(4) UNSIGNED NULL DEFAULT 0,
  `senderr` tinyint(4) UNSIGNED NULL DEFAULT 0,
  `updated` int(11) UNSIGNED NULL DEFAULT 0,
  `created` int(11) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for prices
-- ----------------------------
DROP TABLE IF EXISTS `prices`;
CREATE TABLE `prices`  (
  `key` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated` int(11) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of prices
-- ----------------------------
INSERT INTO `prices` VALUES ('BCH', '396.5', 1641490053);
INSERT INTO `prices` VALUES ('BNB', '474.2', 1641490053);
INSERT INTO `prices` VALUES ('BTC', '43018.23', 1641490053);
INSERT INTO `prices` VALUES ('DOGE', '0.1591', 1641490053);
INSERT INTO `prices` VALUES ('ETH', '3420.43', 1641490053);
INSERT INTO `prices` VALUES ('LTC', '136.3', 1641490053);
INSERT INTO `prices` VALUES ('XRP', '0.7674', 1641490053);
INSERT INTO `prices` VALUES ('USDC', '1.0004', 1641490053);
INSERT INTO `prices` VALUES ('LINK', '24.47', 1641490053);

-- ----------------------------
-- Table structure for tokens
-- ----------------------------
DROP TABLE IF EXISTS `tokens`;
CREATE TABLE `tokens`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `chain` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `token` varchar(42) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `decimals` tinyint(4) UNSIGNED NULL DEFAULT 0,
  `token_real` varchar(42) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2009 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tokens
-- ----------------------------
INSERT INTO `tokens` VALUES (1006, 'ETH', '0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48', 'USDC', 6, NULL);
INSERT INTO `tokens` VALUES (1005, 'ETH', '0xdac17f958d2ee523a2206206994597c13d831ec7', 'USDT', 6, NULL);
INSERT INTO `tokens` VALUES (1004, 'ETH', '0xB8c77482e45F1F44dE1745F52C74426C631bDD52', 'BNB', 18, NULL);
INSERT INTO `tokens` VALUES (1000, 'ETH', '-', 'ETH', 18, NULL);
INSERT INTO `tokens` VALUES (8, 'ICICB', '0x8ccaaCca0A5d76B0886ceC0403402F6aBa8D600f', 'BCH', 18, NULL);
INSERT INTO `tokens` VALUES (7, 'ICICB', '0xBA44d05A7cc271b9D3d169c2d717564e216d841a', 'LTC', 18, NULL);
INSERT INTO `tokens` VALUES (1, 'ICICB', '-', 'ICICB', 18, NULL);
INSERT INTO `tokens` VALUES (2, 'ICICB', '0xfb5988d5F4A1a8B6D736e9Eef5873AE3ab2E6f32', 'BTC', 18, NULL);
INSERT INTO `tokens` VALUES (3, 'ICICB', '0xC50DaFc2Bd591828eCF736240ad17390CaDA41F2', 'ETH', 18, NULL);
INSERT INTO `tokens` VALUES (4, 'ICICB', '0xeb3724d2a13e6e79e208F49C45d5f100bb420e6B', 'BNB', 18, NULL);
INSERT INTO `tokens` VALUES (5, 'ICICB', '0xfaf72be26659168F1BaFB924a3f1C5e7BFc3199d', 'USDT', 18, NULL);
INSERT INTO `tokens` VALUES (6, 'ICICB', '0x504B8f4c424419Ec6e9F6a6025A2b958a7f072c8', 'USDC', 18, NULL);
INSERT INTO `tokens` VALUES (2008, 'BSC', '0x8ff795a6f4d97e7887c79bea79aba5cc76444adf', 'BCH', 18, NULL);
INSERT INTO `tokens` VALUES (2007, 'BSC', '0x4338665cbb7b2485a8855a139b75d5e34ab0db94', 'LTC', 18, NULL);
INSERT INTO `tokens` VALUES (2006, 'BSC', '0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d', 'USDC', 18, NULL);
INSERT INTO `tokens` VALUES (2005, 'BSC', '0x55d398326f99059ff775485246999027b3197955', 'USDT', 18, NULL);
INSERT INTO `tokens` VALUES (2002, 'BSC', '0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c', 'BTC', 18, NULL);
INSERT INTO `tokens` VALUES (2001, 'BSC', '-', 'BNB', 18, NULL);
INSERT INTO `tokens` VALUES (11, 'ICICB', '0x36695990bdd8c14Cd8939F643d1BC30d83aC5648', 'LINK', 18, NULL);
INSERT INTO `tokens` VALUES (10, 'ICICB', '0x58A6535E481c97bb9982e42dC54613b3e5362Ae5', 'DOGE', 18, NULL);
INSERT INTO `tokens` VALUES (9, 'ICICB', '0xEf7EAAb62C16942F3df0F962412BfF430654A1d2', 'XRP', 18, NULL);

-- ----------------------------
-- Table structure for utxos
-- ----------------------------
DROP TABLE IF EXISTS `utxos`;
CREATE TABLE `utxos`  (
  `key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `chain` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hash` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `vout` int(11) UNSIGNED NULL DEFAULT 0,
  `value` bigint(20) UNSIGNED NULL DEFAULT 0,
  `height` bigint(20) UNSIGNED NULL DEFAULT 0,
  `spent` tinyint(4) UNSIGNED NULL DEFAULT 0,
  `updated` int(11) UNSIGNED NULL DEFAULT 0,
  `created` int(11) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wallets
-- ----------------------------
DROP TABLE IF EXISTS `wallets`;
CREATE TABLE `wallets`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `chain` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated` int(11) UNSIGNED NULL DEFAULT 0,
  `created` int(11) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
