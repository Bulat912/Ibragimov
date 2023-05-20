#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '8', '97', 'Possimus ut laborum in voluptatem quia sint. Veniam sit velit voluptas soluta accusamus. Maxime similique explicabo velit quo dolores dolores hic architecto. Tenetur impedit atque non qui omnis architecto. Vitae est ut rem.', 'aut', 9085, NULL, '1994-05-12 00:26:28', '2013-12-22 05:04:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '9', '79', 'Dicta est distinctio numquam. Quasi ut corrupti ex officiis et nemo omnis ex. Et corporis dolor vitae dolores nisi sint repudiandae numquam.', 'facere', 9459, NULL, '1999-07-31 16:35:13', '1997-12-11 07:03:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '10', '55', 'Qui pariatur eaque corporis rerum nihil quis. Aliquid quam beatae nostrum rerum ut. Fugit non esse doloribus quia. Illo minus provident voluptate et.', 'repellat', 37, NULL, '1985-03-12 20:17:45', '2014-10-19 15:58:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '8', '34', 'Consequatur quia dignissimos quod blanditiis soluta sapiente ut consectetur. Accusamus in modi sed corporis aliquam cupiditate nemo molestiae. Veritatis quaerat consequatur aut. Voluptatibus qui dolore voluptas enim hic dolores.', 'quam', 286, NULL, '2004-10-25 12:49:33', '2009-04-07 00:01:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '8', '22', 'Tempore aut et consectetur qui. Quis totam voluptatem voluptates doloremque minus voluptas qui illum. Iste consequatur doloremque et omnis et fuga. Quisquam porro placeat id. Aspernatur quis quae iste hic.', 'aut', 1936445, NULL, '2002-02-19 14:51:30', '1985-09-09 20:25:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '3', '46', 'Consequuntur eum sit aut eligendi error doloremque dolore. Et tempora quia odio consequuntur asperiores. Nihil hic odio sunt accusamus suscipit. Vel voluptatem eos est. Voluptatem aliquam dolorem esse sint.', 'fugiat', 77, NULL, '1989-07-19 11:05:11', '2021-12-24 14:50:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '1', '40', 'Nihil quas accusamus et. Sapiente sit quod non et perferendis. Dolorum iste voluptas dicta ab.', 'quia', 8, NULL, '2004-06-20 01:40:08', '1984-04-13 03:57:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '2', '95', 'Et ipsa dolorem excepturi enim molestiae sed voluptatem. Numquam ea eum quidem corporis. Et sint molestiae consequuntur nemo soluta porro cum et. Hic impedit dignissimos aut perferendis sed ut facere ipsum.', 'eos', 855, NULL, '1978-06-04 15:56:45', '2010-06-24 17:04:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '9', '58', 'Necessitatibus sed facere hic sequi molestias assumenda. Enim amet non harum nobis. Velit error labore aut nihil. Est placeat eligendi voluptatem praesentium reprehenderit magnam.', 'vel', 16, NULL, '2013-12-02 12:39:24', '2004-01-24 09:15:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '10', '59', 'Exercitationem ipsam qui necessitatibus molestias quasi. Ea sed nam ratione voluptatem aut molestiae. Expedita exercitationem voluptas voluptas qui et quos. Excepturi et animi consequatur neque fugit consequatur.', 'earum', 18925155, NULL, '2004-01-08 00:32:39', '1996-02-12 11:57:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '10', '50', 'Voluptatem dicta praesentium officia voluptate repudiandae id qui modi. Cupiditate nostrum minima ea nihil maxime. Et praesentium et ut soluta aperiam sunt qui.', 'perferendis', 402632953, NULL, '1981-04-30 20:01:59', '2016-05-26 02:55:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '4', '85', 'Corrupti enim totam aliquam aut sapiente sit et. Et deserunt molestias sit consequatur dolorum architecto. Voluptatem esse et maiores dolores unde. Distinctio eveniet qui quibusdam atque.', 'qui', 7081879, NULL, '2005-04-18 09:18:03', '1970-07-12 23:15:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '10', '24', 'Et non autem quibusdam ullam non. Est architecto voluptatibus atque excepturi odit maiores mollitia. Accusantium aspernatur eligendi non dolor aut et unde. Rerum ipsum voluptatem ut molestiae omnis impedit.', 'voluptas', 4444, NULL, '1998-09-09 15:45:41', '1983-01-17 04:52:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '2', '98', 'Aut maxime iusto dignissimos cupiditate voluptatem debitis. Odio quibusdam tempore ea soluta magnam dolores quia eos. Nesciunt in ea nihil sint. Ab est et cupiditate quia consequatur dicta. Saepe praesentium pariatur esse quibusdam eveniet illum amet itaque.', 'ea', 88, NULL, '2019-09-28 01:00:38', '2004-07-12 06:14:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '4', '80', 'Est quos sunt ullam maiores nam consequatur. Sint perferendis quas illum neque dolor voluptatum. Suscipit quas autem excepturi nostrum voluptate quis officiis. Quod et ipsa quos quia.', 'voluptatum', 223955036, NULL, '2015-06-19 15:07:24', '1978-08-07 02:07:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '10', '38', 'Voluptatem quaerat ut aspernatur sint. Accusamus voluptas excepturi modi corporis ea sed consequatur. Aut enim est omnis provident omnis velit fugiat.', 'non', 26529915, NULL, '2014-07-12 03:25:41', '1982-08-16 17:15:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '5', '19', 'Nam eligendi quasi consequatur maiores. Est enim a quos occaecati unde. In atque repudiandae beatae blanditiis.', 'corrupti', 189958, NULL, '1979-08-27 16:02:00', '2017-11-24 19:17:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '2', '84', 'Qui quibusdam impedit et non unde alias doloremque aperiam. Doloremque quis ad beatae est. Quis veniam optio autem accusantium.', 'id', 932164, NULL, '2003-12-06 09:01:43', '2008-12-16 23:38:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '10', '45', 'Optio et similique qui dolores nulla. Velit dolor et distinctio voluptas. Quia est omnis praesentium quis est officia.', 'reprehenderit', 8048, NULL, '2000-12-20 08:44:16', '1979-11-01 22:21:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '6', '75', 'Itaque porro dolorem soluta labore. Unde sapiente quis beatae voluptatem quia eligendi est. Mollitia explicabo recusandae reprehenderit vitae velit. Magni quasi distinctio nobis sit molestiae. Ut laboriosam est et eum in soluta assumenda.', 'fugiat', 5461285, NULL, '2017-07-04 20:07:54', '1990-01-09 04:30:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '6', '25', 'Neque provident quaerat et quia molestias vel voluptatem repellat. Ea dolor eos sint ut molestiae. Eius est sapiente veniam. Tempora ut repellendus cumque consequatur velit aut quis et. Nihil commodi quaerat temporibus quo at aliquid.', 'magni', 2, NULL, '2006-03-17 03:19:27', '1983-12-12 00:22:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '7', '49', 'Quia voluptatem ea quo enim temporibus repellendus. Accusantium nobis consequatur quo itaque voluptatem.', 'ad', 618191, NULL, '1985-10-21 02:08:49', '2003-04-05 15:16:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '5', '42', 'Laborum quae itaque ea debitis ut. Repellat in id quod quasi consequatur. Et nesciunt sunt modi hic mollitia.', 'ducimus', 444, NULL, '1977-06-15 14:59:14', '1974-01-02 05:52:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '7', '83', 'Sit optio suscipit quas velit blanditiis. Numquam perspiciatis sequi aut ipsum facere assumenda rerum. Quasi harum asperiores nulla laudantium ea autem. Dolorem mollitia quia suscipit occaecati placeat vel debitis.', 'et', 7, NULL, '1976-09-05 10:30:21', '1991-03-27 22:23:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '1', '36', 'Quis voluptate sit unde veniam vitae ex atque perferendis. Enim sapiente qui commodi. Cupiditate totam praesentium similique sunt nemo ut explicabo. Facilis excepturi et dicta consectetur. Est et necessitatibus enim aperiam iusto.', 'recusandae', 90720, NULL, '1986-02-11 13:03:36', '2018-02-07 17:29:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '8', '97', 'Ut dolor quo iure omnis. Corporis voluptatem aut itaque fugiat natus. Ducimus hic veniam quos a ad aut maiores.', 'ut', 2, NULL, '2020-03-25 23:16:15', '2013-10-21 17:35:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '6', '65', 'Consequatur ut quibusdam sit distinctio earum. Dolor amet fuga sed molestiae nulla est et. Ab suscipit omnis iste rerum. Eum eos repudiandae optio expedita.', 'beatae', 8623969, NULL, '1977-05-08 19:25:52', '1973-12-25 01:05:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '2', '16', 'Accusantium porro eum ut vitae magnam est. Ea beatae rerum quaerat nulla accusantium ipsum fuga. Inventore fuga culpa odio praesentium earum modi provident.', 'est', 6069, NULL, '2018-10-09 14:39:00', '1982-06-13 20:58:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '5', '19', 'Excepturi voluptatem deleniti in. Non autem eligendi mollitia ipsam ducimus architecto perferendis. Non quis atque voluptatem officia expedita neque sed rem.', 'et', 92, NULL, '1997-02-18 08:45:14', '1970-04-18 05:01:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '5', '3', 'Deleniti delectus eum saepe. Minus rerum eaque autem atque non eaque. Modi vel quia earum sed dolor dolores officia. Cupiditate ex et voluptate enim nesciunt.', 'et', 7532886, NULL, '2013-02-25 13:38:38', '1970-07-02 21:56:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '6', '79', 'Sunt eaque omnis saepe accusantium eos. Praesentium rerum doloribus quasi qui tenetur perferendis illum. Sapiente ullam eum aspernatur qui voluptatem sed.', 'inventore', 4, NULL, '1990-06-14 06:27:21', '2017-04-18 10:33:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '6', '29', 'Est sapiente culpa laudantium aliquam fuga est placeat. Expedita ipsam corrupti ullam aliquam eveniet. Voluptatem velit sed reiciendis accusamus. Similique occaecati ut totam deserunt nemo sunt.', 'qui', 9, NULL, '1977-08-03 04:48:24', '2019-06-23 10:42:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '2', '79', 'Laborum alias facere vitae. Veritatis sed nostrum voluptas natus. Ea provident aperiam in ut maxime quo beatae ut. Eos sit quia et dolore ratione laudantium sapiente.', 'dolorum', 68835702, NULL, '1981-07-23 00:55:04', '1996-06-04 16:08:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '5', '2', 'Nesciunt quibusdam est iusto consectetur eaque. Fugit a qui sed aliquid non neque. Ut ut fuga dolorum porro alias aperiam. Ut illo veritatis sunt corrupti architecto numquam.', 'corrupti', 420320, NULL, '1978-12-23 17:35:35', '1987-04-02 11:35:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '7', '70', 'Cum nihil hic placeat maiores harum saepe. Quod voluptatem quas libero non minus aperiam repudiandae. Qui rerum accusantium commodi quos dolorum facilis nihil aliquid. Aliquid animi voluptatem ut numquam quia ut rem.', 'et', 0, NULL, '1991-12-23 20:56:04', '2021-03-30 02:16:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '6', '11', 'Consequatur velit consequatur officiis voluptas vero ea quidem. Rem rerum officia reprehenderit beatae harum et quia. Mollitia et culpa modi quo est.', 'dolores', 5435, NULL, '1996-10-22 03:04:03', '1992-07-10 02:22:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '10', '95', 'Adipisci consectetur dignissimos voluptatibus. Nulla necessitatibus dolor earum quaerat voluptas. Quo incidunt beatae laborum.', 'aut', 50072, NULL, '2011-07-29 23:55:52', '2015-11-01 03:11:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '8', '1', 'Quis ducimus est ea qui dignissimos. Repellat recusandae laudantium molestiae sint. Aut aliquam quibusdam laborum ab similique est dolorum. Et quis quas consequatur ea veniam ipsa.', 'debitis', 916653214, NULL, '2023-03-13 13:40:16', '2016-08-08 00:49:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '10', '14', 'Officiis veniam consequatur itaque ipsum laudantium nobis rerum. Ut perferendis perspiciatis qui adipisci dolorem.', 'fuga', 935, NULL, '1977-12-23 07:42:41', '2002-04-25 13:36:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '7', '46', 'Provident repellendus neque dolor omnis sed. Sint laudantium qui omnis vel et culpa et. Rerum cupiditate voluptatem alias voluptatem voluptas eaque fuga. Ut quaerat aut placeat quae modi.', 'quia', 5, NULL, '1980-06-24 04:55:22', '2013-09-10 14:13:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '5', '78', 'Mollitia veritatis doloremque dolores numquam. Ut ab cum ut excepturi magni eaque. Eum dicta et eum totam repellendus. Ea ut quidem itaque qui est id accusantium.', 'distinctio', 624, NULL, '1996-02-16 02:10:24', '1980-03-27 21:40:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '9', '60', 'Voluptatem accusamus ea nisi molestias voluptatem quaerat consequatur voluptatem. Animi molestiae minima ut debitis. Exercitationem ipsum neque repudiandae quo et animi enim. Dolorum est aut id nemo.', 'eum', 936, NULL, '2013-08-05 23:04:43', '1989-08-26 00:25:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '8', '27', 'Illo non quibusdam dignissimos cum. Sint provident corporis possimus eius magni. Eum ut vitae molestias voluptatem adipisci ut. Voluptas in ut laborum cum earum quia qui.', 'et', 5008, NULL, '2021-06-11 07:24:07', '2003-10-21 22:16:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '2', '30', 'Suscipit nisi perferendis dolorum recusandae et rerum dolores. Nihil quasi sapiente assumenda minus voluptatem libero nihil. Veritatis et minus est sunt. Laborum sed molestias et amet.', 'magnam', 402785, NULL, '1975-06-22 16:31:06', '2004-05-07 19:08:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '9', '35', 'Debitis alias ratione ut sunt consectetur alias dignissimos. Molestias incidunt quidem ullam quis ea. Cumque debitis mollitia assumenda dolorem praesentium. Deserunt iusto omnis accusamus sapiente.', 'cumque', 0, NULL, '2020-08-25 06:38:11', '2007-05-21 13:00:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '5', '68', 'Reiciendis sint rerum ut porro cum optio. Tempore culpa voluptatibus omnis quo facilis.', 'et', 0, NULL, '1975-09-06 03:24:13', '1978-02-05 15:45:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '10', '30', 'Quasi ut quis qui sunt unde. Harum qui dolores laborum sapiente ut blanditiis aliquam. Mollitia nemo expedita voluptatum natus et enim. Sequi aliquid omnis quia ducimus sint nihil sunt asperiores.', 'at', 5, NULL, '2007-08-03 17:16:11', '2002-05-12 07:10:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '5', '46', 'Consectetur dolores veritatis quod voluptatem. Omnis natus ab fugiat numquam distinctio. Ipsam sed rem enim molestias quaerat molestiae dolores.', 'qui', 36613, NULL, '1988-07-13 23:24:43', '1979-01-12 12:22:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '1', '17', 'Dolorum nostrum consectetur dicta impedit itaque quo at inventore. Excepturi dolorem id ea a voluptatum. Porro cumque temporibus sit quidem. Iste vel ea possimus omnis quam.', 'ea', 8393408, NULL, '2009-07-17 14:39:02', '2005-11-08 13:12:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '2', '99', 'Ratione voluptas itaque quis beatae qui aut nobis. Commodi maxime id libero eum quia facere. Qui ullam reiciendis voluptatibus earum vel.', 'accusantium', 203336257, NULL, '1970-07-18 02:34:02', '2004-03-29 09:25:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '8', '78', 'Maxime nihil ut sit dolores molestiae consectetur doloribus. Adipisci accusamus sit magnam minima. Iusto et qui quisquam quia. Aspernatur est deserunt nihil enim non. Non optio ut enim rem est.', 'ut', 16697, NULL, '1971-03-16 10:41:01', '1974-06-14 15:22:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '4', '94', 'Autem ea magni repudiandae eius. Qui eligendi quo labore quidem voluptatem dolorum.', 'aut', 227600156, NULL, '1991-04-28 04:09:38', '1971-04-10 00:44:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '1', '11', 'Aliquid voluptatibus voluptatem accusamus. Deserunt aut quas quia necessitatibus. Dolor qui qui quo explicabo sit nesciunt atque doloribus.', 'assumenda', 0, NULL, '2018-01-28 04:47:25', '1999-09-25 05:53:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '8', '72', 'Culpa laudantium quae voluptates praesentium aut laboriosam. Delectus fugiat quasi ab sed sit.', 'qui', 102495, NULL, '2013-04-07 01:46:41', '2005-10-29 03:29:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '5', '91', 'Id consectetur illo est non consequuntur. Est nemo neque quis nemo debitis perspiciatis est. Dolorem sit accusamus aut blanditiis quos ullam. Quo itaque et quia ut ea dolores.', 'autem', 953579, NULL, '2001-12-02 20:57:07', '1994-12-30 22:15:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '10', '85', 'Aut qui sequi animi cumque harum. Magnam aspernatur voluptas qui.', 'in', 738, NULL, '1988-08-01 16:37:34', '1987-01-20 18:19:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '8', '75', 'Aut illo ducimus non inventore sunt iure dolorum. Veritatis dolores aspernatur eum et voluptates. Perspiciatis eius quae est reprehenderit et nihil eveniet. Eligendi corporis neque ut sint.', 'quis', 369, NULL, '1986-04-02 22:03:19', '1989-08-18 21:49:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '3', '27', 'Magnam sunt consectetur qui. Est at debitis culpa voluptas. Distinctio dolorem perferendis repellat molestiae delectus aliquam. Officiis iusto explicabo quas ut omnis ipsam.', 'laboriosam', 0, NULL, '1988-10-23 09:31:19', '1998-07-13 00:21:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '9', '67', 'Error qui atque nulla eum quaerat iusto. Exercitationem id dolorum praesentium est quia ut ipsa. Quo veritatis voluptatem ab doloremque cupiditate molestiae blanditiis.', 'sed', 4651148, NULL, '2003-07-08 07:50:50', '1994-09-20 01:31:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '4', '64', 'Fugiat expedita voluptates vitae quisquam. Et architecto qui sit nesciunt facere quod repudiandae. Voluptas iste qui accusamus cumque voluptatem magni.', 'cum', 293080, NULL, '1972-11-04 11:00:43', '1977-06-18 20:46:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '8', '72', 'Impedit id sunt dicta quo sed repudiandae. Officiis qui ea pariatur officiis voluptatem aut eos. Ex eaque ut deleniti necessitatibus et blanditiis molestias. Aliquam laudantium ipsam expedita quia sit voluptas.', 'labore', 745531312, NULL, '1980-03-27 16:24:11', '1998-04-27 09:37:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '9', '87', 'Ut voluptatem ea repudiandae in optio. Voluptate suscipit mollitia ut non mollitia fuga repudiandae. Molestias quia aut incidunt ea quibusdam. Cupiditate mollitia aut ad consequatur quaerat voluptate.', 'quasi', 346, NULL, '1993-09-01 00:32:38', '1978-07-16 16:12:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '6', '2', 'Aut eum voluptate facere. Velit et nostrum vero in. Nemo est esse commodi id laborum.', 'voluptas', 75090, NULL, '2007-10-11 15:43:44', '1983-04-27 05:16:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '9', '12', 'Aliquam et vel nisi id nihil. Dicta dolores rerum et qui est. Provident consequatur soluta cum ipsa omnis sunt veritatis blanditiis.', 'aliquid', 9130, NULL, '1990-11-15 11:07:45', '2021-03-15 05:41:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '3', '81', 'Dolorem perspiciatis nam magni iste. Molestiae earum dolores quibusdam consequatur quaerat. Est nisi ratione quia accusantium.', 'et', 5462, NULL, '2000-05-06 22:55:11', '1985-01-28 04:29:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '6', '11', 'Quos tenetur est quibusdam non. Nobis earum quisquam totam qui minima corrupti. Necessitatibus inventore blanditiis fugiat architecto sunt. Repudiandae laborum earum molestias deleniti eum saepe.', 'sed', 89, NULL, '1988-11-10 22:13:13', '1970-05-09 04:52:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '5', '78', 'Dolor doloremque beatae modi vel rerum. Quae deserunt dolorem occaecati incidunt explicabo. Sit ab quia quasi distinctio distinctio. Velit beatae dolorum sunt rerum nihil velit magnam est.', 'dignissimos', 7031687, NULL, '1979-11-01 05:54:18', '2008-10-08 04:40:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '5', '46', 'Quis in minus soluta voluptatem quidem voluptas. Commodi corporis dicta praesentium. Ut facere nulla et repellendus id.', 'molestiae', 22, NULL, '1991-12-13 05:02:21', '1983-01-01 06:13:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '4', '45', 'Aut qui perferendis officiis tempora voluptas. Quas eum nobis ut est blanditiis reiciendis libero. Quis dolores officia itaque laudantium.', 'eius', 98906, NULL, '2019-08-19 23:30:51', '2016-09-07 06:27:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '9', '69', 'Rem non optio placeat non officiis. Vero magni est repellendus praesentium rerum. Neque maxime aspernatur natus et. Accusamus impedit vero ut incidunt labore dolor quas.', 'qui', 77764, NULL, '1988-09-13 08:39:51', '1993-02-14 23:42:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '10', '58', 'Sint in magnam harum eum. Fugiat sapiente qui corporis aut quo aut fugiat molestiae. Et dolores dolor facilis sequi. Libero recusandae est blanditiis officia et.', 'nemo', 48314, NULL, '2009-07-12 00:25:04', '1978-02-07 08:03:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '7', '84', 'In odio est voluptatum vero et pariatur. Est impedit magni est recusandae laboriosam minima. Ad neque sit harum deserunt.', 'minima', 349412, NULL, '1997-07-25 20:52:57', '2017-07-31 22:04:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '10', '40', 'Iste quis quod non eius in eligendi ratione. Tenetur iste earum rem numquam. Consectetur esse dolorem possimus. Facere sit debitis sed sit aut autem architecto.', 'ea', 2, NULL, '2012-07-31 22:49:42', '2017-11-18 14:01:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '5', '48', 'Deserunt temporibus illum dolore possimus. Est tempore et voluptatum alias ut officiis similique. Mollitia et unde tempore itaque.', 'non', 36, NULL, '2004-04-20 13:58:06', '2012-03-28 20:03:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '10', '70', 'Minus ullam fugiat et fugit enim quasi quis. Voluptate quidem similique adipisci ut consequatur laboriosam quasi. Magni laborum minus aperiam autem.', 'veniam', 679791674, NULL, '1998-12-20 19:23:26', '2021-07-23 10:24:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '5', '56', 'Velit et ducimus dolorem corporis vel pariatur molestiae. Quo autem officia repellat occaecati. Sint omnis ut sed est.', 'iure', 38, NULL, '2002-08-09 00:53:34', '2015-11-22 11:05:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '4', '11', 'Sunt et optio non nam similique consequatur. Itaque vel vero harum quaerat dolorum omnis qui est.', 'accusamus', 679518, NULL, '1994-05-21 05:24:33', '1981-10-17 11:48:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '9', '94', 'Est molestias hic ullam et quaerat et voluptatem. Est hic natus rerum recusandae doloremque provident. Molestiae enim qui et illum reiciendis et ut molestiae. Aut cumque natus qui illo repudiandae et.', 'ad', 48380784, NULL, '2021-04-13 06:35:44', '1980-04-18 11:09:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '7', '62', 'Quos modi non quo distinctio ut magnam. Odit quod facilis accusamus animi labore enim. Ut ut debitis dolorum.', 'eum', 1, NULL, '1990-12-02 22:22:36', '2006-07-12 05:32:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '9', '41', 'Est est accusamus cumque quia velit fugit. Itaque nostrum facere tempora expedita quos totam. Quos atque exercitationem sed iure corporis pariatur necessitatibus. Sed tempore doloremque rem est est.', 'dolore', 0, NULL, '1974-08-13 14:25:02', '2018-09-14 10:52:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '1', '87', 'Unde inventore voluptas voluptatem blanditiis. Culpa quia quaerat nesciunt et. Maxime iure aut et assumenda aliquam quod dolorem veniam.', 'et', 37043, NULL, '1992-12-08 09:46:46', '1981-01-02 14:24:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '2', '29', 'Neque alias facilis inventore sit vitae vero voluptas. Hic et at vitae aliquid ut. Quo deserunt dolores ducimus dolorem sapiente dolore quos ut.', 'quae', 0, NULL, '1999-09-27 18:41:32', '1990-06-03 02:14:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '2', '100', 'Laboriosam consequatur et qui voluptas eius ut perferendis. Sunt itaque quas sint assumenda deserunt laudantium cum. Ut sunt omnis est sed aut nam maxime provident.', 'esse', 352345619, NULL, '1998-10-28 07:25:19', '2016-01-06 14:42:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '10', '14', 'Ipsam fugiat id aut neque asperiores iste maxime. Beatae aspernatur ipsum qui doloribus et voluptates quis. Autem incidunt ipsa deserunt qui fuga neque reprehenderit. Deleniti autem fuga et deleniti. Sed quaerat consequatur quod id et.', 'earum', 50, NULL, '1995-04-04 18:51:16', '2007-04-01 04:59:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '2', '34', 'Fugit iure inventore minima suscipit voluptate. Dolor est nobis molestiae dolore. Incidunt eum sed quis illum repellat. Aut quia eos eos id magni illo officia.', 'recusandae', 53502, NULL, '2022-06-27 10:00:18', '2005-07-29 15:52:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '9', '59', 'Animi eveniet sit molestiae odio voluptatem numquam. Consequuntur repellat doloremque sed.', 'et', 48900415, NULL, '2018-12-24 10:57:58', '1990-10-28 00:18:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '10', '30', 'Assumenda molestiae alias eveniet vero. Blanditiis minima quos quos reprehenderit. Et et nemo veniam minima cum qui.', 'saepe', 1797853, NULL, '1984-12-29 13:07:30', '1984-03-24 07:41:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '8', '30', 'Pariatur ipsum similique cum voluptatem omnis dicta. Quam soluta ut nulla aliquam voluptatem aliquid. Aut aut quia ipsum. Doloremque suscipit illum sequi ut est est. Amet assumenda ut et et sunt non.', 'quidem', 4953, NULL, '2019-04-05 10:51:52', '1998-11-20 10:36:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '1', '42', 'Inventore aut minus quam. Officia dolorum dolorum et vero ea optio. Voluptatem debitis atque doloribus dolores.', 'necessitatibus', 41528, NULL, '1981-05-28 15:49:08', '1975-12-07 08:18:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '1', '25', 'Et doloribus suscipit fugit molestias. Corrupti qui omnis est ut qui. Quia eius saepe sit explicabo. Accusamus molestiae optio nemo perferendis et laborum et.', 'animi', 3, NULL, '1993-10-05 10:53:20', '2022-06-27 14:33:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '2', '16', 'Et officiis ea et ut. Optio exercitationem quisquam dicta voluptatem. Sit vitae non repellendus.', 'voluptatem', 8942, NULL, '1978-05-21 11:06:52', '2019-12-16 13:17:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '8', '55', 'Animi eveniet deserunt deleniti. Molestiae accusamus repellat cupiditate et distinctio. Ut aperiam ipsum debitis ut.', 'saepe', 9, NULL, '1977-09-18 20:39:12', '1970-11-09 07:59:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '3', '1', 'Dolore vero accusamus esse quas eum. Officiis excepturi et natus facilis. Quibusdam omnis vel sit et magnam. Eligendi illo ratione cumque beatae.', 'vero', 0, NULL, '2007-12-20 21:58:17', '1983-07-22 16:36:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '10', '70', 'Nostrum sunt ullam deleniti. Voluptatem nisi et minus. Ut veniam dolor neque impedit et a maxime. Tempore iure illo quo minus voluptatem culpa.', 'eum', 28, NULL, '1995-02-13 11:46:53', '2005-09-15 21:40:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '1', '35', 'In cupiditate cum quos expedita quod sed sed. Voluptas voluptatum fuga atque. Voluptatem suscipit velit dolorum nisi voluptas.', 'accusamus', 37495, NULL, '2021-06-15 19:49:27', '1988-01-20 21:09:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '6', '30', 'Aut eum rerum ipsum dolorem. Dolore dolorum ea quam nostrum aliquam perferendis labore. Animi eum et tempora ipsam hic voluptatum est.', 'cumque', 91208972, NULL, '2007-02-11 09:17:23', '1983-05-17 10:44:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '6', '65', 'Et consequatur quidem suscipit fuga consequatur aliquam. Illo quas modi temporibus nisi. Earum aperiam et ad cumque corrupti rerum.', 'modi', 910682, NULL, '2012-08-28 19:21:23', '2022-10-01 09:37:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '7', '40', 'Nemo quibusdam qui eius delectus. Aut sit autem voluptas occaecati placeat ut. Neque sunt et dolore molestiae.', 'corporis', 53076910, NULL, '2004-10-18 16:34:33', '2001-12-16 09:41:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '1', '52', 'Sunt magni rerum doloribus fugit dolor sunt et. Qui molestiae voluptatem non dolor reprehenderit ipsa nesciunt.', 'nostrum', 4, NULL, '1978-11-23 02:50:33', '2006-01-29 17:50:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '5', '15', 'Fugit quis sed rem occaecati vitae. Ea id nesciunt et. Voluptatem sed minima ipsa minus. Nobis repudiandae velit quidem. Omnis molestias consequatur deleniti officiis eos ea.', 'expedita', 206, NULL, '1978-06-23 22:42:03', '2006-06-05 20:53:03');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'culpa', '2018-04-26 14:19:50', '2014-09-09 19:16:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'sapiente', '1991-03-28 00:44:50', '2019-11-07 00:40:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'eveniet', '1979-02-03 14:28:00', '2014-07-20 08:44:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'necessitatibus', '1983-04-18 17:31:25', '2003-10-07 17:51:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'dolorum', '2020-01-17 19:56:36', '1999-01-12 17:30:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'quae', '1973-05-14 01:47:04', '2002-09-03 21:06:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'rerum', '1976-07-21 22:09:44', '2002-07-06 23:38:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'necessitatibus', '1991-08-03 18:21:21', '1988-10-09 19:06:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'similique', '1981-12-06 04:07:17', '1993-09-01 23:36:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'vitae', '1998-05-10 06:05:58', '2000-06-08 19:20:15');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '15', '8', 'Alias occaecati eum ipsam numquam numquam. Eum voluptatem ea praesentium nostrum velit qui nihil. Non corporis aut delectus saepe quia harum quo labore. Quo deserunt commodi atque qui eos corrupti. Provident nihil quis inventore minus.', '2020-02-18 16:22:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '13', '10', 'Ipsum consequuntur eligendi consectetur ducimus autem. Eum consequatur ut quidem dolor veniam. Voluptas et ea voluptatum. At sed eius et.', '2020-09-20 08:49:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '41', '20', 'A eum ducimus tenetur consequuntur. Nostrum voluptates qui eum corrupti et dolores. Sed fuga corrupti aut quo aut. Eveniet quos voluptatem voluptatem nobis blanditiis odio.', '1997-12-22 15:13:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '52', '45', 'Eum consequatur sit facilis dolore. Quia recusandae non iusto ut consequatur minima. Quaerat perspiciatis adipisci voluptatum sit totam ad.', '1988-07-18 14:10:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '32', '27', 'Quos delectus exercitationem mollitia voluptatem sequi et commodi. Reprehenderit corporis doloribus voluptas dolor. Voluptatem non tempora provident blanditiis aperiam alias ut blanditiis.', '2013-09-02 03:32:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '90', '59', 'Vero in et voluptates nulla qui fugit. Ut voluptates atque voluptatem dolorem temporibus accusantium sit. Molestiae velit exercitationem qui voluptatem nobis facere voluptatibus saepe.', '1976-06-29 13:30:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '85', '85', 'Quia in autem consequatur cupiditate. Voluptas nisi blanditiis asperiores quia error repellat cupiditate.', '1981-05-12 02:02:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '97', '29', 'Omnis nihil quibusdam consequatur laboriosam. Laudantium quis amet excepturi ea a error. Doloremque dicta omnis cumque voluptas pariatur quos delectus ipsum. Quis dignissimos perferendis aut optio.', '1970-05-04 22:27:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '15', '83', 'Animi beatae exercitationem facere modi consectetur sit neque inventore. Aperiam aperiam aut ipsa cum ea repellendus. Odio et debitis quis exercitationem sit. Consequuntur expedita sit animi officia architecto exercitationem dicta doloremque. Illum laboriosam sequi facere debitis quisquam quo veniam.', '1978-01-04 13:31:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '9', '50', 'Et expedita odit ipsam. Ipsum iure quidem dolorem molestiae mollitia. Aperiam sunt et beatae et debitis aut.', '1986-11-02 19:29:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '21', '19', 'Soluta amet rerum nostrum harum velit. Suscipit non et debitis itaque qui aspernatur.', '1995-12-19 00:42:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '16', '67', 'Necessitatibus illum laborum explicabo laborum explicabo. Dolorem cupiditate magnam nihil animi. Aut quibusdam porro et dolorem dolores eos est consequatur. Debitis odio magnam qui quod quas ratione.', '2012-04-07 03:54:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '26', '26', 'Voluptas eum aperiam eos rerum aut. Repudiandae praesentium non numquam at. Ut consequatur iure molestiae illo.', '1974-11-29 21:57:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('14', '56', '17', 'Ea eum repellat deserunt dignissimos repellat. Voluptatem blanditiis iste incidunt tempore vitae adipisci commodi. Et iste et sit ut voluptatum.', '2004-01-28 22:47:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('15', '72', '84', 'Voluptas vero aut exercitationem. Eum non occaecati nemo quae omnis eum. Atque voluptas quos eaque aut exercitationem. Ex dolores quis incidunt similique et aperiam officiis.', '2020-11-17 20:21:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('16', '4', '33', 'Quam nemo ut sunt quaerat saepe. Amet autem natus atque culpa perspiciatis impedit alias. Minima rerum expedita quo.', '1994-07-08 14:43:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('17', '66', '34', 'Eos dolores eveniet placeat. Mollitia necessitatibus beatae est commodi soluta quidem est. Laboriosam ut quasi aut eligendi ea distinctio autem asperiores.', '2002-11-10 02:08:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('18', '74', '65', 'At ad non unde quo animi. Reprehenderit sequi alias ut voluptatem est quia. Possimus ut ad sit et placeat aut.', '1997-09-01 15:49:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('19', '83', '6', 'Sit tempora delectus et ut. Necessitatibus quis ut quis. Inventore reprehenderit expedita qui eos placeat numquam.', '1977-08-09 10:42:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('20', '75', '66', 'Veniam aut molestias tempore distinctio eum. Nesciunt mollitia voluptates et vero. Optio dolores eveniet tempore. Cumque omnis non iste natus esse enim.', '2001-09-20 03:03:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('21', '95', '13', 'Voluptatem quia ex voluptatum debitis quam qui quia. Veritatis aut sed praesentium quia. Illo fugiat officia eos dolorum quia.', '1974-09-05 09:18:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('22', '78', '24', 'Fuga laudantium sunt blanditiis sed deserunt dicta. Voluptas et quaerat officiis reprehenderit.', '2015-07-07 19:18:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('23', '56', '42', 'Et vel consectetur et consequatur perspiciatis vero quod. Ut architecto debitis commodi inventore provident quibusdam. Est enim blanditiis nisi culpa autem et facilis facilis.', '1978-12-10 16:08:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('24', '37', '22', 'Ratione neque rerum in iusto. Occaecati est et quam voluptatibus.', '1981-04-17 14:39:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('25', '16', '83', 'Tenetur et ut facere sed architecto possimus qui. Magni reiciendis et dolores qui velit blanditiis doloremque consequatur. Ex eos illum tenetur saepe. Quo et delectus animi. Deleniti quam nesciunt ut voluptatem aut.', '2001-01-05 16:04:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('26', '90', '42', 'Quidem reiciendis veniam quia officia saepe. Voluptates aut molestias maxime atque. Quasi voluptates quia itaque. Soluta dolore officiis delectus a maxime quae.', '2016-09-15 00:41:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('27', '61', '76', 'Placeat ut omnis blanditiis qui praesentium. Et quasi et sed est. Reiciendis eaque aut error alias.', '1993-10-02 21:52:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('28', '38', '22', 'Placeat odio nihil perferendis sunt inventore. Quaerat repudiandae ut nobis assumenda consequatur qui. Recusandae voluptatem voluptatem incidunt a totam. Nihil natus facere odit.', '2000-12-28 06:06:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('29', '71', '24', 'Deserunt placeat vero veniam neque eligendi molestiae maiores. Consequuntur rem officia odio accusantium consequatur quam. A nisi voluptas quo in molestiae.', '1994-12-15 01:08:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('30', '64', '48', 'Quia iure quae veniam consectetur commodi qui unde. Unde non velit nemo excepturi ut dolorum. Earum quia sit libero voluptas.', '2010-12-10 22:05:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('31', '27', '25', 'Voluptatem ea rem excepturi repudiandae sit. Corrupti ut nesciunt ut minima architecto quidem. Omnis ut est eum quaerat maxime. Placeat sint fugit magnam vero adipisci dolorem et.', '2001-05-02 17:13:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('32', '40', '88', 'Provident sit non aperiam et suscipit pariatur enim aut. Aspernatur sit recusandae totam doloribus. Dolorem neque maxime magnam aut voluptatem a error. Commodi distinctio architecto aut amet recusandae exercitationem provident.', '1983-10-24 15:46:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('33', '64', '46', 'Ut quam id perspiciatis. Nobis perspiciatis mollitia magnam quia. Veritatis necessitatibus maiores placeat nihil minima.', '2005-09-07 20:37:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('34', '86', '82', 'Qui minus ea minus sit. Cum quidem odit qui est aut recusandae possimus.', '2012-03-11 11:03:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('35', '25', '57', 'Quia qui qui cumque quibusdam provident. Sit earum reprehenderit ut at maxime ducimus. Quam fugiat enim itaque sunt voluptatum dignissimos eligendi.', '2019-10-08 02:28:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('36', '1', '72', 'Qui dolores animi non ipsam. Qui qui nobis quis. Dolores unde quia facere et ipsum quae rerum. Eius quis quae architecto.', '1998-01-12 21:58:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('37', '96', '74', 'Et quis atque dolorem dolorem ipsam itaque aperiam. Ut repellendus aliquam nemo eius accusamus suscipit odio. Qui sit minus a quidem. Dolorem voluptatibus distinctio debitis adipisci a tempora velit.', '2020-07-09 10:42:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('38', '59', '17', 'Fuga maxime voluptatem ipsam asperiores et. Molestias voluptatem minima voluptas tenetur vel. Nulla laudantium qui iste qui perspiciatis.', '1970-02-03 18:14:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('39', '82', '86', 'Eum officia atque quae pariatur eaque assumenda. Porro voluptates dolor quo adipisci voluptatibus. Nobis qui ut incidunt nam. Quo earum ut blanditiis officia voluptatem molestiae sit.', '2012-02-13 10:52:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('40', '97', '22', 'Facere reprehenderit aut esse at quaerat rem omnis dicta. Aut et et eum. Et ipsam omnis dolorem nisi expedita. Nihil sed dolor perferendis occaecati accusantium assumenda vero.', '1989-11-20 18:50:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('41', '45', '76', 'Aut dolor recusandae occaecati ab tempore consequatur. Expedita enim est porro repellendus sint sed. Voluptatibus voluptate enim amet optio necessitatibus labore ducimus.', '2016-07-27 16:32:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('42', '1', '94', 'Dolor in nihil id. Nihil nostrum qui fugiat quidem libero voluptatem aliquid. Sed alias quo odio dolorem.', '1971-01-28 06:20:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('43', '65', '58', 'Accusantium vero fugiat assumenda omnis non natus. Esse est quod ipsum et. Sit sint et voluptatibus nulla debitis possimus.', '1974-04-23 13:49:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('44', '86', '90', 'Dolorum voluptatem molestias molestiae. Sint voluptas in in et. Omnis aut voluptate unde minima aut et aspernatur tempora.', '1982-02-10 08:09:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('45', '4', '63', 'Quo ut corporis ut inventore dolores. Fugit ut rerum hic in iste voluptatem maiores facilis.', '1998-08-08 20:10:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('46', '41', '99', 'Quod adipisci fuga quaerat quae ea qui exercitationem. Fugiat ullam eaque aliquid qui. Pariatur est praesentium omnis inventore consequatur rerum facilis. Voluptates doloribus iste ea sunt mollitia.', '2008-02-02 05:21:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('47', '60', '52', 'Mollitia tempora ratione iste ipsa. Quaerat iste quia blanditiis id earum distinctio eum incidunt. Voluptates rerum ex est quidem dolores non libero. Voluptatum in nobis facilis totam quasi.', '2003-03-18 07:48:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('48', '20', '11', 'Velit voluptatibus est rerum. Nemo eum perspiciatis rerum doloremque ratione. Veritatis est laudantium adipisci non. Repudiandae voluptas autem autem asperiores sapiente.', '2009-07-11 01:09:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('49', '53', '53', 'Veritatis adipisci nemo quod adipisci similique. Non dicta commodi ad occaecati nihil et. Iste eum eius labore ullam. Deleniti possimus quia repudiandae nostrum.', '1977-05-19 15:47:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('50', '73', '71', 'Pariatur nisi at repellat qui. Et autem totam voluptatem libero. Est itaque veniam quia voluptas rerum sequi. Et itaque reiciendis itaque modi. Recusandae reiciendis autem qui optio id.', '1997-11-01 20:46:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('51', '87', '95', 'Blanditiis eligendi ut quisquam nobis et quam est. Quibusdam unde veritatis molestias ratione odit iure. Tenetur mollitia laudantium iure impedit quia.', '1994-09-07 15:39:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('52', '76', '35', 'Harum ex tempora nisi quas eveniet eius. Placeat deserunt expedita animi consequatur qui. Eligendi itaque quisquam sit sed dolorem quisquam minima eligendi.', '2005-01-06 22:48:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('53', '59', '19', 'Enim tempore nesciunt modi voluptate perferendis dolores. Corrupti exercitationem iste ut fugit aut qui cum. Recusandae eligendi autem hic perspiciatis laudantium impedit. Et expedita quod illo quia in voluptatem molestias.', '1970-03-13 12:07:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('54', '54', '1', 'Minima nobis velit voluptatem velit ex. Atque aut modi iusto. Quas voluptate voluptatem sed consequatur sed quas unde est. Quos necessitatibus placeat odit aut.', '1974-05-14 12:09:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('55', '6', '58', 'Mollitia nulla unde et neque et voluptas quos. Et qui veniam perferendis quia repudiandae aliquid est. Necessitatibus et dolores quia pariatur.', '1971-07-23 05:02:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('56', '70', '3', 'Facilis quae voluptatem quaerat quia et dolores a. Eos rerum quod eveniet hic reiciendis.', '1971-03-05 09:57:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('57', '45', '2', 'Aut aperiam fugit omnis atque odio. Suscipit non fuga ad eveniet sit.', '1997-05-22 04:39:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('58', '4', '93', 'Magni rerum quia vel veritatis vel corrupti. Iure facilis et tempore libero. Consequuntur culpa ea consequuntur ex in. Ea consequatur magnam eum voluptatem repudiandae.', '2005-10-11 22:35:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('59', '64', '34', 'Quia laboriosam accusamus assumenda et minima omnis molestias. Mollitia id et dolorum dolore. Doloremque aspernatur officiis blanditiis adipisci aliquam saepe ipsa.', '2000-12-22 01:13:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('60', '73', '42', 'Sed ipsam aut est voluptatem. Nihil rem inventore reiciendis in recusandae. Mollitia repellat repudiandae ullam.', '1990-04-17 20:28:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('61', '53', '18', 'Natus consequatur hic dolorem hic excepturi. Omnis autem incidunt ut iure sed dignissimos ipsa perspiciatis. Eum ratione et tenetur qui nisi molestiae ut neque. Cupiditate libero numquam distinctio cupiditate ut esse.', '1981-06-22 11:25:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('62', '100', '76', 'Soluta dicta consequatur qui et quis maxime. Expedita quis aliquam sint ad qui ut. Iste sed exercitationem nam vel laudantium. Vitae facilis necessitatibus magni assumenda.', '1973-10-04 13:09:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('63', '34', '30', 'Aut ducimus aut deserunt quod. Et qui aut blanditiis. Et ut nemo accusamus aut nobis ut nemo.', '2018-06-21 18:57:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('64', '37', '93', 'Ut qui voluptas consequatur sit. Asperiores necessitatibus iure alias. Enim error atque officia exercitationem corporis ut aut.', '2021-09-07 06:49:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('65', '4', '47', 'Placeat vel sit est aliquam. Quas quisquam dolore esse rem et recusandae error. Voluptates in consequatur dicta qui. Delectus hic ab omnis molestiae qui aut.', '2007-02-19 17:35:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('66', '37', '61', 'Quia sunt et eos voluptas voluptas. Quidem culpa quod eligendi exercitationem culpa dolor iusto. Est at saepe est est nisi beatae sit.', '1985-05-03 22:06:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('67', '68', '58', 'Ipsa cupiditate excepturi quibusdam libero. Est et numquam voluptate labore.', '1990-03-20 19:54:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('68', '16', '79', 'Ipsa qui est voluptatem facilis. Perferendis dolorem molestiae quam fuga esse quis. Et odit voluptates fuga voluptas quo nulla. Earum voluptatem dolores occaecati ducimus.', '2004-10-22 01:34:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('69', '23', '29', 'Aspernatur neque et porro corrupti sunt. Dolor ut eos perferendis aut similique.', '1990-12-18 12:32:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('70', '44', '93', 'Reprehenderit dolores unde dolorum tempore. Eligendi error magnam hic et. Et qui commodi est quasi ducimus sit rem. Distinctio ut magni quasi sit non ipsa.', '2010-11-26 03:37:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('71', '15', '52', 'Officia similique praesentium et eos quae ipsam consequuntur. Odit sed ut et veniam earum. Quo quibusdam dolorum ut animi optio ut nobis. Sint ut dicta quis incidunt.', '1987-01-25 18:57:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('72', '5', '82', 'Quae numquam odit praesentium distinctio ut cumque dignissimos aspernatur. Nobis rem est voluptas non. Et saepe consequatur rem corrupti eius eum quisquam.', '2000-05-02 13:33:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('73', '79', '15', 'Dolorum ut praesentium amet et blanditiis et. Quisquam est eaque molestiae. Dolor id minus cum ratione minima.', '2018-02-11 21:02:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('74', '23', '70', 'Voluptas quo quisquam ea non vel aliquam. Est consequuntur non qui amet aut quia est. Voluptas doloremque quaerat cum a est. Tenetur ratione sit sapiente sint. Eligendi dolorum earum quis aut qui reprehenderit tempora.', '2021-07-16 00:12:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('75', '44', '81', 'Minus odio ullam aliquam et. Ex vel atque commodi. Iure rerum aut nihil rerum eum est voluptatem. Rerum omnis error vero velit nobis voluptatem occaecati.', '1980-06-17 06:12:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('76', '98', '72', 'Saepe et et vel dolores aut. Eum quaerat est earum necessitatibus. Quas cupiditate magnam ut consequatur praesentium qui. Labore quisquam dolorum itaque reiciendis. Provident ut pariatur explicabo.', '2003-11-13 04:56:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('77', '22', '89', 'Earum quam dolor est quo alias. Quaerat laudantium veritatis dolorum dolorem magnam. Consequatur est animi necessitatibus et eum.', '2019-06-20 03:52:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('78', '73', '53', 'Voluptas eligendi autem ratione dolorum. Repudiandae aut adipisci pariatur neque qui aperiam ea. Nostrum dolores distinctio ut molestiae. Eius alias et id excepturi deserunt sunt.', '2019-08-29 22:59:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('79', '8', '11', 'Corporis eligendi occaecati aliquam reprehenderit aspernatur tempora neque nam. Velit deserunt saepe adipisci expedita quos. Consequatur reiciendis atque sint rerum quia aut.', '2021-01-19 12:22:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('80', '2', '26', 'Illo reiciendis enim itaque voluptatem. Molestiae earum perspiciatis nulla consequatur in voluptas nemo. Magni pariatur praesentium beatae autem.', '1977-08-30 14:42:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('81', '39', '96', 'Dolorem et necessitatibus enim molestiae. Ipsa et esse et enim excepturi eligendi. Minus inventore voluptate tenetur voluptas.', '2017-09-28 07:55:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('82', '95', '1', 'In voluptas doloribus sint pariatur aut quia. Aut est tempore sunt quibusdam velit rerum ipsa. Autem culpa nesciunt soluta id. Laboriosam dolor aut amet harum.', '1985-09-11 14:22:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('83', '47', '17', 'Atque necessitatibus soluta voluptas dolor. Doloremque tempora laudantium rem debitis harum quae. Nihil dolores qui in nostrum. Totam suscipit occaecati culpa.', '2018-12-01 10:45:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('84', '43', '67', 'Ad similique nobis ut quia. Eos magnam aperiam sed atque dolores impedit. Provident sed delectus inventore facilis. Qui sunt consequatur quia voluptatum aut tempora quisquam.', '1999-05-03 14:46:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('85', '59', '13', 'Dolorum tempore sunt voluptas eaque quisquam. Et quisquam sapiente delectus vero earum similique fuga. Alias reprehenderit magni est dolorum eum ipsam fugiat.', '2004-04-06 17:46:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('86', '64', '51', 'Eaque unde ut nisi ut repellendus. Voluptate explicabo sit eum earum cum natus. Similique eligendi rerum odit voluptatem dignissimos inventore tenetur. Ratione ut enim maiores sint explicabo eos.', '2008-10-14 19:10:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('87', '12', '73', 'Odit qui quia perferendis animi asperiores qui. Facilis aperiam cupiditate enim voluptate aliquam qui. Aut dolor excepturi mollitia libero. Exercitationem recusandae qui id in perferendis laboriosam.', '2004-06-24 17:46:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('88', '9', '50', 'Quis eveniet et aut quidem aut molestiae. Quaerat sit qui deserunt veniam itaque. Vel harum repellat reprehenderit earum quasi dolore. Aut omnis omnis minima suscipit.', '1977-02-03 20:07:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('89', '68', '26', 'Molestias distinctio facilis quas minima. Porro sed quia est est nemo totam quo animi.', '1974-07-20 19:23:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('90', '86', '67', 'Doloremque et praesentium similique non aut. Est inventore quisquam et aut. In sit et dolorum omnis. Enim aut iste dolor dolor.', '1989-10-10 07:43:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('91', '8', '91', 'Nesciunt ab eligendi quis ut. Nihil cupiditate mollitia magnam laudantium. Saepe maxime fuga sint saepe dolorum assumenda ex voluptas. Quidem qui totam quae similique rerum est.', '2020-06-06 12:13:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('92', '29', '72', 'Dignissimos possimus fugit magnam totam neque voluptatem praesentium. Impedit nostrum illo animi iusto repellendus. Deleniti et rerum suscipit alias incidunt veniam dolorem. Quisquam tenetur autem optio soluta animi.', '1989-10-22 17:04:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('93', '80', '75', 'Error qui iste eius sint. Illum et non atque quo. Rerum delectus recusandae et ad ipsum in ut.', '1994-11-22 05:26:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('94', '29', '77', 'Vitae tempora fuga eligendi ut quod reprehenderit similique. Et veritatis non cupiditate eum et in qui. Inventore qui repellendus aliquid aut tenetur repellat.', '2000-02-05 06:41:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('95', '41', '70', 'Quo non libero nulla ut saepe iste cupiditate. Recusandae porro dolor vel assumenda asperiores explicabo. Ut rerum maxime commodi odio dolor quia esse.', '1979-10-20 14:11:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('96', '47', '7', 'Laborum eos et recusandae sed repudiandae error dicta. Qui deserunt recusandae harum maxime minus quo eveniet. Consequatur accusamus provident veritatis dolore ad eligendi dicta. Sed odio aut recusandae quis consequatur sapiente quia. Rem corporis provident est accusantium natus.', '2015-10-27 20:48:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('97', '92', '80', 'Iure atque quidem quos sit. Autem vero sunt placeat sunt qui nihil voluptatibus facilis. Harum consequatur iste rerum.', '2014-10-13 07:46:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('98', '83', '17', 'Vitae nesciunt itaque pariatur ipsa. A nemo modi officia id ea officiis repellendus sequi. Iusto iure nisi ut provident dolore.', '2012-02-25 02:13:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('99', '35', '78', 'Quisquam ex fuga nihil temporibus officia officia. Dignissimos modi est harum minima est voluptatem. Temporibus mollitia ratione facilis voluptatem sint. Sed saepe dolorem hic aut molestiae ipsa.', '1971-11-07 08:24:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('100', '44', '7', 'Quo corrupti praesentium rerum exercitationem ea dolorem aut libero. Quis commodi odio quibusdam. Tenetur rerum aut laborum vel quod incidunt.', '2002-12-10 17:30:57');


#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'sint', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'amet', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'ut', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'ut', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'quaerat', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'officia', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'quod', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'voluptatem', '60');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'nemo', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'officiis', '76');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'ut', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'commodi', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'doloremque', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'iure', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'aut', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'laborum', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'eos', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'enim', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'voluptatem', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'aliquid', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'beatae', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'exercitationem', '35');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'dolor', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'eos', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'fugit', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'similique', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'nisi', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'nihil', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'officia', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'debitis', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'numquam', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'corporis', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'quisquam', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'qui', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'ad', '69');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'dicta', '24');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'cumque', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'voluptates', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'est', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'sapiente', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'facere', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'consectetur', '94');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'libero', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'nobis', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'et', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'quas', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'deserunt', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'placeat', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'voluptas', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'cumque', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'dolor', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'repudiandae', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'maxime', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'aut', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'quae', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'eius', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'ipsum', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'esse', '84');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'nam', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'aut', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'doloribus', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'voluptas', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'et', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'asperiores', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'quis', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'rerum', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'rerum', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'velit', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'ipsum', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'a', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'similique', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'cumque', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'nulla', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'consectetur', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'cumque', '55');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'dolores', '76');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'quasi', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'dolorem', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'cumque', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'qui', '56');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'dolor', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'minus', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'aut', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'quidem', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'dolore', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'et', '100');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'est', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'aspernatur', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'laboriosam', '24');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'sequi', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'molestiae', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'sit', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'a', '37');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'quae', '84');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'iste', '73');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'laboriosam', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'est', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'voluptates', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'ut', '35');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'placeat', '84');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2401', '38', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2402', '68', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2403', '25', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2404', '60', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2405', '38', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2406', '2', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2407', '72', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2408', '43', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2409', '70', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2410', '30', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2411', '45', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2412', '34', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2413', '74', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2414', '95', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2415', '22', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2416', '77', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2417', '99', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2418', '12', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2419', '82', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2420', '39', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2421', '43', '21');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2422', '31', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2423', '94', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2424', '25', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2425', '62', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2426', '63', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2427', '75', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2428', '82', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2429', '79', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2430', '42', '30');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2431', '96', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2432', '75', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2433', '68', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2434', '58', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2435', '83', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2436', '23', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2437', '44', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2438', '55', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2439', '90', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2440', '44', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2441', '28', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2442', '93', '42');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2443', '65', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2444', '4', '44');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2445', '75', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2446', '36', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2447', '18', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2448', '72', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2449', '37', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2450', '11', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2451', '23', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2452', '43', '52');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2453', '67', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2454', '1', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2455', '67', '55');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2456', '63', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2457', '13', '57');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2458', '47', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2459', '63', '59');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2460', '68', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2461', '15', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2462', '99', '62');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2463', '16', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2464', '75', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2465', '51', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2466', '56', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2467', '73', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2468', '69', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2469', '59', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2470', '10', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2471', '41', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2472', '61', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2473', '75', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2474', '35', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2475', '80', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2476', '44', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2477', '19', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2478', '46', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2479', '79', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2480', '29', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2481', '60', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2482', '31', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2483', '19', '83');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2484', '45', '84');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2485', '7', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2486', '21', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2487', '19', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2488', '32', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2489', '69', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2490', '48', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2491', '95', '91');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2492', '24', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2493', '9', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2494', '97', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2495', '33', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2496', '34', '96');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2497', '59', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2498', '14', '98');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2499', '32', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2500', '77', '100');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', 'm', '2020-09-10', '2442', '1981-12-19 23:31:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'f', '1977-10-30', '2460', '1975-01-26 06:44:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', 'f', '2007-06-03', '2407', '1995-10-02 15:33:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 'm', '1997-10-17', '2486', '1998-05-26 23:59:14', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 'f', '1996-03-19', '2474', '2010-07-29 09:41:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 'm', '1996-09-05', '2489', '1982-12-22 02:25:27', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', 'f', '1970-03-04', '2496', '1983-11-03 00:21:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', 'f', '2020-05-12', '2462', '2020-05-30 03:02:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', 'm', '1991-02-05', '2469', '2011-02-13 16:41:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 'f', '2001-12-11', '2439', '1997-02-04 09:30:53', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', 'f', '1992-05-26', '2406', '1978-01-22 10:25:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', 'm', '2021-01-11', '2417', '1992-10-27 14:43:55', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', 'f', '2000-07-03', '2408', '1993-02-03 09:59:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', 'f', '1994-09-21', '2445', '1995-02-20 15:58:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 'f', '1986-08-07', '2425', '2002-10-23 19:56:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', 'f', '2017-06-25', '2434', '1992-05-20 03:29:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 'f', '1978-12-14', '2426', '2003-12-11 13:29:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', 'f', '1988-06-07', '2480', '1978-01-24 18:48:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 'f', '2003-07-12', '2471', '2009-11-06 15:35:29', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 'm', '1985-03-01', '2468', '1974-11-01 06:39:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', 'm', '1977-11-09', '2402', '2007-08-10 20:23:07', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', 'f', '1974-03-09', '2405', '1994-01-13 05:10:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', 'f', '1984-04-12', '2438', '2003-09-05 11:06:29', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', 'm', '1999-03-26', '2482', '2009-03-02 06:53:27', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', 'm', '2008-09-27', '2423', '1970-05-19 15:01:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', 'f', '2003-03-18', '2435', '2002-12-01 06:05:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', 'm', '2019-01-12', '2427', '2014-11-04 11:06:41', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', 'f', '2022-12-20', '2483', '1987-11-30 22:23:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', 'f', '2022-03-01', '2497', '1986-09-10 17:52:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', 'm', '1984-07-08', '2485', '1970-12-12 05:54:32', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', 'f', '2007-10-17', '2460', '2022-11-08 19:20:15', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', 'f', '1987-07-11', '2473', '1975-01-28 20:17:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', 'm', '1992-12-14', '2454', '1980-01-07 15:42:59', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', 'm', '2000-09-23', '2415', '2009-01-23 17:16:25', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', 'm', '2016-08-06', '2478', '1981-08-17 02:24:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', 'm', '2016-01-31', '2474', '1985-06-29 18:52:53', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', 'm', '2009-06-18', '2428', '2016-04-22 14:15:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', 'm', '1981-04-19', '2444', '1978-05-18 14:12:26', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', 'm', '1974-05-27', '2468', '1988-01-30 19:02:27', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', 'm', '2019-11-15', '2415', '1976-04-24 20:08:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', 'm', '2014-08-24', '2408', '2008-11-26 13:16:34', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', 'm', '1980-05-12', '2431', '1977-04-29 16:33:38', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', 'm', '2011-06-02', '2429', '1998-02-17 02:41:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', 'm', '1972-05-22', '2409', '1973-05-13 13:57:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', 'f', '2020-12-05', '2437', '1996-10-16 14:43:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', 'f', '1979-04-19', '2427', '2017-01-27 15:30:26', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', 'f', '1995-02-20', '2412', '2007-06-04 15:26:14', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', 'm', '2014-12-25', '2487', '1989-12-03 08:19:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', 'm', '1989-10-14', '2494', '2000-07-04 15:40:45', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', 'm', '2006-10-26', '2451', '2013-12-15 09:28:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', 'm', '2018-09-28', '2414', '1992-12-28 07:27:24', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', 'f', '1986-11-22', '2406', '2009-09-23 03:34:36', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', 'f', '1990-04-05', '2471', '1977-05-22 13:40:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', 'f', '1993-04-17', '2499', '2019-08-09 18:53:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', 'm', '2020-03-21', '2452', '2005-05-18 23:34:33', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', 'm', '1986-12-16', '2420', '2020-03-19 04:23:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', 'm', '2019-11-15', '2492', '1990-08-24 00:37:26', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', 'm', '2014-03-19', '2449', '1990-09-28 00:22:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', 'm', '2013-06-26', '2446', '2004-07-15 22:21:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', 'm', '1986-06-26', '2477', '1993-05-09 03:18:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', 'm', '1989-02-09', '2496', '1995-03-21 10:57:27', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', 'm', '2014-04-17', '2451', '1992-02-16 05:53:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', 'm', '2019-12-07', '2470', '2008-08-13 08:17:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', 'm', '2008-12-24', '2433', '2001-07-26 12:23:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', 'm', '1975-09-18', '2433', '2008-10-15 03:13:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', 'f', '1993-04-01', '2454', '1977-11-06 16:40:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', 'f', '1974-11-09', '2455', '1975-12-21 23:58:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', 'm', '1991-06-29', '2473', '2003-03-12 22:24:59', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', 'm', '1994-07-15', '2467', '2002-09-06 12:42:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', 'm', '1986-10-29', '2430', '2004-02-09 16:10:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', 'm', '1998-08-01', '2493', '1985-11-20 12:26:06', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', 'f', '1978-12-11', '2492', '2002-12-01 14:51:38', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', 'm', '2007-03-03', '2472', '1998-02-02 14:02:25', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', 'm', '2020-12-12', '2419', '1988-06-05 20:53:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', 'm', '2021-05-10', '2469', '2000-12-19 18:35:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', 'm', '2010-06-20', '2425', '2008-07-26 17:05:15', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', 'f', '2010-11-07', '2454', '1972-09-05 06:25:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', 'f', '2004-05-13', '2442', '1989-04-17 17:34:53', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', 'm', '1972-03-05', '2401', '2005-05-27 10:58:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', 'f', '2018-07-01', '2481', '1994-05-10 10:36:15', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', 'm', '1986-05-03', '2423', '2011-03-31 23:16:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', 'f', '2003-01-26', '2454', '1994-02-24 03:30:11', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', 'f', '1978-12-30', '2445', '2012-06-20 16:39:14', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', 'm', '1992-09-12', '2455', '2002-11-12 08:37:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', 'f', '2013-07-13', '2424', '1976-09-26 23:21:44', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', 'f', '1981-07-11', '2494', '1980-12-22 14:17:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', 'm', '2014-05-24', '2471', '2020-12-10 05:49:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', 'f', '1993-03-27', '2437', '1975-12-23 20:00:05', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', 'f', '2019-07-13', '2434', '2000-05-26 10:02:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', 'f', '1989-06-13', '2491', '1975-06-13 13:22:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', 'm', '1997-02-03', '2410', '2008-06-19 18:33:42', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', 'm', '1972-06-06', '2421', '2001-01-29 02:35:06', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', 'f', '2005-11-03', '2465', '1973-11-25 10:44:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', 'f', '1996-05-24', '2437', '1977-01-16 06:32:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', 'f', '2023-02-24', '2495', '1998-04-12 08:37:46', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', 'f', '1988-11-16', '2469', '1973-10-20 08:23:38', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', 'm', '1996-06-09', '2414', '2016-09-08 02:45:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', 'm', '2018-03-22', '2413', '1976-06-29 08:22:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', 'm', '1992-05-13', '2415', '2018-06-10 04:34:07', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', 'f', '1993-10-25', '2406', '1981-01-07 06:02:18', NULL);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Cathrine', 'Thiel', 'o\'keefe.leora@example.org', '9851d05e36c0e6194877222dee4fc24de20085d7', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Bette', 'Russel', 'xrunolfsson@example.org', 'd8ac2aabc25270069f9a51679c8cbb6136c86bdc', '8684345', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Golden', 'Reilly', 'samson75@example.org', '96fa88b67a4df48487af224b347991407c782739', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Gianni', 'Von', 'michelle.balistreri@example.com', 'f544b3943a21ad6e887e3bfa44f1e3db602cdfb0', '471389', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Marty', 'Schoen', 'williamson.lazaro@example.com', 'b6381d43d3de8c4e94df4a596b8a75be5a870be1', '2317523', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Judson', 'Ritchie', 'ydavis@example.net', '4768e991312b42f2003fa5c0de145585d9a8e127', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Jaqueline', 'Breitenberg', 'sylvan.kihn@example.net', '87c46e8dcf7a614a6fccd9660438d19d7f7a7cd4', '3822295', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Alana', 'Beer', 'karlee.brakus@example.com', 'ae75b0e23a3afe69c4cd7ed35581a87c3be1b9c3', '2739', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Adolf', 'Russel', 'marie61@example.net', '4b8d891cab4402ea90e2c9b79779181c723485e2', '174300', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Kristofer', 'Turner', 'hweber@example.org', 'eaa4205f0ae6f8b5536b6c59423336c44ee5634f', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Ayden', 'Simonis', 'fisher.sarah@example.net', '1c36b64074258cd1cd4a1d6a3391b0cfe875ece3', '159140', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Santos', 'Ullrich', 'ariel.lemke@example.com', '1fea7750a16807d4b98f55628d8c6a99696f3bbf', '3', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Nyah', 'Kunde', 'chad10@example.com', 'f88fa247b9858083f9e2bd6beb82e197be18e81b', '574', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Darien', 'Cole', 'vgleichner@example.org', '0a1825c8b4924c2e91ab387fc85460713b0c48ec', '2380266', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Dustin', 'Renner', 'sebastian25@example.net', '845825b3f56aa3fe2ceaef38732f34d85df84865', '19027118', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'Lillie', 'Carroll', 'everardo.emard@example.com', '06d322b0c43ce4d97a085fcb9ee5665ab8ffd88f', '762062', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'April', 'Flatley', 'leatha71@example.com', '0e0d01e7f9342c5100f963df2cedf80a050526e6', '13469', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'Benton', 'Hansen', 'vivian.funk@example.org', 'a4c5afee0e83004a08e84cf25ea116fdeecebcc2', '1616644', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'Serenity', 'Gorczany', 'roel15@example.com', '27c6be1b4f41aaf7175653782b6e19d4da273037', '17', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Anahi', 'Reichert', 'mariam.collier@example.net', '0718d1284c46896b88a24a475655f2dabc27e343', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Elisa', 'Kunze', 'abartell@example.com', '9349b04ac201594e021e2f0c4bf81d2b93f1ccba', '534524450', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('22', 'Vivianne', 'Mohr', 'cayla37@example.org', 'e23dbce864d96e7dfa8dae164fa32e37a9bd1238', '25846', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Kurtis', 'Hermann', 'deckow.blanche@example.org', '455e6b839ece757e386526089b122d629b42a488', '889170', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Dillan', 'Beer', 'dibbert.aaliyah@example.com', '83a1be12af78b99830d3fe510aa14687de7516d0', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Rusty', 'Pfeffer', 'joshuah93@example.org', 'f58b7622e1593991dc95d349ca05552577dfcd3a', '5283561', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Lucas', 'Kuhlman', 'zcasper@example.net', '91e95e289f0c31f24ff8bc283a4a35c32529be25', '659', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Marisol', 'Oberbrunner', 'quinten41@example.com', '20cc1703ef2ab6e61decd7fffb7f1f99ece6d56f', '3296', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Genesis', 'Pacocha', 'pamela.schowalter@example.net', '56058ab02e0b80e2981fc44c44fa6bb7ea2ad1d3', '4', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Georgiana', 'Bosco', 'brady.grady@example.net', 'b229727d9210541cd72ed58968c7e5e89e16cff6', '5862580', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'Jonathan', 'Blanda', 'batz.reina@example.com', '97647b4e337d44f5a03613d9386a72bf89427a53', '109705', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Haleigh', 'Kuhlman', 'marques.fay@example.com', 'b2101ca140a8ba3d94d018ac62daea00ebe75461', '81', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Berneice', 'West', 'dach.hallie@example.org', 'a7164a0e541a1b43770ed88e4fd501b03953cb73', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Camden', 'Kulas', 'osvaldo.weber@example.com', 'b147a075bc5d1e1d4f79d3f613106415374e9985', '1721650', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Loyal', 'Osinski', 'kilback.reanna@example.org', '532e4efef2f1f1de31adbad83f61f6975309a35b', '28', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Karley', 'Morar', 'kuvalis.harmon@example.net', '2f635d52dbdc27c5b52b46195b021c4ffad432ff', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Daron', 'Bins', 'german90@example.com', '4b9a3206270431906a5ce3664332f03199fa17a9', '5', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Estella', 'Littel', 'deron87@example.org', '5a825da35164e72ac669d1b422fd03cd8e45bcb5', '68118025', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Gilda', 'Ratke', 'ozella52@example.org', '45105184e223b932a80415571578a245c70553d9', '274', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Mazie', 'Toy', 'pacocha.wiley@example.org', 'c1e9e837cdc1aa7ab9cff2975bc9976b5608f524', '4955', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Hulda', 'Green', 'goyette.vada@example.org', '62e2a90652306ce7d109f1cabc0116ea16ea2a4c', '23822', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Kathryne', 'Gaylord', 'yasmin60@example.com', '2567ee343c4ebfa53e0bb6dc978d17a80641a860', '229658', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Estrella', 'Hyatt', 'hgrady@example.net', '7a62baf8e7718d497418c0022911f4a87fba93a7', '6835142', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Anya', 'Bode', 'mertz.cassie@example.net', '5aaa16e423f3bfb3b370669a87cb1d5e4d7ba632', '42', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Rene', 'Gaylord', 'clemens26@example.org', '1c14c321262b5823573be37ebdca2f3f03f8b702', '49968', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Alda', 'Fritsch', 'lenna92@example.com', 'f374fa7078aa84951295af146542f1bcdb1f8245', '8927', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Malika', 'Eichmann', 'zharris@example.com', 'cdcfd2655c8e03a5f36b9ba546d00a20902084c6', '158313', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'Tabitha', 'Gulgowski', 'cassin.hermina@example.com', '5609b73c378b74b78d8404d9709c0f60fda337d3', '1076', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Oleta', 'Stehr', 'lrobel@example.net', '3b27c29b03bf4af96f323855de40c344ecb5f2b3', '270', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Colby', 'Stanton', 'hackett.hardy@example.net', '9590c3cd23ab7e0fc9a8d9548a409858e0974b12', '122952422', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Brandy', 'Leuschke', 'beryl.cole@example.com', '4f1255b263f9bba14ffd18eab10e93bc8daf568c', '31021', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'Xzavier', 'Weber', 'pmertz@example.org', 'e42f1ad1475927053aaa8773b7de96420cf7aa15', '1525', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Rosamond', 'Auer', 'freddie.gibson@example.org', '4d7361f5f83717f751e56205bd6bf0b181a3c250', '940', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Keaton', 'Johns', 'gennaro84@example.org', '439d651c74bf6ecf1880ffc9d6a4d99892f7f692', '6662', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Kole', 'VonRueden', 'alfonzo.cummerata@example.com', '13958e7b0fcceb8ee361126df56bd152b5479712', '9', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Arnulfo', 'Balistreri', 'mayra.daugherty@example.org', 'aae6ae707924c3e3241888fc7e0aae76a0dd38a7', '12328', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Arthur', 'Considine', 'hills.domenica@example.com', 'f58bf6ceff5e14c67a81f641bfc579bcd330e8cd', '16629450', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Adah', 'Abbott', 'chad15@example.com', '64face2d2b1dcd0b538faee7c1c3e80f497c0ac3', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Francisco', 'Murazik', 'feest.trevion@example.net', '49c5aa36038366b77cb117ae45de8d0242a9b3ca', '5', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Lourdes', 'Huel', 'pwalsh@example.com', 'f416d13de744385d000c650bdc905fa483b1c5bb', '237889', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'Maximillian', 'Mraz', 'daniel.sharon@example.org', '323c6880a9885a8eecc987dd34bda8f3e7127af0', '191881', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Jaime', 'Maggio', 'zieme.aimee@example.net', '383fb21db3fce4278d86c9a92386601c28a1767c', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Henri', 'Bosco', 'hgislason@example.org', '47162cd59a846560cc657e5075d73d00b3dca267', '9', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Ernestina', 'Johnston', 'wiegand.alana@example.com', '77b6256b20f2bd2bcd149afc342536f6e4cd8858', '4429', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Tomasa', 'Hodkiewicz', 'lulu.schiller@example.org', 'f76b5d2a5b13470f9da87c606b031260409ec323', '3309016', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Jerel', 'Schuppe', 'braulio.toy@example.net', '7f6c15cb37a90d044387526650b8270137b7f6c7', '11774', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'Cristal', 'Wisozk', 'blarson@example.org', '908f60ad4d96e64933c17017a630544bfb161a92', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Kaylie', 'Steuber', 'delores.kovacek@example.net', 'aa6931f7ffe4b8e16a6b2055713eaeb193bb0789', '58523', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Wayne', 'Treutel', 'nbode@example.com', 'ba0912da63e2177b25b783de7b99b96fd3f97f60', '733055', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'Lelah', 'Collins', 'jayden68@example.net', '3357daf773c87141e9e4e9f7b30c371fbb42b1b4', '262', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Marianna', 'D\'Amore', 'lizzie91@example.com', 'ca9ca6b072cb3fcbfd77ef5e85f9616c74816de5', '49067', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'Harrison', 'Kreiger', 'mcclure.lia@example.com', '9d1a1f424b41c0c0c036e3c4f6323a0305555cbf', '8032072', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Pansy', 'McClure', 'michael.bahringer@example.com', '553a8d2e2608cc9a51e234f5854bed3256321def', '3', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Tyreek', 'Trantow', 'nader.milo@example.org', 'd882f8df45fc78fa26ea8a47a1012a0c6ad28ce9', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Esteban', 'Kuhn', 'usanford@example.net', '753dfa4bfe270c6e25d39d04ec9f666d10149451', '15499', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Hermina', 'Pagac', 'lyric62@example.org', 'd1cbe7c2f15e069aac794372f0f2b697dbb67cda', '114002110', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Benton', 'Nikolaus', 'blanda.deja@example.org', 'd0560360c0cf377ee400593a1e4ce3672507ac72', '5', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'Rocio', 'Dickinson', 'wyman.sean@example.net', 'bffba43515c7cddc0d8e63aa7fbeb454669c8ed6', '37', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Mason', 'Kohler', 'britney.bartell@example.net', 'eea59c6d564de7c13f739f9de2e6451d55e2ae98', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Araceli', 'Boyle', 'wschultz@example.net', '57e534ebf60674b7df47cc4e1c561733d0a26563', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Winston', 'Walker', 'ustracke@example.com', '104f896d0dc50b3ef7352fbbfefb4682da355934', '1', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'King', 'Leffler', 'monte.hegmann@example.net', '942d2ebe7259d23ba5e632ad0c78e4b0d8f1bc58', '14896725', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'Lilly', 'Jones', 'zbechtelar@example.com', '10a2da4b388f0ca5a53999a1e915bf3ae955b0a9', '266', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Graciela', 'Kutch', 'teagan.fahey@example.net', 'f452f9f1420ca8f03f7741c8823eb416c9e93d92', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'Kennith', 'Kessler', 'elise.block@example.com', '7fa40e63c0b3886467a7a2462b9bfa04b6522f12', '3330629', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Aaliyah', 'Wyman', 'grady.ericka@example.com', '650a3185e8f758afb5d66f9ce51a94374449bc64', '0', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Elmira', 'Weissnat', 'little.ricardo@example.com', 'fa495ab1f95739cc08910df102bb93a299d38977', '4743255', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'Tabitha', 'Rogahn', 'gaylord.marguerite@example.net', '09d711d2f6bbf876f24d3267186f1eb75009e404', '0', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'Florian', 'Armstrong', 'maverick.kautzer@example.org', '83585b73f8901b0bfae537d94d3ae97c4bed0946', '11', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'Ali', 'Kling', 'nolan.cassandre@example.net', '9860da3e979c6bdec75bb3b6cdc2fb600771b2a6', '874374', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'Abbey', 'Larson', 'caleb.parisian@example.net', '92c645a1c17fa5aba784b56d190038a1317418a8', '3884', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Grayson', 'McKenzie', 'kemmer.ludwig@example.net', '8a63cf602d55c35f868a235a7ed31d1e6e753746', '124582', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Hassie', 'Bednar', 'daphney.tillman@example.net', '3f7003b9ce5d6fe8be96704e53e7eacf3a3cde1c', '46131662', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Warren', 'Hermiston', 'lora29@example.net', '1e44f91ead590b94cd89a87a4e1d54c8af4294b5', '1', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Antonette', 'Sawayn', 'rhiannon67@example.org', 'f608dbcf51973e1d9198c8d365cebc253d8fd4c0', '1053415', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Bret', 'Streich', 'ena31@example.net', '8f20a5d4746ba9ced4d320c81a3b598ec9166285', '49484298', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'Edythe', 'Senger', 'connelly.jimmie@example.org', 'af1ddd3ecbd2a3376ee450f83f885bd5ca876ec3', '28944', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'Fleta', 'Ryan', 'clay.osinski@example.net', '4897c8c22520166f4ac08504add95be9a324f3d5', '3597', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Waino', 'McDermott', 'burdette.herzog@example.org', '958517a6376f3b351cf9aef8e8c7f280ae092f96', '5612', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Vivienne', 'Murray', 'heaney.viviane@example.org', '0148f311104b35bc2df43a32bd9a1970df62f6ef', '47', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Yazmin', 'Gutmann', 'kamille21@example.net', '44d4c59dad1ee990562fed8604566df580121fc8', '4178', '0');


