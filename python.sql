-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-05-2022 a las 16:48:09
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `python`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add library', 7, 'add_library'),
(26, 'Can change library', 7, 'change_library'),
(27, 'Can delete library', 7, 'delete_library'),
(28, 'Can view library', 7, 'view_library'),
(29, 'Can add rack', 8, 'add_rack'),
(30, 'Can change rack', 8, 'change_rack'),
(31, 'Can delete rack', 8, 'delete_rack'),
(32, 'Can view rack', 8, 'view_rack'),
(33, 'Can add rack item', 9, 'add_rackitem'),
(34, 'Can change rack item', 9, 'change_rackitem'),
(35, 'Can delete rack item', 9, 'delete_rackitem'),
(36, 'Can view rack item', 9, 'view_rackitem'),
(37, 'Can add books', 10, 'add_books'),
(38, 'Can change books', 10, 'change_books'),
(39, 'Can delete books', 10, 'delete_books'),
(40, 'Can view books', 10, 'view_books');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `books_books`
--

CREATE TABLE `books_books` (
  `id` bigint(20) NOT NULL,
  `libro` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `type` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `plate` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `color` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `owner_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_user`
--

CREATE TABLE `core_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `core_user`
--

INSERT INTO `core_user` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `email`) VALUES
(1, 'pbkdf2_sha256$260000$JXD34ojTa8jnxdjvm54mx2$L3Tl51x8K6IdFImerRB0YvoLtxPJxO8niNjUmh4Y9Js=', NULL, 1, '', '', 1, 1, '2022-05-26 16:42:28.818188', 'jose.palacio@esap.edu.co');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_user_groups`
--

CREATE TABLE `core_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_user_user_permissions`
--

CREATE TABLE `core_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_spanish_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(10, 'Books', 'books'),
(4, 'contenttypes', 'contenttype'),
(6, 'core', 'user'),
(7, 'library', 'library'),
(8, 'library', 'rack'),
(9, 'library', 'rackitem'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-26 16:40:36.061924'),
(2, 'contenttypes', '0002_remove_content_type_name', '2022-05-26 16:40:36.258920'),
(3, 'auth', '0001_initial', '2022-05-26 16:40:37.344493'),
(4, 'auth', '0002_alter_permission_name_max_length', '2022-05-26 16:40:37.607887'),
(5, 'auth', '0003_alter_user_email_max_length', '2022-05-26 16:40:37.631877'),
(6, 'auth', '0004_alter_user_username_opts', '2022-05-26 16:40:37.677878'),
(7, 'auth', '0005_alter_user_last_login_null', '2022-05-26 16:40:37.710874'),
(8, 'auth', '0006_require_contenttypes_0002', '2022-05-26 16:40:37.743885'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2022-05-26 16:40:37.808879'),
(10, 'auth', '0008_alter_user_username_max_length', '2022-05-26 16:40:37.867886'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2022-05-26 16:40:37.927883'),
(12, 'auth', '0010_alter_group_name_max_length', '2022-05-26 16:40:38.166886'),
(13, 'auth', '0011_update_proxy_permissions', '2022-05-26 16:40:38.193885'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2022-05-26 16:40:38.243886'),
(15, 'core', '0001_initial', '2022-05-26 16:40:39.416615'),
(16, 'Books', '0001_initial', '2022-05-26 16:40:40.115626'),
(17, 'Books', '0002_rename_plate_books_code', '2022-05-26 16:40:40.240627'),
(18, 'Books', '0003_rename_code_books_plate', '2022-05-26 16:40:40.327623'),
(19, 'admin', '0001_initial', '2022-05-26 16:40:40.885376'),
(20, 'admin', '0002_logentry_remove_auto_add', '2022-05-26 16:40:40.924383'),
(21, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-26 16:40:41.029383'),
(22, 'library', '0001_initial', '2022-05-26 16:40:41.610458'),
(23, 'library', '0002_alter_rack_uuid', '2022-05-26 16:40:41.633453'),
(24, 'library', '0003_alter_rack_uuid', '2022-05-26 16:40:41.670464'),
(25, 'library', '0004_alter_rack_uuid', '2022-05-26 16:40:41.805475'),
(26, 'library', '0005_auto_20220524_1537', '2022-05-26 16:40:42.417726'),
(27, 'library', '0006_auto_20220524_1544', '2022-05-26 16:40:42.845713'),
(28, 'library', '0007_auto_20220524_1545', '2022-05-26 16:40:43.354771'),
(29, 'library', '0008_auto_20220524_1603', '2022-05-26 16:40:43.452767'),
(30, 'library', '0009_alter_rack_uuid', '2022-05-26 16:40:43.485772'),
(31, 'library', '0010_alter_rack_uuid', '2022-05-26 16:40:43.511767'),
(32, 'library', '0011_alter_rack_uuid', '2022-05-26 16:40:43.538765'),
(33, 'sessions', '0001_initial', '2022-05-26 16:40:43.767798');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_spanish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `library_library`
--

CREATE TABLE `library_library` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `address` varchar(250) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `library_rack`
--

CREATE TABLE `library_rack` (
  `id` bigint(20) NOT NULL,
  `number` int(11) NOT NULL,
  `uuid` char(32) COLLATE utf8_spanish_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `librarys_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `library_rackitem`
--

CREATE TABLE `library_rackitem` (
  `id` bigint(20) NOT NULL,
  `Books_id` bigint(20) NOT NULL,
  `rack_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `books_books`
--
ALTER TABLE `books_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Books_books_owner_id_8dcb2e9d_fk_core_user_id` (`owner_id`);

--
-- Indices de la tabla `core_user`
--
ALTER TABLE `core_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `core_user_groups`
--
ALTER TABLE `core_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_user_groups_user_id_group_id_c82fcad1_uniq` (`user_id`,`group_id`),
  ADD KEY `core_user_groups_group_id_fe8c697f_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_user_user_permissions_user_id_permission_id_73ea0daa_uniq` (`user_id`,`permission_id`),
  ADD KEY `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_core_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `library_library`
--
ALTER TABLE `library_library`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `library_rack`
--
ALTER TABLE `library_rack`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`),
  ADD KEY `library_rack_librarys_id_b07a7cc0_fk_library_library_id` (`librarys_id`);

--
-- Indices de la tabla `library_rackitem`
--
ALTER TABLE `library_rackitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `library_rackitem_rack_id_27fabfcc_fk_library_rack_id` (`rack_id`),
  ADD KEY `library_rackitem_Books_id_212e7ab2_fk_Books_books_id` (`Books_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `books_books`
--
ALTER TABLE `books_books`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_user`
--
ALTER TABLE `core_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `core_user_groups`
--
ALTER TABLE `core_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `library_library`
--
ALTER TABLE `library_library`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `library_rack`
--
ALTER TABLE `library_rack`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `library_rackitem`
--
ALTER TABLE `library_rackitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `books_books`
--
ALTER TABLE `books_books`
  ADD CONSTRAINT `Books_books_owner_id_8dcb2e9d_fk_core_user_id` FOREIGN KEY (`owner_id`) REFERENCES `core_user` (`id`);

--
-- Filtros para la tabla `core_user_groups`
--
ALTER TABLE `core_user_groups`
  ADD CONSTRAINT `core_user_groups_group_id_fe8c697f_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `core_user_groups_user_id_70b4d9b8_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Filtros para la tabla `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  ADD CONSTRAINT `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `core_user_user_permissions_user_id_085123d3_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Filtros para la tabla `library_rack`
--
ALTER TABLE `library_rack`
  ADD CONSTRAINT `library_rack_librarys_id_b07a7cc0_fk_library_library_id` FOREIGN KEY (`librarys_id`) REFERENCES `library_library` (`id`);

--
-- Filtros para la tabla `library_rackitem`
--
ALTER TABLE `library_rackitem`
  ADD CONSTRAINT `library_rackitem_Books_id_212e7ab2_fk_Books_books_id` FOREIGN KEY (`Books_id`) REFERENCES `books_books` (`id`),
  ADD CONSTRAINT `library_rackitem_rack_id_27fabfcc_fk_library_rack_id` FOREIGN KEY (`rack_id`) REFERENCES `library_rack` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
