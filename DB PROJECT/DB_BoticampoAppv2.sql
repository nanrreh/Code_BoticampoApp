/*
SQLyog Community
MySQL - 5.7.31 : Database - code_boticampoapp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `data_rows` */

DROP TABLE IF EXISTS `data_rows`;

CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `data_rows` */

insert  into `data_rows`(`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) values 
(1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),
(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),
(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),
(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),
(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),
(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),
(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),
(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),
(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),
(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),
(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),
(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),
(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),
(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),
(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),
(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),
(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),
(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),
(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),
(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),
(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),
(22,4,'id','text','Id',1,0,0,0,0,0,'{}',1),
(23,4,'name','text','Nombre Valvula',1,1,1,1,1,1,'{}',3),
(24,4,'phase_id','text','Phase Id',1,1,1,1,1,1,'{}',2),
(25,4,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',6),
(26,4,'created_at','timestamp','Fecha de creación',0,1,0,0,0,0,'{}',4),
(27,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),
(28,5,'id','text','Id',1,0,0,0,0,0,'{}',1),
(29,5,'name','text','Nombre Estado',1,1,1,1,1,1,'{}',2),
(30,5,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',5),
(31,5,'created_at','timestamp','Fecha de creación',0,1,0,0,0,0,'{}',3),
(32,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),
(33,6,'id','text','Id',1,0,0,0,0,0,'{}',1),
(34,6,'name','text','Nombre Fase',1,1,1,1,1,1,'{}',4),
(35,6,'state_id','text','State Id',1,1,1,1,1,1,'{}',2),
(36,6,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',7),
(37,6,'created_at','timestamp','Fecha de creación',0,1,0,0,0,0,'{}',5),
(38,6,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),
(39,7,'id','text','Id',1,0,0,0,0,0,'{}',1),
(40,7,'count','text','Cantidad de fruta (Kg)',1,1,1,1,1,1,'{}',5),
(41,7,'valve_id','text','Valve Id',1,1,1,1,1,1,'{}',6),
(42,7,'user_id','text','User Id',1,1,1,1,1,1,'{}',2),
(43,7,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',7),
(44,7,'created_at','timestamp','Fecha de creación',0,1,0,0,0,0,'{}',8),
(45,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),
(46,4,'valve_belongsto_phase_relationship','relationship','Fase',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Phase\",\"table\":\"phases\",\"type\":\"belongsTo\",\"column\":\"phase_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),
(47,6,'phase_belongsto_state_relationship','relationship','Estado',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\State\",\"table\":\"states\",\"type\":\"belongsTo\",\"column\":\"state_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),
(48,7,'harvest_belongsto_valve_relationship','relationship','Válvula',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Valve\",\"table\":\"valves\",\"type\":\"belongsTo\",\"column\":\"valve_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),
(49,7,'harvest_belongsto_user_relationship','relationship','Empleado',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}',3);

/*Table structure for table `data_types` */

DROP TABLE IF EXISTS `data_types`;

CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `data_types` */

insert  into `data_types`(`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) values 
(1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2022-11-18 00:21:21','2022-11-18 00:21:21'),
(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2022-11-18 00:21:21','2022-11-18 00:21:21'),
(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2022-11-18 00:21:21','2022-11-18 00:21:21'),
(4,'valves','valves','Válvula','Válvulas',NULL,'App\\Models\\Valve',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-11-18 00:24:26','2022-11-18 00:28:15'),
(5,'states','states','Estado','Estados',NULL,'App\\Models\\State',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2022-11-18 00:25:24','2022-11-18 00:25:24'),
(6,'phases','phases','Fase','Fases',NULL,'App\\Models\\Phase',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-11-18 00:26:14','2022-11-18 00:29:04'),
(7,'harvests','harvests','Recolección','Recolecciones',NULL,'App\\Models\\Harvest',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2022-11-18 00:27:14','2022-11-18 00:30:38');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `harvests` */

DROP TABLE IF EXISTS `harvests`;

CREATE TABLE `harvests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `count` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valve_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `harvests_user_id_foreign` (`user_id`),
  CONSTRAINT `harvests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `harvests` */

/*Table structure for table `menu_items` */

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `menu_items` */

insert  into `menu_items`(`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) values 
(1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2022-11-18 00:21:21','2022-11-18 00:21:21','voyager.dashboard',NULL),
(2,1,'Media','','_self','voyager-images',NULL,NULL,5,'2022-11-18 00:21:21','2022-11-18 00:21:21','voyager.media.index',NULL),
(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2022-11-18 00:21:21','2022-11-18 00:21:21','voyager.users.index',NULL),
(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2022-11-18 00:21:21','2022-11-18 00:21:21','voyager.roles.index',NULL),
(5,1,'Tools','','_self','voyager-tools',NULL,NULL,9,'2022-11-18 00:21:21','2022-11-18 00:21:21',NULL,NULL),
(6,1,'Menu Builder','','_self','voyager-list',NULL,5,10,'2022-11-18 00:21:21','2022-11-18 00:21:21','voyager.menus.index',NULL),
(7,1,'Database','','_self','voyager-data',NULL,5,11,'2022-11-18 00:21:21','2022-11-18 00:21:21','voyager.database.index',NULL),
(8,1,'Compass','','_self','voyager-compass',NULL,5,12,'2022-11-18 00:21:21','2022-11-18 00:21:21','voyager.compass.index',NULL),
(9,1,'BREAD','','_self','voyager-bread',NULL,5,13,'2022-11-18 00:21:21','2022-11-18 00:21:21','voyager.bread.index',NULL),
(10,1,'Settings','','_self','voyager-settings',NULL,NULL,14,'2022-11-18 00:21:21','2022-11-18 00:21:21','voyager.settings.index',NULL),
(11,1,'Válvulas','','_self','voyager-dashboard','#000000',NULL,15,'2022-11-18 00:24:26','2022-11-18 01:43:37','voyager.valves.index','null'),
(12,1,'Estados','','_self','voyager-bookmark','#000000',NULL,16,'2022-11-18 00:25:24','2022-11-18 01:44:00','voyager.states.index','null'),
(13,1,'Fases','','_self','voyager-exclamation','#000000',NULL,17,'2022-11-18 00:26:14','2022-11-18 01:44:13','voyager.phases.index','null'),
(14,1,'Recolecciones','','_self','voyager-trees','#000000',NULL,18,'2022-11-18 00:27:14','2022-11-18 01:44:27','voyager.harvests.index','null');

/*Table structure for table `menus` */

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `menus` */

insert  into `menus`(`id`,`name`,`created_at`,`updated_at`) values 
(1,'admin','2022-11-18 00:21:21','2022-11-18 00:21:21');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2016_01_01_000000_add_voyager_user_fields',1),
(4,'2016_01_01_000000_create_data_types_table',1),
(5,'2016_05_19_173453_create_menu_table',1),
(6,'2016_10_21_190000_create_roles_table',1),
(7,'2016_10_21_190000_create_settings_table',1),
(8,'2016_11_30_135954_create_permission_table',1),
(9,'2016_11_30_141208_create_permission_role_table',1),
(10,'2016_12_26_201236_data_types__add__server_side',1),
(11,'2017_01_13_000000_add_route_to_menu_items_table',1),
(12,'2017_01_14_005015_create_translations_table',1),
(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),
(14,'2017_03_06_000000_add_controller_to_data_types_table',1),
(15,'2017_04_21_000000_add_order_to_data_rows_table',1),
(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),
(17,'2017_08_05_000000_add_group_to_settings_table',1),
(18,'2017_11_26_013050_add_user_role_relationship',1),
(19,'2017_11_26_015000_create_user_roles_table',1),
(20,'2018_03_11_000000_add_user_settings',1),
(21,'2018_03_14_000000_add_details_to_data_types_table',1),
(22,'2018_03_16_000000_make_settings_value_nullable',1),
(23,'2019_08_19_000000_create_failed_jobs_table',1),
(24,'2019_12_14_000001_create_personal_access_tokens_table',1),
(25,'2022_11_18_000234_base_structure',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `permission_role` */

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permission_role` */

insert  into `permission_role`(`permission_id`,`role_id`) values 
(1,1),
(1,3),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(8,1),
(9,1),
(10,1),
(11,1),
(12,1),
(13,1),
(14,1),
(15,1),
(16,1),
(16,3),
(17,1),
(17,3),
(18,1),
(18,3),
(19,1),
(19,3),
(20,1),
(20,3),
(21,1),
(22,1),
(23,1),
(24,1),
(25,1),
(26,1),
(26,3),
(27,1),
(27,3),
(28,1),
(28,3),
(29,1),
(29,3),
(30,1),
(30,3),
(31,1),
(31,3),
(32,1),
(32,3),
(33,1),
(33,3),
(34,1),
(34,3),
(35,1),
(35,3),
(36,1),
(36,3),
(37,1),
(37,3),
(38,1),
(38,3),
(39,1),
(39,3),
(40,1),
(40,3),
(41,1),
(41,3),
(42,1),
(42,3),
(43,1),
(43,3),
(44,1),
(44,3),
(45,1),
(45,3);

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`key`,`table_name`,`created_at`,`updated_at`) values 
(1,'browse_admin',NULL,'2022-11-18 00:21:21','2022-11-18 00:21:21'),
(2,'browse_bread',NULL,'2022-11-18 00:21:21','2022-11-18 00:21:21'),
(3,'browse_database',NULL,'2022-11-18 00:21:21','2022-11-18 00:21:21'),
(4,'browse_media',NULL,'2022-11-18 00:21:21','2022-11-18 00:21:21'),
(5,'browse_compass',NULL,'2022-11-18 00:21:21','2022-11-18 00:21:21'),
(6,'browse_menus','menus','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(7,'read_menus','menus','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(8,'edit_menus','menus','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(9,'add_menus','menus','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(10,'delete_menus','menus','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(11,'browse_roles','roles','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(12,'read_roles','roles','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(13,'edit_roles','roles','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(14,'add_roles','roles','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(15,'delete_roles','roles','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(16,'browse_users','users','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(17,'read_users','users','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(18,'edit_users','users','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(19,'add_users','users','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(20,'delete_users','users','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(21,'browse_settings','settings','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(22,'read_settings','settings','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(23,'edit_settings','settings','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(24,'add_settings','settings','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(25,'delete_settings','settings','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(26,'browse_valves','valves','2022-11-18 00:24:26','2022-11-18 00:24:26'),
(27,'read_valves','valves','2022-11-18 00:24:26','2022-11-18 00:24:26'),
(28,'edit_valves','valves','2022-11-18 00:24:26','2022-11-18 00:24:26'),
(29,'add_valves','valves','2022-11-18 00:24:26','2022-11-18 00:24:26'),
(30,'delete_valves','valves','2022-11-18 00:24:26','2022-11-18 00:24:26'),
(31,'browse_states','states','2022-11-18 00:25:24','2022-11-18 00:25:24'),
(32,'read_states','states','2022-11-18 00:25:24','2022-11-18 00:25:24'),
(33,'edit_states','states','2022-11-18 00:25:24','2022-11-18 00:25:24'),
(34,'add_states','states','2022-11-18 00:25:24','2022-11-18 00:25:24'),
(35,'delete_states','states','2022-11-18 00:25:24','2022-11-18 00:25:24'),
(36,'browse_phases','phases','2022-11-18 00:26:14','2022-11-18 00:26:14'),
(37,'read_phases','phases','2022-11-18 00:26:14','2022-11-18 00:26:14'),
(38,'edit_phases','phases','2022-11-18 00:26:14','2022-11-18 00:26:14'),
(39,'add_phases','phases','2022-11-18 00:26:14','2022-11-18 00:26:14'),
(40,'delete_phases','phases','2022-11-18 00:26:14','2022-11-18 00:26:14'),
(41,'browse_harvests','harvests','2022-11-18 00:27:14','2022-11-18 00:27:14'),
(42,'read_harvests','harvests','2022-11-18 00:27:14','2022-11-18 00:27:14'),
(43,'edit_harvests','harvests','2022-11-18 00:27:14','2022-11-18 00:27:14'),
(44,'add_harvests','harvests','2022-11-18 00:27:14','2022-11-18 00:27:14'),
(45,'delete_harvests','harvests','2022-11-18 00:27:14','2022-11-18 00:27:14');

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `phases` */

DROP TABLE IF EXISTS `phases`;

CREATE TABLE `phases` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phases_state_id_foreign` (`state_id`),
  CONSTRAINT `phases_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `phases` */

insert  into `phases`(`id`,`name`,`state_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'Fase 1',1,NULL,'2022-11-18 00:31:59','2022-11-18 00:31:59'),
(2,'Fase 2',2,NULL,'2022-11-18 00:32:09','2022-11-18 00:32:09'),
(3,'Fase 3',3,NULL,'2022-11-18 00:32:20','2022-11-18 00:32:20'),
(4,'Fase 4',1,NULL,'2022-11-18 00:32:31','2022-11-18 00:32:31'),
(5,'Fase 5',1,NULL,'2022-11-18 00:32:40','2022-11-18 00:32:40'),
(6,'Fase 6',1,NULL,'2022-11-18 00:32:50','2022-11-18 00:32:50');

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`display_name`,`created_at`,`updated_at`) values 
(1,'admin','Administrator','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(2,'user','Normal User','2022-11-18 00:21:21','2022-11-18 00:21:21'),
(3,'Administrador Recolector','Administrador Recolector','2022-11-18 01:38:46','2022-11-18 01:38:46');

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `settings` */

insert  into `settings`(`id`,`key`,`display_name`,`value`,`details`,`type`,`order`,`group`) values 
(1,'site.title','Site Title','Site Title','','text',1,'Site'),
(2,'site.description','Site Description','Site Description','','text',2,'Site'),
(3,'site.logo','Site Logo','','','image',3,'Site'),
(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),
(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),
(6,'admin.title','Admin Title','BotiCampoAPP','','text',1,'Admin'),
(7,'admin.description','Admin Description','Welcome to BoticampoApp.','','text',2,'Admin'),
(8,'admin.loader','Admin Loader','','','image',3,'Admin'),
(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),
(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin');

/*Table structure for table `states` */

DROP TABLE IF EXISTS `states`;

CREATE TABLE `states` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `states` */

insert  into `states`(`id`,`name`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'En Producción',NULL,'2022-11-18 00:31:20','2022-11-18 00:31:20'),
(2,'En Crecimiento',NULL,'2022-11-18 00:31:37','2022-11-18 00:31:37'),
(3,'En Piloto',NULL,'2022-11-18 00:31:44','2022-11-18 00:31:44');

/*Table structure for table `translations` */

DROP TABLE IF EXISTS `translations`;

CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `translations` */

/*Table structure for table `user_roles` */

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_roles` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`role_id`,`name`,`email`,`avatar`,`email_verified_at`,`password`,`remember_token`,`settings`,`created_at`,`updated_at`) values 
(1,1,'admin','admin@localhost.com','users\\November2022\\H2wHUwM76fbMTzxKnDqa.png',NULL,'$2y$10$NPUAya3Bu7i5I/TT.vfOhuLOorchR/tZcVo1t5LMTge90IBT3sGDi',NULL,'{\"locale\":\"en\"}','2022-11-18 00:22:07','2022-11-18 01:39:34'),
(2,3,'Administrador Recolector','adminrecolector@localhost.com','users\\November2022\\yEmsLUK582Zh46G6f5o4.png',NULL,'$2y$10$QCysmFZ6SUdzBhAeVKQzEuoMjXMkoohqbH2DVbohxdJ.WYSfsaPQe',NULL,'{\"locale\":\"es\"}','2022-11-18 01:38:04','2022-11-18 01:39:22');

/*Table structure for table `valves` */

DROP TABLE IF EXISTS `valves`;

CREATE TABLE `valves` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phase_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `valves_phase_id_foreign` (`phase_id`),
  CONSTRAINT `valves_phase_id_foreign` FOREIGN KEY (`phase_id`) REFERENCES `phases` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `valves` */

insert  into `valves`(`id`,`name`,`phase_id`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'Válvula 1',1,NULL,'2022-11-18 00:33:09','2022-11-18 00:33:09'),
(2,'Válvula 2',1,NULL,'2022-11-18 00:33:22','2022-11-18 00:33:22'),
(3,'Válvula 3',1,NULL,'2022-11-18 00:33:36','2022-11-18 00:33:36');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
