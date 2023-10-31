-- -- phpMyAdmin SQL Dump
-- -- version 5.2.0
-- -- https://www.phpmyadmin.net/
-- --
-- -- Host: db
-- -- Generation Time: Nov 01, 2022 at 02:39 PM
-- -- Server version: 5.7.34
-- -- PHP Version: 8.0.23

-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- START TRANSACTION;
-- SET time_zone = "+00:00";


-- /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
-- /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
-- /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
-- /*!40101 SET NAMES utf8mb4 */;

-- --
-- -- Database: `db`
-- --
-- CREATE DATABASE IF NOT EXISTS `db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
-- USE `db`;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_acl`
-- --

-- CREATE TABLE `nc_acl` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `project_id` varchar(255) DEFAULT NULL,
--   `db_alias` varchar(255) DEFAULT 'db',
--   `tn` varchar(255) DEFAULT NULL,
--   `acl` text,
--   `type` varchar(255) DEFAULT 'table',
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_api_tokens`
-- --

-- CREATE TABLE `nc_api_tokens` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `project_id` varchar(255) DEFAULT NULL,
--   `db_alias` varchar(255) DEFAULT NULL,
--   `description` varchar(255) DEFAULT NULL,
--   `permissions` text,
--   `token` text,
--   `expiry` varchar(255) DEFAULT NULL,
--   `enabled` tinyint(1) DEFAULT '1',
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_audit`
-- --

-- CREATE TABLE `nc_audit` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `user` varchar(255) DEFAULT NULL,
--   `ip` varchar(255) DEFAULT NULL,
--   `project_id` varchar(255) DEFAULT NULL,
--   `db_alias` varchar(255) DEFAULT NULL,
--   `model_name` varchar(100) DEFAULT NULL,
--   `model_id` varchar(100) DEFAULT NULL,
--   `op_type` varchar(255) DEFAULT NULL,
--   `op_sub_type` varchar(255) DEFAULT NULL,
--   `status` varchar(255) DEFAULT NULL,
--   `description` text,
--   `details` text,
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_audit_v2`
-- --

-- CREATE TABLE `nc_audit_v2` (
--   `id` varchar(20) NOT NULL,
--   `user` varchar(255) DEFAULT NULL,
--   `ip` varchar(255) DEFAULT NULL,
--   `base_id` varchar(20) DEFAULT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `fk_model_id` varchar(20) DEFAULT NULL,
--   `row_id` varchar(255) DEFAULT NULL,
--   `op_type` varchar(255) DEFAULT NULL,
--   `op_sub_type` varchar(255) DEFAULT NULL,
--   `status` varchar(255) DEFAULT NULL,
--   `description` text,
--   `details` text,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `nc_audit_v2`
-- --

-- INSERT INTO `nc_audit_v2` (`id`, `user`, `ip`, `base_id`, `project_id`, `fk_model_id`, `row_id`, `op_type`, `op_sub_type`, `status`, `description`, `details`, `created_at`, `updated_at`) VALUES
-- ('adt_fns0dnj1554l1c', 'nikos@advancesvs.com', '::ffff:192.168.0.118', NULL, NULL, NULL, NULL, 'AUTHENTICATION', 'SIGNUP', NULL, 'signed up ', NULL, '2022-10-17 11:29:00', '2022-10-17 11:29:00');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_bases_v2`
-- --

-- CREATE TABLE `nc_bases_v2` (
--   `id` varchar(20) NOT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `alias` varchar(255) DEFAULT NULL,
--   `config` text,
--   `meta` text,
--   `is_meta` tinyint(1) DEFAULT NULL,
--   `type` varchar(255) DEFAULT NULL,
--   `inflection_column` varchar(255) DEFAULT NULL,
--   `inflection_table` varchar(255) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `nc_bases_v2`
-- --

-- INSERT INTO `nc_bases_v2` (`id`, `project_id`, `alias`, `config`, `meta`, `is_meta`, `type`, `inflection_column`, `inflection_table`, `created_at`, `updated_at`) VALUES
-- ('ds_5wy7ujey1fhmdy', 'p_8n4bdy8my6atqm', NULL, 'U2FsdGVkX1+cdCCXYZE2PBGxNknRqJgU5XbeNjb0/FWMtWXQlm448JMTb5l5Lw0yJypORfIx59BcRvyJhcjZja9eK50e441wU++EkFXryiTTWzHbefAiJKmPZ+3wApsaGwbvefySLSj7UukKfTFBW/X9EnBusbJQynKDjft9R3/UplFxz8XCISNP7MUHq8BV', NULL, NULL, 'mysql2', 'camelize', 'camelize', '2022-10-17 11:30:07', '2022-10-17 11:30:07');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_columns_v2`
-- --

-- CREATE TABLE `nc_columns_v2` (
--   `id` varchar(20) NOT NULL,
--   `base_id` varchar(20) DEFAULT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `fk_model_id` varchar(20) DEFAULT NULL,
--   `title` varchar(255) DEFAULT NULL,
--   `column_name` varchar(255) DEFAULT NULL,
--   `uidt` varchar(255) DEFAULT NULL,
--   `dt` varchar(255) DEFAULT NULL,
--   `np` varchar(255) DEFAULT NULL,
--   `ns` varchar(255) DEFAULT NULL,
--   `clen` varchar(255) DEFAULT NULL,
--   `cop` varchar(255) DEFAULT NULL,
--   `pk` tinyint(1) DEFAULT NULL,
--   `pv` tinyint(1) DEFAULT NULL,
--   `rqd` tinyint(1) DEFAULT NULL,
--   `un` tinyint(1) DEFAULT NULL,
--   `ct` text,
--   `ai` tinyint(1) DEFAULT NULL,
--   `unique` tinyint(1) DEFAULT NULL,
--   `cdf` text,
--   `cc` text,
--   `csn` varchar(255) DEFAULT NULL,
--   `dtx` varchar(255) DEFAULT NULL,
--   `dtxp` text,
--   `dtxs` varchar(255) DEFAULT NULL,
--   `au` tinyint(1) DEFAULT NULL,
--   `validate` text,
--   `virtual` tinyint(1) DEFAULT NULL,
--   `deleted` tinyint(1) DEFAULT NULL,
--   `system` tinyint(1) DEFAULT '0',
--   `order` float(8,2) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `meta` text
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_col_formula_v2`
-- --

-- CREATE TABLE `nc_col_formula_v2` (
--   `id` varchar(20) NOT NULL,
--   `fk_column_id` varchar(20) DEFAULT NULL,
--   `formula` text NOT NULL,
--   `formula_raw` text,
--   `error` text,
--   `deleted` tinyint(1) DEFAULT NULL,
--   `order` float(8,2) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_col_lookup_v2`
-- --

-- CREATE TABLE `nc_col_lookup_v2` (
--   `id` varchar(20) NOT NULL,
--   `fk_column_id` varchar(20) DEFAULT NULL,
--   `fk_relation_column_id` varchar(20) DEFAULT NULL,
--   `fk_lookup_column_id` varchar(20) DEFAULT NULL,
--   `deleted` tinyint(1) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_col_relations_v2`
-- --

-- CREATE TABLE `nc_col_relations_v2` (
--   `id` varchar(20) NOT NULL,
--   `ref_db_alias` varchar(255) DEFAULT NULL,
--   `type` varchar(255) DEFAULT NULL,
--   `virtual` tinyint(1) DEFAULT NULL,
--   `db_type` varchar(255) DEFAULT NULL,
--   `fk_column_id` varchar(20) DEFAULT NULL,
--   `fk_related_model_id` varchar(20) DEFAULT NULL,
--   `fk_child_column_id` varchar(20) DEFAULT NULL,
--   `fk_parent_column_id` varchar(20) DEFAULT NULL,
--   `fk_mm_model_id` varchar(20) DEFAULT NULL,
--   `fk_mm_child_column_id` varchar(20) DEFAULT NULL,
--   `fk_mm_parent_column_id` varchar(20) DEFAULT NULL,
--   `ur` varchar(255) DEFAULT NULL,
--   `dr` varchar(255) DEFAULT NULL,
--   `fk_index_name` varchar(255) DEFAULT NULL,
--   `deleted` tinyint(1) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_col_rollup_v2`
-- --

-- CREATE TABLE `nc_col_rollup_v2` (
--   `id` varchar(20) NOT NULL,
--   `fk_column_id` varchar(20) DEFAULT NULL,
--   `fk_relation_column_id` varchar(20) DEFAULT NULL,
--   `fk_rollup_column_id` varchar(20) DEFAULT NULL,
--   `rollup_function` varchar(255) DEFAULT NULL,
--   `deleted` tinyint(1) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_col_select_options_v2`
-- --

-- CREATE TABLE `nc_col_select_options_v2` (
--   `id` varchar(20) NOT NULL,
--   `fk_column_id` varchar(20) DEFAULT NULL,
--   `title` varchar(255) DEFAULT NULL,
--   `color` varchar(255) DEFAULT NULL,
--   `order` float(8,2) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_cron`
-- --

-- CREATE TABLE `nc_cron` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `project_id` varchar(255) DEFAULT NULL,
--   `db_alias` varchar(255) DEFAULT 'db',
--   `title` varchar(255) DEFAULT NULL,
--   `description` varchar(255) DEFAULT NULL,
--   `env` varchar(255) DEFAULT NULL,
--   `pattern` varchar(255) DEFAULT NULL,
--   `webhook` varchar(255) DEFAULT NULL,
--   `timezone` varchar(255) DEFAULT 'America/Los_Angeles',
--   `active` tinyint(1) DEFAULT '1',
--   `cron_handler` text,
--   `payload` text,
--   `headers` text,
--   `retries` int(11) DEFAULT '0',
--   `retry_interval` int(11) DEFAULT '60000',
--   `timeout` int(11) DEFAULT '60000',
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_disabled_models_for_role`
-- --

-- CREATE TABLE `nc_disabled_models_for_role` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `project_id` varchar(255) DEFAULT NULL,
--   `db_alias` varchar(45) DEFAULT NULL,
--   `title` varchar(45) DEFAULT NULL,
--   `type` varchar(45) DEFAULT NULL,
--   `role` varchar(45) DEFAULT NULL,
--   `disabled` tinyint(1) DEFAULT '1',
--   `tn` varchar(255) DEFAULT NULL,
--   `rtn` varchar(255) DEFAULT NULL,
--   `cn` varchar(255) DEFAULT NULL,
--   `rcn` varchar(255) DEFAULT NULL,
--   `relation_type` varchar(255) DEFAULT NULL,
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL,
--   `parent_model_title` varchar(255) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_disabled_models_for_role_v2`
-- --

-- CREATE TABLE `nc_disabled_models_for_role_v2` (
--   `id` varchar(20) NOT NULL,
--   `base_id` varchar(20) DEFAULT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `fk_view_id` varchar(20) DEFAULT NULL,
--   `role` varchar(45) DEFAULT NULL,
--   `disabled` tinyint(1) DEFAULT '1',
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_filter_exp_v2`
-- --

-- CREATE TABLE `nc_filter_exp_v2` (
--   `id` varchar(20) NOT NULL,
--   `base_id` varchar(20) DEFAULT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `fk_view_id` varchar(20) DEFAULT NULL,
--   `fk_hook_id` varchar(20) DEFAULT NULL,
--   `fk_column_id` varchar(20) DEFAULT NULL,
--   `fk_parent_id` varchar(20) DEFAULT NULL,
--   `logical_op` varchar(255) DEFAULT NULL,
--   `comparison_op` varchar(255) DEFAULT NULL,
--   `value` varchar(255) DEFAULT NULL,
--   `is_group` tinyint(1) DEFAULT NULL,
--   `order` float(8,2) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_form_view_columns_v2`
-- --

-- CREATE TABLE `nc_form_view_columns_v2` (
--   `id` varchar(20) NOT NULL,
--   `base_id` varchar(20) DEFAULT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `fk_view_id` varchar(20) DEFAULT NULL,
--   `fk_column_id` varchar(20) DEFAULT NULL,
--   `uuid` varchar(255) DEFAULT NULL,
--   `label` varchar(255) DEFAULT NULL,
--   `help` varchar(255) DEFAULT NULL,
--   `description` text,
--   `required` tinyint(1) DEFAULT NULL,
--   `show` tinyint(1) DEFAULT NULL,
--   `order` float(8,2) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `meta` text
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_form_view_v2`
-- --

-- CREATE TABLE `nc_form_view_v2` (
--   `base_id` varchar(20) DEFAULT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `fk_view_id` varchar(20) NOT NULL,
--   `heading` varchar(255) DEFAULT NULL,
--   `subheading` varchar(255) DEFAULT NULL,
--   `success_msg` text,
--   `redirect_url` text,
--   `redirect_after_secs` varchar(255) DEFAULT NULL,
--   `email` varchar(255) DEFAULT NULL,
--   `submit_another_form` tinyint(1) DEFAULT NULL,
--   `show_blank_form` tinyint(1) DEFAULT NULL,
--   `uuid` varchar(255) DEFAULT NULL,
--   `banner_image_url` text,
--   `logo_url` text,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `meta` text
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_gallery_view_columns_v2`
-- --

-- CREATE TABLE `nc_gallery_view_columns_v2` (
--   `id` varchar(20) NOT NULL,
--   `base_id` varchar(20) DEFAULT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `fk_view_id` varchar(20) DEFAULT NULL,
--   `fk_column_id` varchar(20) DEFAULT NULL,
--   `uuid` varchar(255) DEFAULT NULL,
--   `label` varchar(255) DEFAULT NULL,
--   `help` varchar(255) DEFAULT NULL,
--   `show` tinyint(1) DEFAULT NULL,
--   `order` float(8,2) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_gallery_view_v2`
-- --

-- CREATE TABLE `nc_gallery_view_v2` (
--   `base_id` varchar(20) DEFAULT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `fk_view_id` varchar(20) NOT NULL,
--   `next_enabled` tinyint(1) DEFAULT NULL,
--   `prev_enabled` tinyint(1) DEFAULT NULL,
--   `cover_image_idx` int(11) DEFAULT NULL,
--   `fk_cover_image_col_id` varchar(20) DEFAULT NULL,
--   `cover_image` varchar(255) DEFAULT NULL,
--   `restrict_types` varchar(255) DEFAULT NULL,
--   `restrict_size` varchar(255) DEFAULT NULL,
--   `restrict_number` varchar(255) DEFAULT NULL,
--   `public` tinyint(1) DEFAULT NULL,
--   `dimensions` varchar(255) DEFAULT NULL,
--   `responsive_columns` varchar(255) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `meta` text
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_grid_view_columns_v2`
-- --

-- CREATE TABLE `nc_grid_view_columns_v2` (
--   `id` varchar(20) NOT NULL,
--   `fk_view_id` varchar(20) DEFAULT NULL,
--   `fk_column_id` varchar(20) DEFAULT NULL,
--   `base_id` varchar(20) DEFAULT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `uuid` varchar(255) DEFAULT NULL,
--   `label` varchar(255) DEFAULT NULL,
--   `help` varchar(255) DEFAULT NULL,
--   `width` varchar(255) DEFAULT '200px',
--   `show` tinyint(1) DEFAULT NULL,
--   `order` float(8,2) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_grid_view_v2`
-- --

-- CREATE TABLE `nc_grid_view_v2` (
--   `fk_view_id` varchar(20) NOT NULL,
--   `base_id` varchar(20) DEFAULT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `uuid` varchar(255) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `meta` text
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_hooks`
-- --

-- CREATE TABLE `nc_hooks` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `project_id` varchar(255) DEFAULT NULL,
--   `db_alias` varchar(255) DEFAULT 'db',
--   `title` varchar(255) DEFAULT NULL,
--   `description` varchar(255) DEFAULT NULL,
--   `env` varchar(255) DEFAULT 'all',
--   `tn` varchar(255) DEFAULT NULL,
--   `type` varchar(255) DEFAULT NULL,
--   `event` varchar(255) DEFAULT NULL,
--   `operation` varchar(255) DEFAULT NULL,
--   `async` tinyint(1) DEFAULT '0',
--   `payload` tinyint(1) DEFAULT '1',
--   `url` text,
--   `headers` text,
--   `condition` text,
--   `notification` text,
--   `retries` int(11) DEFAULT '0',
--   `retry_interval` int(11) DEFAULT '60000',
--   `timeout` int(11) DEFAULT '60000',
--   `active` tinyint(1) DEFAULT '1',
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `nc_hooks`
-- --

-- INSERT INTO `nc_hooks` (`id`, `project_id`, `db_alias`, `title`, `description`, `env`, `tn`, `type`, `event`, `operation`, `async`, `payload`, `url`, `headers`, `condition`, `notification`, `retries`, `retry_interval`, `timeout`, `active`, `created_at`, `updated_at`) VALUES
-- (1, NULL, 'db', NULL, NULL, 'all', NULL, 'AUTH_MIDDLEWARE', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 60000, 60000, 1, NULL, NULL);

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_hooks_v2`
-- --

-- CREATE TABLE `nc_hooks_v2` (
--   `id` varchar(20) NOT NULL,
--   `base_id` varchar(20) DEFAULT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `fk_model_id` varchar(20) DEFAULT NULL,
--   `title` varchar(255) DEFAULT NULL,
--   `description` varchar(255) DEFAULT NULL,
--   `env` varchar(255) DEFAULT 'all',
--   `type` varchar(255) DEFAULT NULL,
--   `event` varchar(255) DEFAULT NULL,
--   `operation` varchar(255) DEFAULT NULL,
--   `async` tinyint(1) DEFAULT '0',
--   `payload` tinyint(1) DEFAULT '1',
--   `url` text,
--   `headers` text,
--   `condition` tinyint(1) DEFAULT '0',
--   `notification` text,
--   `retries` int(11) DEFAULT '0',
--   `retry_interval` int(11) DEFAULT '60000',
--   `timeout` int(11) DEFAULT '60000',
--   `active` tinyint(1) DEFAULT '1',
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_hook_logs_v2`
-- --

-- CREATE TABLE `nc_hook_logs_v2` (
--   `id` varchar(20) NOT NULL,
--   `base_id` varchar(20) DEFAULT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `fk_hook_id` varchar(20) DEFAULT NULL,
--   `type` varchar(255) DEFAULT NULL,
--   `event` varchar(255) DEFAULT NULL,
--   `operation` varchar(255) DEFAULT NULL,
--   `test_call` tinyint(1) DEFAULT '1',
--   `payload` text,
--   `conditions` text,
--   `notification` text,
--   `error_code` varchar(255) DEFAULT NULL,
--   `error_message` varchar(255) DEFAULT NULL,
--   `error` text,
--   `execution_time` int(11) DEFAULT NULL,
--   `response` varchar(255) DEFAULT NULL,
--   `triggered_by` varchar(255) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_kanban_view_columns_v2`
-- --

-- CREATE TABLE `nc_kanban_view_columns_v2` (
--   `id` varchar(20) NOT NULL,
--   `base_id` varchar(20) DEFAULT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `fk_view_id` varchar(20) DEFAULT NULL,
--   `fk_column_id` varchar(20) DEFAULT NULL,
--   `uuid` varchar(255) DEFAULT NULL,
--   `label` varchar(255) DEFAULT NULL,
--   `help` varchar(255) DEFAULT NULL,
--   `show` tinyint(1) DEFAULT NULL,
--   `order` float(8,2) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_kanban_view_v2`
-- --

-- CREATE TABLE `nc_kanban_view_v2` (
--   `fk_view_id` varchar(20) NOT NULL,
--   `base_id` varchar(20) DEFAULT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `show` tinyint(1) DEFAULT NULL,
--   `order` float(8,2) DEFAULT NULL,
--   `uuid` varchar(255) DEFAULT NULL,
--   `title` varchar(255) DEFAULT NULL,
--   `public` tinyint(1) DEFAULT NULL,
--   `password` varchar(255) DEFAULT NULL,
--   `show_all_fields` tinyint(1) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `fk_grp_col_id` varchar(20) DEFAULT NULL,
--   `fk_cover_image_col_id` varchar(20) DEFAULT NULL,
--   `meta` text
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_loaders`
-- --

-- CREATE TABLE `nc_loaders` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `project_id` varchar(255) DEFAULT NULL,
--   `db_alias` varchar(255) DEFAULT 'db',
--   `title` varchar(255) DEFAULT NULL,
--   `parent` varchar(255) DEFAULT NULL,
--   `child` varchar(255) DEFAULT NULL,
--   `relation` varchar(255) DEFAULT NULL,
--   `resolver` varchar(255) DEFAULT NULL,
--   `functions` text,
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_migrations`
-- --

-- CREATE TABLE `nc_migrations` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `project_id` varchar(255) DEFAULT NULL,
--   `db_alias` varchar(255) DEFAULT NULL,
--   `up` text,
--   `down` text,
--   `title` varchar(255) NOT NULL,
--   `title_down` varchar(255) DEFAULT NULL,
--   `description` varchar(255) DEFAULT NULL,
--   `batch` int(11) DEFAULT NULL,
--   `checksum` varchar(255) DEFAULT NULL,
--   `status` int(11) DEFAULT NULL,
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_models`
-- --

-- CREATE TABLE `nc_models` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `project_id` varchar(255) DEFAULT NULL,
--   `db_alias` varchar(255) DEFAULT 'db',
--   `title` varchar(255) DEFAULT NULL,
--   `alias` varchar(255) DEFAULT NULL,
--   `type` varchar(255) DEFAULT 'table',
--   `meta` mediumtext,
--   `schema` text,
--   `schema_previous` text,
--   `services` mediumtext,
--   `messages` text,
--   `enabled` tinyint(1) DEFAULT '1',
--   `parent_model_title` varchar(255) DEFAULT NULL,
--   `show_as` varchar(255) DEFAULT 'table',
--   `query_params` mediumtext,
--   `list_idx` int(11) DEFAULT NULL,
--   `tags` varchar(255) DEFAULT NULL,
--   `pinned` tinyint(1) DEFAULT NULL,
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL,
--   `mm` int(11) DEFAULT NULL,
--   `m_to_m_meta` text,
--   `order` float(8,2) UNSIGNED DEFAULT NULL,
--   `view_order` float(8,2) UNSIGNED DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_models_v2`
-- --

-- CREATE TABLE `nc_models_v2` (
--   `id` varchar(20) NOT NULL,
--   `base_id` varchar(20) DEFAULT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `table_name` varchar(255) DEFAULT NULL,
--   `title` varchar(255) DEFAULT NULL,
--   `type` varchar(255) DEFAULT 'table',
--   `meta` mediumtext,
--   `schema` text,
--   `enabled` tinyint(1) DEFAULT '1',
--   `mm` tinyint(1) DEFAULT '0',
--   `tags` varchar(255) DEFAULT NULL,
--   `pinned` tinyint(1) DEFAULT NULL,
--   `deleted` tinyint(1) DEFAULT NULL,
--   `order` float(8,2) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_orgs_v2`
-- --

-- CREATE TABLE `nc_orgs_v2` (
--   `id` varchar(20) NOT NULL,
--   `title` varchar(255) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_plugins`
-- --

-- CREATE TABLE `nc_plugins` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `project_id` varchar(255) DEFAULT NULL,
--   `db_alias` varchar(255) DEFAULT NULL,
--   `title` varchar(45) DEFAULT NULL,
--   `description` text,
--   `active` tinyint(1) DEFAULT '0',
--   `rating` float(8,2) DEFAULT NULL,
--   `version` varchar(255) DEFAULT NULL,
--   `docs` varchar(255) DEFAULT NULL,
--   `status` varchar(255) DEFAULT 'install',
--   `status_details` varchar(255) DEFAULT NULL,
--   `logo` varchar(255) DEFAULT NULL,
--   `icon` varchar(255) DEFAULT NULL,
--   `tags` varchar(255) DEFAULT NULL,
--   `category` varchar(255) DEFAULT NULL,
--   `input_schema` text,
--   `input` text,
--   `creator` varchar(255) DEFAULT NULL,
--   `creator_website` varchar(255) DEFAULT NULL,
--   `price` varchar(255) DEFAULT NULL,
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `nc_plugins`
-- --

-- INSERT INTO `nc_plugins` (`id`, `project_id`, `db_alias`, `title`, `description`, `active`, `rating`, `version`, `docs`, `status`, `status_details`, `logo`, `icon`, `tags`, `category`, `input_schema`, `input`, `creator`, `creator_website`, `price`, `created_at`, `updated_at`) VALUES
-- (1, NULL, NULL, 'Google', 'Google OAuth2 login.', 0, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/google.png', NULL, 'Authentication', 'Google', '{\"title\":\"Configure Google Auth\",\"items\":[{\"key\":\"client_id\",\"label\":\"Client ID\",\"placeholder\":\"Client ID\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"client_secret\",\"label\":\"Client Secret\",\"placeholder\":\"Client Secret\",\"type\":\"Password\",\"required\":true},{\"key\":\"redirect_url\",\"label\":\"Redirect URL\",\"placeholder\":\"Redirect URL\",\"type\":\"SingleLineText\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and configured Google Authentication, restart NocoDB\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, 'Free', NULL, NULL),
-- (3, NULL, NULL, 'Metadata LRU Cache', 'A cache object that deletes the least-recently-used items.', 1, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/xgene.png', NULL, 'Cache', 'Cache', '{\"title\":\"Configure Metadata LRU Cache\",\"items\":[{\"key\":\"max\",\"label\":\"Maximum Size\",\"placeholder\":\"Maximum Size\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"maxAge\",\"label\":\"Maximum Age(in ms)\",\"placeholder\":\"Maximum Age(in ms)\",\"type\":\"SingleLineText\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully updated LRU cache options.\",\"msgOnUninstall\":\"\"}', '{\"max\":500,\"maxAge\":86400000}', NULL, NULL, 'Free', NULL, NULL);

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_plugins_v2`
-- --

-- CREATE TABLE `nc_plugins_v2` (
--   `id` varchar(20) NOT NULL,
--   `title` varchar(45) DEFAULT NULL,
--   `description` text,
--   `active` tinyint(1) DEFAULT '0',
--   `rating` float(8,2) DEFAULT NULL,
--   `version` varchar(255) DEFAULT NULL,
--   `docs` varchar(255) DEFAULT NULL,
--   `status` varchar(255) DEFAULT 'install',
--   `status_details` varchar(255) DEFAULT NULL,
--   `logo` varchar(255) DEFAULT NULL,
--   `icon` varchar(255) DEFAULT NULL,
--   `tags` varchar(255) DEFAULT NULL,
--   `category` varchar(255) DEFAULT NULL,
--   `input_schema` text,
--   `input` text,
--   `creator` varchar(255) DEFAULT NULL,
--   `creator_website` varchar(255) DEFAULT NULL,
--   `price` varchar(255) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `nc_plugins_v2`
-- --

-- INSERT INTO `nc_plugins_v2` (`id`, `title`, `description`, `active`, `rating`, `version`, `docs`, `status`, `status_details`, `logo`, `icon`, `tags`, `category`, `input_schema`, `input`, `creator`, `creator_website`, `price`, `created_at`, `updated_at`) VALUES
-- ('nc_0dfvbl7qjdamqq', 'SMTP', 'SMTP email client', 0, NULL, '0.0.2', NULL, 'install', NULL, NULL, NULL, 'Email', 'Email', '{\"title\":\"Configure Email SMTP\",\"items\":[{\"key\":\"from\",\"label\":\"From\",\"placeholder\":\"eg: admin@run.com\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"host\",\"label\":\"Host\",\"placeholder\":\"eg: smtp.run.com\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"port\",\"label\":\"Port\",\"placeholder\":\"Port\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"secure\",\"label\":\"Secure\",\"placeholder\":\"Secure\",\"type\":\"Checkbox\",\"required\":false},{\"key\":\"ignoreTLS\",\"label\":\"Ignore TLS\",\"placeholder\":\"Ignore TLS\",\"type\":\"Checkbox\",\"required\":false},{\"key\":\"rejectUnauthorized\",\"label\":\"Reject Unauthorized\",\"placeholder\":\"Reject Unauthorized\",\"type\":\"Checkbox\",\"required\":false},{\"key\":\"username\",\"label\":\"Username\",\"placeholder\":\"Username\",\"type\":\"SingleLineText\",\"required\":false},{\"key\":\"password\",\"label\":\"Password\",\"placeholder\":\"Password\",\"type\":\"Password\",\"required\":false}],\"actions\":[{\"label\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and email notification will use SMTP configuration\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- ('nc_17m7fr66uffbmc', 'SES', 'Amazon Simple Email Service (SES) is a cost-effective, flexible, and scalable email service that enables developers to send mail from within any application.', 0, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/aws.png', NULL, 'Email', 'Email', '{\"title\":\"Configure Amazon Simple Email Service (SES)\",\"items\":[{\"key\":\"from\",\"label\":\"From\",\"placeholder\":\"From\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"region\",\"label\":\"Region\",\"placeholder\":\"Region\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_key\",\"label\":\"Access Key\",\"placeholder\":\"Access Key\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_secret\",\"label\":\"Access Secret\",\"placeholder\":\"Access Secret\",\"type\":\"Password\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and email notification will use Amazon SES\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- ('nc_6wh16vqie61iou', 'Whatsapp Twilio', 'With Twilio, unite communications and strengthen customer relationships across your business – from marketing and sales to customer service and operations.', 0, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/whatsapp.png', NULL, 'Chat', 'Twilio', '{\"title\":\"Configure Twilio\",\"items\":[{\"key\":\"sid\",\"label\":\"Account SID\",\"placeholder\":\"Account SID\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"token\",\"label\":\"Auth Token\",\"placeholder\":\"Auth Token\",\"type\":\"Password\",\"required\":true},{\"key\":\"from\",\"label\":\"From Phone Number\",\"placeholder\":\"From Phone Number\",\"type\":\"SingleLineText\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and Whatsapp Twilio is enabled for notification.\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- ('nc_83nl938ycupz3z', 'Spaces', 'Store & deliver vast amounts of content with a simple architecture.', 0, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/spaces.png', NULL, 'Storage', 'Storage', '{\"title\":\"DigitalOcean Spaces\",\"items\":[{\"key\":\"bucket\",\"label\":\"Bucket Name\",\"placeholder\":\"Bucket Name\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"region\",\"label\":\"Region\",\"placeholder\":\"Region\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_key\",\"label\":\"Access Key\",\"placeholder\":\"Access Key\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_secret\",\"label\":\"Access Secret\",\"placeholder\":\"Access Secret\",\"type\":\"Password\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and attachment will be stored in DigitalOcean Spaces\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- ('nc_b47stwv7osfxe6', 'OvhCloud Object Storage', 'Upload your files to a space that you can access via HTTPS using the OpenStack Swift API, or the S3 API. ', 0, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/ovhCloud.png', NULL, 'Storage', 'Storage', '{\"title\":\"Configure OvhCloud Object Storage\",\"items\":[{\"key\":\"bucket\",\"label\":\"Bucket Name\",\"placeholder\":\"Bucket Name\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"region\",\"label\":\"Region\",\"placeholder\":\"Region\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_key\",\"label\":\"Access Key\",\"placeholder\":\"Access Key\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_secret\",\"label\":\"Access Secret\",\"placeholder\":\"Access Secret\",\"type\":\"Password\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and attachment will be stored in OvhCloud Object Storage\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- ('nc_e19q8zkqkqr36k', 'Microsoft Teams', 'Microsoft Teams is for everyone · Instantly go from group chat to video call with the touch of a button.', 0, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/teams.ico', NULL, 'Chat', 'Chat', '{\"title\":\"Configure Microsoft Teams\",\"array\":true,\"items\":[{\"key\":\"channel\",\"label\":\"Channel Name\",\"placeholder\":\"Channel Name\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"webhook_url\",\"label\":\"Webhook URL\",\"placeholder\":\"Webhook URL\",\"type\":\"Password\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and Microsoft Teams is enabled for notification.\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- ('nc_fr9pb6awmqib0q', 'Mattermost', 'Mattermost brings all your team communication into one place, making it searchable and accessible anywhere.', 0, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/mattermost.png', NULL, 'Chat', 'Chat', '{\"title\":\"Configure Mattermost\",\"array\":true,\"items\":[{\"key\":\"channel\",\"label\":\"Channel Name\",\"placeholder\":\"Channel Name\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"webhook_url\",\"label\":\"Webhook URL\",\"placeholder\":\"Webhook URL\",\"type\":\"Password\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and Mattermost is enabled for notification.\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- ('nc_gio7lfe750dhzj', 'Minio', 'MinIO is a High Performance Object Storage released under Apache License v2.0. It is API compatible with Amazon S3 cloud storage service.', 0, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/minio.png', NULL, 'Storage', 'Storage', '{\"title\":\"Configure Minio\",\"items\":[{\"key\":\"endPoint\",\"label\":\"Minio Endpoint\",\"placeholder\":\"Minio Endpoint\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"port\",\"label\":\"Port\",\"placeholder\":\"Port\",\"type\":\"Number\",\"required\":true},{\"key\":\"bucket\",\"label\":\"Bucket Name\",\"placeholder\":\"Bucket Name\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_key\",\"label\":\"Access Key\",\"placeholder\":\"Access Key\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_secret\",\"label\":\"Access Secret\",\"placeholder\":\"Access Secret\",\"type\":\"Password\",\"required\":true},{\"key\":\"useSSL\",\"label\":\"Use SSL\",\"placeholder\":\"Use SSL\",\"type\":\"Checkbox\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and attachment will be stored in Minio\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- ('nc_i7v5rhfh4gifuo', 'Slack', 'Slack brings team communication and collaboration into one place so you can get more work done, whether you belong to a large enterprise or a small business. ', 0, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/slack.webp', NULL, 'Chat', 'Chat', '{\"title\":\"Configure Slack\",\"array\":true,\"items\":[{\"key\":\"channel\",\"label\":\"Channel Name\",\"placeholder\":\"Channel Name\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"webhook_url\",\"label\":\"Webhook URL\",\"placeholder\":\"Webhook URL\",\"type\":\"Password\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and Slack is enabled for notification.\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- ('nc_id2nqhgfp26ego', 'Backblaze B2', 'Backblaze B2 is enterprise-grade, S3 compatible storage that companies around the world use to store and serve data while improving their cloud OpEx vs. Amazon S3 and others.', 0, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/backblaze.jpeg', NULL, 'Storage', 'Storage', '{\"title\":\"Configure Backblaze B2\",\"items\":[{\"key\":\"bucket\",\"label\":\"Bucket Name\",\"placeholder\":\"Bucket Name\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"region\",\"label\":\"Region\",\"placeholder\":\"Region\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_key\",\"label\":\"Access Key\",\"placeholder\":\"Access Key\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_secret\",\"label\":\"Access Secret\",\"placeholder\":\"Access Secret\",\"type\":\"Password\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and attachment will be stored in Backblaze B2\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- ('nc_ir3g6pu3bo0p6j', 'Linode Object Storage', 'S3-compatible Linode Object Storage makes it easy and more affordable to manage unstructured data such as content assets, as well as sophisticated and data-intensive storage challenges around artificial intelligence and machine learning.', 0, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/linode.svg', NULL, 'Storage', 'Storage', '{\"title\":\"Configure Linode Object Storage\",\"items\":[{\"key\":\"bucket\",\"label\":\"Bucket Name\",\"placeholder\":\"Bucket Name\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"region\",\"label\":\"Region\",\"placeholder\":\"Region\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_key\",\"label\":\"Access Key\",\"placeholder\":\"Access Key\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_secret\",\"label\":\"Access Secret\",\"placeholder\":\"Access Secret\",\"type\":\"Password\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and attachment will be stored in Linode Object Storage\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- ('nc_isgvsx3jynkh1o', 'MailerSend', 'MailerSend email client', 0, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/mailersend.svg', NULL, 'Email', 'Email', '{\"title\":\"Configure MailerSend\",\"items\":[{\"key\":\"api_key\",\"label\":\"API KEy\",\"placeholder\":\"eg: ***************\",\"type\":\"Password\",\"required\":true},{\"key\":\"from\",\"label\":\"From\",\"placeholder\":\"eg: admin@run.com\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"from_name\",\"label\":\"From Name\",\"placeholder\":\"eg: Adam\",\"type\":\"SingleLineText\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and email notification will use MailerSend configuration\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- ('nc_lva3e891zxep6x', 'GCS', 'Google Cloud Storage is a RESTful online file storage web service for storing and accessing data on Google Cloud Platform infrastructure.', 0, NULL, '0.0.2', NULL, 'install', NULL, 'plugins/gcs.png', NULL, 'Storage', 'Storage', '{\"title\":\"Configure Google Cloud Storage\",\"items\":[{\"key\":\"bucket\",\"label\":\"Bucket Name\",\"placeholder\":\"Bucket Name\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"client_email\",\"label\":\"Client Email\",\"placeholder\":\"Client Email\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"private_key\",\"label\":\"Private Key\",\"placeholder\":\"Private Key\",\"type\":\"Password\",\"required\":true},{\"key\":\"project_id\",\"label\":\"Project ID\",\"placeholder\":\"Project ID\",\"type\":\"SingleLineText\",\"required\":false}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and attachment will be stored in Google Cloud Storage\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- ('nc_mfskhx72uk77ow', 'S3', 'Amazon Simple Storage Service (Amazon S3) is an object storage service that offers industry-leading scalability, data availability, security, and performance.', 0, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/s3.png', NULL, 'Storage', 'Storage', '{\"title\":\"Configure Amazon S3\",\"items\":[{\"key\":\"bucket\",\"label\":\"Bucket Name\",\"placeholder\":\"Bucket Name\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"region\",\"label\":\"Region\",\"placeholder\":\"Region\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_key\",\"label\":\"Access Key\",\"placeholder\":\"Access Key\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_secret\",\"label\":\"Access Secret\",\"placeholder\":\"Access Secret\",\"type\":\"Password\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and attachment will be stored in AWS S3\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- ('nc_rhkklx3bs1p3t0', 'Discord', 'Discord is the easiest way to talk over voice, video, and text. Talk, chat, hang out, and stay close with your friends and communities.', 0, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/discord.png', NULL, 'Chat', 'Chat', '{\"title\":\"Configure Discord\",\"array\":true,\"items\":[{\"key\":\"channel\",\"label\":\"Channel Name\",\"placeholder\":\"Channel Name\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"webhook_url\",\"label\":\"Webhook URL\",\"type\":\"Password\",\"placeholder\":\"Webhook URL\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and Discord is enabled for notification.\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- ('nc_sncuhv20f11oq0', 'Twilio', 'With Twilio, unite communications and strengthen customer relationships across your business – from marketing and sales to customer service and operations.', 0, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/twilio.png', NULL, 'Chat', 'Twilio', '{\"title\":\"Configure Twilio\",\"items\":[{\"key\":\"sid\",\"label\":\"Account SID\",\"placeholder\":\"Account SID\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"token\",\"label\":\"Auth Token\",\"placeholder\":\"Auth Token\",\"type\":\"Password\",\"required\":true},{\"key\":\"from\",\"label\":\"From Phone Number\",\"placeholder\":\"From Phone Number\",\"type\":\"SingleLineText\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and Twilio is enabled for notification.\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- ('nc_t6jvfb7fpmiloq', 'UpCloud Object Storage', 'The perfect home for your data. Thanks to the S3-compatible programmable interface,\nyou have a host of options for existing tools and code implementations.\n', 0, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/upcloud.png', NULL, 'Storage', 'Storage', '{\"title\":\"Configure UpCloud Object Storage\",\"items\":[{\"key\":\"bucket\",\"label\":\"Bucket Name\",\"placeholder\":\"Bucket Name\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"endpoint\",\"label\":\"Endpoint\",\"placeholder\":\"Endpoint\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_key\",\"label\":\"Access Key\",\"placeholder\":\"Access Key\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_secret\",\"label\":\"Access Secret\",\"placeholder\":\"Access Secret\",\"type\":\"Password\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and attachment will be stored in UpCloud Object Storage\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- ('nc_tcfpkr57jd4qe9', 'Vultr Object Storage', 'Using Vultr Object Storage can give flexibility and cloud storage that allows applications greater flexibility and access worldwide.', 0, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/vultr.png', NULL, 'Storage', 'Storage', '{\"title\":\"Configure Vultr Object Storage\",\"items\":[{\"key\":\"bucket\",\"label\":\"Bucket Name\",\"placeholder\":\"Bucket Name\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_key\",\"label\":\"Access Key\",\"placeholder\":\"Access Key\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_secret\",\"label\":\"Access Secret\",\"placeholder\":\"Access Secret\",\"type\":\"Password\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed and attachment will be stored in Vultr Object Storage\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- ('nc_y3zph80xfmtak4', 'Scaleway Object Storage', 'Scaleway Object Storage is an S3-compatible object store from Scaleway Cloud Platform.', 0, NULL, '0.0.1', NULL, 'install', NULL, 'plugins/scaleway.png', NULL, 'Storage', 'Storage', '{\"title\":\"Setup Scaleway\",\"items\":[{\"key\":\"bucket\",\"label\":\"Bucket name\",\"placeholder\":\"Bucket name\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"region\",\"label\":\"Region of bucket\",\"placeholder\":\"Region of bucket\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_key\",\"label\":\"Access Key\",\"placeholder\":\"Access Key\",\"type\":\"SingleLineText\",\"required\":true},{\"key\":\"access_secret\",\"label\":\"Access Secret\",\"placeholder\":\"Access Secret\",\"type\":\"Password\",\"required\":true}],\"actions\":[{\"label\":\"Test\",\"placeholder\":\"Test\",\"key\":\"test\",\"actionType\":\"TEST\",\"type\":\"Button\"},{\"label\":\"Save\",\"placeholder\":\"Save\",\"key\":\"save\",\"actionType\":\"SUBMIT\",\"type\":\"Button\"}],\"msgOnInstall\":\"Successfully installed Scaleway Object Storage\",\"msgOnUninstall\":\"\"}', NULL, NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_projects`
-- --

-- CREATE TABLE `nc_projects` (
--   `id` varchar(128) NOT NULL,
--   `title` varchar(255) DEFAULT NULL,
--   `status` varchar(255) DEFAULT NULL,
--   `description` text,
--   `config` text,
--   `meta` text,
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_projects_users`
-- --

-- CREATE TABLE `nc_projects_users` (
--   `project_id` varchar(255) DEFAULT NULL,
--   `user_id` int(10) UNSIGNED DEFAULT NULL,
--   `roles` text,
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_projects_v2`
-- --

-- CREATE TABLE `nc_projects_v2` (
--   `id` varchar(128) NOT NULL,
--   `title` varchar(255) DEFAULT NULL,
--   `prefix` varchar(255) DEFAULT NULL,
--   `status` varchar(255) DEFAULT NULL,
--   `description` text,
--   `meta` text,
--   `color` varchar(255) DEFAULT NULL,
--   `uuid` varchar(255) DEFAULT NULL,
--   `password` varchar(255) DEFAULT NULL,
--   `roles` varchar(255) DEFAULT NULL,
--   `deleted` tinyint(1) DEFAULT '0',
--   `is_meta` tinyint(1) DEFAULT NULL,
--   `order` float(8,2) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `nc_projects_v2`
-- --

-- INSERT INTO `nc_projects_v2` (`id`, `title`, `prefix`, `status`, `description`, `meta`, `color`, `uuid`, `password`, `roles`, `deleted`, `is_meta`, `order`, `created_at`, `updated_at`) VALUES
-- ('p_8n4bdy8my6atqm', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2022-10-17 11:30:07', '2022-10-17 11:30:07');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_project_users_v2`
-- --

-- CREATE TABLE `nc_project_users_v2` (
--   `project_id` varchar(128) DEFAULT NULL,
--   `fk_user_id` varchar(20) DEFAULT NULL,
--   `roles` text,
--   `starred` tinyint(1) DEFAULT NULL,
--   `pinned` tinyint(1) DEFAULT NULL,
--   `group` varchar(255) DEFAULT NULL,
--   `color` varchar(255) DEFAULT NULL,
--   `order` float(8,2) DEFAULT NULL,
--   `hidden` float(8,2) DEFAULT NULL,
--   `opened_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `nc_project_users_v2`
-- --

-- INSERT INTO `nc_project_users_v2` (`project_id`, `fk_user_id`, `roles`, `starred`, `pinned`, `group`, `color`, `order`, `hidden`, `opened_date`, `created_at`, `updated_at`) VALUES
-- ('p_8n4bdy8my6atqm', 'us_hjh14q3euiju4x', 'owner', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-17 11:30:07', '2022-10-17 11:30:07', '2022-10-17 11:30:07');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_relations`
-- --

-- CREATE TABLE `nc_relations` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `project_id` varchar(255) DEFAULT NULL,
--   `db_alias` varchar(255) DEFAULT NULL,
--   `tn` varchar(255) DEFAULT NULL,
--   `rtn` varchar(255) DEFAULT NULL,
--   `_tn` varchar(255) DEFAULT NULL,
--   `_rtn` varchar(255) DEFAULT NULL,
--   `cn` varchar(255) DEFAULT NULL,
--   `rcn` varchar(255) DEFAULT NULL,
--   `_cn` varchar(255) DEFAULT NULL,
--   `_rcn` varchar(255) DEFAULT NULL,
--   `referenced_db_alias` varchar(255) DEFAULT NULL,
--   `type` varchar(255) DEFAULT NULL,
--   `db_type` varchar(255) DEFAULT NULL,
--   `ur` varchar(255) DEFAULT NULL,
--   `dr` varchar(255) DEFAULT NULL,
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL,
--   `fkn` varchar(255) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_resolvers`
-- --

-- CREATE TABLE `nc_resolvers` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `project_id` varchar(255) DEFAULT NULL,
--   `db_alias` varchar(255) DEFAULT 'db',
--   `title` varchar(255) DEFAULT NULL,
--   `resolver` text,
--   `type` varchar(255) DEFAULT NULL,
--   `acl` text,
--   `functions` text,
--   `handler_type` int(11) DEFAULT '1',
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_roles`
-- --

-- CREATE TABLE `nc_roles` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `project_id` varchar(255) DEFAULT NULL,
--   `db_alias` varchar(255) DEFAULT 'db',
--   `title` varchar(255) DEFAULT NULL,
--   `type` varchar(255) DEFAULT 'CUSTOM',
--   `description` varchar(255) DEFAULT NULL,
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `nc_roles`
-- --

-- INSERT INTO `nc_roles` (`id`, `project_id`, `db_alias`, `title`, `type`, `description`, `created_at`, `updated_at`) VALUES
-- (1, '', '', 'owner', 'SYSTEM', 'Can add/remove creators. And full edit database structures & fields.', NULL, NULL),
-- (2, '', '', 'creator', 'SYSTEM', 'Can fully edit database structure & values', NULL, NULL),
-- (3, '', '', 'editor', 'SYSTEM', 'Can edit records but cannot change structure of database/fields', NULL, NULL),
-- (4, '', '', 'commenter', 'SYSTEM', 'Can view and comment the records but cannot edit anything', NULL, NULL),
-- (5, '', '', 'viewer', 'SYSTEM', 'Can view the records but cannot edit anything', NULL, NULL);

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_routes`
-- --

-- CREATE TABLE `nc_routes` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `project_id` varchar(255) DEFAULT NULL,
--   `db_alias` varchar(255) DEFAULT 'db',
--   `title` varchar(255) DEFAULT NULL,
--   `tn` varchar(255) DEFAULT NULL,
--   `tnp` varchar(255) DEFAULT NULL,
--   `tnc` varchar(255) DEFAULT NULL,
--   `relation_type` varchar(255) DEFAULT NULL,
--   `path` text,
--   `type` varchar(255) DEFAULT NULL,
--   `handler` text,
--   `acl` text,
--   `order` int(11) DEFAULT NULL,
--   `functions` text,
--   `handler_type` int(11) DEFAULT '1',
--   `is_custom` tinyint(1) DEFAULT NULL,
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_rpc`
-- --

-- CREATE TABLE `nc_rpc` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `project_id` varchar(255) DEFAULT NULL,
--   `db_alias` varchar(255) DEFAULT 'db',
--   `title` varchar(255) DEFAULT NULL,
--   `tn` varchar(255) DEFAULT NULL,
--   `service` text,
--   `tnp` varchar(255) DEFAULT NULL,
--   `tnc` varchar(255) DEFAULT NULL,
--   `relation_type` varchar(255) DEFAULT NULL,
--   `order` int(11) DEFAULT NULL,
--   `type` varchar(255) DEFAULT NULL,
--   `acl` text,
--   `functions` text,
--   `handler_type` int(11) DEFAULT '1',
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_shared_bases`
-- --

-- CREATE TABLE `nc_shared_bases` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `project_id` varchar(255) DEFAULT NULL,
--   `db_alias` varchar(255) DEFAULT NULL,
--   `roles` varchar(255) DEFAULT 'viewer',
--   `shared_base_id` varchar(255) DEFAULT NULL,
--   `enabled` tinyint(1) DEFAULT '1',
--   `password` varchar(255) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_shared_views`
-- --

-- CREATE TABLE `nc_shared_views` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `project_id` varchar(255) DEFAULT NULL,
--   `db_alias` varchar(255) DEFAULT NULL,
--   `model_name` varchar(255) DEFAULT NULL,
--   `meta` mediumtext,
--   `query_params` mediumtext,
--   `view_id` varchar(255) DEFAULT NULL,
--   `show_all_fields` tinyint(1) DEFAULT NULL,
--   `allow_copy` tinyint(1) DEFAULT NULL,
--   `password` varchar(255) DEFAULT NULL,
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL,
--   `view_type` varchar(255) DEFAULT NULL,
--   `view_name` varchar(255) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_shared_views_v2`
-- --

-- CREATE TABLE `nc_shared_views_v2` (
--   `id` varchar(20) NOT NULL,
--   `fk_view_id` varchar(20) DEFAULT NULL,
--   `meta` mediumtext,
--   `query_params` mediumtext,
--   `view_id` varchar(255) DEFAULT NULL,
--   `show_all_fields` tinyint(1) DEFAULT NULL,
--   `allow_copy` tinyint(1) DEFAULT NULL,
--   `password` varchar(255) DEFAULT NULL,
--   `deleted` tinyint(1) DEFAULT NULL,
--   `order` float(8,2) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_sort_v2`
-- --

-- CREATE TABLE `nc_sort_v2` (
--   `id` varchar(20) NOT NULL,
--   `base_id` varchar(20) DEFAULT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `fk_view_id` varchar(20) DEFAULT NULL,
--   `fk_column_id` varchar(20) DEFAULT NULL,
--   `direction` varchar(255) DEFAULT 'false',
--   `order` float(8,2) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_store`
-- --

-- CREATE TABLE `nc_store` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `project_id` varchar(255) DEFAULT NULL,
--   `db_alias` varchar(255) DEFAULT 'db',
--   `key` varchar(255) DEFAULT NULL,
--   `value` text,
--   `type` varchar(255) DEFAULT NULL,
--   `env` varchar(255) DEFAULT NULL,
--   `tag` varchar(255) DEFAULT NULL,
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `nc_store`
-- --

-- INSERT INTO `nc_store` (`id`, `project_id`, `db_alias`, `key`, `value`, `type`, `env`, `tag`, `created_at`, `updated_at`) VALUES
-- (1, NULL, '', 'NC_DEBUG', '{\"nc:app\":false,\"nc:api:rest\":false,\"nc:api:base\":false,\"nc:api:gql\":false,\"nc:api:grpc\":false,\"nc:migrator\":false,\"nc:datamapper\":false}', NULL, NULL, NULL, NULL, NULL),
-- (2, NULL, '', 'NC_PROJECT_COUNT', '0', NULL, NULL, NULL, NULL, NULL),
-- (3, '', '', 'nc_auth_jwt_secret', 'ef925373-9374-4b93-be33-b0f4b8aefd73', NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- (4, '', '', 'nc_server_id', 'cba471ee39c8d011a6e843b09125205736311ddcad4b579ddc541aae9960c174', NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11'),
-- (5, '', '', 'NC_CONFIG_MAIN', '{\"version\":\"0090000\"}', NULL, NULL, NULL, '2022-10-17 11:28:11', '2022-10-17 11:28:11');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_sync_logs_v2`
-- --

-- CREATE TABLE `nc_sync_logs_v2` (
--   `id` varchar(20) NOT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `fk_sync_source_id` varchar(20) DEFAULT NULL,
--   `time_taken` int(11) DEFAULT NULL,
--   `status` varchar(255) DEFAULT NULL,
--   `status_details` text,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_sync_source_v2`
-- --

-- CREATE TABLE `nc_sync_source_v2` (
--   `id` varchar(20) NOT NULL,
--   `title` varchar(255) DEFAULT NULL,
--   `type` varchar(255) DEFAULT NULL,
--   `details` text,
--   `deleted` tinyint(1) DEFAULT NULL,
--   `enabled` tinyint(1) DEFAULT '1',
--   `order` float(8,2) DEFAULT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `fk_user_id` varchar(20) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_teams_v2`
-- --

-- CREATE TABLE `nc_teams_v2` (
--   `id` varchar(20) NOT NULL,
--   `title` varchar(255) DEFAULT NULL,
--   `org_id` varchar(20) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_team_users_v2`
-- --

-- CREATE TABLE `nc_team_users_v2` (
--   `org_id` varchar(20) DEFAULT NULL,
--   `user_id` varchar(20) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_users_v2`
-- --

-- CREATE TABLE `nc_users_v2` (
--   `id` varchar(20) NOT NULL,
--   `email` varchar(255) DEFAULT NULL,
--   `password` varchar(255) DEFAULT NULL,
--   `salt` varchar(255) DEFAULT NULL,
--   `firstname` varchar(255) DEFAULT NULL,
--   `lastname` varchar(255) DEFAULT NULL,
--   `username` varchar(255) DEFAULT NULL,
--   `refresh_token` varchar(255) DEFAULT NULL,
--   `invite_token` varchar(255) DEFAULT NULL,
--   `invite_token_expires` varchar(255) DEFAULT NULL,
--   `reset_password_expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   `reset_password_token` varchar(255) DEFAULT NULL,
--   `email_verification_token` varchar(255) DEFAULT NULL,
--   `email_verified` tinyint(1) DEFAULT NULL,
--   `roles` varchar(255) DEFAULT 'editor',
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `token_version` varchar(255) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `nc_users_v2`
-- --

-- INSERT INTO `nc_users_v2` (`id`, `email`, `password`, `salt`, `firstname`, `lastname`, `username`, `refresh_token`, `invite_token`, `invite_token_expires`, `reset_password_expires`, `reset_password_token`, `email_verification_token`, `email_verified`, `roles`, `created_at`, `updated_at`, `token_version`) VALUES
-- ('us_hjh14q3euiju4x', 'nikos@advancesvs.com', '$2a$10$czIACeVc26wy6WDB5.lofOBpGuZNvAdkt2dW/0Q74SddHpl9Va05e', '$2a$10$czIACeVc26wy6WDB5.lofO', NULL, NULL, NULL, '2aa81682080a1fa2d593f002db3ec682db155f3227642feef2d60cf58f9e5e6ca452ede48b8f9dd8', NULL, NULL, '2022-10-17 11:29:00', NULL, 'b82a8693-a154-4b87-aff3-f1faa48cab07', NULL, 'user,super', '2022-10-17 11:29:00', '2022-10-17 11:29:00', 'f2591f34a5a8ce38263eee6fc6ab88a951990f9fefc4188e5b39df13f34c92b44b72df651ed2dd74');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_views_v2`
-- --

-- CREATE TABLE `nc_views_v2` (
--   `id` varchar(20) NOT NULL,
--   `base_id` varchar(20) DEFAULT NULL,
--   `project_id` varchar(128) DEFAULT NULL,
--   `fk_model_id` varchar(20) DEFAULT NULL,
--   `title` varchar(255) DEFAULT NULL,
--   `type` int(11) DEFAULT NULL,
--   `is_default` tinyint(1) DEFAULT NULL,
--   `show_system_fields` tinyint(1) DEFAULT NULL,
--   `lock_type` varchar(255) DEFAULT 'collaborative',
--   `uuid` varchar(255) DEFAULT NULL,
--   `password` varchar(255) DEFAULT NULL,
--   `show` tinyint(1) DEFAULT NULL,
--   `order` float(8,2) DEFAULT NULL,
--   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `meta` text
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `xc_knex_migrations`
-- --

-- CREATE TABLE `xc_knex_migrations` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `name` varchar(255) DEFAULT NULL,
--   `batch` int(11) DEFAULT NULL,
--   `migration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `xc_knex_migrations`
-- --

-- INSERT INTO `xc_knex_migrations` (`id`, `name`, `batch`, `migration_time`) VALUES
-- (1, 'project', 1, '2022-10-17 11:28:10'),
-- (2, 'm2m', 1, '2022-10-17 11:28:10'),
-- (3, 'fkn', 1, '2022-10-17 11:28:10'),
-- (4, 'viewType', 1, '2022-10-17 11:28:10'),
-- (5, 'viewName', 1, '2022-10-17 11:28:10'),
-- (6, 'nc_006_alter_nc_shared_views', 1, '2022-10-17 11:28:10'),
-- (7, 'nc_007_alter_nc_shared_views_1', 1, '2022-10-17 11:28:10'),
-- (8, 'nc_008_add_nc_shared_bases', 1, '2022-10-17 11:28:10'),
-- (9, 'nc_009_add_model_order', 1, '2022-10-17 11:28:10'),
-- (10, 'nc_010_add_parent_title_column', 1, '2022-10-17 11:28:10'),
-- (11, 'nc_011_remove_old_ses_plugin', 1, '2022-10-17 11:28:10');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `xc_knex_migrationsv2`
-- --

-- CREATE TABLE `xc_knex_migrationsv2` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `name` varchar(255) DEFAULT NULL,
--   `batch` int(11) DEFAULT NULL,
--   `migration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `xc_knex_migrationsv2`
-- --

-- INSERT INTO `xc_knex_migrationsv2` (`id`, `name`, `batch`, `migration_time`) VALUES
-- (1, 'nc_011', 1, '2022-10-17 11:28:11'),
-- (2, 'nc_012_alter_column_data_types', 1, '2022-10-17 11:28:11'),
-- (3, 'nc_013_sync_source', 1, '2022-10-17 11:28:11'),
-- (4, 'nc_014_alter_column_data_types', 1, '2022-10-17 11:28:11'),
-- (5, 'nc_015_add_meta_col_in_column_table', 1, '2022-10-17 11:28:11'),
-- (6, 'nc_016_alter_hooklog_payload_types', 1, '2022-10-17 11:28:11'),
-- (7, 'nc_017_add_user_token_version_column', 1, '2022-10-17 11:28:11'),
-- (8, 'nc_018_add_meta_in_view', 1, '2022-10-17 11:28:11'),
-- (9, 'nc_019_add_meta_in_meta_tables', 1, '2022-10-17 11:28:11'),
-- (10, 'nc_020_kanban_view', 1, '2022-10-17 11:28:11');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `xc_knex_migrationsv2_lock`
-- --

-- CREATE TABLE `xc_knex_migrationsv2_lock` (
--   `index` int(10) UNSIGNED NOT NULL,
--   `is_locked` int(11) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `xc_knex_migrationsv2_lock`
-- --

-- INSERT INTO `xc_knex_migrationsv2_lock` (`index`, `is_locked`) VALUES
-- (1, 0);

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `xc_knex_migrations_lock`
-- --

-- CREATE TABLE `xc_knex_migrations_lock` (
--   `index` int(10) UNSIGNED NOT NULL,
--   `is_locked` int(11) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `xc_knex_migrations_lock`
-- --

-- INSERT INTO `xc_knex_migrations_lock` (`index`, `is_locked`) VALUES
-- (1, 0);

-- --
-- -- Indexes for dumped tables
-- --

-- --
-- -- Indexes for table `nc_acl`
-- --
-- ALTER TABLE `nc_acl`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_api_tokens`
-- --
-- ALTER TABLE `nc_api_tokens`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_audit`
-- --
-- ALTER TABLE `nc_audit`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY ```nc_audit_index``` (`db_alias`,`project_id`,`model_name`,`model_id`);

-- --
-- -- Indexes for table `nc_audit_v2`
-- --
-- ALTER TABLE `nc_audit_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_audit_v2_base_id_foreign` (`base_id`),
--   ADD KEY `nc_audit_v2_project_id_foreign` (`project_id`),
--   ADD KEY `nc_audit_v2_fk_model_id_foreign` (`fk_model_id`),
--   ADD KEY `nc_audit_v2_row_id_index` (`row_id`);

-- --
-- -- Indexes for table `nc_bases_v2`
-- --
-- ALTER TABLE `nc_bases_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_bases_v2_project_id_foreign` (`project_id`);

-- --
-- -- Indexes for table `nc_columns_v2`
-- --
-- ALTER TABLE `nc_columns_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_columns_v2_fk_model_id_foreign` (`fk_model_id`);

-- --
-- -- Indexes for table `nc_col_formula_v2`
-- --
-- ALTER TABLE `nc_col_formula_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_col_formula_v2_fk_column_id_foreign` (`fk_column_id`);

-- --
-- -- Indexes for table `nc_col_lookup_v2`
-- --
-- ALTER TABLE `nc_col_lookup_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_col_lookup_v2_fk_column_id_foreign` (`fk_column_id`),
--   ADD KEY `nc_col_lookup_v2_fk_relation_column_id_foreign` (`fk_relation_column_id`),
--   ADD KEY `nc_col_lookup_v2_fk_lookup_column_id_foreign` (`fk_lookup_column_id`);

-- --
-- -- Indexes for table `nc_col_relations_v2`
-- --
-- ALTER TABLE `nc_col_relations_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_col_relations_v2_fk_column_id_foreign` (`fk_column_id`),
--   ADD KEY `nc_col_relations_v2_fk_related_model_id_foreign` (`fk_related_model_id`),
--   ADD KEY `nc_col_relations_v2_fk_child_column_id_foreign` (`fk_child_column_id`),
--   ADD KEY `nc_col_relations_v2_fk_parent_column_id_foreign` (`fk_parent_column_id`),
--   ADD KEY `nc_col_relations_v2_fk_mm_model_id_foreign` (`fk_mm_model_id`),
--   ADD KEY `nc_col_relations_v2_fk_mm_child_column_id_foreign` (`fk_mm_child_column_id`),
--   ADD KEY `nc_col_relations_v2_fk_mm_parent_column_id_foreign` (`fk_mm_parent_column_id`);

-- --
-- -- Indexes for table `nc_col_rollup_v2`
-- --
-- ALTER TABLE `nc_col_rollup_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_col_rollup_v2_fk_column_id_foreign` (`fk_column_id`),
--   ADD KEY `nc_col_rollup_v2_fk_relation_column_id_foreign` (`fk_relation_column_id`),
--   ADD KEY `nc_col_rollup_v2_fk_rollup_column_id_foreign` (`fk_rollup_column_id`);

-- --
-- -- Indexes for table `nc_col_select_options_v2`
-- --
-- ALTER TABLE `nc_col_select_options_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_col_select_options_v2_fk_column_id_foreign` (`fk_column_id`);

-- --
-- -- Indexes for table `nc_cron`
-- --
-- ALTER TABLE `nc_cron`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_disabled_models_for_role`
-- --
-- ALTER TABLE `nc_disabled_models_for_role`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `xc_disabled124_idx` (`project_id`,`db_alias`,`title`,`type`,`role`);

-- --
-- -- Indexes for table `nc_disabled_models_for_role_v2`
-- --
-- ALTER TABLE `nc_disabled_models_for_role_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_disabled_models_for_role_v2_fk_view_id_foreign` (`fk_view_id`);

-- --
-- -- Indexes for table `nc_filter_exp_v2`
-- --
-- ALTER TABLE `nc_filter_exp_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_filter_exp_v2_fk_view_id_foreign` (`fk_view_id`),
--   ADD KEY `nc_filter_exp_v2_fk_hook_id_foreign` (`fk_hook_id`),
--   ADD KEY `nc_filter_exp_v2_fk_column_id_foreign` (`fk_column_id`),
--   ADD KEY `nc_filter_exp_v2_fk_parent_id_foreign` (`fk_parent_id`);

-- --
-- -- Indexes for table `nc_form_view_columns_v2`
-- --
-- ALTER TABLE `nc_form_view_columns_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_form_view_columns_v2_fk_view_id_foreign` (`fk_view_id`),
--   ADD KEY `nc_form_view_columns_v2_fk_column_id_foreign` (`fk_column_id`);

-- --
-- -- Indexes for table `nc_form_view_v2`
-- --
-- ALTER TABLE `nc_form_view_v2`
--   ADD PRIMARY KEY (`fk_view_id`);

-- --
-- -- Indexes for table `nc_gallery_view_columns_v2`
-- --
-- ALTER TABLE `nc_gallery_view_columns_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_gallery_view_columns_v2_fk_view_id_foreign` (`fk_view_id`),
--   ADD KEY `nc_gallery_view_columns_v2_fk_column_id_foreign` (`fk_column_id`);

-- --
-- -- Indexes for table `nc_gallery_view_v2`
-- --
-- ALTER TABLE `nc_gallery_view_v2`
--   ADD PRIMARY KEY (`fk_view_id`),
--   ADD KEY `nc_gallery_view_v2_fk_cover_image_col_id_foreign` (`fk_cover_image_col_id`);

-- --
-- -- Indexes for table `nc_grid_view_columns_v2`
-- --
-- ALTER TABLE `nc_grid_view_columns_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_grid_view_columns_v2_fk_view_id_foreign` (`fk_view_id`),
--   ADD KEY `nc_grid_view_columns_v2_fk_column_id_foreign` (`fk_column_id`);

-- --
-- -- Indexes for table `nc_grid_view_v2`
-- --
-- ALTER TABLE `nc_grid_view_v2`
--   ADD PRIMARY KEY (`fk_view_id`);

-- --
-- -- Indexes for table `nc_hooks`
-- --
-- ALTER TABLE `nc_hooks`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_hooks_v2`
-- --
-- ALTER TABLE `nc_hooks_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_hooks_v2_fk_model_id_foreign` (`fk_model_id`);

-- --
-- -- Indexes for table `nc_hook_logs_v2`
-- --
-- ALTER TABLE `nc_hook_logs_v2`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_kanban_view_columns_v2`
-- --
-- ALTER TABLE `nc_kanban_view_columns_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_kanban_view_columns_v2_fk_view_id_foreign` (`fk_view_id`),
--   ADD KEY `nc_kanban_view_columns_v2_fk_column_id_foreign` (`fk_column_id`);

-- --
-- -- Indexes for table `nc_kanban_view_v2`
-- --
-- ALTER TABLE `nc_kanban_view_v2`
--   ADD PRIMARY KEY (`fk_view_id`),
--   ADD KEY `nc_kanban_view_v2_fk_grp_col_id_foreign` (`fk_grp_col_id`),
--   ADD KEY `nc_kanban_view_v2_fk_cover_image_col_id_foreign` (`fk_cover_image_col_id`);

-- --
-- -- Indexes for table `nc_loaders`
-- --
-- ALTER TABLE `nc_loaders`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_migrations`
-- --
-- ALTER TABLE `nc_migrations`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_models`
-- --
-- ALTER TABLE `nc_models`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_models_db_alias_title_index` (`db_alias`,`title`),
--   ADD KEY `nc_models_order_index` (`order`),
--   ADD KEY `nc_models_view_order_index` (`view_order`);

-- --
-- -- Indexes for table `nc_models_v2`
-- --
-- ALTER TABLE `nc_models_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_models_v2_base_id_foreign` (`base_id`),
--   ADD KEY `nc_models_v2_project_id_foreign` (`project_id`);

-- --
-- -- Indexes for table `nc_orgs_v2`
-- --
-- ALTER TABLE `nc_orgs_v2`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_plugins`
-- --
-- ALTER TABLE `nc_plugins`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_plugins_v2`
-- --
-- ALTER TABLE `nc_plugins_v2`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_projects`
-- --
-- ALTER TABLE `nc_projects`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_projects_users`
-- --
-- ALTER TABLE `nc_projects_users`
--   ADD KEY `nc_projects_users_project_id_index` (`project_id`),
--   ADD KEY `nc_projects_users_user_id_index` (`user_id`);

-- --
-- -- Indexes for table `nc_projects_v2`
-- --
-- ALTER TABLE `nc_projects_v2`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_project_users_v2`
-- --
-- ALTER TABLE `nc_project_users_v2`
--   ADD KEY `nc_project_users_v2_project_id_foreign` (`project_id`),
--   ADD KEY `nc_project_users_v2_fk_user_id_foreign` (`fk_user_id`);

-- --
-- -- Indexes for table `nc_relations`
-- --
-- ALTER TABLE `nc_relations`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_relations_db_alias_tn_index` (`db_alias`,`tn`);

-- --
-- -- Indexes for table `nc_resolvers`
-- --
-- ALTER TABLE `nc_resolvers`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_roles`
-- --
-- ALTER TABLE `nc_roles`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_routes`
-- --
-- ALTER TABLE `nc_routes`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_routes_db_alias_title_tn_index` (`db_alias`,`title`,`tn`);

-- --
-- -- Indexes for table `nc_rpc`
-- --
-- ALTER TABLE `nc_rpc`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_shared_bases`
-- --
-- ALTER TABLE `nc_shared_bases`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_shared_views`
-- --
-- ALTER TABLE `nc_shared_views`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_shared_views_v2`
-- --
-- ALTER TABLE `nc_shared_views_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_shared_views_v2_fk_view_id_foreign` (`fk_view_id`);

-- --
-- -- Indexes for table `nc_sort_v2`
-- --
-- ALTER TABLE `nc_sort_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_sort_v2_fk_view_id_foreign` (`fk_view_id`),
--   ADD KEY `nc_sort_v2_fk_column_id_foreign` (`fk_column_id`);

-- --
-- -- Indexes for table `nc_store`
-- --
-- ALTER TABLE `nc_store`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_store_key_index` (`key`);

-- --
-- -- Indexes for table `nc_sync_logs_v2`
-- --
-- ALTER TABLE `nc_sync_logs_v2`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_sync_source_v2`
-- --
-- ALTER TABLE `nc_sync_source_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_sync_source_v2_project_id_foreign` (`project_id`),
--   ADD KEY `nc_sync_source_v2_fk_user_id_foreign` (`fk_user_id`);

-- --
-- -- Indexes for table `nc_teams_v2`
-- --
-- ALTER TABLE `nc_teams_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_teams_v2_org_id_foreign` (`org_id`);

-- --
-- -- Indexes for table `nc_team_users_v2`
-- --
-- ALTER TABLE `nc_team_users_v2`
--   ADD KEY `nc_team_users_v2_org_id_foreign` (`org_id`),
--   ADD KEY `nc_team_users_v2_user_id_foreign` (`user_id`);

-- --
-- -- Indexes for table `nc_users_v2`
-- --
-- ALTER TABLE `nc_users_v2`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `nc_views_v2`
-- --
-- ALTER TABLE `nc_views_v2`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `nc_views_v2_fk_model_id_foreign` (`fk_model_id`);

-- --
-- -- Indexes for table `xc_knex_migrations`
-- --
-- ALTER TABLE `xc_knex_migrations`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `xc_knex_migrationsv2`
-- --
-- ALTER TABLE `xc_knex_migrationsv2`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `xc_knex_migrationsv2_lock`
-- --
-- ALTER TABLE `xc_knex_migrationsv2_lock`
--   ADD PRIMARY KEY (`index`);

-- --
-- -- Indexes for table `xc_knex_migrations_lock`
-- --
-- ALTER TABLE `xc_knex_migrations_lock`
--   ADD PRIMARY KEY (`index`);

-- --
-- -- AUTO_INCREMENT for dumped tables
-- --

-- --
-- -- AUTO_INCREMENT for table `nc_acl`
-- --
-- ALTER TABLE `nc_acl`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `nc_api_tokens`
-- --
-- ALTER TABLE `nc_api_tokens`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `nc_audit`
-- --
-- ALTER TABLE `nc_audit`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `nc_cron`
-- --
-- ALTER TABLE `nc_cron`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `nc_disabled_models_for_role`
-- --
-- ALTER TABLE `nc_disabled_models_for_role`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `nc_hooks`
-- --
-- ALTER TABLE `nc_hooks`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- --
-- -- AUTO_INCREMENT for table `nc_loaders`
-- --
-- ALTER TABLE `nc_loaders`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `nc_migrations`
-- --
-- ALTER TABLE `nc_migrations`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `nc_models`
-- --
-- ALTER TABLE `nc_models`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `nc_plugins`
-- --
-- ALTER TABLE `nc_plugins`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

-- --
-- -- AUTO_INCREMENT for table `nc_relations`
-- --
-- ALTER TABLE `nc_relations`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `nc_resolvers`
-- --
-- ALTER TABLE `nc_resolvers`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `nc_roles`
-- --
-- ALTER TABLE `nc_roles`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

-- --
-- -- AUTO_INCREMENT for table `nc_routes`
-- --
-- ALTER TABLE `nc_routes`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `nc_rpc`
-- --
-- ALTER TABLE `nc_rpc`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `nc_shared_bases`
-- --
-- ALTER TABLE `nc_shared_bases`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `nc_shared_views`
-- --
-- ALTER TABLE `nc_shared_views`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

-- --
-- -- AUTO_INCREMENT for table `nc_store`
-- --
-- ALTER TABLE `nc_store`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

-- --
-- -- AUTO_INCREMENT for table `xc_knex_migrations`
-- --
-- ALTER TABLE `xc_knex_migrations`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

-- --
-- -- AUTO_INCREMENT for table `xc_knex_migrationsv2`
-- --
-- ALTER TABLE `xc_knex_migrationsv2`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

-- --
-- -- AUTO_INCREMENT for table `xc_knex_migrationsv2_lock`
-- --
-- ALTER TABLE `xc_knex_migrationsv2_lock`
--   MODIFY `index` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- --
-- -- AUTO_INCREMENT for table `xc_knex_migrations_lock`
-- --
-- ALTER TABLE `xc_knex_migrations_lock`
--   MODIFY `index` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- --
-- -- Constraints for dumped tables
-- --

-- --
-- -- Constraints for table `nc_audit_v2`
-- --
-- ALTER TABLE `nc_audit_v2`
--   ADD CONSTRAINT `nc_audit_v2_base_id_foreign` FOREIGN KEY (`base_id`) REFERENCES `nc_bases_v2` (`id`),
--   ADD CONSTRAINT `nc_audit_v2_fk_model_id_foreign` FOREIGN KEY (`fk_model_id`) REFERENCES `nc_models_v2` (`id`),
--   ADD CONSTRAINT `nc_audit_v2_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `nc_projects_v2` (`id`);

-- --
-- -- Constraints for table `nc_bases_v2`
-- --
-- ALTER TABLE `nc_bases_v2`
--   ADD CONSTRAINT `nc_bases_v2_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `nc_projects_v2` (`id`);

-- --
-- -- Constraints for table `nc_columns_v2`
-- --
-- ALTER TABLE `nc_columns_v2`
--   ADD CONSTRAINT `nc_columns_v2_fk_model_id_foreign` FOREIGN KEY (`fk_model_id`) REFERENCES `nc_models_v2` (`id`);

-- --
-- -- Constraints for table `nc_col_formula_v2`
-- --
-- ALTER TABLE `nc_col_formula_v2`
--   ADD CONSTRAINT `nc_col_formula_v2_fk_column_id_foreign` FOREIGN KEY (`fk_column_id`) REFERENCES `nc_columns_v2` (`id`);

-- --
-- -- Constraints for table `nc_col_lookup_v2`
-- --
-- ALTER TABLE `nc_col_lookup_v2`
--   ADD CONSTRAINT `nc_col_lookup_v2_fk_column_id_foreign` FOREIGN KEY (`fk_column_id`) REFERENCES `nc_columns_v2` (`id`),
--   ADD CONSTRAINT `nc_col_lookup_v2_fk_lookup_column_id_foreign` FOREIGN KEY (`fk_lookup_column_id`) REFERENCES `nc_columns_v2` (`id`),
--   ADD CONSTRAINT `nc_col_lookup_v2_fk_relation_column_id_foreign` FOREIGN KEY (`fk_relation_column_id`) REFERENCES `nc_columns_v2` (`id`);

-- --
-- -- Constraints for table `nc_col_relations_v2`
-- --
-- ALTER TABLE `nc_col_relations_v2`
--   ADD CONSTRAINT `nc_col_relations_v2_fk_child_column_id_foreign` FOREIGN KEY (`fk_child_column_id`) REFERENCES `nc_columns_v2` (`id`),
--   ADD CONSTRAINT `nc_col_relations_v2_fk_column_id_foreign` FOREIGN KEY (`fk_column_id`) REFERENCES `nc_columns_v2` (`id`),
--   ADD CONSTRAINT `nc_col_relations_v2_fk_mm_child_column_id_foreign` FOREIGN KEY (`fk_mm_child_column_id`) REFERENCES `nc_columns_v2` (`id`),
--   ADD CONSTRAINT `nc_col_relations_v2_fk_mm_model_id_foreign` FOREIGN KEY (`fk_mm_model_id`) REFERENCES `nc_models_v2` (`id`),
--   ADD CONSTRAINT `nc_col_relations_v2_fk_mm_parent_column_id_foreign` FOREIGN KEY (`fk_mm_parent_column_id`) REFERENCES `nc_columns_v2` (`id`),
--   ADD CONSTRAINT `nc_col_relations_v2_fk_parent_column_id_foreign` FOREIGN KEY (`fk_parent_column_id`) REFERENCES `nc_columns_v2` (`id`),
--   ADD CONSTRAINT `nc_col_relations_v2_fk_related_model_id_foreign` FOREIGN KEY (`fk_related_model_id`) REFERENCES `nc_models_v2` (`id`);

-- --
-- -- Constraints for table `nc_col_rollup_v2`
-- --
-- ALTER TABLE `nc_col_rollup_v2`
--   ADD CONSTRAINT `nc_col_rollup_v2_fk_column_id_foreign` FOREIGN KEY (`fk_column_id`) REFERENCES `nc_columns_v2` (`id`),
--   ADD CONSTRAINT `nc_col_rollup_v2_fk_relation_column_id_foreign` FOREIGN KEY (`fk_relation_column_id`) REFERENCES `nc_columns_v2` (`id`),
--   ADD CONSTRAINT `nc_col_rollup_v2_fk_rollup_column_id_foreign` FOREIGN KEY (`fk_rollup_column_id`) REFERENCES `nc_columns_v2` (`id`);

-- --
-- -- Constraints for table `nc_col_select_options_v2`
-- --
-- ALTER TABLE `nc_col_select_options_v2`
--   ADD CONSTRAINT `nc_col_select_options_v2_fk_column_id_foreign` FOREIGN KEY (`fk_column_id`) REFERENCES `nc_columns_v2` (`id`);

-- --
-- -- Constraints for table `nc_disabled_models_for_role_v2`
-- --
-- ALTER TABLE `nc_disabled_models_for_role_v2`
--   ADD CONSTRAINT `nc_disabled_models_for_role_v2_fk_view_id_foreign` FOREIGN KEY (`fk_view_id`) REFERENCES `nc_views_v2` (`id`);

-- --
-- -- Constraints for table `nc_filter_exp_v2`
-- --
-- ALTER TABLE `nc_filter_exp_v2`
--   ADD CONSTRAINT `nc_filter_exp_v2_fk_column_id_foreign` FOREIGN KEY (`fk_column_id`) REFERENCES `nc_columns_v2` (`id`),
--   ADD CONSTRAINT `nc_filter_exp_v2_fk_hook_id_foreign` FOREIGN KEY (`fk_hook_id`) REFERENCES `nc_hooks_v2` (`id`),
--   ADD CONSTRAINT `nc_filter_exp_v2_fk_parent_id_foreign` FOREIGN KEY (`fk_parent_id`) REFERENCES `nc_filter_exp_v2` (`id`),
--   ADD CONSTRAINT `nc_filter_exp_v2_fk_view_id_foreign` FOREIGN KEY (`fk_view_id`) REFERENCES `nc_views_v2` (`id`);

-- --
-- -- Constraints for table `nc_form_view_columns_v2`
-- --
-- ALTER TABLE `nc_form_view_columns_v2`
--   ADD CONSTRAINT `nc_form_view_columns_v2_fk_column_id_foreign` FOREIGN KEY (`fk_column_id`) REFERENCES `nc_columns_v2` (`id`),
--   ADD CONSTRAINT `nc_form_view_columns_v2_fk_view_id_foreign` FOREIGN KEY (`fk_view_id`) REFERENCES `nc_form_view_v2` (`fk_view_id`);

-- --
-- -- Constraints for table `nc_form_view_v2`
-- --
-- ALTER TABLE `nc_form_view_v2`
--   ADD CONSTRAINT `nc_form_view_v2_fk_view_id_foreign` FOREIGN KEY (`fk_view_id`) REFERENCES `nc_views_v2` (`id`);

-- --
-- -- Constraints for table `nc_gallery_view_columns_v2`
-- --
-- ALTER TABLE `nc_gallery_view_columns_v2`
--   ADD CONSTRAINT `nc_gallery_view_columns_v2_fk_column_id_foreign` FOREIGN KEY (`fk_column_id`) REFERENCES `nc_columns_v2` (`id`),
--   ADD CONSTRAINT `nc_gallery_view_columns_v2_fk_view_id_foreign` FOREIGN KEY (`fk_view_id`) REFERENCES `nc_gallery_view_v2` (`fk_view_id`);

-- --
-- -- Constraints for table `nc_gallery_view_v2`
-- --
-- ALTER TABLE `nc_gallery_view_v2`
--   ADD CONSTRAINT `nc_gallery_view_v2_fk_cover_image_col_id_foreign` FOREIGN KEY (`fk_cover_image_col_id`) REFERENCES `nc_columns_v2` (`id`),
--   ADD CONSTRAINT `nc_gallery_view_v2_fk_view_id_foreign` FOREIGN KEY (`fk_view_id`) REFERENCES `nc_views_v2` (`id`);

-- --
-- -- Constraints for table `nc_grid_view_columns_v2`
-- --
-- ALTER TABLE `nc_grid_view_columns_v2`
--   ADD CONSTRAINT `nc_grid_view_columns_v2_fk_column_id_foreign` FOREIGN KEY (`fk_column_id`) REFERENCES `nc_columns_v2` (`id`),
--   ADD CONSTRAINT `nc_grid_view_columns_v2_fk_view_id_foreign` FOREIGN KEY (`fk_view_id`) REFERENCES `nc_grid_view_v2` (`fk_view_id`);

-- --
-- -- Constraints for table `nc_grid_view_v2`
-- --
-- ALTER TABLE `nc_grid_view_v2`
--   ADD CONSTRAINT `nc_grid_view_v2_fk_view_id_foreign` FOREIGN KEY (`fk_view_id`) REFERENCES `nc_views_v2` (`id`);

-- --
-- -- Constraints for table `nc_hooks_v2`
-- --
-- ALTER TABLE `nc_hooks_v2`
--   ADD CONSTRAINT `nc_hooks_v2_fk_model_id_foreign` FOREIGN KEY (`fk_model_id`) REFERENCES `nc_models_v2` (`id`);

-- --
-- -- Constraints for table `nc_kanban_view_columns_v2`
-- --
-- ALTER TABLE `nc_kanban_view_columns_v2`
--   ADD CONSTRAINT `nc_kanban_view_columns_v2_fk_column_id_foreign` FOREIGN KEY (`fk_column_id`) REFERENCES `nc_columns_v2` (`id`),
--   ADD CONSTRAINT `nc_kanban_view_columns_v2_fk_view_id_foreign` FOREIGN KEY (`fk_view_id`) REFERENCES `nc_kanban_view_v2` (`fk_view_id`);

-- --
-- -- Constraints for table `nc_kanban_view_v2`
-- --
-- ALTER TABLE `nc_kanban_view_v2`
--   ADD CONSTRAINT `nc_kanban_view_v2_fk_cover_image_col_id_foreign` FOREIGN KEY (`fk_cover_image_col_id`) REFERENCES `nc_columns_v2` (`id`),
--   ADD CONSTRAINT `nc_kanban_view_v2_fk_grp_col_id_foreign` FOREIGN KEY (`fk_grp_col_id`) REFERENCES `nc_columns_v2` (`id`),
--   ADD CONSTRAINT `nc_kanban_view_v2_fk_view_id_foreign` FOREIGN KEY (`fk_view_id`) REFERENCES `nc_views_v2` (`id`);

-- --
-- -- Constraints for table `nc_models_v2`
-- --
-- ALTER TABLE `nc_models_v2`
--   ADD CONSTRAINT `nc_models_v2_base_id_foreign` FOREIGN KEY (`base_id`) REFERENCES `nc_bases_v2` (`id`),
--   ADD CONSTRAINT `nc_models_v2_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `nc_projects_v2` (`id`);

-- --
-- -- Constraints for table `nc_project_users_v2`
-- --
-- ALTER TABLE `nc_project_users_v2`
--   ADD CONSTRAINT `nc_project_users_v2_fk_user_id_foreign` FOREIGN KEY (`fk_user_id`) REFERENCES `nc_users_v2` (`id`),
--   ADD CONSTRAINT `nc_project_users_v2_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `nc_projects_v2` (`id`);

-- --
-- -- Constraints for table `nc_shared_views_v2`
-- --
-- ALTER TABLE `nc_shared_views_v2`
--   ADD CONSTRAINT `nc_shared_views_v2_fk_view_id_foreign` FOREIGN KEY (`fk_view_id`) REFERENCES `nc_views_v2` (`id`);

-- --
-- -- Constraints for table `nc_sort_v2`
-- --
-- ALTER TABLE `nc_sort_v2`
--   ADD CONSTRAINT `nc_sort_v2_fk_column_id_foreign` FOREIGN KEY (`fk_column_id`) REFERENCES `nc_columns_v2` (`id`),
--   ADD CONSTRAINT `nc_sort_v2_fk_view_id_foreign` FOREIGN KEY (`fk_view_id`) REFERENCES `nc_views_v2` (`id`);

-- --
-- -- Constraints for table `nc_sync_source_v2`
-- --
-- ALTER TABLE `nc_sync_source_v2`
--   ADD CONSTRAINT `nc_sync_source_v2_fk_user_id_foreign` FOREIGN KEY (`fk_user_id`) REFERENCES `nc_users_v2` (`id`),
--   ADD CONSTRAINT `nc_sync_source_v2_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `nc_projects_v2` (`id`);

-- --
-- -- Constraints for table `nc_teams_v2`
-- --
-- ALTER TABLE `nc_teams_v2`
--   ADD CONSTRAINT `nc_teams_v2_org_id_foreign` FOREIGN KEY (`org_id`) REFERENCES `nc_orgs_v2` (`id`);

-- --
-- -- Constraints for table `nc_team_users_v2`
-- --
-- ALTER TABLE `nc_team_users_v2`
--   ADD CONSTRAINT `nc_team_users_v2_org_id_foreign` FOREIGN KEY (`org_id`) REFERENCES `nc_orgs_v2` (`id`),
--   ADD CONSTRAINT `nc_team_users_v2_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `nc_users_v2` (`id`);

-- --
-- -- Constraints for table `nc_views_v2`
-- --
-- ALTER TABLE `nc_views_v2`
--   ADD CONSTRAINT `nc_views_v2_fk_model_id_foreign` FOREIGN KEY (`fk_model_id`) REFERENCES `nc_models_v2` (`id`);
-- --
-- -- Database: `test`
-- --
-- CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
-- USE `test`;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `AirTableAccounts`
-- --

-- CREATE TABLE `AirTableAccounts` (
--   `accountid` int(11) NOT NULL,
--   `userkey` int(11) NOT NULL DEFAULT '-1',
--   `accountname` text NOT NULL,
--   `secrettoken` blob NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --
-- -- Dumping data for table `AirTableAccounts`
-- --

-- INSERT INTO `AirTableAccounts` (`accountid`, `userkey`, `accountname`, `secrettoken`) VALUES
-- (1, 1, 'Sample: AirTable account', 0x8209521fcaaf3cae4cb2aa235edd052e216bffdc4047e1a5ab5cc8d89d7df76815c679d586d7c90cde8a428a90609c520a26ddb3a74d773747),
-- (2, 2, 'Somebody else\'s account', 0x6e6f7420736f20736563726574206b6579),
-- (3, 1, 'George Bruseker', 0x1ee2ebcbd315d9df73b04001472b5ea04eb2013e21a286f5a41336fb8f611c9be237d6536817b15ec217a005b30334d8e7d06e1dddc5731735),
-- (4, 1, 'Getty Semantic', 0x36c95097ec7c9ee532093689158eb6d5b330ebcea0e5b2ebef1abc4c0c5c4f6b8796ba611884aca77a4a09325f335ee65116ec3f4313b20e3b),
-- (5, 1, 'Census', 0xe406459ed3a3444df71bd5b7ec3bc01525b11f52dfae7d88048db5cf9e63b4eb86c214c701d4a1132f46b26602b7982255e94b1f8b1d2c5db1),
-- (6, 1, 'SARI', 0x880b0189e5bc76b98ec288689a74a4d321248155b8c7253603af61ab66416aba8e6264e99e3651acfb7de28ca4747332c1651acd4eaace2302),
-- (7, 1, 'Takin', 0xb44dea8545ce962968a10e10cb06b1014b42387ff06afaf909fc65e274e8c0a838d9133bc7624fe34d001528fc822cca52acc4b17656caacd4);

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `AirTableDatabases`
-- --

-- CREATE TABLE `AirTableDatabases` (
--   `dbaseid` int(11) NOT NULL,
--   `airtableaccountkey` int(11) DEFAULT NULL,
--   `dbasename` text NOT NULL,
--   `dbaseapikey` char(24) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --
-- -- Dumping data for table `AirTableDatabases`
-- --

-- INSERT INTO `AirTableDatabases` (`dbaseid`, `airtableaccountkey`, `dbasename`, `dbaseapikey`) VALUES
-- (1, 1, 'Sample: Getty Art.History', 'appXap4TfbrRkcRSH'),
-- (2, 4, 'George Bruseker', 'apppWYuo1z7E2J7E8'),
-- (3, 3, 'PMA', 'apprwePokoUpYypGI'),
-- (4, 3, 'Census', 'appmG43hOvEy3KYTX'),
-- (7, 6, 'SRDM', 'apposIclAqCiaDQK5'),
-- (11, 2, 'prova', 'prova_001'),
-- (12, 7, 'Parks', 'appy5GlGt8mNaaLTY'),
-- (19, 7, 'LW ITA', 'appfi0G6KhAd75oBJ'),
-- (20, 7, 'Census', 'appssL95VdTk7Yyp8'),
-- (21, 7, 'Semafora', 'appaCfYmUmH78z85c'),
-- (22, 4, 'Rusha Semantic', 'appwH1odeBQ6wGO0R'),
-- (23, 7, 'SIA', 'appxuEwFLHwyHQI5e'),
-- (24, 4, 'Provenance Index', 'appbqedeTCCiJdzv1'),
-- (25, 7, 'Zellij Demo', 'appamJB7znO4hsrq1'),
-- (26, 6, 'JILA', 'appKwSQCuPZqI2icl'),
-- (27, 7, 'DHI', 'apphin4eP30KDPPla');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `ScraperFields`
-- --

-- CREATE TABLE `ScraperFields` (
--   `scraperfieldid` int(11) NOT NULL,
--   `scraperkey` int(11) DEFAULT NULL,
--   `sortorder` int(11) DEFAULT NULL,
--   `tablename` text,
--   `fieldlabel` text,
--   `fieldname` text,
--   `sortable` tinyint(1) DEFAULT NULL,
--   `groupable` tinyint(1) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --
-- -- Dumping data for table `ScraperFields`
-- --

-- INSERT INTO `ScraperFields` (`scraperfieldid`, `scraperkey`, `sortorder`, `tablename`, `fieldlabel`, `fieldname`, `sortable`, `groupable`) VALUES
-- (1, 1, 1, 'Field', 'Identifier', 'Weight', NULL, NULL),
-- (2, 1, 2, 'Field', 'Name', 'Suggested Name', NULL, NULL),
-- (3, 1, 3, 'Field', 'Description', 'Description', NULL, NULL),
-- (4, 1, 4, 'Field', 'CRM Path', 'CRM Path', NULL, NULL),
-- (5, 1, 5, 'Field', 'Turtle RDF', 'Total Turtle', NULL, NULL),
-- (6, 1, 6, 'CRM Class', 'Identifier', 'Class_Nim', NULL, NULL),
-- (7, 1, 7, 'CRM Class', 'Name', 'ID', NULL, NULL),
-- (8, 1, 8, 'CRM Class', 'Turtle RDF', 'Class_Ur_Instance_Turtle', NULL, NULL),
-- (9, 2, 1, 'Collection_Fields', 'Identifier', 'ID (from Field)', NULL, NULL),
-- (10, 2, 2, 'Collection_Fields', 'Name', 'Element name (from Field)', NULL, NULL),
-- (11, 2, 3, 'Collection_Fields', 'Description', 'Description', NULL, NULL),
-- (12, 2, 4, 'Collection_Fields', 'CRM Path', 'CRM Path', NULL, NULL),
-- (13, 2, 5, 'Collection_Fields', 'Turtle RDF', 'Total_Turtle', NULL, NULL),
-- (14, 2, 6, 'Collection', 'Identifier', 'Identifier', NULL, NULL),
-- (15, 2, 7, 'Collection', 'Name', 'Name', NULL, NULL),
-- (16, 2, 8, 'Collection', 'Description', 'Description', NULL, NULL),
-- (17, 2, 9, 'Collection', 'Turtle RDF', 'Collection_Turtle', NULL, NULL),
-- (18, 3, 1, 'Model_Fields', 'Identifier', 'Name', NULL, NULL),
-- (19, 3, 2, 'Model_Fields', 'Name', 'Field Name', NULL, NULL),
-- (20, 3, 3, 'Model_Fields', 'Description', 'Description', NULL, NULL),
-- (21, 3, 4, 'Model_Fields', 'CRM Path', 'CRM Path', NULL, NULL),
-- (22, 3, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', NULL, NULL),
-- (23, 3, 6, 'Model', 'Identifier', 'Identifier', NULL, NULL),
-- (24, 3, 7, 'Model', 'Name', 'Name', NULL, NULL),
-- (25, 3, 8, 'Model', 'Description', 'Description', NULL, NULL),
-- (26, 3, 9, 'Model', 'Turtle RDF', 'Model_Turtle_Prefix', NULL, NULL),
-- (604, 19, 1, 'Model_Fields', 'Category', 'Category', 1, 0),
-- (605, 19, 2, 'Model_Fields', 'Identifier', 'Name', 0, 0),
-- (606, 19, 3, 'Model_Fields', 'CRM Path', 'CRM Path', 0, 0),
-- (607, 19, 4, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0),
-- (608, 19, 5, 'Model_Fields', 'Name', 'Suggested_Name', 0, 0),
-- (609, 19, 6, 'Model_Fields', 'Description', 'Expected Value Type', 0, 0),
-- (610, 19, 1, 'Model', 'Name', 'Name', 1, 0),
-- (611, 19, 2, 'Model', 'Description', 'Model Description', 0, 0),
-- (612, 19, 3, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0),
-- (1540, 34, 1, 'Fields_Category', 'Identifier', 'Field_ID (from Model Field)', 0, 0),
-- (1541, 34, 2, 'Fields_Category', 'Name', 'Model Specific name (from Model Field)', 0, 0),
-- (1542, 34, 3, 'Fields_Category', 'CRM Path', 'CRM_Path (from Model Field)', 0, 0),
-- (1543, 34, 4, 'Fields_Category', 'Turtle RDF', 'Total_Turtle', 0, 0),
-- (1544, 34, 5, 'Fields_Category', 'Description', 'Model Specific Description', 0, 0),
-- (1545, 34, 6, 'Fields_Category', 'Weight', 'Weight', 1, 0),
-- (1546, 34, 7, 'Fields_Category', 'Expected Value Type', 'Expected Value Type', 0, 0),
-- (1547, 34, 1, 'Category_Names', 'Name', 'Name', 0, 0),
-- (1548, 34, 2, 'Category_Names', 'Description', 'Description', 1, 0),
-- (1549, 34, 3, 'Category_Names', 'Turtle RDF', 'Category_Turtle', 0, 0),
-- (1550, 34, 4, 'Category_Names', 'Identifier', 'Identifier', 0, 0),
-- (1655, 24, 1, 'Model_Fields', 'Category', 'Category', 1, 0),
-- (1656, 24, 2, 'Model_Fields', 'Identifier', 'Identifier', 0, 0),
-- (1657, 24, 3, 'Model_Fields', 'CRM Path', 'CRM Path', 0, 0),
-- (1658, 24, 4, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0),
-- (1659, 24, 5, 'Model_Fields', 'Name', 'Field Name', 0, 0),
-- (1660, 24, 6, 'Model_Fields', 'Description', 'Description', 0, 0),
-- (1661, 24, 1, 'Model', 'Name', 'Name', 1, 0),
-- (1662, 24, 2, 'Model', 'Description', 'Description', 0, 0),
-- (1663, 24, 3, 'Model', 'Turtle RDF', 'Model_Total_turtle', 0, 0),
-- (1664, 24, 4, 'Model', 'Identifier', 'Identifier', 0, 0),
-- (1665, 35, 1, 'Fields Category', 'Identifier', 'Name', 0, 0),
-- (1666, 35, 2, 'Fields Category', 'Name', 'Model Specific Name', 0, 0),
-- (1667, 35, 3, 'Fields Category', 'CRM Path', 'CRM Path', 0, 0),
-- (1668, 35, 4, 'Fields Category', 'Turtle RDF', 'Total Turtle', 0, 0),
-- (1669, 35, 5, 'Fields Category', 'Description', 'Description', 0, 0),
-- (1670, 35, 6, 'Fields Category', 'Expected Value Type', 'Expected Value Type', 0, 0),
-- (1671, 35, 1, 'Category', 'Name', 'Name', 0, 0),
-- (1672, 35, 2, 'Category', 'Description', 'Model', 0, 0),
-- (1673, 35, 3, 'Category', 'Turtle RDF', 'Category Turtle', 0, 0),
-- (1674, 35, 4, 'Category', 'Identifier', 'Identifier', 0, 0),
-- (1702, 13, 1, 'Model_Fields', 'Identifier', 'Field_ID', 0, 0),
-- (1703, 13, 2, 'Model_Fields', 'Name', 'Suggested_Name', 1, 0),
-- (1704, 13, 3, 'Model_Fields', 'CRM Path', 'CRM_Path', 0, 1),
-- (1705, 13, 4, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0),
-- (1706, 13, 5, 'Model_Fields', 'Description', 'Description (from Field)', 0, 0),
-- (1707, 13, 1, 'Model', 'Name', 'Name', 0, 0),
-- (1708, 13, 2, 'Model', 'Description', 'Description', 0, 0),
-- (1709, 13, 3, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0),
-- (1710, 13, 4, 'Model', 'Identifier', 'Identifier', 0, 0),
-- (1711, 36, 1, 'Collection_Fields', 'Identifier', 'ID (from Field)', 0, 0),
-- (1712, 36, 2, 'Collection_Fields', 'Name', 'Element name (from Field)', 0, 0),
-- (1713, 36, 3, 'Collection_Fields', 'Description', 'Description', 0, 0),
-- (1714, 36, 4, 'Collection_Fields', 'Turtle RDF', 'Total_Turtle', 0, 0),
-- (1715, 36, 5, 'Collection_Fields', 'CRM Path', 'CRM Path', 0, 0),
-- (1716, 36, 6, 'Collection_Fields', 'Expected Value Type', 'Expect Value Type', 0, 0),
-- (1717, 36, 1, 'Collection', 'Identifier', 'Identifier', 0, 0),
-- (1718, 36, 2, 'Collection', 'Name', 'Name', 0, 0),
-- (1719, 36, 3, 'Collection', 'Description', 'Description', 0, 0),
-- (1720, 36, 4, 'Collection', 'Turtle RDF', 'Collection_Turtle', 0, 0),
-- (1997, 11, 1, 'Collection_Fields', 'Identifier', 'Field_Identifier', 0, 0),
-- (1998, 11, 2, 'Collection_Fields', 'Name', 'Field_UI_Name', 0, 0),
-- (1999, 11, 3, 'Collection_Fields', 'Description', 'Field_Description', 0, 0),
-- (2000, 11, 4, 'Collection_Fields', 'Turtle RDF', 'Total_Turtle', 0, 0),
-- (2001, 11, 5, 'Collection_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0),
-- (2002, 11, 6, 'Collection_Fields', 'Expected Value Type', 'Field_Expected_Value_Type', 0, 0),
-- (2003, 11, 1, 'Collection', 'Identifier', 'Identifier', 0, 0),
-- (2004, 11, 2, 'Collection', 'Name', 'UI_Name', 0, 0),
-- (2005, 11, 3, 'Collection', 'Description', 'Description', 0, 0),
-- (2006, 11, 4, 'Collection', 'Turtle RDF', 'Collection_Turtle', 0, 0),
-- (2015, 7, 1, 'Field', 'Identifier', 'Identifer', 0, 0),
-- (2016, 7, 2, 'Field', 'Description', 'Description', 0, 0),
-- (2017, 7, 3, 'Field', 'Name', 'UI_Name', 1, 0),
-- (2018, 7, 4, 'Field', 'CRM Path', 'Ontological_Path', 0, 0),
-- (2019, 7, 5, 'Field', 'Turtle RDF', 'Total_Turtle', 0, 0),
-- (2020, 7, 1, 'CRM Class', 'Identifier', 'Class_Nim', 0, 0),
-- (2021, 7, 2, 'CRM Class', 'Name', 'ID', 1, 0),
-- (2022, 7, 3, 'CRM Class', 'Turtle', 'Class_Ur_Instance_Turtle', 0, 0),
-- (2092, 14, 1, 'Field', 'Name', 'Name', 0, 0),
-- (2093, 14, 2, 'Field', 'Identifier', 'Identifer', 0, 0),
-- (2094, 14, 3, 'Field', 'Description', 'Description', 0, 0),
-- (2095, 14, 4, 'Field', 'CRM Path', 'CRM Path', 0, 0),
-- (2096, 14, 5, 'Field', 'Turtle RDF', 'prefix_total_turtle', 0, 0),
-- (2097, 14, 1, 'CRM Class', 'Identifier', 'Class_Nim', 0, 0),
-- (2098, 14, 2, 'CRM Class', 'Name', 'ID', 0, 0),
-- (2099, 14, 3, 'CRM Class', 'Turtle', 'Class_Ur_Instance_Turtle', 0, 0),
-- (2100, 37, 1, 'Collection_Fields', 'Identifier', 'ID (from Field)', 0, 0),
-- (2101, 37, 2, 'Collection_Fields', 'Name', 'Element name (from Field)', 0, 0),
-- (2102, 37, 3, 'Collection_Fields', 'Description', 'Description', 0, 0),
-- (2103, 37, 4, 'Collection_Fields', 'Turtle RDF', 'Prefix_Total_Turtle', 0, 0),
-- (2104, 37, 5, 'Collection_Fields', 'CRM Path', 'CRM Path', 0, 0),
-- (2105, 37, 1, 'Collection', 'Identifier', 'Identifier', 0, 0),
-- (2106, 37, 2, 'Collection', 'Name', 'Name', 0, 0),
-- (2107, 37, 3, 'Collection', 'Turtle RDF', 'Collection_Turtle', 0, 0),
-- (2108, 39, 1, 'Model_Fields', 'Identifier', 'identifier', 0, 0),
-- (2109, 39, 2, 'Model_Fields', 'Name', 'Model Specific Name', 0, 0),
-- (2110, 39, 3, 'Model_Fields', 'Description', 'Model Specific Description', 0, 0),
-- (2111, 39, 4, 'Model_Fields', 'CRM Path', 'CRM Path', 0, 0),
-- (2112, 39, 5, 'Model_Fields', 'Turtle RDF', 'Prefix_Total_Turtle', 0, 0),
-- (2113, 39, 1, 'Model', 'Identifier', 'Identifier', 0, 0),
-- (2114, 39, 2, 'Model', 'Name', 'Name', 0, 0),
-- (2115, 39, 3, 'Model', 'Description', 'Description', 0, 0),
-- (2116, 39, 4, 'Model', 'Turtle RDF', 'Model_Turtle', 0, 0),
-- (2135, 40, 1, 'Model_Fields', 'Identifier', 'ID', 0, 0),
-- (2136, 40, 2, 'Model_Fields', 'Name', 'Model_Specific_Name', 0, 0),
-- (2137, 40, 3, 'Model_Fields', 'Description', 'Model_Specific_Description', 0, 0),
-- (2138, 40, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0),
-- (2139, 40, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0),
-- (2140, 40, 1, 'Model', 'Identifier', 'Identifier', 0, 0),
-- (2141, 40, 2, 'Model', 'Name', 'UI_Name', 0, 0),
-- (2142, 40, 3, 'Model', 'Description', 'Description', 0, 0),
-- (2143, 40, 4, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0),
-- (2153, 42, 1, 'Collection_Fields', 'Identifier', 'Field_Identifier', 0, 0),
-- (2154, 42, 2, 'Collection_Fields', 'Name', 'Field_UI_Name', 0, 0),
-- (2155, 42, 3, 'Collection_Fields', 'Description', 'Field_Description', 0, 0),
-- (2156, 42, 4, 'Collection_Fields', 'Turtle RDF', 'Total_Turtle', 0, 0),
-- (2157, 42, 5, 'Collection_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0),
-- (2158, 42, 1, 'Collection', 'Identifier', 'Identifier', 0, 0),
-- (2159, 42, 2, 'Collection', 'Name', 'UI_Name', 0, 0),
-- (2160, 42, 3, 'Collection', 'Description', 'Description', 0, 0),
-- (2161, 42, 4, 'Collection', 'Turtle RDF', 'Collection_Turtle', 0, 0),
-- (2180, 41, 1, 'Model_Fields', 'Identifier', 'ID', 0, 0),
-- (2181, 41, 2, 'Model_Fields', 'Name', 'Model_Specific_Name', 0, 0),
-- (2182, 41, 3, 'Model_Fields', 'Description', 'Model_Specific_Description', 0, 0),
-- (2183, 41, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0),
-- (2184, 41, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0),
-- (2185, 41, 1, 'Model', 'Identifier', 'Identifier', 0, 0),
-- (2186, 41, 2, 'Model', 'Name', 'UI_Name', 0, 0),
-- (2187, 41, 3, 'Model', 'Description', 'Description', 0, 0),
-- (2188, 41, 4, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0),
-- (2663, 44, 1, 'Fields_Category', 'Identifier', 'Field_ID (from Model Field)', 0, 0),
-- (2664, 44, 2, 'Fields_Category', 'Name', 'Model Specific name (from Model Field)', 0, 0),
-- (2665, 44, 3, 'Fields_Category', 'CRM Path', 'CRM_Path (from Model Field)', 0, 0),
-- (2666, 44, 4, 'Fields_Category', 'Turtle RDF', 'Total_Turtle', 0, 0),
-- (2667, 44, 5, 'Fields_Category', 'Description', 'Model Specific Description', 0, 0),
-- (2668, 44, 6, 'Fields_Category', 'Weight', 'Weight', 1, 0),
-- (2669, 44, 7, 'Fields_Category', 'Expected Value Type', 'Expected Value Type', 0, 0),
-- (2670, 44, 1, 'Category_Names', 'Name', 'Name', 1, 0),
-- (2671, 44, 2, 'Category_Names', 'Description', 'Description', 0, 0),
-- (2672, 44, 3, 'Category_Names', 'Turtle RDF', 'Category_Turtle', 0, 0),
-- (2673, 44, 4, 'Category_Names', 'Identifier', 'Identifier', 0, 0),
-- (2728, 50, 1, 'Field', 'Identifier', 'Identifer', 0, 0),
-- (2729, 50, 2, 'Field', 'Description', 'Description', 0, 0),
-- (2730, 50, 3, 'Field', 'Name', 'UI_Name', 0, 0),
-- (2731, 50, 4, 'Field', 'CRM Path', 'Ontological_Path', 0, 0),
-- (2732, 50, 5, 'Field', 'Turtle RDF', 'Total_Turtle', 0, 0),
-- (2733, 50, 1, 'CRM Class', 'Identifier', 'Class_Nim', 0, 0),
-- (2734, 50, 2, 'CRM Class', 'Name', 'ID', 0, 0),
-- (2735, 50, 3, 'CRM Class', 'Turtle', 'Class_Ur_Instance_Turtle', 0, 0),
-- (2736, 51, 1, 'Collection_Fields', 'Identifier', 'Field_Identifier', 0, 0),
-- (2737, 51, 2, 'Collection_Fields', 'Name', 'Field_UI_Name', 0, 0),
-- (2738, 51, 3, 'Collection_Fields', 'Description', 'Field_Description', 0, 0),
-- (2739, 51, 4, 'Collection_Fields', 'Turtle RDF', 'Total_Turtle', 0, 0),
-- (2740, 51, 5, 'Collection_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0),
-- (2741, 51, 6, 'Collection_Fields', 'Expected Value Type', 'Field_Expected_Value_Type', 0, 0),
-- (2742, 51, 1, 'Collection', 'Identifier', 'Identifier', 0, 0),
-- (2743, 51, 2, 'Collection', 'Name', 'UI_Name', 0, 0),
-- (2744, 51, 3, 'Collection', 'Description', 'Description', 0, 0),
-- (2745, 51, 4, 'Collection', 'Turtle RDF', 'Collection_Turtle', 0, 0),
-- (2746, 46, 1, 'Model_Fields', 'Identifier', 'ID', 0, 0),
-- (2747, 46, 2, 'Model_Fields', 'Name', 'Field_UI_Name', 0, 0),
-- (2748, 46, 3, 'Model_Fields', 'Description', 'Field_Description', 0, 0),
-- (2749, 46, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0),
-- (2750, 46, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0),
-- (2751, 46, 1, 'Model', 'Identifier', 'Identifier', 0, 0),
-- (2752, 46, 2, 'Model', 'Name', 'UI_Name', 0, 0),
-- (2753, 46, 3, 'Model', 'Description', 'Description', 0, 0),
-- (2754, 46, 4, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0),
-- (2755, 52, 1, 'Model_Fields', 'Identifier', 'ID', 0, 0),
-- (2756, 52, 2, 'Model_Fields', 'Name', 'Model_Specific_Name', 0, 0),
-- (2757, 52, 3, 'Model_Fields', 'Description', 'Model_Specific_Description', 0, 0),
-- (2758, 52, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0),
-- (2759, 52, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0),
-- (2760, 52, 1, 'Model', 'Identifier', 'Identifier', 0, 0),
-- (2761, 52, 2, 'Model', 'Name', 'UI_Name', 0, 0),
-- (2762, 52, 3, 'Model', 'Description', 'Description', 0, 0),
-- (2763, 52, 4, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0),
-- (2890, 53, 1, 'Category_Fields', 'Identifier', 'Field_Identifier', 0, 0),
-- (2891, 53, 2, 'Category_Fields', 'Name', 'Field_UI_Name', 0, 0),
-- (2892, 53, 3, 'Category_Fields', 'Description', 'Field_Description', 0, 0),
-- (2893, 53, 4, 'Category_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0),
-- (2894, 53, 5, 'Category_Fields', 'Turtle RDF', 'Total_Turtle', 0, 0),
-- (2895, 53, 1, 'Category', 'Name', 'ID', 0, 0),
-- (2896, 53, 2, 'Category', 'Description', 'Description', 0, 0),
-- (2897, 53, 3, 'Category', 'Turtle RDF', 'Category_Turtle', 0, 0),
-- (2898, 53, 4, 'Category', 'Identifier', 'Identifier', 0, 0),
-- (3016, 56, 1, 'Collection_Fields', 'Identifier', 'Field_Identifier', 0, 0),
-- (3017, 56, 2, 'Collection_Fields', 'Name', 'Field_UI_Name', 0, 0),
-- (3018, 56, 3, 'Collection_Fields', 'Description', 'Field_Description', 0, 0),
-- (3019, 56, 4, 'Collection_Fields', 'Turtle RDF', 'Total_Turtle', 0, 0),
-- (3020, 56, 5, 'Collection_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0),
-- (3021, 56, 6, 'Collection_Fields', 'Expected Value Type', 'Field_Expected_Value_Type', 0, 0),
-- (3022, 56, 1, 'Collection', 'Identifier', 'Identifier', 0, 0),
-- (3023, 56, 2, 'Collection', 'Name', 'UI_Name', 0, 0),
-- (3024, 56, 3, 'Collection', 'Description', 'Description', 0, 0),
-- (3025, 56, 4, 'Collection', 'Turtle RDF', 'Collection_Turtle', 0, 0),
-- (3053, 54, 1, 'Model_Fields', 'Identifier', 'ID', 0, 0),
-- (3054, 54, 2, 'Model_Fields', 'Name', 'Model_Specific_Field_Name', 0, 0),
-- (3055, 54, 3, 'Model_Fields', 'Description', 'Model_Specific_Description', 0, 0),
-- (3056, 54, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0),
-- (3057, 54, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0),
-- (3058, 54, 1, 'Model', 'Identifier', 'Identifier', 0, 0),
-- (3059, 54, 2, 'Model', 'Name', 'UI_Name', 0, 0),
-- (3060, 54, 3, 'Model', 'Description', 'Description', 0, 0),
-- (3061, 54, 4, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0),
-- (3062, 58, 1, 'Model_Fields', 'Identifier', 'ID', 0, 0),
-- (3063, 58, 2, 'Model_Fields', 'Name', 'Model_Specific_Name', 0, 0),
-- (3064, 58, 3, 'Model_Fields', 'Description', 'Model_Specific_Description', 0, 0),
-- (3065, 58, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0),
-- (3066, 58, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0),
-- (3067, 58, 1, 'Model', 'Identifier', 'Identifier', 0, 0),
-- (3068, 58, 2, 'Model', 'Name', 'UI_Name', 0, 0),
-- (3069, 58, 3, 'Model', 'Description', 'Description', 0, 0),
-- (3070, 58, 4, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0),
-- (3081, 59, 1, 'Collection_Fields', 'Identifier', 'Field_Identifier', 0, 0),
-- (3082, 59, 2, 'Collection_Fields', 'Name', 'Field_UI_Name', 0, 0),
-- (3083, 59, 3, 'Collection_Fields', 'Description', 'Field_Description', 0, 0),
-- (3084, 59, 4, 'Collection_Fields', 'Turtle RDF', 'Total_Turtle', 0, 0),
-- (3085, 59, 5, 'Collection_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0),
-- (3086, 59, 6, 'Collection_Fields', 'Expected Value Type', 'Field_Expected_Value_Type', 0, 0),
-- (3087, 59, 1, 'Collection', 'Identifier', 'Identifier', 0, 0),
-- (3088, 59, 2, 'Collection', 'Name', 'UI_Name', 0, 0),
-- (3089, 59, 3, 'Collection', 'Description', 'Description', 0, 0),
-- (3090, 59, 4, 'Collection', 'Turtle RDF', 'Collection_Turtle', 0, 0),
-- (3091, 61, 1, 'Model_Fields', 'Identifier', 'ID', 0, 0),
-- (3092, 61, 2, 'Model_Fields', 'Name', 'Model_Specific_Name', 0, 0),
-- (3093, 61, 3, 'Model_Fields', 'Description', 'Model_Specific_Description', 0, 0),
-- (3094, 61, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0),
-- (3095, 61, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0),
-- (3096, 61, 1, 'Model', 'Identifier', 'Identifier', 0, 0),
-- (3097, 61, 2, 'Model', 'Name', 'UI_Name', 0, 0),
-- (3098, 61, 3, 'Model', 'Description', 'Description', 0, 0),
-- (3099, 61, 4, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0),
-- (3100, 62, 1, 'Collection_Fields', 'Identifier', 'Field_Identifier', 0, 0),
-- (3101, 62, 2, 'Collection_Fields', 'Name', 'Field_UI_Name', 0, 0),
-- (3102, 62, 3, 'Collection_Fields', 'Description', 'Field_Description', 0, 0),
-- (3103, 62, 4, 'Collection_Fields', 'Turtle RDF', 'Total_Turtle', 0, 0),
-- (3104, 62, 5, 'Collection_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0),
-- (3105, 62, 6, 'Collection_Fields', 'Expected Value Type', 'Field_Expected_Value_Type', 0, 0),
-- (3106, 62, 1, 'Collection', 'Identifier', 'Identifier', 0, 0),
-- (3107, 62, 2, 'Collection', 'Name', 'UI_Name', 0, 0),
-- (3108, 62, 3, 'Collection', 'Description', 'Description', 0, 0),
-- (3109, 62, 4, 'Collection', 'Turtle RDF', 'Collection_Turtle', 0, 0),
-- (3119, 64, 1, 'Model_Fields', 'Identifier', 'ID', 0, 0),
-- (3120, 64, 2, 'Model_Fields', 'Name', 'Model_Specific_Field_Name', 0, 0),
-- (3121, 64, 3, 'Model_Fields', 'Description', 'Model_Specific_Description', 0, 0),
-- (3122, 64, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0),
-- (3123, 64, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0),
-- (3124, 64, 1, 'Model', 'Identifier', 'Identifier', 0, 0),
-- (3125, 64, 2, 'Model', 'Name', 'UI_Name', 0, 0),
-- (3126, 64, 3, 'Model', 'Description', 'Description', 0, 0),
-- (3127, 64, 4, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0),
-- (3155, 47, 1, 'Model_Fields', 'Identifier', 'ID', 0, 0),
-- (3156, 47, 2, 'Model_Fields', 'Name', 'Model_Specific_Name', 0, 0),
-- (3157, 47, 3, 'Model_Fields', 'Description', 'Model_Specific_Description', 0, 0),
-- (3158, 47, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0),
-- (3159, 47, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0),
-- (3160, 47, 1, 'Model', 'Identifier', 'Identifier', 0, 0),
-- (3161, 47, 2, 'Model', 'Name', 'UI_Name', 0, 0),
-- (3162, 47, 3, 'Model', 'Description', 'Description', 0, 0),
-- (3163, 47, 4, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0),
-- (3164, 12, 1, 'Model_Fields', 'Identifier', 'ID', 0, 0),
-- (3165, 12, 2, 'Model_Fields', 'Name', 'Model_Specific_Field_Name', 0, 0),
-- (3166, 12, 3, 'Model_Fields', 'Description', 'Model_Specific_Description', 0, 0),
-- (3167, 12, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0),
-- (3168, 12, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0),
-- (3169, 12, 1, 'Model', 'Identifier', 'Identifier', 0, 0),
-- (3170, 12, 2, 'Model', 'Name', 'UI_Name', 0, 0),
-- (3171, 12, 3, 'Model', 'Description', 'Description', 0, 0),
-- (3172, 12, 4, 'Model', 'Turtle RDF', 'Model_Total_turtle', 0, 0);

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `Scrapers`
-- --

-- CREATE TABLE `Scrapers` (
--   `scraperid` int(11) NOT NULL,
--   `dbasekey` int(11) DEFAULT NULL,
--   `scrapername` text NOT NULL,
--   `data_table` char(32) NOT NULL,
--   `data_keyfield` char(32) NOT NULL,
--   `data_groupby` char(32) DEFAULT NULL,
--   `group_table` char(32) DEFAULT NULL,
--   `group_keyfield` char(32) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --
-- -- Dumping data for table `Scrapers`
-- --

-- INSERT INTO `Scrapers` (`scraperid`, `dbasekey`, `scrapername`, `data_table`, `data_keyfield`, `data_groupby`, `group_table`, `group_keyfield`) VALUES
-- (1, 1, 'Fields', 'Field', 'ID', 'CRM Class', 'CRM Class', 'ID'),
-- (2, 1, 'Collections', 'Collection_Fields', 'Name', 'Collection', 'Collection', 'ID'),
-- (3, 1, 'Model', 'Model_Fields', 'Name', 'Model', 'Model', 'ID'),
-- (7, 2, 'Fields', 'Field', 'ID', 'Ontology_Scope', 'CRM Class', 'ID'),
-- (11, 2, 'Collections', 'Collection_Fields', 'ID', 'Collection', 'Collection', 'ID'),
-- (12, 2, 'Model', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
-- (13, 4, 'Model', 'Model_Fields', 'Name', 'Model', 'Model', 'ID'),
-- (14, 7, 'Field', 'Field', 'ID', 'Ontological Scope', 'CRM Class', 'ID'),
-- (19, 3, 'Model', 'Model_Fields', 'Suggested_Name', 'Model', 'Model', 'ID'),
-- (24, 12, 'Model', 'Model_Fields', 'Identifier', 'Model', 'Model', 'ID'),
-- (34, 4, 'Category', 'Fields_Category', 'ID', 'Category', 'Category_Names', 'ID'),
-- (35, 3, 'Category', 'Fields Category', 'Name', 'Category', 'Category', 'ID'),
-- (36, 12, 'Collections', 'Collection_Fields', 'Name', 'Collection', 'Collection', 'ID'),
-- (37, 7, 'Collections', 'Collection_Fields', 'Name', 'Collection', 'Collection', 'ID'),
-- (39, 7, 'Models', 'Model_Fields', 'Name', 'Model', 'Model', 'ID'),
-- (40, 19, 'Model', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
-- (41, 20, 'Model', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
-- (42, 20, 'Collection', 'Collection_Fields', 'ID', 'Collection', 'Collection', 'ID'),
-- (44, 20, 'Category', 'Fields_Category', 'ID', 'Category', 'Category_Names', 'ID'),
-- (46, 21, 'Model', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
-- (47, 22, 'Model', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
-- (50, 22, 'Fields', 'Field', 'ID', 'Ontology_Scope', 'CRM Class', 'ID'),
-- (51, 22, 'Collections', 'Collection_Fields', 'ID', 'Collection', 'Collection', 'ID'),
-- (52, 23, 'Model', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
-- (53, 23, 'Category', 'Category_Fields', 'ID', 'Category', 'Category', 'ID'),
-- (54, 24, 'Model', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
-- (56, 24, 'Collections', 'Collection_Fields', 'ID', 'Collection', 'Collection', 'ID'),
-- (58, 25, 'Model', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
-- (59, 25, 'Collections', 'Collection_Fields', 'ID', 'Collection', 'Collection', 'ID'),
-- (61, 26, 'Models', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
-- (62, 26, 'Collections', 'Collection_Fields', 'ID', 'Collection', 'Collection', 'ID'),
-- (63, 27, 'Collections', 'Collection_Fields', 'ID', 'Collection', 'Collection', 'ID'),
-- (64, 27, 'Models', 'Model_Fields', 'ID', 'Model', 'Model', 'ID');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `Users`
-- --

-- CREATE TABLE `Users` (
--   `userid` int(11) NOT NULL,
--   `username` text NOT NULL,
--   `password` text NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --
-- -- Dumping data for table `Users`
-- --

-- INSERT INTO `Users` (`userid`, `username`, `password`) VALUES
-- (1, 'stilpo', 'pbkdf2:sha256:150000$s5NNndzm$34719c682bc05d0d711237b36497e49c873088252b0139bc1ffce98379e09f31'),
-- (2, 'akillus', 'pbkdf2:sha256:150000$35H1wn9t$3488c08de304ee2109dc5fe87cc31b31a1ca09b37d4816774d9dcf0dd67f4ff9'),
-- (3, 'Artemis Kapitsakis', 'pbkdf2:sha256:150000$04OfRlI7$dc79151484734021421e59e19619051c9bd4d54f6284a3a871d370ef70911318'),
-- (4, 'a', 'pbkdf2:sha256:150000$GxbZmIBQ$a2357de693673a5b1fefdfbdeb227f1d6bdcb6f9ad7ad08b8f52be6166f98075');

-- --
-- -- Indexes for dumped tables
-- --

-- --
-- -- Indexes for table `AirTableAccounts`
-- --
-- ALTER TABLE `AirTableAccounts`
--   ADD PRIMARY KEY (`accountid`),
--   ADD UNIQUE KEY `accountname` (`accountname`(24)),
--   ADD KEY `usersort` (`userkey`,`accountname`(24));

-- --
-- -- Indexes for table `AirTableDatabases`
-- --
-- ALTER TABLE `AirTableDatabases`
--   ADD PRIMARY KEY (`dbaseid`),
--   ADD UNIQUE KEY `dbaseapikey` (`dbaseapikey`),
--   ADD UNIQUE KEY `airtableaccountkey` (`airtableaccountkey`,`dbasename`(24)),
--   ADD KEY `airtablesort` (`airtableaccountkey`,`dbasename`(24));

-- --
-- -- Indexes for table `ScraperFields`
-- --
-- ALTER TABLE `ScraperFields`
--   ADD PRIMARY KEY (`scraperfieldid`);

-- --
-- -- Indexes for table `Scrapers`
-- --
-- ALTER TABLE `Scrapers`
--   ADD PRIMARY KEY (`scraperid`),
--   ADD KEY `airtablesort` (`dbasekey`,`scrapername`(24));

-- --
-- -- Indexes for table `Users`
-- --
-- ALTER TABLE `Users`
--   ADD PRIMARY KEY (`userid`),
--   ADD UNIQUE KEY `username` (`username`(24));

-- --
-- -- AUTO_INCREMENT for dumped tables
-- --

-- --
-- -- AUTO_INCREMENT for table `AirTableAccounts`
-- --
-- ALTER TABLE `AirTableAccounts`
--   MODIFY `accountid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

-- --
-- -- AUTO_INCREMENT for table `AirTableDatabases`
-- --
-- ALTER TABLE `AirTableDatabases`
--   MODIFY `dbaseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

-- --
-- -- AUTO_INCREMENT for table `ScraperFields`
-- --
-- ALTER TABLE `ScraperFields`
--   MODIFY `scraperfieldid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3173;

-- --
-- -- AUTO_INCREMENT for table `Scrapers`
-- --
-- ALTER TABLE `Scrapers`
--   MODIFY `scraperid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

-- --
-- -- AUTO_INCREMENT for table `Users`
-- --
-- ALTER TABLE `Users`
--   MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
-- --
-- -- Database: `test_noco`
-- --
-- CREATE DATABASE IF NOT EXISTS `test_noco` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
-- USE `test_noco`;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `nc_evolutions`
-- --

-- CREATE TABLE `nc_evolutions` (
--   `id` int(10) UNSIGNED NOT NULL,
--   `title` varchar(255) NOT NULL,
--   `titleDown` varchar(255) DEFAULT NULL,
--   `description` varchar(255) DEFAULT NULL,
--   `batch` int(11) DEFAULT NULL,
--   `checksum` varchar(255) DEFAULT NULL,
--   `status` int(11) DEFAULT NULL,
--   `created` datetime DEFAULT NULL,
--   `created_at` datetime DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Indexes for dumped tables
-- --

-- --
-- -- Indexes for table `nc_evolutions`
-- --
-- ALTER TABLE `nc_evolutions`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- AUTO_INCREMENT for dumped tables
-- --

-- --
-- -- AUTO_INCREMENT for table `nc_evolutions`
-- --
-- ALTER TABLE `nc_evolutions`
--   MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
-- COMMIT;

-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
