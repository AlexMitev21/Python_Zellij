-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Mar 22, 2023 at 10:48 AM
-- Server version: 5.7.34
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `AirTableAccounts`
--

CREATE TABLE `AirTableAccounts`
(
    `accountid`   int(11) NOT NULL,
    `userkey`     int(11) NOT NULL DEFAULT '-1',
    `accountname` text    NOT NULL,
    `secrettoken` blob    NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- Dumping data for table `AirTableAccounts`
--

INSERT INTO `AirTableAccounts` (`accountid`, `userkey`, `accountname`, `secrettoken`)
VALUES (1, 1, 'Sample: AirTable account',
        0x8209521fcaaf3cae4cb2aa235edd052e216bffdc4047e1a5ab5cc8d89d7df76815c679d586d7c90cde8a428a90609c520a26ddb3a74d773747),
       (2, 2, 'Somebody else\'s account', 0x6e6f7420736f20736563726574206b6579),
       (3, 1, 'George Bruseker', ''),
       (4, 1, 'Getty Semantic',
        0x36c95097ec7c9ee532093689158eb6d5b330ebcea0e5b2ebef1abc4c0c5c4f6b8796ba611884aca77a4a09325f335ee65116ec3f4313b20e3b),
       (5, 1, 'Census', ''),
       (6, 1, 'SARI',
        0x880b0189e5bc76b98ec288689a74a4d321248155b8c7253603af61ab66416aba8e6264e99e3651acfb7de28ca4747332c1651acd4eaace2302),
       (7, 1, 'Takin',
        0xb44dea8545ce962968a10e10cb06b1014b42387ff06afaf909fc65e274e8c0a838d9133bc7624fe34d001528fc822cca52acc4b17656caacd4),
       (8, 5, 'test',
        0xbcd75debeac735fdd000d17b1cc086b1dbcbaade42d1047cfb346502085423ced2b977b16aa329a0c48916b7959467a7a0a0817a4521b18d6c),
       (11, 1, 'test2',
        0x3aa96c5751c4e486cf7ede08be6819ecdcbe1e1243cf1a7804dc0b92eb9b680aa06c5aebcca880565906bd0881903fcd3e2291c660f047ea26);

-- --------------------------------------------------------

--
-- Table structure for table `AirTableDatabases`
--

CREATE TABLE `AirTableDatabases`
(
    `dbaseid`            int(11)  NOT NULL,
    `airtableaccountkey` int(11) DEFAULT NULL,
    `dbasename`          text     NOT NULL,
    `dbaseapikey`        char(24) NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- Dumping data for table `AirTableDatabases`
--

INSERT INTO `AirTableDatabases` (`dbaseid`, `airtableaccountkey`, `dbasename`, `dbaseapikey`)
VALUES (1, 1, 'Sample: Getty Art.History', 'appXap4TfbrRkcRSH'),
       (2, 4, 'George Bruseker', 'apppWYuo1z7E2J7E8'),
       (3, 3, 'PMA', 'apprwePokoUpYypGI'),
       (4, 3, 'Census', 'appmG43hOvEy3KYTX'),
       (7, 6, 'SRDM', 'apposIclAqCiaDQK5'),
       (11, 2, 'prova', 'prova_001'),
       (12, 7, 'Parks', 'appy5GlGt8mNaaLTY'),
       (19, 7, 'LW ITA', 'appfi0G6KhAd75oBJ'),
       (20, 7, 'Census', 'appssL95VdTk7Yyp8'),
       (21, 7, 'Semafora', 'appaCfYmUmH78z85c'),
       (22, 4, 'Rusha Semantic', 'appwH1odeBQ6wGO0R'),
       (23, 7, 'SIA', 'appxuEwFLHwyHQI5e'),
       (24, 4, 'Provenance Index', 'appbqedeTCCiJdzv1'),
       (25, 7, 'Zellij Demo', 'appamJB7znO4hsrq1'),
       (26, 6, 'JILA', 'appKwSQCuPZqI2icl'),
       (27, 7, 'DHI', 'apphin4eP30KDPPla'),
       (29, 9, 'Censusw', 'app7rr0CLS4P1wCHH'),
       (30, 8, 'test2', 'keyxfJFtAL3CzTj5L'),
       (33, 8, 'testt', 'appCMPXHA1h2VJa9C'),
       (36, 11, 'surv collection', 'app53H4DTAnIhtx0W'),
       (37, 11, 'census field', 'app9nj09Df3TzFUYl');

-- --------------------------------------------------------

--
-- Table structure for table `ScraperFields`
--

CREATE TABLE `ScraperFields`
(
    `scraperfieldid` int(11) NOT NULL,
    `scraperkey`     int(11)    DEFAULT NULL,
    `sortorder`      int(11)    DEFAULT NULL,
    `tablename`      text,
    `fieldlabel`     text,
    `fieldname`      text,
    `sortable`       tinyint(1) DEFAULT NULL,
    `groupable`      tinyint(1) DEFAULT NULL,
    `hideable`       tinyint(1) DEFAULT NULL,
    `function`       text       DEFAULT NULL,
    `link`           text       DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- Dumping data for table `ScraperFields`
--

INSERT INTO `ScraperFields` (`scraperfieldid`, `scraperkey`, `sortorder`, `tablename`, `fieldlabel`, `fieldname`,
                             `sortable`, `groupable`, `hideable`)
VALUES (1, 1, 1, 'Field', 'Identifier', 'Weight', NULL, NULL, NULL),
       (2, 1, 2, 'Field', 'Name', 'Suggested Name', NULL, NULL, NULL),
       (3, 1, 3, 'Field', 'Description', 'Description', NULL, NULL, NULL),
       (4, 1, 4, 'Field', 'CRM Path', 'CRM Path', NULL, NULL, NULL),
       (5, 1, 5, 'Field', 'Turtle RDF', 'Total Turtle', NULL, NULL, NULL),
       (6, 1, 6, 'CRM Class', 'Identifier', 'Class_Nim', NULL, NULL, NULL),
       (7, 1, 7, 'CRM Class', 'Name', 'ID', NULL, NULL, NULL),
       (8, 1, 8, 'CRM Class', 'Turtle RDF', 'Class_Ur_Instance_Turtle', NULL, NULL, NULL),
       (9, 2, 1, 'Collection_Fields', 'Identifier', 'ID (from Field)', NULL, NULL, NULL),
       (10, 2, 2, 'Collection_Fields', 'Name', 'Element name (from Field)', NULL, NULL, NULL),
       (11, 2, 3, 'Collection_Fields', 'Description', 'Description', NULL, NULL, NULL),
       (12, 2, 4, 'Collection_Fields', 'CRM Path', 'CRM Path', NULL, NULL, NULL),
       (13, 2, 5, 'Collection_Fields', 'Turtle RDF', 'Total_Turtle', NULL, NULL, NULL),
       (14, 2, 6, 'Collection', 'Identifier', 'Identifier', NULL, NULL, NULL),
       (15, 2, 7, 'Collection', 'Name', 'Name', NULL, NULL, NULL),
       (16, 2, 8, 'Collection', 'Description', 'Description', NULL, NULL, NULL),
       (17, 2, 9, 'Collection', 'Turtle RDF', 'Collection_Turtle', NULL, NULL, NULL),
       (1540, 34, 1, 'Fields_Category', 'Identifier', 'Field_ID (from Model Field)', 0, 0, 0),
       (1541, 34, 2, 'Fields_Category', 'Name', 'Model Specific name (from Model Field)', 0, 0, 0),
       (1542, 34, 3, 'Fields_Category', 'CRM Path', 'CRM_Path (from Model Field)', 0, 0, 0),
       (1543, 34, 4, 'Fields_Category', 'Turtle RDF', 'Total_Turtle', 0, 0, 0),
       (1544, 34, 5, 'Fields_Category', 'Description', 'Model Specific Description', 0, 0, 0),
       (1545, 34, 6, 'Fields_Category', 'Weight', 'Weight', 1, 0, 0),
       (1546, 34, 7, 'Fields_Category', 'Expected Value Type', 'Expected Value Type', 0, 0, 0),
       (1547, 34, 1, 'Category_Names', 'Name', 'Name', 0, 0, 0),
       (1548, 34, 2, 'Category_Names', 'Description', 'Description', 1, 0, 0),
       (1549, 34, 3, 'Category_Names', 'Turtle RDF', 'Category_Turtle', 0, 0, 0),
       (1550, 34, 4, 'Category_Names', 'Identifier', 'Identifier', 0, 0, 0),
       (1665, 35, 1, 'Fields Category', 'Identifier', 'Name', 0, 0, 0),
       (1666, 35, 2, 'Fields Category', 'Name', 'Model Specific Name', 0, 0, 0),
       (1667, 35, 3, 'Fields Category', 'CRM Path', 'CRM Path', 0, 0, 0),
       (1668, 35, 4, 'Fields Category', 'Turtle RDF', 'Total Turtle', 0, 0, 0),
       (1669, 35, 5, 'Fields Category', 'Description', 'Description', 0, 0, 0),
       (1670, 35, 6, 'Fields Category', 'Expected Value Type', 'Expected Value Type', 0, 0, 0),
       (1671, 35, 1, 'Category', 'Name', 'Name', 0, 0, 0),
       (1672, 35, 2, 'Category', 'Description', 'Model', 0, 0, 0),
       (1673, 35, 3, 'Category', 'Turtle RDF', 'Category Turtle', 0, 0, 0),
       (1674, 35, 4, 'Category', 'Identifier', 'Identifier', 0, 0, 0),
       (1711, 36, 1, 'Collection_Fields', 'Identifier', 'ID (from Field)', 0, 0, 0),
       (1712, 36, 2, 'Collection_Fields', 'Name', 'Element name (from Field)', 0, 0, 0),
       (1713, 36, 3, 'Collection_Fields', 'Description', 'Description', 0, 0, 0),
       (1714, 36, 4, 'Collection_Fields', 'Turtle RDF', 'Total_Turtle', 0, 0, 0),
       (1715, 36, 5, 'Collection_Fields', 'CRM Path', 'CRM Path', 0, 0, 0),
       (1716, 36, 6, 'Collection_Fields', 'Expected Value Type', 'Expect Value Type', 0, 0, 0),
       (1717, 36, 1, 'Collection', 'Identifier', 'Identifier', 0, 0, 0),
       (1718, 36, 2, 'Collection', 'Name', 'Name', 0, 0, 0),
       (1719, 36, 3, 'Collection', 'Description', 'Description', 0, 0, 0),
       (1720, 36, 4, 'Collection', 'Turtle RDF', 'Collection_Turtle', 0, 0, 0),
       (1997, 11, 1, 'Collection_Fields', 'Identifier', 'Field_Identifier', 0, 0, 0),
       (1998, 11, 2, 'Collection_Fields', 'Name', 'Field_UI_Name', 0, 0, 0),
       (1999, 11, 3, 'Collection_Fields', 'Description', 'Field_Description', 0, 0, 0),
       (2000, 11, 4, 'Collection_Fields', 'Turtle RDF', 'Total_Turtle', 0, 0, 0),
       (2001, 11, 5, 'Collection_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0, 0),
       (2002, 11, 6, 'Collection_Fields', 'Expected Value Type', 'Field_Expected_Value_Type', 0, 0, 0),
       (2003, 11, 1, 'Collection', 'Identifier', 'Identifier', 0, 0, 0),
       (2004, 11, 2, 'Collection', 'Name', 'UI_Name', 0, 0, 0),
       (2005, 11, 3, 'Collection', 'Description', 'Description', 0, 0, 0),
       (2006, 11, 4, 'Collection', 'Turtle RDF', 'Collection_Turtle', 0, 0, 0),
       (2092, 14, 1, 'Field', 'Name', 'Name', 0, 0, 0),
       (2093, 14, 2, 'Field', 'Identifier', 'Identifer', 0, 0, 0),
       (2094, 14, 3, 'Field', 'Description', 'Description', 0, 0, 0),
       (2095, 14, 4, 'Field', 'CRM Path', 'CRM Path', 0, 0, 0),
       (2096, 14, 5, 'Field', 'Turtle RDF', 'prefix_total_turtle', 0, 0, 0),
       (2097, 14, 1, 'CRM Class', 'Identifier', 'Class_Nim', 0, 0, 0),
       (2098, 14, 2, 'CRM Class', 'Name', 'ID', 0, 0, 0),
       (2099, 14, 3, 'CRM Class', 'Turtle', 'Class_Ur_Instance_Turtle', 0, 0, 0),
       (2100, 37, 1, 'Collection_Fields', 'Identifier', 'ID (from Field)', 0, 0, 0),
       (2101, 37, 2, 'Collection_Fields', 'Name', 'Element name (from Field)', 0, 0, 0),
       (2102, 37, 3, 'Collection_Fields', 'Description', 'Description', 0, 0, 0),
       (2103, 37, 4, 'Collection_Fields', 'Turtle RDF', 'Prefix_Total_Turtle', 0, 0, 0),
       (2104, 37, 5, 'Collection_Fields', 'CRM Path', 'CRM Path', 0, 0, 0),
       (2105, 37, 1, 'Collection', 'Identifier', 'Identifier', 0, 0, 0),
       (2106, 37, 2, 'Collection', 'Name', 'Name', 0, 0, 0),
       (2107, 37, 3, 'Collection', 'Turtle RDF', 'Collection_Turtle', 0, 0, 0),
       (2108, 39, 1, 'Model_Fields', 'Identifier', 'identifier', 0, 0, 0),
       (2109, 39, 2, 'Model_Fields', 'Name', 'Model Specific Name', 0, 0, 0),
       (2110, 39, 3, 'Model_Fields', 'Description', 'Model Specific Description', 0, 0, 0),
       (2111, 39, 4, 'Model_Fields', 'CRM Path', 'CRM Path', 0, 0, 0),
       (2112, 39, 5, 'Model_Fields', 'Turtle RDF', 'Prefix_Total_Turtle', 0, 0, 0),
       (2113, 39, 1, 'Model', 'Identifier', 'Identifier', 0, 0, 0),
       (2114, 39, 2, 'Model', 'Name', 'Name', 0, 0, 0),
       (2115, 39, 3, 'Model', 'Description', 'Description', 0, 0, 0),
       (2116, 39, 4, 'Model', 'Turtle RDF', 'Model_Turtle', 0, 0, 0),
       (2135, 40, 1, 'Model_Fields', 'Identifier', 'ID', 0, 0, 0),
       (2136, 40, 2, 'Model_Fields', 'Name', 'Model_Specific_Name', 0, 0, 0),
       (2137, 40, 3, 'Model_Fields', 'Description', 'Model_Specific_Description', 0, 0, 0),
       (2138, 40, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0, 0),
       (2139, 40, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0, 0),
       (2140, 40, 1, 'Model', 'Identifier', 'Identifier', 0, 0, 0),
       (2141, 40, 2, 'Model', 'Name', 'UI_Name', 0, 0, 0),
       (2142, 40, 3, 'Model', 'Description', 'Description', 0, 0, 0),
       (2143, 40, 4, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0, 0),
       (2153, 42, 1, 'Collection_Fields', 'Identifier', 'Field_Identifier', 0, 0, 0),
       (2154, 42, 2, 'Collection_Fields', 'Name', 'Field_UI_Name', 0, 0, 0),
       (2155, 42, 3, 'Collection_Fields', 'Description', 'Field_Description', 0, 0, 0),
       (2156, 42, 4, 'Collection_Fields', 'Turtle RDF', 'Total_Turtle', 0, 0, 0),
       (2157, 42, 5, 'Collection_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0, 0),
       (2158, 42, 1, 'Collection', 'Identifier', 'Identifier', 0, 0, 0),
       (2159, 42, 2, 'Collection', 'Name', 'UI_Name', 0, 0, 0),
       (2160, 42, 3, 'Collection', 'Description', 'Description', 0, 0, 0),
       (2161, 42, 4, 'Collection', 'Turtle RDF', 'Collection_Turtle', 0, 0, 0),
       (2663, 44, 1, 'Fields_Category', 'Identifier', 'Field_ID (from Model Field)', 0, 0, 0),
       (2664, 44, 2, 'Fields_Category', 'Name', 'Model Specific name (from Model Field)', 0, 0, 0),
       (2665, 44, 3, 'Fields_Category', 'CRM Path', 'CRM_Path (from Model Field)', 0, 0, 0),
       (2666, 44, 4, 'Fields_Category', 'Turtle RDF', 'Total_Turtle', 0, 0, 0),
       (2667, 44, 5, 'Fields_Category', 'Description', 'Model Specific Description', 0, 0, 0),
       (2668, 44, 6, 'Fields_Category', 'Weight', 'Weight', 1, 0, 0),
       (2669, 44, 7, 'Fields_Category', 'Expected Value Type', 'Expected Value Type', 0, 0, 0),
       (2670, 44, 1, 'Category_Names', 'Name', 'Name', 1, 0, 0),
       (2671, 44, 2, 'Category_Names', 'Description', 'Description', 0, 0, 0),
       (2672, 44, 3, 'Category_Names', 'Turtle RDF', 'Category_Turtle', 0, 0, 0),
       (2673, 44, 4, 'Category_Names', 'Identifier', 'Identifier', 0, 0, 0),
       (2728, 50, 1, 'Field', 'Identifier', 'Identifer', 0, 0, 0),
       (2729, 50, 2, 'Field', 'Description', 'Description', 0, 0, 0),
       (2730, 50, 3, 'Field', 'Name', 'UI_Name', 0, 0, 0),
       (2731, 50, 4, 'Field', 'CRM Path', 'Ontological_Path', 0, 0, 0),
       (2732, 50, 5, 'Field', 'Turtle RDF', 'Total_Turtle', 0, 0, 0),
       (2733, 50, 1, 'CRM Class', 'Identifier', 'Class_Nim', 0, 0, 0),
       (2734, 50, 2, 'CRM Class', 'Name', 'ID', 0, 0, 0),
       (2735, 50, 3, 'CRM Class', 'Turtle', 'Class_Ur_Instance_Turtle', 0, 0, 0),
       (2736, 51, 1, 'Collection_Fields', 'Identifier', 'Field_Identifier', 0, 0, 0),
       (2737, 51, 2, 'Collection_Fields', 'Name', 'Field_UI_Name', 0, 0, 0),
       (2738, 51, 3, 'Collection_Fields', 'Description', 'Field_Description', 0, 0, 0),
       (2739, 51, 4, 'Collection_Fields', 'Turtle RDF', 'Total_Turtle', 0, 0, 0),
       (2740, 51, 5, 'Collection_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0, 0),
       (2741, 51, 6, 'Collection_Fields', 'Expected Value Type', 'Field_Expected_Value_Type', 0, 0, 0),
       (2742, 51, 1, 'Collection', 'Identifier', 'Identifier', 0, 0, 0),
       (2743, 51, 2, 'Collection', 'Name', 'UI_Name', 0, 0, 0),
       (2744, 51, 3, 'Collection', 'Description', 'Description', 0, 0, 0),
       (2745, 51, 4, 'Collection', 'Turtle RDF', 'Collection_Turtle', 0, 0, 0),
       (2746, 46, 1, 'Model_Fields', 'Identifier', 'ID', 0, 0, 0),
       (2747, 46, 2, 'Model_Fields', 'Name', 'Field_UI_Name', 0, 0, 0),
       (2748, 46, 3, 'Model_Fields', 'Description', 'Field_Description', 0, 0, 0),
       (2749, 46, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0, 0),
       (2750, 46, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0, 0),
       (2751, 46, 1, 'Model', 'Identifier', 'Identifier', 0, 0, 0),
       (2752, 46, 2, 'Model', 'Name', 'UI_Name', 0, 0, 0),
       (2753, 46, 3, 'Model', 'Description', 'Description', 0, 0, 0),
       (2754, 46, 4, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0, 0),
       (2755, 52, 1, 'Model_Fields', 'Identifier', 'ID', 0, 0, 0),
       (2756, 52, 2, 'Model_Fields', 'Name', 'Model_Specific_Name', 0, 0, 0),
       (2757, 52, 3, 'Model_Fields', 'Description', 'Model_Specific_Description', 0, 0, 0),
       (2758, 52, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0, 0),
       (2759, 52, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0, 0),
       (2760, 52, 1, 'Model', 'Identifier', 'Identifier', 0, 0, 0),
       (2761, 52, 2, 'Model', 'Name', 'UI_Name', 0, 0, 0),
       (2762, 52, 3, 'Model', 'Description', 'Description', 0, 0, 0),
       (2763, 52, 4, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0, 0),
       (2890, 53, 1, 'Category_Fields', 'Identifier', 'Field_Identifier', 0, 0, 0),
       (2891, 53, 2, 'Category_Fields', 'Name', 'Field_UI_Name', 0, 0, 0),
       (2892, 53, 3, 'Category_Fields', 'Description', 'Field_Description', 0, 0, 0),
       (2893, 53, 4, 'Category_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0, 0),
       (2894, 53, 5, 'Category_Fields', 'Turtle RDF', 'Total_Turtle', 0, 0, 0),
       (2895, 53, 1, 'Category', 'Name', 'ID', 0, 0, 0),
       (2896, 53, 2, 'Category', 'Description', 'Description', 0, 0, 0),
       (2897, 53, 3, 'Category', 'Turtle RDF', 'Category_Turtle', 0, 0, 0),
       (2898, 53, 4, 'Category', 'Identifier', 'Identifier', 0, 0, 0),
       (3016, 56, 1, 'Collection_Fields', 'Identifier', 'Field_Identifier', 0, 0, 0),
       (3017, 56, 2, 'Collection_Fields', 'Name', 'Field_UI_Name', 0, 0, 0),
       (3018, 56, 3, 'Collection_Fields', 'Description', 'Field_Description', 0, 0, 0),
       (3019, 56, 4, 'Collection_Fields', 'Turtle RDF', 'Total_Turtle', 0, 0, 0),
       (3020, 56, 5, 'Collection_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0, 0),
       (3021, 56, 6, 'Collection_Fields', 'Expected Value Type', 'Field_Expected_Value_Type', 0, 0, 0),
       (3022, 56, 1, 'Collection', 'Identifier', 'Identifier', 0, 0, 0),
       (3023, 56, 2, 'Collection', 'Name', 'UI_Name', 0, 0, 0),
       (3024, 56, 3, 'Collection', 'Description', 'Description', 0, 0, 0),
       (3025, 56, 4, 'Collection', 'Turtle RDF', 'Collection_Turtle', 0, 0, 0),
       (3100, 62, 1, 'Collection_Fields', 'Identifier', 'Field_Identifier', 0, 0, 0),
       (3101, 62, 2, 'Collection_Fields', 'Name', 'Field_UI_Name', 0, 0, 0),
       (3102, 62, 3, 'Collection_Fields', 'Description', 'Field_Description', 0, 0, 0),
       (3103, 62, 4, 'Collection_Fields', 'Turtle RDF', 'Total_Turtle', 0, 0, 0),
       (3104, 62, 5, 'Collection_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0, 0),
       (3105, 62, 6, 'Collection_Fields', 'Expected Value Type', 'Field_Expected_Value_Type', 0, 0, 0),
       (3106, 62, 1, 'Collection', 'Identifier', 'Identifier', 0, 0, 0),
       (3107, 62, 2, 'Collection', 'Name', 'UI_Name', 0, 0, 0),
       (3108, 62, 3, 'Collection', 'Description', 'Description', 0, 0, 0),
       (3109, 62, 4, 'Collection', 'Turtle RDF', 'Collection_Turtle', 0, 0, 0),
       (3119, 64, 1, 'Model_Fields', 'Identifier', 'ID', 0, 0, 0),
       (3120, 64, 2, 'Model_Fields', 'Name', 'Model_Specific_Field_Name', 0, 0, 0),
       (3121, 64, 3, 'Model_Fields', 'Description', 'Model_Specific_Description', 0, 0, 0),
       (3122, 64, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0, 0),
       (3123, 64, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0, 0),
       (3124, 64, 1, 'Model', 'Identifier', 'Identifier', 0, 0, 0),
       (3125, 64, 2, 'Model', 'Name', 'UI_Name', 0, 0, 0),
       (3126, 64, 3, 'Model', 'Description', 'Description', 0, 0, 0),
       (3127, 64, 4, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0, 0),
       (3247, 59, 1, 'Collection_Fields', 'Identifier', 'Field_Identifier', 0, 0, 0),
       (3248, 59, 2, 'Collection_Fields', 'Name', 'Field_UI_Name', 1, 0, 0),
       (3249, 59, 3, 'Collection_Fields', 'Description', 'Field_Description', 0, 0, 0),
       (3250, 59, 4, 'Collection_Fields', 'Turtle RDF', 'Total_Turtle', 0, 0, 0),
       (3251, 59, 5, 'Collection_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0, 0),
       (3252, 59, 6, 'Collection_Fields', 'Expected Value Type', 'Field_Expected_Value_Type', 0, 0, 0),
       (3253, 59, 1, 'Collection', 'Identifier', 'Identifier', 0, 0, 0),
       (3254, 59, 2, 'Collection', 'Name', 'UI_Name', 0, 0, 0),
       (3255, 59, 3, 'Collection', 'Description', 'Description', 0, 0, 0),
       (3256, 59, 4, 'Collection', 'Turtle RDF', 'Collection_Turtle', 0, 0, 0),
       (3543, 7, 1, 'Field', 'Identifier', 'Identifer', 0, 0, 0),
       (3544, 7, 2, 'Field', 'Description', 'Description', 0, 0, 0),
       (3545, 7, 3, 'Field', 'Name', 'UI_Name', 1, 0, 0),
       (3546, 7, 4, 'Field', 'CRM Path', 'Ontological_Path', 0, 0, 0),
       (3547, 7, 5, 'Field', 'Turtle RDF', 'Total_Turtle', 0, 0, 0),
       (3548, 7, 1, 'CRM Class', 'Identifier', 'Class_Nim', 0, 0, 0),
       (3549, 7, 2, 'CRM Class', 'Name', 'ID', 1, 0, 0),
       (3550, 7, 3, 'CRM Class', 'Turtle', 'Class_Ur_Instance_Turtle', 0, 0, 0),
       (3568, 13, 1, 'Model_Fields', 'Identifier', 'Field_ID', 0, 0, 0),
       (3569, 13, 2, 'Model_Fields', 'Name', 'Suggested_Name', 0, 1, 0),
       (3570, 13, 3, 'Model_Fields', 'CRM Path', 'CRM_Path', 0, 0, 0),
       (3571, 13, 4, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0, 0),
       (3572, 13, 5, 'Model_Fields', 'Description', 'Description (from Field)', 0, 0, 0),
       (3573, 13, 1, 'Model', 'Name', 'Name', 0, 0, 0),
       (3574, 13, 2, 'Model', 'Description', 'Description', 0, 0, 0),
       (3575, 13, 3, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0, 0),
       (3729, 47, 1, 'Model_Fields', 'Identifier', 'ID', 0, 0, 0),
       (3730, 47, 2, 'Model_Fields', 'Name', 'Model_Specific_Name', 1, 0, 0),
       (3731, 47, 3, 'Model_Fields', 'Description', 'Model_Specific_Description', 1, 0, 0),
       (3732, 47, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0, 0),
       (3733, 47, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0, 0),
       (3734, 47, 1, 'Model', 'Identifier', 'Identifier', 0, 0, 0),
       (3735, 47, 2, 'Model', 'Name', 'UI_Name', 0, 0, 0),
       (3736, 47, 3, 'Model', 'Description', 'Description', 0, 1, 0),
       (3737, 47, 4, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0, 0),
       (3882, 19, 1, 'Model_Fields', 'Category', 'Category', 1, 0, 0),
       (3883, 19, 2, 'Model_Fields', 'Identifier', 'Name', 0, 0, 0),
       (3884, 19, 3, 'Model_Fields', 'CRM Path', 'CRM Path', 0, 1, 0),
       (3885, 19, 4, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0, 0),
       (3886, 19, 5, 'Model_Fields', 'Name', 'Suggested_Name', 0, 0, 0),
       (3887, 19, 6, 'Model_Fields', 'Description', 'Expected Value Type', 0, 0, 0),
       (3888, 19, 1, 'Model', 'Name', 'Name', 1, 0, 0),
       (3889, 19, 2, 'Model', 'Description', 'Model Description', 0, 0, 0),
       (3890, 19, 3, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0, 0),
       (3891, 3, 1, 'Model_Fields', 'Identifier', 'Name', 0, 1, 0),
       (3892, 3, 2, 'Model_Fields', 'Name', 'Field Name', 1, 0, 0),
       (3893, 3, 3, 'Model_Fields', 'Description', 'Description', 0, 0, 0),
       (3894, 3, 4, 'Model_Fields', 'CRM Path', 'CRM Path', 0, 0, 0),
       (3895, 3, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0, 0),
       (3896, 3, 1, 'Model', 'Identifier', 'Identifier', 0, 0, 0),
       (3897, 3, 2, 'Model', 'Name', 'Name', 0, 0, 0),
       (3898, 3, 3, 'Model', 'Description', 'Description', 0, 0, 0),
       (3899, 3, 4, 'Model', 'Turtle RDF', 'Model_Turtle_Prefix', 0, 0, 0),
       (3939, 54, 1, 'Model_Fields', 'Identifier', 'ID', 0, 0, 0),
       (3940, 54, 2, 'Model_Fields', 'Name', 'Model_Specific_Field_Name', 0, 0, 0),
       (3941, 54, 3, 'Model_Fields', 'Description', 'Model_Specific_Description', 0, 0, 0),
       (3942, 54, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0, 0),
       (3943, 54, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 1, 1, 0),
       (3944, 54, 1, 'Model', 'Identifier', 'Identifier', 0, 0, 0),
       (3945, 54, 2, 'Model', 'Name', 'UI_Name', 0, 0, 0),
       (3946, 54, 3, 'Model', 'Description', 'Description', 0, 0, 0),
       (3947, 54, 4, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0, 0),
       (4135, 24, 1, 'Model_Fields', 'Category', 'Category', 0, 0, 0),
       (4136, 24, 2, 'Model_Fields', 'Identifier', 'Identifier', 1, 0, 0),
       (4137, 24, 3, 'Model_Fields', 'CRM Path', 'CRM Path', 0, 0, 0),
       (4138, 24, 4, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0, 0),
       (4139, 24, 5, 'Model_Fields', 'Name', 'Field Name', 0, 0, 0),
       (4140, 24, 6, 'Model_Fields', 'Description', 'Description', 0, 0, 0),
       (4141, 24, 1, 'Model', 'Name', 'Name', 0, 0, 0),
       (4142, 24, 2, 'Model', 'Description', 'Description', 0, 0, 0),
       (4143, 24, 3, 'Model', 'Turtle RDF', 'Model_Total_turtle', 0, 0, 0),
       (4144, 24, 4, 'Model', 'Identifier', 'Identifier', 0, 0, 0),
       (4201, 69, 1, 'Model_Fields', 'description', 'Description', 1, 0, 0),
       (4202, 69, 2, 'Model_Fields', 'Identifier', 'ID', 0, 0, 0),
       (4203, 69, 3, 'Model_Fields', 'Name', 'Model_Specific_Field_Name', 0, 0, 0),
       (4204, 69, 4, 'Model_Fields', 'CRM Path', 'Weight', 0, 0, 0),
       (4205, 69, 5, 'Model_Fields', 'Turtle RDF', 'Total_Turtle', 0, 0, 0),
       (4206, 69, 1, 'Model', 'Identifier', 'ID', 0, 0, 0),
       (4207, 69, 2, 'Model', 'Name', 'UI_Name', 0, 0, 0),
       (4495, 12, 1, 'Model_Fields', 'Identifier', 'ID', 0, 0, 0),
       (4496, 12, 2, 'Model_Fields', 'Name', 'Model_Specific_Name', 0, 0, 0),
       (4497, 12, 3, 'Model_Fields', 'Description', 'Model_Specific_Description', 0, 0, 0),
       (4498, 12, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 1, 0, 0),
       (4499, 12, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0, 0),
       (4500, 12, 1, 'Model', 'Identifier', 'Identifier', 0, 0, 0),
       (4501, 12, 2, 'Model', 'Name', 'UI_Name', 0, 0, 0),
       (4502, 12, 3, 'Model', 'Description', 'Description', 0, 0, 0),
       (4503, 12, 4, 'Model', 'Turtle RDF', 'Model_Total_turtle', 0, 0, 0),
       (5131, 41, 1, 'Model_Fields', 'Identifier', 'ID', 1, 0, 0),
       (5132, 41, 2, 'Model_Fields', 'Name', 'Model_Specific_Name', 0, 0, 0),
       (5133, 41, 3, 'Model_Fields', 'Description', 'Model_Specific_Description', 0, 0, 0),
       (5134, 41, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0, 0),
       (5135, 41, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0, 0),
       (5136, 41, 1, 'Model', 'Identifier', 'Identifier', 0, 0, 0),
       (5137, 41, 2, 'Model', 'Name', 'UI_Name', 0, 0, 0),
       (5138, 41, 3, 'Model', 'Description', 'Description', 0, 0, 0),
       (5139, 41, 4, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0, 0),
       (5248, 61, 1, 'Model_Fields', 'Identifier', 'ID', 1, 0, 0),
       (5249, 61, 2, 'Model_Fields', 'Name', 'Model_Specific_Name', 0, 0, 0),
       (5250, 61, 3, 'Model_Fields', 'Description', 'Model_Specific_Description', 0, 0, 0),
       (5251, 61, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0, 0),
       (5252, 61, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0, 0),
       (5253, 61, 1, 'Model', 'Identifier', 'Identifier', 0, 0, 0),
       (5254, 61, 2, 'Model', 'Name', 'UI_Name', 0, 0, 0),
       (5255, 61, 3, 'Model', 'Description', 'Description', 0, 0, 0),
       (5256, 61, 4, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0, 0),
       (5338, 58, 1, 'Model_Fields', 'Identifier', 'ID', 1, 0, 0),
       (5339, 58, 2, 'Model_Fields', 'Name', 'Model_Specific_Name', 0, 1, 0),
       (5340, 58, 3, 'Model_Fields', 'Description', 'Model_Specific_Description', 0, 0, 1),
       (5341, 58, 4, 'Model_Fields', 'CRM Path', 'Field_CRM_Path', 0, 0, 0),
       (5342, 58, 5, 'Model_Fields', 'Turtle RDF', 'Model_Fields_Total_Turtle', 0, 0, 0),
       (5343, 58, 1, 'Model', 'Identifier', 'Identifier', 0, 0, 0),
       (5344, 58, 2, 'Model', 'Name', 'UI_Name', 0, 0, 0),
       (5345, 58, 3, 'Model', 'Description', 'Description', 0, 0, 0),
       (5346, 58, 4, 'Model', 'Turtle RDF', 'Model_Total_Turtle', 0, 0, 0),
       (5503, 70, 1, 'Collection_Fields', 'Identifier', 'ID', 0, 0, 0),
       (5504, 70, 2, 'Collection_Fields', 'Description', 'Field_Description', 1, 0, 0),
       (5505, 70, 3, 'Collection_Fields', 'Name', 'Field_System_Name', 0, 0, 0),
       (5506, 70, 1, 'Collection', 'Identifier', 'Identifier', 0, 0, 0),
       (5507, 70, 2, 'Collection', 'Name', 'UI_Name', 0, 0, 0),
       (5508, 70, 3, 'Collection', 'Description', 'Description', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Scrapers`
--

CREATE TABLE `Scrapers`
(
    `scraperid`        int(11)  NOT NULL,
    `dbasekey`         int(11)  DEFAULT NULL,
    `scrapername`      text     NOT NULL,
    `data_table`       char(32) NOT NULL,
    `data_keyfield`    char(32) NOT NULL,
    `data_groupby`     char(32) DEFAULT NULL,
    `group_table`      char(32) DEFAULT NULL,
    `group_keyfield`   char(32) DEFAULT NULL,
    `group_sorttable`  char(32) DEFAULT NULL,
    `group_sortcolumn` char(32) DEFAULT NULL,
    `group_sortname`   char(32) DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- Dumping data for table `Scrapers`
--

INSERT INTO `Scrapers` (`scraperid`, `dbasekey`, `scrapername`, `data_table`, `data_keyfield`, `data_groupby`,
                        `group_table`, `group_keyfield`)
VALUES (1, 1, 'Fields', 'Field', 'ID', 'CRM Class', 'CRM Class', 'ID'),
       (2, 1, 'Collections', 'Collection_Fields', 'Name', 'Collection', 'Collection', 'ID'),
       (3, 1, 'Model', 'Model_Fields', 'Name', 'Model', 'Model', 'ID'),
       (7, 2, 'Fields', 'Field', 'ID', 'Ontology_Scope', 'CRM Class', 'ID'),
       (11, 2, 'Collections', 'Collection_Fields', 'ID', 'Collection', 'Collection', 'ID'),
       (12, 2, 'Model', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
       (13, 4, 'Model', 'Model_Fields', 'Name', 'Model', 'Model', 'ID'),
       (14, 7, 'Field', 'Field', 'ID', 'Ontological Scope', 'CRM Class', 'ID'),
       (19, 3, 'Model', 'Model_Fields', 'Suggested_Name', 'Model', 'Model', 'ID'),
       (24, 12, 'Model', 'Model_Fields', 'Identifier', 'Model', 'Model', 'ID'),
       (34, 4, 'Category', 'Fields_Category', 'ID', 'Category', 'Category_Names', 'ID'),
       (35, 3, 'Category', 'Fields Category', 'Name', 'Category', 'Category', 'ID'),
       (36, 12, 'Collections', 'Collection_Fields', 'Name', 'Collection', 'Collection', 'ID'),
       (37, 7, 'Collections', 'Collection_Fields', 'Name', 'Collection', 'Collection', 'ID'),
       (39, 7, 'Models', 'Model_Fields', 'Name', 'Model', 'Model', 'ID'),
       (40, 19, 'Model', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
       (41, 20, 'Model', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
       (42, 20, 'Collection', 'Collection_Fields', 'ID', 'Collection', 'Collection', 'ID'),
       (44, 20, 'Category', 'Fields_Category', 'ID', 'Category', 'Category_Names', 'ID'),
       (46, 21, 'Model', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
       (47, 22, 'Model', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
       (50, 22, 'Fields', 'Field', 'ID', 'Ontology_Scope', 'CRM Class', 'ID'),
       (51, 22, 'Collections', 'Collection_Fields', 'ID', 'Collection', 'Collection', 'ID'),
       (52, 23, 'Model', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
       (53, 23, 'Category', 'Category_Fields', 'ID', 'Category', 'Category', 'ID'),
       (54, 24, 'Model', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
       (56, 24, 'Collections', 'Collection_Fields', 'ID', 'Collection', 'Collection', 'ID'),
       (58, 25, 'Model', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
       (59, 25, 'Collections', 'Collection_Fields', 'ID', 'Collection', 'Collection', 'ID'),
       (61, 26, 'Models', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
       (62, 26, 'Collections', 'Collection_Fields', 'ID', 'Collection', 'Collection', 'ID'),
       (63, 27, 'Collections', 'Collection_Fields', 'ID', 'Collection', 'Collection', 'ID'),
       (64, 27, 'Models', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
       (69, 36, 'Mo', 'Model_Fields', 'ID', 'Model', 'Model', 'ID'),
       (70, 36, 'Collection', 'Collection_Fields', 'ID', 'Collection', 'Collection', 'ID');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users`
(
    `userid`   int(11) NOT NULL,
    `username` text    NOT NULL,
    `password` text    NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`userid`, `username`, `password`)
VALUES (1, 'stilpo',
        'pbkdf2:sha256:260000$XAb8Q4fr0HHJx9B2$a562a6a106653089f2d0538837fc8fa09d4d4afa3fdb71d669c44452c308f37d'),
       (2, 'akillus', 'pbkdf2:sha256:150000$35H1wn9t$3488c08de304ee2109dc5fe87cc31b31a1ca09b37d4816774d9dcf0dd67f4ff9'),
       (3, 'Artemis Kapitsakis',
        'pbkdf2:sha256:150000$04OfRlI7$dc79151484734021421e59e19619051c9bd4d54f6284a3a871d370ef70911318'),
       (4, 'a', 'pbkdf2:sha256:150000$GxbZmIBQ$a2357de693673a5b1fefdfbdeb227f1d6bdcb6f9ad7ad08b8f52be6166f98075'),
       (5, 'test',
        'pbkdf2:sha256:260000$W4Ffkb9tz95nfNff$60e6bfa939de368aaeca45abaa77271c72cc8b792a05ff06ffb2476b1833ce8d');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AirTableAccounts`
--
ALTER TABLE `AirTableAccounts`
    ADD PRIMARY KEY (`accountid`),
    ADD UNIQUE KEY `accountname` (`accountname`(24)),
    ADD KEY `usersort` (`userkey`, `accountname`(24));

--
-- Indexes for table `AirTableDatabases`
--
ALTER TABLE `AirTableDatabases`
    ADD PRIMARY KEY (`dbaseid`),
    ADD UNIQUE KEY `dbaseapikey` (`dbaseapikey`),
    ADD UNIQUE KEY `airtableaccountkey` (`airtableaccountkey`, `dbasename`(24)),
    ADD KEY `airtablesort` (`airtableaccountkey`, `dbasename`(24));

--
-- Indexes for table `ScraperFields`
--
ALTER TABLE `ScraperFields`
    ADD PRIMARY KEY (`scraperfieldid`);

--
-- Indexes for table `Scrapers`
--
ALTER TABLE `Scrapers`
    ADD PRIMARY KEY (`scraperid`),
    ADD KEY `airtablesort` (`dbasekey`, `scrapername`(24));

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
    ADD PRIMARY KEY (`userid`),
    ADD UNIQUE KEY `username` (`username`(24));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AirTableAccounts`
--
ALTER TABLE `AirTableAccounts`
    MODIFY `accountid` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 12;

--
-- AUTO_INCREMENT for table `AirTableDatabases`
--
ALTER TABLE `AirTableDatabases`
    MODIFY `dbaseid` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 38;

--
-- AUTO_INCREMENT for table `ScraperFields`
--
ALTER TABLE `ScraperFields`
    MODIFY `scraperfieldid` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 5509;

--
-- AUTO_INCREMENT for table `Scrapers`
--
ALTER TABLE `Scrapers`
    MODIFY `scraperid` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 71;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
    MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
