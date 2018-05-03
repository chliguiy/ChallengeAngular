/*
Navicat MySQL Data Transfer

Source Server         : locla
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : markeet

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-05-03 11:13:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app_version
-- ----------------------------
DROP TABLE IF EXISTS `app_version`;
CREATE TABLE `app_version` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version_code` int(11) NOT NULL,
  `version_name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of app_version
-- ----------------------------
INSERT INTO `app_version` VALUES ('1', '1', '1', '1', '1484386275760', '1485795959275');
INSERT INTO `app_version` VALUES ('2', '2', '2', '1', '1485795799112', '1485795799112');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `brief` varchar(100) NOT NULL,
  `color` varchar(7) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('3', 'Service and Food', 'Service & Food.png', '0', 'Tickets and services, airlines, food and drinks.', '#ff6f52', '7', '1485609656784', '1485623552964');
INSERT INTO `category` VALUES ('4', 'Sports and Hobby', 'Sports & Hobby.png', '0', 'Sports and outdoor, hobby, books, automotive.', '#8ddd6f', '6', '1485609722495', '1485623540625');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `code` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('CURRENCY', 'USD');
INSERT INTO `config` VALUES ('FEATURED_NEWS', '5');
INSERT INTO `config` VALUES ('SHIPPING', '[\"FEDEX\",\"DHL\",\"TNT\"]');
INSERT INTO `config` VALUES ('TAX', '11');

-- ----------------------------
-- Table structure for currency
-- ----------------------------
DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of currency
-- ----------------------------
INSERT INTO `currency` VALUES ('1', 'AFA', 'Afghanistan afghani');
INSERT INTO `currency` VALUES ('2', 'ALL', 'Albanian lek');
INSERT INTO `currency` VALUES ('3', 'DZD', 'Algerian dinar');
INSERT INTO `currency` VALUES ('4', 'AOR', 'Angolan kwanza reajustado');
INSERT INTO `currency` VALUES ('5', 'ARS', 'Argentine peso');
INSERT INTO `currency` VALUES ('6', 'AMD', 'Armenian dram');
INSERT INTO `currency` VALUES ('7', 'AWG', 'Aruban guilder');
INSERT INTO `currency` VALUES ('8', 'AUD', 'Australian dollar');
INSERT INTO `currency` VALUES ('9', 'AZN', 'Azerbaijanian new manat');
INSERT INTO `currency` VALUES ('10', 'BSD', 'Bahamian dollar');
INSERT INTO `currency` VALUES ('11', 'BHD', 'Bahraini dinar');
INSERT INTO `currency` VALUES ('12', 'BDT', 'Bangladeshi taka');
INSERT INTO `currency` VALUES ('13', 'BBD', 'Barbados dollar');
INSERT INTO `currency` VALUES ('14', 'BYN', 'Belarusian ruble');
INSERT INTO `currency` VALUES ('15', 'BZD', 'Belize dollar');
INSERT INTO `currency` VALUES ('16', 'BMD', 'Bermudian dollar');
INSERT INTO `currency` VALUES ('17', 'BTN', 'Bhutan ngultrum');
INSERT INTO `currency` VALUES ('18', 'BOB', 'Bolivian boliviano');
INSERT INTO `currency` VALUES ('19', 'BWP', 'Botswana pula');
INSERT INTO `currency` VALUES ('20', 'BRL', 'Brazilian real');
INSERT INTO `currency` VALUES ('21', 'GBP', 'British pound');
INSERT INTO `currency` VALUES ('22', 'BND', 'Brunei dollar');
INSERT INTO `currency` VALUES ('23', 'BGN', 'Bulgarian lev');
INSERT INTO `currency` VALUES ('24', 'BIF', 'Burundi franc');
INSERT INTO `currency` VALUES ('25', 'KHR', 'Cambodian riel');
INSERT INTO `currency` VALUES ('26', 'CAD', 'Canadian dollar');
INSERT INTO `currency` VALUES ('27', 'CVE', 'Cape Verde escudo');
INSERT INTO `currency` VALUES ('28', 'KYD', 'Cayman Islands dollar');
INSERT INTO `currency` VALUES ('29', 'XOF', 'CFA franc BCEAO');
INSERT INTO `currency` VALUES ('30', 'XAF', 'CFA franc BEAC');
INSERT INTO `currency` VALUES ('31', 'XPF', 'CFP franc');
INSERT INTO `currency` VALUES ('32', 'CLP', 'Chilean peso');
INSERT INTO `currency` VALUES ('33', 'CNY', 'Chinese yuan renminbi');
INSERT INTO `currency` VALUES ('34', 'COP', 'Colombian peso');
INSERT INTO `currency` VALUES ('35', 'KMF', 'Comoros franc');
INSERT INTO `currency` VALUES ('36', 'CDF', 'Congolese franc');
INSERT INTO `currency` VALUES ('37', 'CRC', 'Costa Rican colon');
INSERT INTO `currency` VALUES ('38', 'HRK', 'Croatian kuna');
INSERT INTO `currency` VALUES ('39', 'CUP', 'Cuban peso');
INSERT INTO `currency` VALUES ('40', 'CZK', 'Czech koruna');
INSERT INTO `currency` VALUES ('41', 'DKK', 'Danish krone');
INSERT INTO `currency` VALUES ('42', 'DJF', 'Djibouti franc');
INSERT INTO `currency` VALUES ('43', 'DOP', 'Dominican peso');
INSERT INTO `currency` VALUES ('44', 'XCD', 'East Caribbean dollar');
INSERT INTO `currency` VALUES ('45', 'EGP', 'Egyptian pound');
INSERT INTO `currency` VALUES ('46', 'SVC', 'El Salvador colon');
INSERT INTO `currency` VALUES ('47', 'ERN', 'Eritrean nakfa');
INSERT INTO `currency` VALUES ('48', 'EEK', 'Estonian kroon');
INSERT INTO `currency` VALUES ('49', 'ETB', 'Ethiopian birr');
INSERT INTO `currency` VALUES ('50', 'EUR', 'EU euro');
INSERT INTO `currency` VALUES ('51', 'FKP', 'Falkland Islands pound');
INSERT INTO `currency` VALUES ('52', 'FJD', 'Fiji dollar');
INSERT INTO `currency` VALUES ('53', 'GMD', 'Gambian dalasi');
INSERT INTO `currency` VALUES ('54', 'GEL', 'Georgian lari');
INSERT INTO `currency` VALUES ('55', 'GHS', 'Ghanaian new cedi');
INSERT INTO `currency` VALUES ('56', 'GIP', 'Gibraltar pound');
INSERT INTO `currency` VALUES ('57', 'XAU', 'Gold (ounce)');
INSERT INTO `currency` VALUES ('58', 'XFO', 'Gold franc');
INSERT INTO `currency` VALUES ('59', 'GTQ', 'Guatemalan quetzal');
INSERT INTO `currency` VALUES ('60', 'GNF', 'Guinean franc');
INSERT INTO `currency` VALUES ('61', 'GYD', 'Guyana dollar');
INSERT INTO `currency` VALUES ('62', 'HTG', 'Haitian gourde');
INSERT INTO `currency` VALUES ('63', 'HNL', 'Honduran lempira');
INSERT INTO `currency` VALUES ('64', 'HKD', 'Hong Kong SAR dollar');
INSERT INTO `currency` VALUES ('65', 'HUF', 'Hungarian forint');
INSERT INTO `currency` VALUES ('66', 'ISK', 'Icelandic krona');
INSERT INTO `currency` VALUES ('67', 'XDR', 'IMF special drawing right');
INSERT INTO `currency` VALUES ('68', 'INR', 'Indian rupee');
INSERT INTO `currency` VALUES ('69', 'IDR', 'Indonesian rupiah');
INSERT INTO `currency` VALUES ('70', 'IRR', 'Iranian rial');
INSERT INTO `currency` VALUES ('71', 'IQD', 'Iraqi dinar');
INSERT INTO `currency` VALUES ('72', 'ILS', 'Israeli new shekel');
INSERT INTO `currency` VALUES ('73', 'JMD', 'Jamaican dollar');
INSERT INTO `currency` VALUES ('74', 'JPY', 'Japanese yen');
INSERT INTO `currency` VALUES ('75', 'JOD', 'Jordanian dinar');
INSERT INTO `currency` VALUES ('76', 'KZT', 'Kazakh tenge');
INSERT INTO `currency` VALUES ('77', 'KES', 'Kenyan shilling');
INSERT INTO `currency` VALUES ('78', 'KWD', 'Kuwaiti dinar');
INSERT INTO `currency` VALUES ('79', 'KGS', 'Kyrgyz som');
INSERT INTO `currency` VALUES ('80', 'LAK', 'Lao kip');
INSERT INTO `currency` VALUES ('81', 'LVL', 'Latvian lats');
INSERT INTO `currency` VALUES ('82', 'LBP', 'Lebanese pound');
INSERT INTO `currency` VALUES ('83', 'LSL', 'Lesotho loti');
INSERT INTO `currency` VALUES ('84', 'LRD', 'Liberian dollar');
INSERT INTO `currency` VALUES ('85', 'LYD', 'Libyan dinar');
INSERT INTO `currency` VALUES ('86', 'LTL', 'Lithuanian litas');
INSERT INTO `currency` VALUES ('87', 'MOP', 'Macao SAR pataca');
INSERT INTO `currency` VALUES ('88', 'MKD', 'Macedonian denar');
INSERT INTO `currency` VALUES ('89', 'MGA', 'Malagasy ariary');
INSERT INTO `currency` VALUES ('90', 'MWK', 'Malawi kwacha');
INSERT INTO `currency` VALUES ('91', 'MYR', 'Malaysian ringgit');
INSERT INTO `currency` VALUES ('92', 'MVR', 'Maldivian rufiyaa');
INSERT INTO `currency` VALUES ('93', 'MRO', 'Mauritanian ouguiya');
INSERT INTO `currency` VALUES ('94', 'MUR', 'Mauritius rupee');
INSERT INTO `currency` VALUES ('95', 'MXN', 'Mexican peso');
INSERT INTO `currency` VALUES ('96', 'MDL', 'Moldovan leu');
INSERT INTO `currency` VALUES ('97', 'MNT', 'Mongolian tugrik');
INSERT INTO `currency` VALUES ('98', 'MAD', 'Moroccan dirham');
INSERT INTO `currency` VALUES ('99', 'MZN', 'Mozambique new metical');
INSERT INTO `currency` VALUES ('100', 'MMK', 'Myanmar kyat');
INSERT INTO `currency` VALUES ('101', 'NAD', 'Namibian dollar');
INSERT INTO `currency` VALUES ('102', 'NPR', 'Nepalese rupee');
INSERT INTO `currency` VALUES ('103', 'ANG', 'Netherlands Antillian guilder');
INSERT INTO `currency` VALUES ('104', 'NZD', 'New Zealand dollar');
INSERT INTO `currency` VALUES ('105', 'NIO', 'Nicaraguan cordoba oro');
INSERT INTO `currency` VALUES ('106', 'NGN', 'Nigerian naira');
INSERT INTO `currency` VALUES ('107', 'KPW', 'North Korean won');
INSERT INTO `currency` VALUES ('108', 'NOK', 'Norwegian krone');
INSERT INTO `currency` VALUES ('109', 'OMR', 'Omani rial');
INSERT INTO `currency` VALUES ('110', 'PKR', 'Pakistani rupee');
INSERT INTO `currency` VALUES ('111', 'XPD', 'Palladium (ounce)');
INSERT INTO `currency` VALUES ('112', 'PAB', 'Panamanian balboa');
INSERT INTO `currency` VALUES ('113', 'PGK', 'Papua New Guinea kina');
INSERT INTO `currency` VALUES ('114', 'PYG', 'Paraguayan guarani');
INSERT INTO `currency` VALUES ('115', 'PEN', 'Peruvian nuevo sol');
INSERT INTO `currency` VALUES ('116', 'PHP', 'Philippine peso');
INSERT INTO `currency` VALUES ('117', 'XPT', 'Platinum (ounce)');
INSERT INTO `currency` VALUES ('118', 'PLN', 'Polish zloty');
INSERT INTO `currency` VALUES ('119', 'QAR', 'Qatari rial');
INSERT INTO `currency` VALUES ('120', 'RON', 'Romanian new leu');
INSERT INTO `currency` VALUES ('121', 'RUB', 'Russian ruble');
INSERT INTO `currency` VALUES ('122', 'RWF', 'Rwandan franc');
INSERT INTO `currency` VALUES ('123', 'SHP', 'Saint Helena pound');
INSERT INTO `currency` VALUES ('124', 'WST', 'Samoan tala');
INSERT INTO `currency` VALUES ('125', 'STD', 'Sao Tome and Principe dobra');
INSERT INTO `currency` VALUES ('126', 'SAR', 'Saudi riyal');
INSERT INTO `currency` VALUES ('127', 'RSD', 'Serbian dinar');
INSERT INTO `currency` VALUES ('128', 'SCR', 'Seychelles rupee');
INSERT INTO `currency` VALUES ('129', 'SLL', 'Sierra Leone leone');
INSERT INTO `currency` VALUES ('130', 'XAG', 'Silver (ounce)');
INSERT INTO `currency` VALUES ('131', 'SGD', 'Singapore dollar');
INSERT INTO `currency` VALUES ('132', 'SBD', 'Solomon Islands dollar');
INSERT INTO `currency` VALUES ('133', 'SOS', 'Somali shilling');
INSERT INTO `currency` VALUES ('134', 'ZAR', 'South African rand');
INSERT INTO `currency` VALUES ('135', 'KRW', 'South Korean won');
INSERT INTO `currency` VALUES ('136', 'LKR', 'Sri Lanka rupee');
INSERT INTO `currency` VALUES ('137', 'SDG', 'Sudanese pound');
INSERT INTO `currency` VALUES ('138', 'SRD', 'Suriname dollar');
INSERT INTO `currency` VALUES ('139', 'SZL', 'Swaziland lilangeni');
INSERT INTO `currency` VALUES ('140', 'SEK', 'Swedish krona');
INSERT INTO `currency` VALUES ('141', 'CHF', 'Swiss franc');
INSERT INTO `currency` VALUES ('142', 'SYP', 'Syrian pound');
INSERT INTO `currency` VALUES ('143', 'TWD', 'Taiwan New dollar');
INSERT INTO `currency` VALUES ('144', 'TJS', 'Tajik somoni');
INSERT INTO `currency` VALUES ('145', 'TZS', 'Tanzanian shilling');
INSERT INTO `currency` VALUES ('146', 'THB', 'Thai baht');
INSERT INTO `currency` VALUES ('147', 'TOP', 'Tongan paanga');
INSERT INTO `currency` VALUES ('148', 'TTD', 'Trinidad and Tobago dollar');
INSERT INTO `currency` VALUES ('149', 'TND', 'Tunisian dinar');
INSERT INTO `currency` VALUES ('150', 'TRY', 'Turkish lira');
INSERT INTO `currency` VALUES ('151', 'TMT', 'Turkmen new manat');
INSERT INTO `currency` VALUES ('152', 'AED', 'UAE dirham');
INSERT INTO `currency` VALUES ('153', 'UGX', 'Uganda new shilling');
INSERT INTO `currency` VALUES ('154', 'XFU', 'UIC franc');
INSERT INTO `currency` VALUES ('155', 'UAH', 'Ukrainian hryvnia');
INSERT INTO `currency` VALUES ('156', 'UYU', 'Uruguayan peso uruguayo');
INSERT INTO `currency` VALUES ('157', 'USD', 'US dollar');
INSERT INTO `currency` VALUES ('158', 'UZS', 'Uzbekistani sum');
INSERT INTO `currency` VALUES ('159', 'VUV', 'Vanuatu vatu');
INSERT INTO `currency` VALUES ('160', 'VEF', 'Venezuelan bolivar fuerte');
INSERT INTO `currency` VALUES ('161', 'VND', 'Vietnamese dong');
INSERT INTO `currency` VALUES ('162', 'YER', 'Yemeni rial');
INSERT INTO `currency` VALUES ('163', 'ZMK', 'Zambian kwacha');
INSERT INTO `currency` VALUES ('164', 'ZWL', 'Zimbabwe dollar');

-- ----------------------------
-- Table structure for fcm
-- ----------------------------
DROP TABLE IF EXISTS `fcm`;
CREATE TABLE `fcm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `device` varchar(100) NOT NULL,
  `os_version` varchar(100) NOT NULL,
  `app_version` varchar(10) NOT NULL,
  `serial` varchar(100) NOT NULL,
  `regid` text NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of fcm
-- ----------------------------
INSERT INTO `fcm` VALUES ('4', 'Device Name', '6.0.1', '1.0', 'GGC00C0888E426A', 'APA91bEj7qmlVePXUpG4UjKOtyqG5x9hpeZ4tMhPDsJgDRWL76psPGtckLK3uMtmpLFj3RSFfgaVoBMCKhg5iR8RnPZPjeuml8Llgkc', '0', '0');

-- ----------------------------
-- Table structure for news_info
-- ----------------------------
DROP TABLE IF EXISTS `news_info`;
CREATE TABLE `news_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `brief_content` varchar(200) NOT NULL,
  `full_content` text NOT NULL,
  `image` varchar(110) NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of news_info
-- ----------------------------
INSERT INTO `news_info` VALUES ('1', 'Available Best Interior Stuff, Browse and Discover Now for Your Room.', 'Quisque efficitur diam sit amet quam porttitor, at dictum arcu viverra. Vivamus dapibus ante nunc, non malesuada enim gravida in.', '<div>Aliquam sed lorem quis urna eleifend aliquam ac ut urna. Sed tempus nisl tellus, vel tempor velit rutrum ac. Ut facilisis eget augue quis pulvinar. Nam a felis eu tortor convallis dapibus efficitur vel turpis. Etiam hendrerit pulvinar leo ac venenatis. Donec non felis et massa semper convallis nec id augue. Proin sit amet mollis nisl. Sed vestibulum auctor imperdiet. Nam ut enim non lacus blandit rhoncus non at turpis. Donec vel arcu malesuada, vulputate dui a, varius leo. Proin volutpat libero ultricies est auctor, eget facilisis ligula accumsan. Sed quis sapien hendrerit, luctus augue nec, aliquam urna. Mauris vestibulum convallis malesuada. Sed et ex cursus, fringilla tellus ac, maximus ipsum.</div><div><br></div><div>Sed viverra arcu in neque pulvinar dignissim. Nunc euismod aliquam magna, non efficitur lectus vehicula quis. Suspendisse vitae consequat arcu, eget malesuada dui. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec quis imperdiet libero. Donec imperdiet quis lectus vitae dignissim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam pulvinar pretium ipsum, et faucibus libero aliquet et. Quisque efficitur diam sit amet quam porttitor, at dictum arcu viverra. Vivamus dapibus ante nunc, non malesuada enim gravida in. Cras bibendum eros vitae lacus efficitur, vel pretium est rutrum.</div><div><br></div><div>Praesent id efficitur risus. Nullam dui ligula, eleifend in convallis at, porta vitae massa. Curabitur sapien lorem, congue non enim non, rutrum gravida ipsum. Duis dignissim sapien in sem finibus ultrices id nec justo. Nulla hendrerit sed eros ac rhoncus. Nullam varius tellus id venenatis cursus. Cras commodo metus mauris, eget posuere sapien blandit non. Aenean fermentum ligula a libero suscipit dictum. Nulla dictum odio ut vulputate aliquam. Suspendisse potenti. Cras pellentesque vel felis sed dignissim. Proin aliquet orci tincidunt dui convallis, facilisis accumsan urna semper.</div>', 'Sed tempus nisl tellus vel tempor velit rutrum ac Ut facilisis eget augue quis pulvinar.png', '0', 'FEATURED', '1482250793274', '1485795107581');
INSERT INTO `news_info` VALUES ('2', 'We Join Smartphone Fair  in Washington, D.C. April 7-8, 2017. Visit and Purchase our Product.', 'Aenean eu libero eget lorem tincidunt eleifend. Integer in diam felis. Proin sit amet mollis nisl.', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque urna ut metus sagittis, vel congue lorem iaculis. Sed hendrerit mauris id tempor faucibus. In facilisis nibh vulputate ante porttitor, et venenatis arcu placerat. Vestibulum tempor nisi enim, eget consectetur ex accumsan fermentum. Mauris ipsum lacus, imperdiet eget purus vel, convallis euismod augue. In sed fringilla sem. Aenean ultricies ullamcorper euismod.</div><div><br></div><div>Cras non nunc est. Nunc quis dapibus lorem. Proin dignissim interdum interdum. In vitae aliquet odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam non venenatis nunc, id molestie velit. Vestibulum sagittis dui at nibh lacinia faucibus. Curabitur auctor sem diam. Aenean eu libero eget lorem tincidunt eleifend. Integer in diam felis.</div><div><br></div><div>Aliquam sed lorem quis urna eleifend aliquam ac ut urna. Sed tempus nisl tellus, vel tempor velit rutrum ac. Ut facilisis eget augue quis pulvinar. Nam a felis eu tortor convallis dapibus efficitur vel turpis. Etiam hendrerit pulvinar leo ac venenatis. Donec non felis et massa semper convallis nec id augue. Proin sit amet mollis nisl. Sed vestibulum auctor imperdiet. Nam ut enim non lacus blandit rhoncus non at turpis. Donec vel arcu malesuada, vulputate dui a, varius leo. Proin volutpat libero ultricies est auctor, eget facilisis ligula accumsan. Sed quis sapien hendrerit, luctus augue nec, aliquam urna. Mauris vestibulum convallis malesuada. Sed et ex cursus, fringilla tellus ac, maximus ipsum.</div>', 'Quisque efficitur diam sit amet quam porttitor at dictum arcu viverra.png', '0', 'FEATURED', '1485793148268', '1485794701501');
INSERT INTO `news_info` VALUES ('10', 'Unique Women\'s Accessories Trend that Will Popular Current Season', 'Cras in dapibus ligula. Vestibulum elementum ante at sapien consectetur porta.', '<div>Cras in dapibus ligula. Vestibulum elementum ante at sapien consectetur porta. Nulla laoreet mauris a orci posuere eleifend. Duis dictum nisl scelerisque lectus tincidunt, id tristique lorem eleifend. Curabitur nibh risus, commodo in consequat eget, consectetur vel tellus. Suspendisse dignissim, lorem ut luctus congue, mi justo lobortis ex, non suscipit est est id urna. Ut eget tortor accumsan, consectetur justo sit amet, tincidunt enim.</div><div><br></div><div>Proin efficitur justo eget tempus vulputate. Nunc viverra felis tortor, a porttitor tortor vehicula dictum. Nam quis sapien nec tellus ultricies dictum. Praesent vulputate dolor sed nisl consectetur, vel varius dui suscipit. Maecenas vulputate ligula a sem sollicitudin viverra. In a libero viverra, eleifend nisi vitae, vehicula arcu. Donec sagittis sem sit amet nulla aliquam, a convallis risus ultricies. Praesent tristique magna odio, a dictum felis hendrerit quis.</div>', 'Unique Womens Accessories Trend that Will Popular Current Season.jpg', '0', 'NORMAL', '1485992959638', '1485992959638');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` varchar(110) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `stock` int(10) NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_unique_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('3', 'Derek Heart Juniors', 'Derek Heart Juniors.jpg', '23.00', '90', '0', '<div>Sed viverra arcu in neque pulvinar dignissim. Nunc euismod aliquam magna, non efficitur lectus vehicula quis. Suspendisse vitae consequat arcu, eget malesuada dui. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec quis imperdiet libero. Donec imperdiet quis lectus vitae dignissim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam pulvinar pretium ipsum, et faucibus libero aliquet et. Quisque efficitur diam sit amet quam porttitor, at dictum arcu viverra. Vivamus dapibus ante nunc, non malesuada enim gravida in. Cras bibendum eros vitae lacus efficitur, vel pretium est rutrum.</div><div><br></div><div>Praesent id efficitur risus. Nullam dui ligula, eleifend in convallis at, porta vitae massa. Curabitur sapien lorem, congue non enim non, rutrum gravida ipsum. Duis dignissim sapien in sem finibus ultrices id nec justo. Nulla hendrerit sed eros ac rhoncus. Nullam varius tellus id venenatis cursus. Cras commodo metus mauris, eget posuere sapien blandit non. Aenean fermentum ligula a libero suscipit dictum. Nulla dictum odio ut vulputate aliquam. Suspendisse potenti. Cras pellentesque vel felis sed dignissim. Proin aliquet orci tincidunt dui convallis, facilisis accumsan urna semper.</div>', 'READY STOCK', '1485624280740', '1486541362705');
INSERT INTO `product` VALUES ('20', 'NXY Soft Matte Lip Cream', 'NXY Soft Matte Lip Cream.jpg', '10.00', '90', '0', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque urna ut metus sagittis, vel congue lorem iaculis. Sed hendrerit mauris id tempor faucibus. In facilisis nibh vulputate ante porttitor, et venenatis arcu placerat. Vestibulum tempor nisi enim, eget consectetur ex accumsan fermentum. Mauris ipsum lacus, imperdiet eget purus vel, convallis euismod augue. In sed fringilla sem. Aenean ultricies ullamcorper euismod.</div><div><br></div><div>Cras non nunc est. Nunc quis dapibus lorem. Proin dignissim interdum interdum. In vitae aliquet odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam non venenatis nunc, id molestie velit. Vestibulum sagittis dui at nibh lacinia faucibus. Curabitur auctor sem diam. Aenean eu libero eget lorem tincidunt eleifend. Integer in diam felis.</div>', 'READY STOCK', '1485624280740', '1486541352723');
INSERT INTO `product` VALUES ('49', 'Sofa Living Room Recliner Nordvalla Medium', 'Sofa Living Room Recliner Nordvalla Medium.jpg', '10.00', '90', '0', '<div>Sed viverra arcu in neque pulvinar dignissim. Nunc euismod aliquam magna, non efficitur lectus vehicula quis. Suspendisse vitae consequat arcu, eget malesuada dui. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec quis imperdiet libero. Donec imperdiet quis lectus vitae dignissim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam pulvinar pretium ipsum, et faucibus libero aliquet et. Quisque efficitur diam sit amet quam porttitor, at dictum arcu viverra. Vivamus dapibus ante nunc, non malesuada enim gravida in. Cras bibendum eros vitae lacus efficitur, vel pretium est rutrum.</div><div><br></div><div>Praesent id efficitur risus. Nullam dui ligula, eleifend in convallis at, porta vitae massa. Curabitur sapien lorem, congue non enim non, rutrum gravida ipsum. Duis dignissim sapien in sem finibus ultrices id nec justo. Nulla hendrerit sed eros ac rhoncus. Nullam varius tellus id venenatis cursus. Cras commodo metus mauris, eget posuere sapien blandit non. Aenean fermentum ligula a libero suscipit dictum. Nulla dictum odio ut vulputate aliquam. Suspendisse potenti. Cras pellentesque vel felis sed dignissim. Proin aliquet orci tincidunt dui convallis, facilisis accumsan urna semper.</div>', 'READY STOCK', '1485624280740', '1486541338627');
INSERT INTO `product` VALUES ('78', 'iPhone 6 - Black', 'iPhone 6  Black.jpg', '10.00', '90', '0', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque urna ut metus sagittis, vel congue lorem iaculis. Sed hendrerit mauris id tempor faucibus. In facilisis nibh vulputate ante porttitor, et venenatis arcu placerat. Vestibulum tempor nisi enim, eget consectetur ex accumsan fermentum. Mauris ipsum lacus, imperdiet eget purus vel, convallis euismod augue. In sed fringilla sem. Aenean ultricies ullamcorper euismod.</div><div><br></div><div>Cras non nunc est. Nunc quis dapibus lorem. Proin dignissim interdum interdum. In vitae aliquet odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam non venenatis nunc, id molestie velit. Vestibulum sagittis dui at nibh lacinia faucibus. Curabitur auctor sem diam. Aenean eu libero eget lorem tincidunt eleifend. Integer in diam felis.</div>', 'READY STOCK', '1485624280740', '1486541321906');

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  KEY `fk_product_category_1` (`product_id`),
  KEY `fk_product_category_2` (`category_id`),
  CONSTRAINT `fk_product_category_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_product_category_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO `product_category` VALUES ('78', '4');
INSERT INTO `product_category` VALUES ('49', '3');
INSERT INTO `product_category` VALUES ('49', '4');
INSERT INTO `product_category` VALUES ('20', '3');
INSERT INTO `product_category` VALUES ('3', '3');
INSERT INTO `product_category` VALUES ('3', '4');

-- ----------------------------
-- Table structure for product_image
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image` (
  `product_id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  KEY `fk_table_images` (`product_id`),
  CONSTRAINT `fk_table_images` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product_image
-- ----------------------------

-- ----------------------------
-- Table structure for product_order
-- ----------------------------
DROP TABLE IF EXISTS `product_order`;
CREATE TABLE `product_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `buyer` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `shipping` varchar(20) NOT NULL,
  `date_ship` bigint(20) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `total_fees` decimal(12,2) NOT NULL,
  `tax` decimal(12,2) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product_order
-- ----------------------------

-- ----------------------------
-- Table structure for product_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `product_order_detail`;
CREATE TABLE `product_order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `price_item` decimal(12,2) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_table_orders_item` (`order_id`),
  CONSTRAINT `fk_table_orders_item` FOREIGN KEY (`order_id`) REFERENCES `product_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_username` (`username`),
  UNIQUE KEY `unique_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'User Markeet', 'user_markeet', 'user@mail.com', 'e10adc3949ba59abbe56e057f20f883e');
