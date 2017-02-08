# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.20-MariaDB)
# Database: urlrewrite
# Generation Time: 2017-02-08 12:25:15 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table artikel
# ------------------------------------------------------------

CREATE TABLE `artikel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL DEFAULT '',
  `konten` text NOT NULL,
  `w_tambah` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `w_ubah` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `w_terbit` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `artikel` WRITE;
/*!40000 ALTER TABLE `artikel` DISABLE KEYS */;

INSERT INTO `artikel` (`id`, `judul`, `slug`, `konten`, `w_tambah`, `w_ubah`, `w_terbit`, `id_user`)
VALUES
	(1,'Adipisci Explicabo est Amet Deleniti','','Voluptatem impedit vitae eius provident aliquam vitae. Voluptas libero omnis natus voluptatem voluptatem vitae unde. Nihil unde nemo deleniti odit. In necessitatibus est esse.\n\nDolores ut quis sint voluptas voluptatem molestiae aliquam error. Quia temporibus enim laboriosam quis. Non quo suscipit voluptate dolorum ullam.\n\nNobis aperiam sit et perspiciatis. Velit eum inventore voluptatem alias. Perferendis est sint et iure minima ipsum porro quo.','2017-02-08 14:27:01','2017-02-08 14:27:01','2017-02-08 14:33:11',1),
	(2,'Quasi Vitae Eligendi','','Ex sapiente nemo corrupti nihil consequatur ut. Odio enim laborum et quod fugiat praesentium voluptatem. Qui sed facilis illum. Rem est rem eos ut aut ut itaque cum.\n\nRem et quasi officia nobis fugiat rem. Enim iusto ut nostrum accusantium est. Voluptate temporibus dicta quia pariatur quia id et. Excepturi eius in qui quae.\n\nEt labore magni at enim ut qui. Sit est velit sapiente quas. Reprehenderit ad commodi ad voluptas voluptatem id architecto.','2017-02-08 14:27:02','2017-02-08 14:27:02','2017-02-08 14:34:35',1),
	(3,'Est ea Enim Corrupti','','Dolorum unde soluta eligendi ipsam. Voluptatum minima rerum odit modi voluptatibus. Quia dolorem ea rerum repudiandae. Hic atque id exercitationem provident non dolores dolores. Dolore sint praesentium aliquid.\n\nQui repellendus eveniet aut quia. Dolor quo sed eius saepe. Sunt aut nemo quod et excepturi rerum. Labore eius non modi sunt. A nihil modi quo.\n\nLaudantium veritatis sunt aut ipsa fuga. Dolorem laudantium ad ex veritatis. Consequatur commodi ad est nostrum velit vitae eos omnis.','2017-02-08 14:27:03','2017-02-08 14:27:03','2017-02-08 14:40:14',1),
	(4,'Et exercitationem Molestiae Necessitatibus','','Sit dignissimos et velit sint et. Nostrum sed dolores pariatur et eos illum. Enim inventore odio esse et voluptates omnis voluptas modi. Eligendi vel sequi eum voluptatem veritatis consequatur inventore.\n\nEt tempore autem natus ipsam esse accusantium. Voluptatem voluptatem voluptatem non. Molestias fugiat saepe maxime dolor pariatur esse vel quia.\n\nTempore modi vel perferendis et. Rem repellat voluptates similique alias molestiae id. Quisquam delectus repudiandae soluta ipsam.','2017-02-08 14:27:04','2017-02-08 14:27:04','2017-02-08 14:40:41',1),
	(5,'Rerum Quam Numquam','','Sunt ea voluptas repellat et harum dolorum deleniti vel. Sed est perspiciatis fugiat voluptatem id pariatur iste. Ad vel corrupti blanditiis.\n\nSed neque id esse in esse tempore. Dicta quo voluptatum magnam non veritatis odit eveniet sequi. Maiores velit repellat iste laboriosam.\n\nAutem saepe voluptatem quas. Blanditiis maxime eum ad distinctio ut consequuntur. Asperiores sit et rem saepe. Aut nihil modi accusamus maiores.','2017-02-08 14:27:05','2017-02-08 14:27:05','2017-02-08 14:42:06',1),
	(6,'Minima Commodi Delectus Assumenda','','Nostrum natus pariatur dolores hic eaque. Dolores non sit consequuntur temporibus quae doloribus. Ipsum dolorum qui dolores delectus.\n\nEst quia magnam similique voluptas magni dolor aliquid. Eum dolore et nihil qui non. Impedit quia unde repellat ex est in at. Provident est ducimus corporis voluptatum similique libero.\n\nEnim repellat sunt aliquam et ut vel minus quia. Molestiae dolor ut debitis distinctio.','2017-02-08 14:27:06','2017-02-08 14:27:06','2017-02-08 14:43:03',1);

/*!40000 ALTER TABLE `artikel` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table halaman
# ------------------------------------------------------------

CREATE TABLE `halaman` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `w_tambah` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `w_ubah` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `halaman` WRITE;
/*!40000 ALTER TABLE `halaman` DISABLE KEYS */;

INSERT INTO `halaman` (`id`, `judul`, `slug`, `konten`, `w_tambah`, `w_ubah`, `id_user`)
VALUES
	(1,'About','','Dicta sed voluptatem facere qui doloribus. Explicabo iste neque tempora ut autem ut architecto eum. Modi facere modi qui eum.\n\nQuas tenetur mollitia et cum quibusdam mollitia dolores. Amet molestiae recusandae doloribus porro impedit. Cumque velit et aperiam voluptatem natus magni. Nihil consectetur facilis accusamus veniam.\n\nLabore dolores quaerat repellat qui eaque corrupti est eum. Voluptas odio tenetur soluta doloremque excepturi ad. Enim provident repellat rerum ea.','2017-02-08 14:29:21','2017-02-08 14:29:21',1),
	(2,'Another Page','','Tempore minima qui maiores voluptatem ea officia laudantium consequatur. Mollitia ut qui totam nesciunt. Molestiae et inventore ea eos sequi placeat autem non. Expedita libero tempore ab et ut et aut. Nihil fugit deleniti molestias fuga deleniti aut in.\n\nReiciendis harum nam numquam repellendus. Sed a excepturi porro eligendi repudiandae praesentium itaque. Sed et dignissimos architecto. Eius cupiditate iure enim quos voluptatem dolorem illum qui. Occaecati eum ut fugit et aliquid atque minus ullam.\n\nVoluptas ex quo quisquam earum cupiditate quia. Omnis unde cumque fugit voluptatem cum. Est sequi placeat amet.','2017-02-08 14:29:21','2017-02-08 14:29:21',1),
	(3,'Do Not Open','','Voluptatem et exercitationem voluptate. Est autem reprehenderit id perspiciatis voluptate. Et quo similique nobis nobis voluptates impedit. Et adipisci rerum exercitationem molestiae vero pariatur.\n\nSit et fuga vel earum deleniti quas blanditiis. Est a exercitationem dolores vel enim. Commodi molestias voluptatum qui qui iste explicabo ullam. Maxime eveniet consequatur at est. Repellendus libero repudiandae dolorum dolores sunt aliquam et.\n\nNon totam voluptas optio totam voluptates amet ut. Exercitationem minima maiores ipsum perspiciatis velit quae laudantium beatae. Similique iste dolorum vero voluptatem voluptatem reiciendis officiis nam. Et porro voluptatem assumenda impedit rem consectetur. Est architecto harum minima et.','2017-02-08 14:29:22','2017-02-08 14:29:22',1);

/*!40000 ALTER TABLE `halaman` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(63) NOT NULL,
  `nama` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `w_tambah` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `w_ubah` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `username`, `nama`, `password`, `w_tambah`, `w_ubah`)
VALUES
	(1,'admin','PHP Indonesia for Students','$2y$10$k585.TizALtzl1XVFM2F9ejcpBwXZcj4BXvpbhalLnUAtpcopNKAu','2017-02-08 14:31:05','2017-02-08 14:31:05');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
