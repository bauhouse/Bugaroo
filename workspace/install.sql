
-- *** STRUCTURE: `tbl_fields_author` ***
DROP TABLE IF EXISTS `tbl_fields_author`;
CREATE TABLE `tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_author_change` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_author` ***

-- *** STRUCTURE: `tbl_fields_checkbox` ***
DROP TABLE IF EXISTS `tbl_fields_checkbox`;
CREATE TABLE `tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_checkbox` ***
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (35, 60, 'on', 'Display in Issues-View');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (36, 61, 'on', 'Display in Milestones-View');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (37, 62, 'on', 'Display in Projects-View');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (38, 66, 'off', 'Counts towards finished percentage');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (34, 72, 'on', 'Display in Dashboard-View');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (50, 86, 'off', 'Placeholder for Anonymous');
INSERT INTO `tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (51, 88, 'off', 'Placeholder for Anonymous');

-- *** STRUCTURE: `tbl_fields_colorchooser` ***
DROP TABLE IF EXISTS `tbl_fields_colorchooser`;
CREATE TABLE `tbl_fields_colorchooser` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_fields_colorchooser` ***
INSERT INTO `tbl_fields_colorchooser` (`id`, `field_id`) VALUES (10, 46);
INSERT INTO `tbl_fields_colorchooser` (`id`, `field_id`) VALUES (17, 47);
INSERT INTO `tbl_fields_colorchooser` (`id`, `field_id`) VALUES (14, 69);
INSERT INTO `tbl_fields_colorchooser` (`id`, `field_id`) VALUES (15, 70);

-- *** STRUCTURE: `tbl_fields_date` ***
DROP TABLE IF EXISTS `tbl_fields_date`;
CREATE TABLE `tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_date` ***
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (48, 68, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (46, 67, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (45, 34, 'yes');
INSERT INTO `tbl_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (47, 74, 'yes');

-- *** STRUCTURE: `tbl_fields_input` ***
DROP TABLE IF EXISTS `tbl_fields_input`;
CREATE TABLE `tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_input` ***
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (64, 57, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (153, 37, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (144, 31, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (54, 35, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (143, 36, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (152, 26, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (150, 98, NULL);
INSERT INTO `tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (151, 99, NULL);

-- *** STRUCTURE: `tbl_fields_member` ***
DROP TABLE IF EXISTS `tbl_fields_member`;
CREATE TABLE `tbl_fields_member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_fields_member` ***

-- *** STRUCTURE: `tbl_fields_memberemail` ***
DROP TABLE IF EXISTS `tbl_fields_memberemail`;
CREATE TABLE `tbl_fields_memberemail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_memberemail` ***
INSERT INTO `tbl_fields_memberemail` (`id`, `field_id`) VALUES (3, 96);

-- *** STRUCTURE: `tbl_fields_memberlink` ***
DROP TABLE IF EXISTS `tbl_fields_memberlink`;
CREATE TABLE `tbl_fields_memberlink` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_fields_memberlink` ***

-- *** STRUCTURE: `tbl_fields_memberpassword` ***
DROP TABLE IF EXISTS `tbl_fields_memberpassword`;
CREATE TABLE `tbl_fields_memberpassword` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `length` tinyint(2) NOT NULL,
  `strength` enum('weak','good','strong') COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_expiry` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_memberpassword` ***
INSERT INTO `tbl_fields_memberpassword` (`id`, `field_id`, `length`, `strength`, `salt`, `code_expiry`) VALUES (3, 97, 6, 'good', 'bugaroo', '1 hour');

-- *** STRUCTURE: `tbl_fields_memberrole` ***
DROP TABLE IF EXISTS `tbl_fields_memberrole`;
CREATE TABLE `tbl_fields_memberrole` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_role` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_memberrole` ***
INSERT INTO `tbl_fields_memberrole` (`id`, `field_id`, `default_role`) VALUES (4, 95, 1);

-- *** STRUCTURE: `tbl_fields_memberusername` ***
DROP TABLE IF EXISTS `tbl_fields_memberusername`;
CREATE TABLE `tbl_fields_memberusername` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_memberusername` ***
INSERT INTO `tbl_fields_memberusername` (`id`, `field_id`, `validator`) VALUES (5, 94, NULL);

-- *** STRUCTURE: `tbl_fields_order_entries` ***
DROP TABLE IF EXISTS `tbl_fields_order_entries`;
CREATE TABLE `tbl_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_fields_order_entries` ***
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (15, 63, 'yes', 'yes');
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (8, 64, 'yes', 'yes');
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (12, 65, 'yes', 'yes');
INSERT INTO `tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (17, 76, NULL, 'no');

-- *** STRUCTURE: `tbl_fields_select` ***
DROP TABLE IF EXISTS `tbl_fields_select`;
CREATE TABLE `tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_select` ***
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (25, 28, 'no', 'Active, Inactive, Finished', NULL, 'yes', 'no');
INSERT INTO `tbl_fields_select` (`id`, `field_id`, `allow_multiple_selection`, `static_options`, `dynamic_options`, `show_association`, `sort_options`) VALUES (23, 71, 'no', 'Active,Inactive,Finished', NULL, 'yes', 'no');

-- *** STRUCTURE: `tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS `tbl_fields_selectbox_link`;
CREATE TABLE `tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=310 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_selectbox_link` ***
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (294, 30, 'yes', 98, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (293, 29, 'yes', 98, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (281, 33, 'no', 26, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (301, 39, 'no', 26, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (295, 40, 'no', 98, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (296, 41, 'no', 35, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (297, 42, 'no', 36, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (298, 43, 'no', 98, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (299, 44, 'no', 31, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (303, 50, 'no', 98, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (305, 52, 'no', 36, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (306, 53, 'no', 98, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (307, 54, 'no', 31, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (309, 55, 'no', 37, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (300, 58, 'no', 57, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (308, 59, 'no', 57, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (304, 73, 'no', 35, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (302, 84, 'no', 98, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (290, 100, 'yes', 26, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (291, 101, 'yes', 26, 20, 'yes');
INSERT INTO `tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `related_field_id`, `limit`, `show_association`) VALUES (292, 102, 'yes', 37, 2000, 'yes');

-- *** STRUCTURE: `tbl_fields_taglist` ***
DROP TABLE IF EXISTS `tbl_fields_taglist`;
CREATE TABLE `tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_taglist` ***

-- *** STRUCTURE: `tbl_fields_textarea` ***
DROP TABLE IF EXISTS `tbl_fields_textarea`;
CREATE TABLE `tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_textarea` ***
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (50, 49, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (47, 32, 'markdown_extra_with_smartypants', 15);
INSERT INTO `tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (49, 27, 'markdown_extra_with_smartypants', 15);

-- *** STRUCTURE: `tbl_fields_uniqueupload` ***
DROP TABLE IF EXISTS `tbl_fields_uniqueupload`;
CREATE TABLE `tbl_fields_uniqueupload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_uniqueupload` ***
INSERT INTO `tbl_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`) VALUES (1, 75, '/workspace/uploads', NULL);

-- *** STRUCTURE: `tbl_fields_upload` ***
DROP TABLE IF EXISTS `tbl_fields_upload`;
CREATE TABLE `tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_fields_upload` ***
INSERT INTO `tbl_fields_upload` (`id`, `field_id`, `destination`, `validator`) VALUES (9, 75, '/workspace/uploads', NULL);

-- *** STRUCTURE: `tbl_entries_data_100` ***
DROP TABLE IF EXISTS `tbl_entries_data_100`;
CREATE TABLE `tbl_entries_data_100` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_100` ***
INSERT INTO `tbl_entries_data_100` (`id`, `entry_id`, `relation_id`) VALUES (5, 74, NULL);
INSERT INTO `tbl_entries_data_100` (`id`, `entry_id`, `relation_id`) VALUES (4, 75, 13);

-- *** STRUCTURE: `tbl_entries_data_101` ***
DROP TABLE IF EXISTS `tbl_entries_data_101`;
CREATE TABLE `tbl_entries_data_101` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_101` ***
INSERT INTO `tbl_entries_data_101` (`id`, `entry_id`, `relation_id`) VALUES (5, 74, NULL);
INSERT INTO `tbl_entries_data_101` (`id`, `entry_id`, `relation_id`) VALUES (4, 75, NULL);

-- *** STRUCTURE: `tbl_entries_data_102` ***
DROP TABLE IF EXISTS `tbl_entries_data_102`;
CREATE TABLE `tbl_entries_data_102` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_102` ***
INSERT INTO `tbl_entries_data_102` (`id`, `entry_id`, `relation_id`) VALUES (5, 74, NULL);
INSERT INTO `tbl_entries_data_102` (`id`, `entry_id`, `relation_id`) VALUES (4, 75, NULL);

-- *** STRUCTURE: `tbl_entries_data_26` ***
DROP TABLE IF EXISTS `tbl_entries_data_26`;
CREATE TABLE `tbl_entries_data_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_26` ***
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 13, 'minor-project', 'Minor Project');
INSERT INTO `tbl_entries_data_26` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 61, 'bugtracker', 'Bugtracker');

-- *** STRUCTURE: `tbl_entries_data_27` ***
DROP TABLE IF EXISTS `tbl_entries_data_27`;
CREATE TABLE `tbl_entries_data_27` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext,
  `value_formatted` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_27` ***
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 13, NULL, NULL);
INSERT INTO `tbl_entries_data_27` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 61, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_28` ***
DROP TABLE IF EXISTS `tbl_entries_data_28`;
CREATE TABLE `tbl_entries_data_28` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_28` ***
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 13, 'active', 'Active');
INSERT INTO `tbl_entries_data_28` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 61, 'active', 'Active');

-- *** STRUCTURE: `tbl_entries_data_29` ***
DROP TABLE IF EXISTS `tbl_entries_data_29`;
CREATE TABLE `tbl_entries_data_29` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_29` ***
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `relation_id`) VALUES (14, 13, 75);
INSERT INTO `tbl_entries_data_29` (`id`, `entry_id`, `relation_id`) VALUES (10, 61, NULL);

-- *** STRUCTURE: `tbl_entries_data_30` ***
DROP TABLE IF EXISTS `tbl_entries_data_30`;
CREATE TABLE `tbl_entries_data_30` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_30` ***
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `relation_id`) VALUES (10, 61, 68);
INSERT INTO `tbl_entries_data_30` (`id`, `entry_id`, `relation_id`) VALUES (14, 13, 75);

-- *** STRUCTURE: `tbl_entries_data_31` ***
DROP TABLE IF EXISTS `tbl_entries_data_31`;
CREATE TABLE `tbl_entries_data_31` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_31` ***
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 14, 'post-launch', 'Post Launch');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 33, 'pre-launch', 'Pre Launch');
INSERT INTO `tbl_entries_data_31` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 73, 'none', '(none)');

-- *** STRUCTURE: `tbl_entries_data_32` ***
DROP TABLE IF EXISTS `tbl_entries_data_32`;
CREATE TABLE `tbl_entries_data_32` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext,
  `value_formatted` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_32` ***
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 14, NULL, NULL);
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 33, NULL, NULL);
INSERT INTO `tbl_entries_data_32` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 73, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_33` ***
DROP TABLE IF EXISTS `tbl_entries_data_33`;
CREATE TABLE `tbl_entries_data_33` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_33` ***
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (6, 14, 13);
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (7, 33, 13);
INSERT INTO `tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (10, 73, NULL);

-- *** STRUCTURE: `tbl_entries_data_34` ***
DROP TABLE IF EXISTS `tbl_entries_data_34`;
CREATE TABLE `tbl_entries_data_34` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_34` ***
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (6, 14, '2010-03-31T00:00:00+02:00', 1269986400, 1269986400);
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (7, 33, '2010-02-06T16:54:00+01:00', 1265471640, 1265471640);
INSERT INTO `tbl_entries_data_34` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (10, 73, '2020-02-12T13:47:00+01:00', 1581511620, 1581511620);

-- *** STRUCTURE: `tbl_entries_data_35` ***
DROP TABLE IF EXISTS `tbl_entries_data_35`;
CREATE TABLE `tbl_entries_data_35` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_35` ***
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 15, 'low', 'Low');
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 16, 'normal', 'Normal');
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 17, 'high', 'High');
INSERT INTO `tbl_entries_data_35` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 18, 'critical', 'Critical');

-- *** STRUCTURE: `tbl_entries_data_36` ***
DROP TABLE IF EXISTS `tbl_entries_data_36`;
CREATE TABLE `tbl_entries_data_36` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_36` ***
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 19, 'bug', 'Bug');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 20, 'enhancement', 'Enhancement');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 21, 'todo', 'ToDo');
INSERT INTO `tbl_entries_data_36` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 72, 'none', '(none)');

-- *** STRUCTURE: `tbl_entries_data_37` ***
DROP TABLE IF EXISTS `tbl_entries_data_37`;
CREATE TABLE `tbl_entries_data_37` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_37` ***
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (107, 92, 'css-not-showing', 'CSS not showing');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (108, 98, 'testing', 'Testing');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (109, 103, 'closed', 'Closed');
INSERT INTO `tbl_entries_data_37` (`id`, `entry_id`, `handle`, `value`) VALUES (116, 105, 'xml', 'XML?');

-- *** STRUCTURE: `tbl_entries_data_39` ***
DROP TABLE IF EXISTS `tbl_entries_data_39`;
CREATE TABLE `tbl_entries_data_39` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_39` ***
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (108, 98, 13);
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (107, 92, 13);
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (109, 103, 13);
INSERT INTO `tbl_entries_data_39` (`id`, `entry_id`, `relation_id`) VALUES (116, 105, 13);

-- *** STRUCTURE: `tbl_entries_data_40` ***
DROP TABLE IF EXISTS `tbl_entries_data_40`;
CREATE TABLE `tbl_entries_data_40` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_40` ***
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (108, 98, 75);
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (107, 92, 75);
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (109, 103, 75);
INSERT INTO `tbl_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (116, 105, 75);

-- *** STRUCTURE: `tbl_entries_data_41` ***
DROP TABLE IF EXISTS `tbl_entries_data_41`;
CREATE TABLE `tbl_entries_data_41` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_41` ***
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (106, 98, 16);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (105, 92, 16);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (107, 103, 18);
INSERT INTO `tbl_entries_data_41` (`id`, `entry_id`, `relation_id`) VALUES (114, 105, 18);

-- *** STRUCTURE: `tbl_entries_data_42` ***
DROP TABLE IF EXISTS `tbl_entries_data_42`;
CREATE TABLE `tbl_entries_data_42` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_42` ***
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `relation_id`) VALUES (106, 98, 21);
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `relation_id`) VALUES (105, 92, 21);
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `relation_id`) VALUES (107, 103, 19);
INSERT INTO `tbl_entries_data_42` (`id`, `entry_id`, `relation_id`) VALUES (114, 105, 19);

-- *** STRUCTURE: `tbl_entries_data_43` ***
DROP TABLE IF EXISTS `tbl_entries_data_43`;
CREATE TABLE `tbl_entries_data_43` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_43` ***
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `relation_id`) VALUES (103, 98, 74);
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `relation_id`) VALUES (102, 92, 75);
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `relation_id`) VALUES (104, 103, 75);
INSERT INTO `tbl_entries_data_43` (`id`, `entry_id`, `relation_id`) VALUES (111, 105, 75);

-- *** STRUCTURE: `tbl_entries_data_44` ***
DROP TABLE IF EXISTS `tbl_entries_data_44`;
CREATE TABLE `tbl_entries_data_44` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_44` ***
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `relation_id`) VALUES (103, 98, 33);
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `relation_id`) VALUES (102, 92, 14);
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `relation_id`) VALUES (104, 103, 33);
INSERT INTO `tbl_entries_data_44` (`id`, `entry_id`, `relation_id`) VALUES (111, 105, 33);

-- *** STRUCTURE: `tbl_entries_data_46` ***
DROP TABLE IF EXISTS `tbl_entries_data_46`;
CREATE TABLE `tbl_entries_data_46` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_46` ***
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `value`) VALUES (8, 15, '#4f4f4f');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `value`) VALUES (7, 16, '#000000');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `value`) VALUES (3, 17, '#e68900');
INSERT INTO `tbl_entries_data_46` (`id`, `entry_id`, `value`) VALUES (4, 18, '#a30000');

-- *** STRUCTURE: `tbl_entries_data_47` ***
DROP TABLE IF EXISTS `tbl_entries_data_47`;
CREATE TABLE `tbl_entries_data_47` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_47` ***
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`) VALUES (1, 19, '#a30000');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`) VALUES (2, 20, '#a2a7d8');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`) VALUES (3, 21, '#cbf4c8');
INSERT INTO `tbl_entries_data_47` (`id`, `entry_id`, `value`) VALUES (4, 72, '#ffffff');

-- *** STRUCTURE: `tbl_entries_data_49` ***
DROP TABLE IF EXISTS `tbl_entries_data_49`;
CREATE TABLE `tbl_entries_data_49` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext,
  `value_formatted` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_49` ***
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (95, 110, NULL, NULL);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (96, 111, NULL, NULL);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (86, 100, 'Invalid', '<p>Invalid</p>\n');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (87, 101, 'Nils, mach du das.', '<p>Nils, mach du das.</p>\n');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (88, 102, NULL, NULL);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (89, 104, NULL, NULL);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (90, 106, NULL, NULL);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (92, 107, 'Didnt work. Again?', '<p>Didnt work. Again?</p>\n');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (93, 108, NULL, NULL);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (94, 109, NULL, NULL);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (80, 93, NULL, NULL);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (81, 94, 'Yes, it does for me.', '<p>Yes, it does for me.</p>\n');
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (82, 95, NULL, NULL);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (83, 96, NULL, NULL);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (84, 97, NULL, NULL);
INSERT INTO `tbl_entries_data_49` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (85, 99, NULL, NULL);

-- *** STRUCTURE: `tbl_entries_data_50` ***
DROP TABLE IF EXISTS `tbl_entries_data_50`;
CREATE TABLE `tbl_entries_data_50` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_50` ***
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (84, 97, 75);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (82, 95, 75);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (83, 96, 75);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (81, 94, 75);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (85, 99, 75);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (86, 100, 75);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (87, 101, 75);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (80, 93, 75);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (88, 102, 75);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (89, 104, 75);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (90, 106, 75);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (92, 107, 75);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (93, 108, 75);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (94, 109, 75);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (95, 110, 75);
INSERT INTO `tbl_entries_data_50` (`id`, `entry_id`, `relation_id`) VALUES (96, 111, 75);

-- *** STRUCTURE: `tbl_entries_data_52` ***
DROP TABLE IF EXISTS `tbl_entries_data_52`;
CREATE TABLE `tbl_entries_data_52` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_52` ***
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (84, 97, 21);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (82, 95, 21);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (83, 96, 21);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (81, 94, 19);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (85, 99, 21);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (86, 100, 21);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (87, 101, 21);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (80, 93, 19);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (88, 102, 21);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (89, 104, 19);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (90, 106, 19);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (92, 107, 19);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (93, 108, 19);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (94, 109, 19);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (95, 110, 19);
INSERT INTO `tbl_entries_data_52` (`id`, `entry_id`, `relation_id`) VALUES (96, 111, 19);

-- *** STRUCTURE: `tbl_entries_data_53` ***
DROP TABLE IF EXISTS `tbl_entries_data_53`;
CREATE TABLE `tbl_entries_data_53` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_53` ***
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (84, 97, 74);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (82, 95, 74);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (83, 96, 74);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (81, 94, 75);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (85, 99, 74);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (86, 100, 74);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (87, 101, 75);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (80, 93, 74);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (88, 102, 74);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (89, 104, 75);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (90, 106, 75);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (92, 107, 75);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (93, 108, 75);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (94, 109, 75);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (95, 110, 75);
INSERT INTO `tbl_entries_data_53` (`id`, `entry_id`, `relation_id`) VALUES (96, 111, 75);

-- *** STRUCTURE: `tbl_entries_data_54` ***
DROP TABLE IF EXISTS `tbl_entries_data_54`;
CREATE TABLE `tbl_entries_data_54` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_54` ***
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (84, 97, 14);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (82, 95, 14);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (83, 96, 14);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (81, 94, 33);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (85, 99, 33);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (86, 100, 33);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (87, 101, 14);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (80, 93, 33);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (88, 102, 33);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (89, 104, 33);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (90, 106, 33);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (92, 107, 33);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (93, 108, 33);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (94, 109, 33);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (95, 110, 33);
INSERT INTO `tbl_entries_data_54` (`id`, `entry_id`, `relation_id`) VALUES (96, 111, 33);

-- *** STRUCTURE: `tbl_entries_data_55` ***
DROP TABLE IF EXISTS `tbl_entries_data_55`;
CREATE TABLE `tbl_entries_data_55` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_55` ***
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (84, 97, 92);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (82, 95, 92);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (83, 96, 92);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (81, 94, 92);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (85, 99, 98);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (86, 100, 98);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (87, 101, 92);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (80, 93, 92);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (88, 102, 98);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (89, 104, 103);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (90, 106, 105);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (92, 107, 105);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (93, 108, 105);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (94, 109, 105);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (95, 110, 105);
INSERT INTO `tbl_entries_data_55` (`id`, `entry_id`, `relation_id`) VALUES (96, 111, 105);

-- *** STRUCTURE: `tbl_entries_data_57` ***
DROP TABLE IF EXISTS `tbl_entries_data_57`;
CREATE TABLE `tbl_entries_data_57` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_57` ***
INSERT INTO `tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 28, 'open', 'Open');
INSERT INTO `tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 29, 'resolved', 'Resolved');
INSERT INTO `tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (33, 30, 'closed', 'Closed');
INSERT INTO `tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (34, 57, 'reopened', 'Reopened');

-- *** STRUCTURE: `tbl_entries_data_58` ***
DROP TABLE IF EXISTS `tbl_entries_data_58`;
CREATE TABLE `tbl_entries_data_58` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_58` ***
INSERT INTO `tbl_entries_data_58` (`id`, `entry_id`, `relation_id`) VALUES (98, 98, 29);
INSERT INTO `tbl_entries_data_58` (`id`, `entry_id`, `relation_id`) VALUES (97, 92, 57);
INSERT INTO `tbl_entries_data_58` (`id`, `entry_id`, `relation_id`) VALUES (99, 103, 30);
INSERT INTO `tbl_entries_data_58` (`id`, `entry_id`, `relation_id`) VALUES (106, 105, 28);

-- *** STRUCTURE: `tbl_entries_data_59` ***
DROP TABLE IF EXISTS `tbl_entries_data_59`;
CREATE TABLE `tbl_entries_data_59` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_59` ***
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (81, 97, 29);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (79, 95, 57);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (80, 96, 57);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (78, 94, 30);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (82, 99, 28);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (83, 100, 30);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (84, 101, 57);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (77, 93, 28);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (85, 102, 29);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (86, 104, 30);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (87, 106, 28);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (89, 107, 28);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (90, 108, 28);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (91, 109, 28);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (92, 110, 28);
INSERT INTO `tbl_entries_data_59` (`id`, `entry_id`, `relation_id`) VALUES (93, 111, 28);

-- *** STRUCTURE: `tbl_entries_data_60` ***
DROP TABLE IF EXISTS `tbl_entries_data_60`;
CREATE TABLE `tbl_entries_data_60` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_60` ***
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`) VALUES (30, 30, 'yes');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`) VALUES (32, 29, 'yes');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`) VALUES (27, 28, 'yes');
INSERT INTO `tbl_entries_data_60` (`id`, `entry_id`, `value`) VALUES (31, 57, 'yes');

-- *** STRUCTURE: `tbl_entries_data_61` ***
DROP TABLE IF EXISTS `tbl_entries_data_61`;
CREATE TABLE `tbl_entries_data_61` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_61` ***
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`) VALUES (27, 30, 'yes');
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`) VALUES (29, 29, 'no');
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`) VALUES (24, 28, 'yes');
INSERT INTO `tbl_entries_data_61` (`id`, `entry_id`, `value`) VALUES (28, 57, 'no');

-- *** STRUCTURE: `tbl_entries_data_62` ***
DROP TABLE IF EXISTS `tbl_entries_data_62`;
CREATE TABLE `tbl_entries_data_62` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_62` ***
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `value`) VALUES (24, 30, 'yes');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `value`) VALUES (26, 29, 'yes');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `value`) VALUES (21, 28, 'yes');
INSERT INTO `tbl_entries_data_62` (`id`, `entry_id`, `value`) VALUES (25, 57, 'yes');

-- *** STRUCTURE: `tbl_entries_data_63` ***
DROP TABLE IF EXISTS `tbl_entries_data_63`;
CREATE TABLE `tbl_entries_data_63` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_63` ***
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `value`) VALUES (1, 19, 1);
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `value`) VALUES (2, 21, 2);
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `value`) VALUES (3, 20, 3);
INSERT INTO `tbl_entries_data_63` (`id`, `entry_id`, `value`) VALUES (4, 72, 4);

-- *** STRUCTURE: `tbl_entries_data_64` ***
DROP TABLE IF EXISTS `tbl_entries_data_64`;
CREATE TABLE `tbl_entries_data_64` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_64` ***
INSERT INTO `tbl_entries_data_64` (`id`, `entry_id`, `value`) VALUES (1, 18, 1);
INSERT INTO `tbl_entries_data_64` (`id`, `entry_id`, `value`) VALUES (7, 15, 4);
INSERT INTO `tbl_entries_data_64` (`id`, `entry_id`, `value`) VALUES (3, 17, 2);
INSERT INTO `tbl_entries_data_64` (`id`, `entry_id`, `value`) VALUES (6, 16, 3);

-- *** STRUCTURE: `tbl_entries_data_65` ***
DROP TABLE IF EXISTS `tbl_entries_data_65`;
CREATE TABLE `tbl_entries_data_65` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_65` ***
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`) VALUES (21, 28, 1);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`) VALUES (24, 30, 4);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`) VALUES (26, 29, 3);
INSERT INTO `tbl_entries_data_65` (`id`, `entry_id`, `value`) VALUES (25, 57, 2);

-- *** STRUCTURE: `tbl_entries_data_66` ***
DROP TABLE IF EXISTS `tbl_entries_data_66`;
CREATE TABLE `tbl_entries_data_66` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_66` ***
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `value`) VALUES (22, 29, 'yes');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `value`) VALUES (20, 30, 'yes');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `value`) VALUES (17, 28, 'no');
INSERT INTO `tbl_entries_data_66` (`id`, `entry_id`, `value`) VALUES (21, 57, 'no');

-- *** STRUCTURE: `tbl_entries_data_67` ***
DROP TABLE IF EXISTS `tbl_entries_data_67`;
CREATE TABLE `tbl_entries_data_67` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_67` ***
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (85, 92, '2011-12-06T15:15:19+01:00', 1323180919, 1323180919);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (86, 98, '2011-12-06T15:22:22+01:00', 1323181342, 1323181342);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (87, 103, '2011-12-06T16:08:51+01:00', 1323184131, 1323184131);
INSERT INTO `tbl_entries_data_67` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (94, 105, '2011-12-06T16:12:17+01:00', 1323184337, 1323184337);

-- *** STRUCTURE: `tbl_entries_data_68` ***
DROP TABLE IF EXISTS `tbl_entries_data_68`;
CREATE TABLE `tbl_entries_data_68` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_68` ***
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (80, 102, '2011-12-06T15:37:24+01:00', 1323182244, 1323182244);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (81, 104, '2011-12-06T16:08:51+01:00', 1323184131, 1323184131);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (77, 99, '2011-12-06T15:22:22+01:00', 1323181342, 1323181342);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (78, 100, '2011-12-06T15:22:49+01:00', 1323181369, 1323181369);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (79, 101, '2011-12-06T15:36:44+01:00', 1323182204, 1323182204);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (72, 93, '2011-12-06T15:15:19+01:00', 1323180919, 1323180919);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (73, 94, '2011-12-06T15:16:17+01:00', 1323180977, 1323180977);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (74, 95, '2011-12-06T15:18:04+01:00', 1323181084, 1323181084);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (75, 96, '2011-12-06T15:20:50+01:00', 1323181250, 1323181250);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (76, 97, '2011-12-06T15:21:03+01:00', 1323181263, 1323181263);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (82, 106, '2011-12-06T16:12:17+01:00', 1323184337, 1323184337);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (84, 107, '2011-12-06T16:13:00+01:00', 1323184380, 1323184380);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (85, 108, '2011-12-06T16:15:21+01:00', 1323184521, 1323184521);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (86, 109, '2011-12-06T16:23:31+01:00', 1323185011, 1323185011);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (87, 110, '2011-12-06T16:49:47+01:00', 1323186587, 1323186587);
INSERT INTO `tbl_entries_data_68` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (88, 111, '2011-12-06T16:50:41+01:00', 1323186641, 1323186641);

-- *** STRUCTURE: `tbl_entries_data_69` ***
DROP TABLE IF EXISTS `tbl_entries_data_69`;
CREATE TABLE `tbl_entries_data_69` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_69` ***
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`) VALUES (9, 28, '#58941c');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`) VALUES (14, 29, '#ffffcc');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`) VALUES (12, 30, '#dedede');
INSERT INTO `tbl_entries_data_69` (`id`, `entry_id`, `value`) VALUES (13, 57, '#58941c');

-- *** STRUCTURE: `tbl_entries_data_70` ***
DROP TABLE IF EXISTS `tbl_entries_data_70`;
CREATE TABLE `tbl_entries_data_70` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_70` ***
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`) VALUES (5, 28, '#ffffff');
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`) VALUES (10, 29, '#8e5c2a');
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`) VALUES (8, 30, '#000000');
INSERT INTO `tbl_entries_data_70` (`id`, `entry_id`, `value`) VALUES (9, 57, '#feff9f');

-- *** STRUCTURE: `tbl_entries_data_71` ***
DROP TABLE IF EXISTS `tbl_entries_data_71`;
CREATE TABLE `tbl_entries_data_71` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_71` ***
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 33, 'finished', 'Finished');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 14, 'active', 'Active');
INSERT INTO `tbl_entries_data_71` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 73, 'active', 'Active');

-- *** STRUCTURE: `tbl_entries_data_72` ***
DROP TABLE IF EXISTS `tbl_entries_data_72`;
CREATE TABLE `tbl_entries_data_72` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_72` ***
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `value`) VALUES (1, 28, 'yes');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `value`) VALUES (5, 57, 'yes');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `value`) VALUES (6, 29, 'yes');
INSERT INTO `tbl_entries_data_72` (`id`, `entry_id`, `value`) VALUES (4, 30, 'yes');

-- *** STRUCTURE: `tbl_entries_data_73` ***
DROP TABLE IF EXISTS `tbl_entries_data_73`;
CREATE TABLE `tbl_entries_data_73` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_73` ***
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (49, 99, 16);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (45, 94, 18);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (44, 93, 16);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (46, 95, 17);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (50, 100, 16);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (48, 97, 16);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (47, 96, 16);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (51, 101, 16);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (52, 102, 16);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (53, 104, 18);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (54, 106, 18);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (56, 107, 18);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (57, 108, 18);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (58, 109, 18);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (59, 110, 18);
INSERT INTO `tbl_entries_data_73` (`id`, `entry_id`, `relation_id`) VALUES (60, 111, 18);

-- *** STRUCTURE: `tbl_entries_data_74` ***
DROP TABLE IF EXISTS `tbl_entries_data_74`;
CREATE TABLE `tbl_entries_data_74` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_74` ***
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (61, 92, '2011-12-06T15:15:19+01:00', 1323180919, 1323180919);
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (62, 98, '2011-12-06T15:22:22+01:00', 1323181342, 1323181342);
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (63, 103, '2011-12-06T16:08:51+01:00', 1323184131, 1323184131);
INSERT INTO `tbl_entries_data_74` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (70, 105, '2011-12-06T16:12:17+01:00', 1323184337, 1323184337);

-- *** STRUCTURE: `tbl_entries_data_75` ***
DROP TABLE IF EXISTS `tbl_entries_data_75`;
CREATE TABLE `tbl_entries_data_75` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_75` ***
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (38, 102, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (39, 104, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (40, 106, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (30, 93, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (31, 94, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (32, 95, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (33, 96, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (34, 97, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (35, 99, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (36, 100, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (37, 101, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (42, 107, '/uploads/nav.xml', 1879, 'text/xml', 'a:1:{s:8:\"creation\";s:25:\"2011-12-06T16:13:39+01:00\";}');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (43, 108, '/uploads/nav.xsl', 1031, 'application/xslt+xml', 'a:1:{s:8:\"creation\";s:25:\"2011-12-06T16:15:21+01:00\";}');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (44, 109, '/uploads/nav-4ede33739ceb9.xsl', 1031, 'application/xslt+xml', 'a:1:{s:8:\"creation\";s:25:\"2011-12-06T16:23:31+01:00\";}');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (45, 110, '/uploads/original-filename-4ede399b04531.patch', 1296, 'text/x-patch', 'a:1:{s:8:\"creation\";s:25:\"2011-12-06T16:49:47+01:00\";}');
INSERT INTO `tbl_entries_data_75` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (46, 111, '/uploads/static-4ede39d1878f9.patch', 1347, 'text/x-patch', 'a:1:{s:8:\"creation\";s:25:\"2011-12-06T16:50:41+01:00\";}');

-- *** STRUCTURE: `tbl_entries_data_76` ***
DROP TABLE IF EXISTS `tbl_entries_data_76`;
CREATE TABLE `tbl_entries_data_76` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_76` ***
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `value`) VALUES (11, 13, 2);
INSERT INTO `tbl_entries_data_76` (`id`, `entry_id`, `value`) VALUES (8, 61, 3);

-- *** STRUCTURE: `tbl_entries_data_84` ***
DROP TABLE IF EXISTS `tbl_entries_data_84`;
CREATE TABLE `tbl_entries_data_84` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_84` ***
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (45, 105, 75);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (38, 103, 75);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (36, 92, 75);
INSERT INTO `tbl_entries_data_84` (`id`, `entry_id`, `relation_id`) VALUES (37, 98, 75);

-- *** STRUCTURE: `tbl_entries_data_86` ***
DROP TABLE IF EXISTS `tbl_entries_data_86`;
CREATE TABLE `tbl_entries_data_86` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_86` ***
INSERT INTO `tbl_entries_data_86` (`id`, `entry_id`, `value`) VALUES (1, 72, 'yes');

-- *** STRUCTURE: `tbl_entries_data_88` ***
DROP TABLE IF EXISTS `tbl_entries_data_88`;
CREATE TABLE `tbl_entries_data_88` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- *** DATA: `tbl_entries_data_88` ***
INSERT INTO `tbl_entries_data_88` (`id`, `entry_id`, `value`) VALUES (3, 73, 'yes');

-- *** STRUCTURE: `tbl_entries_data_94` ***
DROP TABLE IF EXISTS `tbl_entries_data_94`;
CREATE TABLE `tbl_entries_data_94` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`handle`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_94` ***
INSERT INTO `tbl_entries_data_94` (`id`, `entry_id`, `value`, `handle`) VALUES (5, 74, '(nobody)', 'nobody');
INSERT INTO `tbl_entries_data_94` (`id`, `entry_id`, `value`, `handle`) VALUES (4, 75, 'nils', 'nils');

-- *** STRUCTURE: `tbl_entries_data_95` ***
DROP TABLE IF EXISTS `tbl_entries_data_95`;
CREATE TABLE `tbl_entries_data_95` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `role_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_95` ***
INSERT INTO `tbl_entries_data_95` (`id`, `entry_id`, `role_id`) VALUES (5, 74, 1);
INSERT INTO `tbl_entries_data_95` (`id`, `entry_id`, `role_id`) VALUES (4, 75, 2);

-- *** STRUCTURE: `tbl_entries_data_96` ***
DROP TABLE IF EXISTS `tbl_entries_data_96`;
CREATE TABLE `tbl_entries_data_96` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`value`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_96` ***
INSERT INTO `tbl_entries_data_96` (`id`, `entry_id`, `value`) VALUES (5, 74, 'nobody@bugaroo.symphony-cms.com');
INSERT INTO `tbl_entries_data_96` (`id`, `entry_id`, `value`) VALUES (4, 75, 'nils.werner@gmail.com');

-- *** STRUCTURE: `tbl_entries_data_97` ***
DROP TABLE IF EXISTS `tbl_entries_data_97`;
CREATE TABLE `tbl_entries_data_97` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recovery-code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `length` tinyint(2) NOT NULL,
  `strength` enum('weak','good','strong') COLLATE utf8_unicode_ci NOT NULL,
  `reset` enum('yes','no') COLLATE utf8_unicode_ci DEFAULT 'no',
  `expires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `recovery-code` (`recovery-code`),
  KEY `entry_id` (`entry_id`),
  KEY `length` (`length`),
  KEY `password` (`password`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_97` ***
INSERT INTO `tbl_entries_data_97` (`id`, `entry_id`, `password`, `recovery-code`, `length`, `strength`, `reset`, `expires`) VALUES (5, 74, '11f7908e5a96ef99319757197ce298f604bcd5c9', NULL, 9, 'good', 'no', NULL);
INSERT INTO `tbl_entries_data_97` (`id`, `entry_id`, `password`, `recovery-code`, `length`, `strength`, `reset`, `expires`) VALUES (4, 75, '85f93bfe9eeebffb668f007583d732447e6ffdec', NULL, 8, 'strong', 'no', NULL);

-- *** STRUCTURE: `tbl_entries_data_98` ***
DROP TABLE IF EXISTS `tbl_entries_data_98`;
CREATE TABLE `tbl_entries_data_98` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_98` ***
INSERT INTO `tbl_entries_data_98` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 74, 'nobody', '(nobody)');
INSERT INTO `tbl_entries_data_98` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 75, 'nils-werner', 'Nils Werner');

-- *** STRUCTURE: `tbl_entries_data_99` ***
DROP TABLE IF EXISTS `tbl_entries_data_99`;
CREATE TABLE `tbl_entries_data_99` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `tbl_entries_data_99` ***
INSERT INTO `tbl_entries_data_99` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 75, 'obsessive-media', 'Obsessive Media');

-- *** DATA: `tbl_entries` ***
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (15, 10, 1, '2010-02-06 12:25:22', '2010-02-06 11:25:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (14, 9, 1, '2010-02-06 12:25:04', '2010-02-06 11:25:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (17, 10, 1, '2010-02-06 12:25:41', '2010-02-06 11:25:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (16, 10, 1, '2010-02-06 12:25:28', '2010-02-06 11:25:28');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (13, 8, 1, '2010-02-06 12:21:36', '2010-02-06 11:21:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (111, 13, 1, '2011-12-06 16:50:41', '2011-12-06 15:50:41');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (104, 13, 1, '2011-12-06 16:08:51', '2011-12-06 15:08:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (18, 10, 1, '2010-02-06 12:25:49', '2010-02-06 11:25:49');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (19, 11, 1, '2010-02-06 12:26:18', '2010-02-06 11:26:18');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (20, 11, 1, '2010-02-06 12:26:34', '2010-02-06 11:26:34');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (21, 11, 1, '2010-02-06 12:26:46', '2010-02-06 11:26:46');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (110, 13, 1, '2011-12-06 16:49:47', '2011-12-06 15:49:47');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (103, 12, 1, '2011-12-06 16:08:51', '2011-12-06 15:08:51');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (102, 13, 1, '2011-12-06 15:37:24', '2011-12-06 14:37:24');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (28, 14, 1, '2010-02-06 14:18:14', '2010-02-06 13:18:14');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (29, 14, 1, '2010-02-06 14:18:20', '2010-02-06 13:18:20');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (30, 14, 1, '2010-02-06 14:18:23', '2010-02-06 13:18:23');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (109, 13, 1, '2011-12-06 16:23:31', '2011-12-06 15:23:31');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (108, 13, 1, '2011-12-06 16:15:21', '2011-12-06 15:15:21');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (33, 9, 1, '2010-02-06 16:55:05', '2010-02-06 15:55:05');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (101, 13, 1, '2011-12-06 15:36:44', '2011-12-06 14:36:44');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (100, 13, 1, '2011-12-06 15:22:49', '2011-12-06 14:22:49');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (72, 11, 1, '2010-02-12 13:46:09', '2010-02-12 12:46:09');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (107, 13, 1, '2011-12-06 16:13:25', '2011-12-06 15:13:25');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (106, 13, 1, '2011-12-06 16:12:17', '2011-12-06 15:12:17');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (61, 8, 1, '2010-02-08 14:50:48', '2010-02-08 13:50:48');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (99, 13, 1, '2011-12-06 15:22:22', '2011-12-06 14:22:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (105, 12, 1, '2011-12-06 16:12:17', '2011-12-06 15:12:17');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (57, 14, 1, '2010-02-06 20:57:50', '2010-02-06 19:57:50');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (98, 12, 1, '2011-12-06 15:22:22', '2011-12-06 14:22:22');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (97, 13, 1, '2011-12-06 15:21:03', '2011-12-06 14:21:03');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (96, 13, 1, '2011-12-06 15:20:50', '2011-12-06 14:20:50');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (73, 9, 1, '2010-02-12 13:46:29', '2010-02-12 12:46:29');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (74, 15, 1, '2011-08-04 11:53:40', '2011-08-04 09:53:40');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (75, 15, 1, '2011-08-04 11:54:36', '2011-08-04 09:54:36');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (95, 13, 1, '2011-12-06 15:18:04', '2011-12-06 14:18:04');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (93, 13, 1, '2011-12-06 15:15:19', '2011-12-06 14:15:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (92, 12, 1, '2011-12-06 15:15:19', '2011-12-06 14:15:19');
INSERT INTO `tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (94, 13, 1, '2011-12-06 15:16:17', '2011-12-06 14:16:17');

-- *** DATA: `tbl_extensions` ***
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (75, 'export_ensemble', 'enabled', 1.16);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (87, 'selectbox_link_field', 'enabled', 1.20);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (77, 'jit_image_manipulation', 'enabled', 1.11);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (78, 'maintenance_mode', 'enabled', 1.4);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (79, 'markdown', 'enabled', 1.13);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (84, 'profiledevkit', 'enabled', '1.0.4');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (85, 'debugdevkit', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (89, 'color_chooser_field', 'enabled', '1.2.1');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (91, 'order_entries', 'enabled', '1.9.6');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (100, 'globalresourceloader', 'enabled', '1.0.5');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (103, 'dump_db', 'enabled', 1.08);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (104, 'members', 'enabled', '1.1.1');
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (101, 'xssfilter', 'enabled', 1.1);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (105, 'url_router', 'enabled', 1.2);
INSERT INTO `tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (106, 'uniqueuploadfield', 'enabled', '1.4.2');

-- *** DATA: `tbl_extensions_delegates` ***
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (141, 101, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (142, 101, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (143, 101, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (120, 77, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (125, 78, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (124, 78, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (123, 78, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (122, 78, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (140, 84, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (139, 84, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (119, 77, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (121, 78, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (116, 89, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (138, 91, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (118, 100, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'preferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (117, 100, '/frontend/', 'FrontendPageResolved', 'manipulatePageData');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (149, 103, '/backend/', 'AppendPageAlert', 'appendAlert');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (148, 103, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (147, 103, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (146, 75, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (145, 85, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (144, 85, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (126, 78, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (127, 78, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (178, 104, '/blueprints/events/new/', 'AppendEventFilter', 'appendFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (177, 104, '/system/preferences/', 'Save', 'savePreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (175, 104, '/backend/', 'AdminPagePreGenerate', 'appendAssets');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (176, 104, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (174, 104, '/frontend/', 'EventPostSaveFilter', 'processPostSaveFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (173, 104, '/frontend/', 'EventPreSaveFilter', 'checkEventPermissions');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (172, 104, '/frontend/', 'FrontendProcessEvents', 'appendLoginStatusToEventXML');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (171, 104, '/frontend/', 'FrontendParamsResolve', 'addMemberDetailsToPageParams');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (170, 104, '/frontend/', 'FrontendPageResolved', 'checkFrontendPagePermissions');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (179, 104, '/blueprints/events/edit/', 'AppendEventFilter', 'appendFilter');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (180, 105, '/frontend/', 'FrontendPrePageResolve', 'frontendPrePageResolve');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (181, 105, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'addCustomPreferenceFieldsets');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (182, 105, '/system/preferences/', 'Save', 'save');
INSERT INTO `tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (183, 105, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');

-- *** DATA: `tbl_fields` ***
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (58, 'Status', 'status', 'selectbox_link', 12, 'yes', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (37, 'Title', 'title', 'input', 12, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (36, 'Title', 'title', 'input', 11, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (35, 'Title', 'title', 'input', 10, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (34, 'Due', 'due', 'date', 9, 'no', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (33, 'Project', 'project', 'selectbox_link', 9, 'no', 3, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (32, 'Description', 'description', 'textarea', 9, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (31, 'Title', 'title', 'input', 9, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (30, 'Administrators', 'administrators', 'selectbox_link', 8, 'no', 4, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (29, 'Contributors', 'contributors', 'selectbox_link', 8, 'no', 3, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (28, 'Status', 'status', 'select', 8, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (27, 'Description', 'description', 'textarea', 8, 'no', 1, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (26, 'Title', 'title', 'input', 8, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (86, 'None', 'none', 'checkbox', 11, 'no', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (39, 'Project', 'project', 'selectbox_link', 12, 'yes', 8, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (40, 'Creator', 'creator', 'selectbox_link', 12, 'yes', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (41, 'Priority', 'priority', 'selectbox_link', 12, 'yes', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (42, 'Category', 'category', 'selectbox_link', 12, 'yes', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (43, 'Assignee', 'assignee', 'selectbox_link', 12, 'yes', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (44, 'Milestone', 'milestone', 'selectbox_link', 12, 'yes', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (49, 'Description', 'description', 'textarea', 13, 'no', 0, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (46, 'Color', 'color', 'colorchooser', 10, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (47, 'Color', 'color', 'colorchooser', 11, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (50, 'Creator', 'creator', 'selectbox_link', 13, 'yes', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (73, 'Priority', 'priority', 'selectbox_link', 13, 'yes', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (52, 'Category', 'category', 'selectbox_link', 13, 'yes', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (53, 'Assignee', 'assignee', 'selectbox_link', 13, 'yes', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (54, 'Milestone', 'milestone', 'selectbox_link', 13, 'yes', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (55, 'Issue', 'issue', 'selectbox_link', 13, 'yes', 9, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (57, 'Title', 'title', 'input', 14, 'no', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (59, 'Status', 'status', 'selectbox_link', 13, 'yes', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (60, 'Issues', 'issues', 'checkbox', 14, 'no', 4, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (61, 'Milestones', 'milestones', 'checkbox', 14, 'no', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (62, 'Projects', 'projects', 'checkbox', 14, 'no', 6, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (63, 'Order', 'order', 'order_entries', 11, 'no', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (64, 'Order', 'order', 'order_entries', 10, 'no', 2, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (65, 'Order', 'order', 'order_entries', 14, 'no', 8, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (66, 'Finished', 'finished', 'checkbox', 14, 'no', 7, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (67, 'Date', 'date', 'date', 12, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (68, 'Date', 'date', 'date', 13, 'no', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (69, 'Backgroundcolor', 'backgroundcolor', 'colorchooser', 14, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (70, 'Textcolor', 'textcolor', 'colorchooser', 14, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (71, 'Status', 'status', 'select', 9, 'no', 2, 'main', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (72, 'Dashboard', 'dashboard', 'checkbox', 14, 'no', 3, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (74, 'Modified', 'modified', 'date', 12, 'no', 9, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (75, 'File', 'file', 'uniqueupload', 13, 'no', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (76, 'Order', 'order', 'order_entries', 8, 'no', 5, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (84, 'Modifier', 'modifier', 'selectbox_link', 12, 'yes', 10, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (88, 'None', 'none', 'checkbox', 9, 'no', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (94, 'Username', 'username', 'memberusername', 15, 'yes', 1, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (95, 'Role', 'role', 'memberrole', 15, 'yes', 4, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (96, 'Email', 'email', 'memberemail', 15, 'yes', 2, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (97, 'Password', 'password', 'memberpassword', 15, 'yes', 3, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (98, 'Name', 'name', 'input', 15, 'yes', 0, 'main', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (99, 'Company', 'company', 'input', 15, 'no', 5, 'sidebar', 'yes');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (100, 'Detailed', 'detailed', 'selectbox_link', 15, 'no', 6, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (101, 'Hide', 'hide', 'selectbox_link', 15, 'no', 7, 'sidebar', 'no');
INSERT INTO `tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (102, 'Subscriptions', 'subscriptions', 'selectbox_link', 15, 'no', 8, 'sidebar', 'no');

-- *** DATA: `tbl_members_roles` ***
INSERT INTO `tbl_members_roles` (`id`, `name`, `handle`) VALUES (1, 'Public', 'public');
INSERT INTO `tbl_members_roles` (`id`, `name`, `handle`) VALUES (2, 'Administrator', 'administrator');
INSERT INTO `tbl_members_roles` (`id`, `name`, `handle`) VALUES (3, 'Developer', 'developer');
INSERT INTO `tbl_members_roles` (`id`, `name`, `handle`) VALUES (4, 'Client', 'client');
INSERT INTO `tbl_members_roles` (`id`, `name`, `handle`) VALUES (5, 'Nobody', 'nobody');

-- *** DATA: `tbl_members_roles_event_permissions` ***
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (5, 2, 'edit_issue', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (17, 3, 'edit_issue', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (29, 4, 'edit_issue', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (4, 5, 'login', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (6, 2, 'edit_issue', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (7, 2, 'edit_member', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (8, 2, 'edit_member', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (9, 2, 'edit_message', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (10, 2, 'edit_message', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (11, 2, 'edit_milestone', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (12, 2, 'edit_milestone', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (13, 2, 'edit_project', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (14, 2, 'edit_project', 'edit', 2);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (15, 2, 'login', 'create', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (16, 2, 'login', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (18, 3, 'edit_issue', 'edit', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (19, 3, 'edit_member', 'create', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (20, 3, 'edit_member', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (21, 3, 'edit_message', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (22, 3, 'edit_message', 'edit', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (23, 3, 'edit_milestone', 'create', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (24, 3, 'edit_milestone', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (25, 3, 'edit_project', 'create', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (26, 3, 'edit_project', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (27, 3, 'login', 'create', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (28, 3, 'login', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (30, 4, 'edit_issue', 'edit', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (31, 4, 'edit_member', 'create', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (32, 4, 'edit_member', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (33, 4, 'edit_message', 'create', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (34, 4, 'edit_message', 'edit', 1);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (35, 4, 'edit_milestone', 'create', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (36, 4, 'edit_milestone', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (37, 4, 'edit_project', 'create', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (38, 4, 'edit_project', 'edit', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (39, 4, 'login', 'create', 0);
INSERT INTO `tbl_members_roles_event_permissions` (`id`, `role_id`, `event`, `action`, `level`) VALUES (40, 4, 'login', 'edit', 0);

-- *** DATA: `tbl_members_roles_forbidden_pages` ***

-- *** DATA: `tbl_pages` ***
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (82, NULL, 'Issue', 'issue', NULL, 'project/issue', 'issue_issue,issue_issue_messages,project_project,project_project_contributors,project_project_contributors_assignees,project_project_issues,project_project_milestones', 'edit_issue,edit_message', 9);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (78, NULL, 'Project', 'project', NULL, 'project', 'project_project,project_project_contributors,project_project_contributors_assignees,project_project_issues,project_project_issues_filtered,project_project_issues_messages,project_project_milestones', NULL, 8);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (75, NULL, 'Maintenance', 'maintenance', NULL, NULL, NULL, NULL, 18);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (76, NULL, 'Page Not Found', 'page-not-found', NULL, NULL, NULL, NULL, 19);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (87, 82, 'New Issue', 'new', 'issue', 'project', 'project_project,project_project_contributors,project_project_contributors_assignees,project_project_milestones', 'edit_issue,edit_message', 10);
INSERT INTO `tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (86, NULL, 'Dashboard', 'dashboard', NULL, NULL, 'dashboard_projects,dashboard_projects_issues,dashboard_projects_issues_messages,dashboard_projects_milestones', NULL, 7);

-- *** DATA: `tbl_pages_types` ***
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (689, 76, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (698, 86, 'index');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (690, 75, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (702, 78, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (706, 82, 'hidden');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (691, 75, 'maintenance');
INSERT INTO `tbl_pages_types` (`id`, `page_id`, `type`) VALUES (688, 76, 404);

-- *** DATA: `tbl_sections` ***
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (10, 'Priority', 'priority', 5, 64, 'asc', 'no', 'Categorization');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (9, 'Milestones', 'milestones', 1, NULL, 'asc', 'no', 'Projects');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (8, 'Projects', 'projects', 0, 76, 'asc', 'no', 'Projects');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (11, 'Category', 'category', 6, 63, 'asc', 'no', 'Categorization');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (12, 'Issues', 'issues', 2, NULL, 'asc', 'no', 'Issues');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (13, 'Messages', 'messages', 3, 68, 'desc', 'no', 'Issues');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (14, 'Status', 'status', 4, 65, 'asc', 'no', 'Categorization');
INSERT INTO `tbl_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (15, 'Members', 'members', 7, NULL, 'asc', 'no', 'Users');

-- *** DATA: `tbl_sections_association` ***
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (294, 15, 98, 8, 30, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (293, 15, 98, 8, 29, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (281, 8, 26, 9, 33, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (301, 8, 26, 12, 39, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (295, 15, 98, 12, 40, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (296, 10, 35, 12, 41, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (297, 11, 36, 12, 42, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (298, 15, 98, 12, 43, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (299, 9, 31, 12, 44, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (303, 15, 98, 13, 50, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (304, 10, 35, 13, 73, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (305, 11, 36, 13, 52, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (306, 15, 98, 13, 53, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (307, 9, 31, 13, 54, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (309, 12, 37, 13, 55, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (300, 14, 57, 12, 58, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (308, 14, 57, 13, 59, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (302, 15, 98, 12, 84, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (290, 8, 26, 15, 100, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (291, 8, 26, 15, 101, 'no');
INSERT INTO `tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (292, 12, 37, 15, 102, 'no');

-- *** DATA: `tbl_url_router` ***
INSERT INTO `tbl_url_router` (`id`, `from`, `to`, `type`, `http301`) VALUES (56, ':project/new', '/issue/new/:project', 'route', 'no');
INSERT INTO `tbl_url_router` (`id`, `from`, `to`, `type`, `http301`) VALUES (57, ':project/:issue', '/issue/:project/:issue', 'route', 'no');
INSERT INTO `tbl_url_router` (`id`, `from`, `to`, `type`, `http301`) VALUES (58, ':project', '/project/:project', 'route', 'no');
