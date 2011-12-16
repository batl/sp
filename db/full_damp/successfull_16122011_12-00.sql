-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Дек 16 2011 г., 10:20
-- Версия сервера: 5.5.8
-- Версия PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `successfull`
--

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_auth_access`
--

CREATE TABLE IF NOT EXISTS `phpbb_auth_access` (
  `group_id` mediumint(8) NOT NULL DEFAULT '0',
  `forum_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `auth_view` tinyint(1) NOT NULL DEFAULT '0',
  `auth_read` tinyint(1) NOT NULL DEFAULT '0',
  `auth_post` tinyint(1) NOT NULL DEFAULT '0',
  `auth_reply` tinyint(1) NOT NULL DEFAULT '0',
  `auth_edit` tinyint(1) NOT NULL DEFAULT '0',
  `auth_delete` tinyint(1) NOT NULL DEFAULT '0',
  `auth_sticky` tinyint(1) NOT NULL DEFAULT '0',
  `auth_announce` tinyint(1) NOT NULL DEFAULT '0',
  `auth_vote` tinyint(1) NOT NULL DEFAULT '0',
  `auth_pollcreate` tinyint(1) NOT NULL DEFAULT '0',
  `auth_attachments` tinyint(1) NOT NULL DEFAULT '0',
  `auth_mod` tinyint(1) NOT NULL DEFAULT '0',
  KEY `group_id` (`group_id`),
  KEY `forum_id` (`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phpbb_auth_access`
--


-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_banlist`
--

CREATE TABLE IF NOT EXISTS `phpbb_banlist` (
  `ban_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ban_userid` mediumint(8) NOT NULL,
  `ban_ip` char(8) NOT NULL,
  `ban_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ban_id`),
  KEY `ban_ip_user_id` (`ban_ip`,`ban_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `phpbb_banlist`
--


-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_categories`
--

CREATE TABLE IF NOT EXISTS `phpbb_categories` (
  `cat_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(100) DEFAULT NULL,
  `cat_order` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_order` (`cat_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `phpbb_categories`
--

INSERT INTO `phpbb_categories` (`cat_id`, `cat_title`, `cat_order`) VALUES
(1, 'Ïðîåêòû', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_config`
--

CREATE TABLE IF NOT EXISTS `phpbb_config` (
  `config_name` varchar(255) NOT NULL,
  `config_value` varchar(255) NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phpbb_config`
--

INSERT INTO `phpbb_config` (`config_name`, `config_value`) VALUES
('config_id', '1'),
('board_disable', '0'),
('sitename', 'Óñïåøíûé ïðîåêò - ôîðóì'),
('site_desc', 'îñâåùåíèå ïðîåêòîâ â ñîöèàëüíîé ñôåðå, ìàëîì è ñðåäíåì áèçíåñå'),
('cookie_name', 'phpbb2mysql'),
('cookie_path', '/'),
('cookie_domain', ''),
('cookie_secure', '0'),
('session_length', '3600'),
('allow_html', '0'),
('allow_html_tags', 'b,i,u,pre'),
('allow_bbcode', '1'),
('allow_smilies', '1'),
('allow_sig', '1'),
('allow_namechange', '0'),
('allow_theme_create', '0'),
('allow_avatar_local', '0'),
('allow_avatar_remote', '0'),
('allow_avatar_upload', '0'),
('enable_confirm', '1'),
('allow_autologin', '1'),
('max_autologin_time', '0'),
('override_user_style', '0'),
('posts_per_page', '15'),
('topics_per_page', '50'),
('hot_threshold', '25'),
('max_poll_options', '10'),
('max_sig_chars', '255'),
('max_inbox_privmsgs', '50'),
('max_sentbox_privmsgs', '25'),
('max_savebox_privmsgs', '50'),
('board_email_sig', 'Thanks, The Management'),
('board_email', 'maxdmitrief@gmail.com'),
('smtp_delivery', '0'),
('smtp_host', ''),
('smtp_username', 'admin'),
('smtp_password', 'bytccf'),
('sendmail_fix', '0'),
('require_activation', '0'),
('flood_interval', '15'),
('search_flood_interval', '15'),
('search_min_chars', '3'),
('max_login_attempts', '5'),
('login_reset_time', '30'),
('board_email_form', '0'),
('avatar_filesize', '6144'),
('avatar_max_width', '80'),
('avatar_max_height', '80'),
('avatar_path', 'images/avatars'),
('avatar_gallery_path', 'images/avatars/gallery'),
('smilies_path', 'images/smiles'),
('default_style', '1'),
('default_dateformat', 'D M d, Y g:i a'),
('board_timezone', '0'),
('prune_enable', '1'),
('privmsg_disable', '0'),
('gzip_compress', '0'),
('coppa_fax', ''),
('coppa_mail', ''),
('record_online_users', '1'),
('record_online_date', '1323898106'),
('server_name', 'goodpro.zp.ua'),
('server_port', '80'),
('script_path', '/forum/'),
('version', '.0.23'),
('rand_seed', 'a3a3be5497f503b7015d9d0aba629629'),
('board_startdate', '1323898050'),
('default_lang', 'russian');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_confirm`
--

CREATE TABLE IF NOT EXISTS `phpbb_confirm` (
  `confirm_id` char(32) NOT NULL DEFAULT '',
  `session_id` char(32) NOT NULL DEFAULT '',
  `code` char(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`session_id`,`confirm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phpbb_confirm`
--

INSERT INTO `phpbb_confirm` (`confirm_id`, `session_id`, `code`) VALUES
('2945972a83d61dd19839145926146c2b', '0a40662e8f286c69bcbe186b2739fb2d', 'M7A5VN');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_disallow`
--

CREATE TABLE IF NOT EXISTS `phpbb_disallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `disallow_username` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`disallow_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `phpbb_disallow`
--


-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_forums`
--

CREATE TABLE IF NOT EXISTS `phpbb_forums` (
  `forum_id` smallint(5) unsigned NOT NULL,
  `cat_id` mediumint(8) unsigned NOT NULL,
  `forum_name` varchar(150) DEFAULT NULL,
  `forum_desc` text,
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_order` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `forum_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_next` int(11) DEFAULT NULL,
  `prune_enable` tinyint(1) NOT NULL DEFAULT '0',
  `auth_view` tinyint(2) NOT NULL DEFAULT '0',
  `auth_read` tinyint(2) NOT NULL DEFAULT '0',
  `auth_post` tinyint(2) NOT NULL DEFAULT '0',
  `auth_reply` tinyint(2) NOT NULL DEFAULT '0',
  `auth_edit` tinyint(2) NOT NULL DEFAULT '0',
  `auth_delete` tinyint(2) NOT NULL DEFAULT '0',
  `auth_sticky` tinyint(2) NOT NULL DEFAULT '0',
  `auth_announce` tinyint(2) NOT NULL DEFAULT '0',
  `auth_vote` tinyint(2) NOT NULL DEFAULT '0',
  `auth_pollcreate` tinyint(2) NOT NULL DEFAULT '0',
  `auth_attachments` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`forum_id`),
  KEY `forums_order` (`forum_order`),
  KEY `cat_id` (`cat_id`),
  KEY `forum_last_post_id` (`forum_last_post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phpbb_forums`
--

INSERT INTO `phpbb_forums` (`forum_id`, `cat_id`, `forum_name`, `forum_desc`, `forum_status`, `forum_order`, `forum_posts`, `forum_topics`, `forum_last_post_id`, `prune_next`, `prune_enable`, `auth_view`, `auth_read`, `auth_post`, `auth_reply`, `auth_edit`, `auth_delete`, `auth_sticky`, `auth_announce`, `auth_vote`, `auth_pollcreate`, `auth_attachments`) VALUES
(1, 1, 'Ýòíîñåëî', 'Ñîçäàíèå èñòîðèêî-êóëüòóðíîãî êîìïëåêñà "Ýòíîñåëî" â Âîëüíÿíñêîì ðàéîíå Çàïîðîæñêîé îáëàñòè. ', 0, 10, 1, 1, 2, NULL, 0, 0, 0, 1, 1, 1, 1, 3, 3, 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_forum_prune`
--

CREATE TABLE IF NOT EXISTS `phpbb_forum_prune` (
  `prune_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` smallint(5) unsigned NOT NULL,
  `prune_days` smallint(5) unsigned NOT NULL,
  `prune_freq` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`prune_id`),
  KEY `forum_id` (`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `phpbb_forum_prune`
--


-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_groups`
--

CREATE TABLE IF NOT EXISTS `phpbb_groups` (
  `group_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_name` varchar(40) NOT NULL,
  `group_description` varchar(255) NOT NULL,
  `group_moderator` mediumint(8) NOT NULL DEFAULT '0',
  `group_single_user` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`group_id`),
  KEY `group_single_user` (`group_single_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `phpbb_groups`
--

INSERT INTO `phpbb_groups` (`group_id`, `group_type`, `group_name`, `group_description`, `group_moderator`, `group_single_user`) VALUES
(1, 1, 'Anonymous', 'Personal User', 0, 1),
(2, 1, 'Admin', 'Personal User', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_posts`
--

CREATE TABLE IF NOT EXISTS `phpbb_posts` (
  `post_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) NOT NULL DEFAULT '0',
  `post_time` int(11) NOT NULL DEFAULT '0',
  `poster_ip` char(8) NOT NULL,
  `post_username` varchar(25) DEFAULT NULL,
  `enable_bbcode` tinyint(1) NOT NULL DEFAULT '1',
  `enable_html` tinyint(1) NOT NULL DEFAULT '0',
  `enable_smilies` tinyint(1) NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) NOT NULL DEFAULT '1',
  `post_edit_time` int(11) DEFAULT NULL,
  `post_edit_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `post_time` (`post_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `phpbb_posts`
--

INSERT INTO `phpbb_posts` (`post_id`, `topic_id`, `forum_id`, `poster_id`, `post_time`, `poster_ip`, `post_username`, `enable_bbcode`, `enable_html`, `enable_smilies`, `enable_sig`, `post_edit_time`, `post_edit_count`) VALUES
(2, 2, 1, 2, 1323900198, '2e764aaf', '', 1, 0, 1, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_posts_text`
--

CREATE TABLE IF NOT EXISTS `phpbb_posts_text` (
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bbcode_uid` char(10) NOT NULL DEFAULT '',
  `post_subject` char(60) DEFAULT NULL,
  `post_text` text,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phpbb_posts_text`
--

INSERT INTO `phpbb_posts_text` (`post_id`, `bbcode_uid`, `post_subject`, `post_text`) VALUES
(2, 'ea118b7b9c', 'Ïîåçäêà â Ýòíîñåëî', 'Ïðèâåò ôîðóì!');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_privmsgs`
--

CREATE TABLE IF NOT EXISTS `phpbb_privmsgs` (
  `privmsgs_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `privmsgs_type` tinyint(4) NOT NULL DEFAULT '0',
  `privmsgs_subject` varchar(255) NOT NULL DEFAULT '0',
  `privmsgs_from_userid` mediumint(8) NOT NULL DEFAULT '0',
  `privmsgs_to_userid` mediumint(8) NOT NULL DEFAULT '0',
  `privmsgs_date` int(11) NOT NULL DEFAULT '0',
  `privmsgs_ip` char(8) NOT NULL,
  `privmsgs_enable_bbcode` tinyint(1) NOT NULL DEFAULT '1',
  `privmsgs_enable_html` tinyint(1) NOT NULL DEFAULT '0',
  `privmsgs_enable_smilies` tinyint(1) NOT NULL DEFAULT '1',
  `privmsgs_attach_sig` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`privmsgs_id`),
  KEY `privmsgs_from_userid` (`privmsgs_from_userid`),
  KEY `privmsgs_to_userid` (`privmsgs_to_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `phpbb_privmsgs`
--


-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_privmsgs_text`
--

CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_text` (
  `privmsgs_text_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `privmsgs_bbcode_uid` char(10) NOT NULL DEFAULT '0',
  `privmsgs_text` text,
  PRIMARY KEY (`privmsgs_text_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phpbb_privmsgs_text`
--


-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_ranks`
--

CREATE TABLE IF NOT EXISTS `phpbb_ranks` (
  `rank_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(50) NOT NULL,
  `rank_min` mediumint(8) NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) DEFAULT '0',
  `rank_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `phpbb_ranks`
--

INSERT INTO `phpbb_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'Site Admin', -1, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_search_results`
--

CREATE TABLE IF NOT EXISTS `phpbb_search_results` (
  `search_id` int(11) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) NOT NULL DEFAULT '',
  `search_time` int(11) NOT NULL DEFAULT '0',
  `search_array` mediumtext NOT NULL,
  PRIMARY KEY (`search_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phpbb_search_results`
--


-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_search_wordlist`
--

CREATE TABLE IF NOT EXISTS `phpbb_search_wordlist` (
  `word_text` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word_common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word_text`),
  KEY `word_id` (`word_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `phpbb_search_wordlist`
--

INSERT INTO `phpbb_search_wordlist` (`word_text`, `word_id`, `word_common`) VALUES
('phpbb', 3, 0),
('ôîðóì', 16, 0),
('Ýòíîñåëî', 15, 0),
('Ïðèâåò', 14, 0),
('Ïîåçäêà', 13, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_search_wordmatch`
--

CREATE TABLE IF NOT EXISTS `phpbb_search_wordmatch` (
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `word_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title_match` tinyint(1) NOT NULL DEFAULT '0',
  KEY `post_id` (`post_id`),
  KEY `word_id` (`word_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phpbb_search_wordmatch`
--

INSERT INTO `phpbb_search_wordmatch` (`post_id`, `word_id`, `title_match`) VALUES
(2, 15, 1),
(2, 13, 1),
(2, 16, 0),
(2, 14, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_sessions`
--

CREATE TABLE IF NOT EXISTS `phpbb_sessions` (
  `session_id` char(32) NOT NULL DEFAULT '',
  `session_user_id` mediumint(8) NOT NULL DEFAULT '0',
  `session_start` int(11) NOT NULL DEFAULT '0',
  `session_time` int(11) NOT NULL DEFAULT '0',
  `session_ip` char(8) NOT NULL DEFAULT '0',
  `session_page` int(11) NOT NULL DEFAULT '0',
  `session_logged_in` tinyint(1) NOT NULL DEFAULT '0',
  `session_admin` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `session_user_id` (`session_user_id`),
  KEY `session_id_ip_user_id` (`session_id`,`session_ip`,`session_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phpbb_sessions`
--

INSERT INTO `phpbb_sessions` (`session_id`, `session_user_id`, `session_start`, `session_time`, `session_ip`, `session_page`, `session_logged_in`, `session_admin`) VALUES
('a9bee4dbd49896cea67c195eecce64cf', -1, 1323982181, 1323983945, '2e764f71', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_sessions_keys`
--

CREATE TABLE IF NOT EXISTS `phpbb_sessions_keys` (
  `key_id` varchar(32) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `last_ip` varchar(8) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`key_id`,`user_id`),
  KEY `last_login` (`last_login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phpbb_sessions_keys`
--


-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_smilies`
--

CREATE TABLE IF NOT EXISTS `phpbb_smilies` (
  `smilies_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `smile_url` varchar(100) DEFAULT NULL,
  `emoticon` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`smilies_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Дамп данных таблицы `phpbb_smilies`
--

INSERT INTO `phpbb_smilies` (`smilies_id`, `code`, `smile_url`, `emoticon`) VALUES
(1, ':D', 'icon_biggrin.gif', 'Very Happy'),
(2, ':-D', 'icon_biggrin.gif', 'Very Happy'),
(3, ':grin:', 'icon_biggrin.gif', 'Very Happy'),
(4, ':)', 'icon_smile.gif', 'Smile'),
(5, ':-)', 'icon_smile.gif', 'Smile'),
(6, ':smile:', 'icon_smile.gif', 'Smile'),
(7, ':(', 'icon_sad.gif', 'Sad'),
(8, ':-(', 'icon_sad.gif', 'Sad'),
(9, ':sad:', 'icon_sad.gif', 'Sad'),
(10, ':o', 'icon_surprised.gif', 'Surprised'),
(11, ':-o', 'icon_surprised.gif', 'Surprised'),
(12, ':eek:', 'icon_surprised.gif', 'Surprised'),
(13, ':shock:', 'icon_eek.gif', 'Shocked'),
(14, ':?', 'icon_confused.gif', 'Confused'),
(15, ':-?', 'icon_confused.gif', 'Confused'),
(16, ':???:', 'icon_confused.gif', 'Confused'),
(17, '8)', 'icon_cool.gif', 'Cool'),
(18, '8-)', 'icon_cool.gif', 'Cool'),
(19, ':cool:', 'icon_cool.gif', 'Cool'),
(20, ':lol:', 'icon_lol.gif', 'Laughing'),
(21, ':x', 'icon_mad.gif', 'Mad'),
(22, ':-x', 'icon_mad.gif', 'Mad'),
(23, ':mad:', 'icon_mad.gif', 'Mad'),
(24, ':P', 'icon_razz.gif', 'Razz'),
(25, ':-P', 'icon_razz.gif', 'Razz'),
(26, ':razz:', 'icon_razz.gif', 'Razz'),
(27, ':oops:', 'icon_redface.gif', 'Embarassed'),
(28, ':cry:', 'icon_cry.gif', 'Crying or Very sad'),
(29, ':evil:', 'icon_evil.gif', 'Evil or Very Mad'),
(30, ':twisted:', 'icon_twisted.gif', 'Twisted Evil'),
(31, ':roll:', 'icon_rolleyes.gif', 'Rolling Eyes'),
(32, ':wink:', 'icon_wink.gif', 'Wink'),
(33, ';)', 'icon_wink.gif', 'Wink'),
(34, ';-)', 'icon_wink.gif', 'Wink'),
(35, ':!:', 'icon_exclaim.gif', 'Exclamation'),
(36, ':?:', 'icon_question.gif', 'Question'),
(37, ':idea:', 'icon_idea.gif', 'Idea'),
(38, ':arrow:', 'icon_arrow.gif', 'Arrow'),
(39, ':|', 'icon_neutral.gif', 'Neutral'),
(40, ':-|', 'icon_neutral.gif', 'Neutral'),
(41, ':neutral:', 'icon_neutral.gif', 'Neutral'),
(42, ':mrgreen:', 'icon_mrgreen.gif', 'Mr. Green');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_themes`
--

CREATE TABLE IF NOT EXISTS `phpbb_themes` (
  `themes_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(30) NOT NULL DEFAULT '',
  `style_name` varchar(30) NOT NULL DEFAULT '',
  `head_stylesheet` varchar(100) DEFAULT NULL,
  `body_background` varchar(100) DEFAULT NULL,
  `body_bgcolor` varchar(6) DEFAULT NULL,
  `body_text` varchar(6) DEFAULT NULL,
  `body_link` varchar(6) DEFAULT NULL,
  `body_vlink` varchar(6) DEFAULT NULL,
  `body_alink` varchar(6) DEFAULT NULL,
  `body_hlink` varchar(6) DEFAULT NULL,
  `tr_color1` varchar(6) DEFAULT NULL,
  `tr_color2` varchar(6) DEFAULT NULL,
  `tr_color3` varchar(6) DEFAULT NULL,
  `tr_class1` varchar(25) DEFAULT NULL,
  `tr_class2` varchar(25) DEFAULT NULL,
  `tr_class3` varchar(25) DEFAULT NULL,
  `th_color1` varchar(6) DEFAULT NULL,
  `th_color2` varchar(6) DEFAULT NULL,
  `th_color3` varchar(6) DEFAULT NULL,
  `th_class1` varchar(25) DEFAULT NULL,
  `th_class2` varchar(25) DEFAULT NULL,
  `th_class3` varchar(25) DEFAULT NULL,
  `td_color1` varchar(6) DEFAULT NULL,
  `td_color2` varchar(6) DEFAULT NULL,
  `td_color3` varchar(6) DEFAULT NULL,
  `td_class1` varchar(25) DEFAULT NULL,
  `td_class2` varchar(25) DEFAULT NULL,
  `td_class3` varchar(25) DEFAULT NULL,
  `fontface1` varchar(50) DEFAULT NULL,
  `fontface2` varchar(50) DEFAULT NULL,
  `fontface3` varchar(50) DEFAULT NULL,
  `fontsize1` tinyint(4) DEFAULT NULL,
  `fontsize2` tinyint(4) DEFAULT NULL,
  `fontsize3` tinyint(4) DEFAULT NULL,
  `fontcolor1` varchar(6) DEFAULT NULL,
  `fontcolor2` varchar(6) DEFAULT NULL,
  `fontcolor3` varchar(6) DEFAULT NULL,
  `span_class1` varchar(25) DEFAULT NULL,
  `span_class2` varchar(25) DEFAULT NULL,
  `span_class3` varchar(25) DEFAULT NULL,
  `img_size_poll` smallint(5) unsigned DEFAULT NULL,
  `img_size_privmsg` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`themes_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `phpbb_themes`
--

INSERT INTO `phpbb_themes` (`themes_id`, `template_name`, `style_name`, `head_stylesheet`, `body_background`, `body_bgcolor`, `body_text`, `body_link`, `body_vlink`, `body_alink`, `body_hlink`, `tr_color1`, `tr_color2`, `tr_color3`, `tr_class1`, `tr_class2`, `tr_class3`, `th_color1`, `th_color2`, `th_color3`, `th_class1`, `th_class2`, `th_class3`, `td_color1`, `td_color2`, `td_color3`, `td_class1`, `td_class2`, `td_class3`, `fontface1`, `fontface2`, `fontface3`, `fontsize1`, `fontsize2`, `fontsize3`, `fontcolor1`, `fontcolor2`, `fontcolor3`, `span_class1`, `span_class2`, `span_class3`, `img_size_poll`, `img_size_privmsg`) VALUES
(1, 'subSilver', 'subSilver', 'subSilver.css', '', 'E5E5E5', '000000', '006699', '5493B4', '', 'DD6900', 'EFEFEF', 'DEE3E7', 'D1D7DC', '', '', '', '98AAB1', '006699', 'FFFFFF', 'cellpic1.gif', 'cellpic3.gif', 'cellpic2.jpg', 'FAFAFA', 'FFFFFF', '', 'row1', 'row2', '', 'Verdana, Arial, Helvetica, sans-serif', 'Trebuchet MS', 'Courier, ''Courier New'', sans-serif', 10, 11, 12, '444444', '006600', 'FFA34F', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_themes_name`
--

CREATE TABLE IF NOT EXISTS `phpbb_themes_name` (
  `themes_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tr_color1_name` char(50) DEFAULT NULL,
  `tr_color2_name` char(50) DEFAULT NULL,
  `tr_color3_name` char(50) DEFAULT NULL,
  `tr_class1_name` char(50) DEFAULT NULL,
  `tr_class2_name` char(50) DEFAULT NULL,
  `tr_class3_name` char(50) DEFAULT NULL,
  `th_color1_name` char(50) DEFAULT NULL,
  `th_color2_name` char(50) DEFAULT NULL,
  `th_color3_name` char(50) DEFAULT NULL,
  `th_class1_name` char(50) DEFAULT NULL,
  `th_class2_name` char(50) DEFAULT NULL,
  `th_class3_name` char(50) DEFAULT NULL,
  `td_color1_name` char(50) DEFAULT NULL,
  `td_color2_name` char(50) DEFAULT NULL,
  `td_color3_name` char(50) DEFAULT NULL,
  `td_class1_name` char(50) DEFAULT NULL,
  `td_class2_name` char(50) DEFAULT NULL,
  `td_class3_name` char(50) DEFAULT NULL,
  `fontface1_name` char(50) DEFAULT NULL,
  `fontface2_name` char(50) DEFAULT NULL,
  `fontface3_name` char(50) DEFAULT NULL,
  `fontsize1_name` char(50) DEFAULT NULL,
  `fontsize2_name` char(50) DEFAULT NULL,
  `fontsize3_name` char(50) DEFAULT NULL,
  `fontcolor1_name` char(50) DEFAULT NULL,
  `fontcolor2_name` char(50) DEFAULT NULL,
  `fontcolor3_name` char(50) DEFAULT NULL,
  `span_class1_name` char(50) DEFAULT NULL,
  `span_class2_name` char(50) DEFAULT NULL,
  `span_class3_name` char(50) DEFAULT NULL,
  PRIMARY KEY (`themes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phpbb_themes_name`
--

INSERT INTO `phpbb_themes_name` (`themes_id`, `tr_color1_name`, `tr_color2_name`, `tr_color3_name`, `tr_class1_name`, `tr_class2_name`, `tr_class3_name`, `th_color1_name`, `th_color2_name`, `th_color3_name`, `th_class1_name`, `th_class2_name`, `th_class3_name`, `td_color1_name`, `td_color2_name`, `td_color3_name`, `td_class1_name`, `td_class2_name`, `td_class3_name`, `fontface1_name`, `fontface2_name`, `fontface3_name`, `fontsize1_name`, `fontsize2_name`, `fontsize3_name`, `fontcolor1_name`, `fontcolor2_name`, `fontcolor3_name`, `span_class1_name`, `span_class2_name`, `span_class3_name`) VALUES
(1, 'The lightest row colour', 'The medium row color', 'The darkest row colour', '', '', '', 'Border round the whole page', 'Outer table border', 'Inner table border', 'Silver gradient picture', 'Blue gradient picture', 'Fade-out gradient on index', 'Background for quote boxes', 'All white areas', '', 'Background for topic posts', '2nd background for topic posts', '', 'Main fonts', 'Additional topic title font', 'Form fonts', 'Smallest font size', 'Medium font size', 'Normal font size (post body etc)', 'Quote & copyright text', 'Code text colour', 'Main table header text colour', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_topics`
--

CREATE TABLE IF NOT EXISTS `phpbb_topics` (
  `topic_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` smallint(8) unsigned NOT NULL DEFAULT '0',
  `topic_title` char(60) NOT NULL,
  `topic_poster` mediumint(8) NOT NULL DEFAULT '0',
  `topic_time` int(11) NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_vote` tinyint(1) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_first_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_moved_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_moved_id` (`topic_moved_id`),
  KEY `topic_status` (`topic_status`),
  KEY `topic_type` (`topic_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `phpbb_topics`
--

INSERT INTO `phpbb_topics` (`topic_id`, `forum_id`, `topic_title`, `topic_poster`, `topic_time`, `topic_views`, `topic_replies`, `topic_status`, `topic_vote`, `topic_type`, `topic_first_post_id`, `topic_last_post_id`, `topic_moved_id`) VALUES
(2, 1, 'Ïîåçäêà â Ýòíîñåëî', 2, 1323900198, 5, 0, 0, 1, 0, 2, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_topics_watch`
--

CREATE TABLE IF NOT EXISTS `phpbb_topics_watch` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) NOT NULL DEFAULT '0',
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_status` (`notify_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phpbb_topics_watch`
--

INSERT INTO `phpbb_topics_watch` (`topic_id`, `user_id`, `notify_status`) VALUES
(2, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_users`
--

CREATE TABLE IF NOT EXISTS `phpbb_users` (
  `user_id` mediumint(8) NOT NULL,
  `user_active` tinyint(1) DEFAULT '1',
  `username` varchar(25) NOT NULL,
  `user_password` varchar(32) NOT NULL,
  `user_session_time` int(11) NOT NULL DEFAULT '0',
  `user_session_page` smallint(5) NOT NULL DEFAULT '0',
  `user_lastvisit` int(11) NOT NULL DEFAULT '0',
  `user_regdate` int(11) NOT NULL DEFAULT '0',
  `user_level` tinyint(4) DEFAULT '0',
  `user_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_timezone` decimal(5,2) NOT NULL DEFAULT '0.00',
  `user_style` tinyint(4) DEFAULT NULL,
  `user_lang` varchar(255) DEFAULT NULL,
  `user_dateformat` varchar(14) NOT NULL DEFAULT 'd M Y H:i',
  `user_new_privmsg` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_unread_privmsg` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) NOT NULL DEFAULT '0',
  `user_login_tries` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_last_login_try` int(11) NOT NULL DEFAULT '0',
  `user_emailtime` int(11) DEFAULT NULL,
  `user_viewemail` tinyint(1) DEFAULT NULL,
  `user_attachsig` tinyint(1) DEFAULT NULL,
  `user_allowhtml` tinyint(1) DEFAULT '1',
  `user_allowbbcode` tinyint(1) DEFAULT '1',
  `user_allowsmile` tinyint(1) DEFAULT '1',
  `user_allowavatar` tinyint(1) NOT NULL DEFAULT '1',
  `user_allow_pm` tinyint(1) NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) NOT NULL DEFAULT '1',
  `user_notify` tinyint(1) NOT NULL DEFAULT '1',
  `user_notify_pm` tinyint(1) NOT NULL DEFAULT '0',
  `user_popup_pm` tinyint(1) NOT NULL DEFAULT '0',
  `user_rank` int(11) DEFAULT '0',
  `user_avatar` varchar(100) DEFAULT NULL,
  `user_avatar_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_email` varchar(255) DEFAULT NULL,
  `user_icq` varchar(15) DEFAULT NULL,
  `user_website` varchar(100) DEFAULT NULL,
  `user_from` varchar(100) DEFAULT NULL,
  `user_sig` text,
  `user_sig_bbcode_uid` char(10) DEFAULT NULL,
  `user_aim` varchar(255) DEFAULT NULL,
  `user_yim` varchar(255) DEFAULT NULL,
  `user_msnm` varchar(255) DEFAULT NULL,
  `user_occ` varchar(100) DEFAULT NULL,
  `user_interests` varchar(255) DEFAULT NULL,
  `user_actkey` varchar(32) DEFAULT NULL,
  `user_newpasswd` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_session_time` (`user_session_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phpbb_users`
--

INSERT INTO `phpbb_users` (`user_id`, `user_active`, `username`, `user_password`, `user_session_time`, `user_session_page`, `user_lastvisit`, `user_regdate`, `user_level`, `user_posts`, `user_timezone`, `user_style`, `user_lang`, `user_dateformat`, `user_new_privmsg`, `user_unread_privmsg`, `user_last_privmsg`, `user_login_tries`, `user_last_login_try`, `user_emailtime`, `user_viewemail`, `user_attachsig`, `user_allowhtml`, `user_allowbbcode`, `user_allowsmile`, `user_allowavatar`, `user_allow_pm`, `user_allow_viewonline`, `user_notify`, `user_notify_pm`, `user_popup_pm`, `user_rank`, `user_avatar`, `user_avatar_type`, `user_email`, `user_icq`, `user_website`, `user_from`, `user_sig`, `user_sig_bbcode_uid`, `user_aim`, `user_yim`, `user_msnm`, `user_occ`, `user_interests`, `user_actkey`, `user_newpasswd`) VALUES
(-1, 0, 'Anonymous', '', 0, 0, 0, 1323898050, 0, 0, 0.00, NULL, '', '', 0, 0, 0, 0, 0, NULL, 0, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, NULL, '', 0, '', '', '', '', '', NULL, '', '', '', '', '', '', ''),
(2, 1, 'admin', '6b2928f27f9aa1ffe4ddaab9d17ca589', 1323900386, -1, 1323899004, 1323898050, 1, 2, 0.00, 1, 'russian', 'd M Y h:i a', 0, 0, 1323898106, 0, 0, NULL, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, '', 0, 'maxdmitrief@gmail.com', '', '', '', '', NULL, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_user_group`
--

CREATE TABLE IF NOT EXISTS `phpbb_user_group` (
  `group_id` mediumint(8) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) DEFAULT NULL,
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phpbb_user_group`
--

INSERT INTO `phpbb_user_group` (`group_id`, `user_id`, `user_pending`) VALUES
(1, -1, 0),
(2, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_vote_desc`
--

CREATE TABLE IF NOT EXISTS `phpbb_vote_desc` (
  `vote_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_text` text NOT NULL,
  `vote_start` int(11) NOT NULL DEFAULT '0',
  `vote_length` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `phpbb_vote_desc`
--

INSERT INTO `phpbb_vote_desc` (`vote_id`, `topic_id`, `vote_text`, `vote_start`, `vote_length`) VALUES
(1, 2, 'Âàì íðàâèòñÿ ýòîò ïðîåêò?', 1323900198, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_vote_results`
--

CREATE TABLE IF NOT EXISTS `phpbb_vote_results` (
  `vote_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_option_id` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `vote_option_text` varchar(255) NOT NULL,
  `vote_result` int(11) NOT NULL DEFAULT '0',
  KEY `vote_option_id` (`vote_option_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phpbb_vote_results`
--

INSERT INTO `phpbb_vote_results` (`vote_id`, `vote_option_id`, `vote_option_text`, `vote_result`) VALUES
(1, 1, 'Äà', 1),
(1, 2, 'Íåò', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_vote_voters`
--

CREATE TABLE IF NOT EXISTS `phpbb_vote_voters` (
  `vote_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_user_id` mediumint(8) NOT NULL DEFAULT '0',
  `vote_user_ip` char(8) NOT NULL,
  KEY `vote_id` (`vote_id`),
  KEY `vote_user_id` (`vote_user_id`),
  KEY `vote_user_ip` (`vote_user_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phpbb_vote_voters`
--

INSERT INTO `phpbb_vote_voters` (`vote_id`, `vote_user_id`, `vote_user_ip`) VALUES
(1, 2, '2e764aaf');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_words`
--

CREATE TABLE IF NOT EXISTS `phpbb_words` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word` char(100) NOT NULL,
  `replacement` char(100) NOT NULL,
  PRIMARY KEY (`word_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `phpbb_words`
--


-- --------------------------------------------------------

--
-- Структура таблицы `sp_activities`
--

CREATE TABLE IF NOT EXISTS `sp_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Направления деятельности' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_activities`
--

INSERT INTO `sp_activities` (`id`, `name`) VALUES
(2, '{"1":"\\u041f\\u043e\\u043b\\u0438\\u0442\\u0438\\u043a\\u0430","2":"\\u041f\\u043e\\u043b\\u0456\\u0442\\u0438\\u043a\\u0430","3":"Politics","4":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_anonses`
--

CREATE TABLE IF NOT EXISTS `sp_anonses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COMMENT 'Название',
  `image` varchar(255) DEFAULT NULL COMMENT 'Картинка',
  `thumb` varchar(255) DEFAULT NULL,
  `description` text COMMENT 'Описание',
  `link` varchar(255) DEFAULT NULL COMMENT 'Ссылка',
  `in_slider` tinyint(4) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `basket` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Анонсы' AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `sp_anonses`
--

INSERT INTO `sp_anonses` (`id`, `name`, `image`, `thumb`, `description`, `link`, `in_slider`, `project_id`, `basket`) VALUES
(2, '{"1":"\\"\\u041b\\u0438\\u0433\\u0430 \\u0415\\u0432\\u0440\\u043e\\u043f\\u044b\\"","2":"\\u0410\\u043d\\u043e\\u043d\\u0441","3":""}', 'static/images/entries/anonses/big/aaf56714972d662e0aed2fb39bf092e6.jpg', 'static/images/entries/anonses/small/238261eb986f77d8606221f7b3fcb440.jpg', '{"1":"<p>28 \\u0430\\u043f\\u0440\\u0435\\u043b\\u044f 22:00 \\u041f\\u043e\\u043b\\u0443\\u0444\\u0438\\u043d\\u0430\\u043b \\"\\u041b\\u0438\\u0433\\u0430 \\u0415\\u0432\\u0440\\u043e\\u043f\\u044b\\"<\\/p>","2":"","3":""}', 'http://google.com', 1, 0, 0),
(3, '{"1":"\\u201c\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0441\\u043a\\u0438\\u0435 \\u0432\\u0435\\u0447\\u043e\\u0440\\u043d\\u0438\\u0446\\u044b\\u201d \\u043e\\u0442 \\u0441\\u0442\\u0443\\u0434\\u0438\\u0438 \\u00ab\\u041a\\u0438\\u0432\\u0438\\u00bb","2":"","3":"","4":""}', 'static/images/entries/anonses/big/a74f24fb325eef0172954be691ad0440.jpg', 'static/images/entries/anonses/small/7e7621cf9f71544c1735290357c2c943.jpg', '{"1":"<p><!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal<\\/w:View> <w:Zoom>0<\\/w:Zoom> <w:TrackMoves ><\\/w:TrackMoves> <w:TrackFormatting ><\\/w:TrackFormatting> <w:PunctuationKerning ><\\/w:PunctuationKerning> <w:ValidateAgainstSchemas ><\\/w:ValidateAgainstSchemas> <w:SaveIfXMLInvalid>false<\\/w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false<\\/w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false<\\/w:AlwaysShowPlaceholderText> <w:DoNotPromoteQF ><\\/w:DoNotPromoteQF> <w:LidThemeOther>RU<\\/w:LidThemeOther> <w:LidThemeAsian>X-NONE<\\/w:LidThemeAsian> <w:LidThemeComplexScript>X-NONE<\\/w:LidThemeComplexScript> <w:Compatibility> <w:BreakWrappedTables ><\\/w:BreakWrappedTables> <w:SnapToGridInCell ><\\/w:SnapToGridInCell> <w:WrapTextWithPunct ><\\/w:WrapTextWithPunct> <w:UseAsianBreakRules ><\\/w:UseAsianBreakRules> <w:DontGrowAutofit ><\\/w:DontGrowAutofit> <w:SplitPgBreakAndParaMark ><\\/w:SplitPgBreakAndParaMark> <w:DontVertAlignCellWithSp ><\\/w:DontVertAlignCellWithSp> <w:DontBreakConstrainedForcedTables ><\\/w:DontBreakConstrainedForcedTables> <w:DontVertAlignInTxbx ><\\/w:DontVertAlignInTxbx> <w:Word11KerningPairs ><\\/w:Word11KerningPairs> <w:CachedColBalance ><\\/w:CachedColBalance> <\\/w:Compatibility> <w:BrowserLevel>MicrosoftInternetExplorer4<\\/w:BrowserLevel> <m:mathPr> <m:mathFont m:val=\\"Cambria Math\\" ><\\/m:mathFont> <m:brkBin m:val=\\"before\\" ><\\/m:brkBin> <m:brkBinSub m:val=\\" \\" ><\\/m:brkBinSub> <m:smallFrac m:val=\\"off\\" ><\\/m:smallFrac> <m:dispDef ><\\/m:dispDef> <m:lMargin m:val=\\"0\\" ><\\/m:lMargin> <m:rMargin m:val=\\"0\\" ><\\/m:rMargin> <m:defJc m:val=\\"centerGroup\\" ><\\/m:defJc> <m:wrapIndent m:val=\\"1440\\" ><\\/m:wrapIndent> <m:intLim m:val=\\"subSup\\" ><\\/m:intLim> <m:naryLim m:val=\\"undOvr\\" ><\\/m:naryLim> <\\/m:mathPr><\\/w:WordDocument> <\\/xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\\"false\\" DefUnhideWhenUsed=\\"true\\"   DefSemiHidden=\\"true\\" DefQFormat=\\"false\\" DefPriority=\\"99\\"   LatentStyleCount=\\"267\\"> <w:LsdException Locked=\\"false\\" Priority=\\"0\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Normal\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"heading 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 7\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 8\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 9\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 7\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 8\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 9\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"35\\" QFormat=\\"true\\" Name=\\"caption\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"10\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Title\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"1\\" Name=\\"Default Paragraph Font\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"11\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtitle\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"22\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Strong\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"20\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Emphasis\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"59\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Table Grid\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" UnhideWhenUsed=\\"false\\" Name=\\"Placeholder Text\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"1\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"No Spacing\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" UnhideWhenUsed=\\"false\\" Name=\\"Revision\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"34\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"List Paragraph\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"29\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Quote\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"30\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Quote\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"19\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtle Emphasis\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"21\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Emphasis\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"31\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtle Reference\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"32\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Reference\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"33\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Book Title\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"37\\" Name=\\"Bibliography\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" QFormat=\\"true\\" Name=\\"TOC Heading\\" ><\\/w:LsdException> <\\/w:LatentStyles> <\\/xml><![endif]--><!--[if gte mso 10]> <mce:style><!   \\/* Style Definitions *\\/  table.MsoNormalTable \\t{mso-style-name:\\"\\u041e\\u0431\\u044b\\u0447\\u043d\\u0430\\u044f \\u0442\\u0430\\u0431\\u043b\\u0438\\u0446\\u0430\\"; \\tmso-tstyle-rowband-size:0; \\tmso-tstyle-colband-size:0; \\tmso-style-noshow:yes; \\tmso-style-priority:99; \\tmso-style-qformat:yes; \\tmso-style-parent:\\"\\"; \\tmso-padding-alt:0cm 5.4pt 0cm 5.4pt; \\tmso-para-margin:0cm; \\tmso-para-margin-bottom:.0001pt; \\tmso-pagination:widow-orphan; \\tfont-size:11.0pt; \\tfont-family:\\"Calibri\\",\\"sans-serif\\"; \\tmso-ascii-font-family:Calibri; \\tmso-ascii-theme-font:minor-latin; \\tmso-fareast-font-family:\\"Times New Roman\\"; \\tmso-fareast-theme-font:minor-fareast; \\tmso-hansi-font-family:Calibri; \\tmso-hansi-theme-font:minor-latin; \\tmso-bidi-font-family:\\"Times New Roman\\"; \\tmso-bidi-theme-font:minor-bidi;} --> <!--[endif] --><span style=\\"font-size: 10pt;\\">8 \\u043e\\u043a\\u0442\\u044f\\u0431\\u0440\\u044f, 19:00, \\u043a\\u0430\\u0444\\u0435 &ldquo;\\u0425\\u0443\\u0442\\u043e\\u0440\\u043e\\u043a&rdquo;<\\/span><\\/p>","2":"","3":"","4":""}', '', 1, 0, 0),
(4, '{"1":"\\u0422\\u043e\\u043f\\u043e\\u0432\\u043e\\u0435 \\u0441\\u043e\\u0431\\u044b\\u0442\\u0438\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430","2":"","3":""}', 'static/images/entries/anonses/big/75f035ed9497df2b6fda6cb6824f36ad.jpg', 'static/images/entries/anonses/small/1e58692b9a8de0e4613416a32d970e7f.jpg', '{"1":"<p>\\n<p class=\\"center\\"><span style=\\"font-family: verdana, geneva; font-size: large;\\">\\u0422\\u043e\\u043f\\u043e\\u0432\\u043e\\u0435 \\u0441\\u043e\\u0431\\u044b\\u0442\\u0438\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430:<\\/span><\\/p>\\n<p class=\\"center\\"><span style=\\"font-family: verdana, geneva; font-size: medium;\\">\\u041f\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u043d\\u044b\\u0435 \\u0432\\u044b\\u0435\\u0437\\u0434\\u043d\\u044b\\u0435 \\u0446\\u0435\\u043b\\u0435\\u0432\\u044b\\u0435 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u044b.<\\/span><\\/p>\\n<p class=\\"center\\"><span style=\\"font-family: verdana, geneva; font-size: medium;\\">\\u041f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u044b \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440-\\u043a\\u043b\\u0430\\u0441\\u0441\\u043e\\u0432 \\u043f\\u043e \\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u044b\\u043c \\u0440\\u0435\\u043c\\u0435\\u0441\\u043b\\u0430\\u043c.<\\/span><\\/p>\\n<div class=\\"center\\"><\\/div>\\n<\\/p>","2":"","3":""}', '', 0, 0, 0),
(5, '{"1":"Анонс","2":"","3":""}', 'static/images/entries/anonses/big/b8d369b2b033c3ac39f1d363a3449487.png', 'static/images/entries/anonses/small/9d84388a39cf47785664e5c83f558cc4.png', '{"1":"<p>Описание анонса</p>","2":"","3":""}', 'http://ya.ru', 0, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events`
--

CREATE TABLE IF NOT EXISTS `sp_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `event_id` int(11) NOT NULL DEFAULT '0',
  `name` text COMMENT 'Название',
  `place` int(11) DEFAULT NULL COMMENT 'Место проведения',
  `date_start` date DEFAULT NULL COMMENT 'Дата начала',
  `date_end` date DEFAULT NULL COMMENT 'Дата конца',
  `number_of_sessions` int(11) DEFAULT NULL COMMENT 'Кол-во занятий',
  `schedule` text COMMENT 'Расписание',
  `price` text COMMENT 'Стоимость',
  `project_id` int(11) DEFAULT NULL COMMENT 'В рамках какого проекта',
  `poster` text COMMENT 'Афиша',
  `description` text COMMENT 'Описание',
  `type` int(11) DEFAULT NULL COMMENT 'Категория события',
  `in_process` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `logo` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `tags` text,
  `report` text,
  `basket` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='События' AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `sp_events`
--

INSERT INTO `sp_events` (`id`, `user_id`, `event_id`, `name`, `place`, `date_start`, `date_end`, `number_of_sessions`, `schedule`, `price`, `project_id`, `poster`, `description`, `type`, `in_process`, `active`, `logo`, `thumb`, `tags`, `report`, `basket`) VALUES
(1, 22, 2, '{"1":"Курс HTML","2":"HTML курс","3":""}', 1, '2011-09-09', '2011-09-17', 5, '{"1":"<p>Свободный</p>","2":"","3":""}', '{"1":"<p>200 - 500</p>","2":"","3":""}', 0, '{"1":"<p>Афиша события</p>","2":"","3":""}', '{"1":"<p>Описание события</p>","2":"","3":""}', 7, 1, 1, 'static/images/entries/event/big/d124a3a4b6a7ee7833bd78174599cc3e.jpg', 'static/images/entries/event/small/895a391497eea190b91fcb750fd274b7.jpg', '{"1":"html, курс","2":"","3":""}', '{"1":"","2":"","3":""}', 0),
(2, 22, 0, '{"1":"Курс Joomla!","2":"","3":""}', 1, '2011-10-01', '2011-10-25', 0, '{"1":"","2":"","3":""}', '{"1":"","2":"","3":""}', 0, '{"1":"","2":"","3":""}', '{"1":"","2":"","3":""}', 7, 0, 1, 'static/images/entries/event/big/a296d08eb6d3713a532f932b3143f0f7.jpg', 'static/images/entries/event/small/af549808006f7eb01e2b4149c57e8448.jpg', '{"1":"joomla, курс","2":"","3":""}', '{"1":"","2":"","3":""}', 0),
(4, 22, 0, '{"1":"Drupal Мастер-класс","2":"","3":""}', 2, '2011-11-17', '2011-11-30', 3, '{"1":"<p>c 8:00 до 17:00</p>","2":"","3":""}', '{"1":"<p>400 грн.</p>","2":"","3":""}', 2, '{"1":"<p>Афиша</p>","2":"","3":""}', '{"1":"<p>Описание события</p>","2":"","3":""}', 5, 0, 0, 'static/images/entries/event/big/384c6a657bc9bd416fa18f77efa2eea5.jpg', 'static/images/entries/event/small/e5246c1616eb265d441596367d109305.jpg', '{"1":"drupal","2":"","3":""}', NULL, 0),
(5, 22, 0, '{"1":"Мастер-классы по национальным ремеслам и кухне","2":"","3":""}', 6, '0000-00-00', '0000-00-00', 0, '{"1":"","2":"","3":""}', '{"1":"","2":"","3":""}', 13, '{"1":"","2":"","3":""}', '{"1":"<p><!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal</w:View> <w:Zoom>0</w:Zoom> <w:PunctuationKerning /> <w:ValidateAgainstSchemas /> <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false</w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText> <w:Compatibility> <w:BreakWrappedTables /> <w:SnapToGridInCell /> <w:WrapTextWithPunct /> <w:UseAsianBreakRules /> <w:DontGrowAutofit /> </w:Compatibility> <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel> </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\\u0022false\\u0022 LatentStyleCount=\\u0022156\\u0022> </w:LatentStyles> </xml><![endif]--><!--[if gte mso 10]>\\u000A<style>\\u000A /* Style Definitions */\\u000A table.MsoNormalTable\\u000A\\u0009{mso-style-name:\\u0022Обычная таблица\\u0022;\\u000A\\u0009mso-tstyle-rowband-size:0;\\u000A\\u0009mso-tstyle-colband-size:0;\\u000A\\u0009mso-style-noshow:yes;\\u000A\\u0009mso-style-parent:\\u0022\\u0022;\\u000A\\u0009mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\\u000A\\u0009mso-para-margin:0cm;\\u000A\\u0009mso-para-margin-bottom:.0001pt;\\u000A\\u0009mso-pagination:widow-orphan;\\u000A\\u0009font-size:10.0pt;\\u000A\\u0009font-family:\\u0022Times New Roman\\u0022;\\u000A\\u0009mso-ansi-language:#0400;\\u000A\\u0009mso-fareast-language:#0400;\\u000A\\u0009mso-bidi-language:#0400;}\\u000A</style>\\u000A<![endif]--><span style=\\u0022font-size: 12pt; font-family: &quot;Times New Roman&quot;;\\u0022>Cовместное проведение культурных национальных программ</span></p>","2":"","3":""}', 5, 0, 1, 'static/images/entries/event/big/caf3a3151a662a9c71a0d588f0d1f074.jpg', 'static/images/entries/event/small/060cd866c4a1c7a139cf81d4df3991ef.jpg', '{"1":"","2":"","3":""}', '{"1":"","2":"","3":""}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events_categories`
--

CREATE TABLE IF NOT EXISTS `sp_events_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Категории событий' AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `sp_events_categories`
--

INSERT INTO `sp_events_categories` (`id`, `name`) VALUES
(5, '{"1":"\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440-\\u043a\\u043b\\u0430\\u0441\\u0441","2":"\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u043a\\u043b\\u0430\\u0441","3":""}'),
(6, '{"1":"\\u0422\\u0440\\u0435\\u043d\\u0438\\u043d\\u0433","2":"\\u0422\\u0440\\u0435\\u043d\\u0456\\u043d\\u0433","3":""}'),
(7, '{"1":"\\u041a\\u0443\\u0440\\u0441","2":"\\u041a\\u0443\\u0440\\u0441","3":"","4":""}'),
(8, '{"1":"\\u041b\\u0435\\u043a\\u0446\\u0438\\u044f","2":"","3":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events_curators`
--

CREATE TABLE IF NOT EXISTS `sp_events_curators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) DEFAULT NULL,
  `organizations_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Связь события и людей проводящих его' AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `sp_events_curators`
--

INSERT INTO `sp_events_curators` (`id`, `entry_id`, `organizations_id`) VALUES
(1, 1, 2),
(3, 2, 2),
(4, 4, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events_methods`
--

CREATE TABLE IF NOT EXISTS `sp_events_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) DEFAULT NULL,
  `methods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Связь события и методик' AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `sp_events_methods`
--

INSERT INTO `sp_events_methods` (`id`, `entry_id`, `methods_id`) VALUES
(1, 1, 2),
(3, 4, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events_organizes`
--

CREATE TABLE IF NOT EXISTS `sp_events_organizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) DEFAULT NULL,
  `organizations_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Связь события и организаторов события' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_events_organizes`
--

INSERT INTO `sp_events_organizes` (`id`, `entry_id`, `organizations_id`) VALUES
(1, 1, 2),
(2, 4, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_goods`
--

CREATE TABLE IF NOT EXISTS `sp_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `supplier` int(11) DEFAULT NULL COMMENT 'Поставщик товара ',
  `price` float DEFAULT NULL COMMENT 'Цена товара ',
  `type` int(11) DEFAULT NULL COMMENT 'Вид товара',
  `project_result` int(11) DEFAULT NULL COMMENT 'Результат проекта',
  `foto` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `basket` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Товары' AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `sp_goods`
--

INSERT INTO `sp_goods` (`id`, `name`, `supplier`, `price`, `type`, `project_result`, `foto`, `thumb`, `basket`) VALUES
(5, '{"1":"\\u041d\\u043e\\u0441\\u043a\\u0438 \\u0440\\u0443\\u0447\\u043d\\u043e\\u0439 \\u0432\\u044f\\u0437\\u043a\\u0438","2":"\\u0420\\u043e\\u0431\\u043e\\u0442","3":""}', 0, 35, 6, 2, 'static/images/entries/goods/big/2cbc66949ff8d047930611f51f2c2d03.jpg', 'static/images/entries/goods/small/641be434a1ac1da34864bd14facec743.jpg', 0),
(6, '{"1":"\\u0421\\u0430\\u043b\\u0444\\u0435\\u0442\\u043a\\u0430 (\\u0440\\u0443\\u0447\\u043d\\u0430\\u044f \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430)","2":"","3":""}', 10, 50, 7, 2, 'static/images/entries/goods/big/7c1aefedb8ca017536ddfa499829c940.jpg', 'static/images/entries/goods/small/1514c0022d31243313bf6470f1e637cb.jpg', 0),
(7, '{"1":"\\u0414\\u043e\\u0441\\u0442\\u043e\\u0447\\u043a\\u0430","2":"","3":""}', 10, 40, 8, 2, 'static/images/entries/goods/big/d4fba029397897a79d76de7ee4213074.jpg', 'static/images/entries/goods/small/cc4ca95e586bb3112919b3083dbf4102.jpg', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_goods_categories`
--

CREATE TABLE IF NOT EXISTS `sp_goods_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Категории товаров' AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `sp_goods_categories`
--

INSERT INTO `sp_goods_categories` (`id`, `name`) VALUES
(2, '{"4":"","3":"Shoose","2":"\\u041e\\u0431\\u0443\\u0432\\u044c","1":"\\u041e\\u0431\\u0443\\u0432\\u044c"}'),
(3, '{"1":"\\u0421\\u0442\\u0440\\u043e\\u0439\\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u044b","2":"","3":""}'),
(6, '{"1":"Одежда","2":"","3":""}'),
(7, '{"1":"Декор","2":"","3":""}'),
(8, '{"1":"Посуда","2":"","3":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_grants`
--

CREATE TABLE IF NOT EXISTS `sp_grants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COMMENT 'Название',
  `description` text COMMENT 'Описание',
  `deadline` date DEFAULT NULL COMMENT 'Дэдлайн',
  `scope` int(11) DEFAULT NULL COMMENT 'Сфера деятельности',
  `grantor` int(11) DEFAULT NULL COMMENT 'Грантодатель',
  `links` varchar(255) DEFAULT NULL COMMENT 'Ссылка на сайт',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Гранты' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_grants`
--

INSERT INTO `sp_grants` (`id`, `name`, `description`, `deadline`, `scope`, `grantor`, `links`) VALUES
(2, '{"1":"\\u0413\\u0440\\u0430\\u043d\\u0442","2":"\\u0413\\u0440\\u0430\\u043d\\u0442","3":"","4":""}', '{"1":"<p>\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u0433\\u0440\\u0430\\u043d\\u0442\\u0430<\\/p>","2":"<p>\\u041e\\u043f\\u0438\\u0441 \\u0433\\u0440\\u0430\\u043d\\u0442\\u0430<\\/p>","3":"","4":""}', '2011-09-20', 0, 0, 'http://goole.com');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_groups`
--

CREATE TABLE IF NOT EXISTS `sp_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Группы пользователей' AUTO_INCREMENT=24 ;

--
-- Дамп данных таблицы `sp_groups`
--

INSERT INTO `sp_groups` (`id`, `name`) VALUES
(1, '{"4":"","3":"Administrators","2":"\\u0410\\u0434\\u043c\\u0456\\u043d\\u0456\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440\\u0438","1":"\\u0410\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440"}'),
(6, '{"4":"","3":"Publicators","2":"\\u041f\\u0443\\u0431\\u043b\\u0456\\u043a\\u0430\\u0442\\u043e\\u0440\\u0438","1":"\\u041f\\u0443\\u0431\\u043b\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440"}'),
(7, '{"1":"\\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a","2":"","3":"","4":""}'),
(9, '{"1":"\\u041f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0447\\u0438\\u043a","2":"","3":"","4":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_ideas`
--

CREATE TABLE IF NOT EXISTS `sp_ideas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COMMENT 'Название',
  `category_ids` varchar(255) DEFAULT NULL,
  `description` text COMMENT 'Описание',
  `author` text COMMENT 'Автор',
  `scope` int(11) DEFAULT NULL COMMENT 'Сфера деятельности',
  `tags` text COMMENT 'Ключевые слова ',
  `basket` tinyint(4) NOT NULL DEFAULT '0',
  `visible` tinyint(4) NOT NULL DEFAULT '0',
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Идеи' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_ideas`
--

INSERT INTO `sp_ideas` (`id`, `name`, `category_ids`, `description`, `author`, `scope`, `tags`, `basket`, `visible`, `post_date`) VALUES
(2, '{"1":"Создание этносела","2":"Створення етносела","3":""}', '["1","2"]', '{"1":"<p>Описание идеи</p>","2":"<p>Опис ідеї</p>","3":""}', '{"1":"Макс","2":"","3":""}', 0, '{"1":"этносело","2":"етносело","3":""}', 0, 1, '2011-11-22 08:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_ideas_categories`
--

CREATE TABLE IF NOT EXISTS `sp_ideas_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_ideas_categories`
--

INSERT INTO `sp_ideas_categories` (`id`, `name`) VALUES
(1, '{"1":"Программирование","2":"","3":""}'),
(2, '{"1":"Социальные","2":"","3":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_languages`
--

CREATE TABLE IF NOT EXISTS `sp_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `sp_languages`
--

INSERT INTO `sp_languages` (`id`, `name`, `flag`) VALUES
(1, 'russian', 'russian.png'),
(2, 'ukrainian', 'ukrainian.png'),
(3, 'english', 'english.png');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_methods`
--

CREATE TABLE IF NOT EXISTS `sp_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COMMENT 'Название',
  `author` text COMMENT 'Автор',
  `description` text COMMENT 'Описание',
  `links` text COMMENT 'Cсылки на doc-файлы',
  `scope` int(11) DEFAULT NULL COMMENT 'Сфера деятельности',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Методики' AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `sp_methods`
--

INSERT INTO `sp_methods` (`id`, `name`, `author`, `description`, `links`, `scope`) VALUES
(3, '{"1":"\\u0410\\u0443\\u0434\\u0438\\u043e \\u043e\\u0431\\u0443\\u0447\\u0435\\u043d\\u0438\\u0435","2":"","3":""}', '{"1":"\\u0418\\u0432\\u0430\\u043d\\u043e\\u0432 \\u0418.\\u0418.","2":"","3":""}', '{"1":"<p>\\u0414\\u0430\\u0432\\u043d\\u043e \\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u0439 \\u043c\\u0435\\u0442\\u043e\\u0434 \\"\\u0410\\u0443\\u0434\\u0438\\u043e\\u043e\\u0431\\u0443\\u0447\\u0435\\u043d\\u0438\\u044f\\" \\u0442\\u0435\\u043f\\u0435\\u0440\\u044c \\u0438 \\u0432 \\u043c\\u0435\\u0434\\u0438\\u0446\\u0438\\u043d\\u0435.<\\/p>","2":"","3":""}', 'http://google.com', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_news`
--

CREATE TABLE IF NOT EXISTS `sp_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COMMENT 'Название',
  `short_description` text COMMENT 'Короткое описание',
  `description` text COMMENT 'Описание',
  `date` date DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `basket` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Новости' AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `sp_news`
--

INSERT INTO `sp_news` (`id`, `name`, `short_description`, `description`, `date`, `project_id`, `basket`) VALUES
(2, '{"1":"\\u041f\\u043e\\u0435\\u0437\\u0434\\u043a\\u0430 \\u0432 \\u042d\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b\\u043e","2":"\\u0425\\u043e\\u0440\\u043e\\u0448\\u0430 \\u043d\\u043e\\u0432\\u0438\\u043d\\u0430","3":"","4":""}', '{"1":"16 \\u043e\\u043a\\u0442\\u044f\\u0431\\u0440\\u044f \\u0441\\u043e\\u0441\\u0442\\u043e\\u0438\\u0442\\u0441\\u044f \\u043f\\u043e\\u0435\\u0437\\u0434\\u043a\\u0430 \\u0432 \\u042d\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b\\u043e. \\u0421\\u043e\\u0441\\u0442\\u043e\\u0438\\u0442\\u0441\\u044f \\u043f\\u0440\\u0435\\u0437\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u044f \\u043d\\u043e\\u0432\\u043e\\u0439 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u044b \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430 \\u0438 \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u043e\\u0433\\u043e \\u0441\\u0430\\u0439\\u0442\\u0430.","2":"\\u0441\\u0430\\u0439\\u0442 \\u043d\\u0435\\u0437\\u0430\\u0431\\u0430\\u0440\\u043e\\u043c \\u0431\\u0443\\u0434\\u0435 \\u0433\\u043e\\u0442\\u043e\\u0432\\u0438\\u0439","3":"","4":""}', '{"1":"<p><!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal<\\/w:View> <w:Zoom>0<\\/w:Zoom> <w:TrackMoves \\/> <w:TrackFormatting \\/> <w:PunctuationKerning \\/> <w:ValidateAgainstSchemas \\/> <w:SaveIfXMLInvalid>false<\\/w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false<\\/w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false<\\/w:AlwaysShowPlaceholderText> <w:DoNotPromoteQF \\/> <w:LidThemeOther>RU<\\/w:LidThemeOther> <w:LidThemeAsian>X-NONE<\\/w:LidThemeAsian> <w:LidThemeComplexScript>X-NONE<\\/w:LidThemeComplexScript> <w:Compatibility> <w:BreakWrappedTables \\/> <w:SnapToGridInCell \\/> <w:WrapTextWithPunct \\/> <w:UseAsianBreakRules \\/> <w:DontGrowAutofit \\/> <w:SplitPgBreakAndParaMark \\/> <w:DontVertAlignCellWithSp \\/> <w:DontBreakConstrainedForcedTables \\/> <w:DontVertAlignInTxbx \\/> <w:Word11KerningPairs \\/> <w:CachedColBalance \\/> <\\/w:Compatibility> <w:BrowserLevel>MicrosoftInternetExplorer4<\\/w:BrowserLevel> <m:mathPr> <m:mathFont m:val=\\"Cambria Math\\" \\/> <m:brkBin m:val=\\"before\\" \\/> <m:brkBinSub m:val=\\"&#45;-\\" \\/> <m:smallFrac m:val=\\"off\\" \\/> <m:dispDef \\/> <m:lMargin m:val=\\"0\\" \\/> <m:rMargin m:val=\\"0\\" \\/> <m:defJc m:val=\\"centerGroup\\" \\/> <m:wrapIndent m:val=\\"1440\\" \\/> <m:intLim m:val=\\"subSup\\" \\/> <m:naryLim m:val=\\"undOvr\\" \\/> <\\/m:mathPr><\\/w:WordDocument> <\\/xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\\"false\\" DefUnhideWhenUsed=\\"true\\"   DefSemiHidden=\\"true\\" DefQFormat=\\"false\\" DefPriority=\\"99\\"   LatentStyleCount=\\"267\\"> <w:LsdException Locked=\\"false\\" Priority=\\"0\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Normal\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"heading 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 7\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 8\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 9\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 7\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 8\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 9\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"35\\" QFormat=\\"true\\" Name=\\"caption\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"10\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Title\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"1\\" Name=\\"Default Paragraph Font\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"11\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtitle\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"22\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Strong\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"20\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Emphasis\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"59\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Table Grid\\" \\/> <w:LsdException Locked=\\"false\\" UnhideWhenUsed=\\"false\\" Name=\\"Placeholder Text\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"1\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"No Spacing\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" UnhideWhenUsed=\\"false\\" Name=\\"Revision\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"34\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"List Paragraph\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"29\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Quote\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"30\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Quote\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"19\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtle Emphasis\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"21\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Emphasis\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"31\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtle Reference\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"32\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Reference\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"33\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Book Title\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"37\\" Name=\\"Bibliography\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" QFormat=\\"true\\" Name=\\"TOC Heading\\" \\/> <\\/w:LatentStyles> <\\/xml><![endif]--><!--[if gte mso 10]>\\n<style>\\n \\/* Style Definitions *\\/\\n table.MsoNormalTable\\n\\t{mso-style-name:\\"\\u041e\\u0431\\u044b\\u0447\\u043d\\u0430\\u044f \\u0442\\u0430\\u0431\\u043b\\u0438\\u0446\\u0430\\";\\n\\tmso-tstyle-rowband-size:0;\\n\\tmso-tstyle-colband-size:0;\\n\\tmso-style-noshow:yes;\\n\\tmso-style-priority:99;\\n\\tmso-style-qformat:yes;\\n\\tmso-style-parent:\\"\\";\\n\\tmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\\n\\tmso-para-margin:0cm;\\n\\tmso-para-margin-bottom:.0001pt;\\n\\tmso-pagination:widow-orphan;\\n\\tfont-size:11.0pt;\\n\\tfont-family:\\"Calibri\\",\\"sans-serif\\";\\n\\tmso-ascii-font-family:Calibri;\\n\\tmso-ascii-theme-font:minor-latin;\\n\\tmso-fareast-font-family:\\"Times New Roman\\";\\n\\tmso-fareast-theme-font:minor-fareast;\\n\\tmso-hansi-font-family:Calibri;\\n\\tmso-hansi-theme-font:minor-latin;\\n\\tmso-bidi-font-family:\\"Times New Roman\\";\\n\\tmso-bidi-theme-font:minor-bidi;}\\n<\\/style>\\n<![endif]--><\\/p>\\n<p class=\\"MsoNormal\\">16 \\u043e\\u043a\\u0442\\u044f\\u0431\\u0440\\u044f \\u0441\\u043e\\u0441\\u0442\\u043e\\u0438\\u0442\\u0441\\u044f \\u043f\\u043e\\u0435\\u0437\\u0434\\u043a\\u0430 \\u0432 \\u042d\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b\\u043e. \\u0421\\u043e\\u0441\\u0442\\u043e\\u0438\\u0442\\u0441\\u044f \\u043f\\u0440\\u0435\\u0437\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u044f \\u043d\\u043e\\u0432\\u043e\\u0439 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u044b \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430 \\u0438 \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u043e\\u0433\\u043e \\u0441\\u0430\\u0439\\u0442\\u0430.<\\/p>","2":"","3":"","4":""}', '2011-09-20', 0, 0),
(3, '{"1":"\\u041f\\u0440\\u0438\\u0433\\u043b\\u0430\\u0448\\u0430\\u0435\\u043c \\u043d\\u0430 \\u0432\\u0435\\u0447\\u0435\\u0440\\u0438\\u043d\\u043a\\u0443!","2":"","3":"","4":""}', '{"1":"\\u0421\\u0442\\u0443\\u0434\\u0438\\u044f \\u201c\\u041a\\u0438\\u0432\\u0438\\u201d \\u0438 \\u043a\\u0430\\u0444\\u0435 \\u00ab\\u0425\\u0443\\u0442\\u043e\\u0440\\u043e\\u043a\\u00bb \\u043f\\u0440\\u0438\\u0433\\u043b\\u0430\\u0448\\u0430\\u044e\\u0442 \\u0432\\u0441\\u0435\\u0445 \\u043b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0443\\u043a\\u0440\\u0430\\u0438\\u043d\\u0441\\u043a\\u0438\\u0445 \\u0433\\u0443\\u043b\\u044f\\u043d\\u0438\\u0439 \\u043e\\u0442\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0432\\u043c\\u0435\\u0441\\u0442\\u0435 \\u043f\\u0435\\u0440\\u0432\\u0443\\u044e \\u0433\\u043e\\u0434\\u043e\\u0432\\u0449\\u0438\\u043d\\u0443 \\u043a\\u0430\\u0444\\u0435 \\u201c\\u0425\\u0443\\u0442\\u043e\\u0440\\u043e\\u043a\\u201d. ","2":"","3":"","4":""}', '{"1":"<p><!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal<\\/w:View> <w:Zoom>0<\\/w:Zoom> <w:TrackMoves \\/> <w:TrackFormatting \\/> <w:PunctuationKerning \\/> <w:ValidateAgainstSchemas \\/> <w:SaveIfXMLInvalid>false<\\/w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false<\\/w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false<\\/w:AlwaysShowPlaceholderText> <w:DoNotPromoteQF \\/> <w:LidThemeOther>RU<\\/w:LidThemeOther> <w:LidThemeAsian>X-NONE<\\/w:LidThemeAsian> <w:LidThemeComplexScript>X-NONE<\\/w:LidThemeComplexScript> <w:Compatibility> <w:BreakWrappedTables \\/> <w:SnapToGridInCell \\/> <w:WrapTextWithPunct \\/> <w:UseAsianBreakRules \\/> <w:DontGrowAutofit \\/> <w:SplitPgBreakAndParaMark \\/> <w:DontVertAlignCellWithSp \\/> <w:DontBreakConstrainedForcedTables \\/> <w:DontVertAlignInTxbx \\/> <w:Word11KerningPairs \\/> <w:CachedColBalance \\/> <\\/w:Compatibility> <w:BrowserLevel>MicrosoftInternetExplorer4<\\/w:BrowserLevel> <m:mathPr> <m:mathFont m:val=\\"Cambria Math\\" \\/> <m:brkBin m:val=\\"before\\" \\/> <m:brkBinSub m:val=\\"&#45;-\\" \\/> <m:smallFrac m:val=\\"off\\" \\/> <m:dispDef \\/> <m:lMargin m:val=\\"0\\" \\/> <m:rMargin m:val=\\"0\\" \\/> <m:defJc m:val=\\"centerGroup\\" \\/> <m:wrapIndent m:val=\\"1440\\" \\/> <m:intLim m:val=\\"subSup\\" \\/> <m:naryLim m:val=\\"undOvr\\" \\/> <\\/m:mathPr><\\/w:WordDocument> <\\/xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\\"false\\" DefUnhideWhenUsed=\\"true\\"   DefSemiHidden=\\"true\\" DefQFormat=\\"false\\" DefPriority=\\"99\\"   LatentStyleCount=\\"267\\"> <w:LsdException Locked=\\"false\\" Priority=\\"0\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Normal\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"heading 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 7\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 8\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 9\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 7\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 8\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 9\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"35\\" QFormat=\\"true\\" Name=\\"caption\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"10\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Title\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"1\\" Name=\\"Default Paragraph Font\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"11\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtitle\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"22\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Strong\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"20\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Emphasis\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"59\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Table Grid\\" \\/> <w:LsdException Locked=\\"false\\" UnhideWhenUsed=\\"false\\" Name=\\"Placeholder Text\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"1\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"No Spacing\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" UnhideWhenUsed=\\"false\\" Name=\\"Revision\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"34\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"List Paragraph\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"29\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Quote\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"30\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Quote\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"19\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtle Emphasis\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"21\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Emphasis\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"31\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtle Reference\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"32\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Reference\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"33\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Book Title\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"37\\" Name=\\"Bibliography\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" QFormat=\\"true\\" Name=\\"TOC Heading\\" \\/> <\\/w:LatentStyles> <\\/xml><![endif]--><!--[if gte mso 10]>\\n<style>\\n \\/* Style Definitions *\\/\\n table.MsoNormalTable\\n\\t{mso-style-name:\\"\\u041e\\u0431\\u044b\\u0447\\u043d\\u0430\\u044f \\u0442\\u0430\\u0431\\u043b\\u0438\\u0446\\u0430\\";\\n\\tmso-tstyle-rowband-size:0;\\n\\tmso-tstyle-colband-size:0;\\n\\tmso-style-noshow:yes;\\n\\tmso-style-priority:99;\\n\\tmso-style-qformat:yes;\\n\\tmso-style-parent:\\"\\";\\n\\tmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\\n\\tmso-para-margin:0cm;\\n\\tmso-para-margin-bottom:.0001pt;\\n\\tmso-pagination:widow-orphan;\\n\\tfont-size:11.0pt;\\n\\tfont-family:\\"Calibri\\",\\"sans-serif\\";\\n\\tmso-ascii-font-family:Calibri;\\n\\tmso-ascii-theme-font:minor-latin;\\n\\tmso-fareast-font-family:\\"Times New Roman\\";\\n\\tmso-fareast-theme-font:minor-fareast;\\n\\tmso-hansi-font-family:Calibri;\\n\\tmso-hansi-theme-font:minor-latin;\\n\\tmso-bidi-font-family:\\"Times New Roman\\";\\n\\tmso-bidi-theme-font:minor-bidi;}\\n<\\/style>\\n<![endif]--><\\/p>\\n<p class=\\"MsoNormal\\" style=\\"margin: 6pt 0cm;\\"><span style=\\"font-size: 10pt; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;;\\">\\u0421\\u0442\\u0443\\u0434\\u0438\\u044f &ldquo;\\u041a\\u0438\\u0432\\u0438&rdquo; \\u0438 \\u043a\\u0430\\u0444\\u0435 &laquo;\\u0425\\u0443\\u0442\\u043e\\u0440\\u043e\\u043a&raquo; \\u043f\\u0440\\u0438\\u0433\\u043b\\u0430\\u0448\\u0430\\u044e\\u0442 \\u0432\\u0441\\u0435\\u0445 \\u043b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0443\\u043a\\u0440\\u0430\\u0438\\u043d\\u0441\\u043a\\u0438\\u0445 \\u0433\\u0443\\u043b\\u044f\\u043d\\u0438\\u0439 \\u043e\\u0442\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0432\\u043c\\u0435\\u0441\\u0442\\u0435 \\u043f\\u0435\\u0440\\u0432\\u0443\\u044e \\u0433\\u043e\\u0434\\u043e\\u0432\\u0449\\u0438\\u043d\\u0443 \\u043a\\u0430\\u0444\\u0435 &ldquo;\\u0425\\u0443\\u0442\\u043e\\u0440\\u043e\\u043a&rdquo;.<span>&nbsp; <\\/span><\\/span><\\/p>","2":"","3":"","4":""}', '2011-10-04', 0, 0);
INSERT INTO `sp_news` (`id`, `name`, `short_description`, `description`, `date`, `project_id`, `basket`) VALUES
(4, '{"1":"\\u0428\\u043a\\u043e\\u043b\\u0430 \\u0413\\u0440\\u0430\\u043d\\u0442\\u043e\\u043f\\u0438\\u0441\\u0446\\u0435\\u0432","2":"","3":"","4":""}', '{"1":"2 \\u043e\\u043a\\u0442\\u044f\\u0431\\u0440\\u044f \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0428\\u043a\\u043e\\u043b\\u0430 \\u0413\\u0440\\u0430\\u043d\\u0442\\u043e\\u043f\\u0438\\u0441\\u0446\\u0435\\u0432. \\u0412\\u0441\\u0442\\u0440\\u0435\\u0447\\u0430 \\u0441\\u043e\\u0441\\u0442\\u043e\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0414\\u043e\\u043c\\u0435 \\u041c\\u0430\\u043a\\u0441\\u0430 \\u0413\\u0440\\u0430\\u043d\\u0442\\u0430 \\u0432 12:00.","2":"","3":"","4":""}', '{"1":"<p><!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal<\\/w:View> <w:Zoom>0<\\/w:Zoom> <w:TrackMoves ><\\/w:TrackMoves> <w:TrackFormatting ><\\/w:TrackFormatting> <w:PunctuationKerning ><\\/w:PunctuationKerning> <w:ValidateAgainstSchemas ><\\/w:ValidateAgainstSchemas> <w:SaveIfXMLInvalid>false<\\/w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false<\\/w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false<\\/w:AlwaysShowPlaceholderText> <w:DoNotPromoteQF ><\\/w:DoNotPromoteQF> <w:LidThemeOther>RU<\\/w:LidThemeOther> <w:LidThemeAsian>X-NONE<\\/w:LidThemeAsian> <w:LidThemeComplexScript>X-NONE<\\/w:LidThemeComplexScript> <w:Compatibility> <w:BreakWrappedTables ><\\/w:BreakWrappedTables> <w:SnapToGridInCell ><\\/w:SnapToGridInCell> <w:WrapTextWithPunct ><\\/w:WrapTextWithPunct> <w:UseAsianBreakRules ><\\/w:UseAsianBreakRules> <w:DontGrowAutofit ><\\/w:DontGrowAutofit> <w:SplitPgBreakAndParaMark ><\\/w:SplitPgBreakAndParaMark> <w:DontVertAlignCellWithSp ><\\/w:DontVertAlignCellWithSp> <w:DontBreakConstrainedForcedTables ><\\/w:DontBreakConstrainedForcedTables> <w:DontVertAlignInTxbx ><\\/w:DontVertAlignInTxbx> <w:Word11KerningPairs ><\\/w:Word11KerningPairs> <w:CachedColBalance ><\\/w:CachedColBalance> <\\/w:Compatibility> <w:BrowserLevel>MicrosoftInternetExplorer4<\\/w:BrowserLevel> <m:mathPr> <m:mathFont m:val=\\"Cambria Math\\" ><\\/m:mathFont> <m:brkBin m:val=\\"before\\" ><\\/m:brkBin> <m:brkBinSub m:val=\\" \\" ><\\/m:brkBinSub> <m:smallFrac m:val=\\"off\\" ><\\/m:smallFrac> <m:dispDef ><\\/m:dispDef> <m:lMargin m:val=\\"0\\" ><\\/m:lMargin> <m:rMargin m:val=\\"0\\" ><\\/m:rMargin> <m:defJc m:val=\\"centerGroup\\" ><\\/m:defJc> <m:wrapIndent m:val=\\"1440\\" ><\\/m:wrapIndent> <m:intLim m:val=\\"subSup\\" ><\\/m:intLim> <m:naryLim m:val=\\"undOvr\\" ><\\/m:naryLim> <\\/m:mathPr><\\/w:WordDocument> <\\/xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\\"false\\" DefUnhideWhenUsed=\\"true\\"   DefSemiHidden=\\"true\\" DefQFormat=\\"false\\" DefPriority=\\"99\\"   LatentStyleCount=\\"267\\"> <w:LsdException Locked=\\"false\\" Priority=\\"0\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Normal\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"heading 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 7\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 8\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 9\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 7\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 8\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 9\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"35\\" QFormat=\\"true\\" Name=\\"caption\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"10\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Title\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"1\\" Name=\\"Default Paragraph Font\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"11\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtitle\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"22\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Strong\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"20\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Emphasis\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"59\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Table Grid\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" UnhideWhenUsed=\\"false\\" Name=\\"Placeholder Text\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"1\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"No Spacing\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" UnhideWhenUsed=\\"false\\" Name=\\"Revision\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"34\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"List Paragraph\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"29\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Quote\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"30\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Quote\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"19\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtle Emphasis\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"21\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Emphasis\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"31\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtle Reference\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"32\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Reference\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"33\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Book Title\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"37\\" Name=\\"Bibliography\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" QFormat=\\"true\\" Name=\\"TOC Heading\\" ><\\/w:LsdException> <\\/w:LatentStyles> <\\/xml><![endif]--><!--[if gte mso 10]> <mce:style><!   \\/* Style Definitions *\\/  table.MsoNormalTable \\t{mso-style-name:\\"\\u041e\\u0431\\u044b\\u0447\\u043d\\u0430\\u044f \\u0442\\u0430\\u0431\\u043b\\u0438\\u0446\\u0430\\"; \\tmso-tstyle-rowband-size:0; \\tmso-tstyle-colband-size:0; \\tmso-style-noshow:yes; \\tmso-style-priority:99; \\tmso-style-qformat:yes; \\tmso-style-parent:\\"\\"; \\tmso-padding-alt:0cm 5.4pt 0cm 5.4pt; \\tmso-para-margin:0cm; \\tmso-para-margin-bottom:.0001pt; \\tmso-pagination:widow-orphan; \\tfont-size:11.0pt; \\tfont-family:\\"Calibri\\",\\"sans-serif\\"; \\tmso-ascii-font-family:Calibri; \\tmso-ascii-theme-font:minor-latin; \\tmso-fareast-font-family:\\"Times New Roman\\"; \\tmso-fareast-theme-font:minor-fareast; \\tmso-hansi-font-family:Calibri; \\tmso-hansi-theme-font:minor-latin; \\tmso-bidi-font-family:\\"Times New Roman\\"; \\tmso-bidi-theme-font:minor-bidi;} --> <!--[endif] --><\\/p>\\n<p class=\\"MsoNormal\\" style=\\"margin: 6pt 0cm;\\"><span style=\\"font-size: 10pt;\\">2 \\u043e\\u043a\\u0442\\u044f\\u0431\\u0440\\u044f \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0428\\u043a\\u043e\\u043b\\u0430 \\u0413\\u0440\\u0430\\u043d\\u0442\\u043e\\u043f\\u0438\\u0441\\u0446\\u0435\\u0432. \\u0412\\u0441\\u0442\\u0440\\u0435\\u0447\\u0430 \\u0441\\u043e\\u0441\\u0442\\u043e\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0414\\u043e\\u043c\\u0435 \\u041c\\u0430\\u043a\\u0441\\u0430 \\u0413\\u0440\\u0430\\u043d\\u0442\\u0430 \\u0432 12:00.<\\/span><\\/p>","2":"","3":"","4":""}', '2011-09-30', 0, 0),
(5, '{"1":"\\u0423\\u0447\\u0435\\u043d\\u044b\\u0435 \\u0441\\u043c\\u043e\\u0433\\u043b\\u0438 \\u0438\\u0437\\u043c\\u0435\\u0440\\u0438\\u0442\\u044c \\u0442\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0443 \\u041c\\u0430\\u0440\\u0441\\u0430","2":"","3":""}', '{"1":"\\u0418\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438 \\u0438\\u0437 \\u041a\\u0430\\u043b\\u0438\\u0444\\u043e\\u0440\\u043d\\u0438\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0433\\u043e \\u0438\\u043d\\u0441\\u0442\\u0438\\u0442\\u0443\\u0442\\u0430 (\\u0421\\u0428\\u0410) \\u043f\\u0435\\u0440\\u0432\\u044b\\u043c\\u0438 \\u0441\\u043c\\u043e\\u0433\\u043b\\u0438 \\u00ab\\u043d\\u0435\\u043f\\u043e\\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u00bb \\u0438\\u0437\\u043c\\u0435\\u0440\\u0438\\u0442\\u044c \\u0442\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0443 \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u0438 \\u041c\\u0430\\u0440\\u0441\\u0430 \\u0432 \\u0434\\u0430\\u043b\\u0451\\u043a\\u043e\\u043c \\u043f\\u0440\\u043e\\u0448\\u043b\\u043e\\u043c.","2":"","3":""}', '{"1":"<p>\\u0418\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438 \\u0438\\u0437 \\u041a\\u0430\\u043b\\u0438\\u0444\\u043e\\u0440\\u043d\\u0438\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0433\\u043e \\u0438\\u043d\\u0441\\u0442\\u0438\\u0442\\u0443\\u0442\\u0430 (\\u0421\\u0428\\u0410)  \\u043f\\u0435\\u0440\\u0432\\u044b\\u043c\\u0438 \\u0441\\u043c\\u043e\\u0433\\u043b\\u0438 &laquo;\\u043d\\u0435\\u043f\\u043e\\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e&raquo; \\u0438\\u0437\\u043c\\u0435\\u0440\\u0438\\u0442\\u044c \\u0442\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0443 \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u0438 \\u041c\\u0430\\u0440\\u0441\\u0430 \\u0432  \\u0434\\u0430\\u043b\\u0451\\u043a\\u043e\\u043c \\u043f\\u0440\\u043e\\u0448\\u043b\\u043e\\u043c.<br \\/><br \\/>\\u0412\\u044b\\u0432\\u043e\\u0434? \\u0414\\u0435\\u0439\\u0441\\u0442\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e, \\u043f\\u043b\\u0430\\u043d\\u0435\\u0442\\u0430 \\u043a\\u043e\\u0433\\u0434\\u0430-\\u0442\\u043e \\u0431\\u044b\\u043b\\u0430 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0442\\u0451\\u043f\\u043b\\u043e\\u0439 \\u0438 \\u0432\\u043b\\u0430\\u0436\\u043d\\u043e\\u0439.<br \\/><br \\/>\\u0423\\u0447\\u0451\\u043d\\u044b\\u0435  \\u043f\\u0440\\u043e\\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u0438\\u0440\\u043e\\u0432\\u0430\\u043b\\u0438 \\u043a\\u0430\\u0440\\u0431\\u043e\\u043d\\u0430\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044b \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442\\u043e\\u043c 3,6&ndash;4 \\u043c\\u0438\\u043b\\u043b\\u0438\\u0430\\u0440\\u0434\\u0430 \\u043b\\u0435\\u0442 \\u0438\\u0437  \\u043c\\u0430\\u0440\\u0441\\u0438\\u0430\\u043d\\u0441\\u043a\\u043e\\u0433\\u043e \\u043c\\u0435\\u0442\\u0435\\u043e\\u0440\\u0438\\u0442\\u0430 \\u0438 \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u0438\\u043b\\u0438, \\u0447\\u0442\\u043e \\u043e\\u043d\\u0438 \\u0441\\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u043b\\u0438\\u0441\\u044c \\u043f\\u0440\\u0438  \\u0442\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0435 \\u043e\\u043a\\u043e\\u043b\\u043e 18 \\u02daC.<br \\/><br \\/>\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430 \\u0438\\u043c\\u0435\\u0435\\u0442 \\u0440\\u0435\\u0448\\u0430\\u044e\\u0449\\u0435\\u0435 \\u0437\\u043d\\u0430\\u0447\\u0435\\u043d\\u0438\\u0435 \\u0434\\u043b\\u044f  \\u043f\\u043e\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u044f \\u043a\\u043b\\u0438\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0439 \\u0438\\u0441\\u0442\\u043e\\u0440\\u0438\\u0438 \\u041a\\u0440\\u0430\\u0441\\u043d\\u043e\\u0439 \\u043f\\u043b\\u0430\\u043d\\u0435\\u0442\\u044b. \\u041c\\u0430\\u0440\\u0441\\u043e\\u0445\\u043e\\u0434\\u044b \\u0438 \\u043e\\u0440\\u0431\\u0438\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435  \\u043a\\u043e\\u0441\\u043c\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0430\\u043f\\u043f\\u0430\\u0440\\u0430\\u0442\\u044b \\u043d\\u0430\\u0448\\u043b\\u0438 \\u043d\\u0430\\u043c\\u0451\\u043a\\u0438 \\u043d\\u0430 \\u0434\\u0440\\u0435\\u0432\\u043d\\u0438\\u0435 \\u0434\\u0435\\u043b\\u044c\\u0442\\u044b \\u0440\\u0435\\u043a \\u0438 \\u0432\\u044b\\u0441\\u043e\\u0445\\u0448\\u0438\\u0435  \\u043e\\u0437\\u0451\\u0440\\u0430, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u043d\\u044b\\u0435 \\u043e\\u0442\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043c\\u043e\\u0436\\u043d\\u043e \\u0438\\u043d\\u0442\\u0435\\u0440\\u043f\\u0440\\u0435\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c \\u043a\\u0430\\u043a  \\u0441\\u0432\\u0438\\u0434\\u0435\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u044f \\u0432\\u043e\\u0434\\u044b \\u0432 \\u0433\\u043b\\u0443\\u0431\\u043e\\u043a\\u043e\\u0439 \\u0434\\u0440\\u0435\\u0432\\u043d\\u043e\\u0441\\u0442\\u0438. \\u0414\\u0435\\u043b\\u043e \\u0431\\u044b\\u043b\\u043e \\u0437\\u0430 \\u043f\\u0440\\u044f\\u043c\\u044b\\u043c\\u0438  \\u0434\\u0430\\u043d\\u043d\\u044b\\u043c\\u0438.<br \\/><br \\/>\\u0411\\u044b\\u043b\\u043e \\u0432\\u044b\\u0434\\u0432\\u0438\\u043d\\u0443\\u0442\\u043e \\u043c\\u043d\\u043e\\u0436\\u0435\\u0441\\u0442\\u0432\\u043e \\u0433\\u0438\\u043f\\u043e\\u0442\\u0435\\u0437. \\u041e\\u0434\\u043d\\u0438 \\u0433\\u043e\\u0432\\u043e\\u0440\\u044f\\u0442, \\u0447\\u0442\\u043e  \\u043c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044b \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u043b\\u0438\\u0441\\u044c, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u043d\\u0430\\u0441\\u044b\\u0449\\u0435\\u043d\\u043d\\u0430\\u044f \\u043a\\u0430\\u0440\\u0431\\u043e\\u043d\\u0430\\u0442\\u0430\\u043c\\u0438 \\u043c\\u0430\\u0433\\u043c\\u0430 \\u043e\\u0441\\u0442\\u044b\\u043b\\u0430 \\u0438  \\u043a\\u0440\\u0438\\u0441\\u0442\\u0430\\u043b\\u043b\\u0438\\u0437\\u043e\\u0432\\u0430\\u043b\\u0430\\u0441\\u044c. \\u0414\\u0440\\u0443\\u0433\\u0438\\u0435 \\u043f\\u043e\\u043b\\u0430\\u0433\\u0430\\u044e\\u0442, \\u0447\\u0442\\u043e \\u043a\\u0430\\u0440\\u0431\\u043e\\u043d\\u0430\\u0442\\u044b \\u043d\\u0430\\u0440\\u043e\\u0441\\u043b\\u0438 \\u0432 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u0435  \\u0433\\u0438\\u0434\\u0440\\u043e\\u0442\\u0435\\u0440\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0432. \\u0415\\u0449\\u0451 \\u043e\\u0434\\u043d\\u0430 \\u0438\\u0434\\u0435\\u044f \\u0437\\u0430\\u043a\\u043b\\u044e\\u0447\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0442\\u043e\\u043c, \\u0447\\u0442\\u043e  \\u043a\\u0430\\u0440\\u0431\\u043e\\u043d\\u0430\\u0442\\u044b \\u043e\\u0441\\u0430\\u0436\\u0434\\u0430\\u043b\\u0438\\u0441\\u044c \\u0438\\u0437 \\u0441\\u043e\\u043b\\u0435\\u0432\\u044b\\u0445 \\u0440\\u0430\\u0441\\u0442\\u0432\\u043e\\u0440\\u043e\\u0432. \\u0414\\u043b\\u044f \\u044d\\u0442\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0432 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430  \\u0441\\u0430\\u043c\\u0430\\u044f \\u0440\\u0430\\u0437\\u043d\\u0430\\u044f \\u0442\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430: \\u043e\\u0442 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0447\\u0435\\u043c 700 \\u02daC \\u0432 \\u043f\\u0435\\u0440\\u0432\\u043e\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0434\\u043e  \\u043c\\u0438\\u043d\\u0443\\u0441\\u043e\\u0432\\u043e\\u0439 &mdash; \\u0432 \\u043f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0435\\u043c.<\\/p>","2":"","3":""}', '2011-10-21', 3, 0),
(6, '{"1":"\\u0422\\u0435\\u043f\\u0435\\u0440\\u044c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0440\\u0430\\u0441\\u043f\\u0435\\u0447\\u0430\\u0442\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0435\\u2026 \\u043b\\u0438\\u0446\\u043e ","2":"","3":""}', '{"1":"\\u042f\\u043f\\u043e\\u043d\\u0446\\u044b \\u0441\\u043d\\u043e\\u0432\\u0430 \\u0443\\u0434\\u0438\\u0432\\u0438\\u043b\\u0438 \\u043c\\u0438\\u0440. \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f REAL-f \\u043f\\u0440\\u0438\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442 \\u0437\\u0430\\u043a\\u0430\\u0437\\u044b \\u043d\\u0430 \\u0438\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0447\\u0440\\u0435\\u0437\\u0432\\u044b\\u0447\\u0430\\u0439\\u043d\\u043e \\u0440\\u0435\\u0430\\u043b\\u0438\\u0441\\u0442\\u0438\\u0447\\u043d\\u044b\\u0445 3D-\\u043a\\u043e\\u043f\\u0438\\u0439 \\u043b\\u0438\\u0446 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432.","2":"","3":""}', '{"1":"<p>\\u0414\\u0435\\u0442\\u0430\\u043b\\u0438 \\u043c\\u0430\\u0441\\u043e\\u043a \\u043f\\u0440\\u043e\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u043d\\u044b \\u043d\\u0430\\u0441\\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0442\\u043e\\u043d\\u043a\\u043e, \\u0447\\u0442\\u043e \\u0432\\u0438\\u0434\\u043d\\u044b \\u043f\\u043e\\u0440\\u044b \\u043a\\u043e\\u0436\\u0438 \\u0438, \\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, \\u0440\\u0438\\u0441\\u0443\\u043d\\u043e\\u043a \\u043a\\u0440\\u043e\\u0432\\u0435\\u043d\\u043e\\u0441\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0441\\u0443\\u0434\\u043e\\u0432 \\u0433\\u043b\\u0430\\u0437\\u0430.<\\/p>\\n<p>\\u042f\\u043f\\u043e\\u043d\\u0446\\u044b \\u0443\\u0442\\u0432\\u0435\\u0440\\u0436\\u0434\\u0430\\u044e\\u0442, \\u0447\\u0442\\u043e \\u0434\\u043e\\u0431\\u0438\\u043b\\u0438\\u0441\\u044c &laquo;\\u043d\\u0435\\u0432\\u0438\\u0434\\u0430\\u043d\\u043d\\u043e\\u0433\\u043e, \\u043f\\u043e\\u0434\\u043b\\u0438\\u043d\\u043d\\u043e\\u0433\\u043e \\u0440\\u0435\\u0430\\u043b\\u0438\\u0437\\u043c\\u0430&raquo;.  \\u0421\\u0432\\u043e\\u044e \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044e REAL-f \\u043d\\u0430\\u0437\\u044b\\u0432\\u0430\\u0435\\u0442 3DFP, \\u0447\\u0442\\u043e \\u043c\\u043e\\u0436\\u043d\\u043e \\u0440\\u0430\\u0441\\u0448\\u0438\\u0444\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c \\u043a\\u0430\\u043a  &laquo;\\u0442\\u0440\\u0435\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0444\\u043e\\u0442\\u043e\\u0444\\u043e\\u0440\\u043c\\u044b&raquo; (3 Dimension Photo Form).<\\/p>\\n<p>\\u042d\\u0442\\u043e \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0431\\u044b\\u0442\\u044c \\u043d\\u0435 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043c\\u0430\\u0441\\u043a\\u0430, \\u043d\\u043e \\u0438 \\u043a\\u043e\\u043f\\u0438\\u044f \\u0432\\u0441\\u0435\\u0439 \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b \\u0446\\u0435\\u043b\\u0438\\u043a\\u043e\\u043c. \\u0418 \\u0442\\u043e \\u0438 \\u0434\\u0440\\u0443\\u0433\\u043e\\u0435 \\u0432\\u044b\\u043f\\u0443\\u0441\\u043a\\u0430\\u0435\\u0442\\u0441\\u044f \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0432 \\u043d\\u0430\\u0442\\u0443\\u0440\\u0430\\u043b\\u044c\\u043d\\u0443\\u044e \\u0432\\u0435\\u043b\\u0438\\u0447\\u0438\\u043d\\u0443.<\\/p>\\n<p><img style=\\"width: 450px; height: 254px;\\" src=\\"http:\\/\\/i.obozrevatel.com\\/13\\/1204510\\/inner\\/344236.jpg\\" alt=\\"\\" \\/><\\/p>\\n<p><em>\\u0424\\u043e\\u0442\\u043e: \\u0443 \\u0432\\u0441\\u0435\\u0445 \\u043c\\u0430\\u0441\\u043e\\u043a \\u0438 \\u043a\\u043e\\u043f\\u0438\\u0439 \\u0433\\u043e\\u043b\\u043e\\u0432 \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0437\\u0430\\u043a\\u0440\\u044b\\u0442\\u044b \\u0440\\u0442\\u044b &ndash; \\u044f\\u043f\\u043e\\u043d\\u0446\\u044b \\u043d\\u0435 \\u0431\\u0435\\u0440\\u0443\\u0442\\u0441\\u044f \\u0437\\u0430 \\u0432\\u043e\\u0441\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e \\u0437\\u0443\\u0431\\u043e\\u0432<\\/em><\\/p>\\n<p>&nbsp;<\\/p>\\n<p>3D-\\u043c\\u043e\\u0434\\u0435\\u043b\\u044c \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b \\u044f\\u043f\\u043e\\u043d\\u0446\\u044b \\u0441\\u043e\\u0437\\u0434\\u0430\\u044e\\u0442 \\u043d\\u0430 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u0444\\u043e\\u0442\\u043e\\u0433\\u0440\\u0430\\u0444\\u0438\\u0439, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0434\\u0435\\u043b\\u0430\\u044e\\u0442  \\u0438\\u0441\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0432 \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0441\\u0442\\u0443\\u0434\\u0438\\u0438. \\u0424\\u043e\\u0442\\u043e\\u0441\\u0435\\u0441\\u0441\\u0438\\u044f \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442 \\u043a\\u0430\\u043a \\u043c\\u0438\\u043d\\u0438\\u043c\\u0443\\u043c \\u0447\\u0430\\u0441.<\\/p>\\n<p>\\u0417\\u0430\\u0442\\u0435\\u043c \\u0432 \\u0434\\u0435\\u043b\\u043e \\u0438\\u0434\\u0435\\u0442 3D-\\u043f\\u0440\\u0438\\u043d\\u0442\\u0435\\u0440, \\u0442\\u0432\\u043e\\u0440\\u044f\\u0449\\u0438\\u0439 \\u043c\\u0430\\u0441\\u043a\\u0443 \\u0438\\u043b\\u0438 &laquo;\\u0433\\u043e\\u043b\\u043e\\u0432\\u0443&raquo; \\u0438\\u0437  \\u043f\\u043e\\u043b\\u0438\\u0432\\u0438\\u043d\\u0438\\u043b\\u0445\\u043b\\u043e\\u0440\\u0438\\u0434\\u0430. \\u041d\\u0430 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u0435 \\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430 \\u0444\\u0438\\u0440\\u043c\\u0435 REAL-f \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442\\u0441\\u044f  \\u0434\\u0432\\u0435-\\u0442\\u0440\\u0438 \\u043d\\u0435\\u0434\\u0435\\u043b\\u0438.<\\/p>\\n<p>\\u042f\\u043f\\u043e\\u043d\\u0446\\u044b \\u0441\\u0447\\u0438\\u0442\\u0430\\u044e\\u0442, \\u0447\\u0442\\u043e \\u0442\\u0430\\u043a\\u043e\\u0439 \\u043f\\u043e\\u0440\\u0442\\u0440\\u0435\\u0442 (\\u0441\\u0432\\u043e\\u0439 \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u043b\\u044e\\u0431\\u0438\\u043c\\u043e\\u0433\\u043e  \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\\u0430) \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u044b \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0434\\u0435\\u043b\\u0430\\u0442\\u044c &laquo;\\u043d\\u0430 \\u043f\\u0430\\u043c\\u044f\\u0442\\u044c&raquo;. \\u0421\\u0430\\u043c\\u043e \\u0441\\u043e\\u0431\\u043e\\u0439, 3DFP &ndash; \\u043d\\u0435  \\u0434\\u0435\\u0448\\u0451\\u0432\\u043e\\u0435 \\u0443\\u0434\\u043e\\u0432\\u043e\\u043b\\u044c\\u0441\\u0442\\u0432\\u0438\\u0435.<\\/p>\\n<p>\\u041a\\u043e\\u043f\\u0438\\u044f \\u043b\\u0438\\u0446\\u0430 \\u043e\\u0446\\u0435\\u043d\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u043e\\u043a\\u043e\\u043b\\u043e $4 \\u0442\\u044b\\u0441., \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b &ndash;$6 \\u0442\\u044b\\u0441. \\u041f\\u043e\\u0432\\u0442\\u043e\\u0440\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043f\\u0438\\u0438  \\u0441\\u0442\\u043e\\u044f\\u0442 \\u0434\\u0435\\u0448\\u0435\\u0432\\u043b\\u0435 \\u0432 2-5 \\u0440\\u0430\\u0437. \\u041d\\u0430 \\u0441\\u0432\\u043e\\u044e \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044e REAL-f \\u0434\\u0430\\u0451\\u0442 \\u0442\\u0440\\u0451\\u0445\\u043b\\u0435\\u0442\\u043d\\u044e\\u044e  \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044e.<\\/p>","2":"","3":""}', '2011-10-28', 3, 0),
(7, '{"1":"\\u0421\\u0443\\u043a\\u043a\\u043e\\u0442 \\u0432 \\u042d\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b\\u0435 2011","2":"","3":""}', '{"1":"\\u0422\\u0440\\u0430\\u0434\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u0430\\u044f \\u0432\\u044b\\u0435\\u0437\\u0434\\u043d\\u0430\\u044f \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u0430 \\u00ab\\u0421\\u0443\\u043a\\u043a\\u043e\\u0442 \\u0432 \\u042d\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b\\u0435 2011\\u00bb \\u0441\\u043e\\u0441\\u0442\\u043e\\u0438\\u0442\\u0441\\u044f 16 \\u043e\\u043a\\u0442\\u044f\\u0431\\u0440\\u044f 2011 \\u0433\\u043e\\u0434\\u0430.","2":"","3":""}', '{"1":"<p><span style=\\"font-family: Arial, Tahoma, Verdana, sans-serif;\\">\\u0415\\u0432\\u0440\\u0435\\u0439\\u0441\\u043a\\u0438\\u0439 \\u043e\\u0431\\u0449\\u0438\\u043d\\u043d\\u044b\\u0439 \\u0446\\u0435\\u043d\\u0442\\u0440 &laquo;\\u041c\\u0430\\u0437\\u0430\\u043b\\u044c \\u0442\\u043e\\u0432&raquo; \\u043f\\u0440\\u0438\\u0433\\u043b\\u0430\\u0448\\u0430\\u0435\\u0442 \\u043d\\u0430 \\u0442\\u0440\\u0430\\u0434\\u0438\\u0446\\u0438\\u043e\\u043d\\u043d\\u0443\\u044e \\u0432\\u044b\\u0435\\u0437\\u0434\\u043d\\u0443\\u044e \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u0443 &laquo;\\u0421\\u0443\\u043a\\u043a\\u043e\\u0442 \\u0432 \\u042d\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b\\u0435 2011&raquo;,<\\/span><br style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\" \\/><span style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\">\\u043a\\u043e\\u0442\\u043e\\u0440\\u0430\\u044f \\u0441\\u043e\\u0441\\u0442\\u043e\\u0438\\u0442\\u0441\\u044f 16 \\u043e\\u043a\\u0442\\u044f\\u0431\\u0440\\u044f 2011 \\u0433\\u043e\\u0434\\u0430.<\\/span><br style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\" \\/><br style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\" \\/><span style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\">\\u041c\\u044b \\u043f\\u0440\\u0438\\u0433\\u043b\\u0430\\u0448\\u0430\\u0435\\u043c \\u0412\\u0430\\u0441 \\u043f\\u0440\\u0438\\u043d\\u044f\\u0442\\u044c \\u0443\\u0447\\u0430\\u0441\\u0442\\u0438\\u0435:<\\/span><br style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\" \\/><span style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\">- \\u0432 \\u043f\\u043e\\u0441\\u0442\\u0440\\u043e\\u0439\\u043a\\u0435 \\u0448\\u0430\\u043b\\u0430\\u0448\\u0430 ( \\u043d\\u0430 \\u0438\\u0432\\u0440\\u0438\\u0442\\u0435 &ndash; &laquo;\\u0441\\u0443\\u043a\\u043a\\u0438&raquo;) \\u0438 \\u0435\\u0433\\u043e \\u0443\\u043a\\u0440\\u0430\\u0448\\u0435\\u043d\\u0438\\u0438,&nbsp;<\\/span><br style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\" \\/><span style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\">- \\u0432 \\u0438\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u0438 \\u043a\\u0430\\u043c\\u044b\\u0448\\u043e\\u0432\\u044b\\u0445 \\u043c\\u0430\\u0442\\u043e\\u0432, \\u0441\\u0430\\u043c\\u0430\\u043d\\u0430, \\u0434\\u0443\\u0434\\u043e\\u0447\\u0435\\u043a \\u0438\\u0437 \\u043a\\u0430\\u043c\\u044b\\u0448\\u0430 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440-\\u043a\\u043b\\u0430\\u0441\\u0441\\u0430\\u0445, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d\\u044b \\u0432 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u0435 \\u043f\\u0440\\u0430\\u0437\\u0434\\u043d\\u0438\\u043a\\u0430.<\\/span><br style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\" \\/><br style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\" \\/><span style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\">\\u0443\\u0447\\u0430\\u0441\\u0442\\u0438\\u0435 \\u0431\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u043e\\u0435<\\/span><br style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\" \\/><span style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\">*\\u043d\\u043e \\u0435\\u0441\\u043b\\u0438 \\u0412\\u044b \\u0434\\u043e\\u0431\\u0438\\u0440\\u0430\\u0435\\u0442\\u0435\\u0441\\u044c \\u0441 \\u043d\\u0430\\u043c\\u0438 \\u043d\\u0430 \\u0430\\u0432\\u0442\\u043e\\u0431\\u0443\\u0441\\u0435, \\u0442\\u043e \\u043f\\u0440\\u043e\\u0435\\u0437\\u0434 \\u0442\\u0443\\u0434\\u0430-\\u043e\\u0431\\u0440\\u0430\\u0442\\u043d\\u043e-25 \\u0433\\u0440\\u043d.<\\/span><br style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\" \\/><br style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\" \\/><br style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\" \\/><span style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\">\\u041e\\u0442\\u044a\\u0435\\u0437\\u0434 \\u0432 10.00 \\u043e\\u0442 \\u0414\\u043e\\u043c\\u0430 \\u0438\\u043c. \\u041c\\u0430\\u043a\\u0441\\u0430 \\u0413\\u0440\\u0430\\u043d\\u0442\\u0430 \\u043f\\u043e \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443: \\u0443\\u043b. \\u041f\\u043e\\u0431\\u0435\\u0434\\u044b ,4<\\/span><br style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\" \\/><br style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\" \\/><span style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\">\\u0423\\u0447\\u0430\\u0441\\u0442\\u0438\\u0435 \\u0432 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u0435 \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u043f\\u043e\\u0434\\u0442\\u0432\\u0435\\u0440\\u0434\\u0438\\u0442\\u044c,<\\/span><br style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\" \\/><span style=\\"font-family: Arial, Tahoma, Verdana, sans-serif; text-align: left;\\">\\u0437\\u0430\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u0432\\u0448\\u0438\\u0441\\u044c \\u043f\\u043e \\u0442\\u0435\\u043b. 213-80-90<\\/span><\\/p>","2":"","3":""}', '2011-10-11', 0, 0);
INSERT INTO `sp_news` (`id`, `name`, `short_description`, `description`, `date`, `project_id`, `basket`) VALUES
(8, '{"1":"\\u0410\\u0440\\u0442-\\u043a\\u043b\\u0443\\u0431 \\"\\u041f\\u043e\\u0434\\u0442\\u044f\\u0436\\u043a\\u0438\\" \\u043f\\u0440\\u0438\\u0433\\u043b\\u0430\\u0448\\u0430\\u0435\\u0442!","2":"","3":""}', '{"1":"\\u041e\\u0431\\u0449\\u0438\\u043d\\u043d\\u044b\\u0439 \\u0446\\u0435\\u043d\\u0442\\u0440 \\u0414\\u043e\\u043c \\u0438\\u043c. \\u041c\\u0430\\u043a\\u0441\\u0430 \\u0413\\u0440\\u0430\\u043d\\u0442\\u0430 \\u043e\\u0442\\u043a\\u0440\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043d\\u043e\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442 \\u0434\\u043b\\u044f \\u043c\\u043e\\u043b\\u043e\\u0434\\u0435\\u0436\\u0438 13-18 \\u043b\\u0435\\u0442 - \\u0440\\u0430\\u0437\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e - \\u0440\\u0430\\u0437\\u0432\\u043b\\u0435\\u043a\\u0430\\u044e\\u0449\\u0438\\u0439 \\u043a\\u043b\\u0443\\u0431 \\"\\u041f\\u041e\\u0414\\u0422\\u042f\\u0416\\u041a\\u0418\\"!","2":"","3":""}', '{"1":"<p><span style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px;\\">\\u041e\\u0431\\u0449\\u0438\\u043d\\u043d\\u044b\\u0439 \\u0446\\u0435\\u043d\\u0442\\u0440 \\u0414\\u043e\\u043c \\u0438\\u043c. \\u041c\\u0430\\u043a\\u0441\\u0430 \\u0413\\u0440\\u0430\\u043d\\u0442\\u0430 \\u043e\\u0442\\u043a\\u0440\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043d\\u043e\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442 \\u0434\\u043b\\u044f \\u043c\\u043e\\u043b\\u043e\\u0434\\u0435\\u0436\\u0438 13-18 \\u043b\\u0435\\u0442 - \\u0440\\u0430\\u0437\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e - \\u0440\\u0430\\u0437\\u0432\\u043b\\u0435\\u043a\\u0430\\u044e\\u0449\\u0438\\u0439 \\u043a\\u043b\\u0443\\u0431 \\"\\u041f\\u041e\\u0414\\u0422\\u042f\\u0416\\u041a\\u0418\\"!!!!!!!!!!!!!!!!<\\/span><br style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\" \\/><br style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\" \\/><span style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\">\\u041c\\u044b \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u043c \\u0412\\u0430\\u043c \\u0440\\u0430\\u0437\\u0432\\u043b\\u0435\\u0447\\u044c\\u0441\\u044f \\u0441 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0439!!!<\\/span><br style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\" \\/><br style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\" \\/><span style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\">- \\u0428\\u043a\\u043e\\u043b\\u0430 \\u043c\\u0430\\u0434\\u0440\\u0438\\u0445\\u0430 (\\u0432\\u043e\\u0436\\u0430\\u0442\\u043e\\u0433\\u043e);<\\/span><br style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\" \\/><span style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\">- \\u0428\\u043a\\u043e\\u043b\\u0430 \\u0433\\u0438\\u0434\\u0430;<\\/span><br style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\" \\/><span style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\">- \\u0422\\u0435\\u0430\\u0442\\u0440\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0442\\u0443\\u0434\\u0438\\u044f;<\\/span><br style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\" \\/><span style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\">- \\u041a\\u043b\\u0443\\u0431 \\u044d\\u043a\\u043e\\u043d\\u043e\\u043c\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u0438\\u0433\\u0440;<\\/span><br style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\" \\/><span style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\">- \\u041a\\u043b\\u0443\\u0431 \\u0433\\u0440\\u0430\\u0444\\u0444\\u0438\\u0442\\u0438;<\\/span><br style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\" \\/><br style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\" \\/><span style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\">\\u0410 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u043c\\u044b \\u043f\\u043e\\u0434\\u0442\\u044f\\u043d\\u0435\\u043c \\u0412\\u0430\\u0441 \\u0442\\u0435\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0432\\u0435\\u0447\\u0435\\u0440\\u0438\\u043d\\u043a\\u0438, \\u043a\\u0432\\u0435\\u0441\\u0442\\u044b, \\u0444\\u043e\\u0442\\u043e\\u043a\\u0432\\u0435\\u0441\\u0442\\u044b \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0438\\u0435 \\u0440\\u0430\\u0437\\u0432\\u043b\\u0435\\u043a\\u0430\\u043b\\u043e\\u0432\\u043a\\u0438!!!!<\\/span><br style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\" \\/><br style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\" \\/><span style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\">\\u042e\\u0445\\u0443\\u0443\\u0443 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u0432\\u0435\\u0441\\u0435\\u043b\\u043e!!!!!<\\/span><br style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\" \\/><br style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\" \\/><span style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\">\\u0413\\u0434\\u0435: \\u0443\\u043b. \\u041f\\u043e\\u0431\\u0435\\u0434\\u044b 4, \\u0434\\u043e\\u043c \\u0438\\u043c. \\u041c\\u0430\\u043a\\u0441\\u0430 \\u0413\\u0440\\u0430\\u043d\\u0442\\u0430<\\/span><br style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\" \\/><span style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 16px; text-align: left;\\">\\u0422\\u0435\\u043b \\u0434\\u043b\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u0438: 2138090, 0679751075, 0502710096<\\/span><\\/p>\\n<p style=\\"text-align: left;\\"><a title=\\"\\u0413\\u0440\\u0443\\u043f\\u043f\\u0430 \\u0432 \\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435\\" href=\\"http:\\/\\/vkontakte.ru\\/club30000626\\" target=\\"_blank\\">http:\\/\\/vkontakte.ru\\/club30000626<\\/a><\\/p>","2":"","3":""}', '2011-09-05', 0, 0),
(9, '{"1":"\\u041a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0447\\u0435\\u0442\\u0432\\u0435\\u0440\\u0433 \\u044f\\u0437\\u044b\\u043a\\u043e\\u0432\\u043e\\u0439 \\u043a\\u043b\\u0443\\u0431 \\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u044f \\u043f\\u0440\\u0438\\u0433\\u043b\\u0430\\u0448\\u0430\\u0435\\u0442","2":"","3":""}', '{"1":"\\u0412 \\u044d\\u0442\\u043e\\u0442 \\u0440\\u0430\\u0437 \\u043c\\u044b \\u043f\\u043e\\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u0438\\u043c\\u0441\\u044f \\u0441  \\u043b\\u043e\\u0433\\u043e\\u0440\\u0438\\u0442\\u043c\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c\\u0438 \\u043f\\u0435\\u0441\\u043d\\u044f\\u043c\\u0438 \\u043d\\u0430 \\u0440\\u0430\\u0437\\u043d\\u044b\\u0445 \\u044f\\u0437\\u044b\\u043a\\u0430\\u0445! \\u041a\\u043e\\u0433\\u0434\\u0430: 27 \\u043e\\u043a\\u0442\\u044f\\u0431\\u0440\\u044f, \\u0447\\u0435\\u0442\\u0432\\u0435\\u0440\\u0433 \\u0432 19.00.","2":"","3":""}', '{"1":"<p>\\n<p style=\\"margin-top: 0cm; margin-right: 7.95pt; margin-bottom: .0001pt; margin-left: 7.95pt; text-align: center; background: white;\\">\\u041a\\u0430\\u0436\\u0434\\u044b\\u0439 \\u0447\\u0435\\u0442\\u0432\\u0435\\u0440\\u0433 \\u043d\\u0435\\u0444\\u043e\\u0440\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043a\\u043b\\u0443\\u0431 \\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u044f \\u043d\\u0430 \\u0440\\u0430\\u0437\\u043d\\u044b\\u0445 \\u044f\\u0437\\u044b\\u043a\\u0430\\u0445 \\u043f\\u0440\\u0438\\u0433\\u043b\\u0430\\u0448\\u0430\\u0435\\u0442.<\\/p>\\n<p style=\\"margin-top: 0cm; margin-right: 7.95pt; margin-bottom: .0001pt; margin-left: 7.95pt; text-align: center; background: white;\\">&nbsp;<\\/p>\\n<p style=\\"margin-top: 0cm; margin-right: 7.95pt; margin-bottom: .0001pt; margin-left: 7.95pt; text-align: center; background: white;\\"><span style=\\"font-family: Arial; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial;\\">\\u0412 \\u044d\\u0442\\u043e\\u0442 \\u0440\\u0430\\u0437 \\u043c\\u044b \\u043f\\u043e\\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u0438\\u043c\\u0441\\u044f \\u0441&nbsp; \\u043b\\u043e\\u0433\\u043e\\u0440\\u0438\\u0442\\u043c\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c\\u0438 \\u043f\\u0435\\u0441\\u043d\\u044f\\u043c\\u0438 \\u043d\\u0430 \\u0440\\u0430\\u0437\\u043d\\u044b\\u0445 \\u044f\\u0437\\u044b\\u043a\\u0430\\u0445!<\\/span><span style=\\"font-family: Arial;\\"><br \\/> <br \\/> <\\/span><span style=\\"font-family: Arial; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial;\\">\\u041b\\u043e\\u0433\\u043e\\u0440\\u0438\\u0442\\u043c\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u043f\\u0435\\u0441\\u043d\\u0438 \\u043f\\u043e\\u043c\\u043e\\u0433\\u0443\\u0442 \\u043d\\u0430\\u043c \\u043f\\u043e\\u0437\\u043d\\u0430\\u043a\\u043e\\u043c\\u0438\\u0442\\u0441\\u044f \\u0441&nbsp; \\u043d\\u043e\\u0432\\u044b\\u043c\\u0438 \\u0441\\u043b\\u043e\\u0432\\u0430\\u043c\\u0438 \\u0432 \\u0432\\u0435\\u0441\\u0435\\u043b\\u043e\\u0439 \\u0438&nbsp; \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u043e\\u0439 \\u0444\\u043e\\u0440\\u043c\\u0435!<\\/span><span style=\\"font-family: Arial;\\"><br \\/> <br \\/> <\\/span><span style=\\"text-decoration: underline;\\"><span style=\\"font-family: Arial; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial;\\">\\u0427\\u0442\\u043e:<\\/span><\\/span><span><span style=\\"font-family: Arial; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial;\\">&nbsp;<\\/span><\\/span><span style=\\"font-family: Arial; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial;\\">\\u0412\\u0441\\u0442\\u0440\\u0435\\u0447\\u0430 \\u042f\\u0437\\u044b\\u043a\\u043e\\u0432\\u043e\\u0433\\u043e \\u043a\\u043b\\u0443\\u0431\\u0430 \\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u044f<\\/span><span style=\\"font-family: Arial;\\"><br \\/> <\\/span><span style=\\"text-decoration: underline;\\"><span style=\\"font-family: Arial; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial;\\">\\u041a\\u043e\\u0433\\u0434\\u0430:<span>&nbsp;<\\/span><\\/span><\\/span><span style=\\"font-family: Arial; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial;\\">27 \\u043e\\u043a\\u0442\\u044f\\u0431\\u0440\\u044f, \\u0447\\u0435\\u0442\\u0432\\u0435\\u0440\\u0433 \\u0432 19.00<\\/span><span style=\\"font-family: Arial;\\"><br \\/> <\\/span><span style=\\"text-decoration: underline;\\"><span style=\\"font-family: Arial; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial;\\">\\u0413\\u0434\\u0435:<\\/span><\\/span><span><span style=\\"font-family: Arial; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial;\\">&nbsp;<\\/span><\\/span><span style=\\"font-family: Arial; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial;\\">\\u0443\\u043b. \\u041f\\u043e\\u0431\\u0435\\u0434\\u044b 4, 27 \\u043a\\u0430\\u0431<\\/span><span style=\\"font-family: Arial;\\"><br \\/> <br \\/> <br \\/> <\\/span><span style=\\"font-family: Arial; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: white; background-position: initial initial; background-repeat: initial initial;\\">\\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043f\\u043e \\u0442\\u0435\\u043b: 2138090<\\/span><strong><span style=\\"font-family: Arial;\\"><\\/span><\\/strong><\\/p>\\n<p style=\\"margin: 0cm; margin-bottom: .0001pt;\\"><!--[if !supportEmptyParas]-->&nbsp;<!--[endif]--><\\/p>\\n<\\/p>","2":"","3":""}', '2011-10-25', 0, 0),
(10, '{"1":"\\u0410\\u0440\\u0442-\\u043f\\u0440\\u043e\\u0435\\u043a\\u0442 \\"\\u0421\\u043b\\u0430\\u0434\\u043e\\u0441\\u0442\\u0438 \\u043d\\u0430\\u0440\\u043e\\u0434\\u043e\\u0432 \\u043c\\u0438\\u0440\\u0430\\"","2":"","3":""}', '{"1":"22 \\u043e\\u043a\\u0442\\u044f\\u0431\\u0440\\u044f (\\u0441\\u0443\\u0431\\u0431\\u043e\\u0442\\u0430) 15:00-18:00  \\u0413\\u043e\\u0442\\u043e\\u0432\\u0438\\u043c, \\u0434\\u0435\\u0433\\u0443\\u0441\\u0442\\u0438\\u0440\\u0443\\u0435\\u043c, \\u0443\\u0433\\u043e\\u0449\\u0430\\u0435\\u043c\\u0441\\u044f \\u0438 \\u0443\\u0433\\u043e\\u0449\\u0430\\u0435\\u043c!","2":"","3":""}', '{"1":"<p><span style=\\"color: #333333; text-align: left; background-color: white; font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 14px;\\">22 \\u043e\\u043a\\u0442\\u044f\\u0431\\u0440\\u044f (\\u0441\\u0443\\u0431\\u0431\\u043e\\u0442\\u0430) 15:00-18:00<\\/span><br style=\\"color: #333333; font-family: Arial, serif; font-size: 14px; line-height: 22px; text-align: left;\\" \\/><span style=\\"color: #333333; text-align: left; background-color: white; font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 14px;\\"><br \\/>\\u0413\\u043e\\u0442\\u043e\\u0432\\u0438\\u043c, \\u0434\\u0435\\u0433\\u0443\\u0441\\u0442\\u0438\\u0440\\u0443\\u0435\\u043c, \\u0443\\u0433\\u043e\\u0449\\u0430\\u0435\\u043c\\u0441\\u044f \\u0438 \\u0443\\u0433\\u043e\\u0449\\u0430\\u0435\\u043c!<br \\/>\\u0412 \\u041c\\u0415\\u041d\\u042e:<br \\/><br \\/>\\u041a\\u0423\\u041b\\u0418\\u041d\\u0410\\u0420\\u041d\\u042b\\u0415 \\u041c\\u0410\\u0421\\u0422\\u0415\\u0420-\\u041a\\u041b\\u0410\\u0421\\u0421\\u042b:<br \\/>15:00 - \\u043f\\u043e \\u0438\\u043d\\u0434\\u0438\\u0439\\u0441\\u043a\\u0438\\u043c \\u0441\\u043b\\u0430\\u0434\\u043e\\u0441\\u0442\\u044f\\u043c -\\u0430\\u043f\\u0435\\u043b\\u044c\\u0441\\u0438\\u043d\\u043e\\u0432\\u0430\\u044f \\u0445\\u0430\\u043b\\u0430\\u0432\\u0430 \\u0438 \\u0441\\u043b\\u0430\\u0434\\u043a\\u0438\\u0435 \\u0448\\u0430\\u0440\\u0438\\u043a\\u0438 ,<br \\/>16:30 - \\u043f\\u043e \\u0438\\u0437\\u0440\\u0430\\u0438\\u043b\\u044c\\u0441\\u043a\\u0438\\u043c \\u0441\\u043b\\u0430\\u0434\\u043e\\u0441\\u0442\\u044f\\u043c,<br \\/><br \\/>* \\u0427\\u0430\\u0439\\u043d\\u0430\\u044f \\u0446\\u0435\\u0440\\u0435\\u043c\\u043e\\u043d\\u0438\\u044f \\u0438 \\u044f\\u043f\\u043e\\u043d\\u0441\\u043a\\u0438\\u0435 \\u043f\\u0435\\u0447\\u0435\\u043d\\u044c\\u044f \\u0441 \\u043f\\u0440\\u0435\\u0434\\u0441\\u043a\\u0430\\u0437\\u0430\\u043d\\u0438\\u044f\\u043c\\u0438,<br \\/>* \\u0418\\u0440\\u043b\\u0430\\u043d\\u0434\\u0441\\u043a\\u0438\\u0435 \\u0441\\u043b\\u0430\\u0434\\u043e\\u0441\\u0442\\u0438,<br \\/>* \\u0428\\u043e\\u043a\\u043e\\u043b\\u0430\\u0434\\u043d\\u043e\\u0435 \\u0444\\u043e\\u043d\\u0434\\u044e,<br \\/>* \\u0412\\u044b\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0431\\u0430\\u0431\\u0443\\u0448\\u043a\\u0438\\u043d\\u044b\\u0445 \\u0440\\u0435\\u0446\\u0435\\u043f\\u0442\\u043e\\u0432,<br \\/>* \\u0421\\u043b\\u0430\\u0434\\u043a\\u0430\\u044f \\u0432\\u0430\\u0442\\u0430,<br \\/>\\u0412\\u041a\\u0423\\u0421\\u041d\\u0410\\u042f \\u0412\\u042b\\u0421\\u0422\\u0410\\u0412\\u041a\\u0410-\\u042f\\u0420\\u041c\\u0410\\u0420\\u041a\\u0410 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br \\/>* \\u0412\\u0430\\u043d\\u0438\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0438\\u0433\\u0440\\u0443\\u0448\\u043a\\u0438 \\u0438 \\/\\u0410\\u043a\\u0441\\u0435\\u0441\\u0441\\u0443\\u0430\\u0440\\u044b-\\u0441\\u043b\\u0430\\u0434\\u043e\\u0441\\u0442\\u0438, &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br \\/>* \\u0411\\u0443\\u043a\\u0435\\u0442\\u044b \\u0438\\u0437 \\u043a\\u043e\\u043d\\u0444\\u0435\\u0442 \\u0438 \\u041c\\u044b\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0441\\u043b\\u0430\\u0434\\u043e\\u0441\\u0442\\u0438<br \\/>\\u043e\\u0442 \\u0413\\u0430\\u043b\\u0435\\u0440\\u0435\\u0438 &laquo;\\u041a\\u043e\\u043c\\u043e\\u0414&raquo;<br \\/><a style=\\"color: #2b587a; text-decoration: none; cursor: pointer;\\" href=\\"http:\\/\\/vkontakte.ru\\/art_commode\\">http:\\/\\/vkontakte.ru\\/art_commode<\\/a><br \\/><br \\/>\\u0422\\u0412\\u041e\\u0420\\u0427\\u0415\\u0421\\u041a\\u0418\\u0415 \\u041c\\u0410\\u0421\\u0422\\u0415\\u0420-\\u041a\\u041b\\u0410\\u0421\\u0421\\u042b:<br \\/>*\\u043a\\u043e\\u043d\\u0444\\u0435\\u0442\\u043d\\u044b\\u0435 \\u0446\\u0432\\u0435\\u0442\\u044b \\u043e\\u0442 \\u0432\\u043e\\u043b\\u043e\\u043d\\u0442\\u0435\\u0440\\u0441\\u043a\\u043e\\u0433\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430 \\"\\u0422\\u0432\\u043e\\u0440\\u0438 \\u0434\\u043e\\u0431\\u0440\\u043e \\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430\\" - \\u0432\\u0437\\u043d\\u043e\\u0441 10 \\u0433\\u0440\\u043d,<br \\/>*\\u043a\\u0435\\u043a\\u0441-\\u0441\\u043a\\u0440\\u0430\\u043f\\u0431\\u0443\\u043a\\u0438\\u043d\\u0433 - \\u0434\\u043b\\u044f \\u0442\\u0435\\u0445 \\u043a\\u0442\\u043e \\u043d\\u0430 \\u0434\\u0438\\u0435\\u0442\\u0435,<br \\/><br \\/>\\u0412\\u0437\\u043d\\u043e\\u0441: 25 \\u0433\\u0440\\u043d<br \\/>\\u0421 \\u043a\\u043e\\u043d\\u0444\\u0435\\u0442\\u043e\\u0439:20 \\u0433\\u0440\\u043d<br \\/>\\u0421\\u043e\\u0431\\u0440\\u0430\\u043d\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043d\\u0444\\u0435\\u0442\\u044b \\u043c\\u044b \\u043f\\u0435\\u0440\\u0435\\u0434\\u0430\\u0434\\u0438\\u043c \\u0434\\u0435\\u0442\\u044f\\u043c \\u0432 \\u043e\\u043d\\u043a\\u043e\\u0433\\u0435\\u043c\\u0430\\u0442\\u043e\\u043b\\u043e\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u043c \\u043e\\u0442\\u0434\\u0435\\u043b\\u0435\\u043d\\u0438\\u0438 \\u041e\\u0431\\u043b\\u0430\\u0441\\u0442\\u043d\\u043e\\u0439 \\u0434\\u0435\\u0442\\u0441\\u043a\\u043e\\u0439 \\u043a\\u043b\\u0438\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0439 \\u0431\\u043e\\u043b\\u044c\\u043d\\u0438\\u0446\\u044b.<br \\/><br \\/>\\u041f\\u043e \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u0430\\u043c \\u0443\\u0447\\u0430\\u0441\\u0442\\u0438\\u044f \\u0432 \\u0432\\u044b\\u0441\\u0442\\u0430\\u0432\\u043a\\u0435 \\u0434\\u043b\\u044f \\u043c\\u0430\\u0441\\u0442\\u0435\\u0440\\u043e\\u0432 066 436 26 90 \\u0416\\u0435\\u043d\\u044f<\\/span><\\/p>","2":"","3":""}', '2011-10-20', 0, 1),
(12, '{"1":"Идея клуба","2":"","3":""}', '{"1":"Идея клуба родилась очень давно, наверно лет восемь назад, - рассказывает Инесса Носенко, директор общинного центра.","2":"","3":""}', '{"1":"<p>Идея клуба родилась очень давно, наверно лет восемь назад, - рассказывает Инесса Носенко, директор общинного центра. - В межнациональном Запорожье, где живет более ста наций и народностей, нужно уважать людей, которые здесь живут. Уважение, это, в общем-то, и понимание. А понимание очень часто строится через слова, через речь, через<span>&nbsp; </span>уши. Так вот если мы можем предложить друг другу хотя бы немного межкультурного общения, мы это сделаем сегодня.</p>","2":"","3":""}', '2011-09-08', 14, 0),
(13, '{"1":"Вторая встреча клуба","2":"","3":""}', '{"1":"В понедельник 25 апреля состоялась уже вторая встреча клуба, темой которого стал пикап","2":"","3":""}', '{"1":"<p class=\\u0022MsoNormal\\u0022>В понедельник 25 апреля состоялась уже вторая встреча клуба, темой которого стал пикап (знакомство с понравившимися парнями/девушками с целью вместе продолжить вечер,- прим. авт.) на просторах разных стран. Участникам нужно было покорить сердце парня или девушки на украинском огороде, на пляже в Тель-Авиве, на дождливых улицах Лондона, в парижском ресторане, и в немецком пабе в Берлине. Сложность задания<span>&nbsp; </span>состояла в том, что по-русски изъяснятся было нельзя, иначе прекрасные иностранцы вас не поняли бы и не оставили заветный номер мобильного телефона. Но чтобы молодым людям было немного легче, координаторы проекта подготовили для них набор лексики, которая наиболее подходила к ситуации. Все это проходило в приятной дружеской атмосфере. Планируется, что на каждой следующей встрече клуба будет новая тема, чтобы ребята умели использовать свои языковые навыки в различных жизненных ситуациях. <span>&nbsp;</span>В конце встречи было подведение итогов за чашечкой чая, где все могли озвучить свои впечатления, а также предложения и пожелания по поводу дальнейшей работы клуба.</p>\\u000A<p class=\\u0022MsoNormal\\u0022><span>&nbsp;</span>- Все было очень весело и увлекательно, - делится своими ощущениями одна из участниц<span>&nbsp; </span>Элина. - В целом идея говорить на разных языках так, чтобы тебя понимали, даже когда не знаешь, что и как сказать, использовать язык жестов, тела, мимику, все свое обаяние -<span>&nbsp; </span>это очень круто, и такие вечера позволяют тренировать не только языки, но и себя.<span>&nbsp;</span></p>\\u000A<p class=\\u0022MsoNormal\\u0022>Языковой клуб планирует проводить собрания каждую неделю вплоть до &laquo;мертвого сезона&raquo;. Летом же он трансформируется в различные программы, связанные с кемпингом, где у ребят в любом случае будет возможность использовать свои навыки. А осенью, предполагается, что клуб будет заниматься по-новому &ndash; участники выберут себе два или три наиболее подходящих им языка и будут делать ставку именно на них.</p>","2":"","3":""}', '2011-04-25', 14, 0),
(14, '{"1":"КАЭТ - школа социального предпринимательства","2":"","3":""}', '{"1":"Как «подружить» бизнес и добрые дела?  Как совместить финансовый успех и общественное благо?","2":"","3":""}', '{"1":"<p style=\\u0022text-align: justify;\\u0022><strong><span style=\\u0022font-size: 10pt;\\u0022>Как &laquo;подружить&raquo; бизнес и добрые дела?</span></strong></p>\\u000A<p style=\\u0022text-align: justify;\\u0022><strong><span style=\\u0022font-size: 10pt;\\u0022>Как совместить финансовый успех и общественное благо?</span></strong></p>\\u000A<p style=\\u0022text-align: justify;\\u0022><span style=\\u0022font-size: 10pt;\\u0022>Ник  Эйбери из Лондона, Диди Зильберман из Иерусалима и десятки других  молодых предпринимателей успешно справляются с этой задачей благодаря  навыкам, полученным в Группе социального предпринимательства PresenTense  &ndash; инкубаторе &nbsp;социальных старт-апов.</span></p>\\u000A<p style=\\u0022text-align: justify;\\u0022><span style=\\u0022font-size: 10pt;\\u0022>Американский  Еврейский Благотворительный Комитет &laquo;Джойнт&raquo; принял решение  использовать богатейший опыт, накопленный PresenTense, на благо  Еврейских общин Москвы и Центральной России и открывает в Москве <strong>Школу Социального Предпринимательства КАЭТ</strong>.</span></p>\\u000A<p style=\\u0022text-align: justify;\\u0022><span style=\\u0022font-size: 10pt;\\u0022>В январе 2012 года стартует первый полугодичный курс <strong>Школы КАЭТ</strong>.  15 молодых предпринимателей, чьи свежие идеи будут значимы для  еврейской общины, в сжатые сроки освоят краткий курс бизнес школы. Курс  поможет участникам пройти путь от идеи до устойчивой бизнес модели,  необходимой для успешной реализации проекта.</span></p>\\u000A<p style=\\u0022text-align: justify;\\u0022><span style=\\u0022font-size: 10pt;\\u0022>Учебная  программа, составленная выпускниками престижной бизнес школы  Колумбийского Университета, включает как теоретическую часть &ndash; лекции и  изучение кейсов, так и практическую часть. Участники курса получат все  навыки, необходимые для внедрения проекта: от создания веб-форм и  позиционирования в социальных сетях до написания бизнес-планов и  инвестиционных презентаций.</span></p>\\u000A<p style=\\u0022text-align: justify;\\u0022><span style=\\u0022font-size: 10pt;\\u0022>И еще  одно немаловажное достоинство курса &ndash; привлечение успешных бизнесменов и  лидеров еврейской общины в качестве консультантов по проектам.  Благодаря этому, начинающие предприниматели получат не только знания и  навыки, но ценные социальные контакты.</span></p>\\u000A<p style=\\u0022text-align: justify;\\u0022><span style=\\u0022font-size: 10pt;\\u0022>Вся информация о проекте представлена на сайте <a href=\\u0022http://www.kaet.ru/\\u0022>www.kaet.ru</a></span></p>","2":"","3":""}', '2011-12-08', 15, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_organizations`
--

CREATE TABLE IF NOT EXISTS `sp_organizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COMMENT 'Название',
  `address` text COMMENT 'Юридический адрес',
  `place` int(11) DEFAULT NULL COMMENT 'Место дислокации',
  `boss` text COMMENT 'Директор',
  `phone` varchar(255) DEFAULT NULL COMMENT 'Тел.',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `sites` varchar(255) DEFAULT NULL COMMENT 'Сайты',
  `scope` varchar(255) DEFAULT NULL COMMENT 'Сфера деятельности',
  `activities` varchar(255) DEFAULT NULL COMMENT 'Направления деятельности',
  `logo` varchar(255) DEFAULT NULL COMMENT 'Логотип',
  `thumb` varchar(255) DEFAULT NULL,
  `description` text COMMENT 'Описание',
  `grantor` tinyint(4) DEFAULT NULL,
  `investor` tinyint(4) DEFAULT NULL,
  `individual` tinyint(4) NOT NULL DEFAULT '0',
  `developer` tinyint(4) NOT NULL DEFAULT '0',
  `sponsor` tinyint(4) NOT NULL DEFAULT '0',
  `creative` tinyint(4) NOT NULL DEFAULT '0',
  `couche` tinyint(4) NOT NULL DEFAULT '0',
  `basket` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Организации' AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `sp_organizations`
--

INSERT INTO `sp_organizations` (`id`, `name`, `address`, `place`, `boss`, `phone`, `email`, `sites`, `scope`, `activities`, `logo`, `thumb`, `description`, `grantor`, `investor`, `individual`, `developer`, `sponsor`, `creative`, `couche`, `basket`) VALUES
(2, '{"1":"Главное Управление экономики и регуляторной политики","2":"Інтелект сервіс","3":""}', '{"1":"г. Запорожье","2":"м. Дніпропетровськ","3":""}', 0, '{"1":"","2":"Горелко Сергій","3":""}', '', '', 'intelserv.dp.ua', '["2","3"]', '["2"]', 'static/images/entries/dictionary/organizations/big/0a1e9a75cfc5cda2a130289210f8fac3.gif', 'static/images/entries/dictionary/organizations/small/f03e89d1e37f1e73bfd9f6f4a414dca3.gif', '{"1":"","2":"<p>Заробітна платня</p>","3":""}', 0, 1, 0, 0, 0, 0, 0, 0),
(3, '{"1":"Управление культуры и туризма Запорожской областной государственной администрации","2":"","3":""}', '{"1":"69107, м. Запоріжжя, пр. Леніна, 164","2":"","3":""}', 0, '{"1":" КОНАРЕВА  Ірина Едуардівна","2":"","3":""}', 'начальник управління  239-04-11', 'ouk@online.ua', 'http://www.zoda.gov.ua/article/188/upravlinnya-kulturi-i-turizmu.html', '5', '0', '', '', '{"1":"","2":"","3":""}', 0, 1, 0, 0, 0, 0, 1, 1),
(4, '{"1":"\\u0411\\u0424 \\u0415\\u041e\\u0426 \\"\\u041c\\u0430\\u0437\\u0430\\u043b\\u044c \\u0442\\u043e\\u0432\\"","2":"","3":""}', '{"1":"\\u0433. \\u0417\\u0430\\u043f\\u043e\\u0440\\u043e\\u0436\\u044c\\u0435, \\u0443\\u043b. \\u041f\\u043e\\u0431\\u0435\\u0434\\u044b 4","2":"","3":""}', 0, '{"1":"\\u041d\\u043e\\u0441\\u0435\\u043d\\u043a\\u043e \\u0418\\u043d\\u0435\\u0441\\u0441\\u0430","2":"","3":""}', '(061)213-80-90', '', 'http://vkontakte.ru/id135936128; http://mazaltov-maksgrant.blogspot.com/', '0', '0', 'static/images/entries/dictionary/organizations/big/2363a66fc4245b97893857cd7e936bd9.jpg', 'static/images/entries/dictionary/organizations/small/88b943468eb202f534eaacc95fd0d39b.jpg', '{"1":"<p><span style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 15px;\\">\\u041e\\u0431\\u0449\\u0438\\u043d\\u043d\\u044b\\u0439 \\u0446\\u0435\\u043d\\u0442\\u0440 \\"\\u041c\\u0430\\u0437\\u0430\\u043b\\u044c \\u0422\\u043e\\u0432\\" \\u043e\\u0431\\u044a\\u0435\\u0434\\u0438\\u043d\\u044f\\u0435\\u0442 \\u0432 \\u0441\\u0435\\u0431\\u0435 \\u043f\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u043d\\u043e \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u044f\\u044e\\u0449\\u0438\\u0439\\u0441\\u044f \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441 \\u043f\\u043e\\u0437\\u043d\\u0430\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0445, \\u0440\\u0430\\u0437\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0445, \\u0441\\u043f\\u043e\\u0440\\u0442\\u0438\\u0432\\u043d\\u044b\\u0445, \\u0442\\u0430\\u043d\\u0446\\u0435\\u0432\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445, \\u043e\\u0431\\u0443\\u0447\\u0430\\u044e\\u0449\\u0438\\u0445 \\u0438 \\u043f\\u0440\\u043e\\u0447\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c \\u0434\\u043b\\u044f \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0435\\u043c\\u044c\\u0438.<\\/span><\\/p>\\n<p><span style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 15px;\\">\\u041f\\u0440\\u0438\\u044f\\u0442\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435, \\u0441\\u043f\\u043e\\u0440\\u0442, \\u0442\\u0430\\u043d\\u0446\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u043e\\u0435 \\u043d\\u0435\\u0444\\u043e\\u0440\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0443\\u0447\\u0435\\u043d\\u0438\\u0435, \\u043e\\u0442\\u0434\\u044b\\u0445 \\u043d\\u0430 \\u043c\\u043e\\u0440\\u0435, \\u043f\\u0440\\u0430\\u0437\\u0434\\u043d\\u0438\\u043a\\u0438, \\u0434\\u0435\\u0442\\u0438 \\u0438 \\u0432\\u0437\\u0440\\u043e\\u0441\\u043b\\u044b\\u0435, \\u0441\\u043e\\u0445\\u0440\\u0430\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0442\\u0440\\u0430\\u0434\\u0438\\u0446\\u0438\\u0439, \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0435 \\u0438 \\u043f\\u043e\\u0434\\u0434\\u0435\\u0440\\u0436\\u043a\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u043e\\u0432.<\\/span><\\/p>\\n<p><span style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 15px;\\">\\u041f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u044b \\u041e\\u0431\\u0449\\u0438\\u043d\\u043d\\u043e\\u0433\\u043e \\u0446\\u0435\\u043d\\u0442\\u0440\\u0430 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u043f\\u043e\\u0441\\u0435\\u0449\\u0430\\u0442\\u044c \\u0432\\u0441\\u0435 \\u0436\\u0435\\u043b\\u0430\\u044e\\u0449\\u0438\\u0435, \\u043d\\u0435\\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e \\u043e\\u0442 \\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0438 \\u0432\\u0435\\u0440\\u043e\\u0438\\u0441\\u043f\\u043e\\u0432\\u0435\\u0434\\u0430\\u043d\\u0438\\u044f. \\u041c\\u044b \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\\u044b \\u0434\\u043b\\u044f \\u0432\\u0441\\u0435\\u0445!<\\/span><\\/p>\\n<p><span style=\\"font-family: tahoma, arial, verdana, sans-serif, ''Lucida Sans''; font-size: 11px; line-height: 15px;\\"><br \\/><\\/span><\\/p>","2":"","3":""}', 0, 0, 0, 0, 0, 0, 0, 0),
(5, '{"1":"\\u0411\\u0424 \\u00ab\\u041e\\u0442\\u043a\\u0440\\u044b\\u0442\\u044b\\u0439 \\u043c\\u0438\\u0440\\u00bb","2":"","3":""}', '{"1":"","2":"","3":""}', 0, '{"1":"","2":"","3":""}', '', '', '', '0', '0', '', '', '{"1":"","2":"","3":""}', 0, 0, 0, 0, 0, 0, 0, 0),
(6, '{"1":"\\u0423\\u043a\\u0440\\u041f\\u0440\\u043e\\u0441\\u0442\\u0438\\u0440","2":"","3":""}', '{"1":"","2":"","3":""}', 0, '{"1":"","2":"","3":""}', '', '', '', '0', '0', '', '', '{"1":"","2":"","3":""}', 0, 0, 0, 0, 0, 0, 0, 0),
(7, '{"1":"\\u0417\\u041d\\u0423","2":"","3":""}', '{"1":"","2":"","3":""}', 0, '{"1":"","2":"","3":""}', '', '', '', '0', '0', '', '', '{"1":"","2":"","3":""}', 0, 0, 0, 0, 0, 0, 0, 0),
(8, '{"1":"\\u0417\\u0413\\u0418\\u0410","2":"","3":""}', '{"1":"","2":"","3":""}', 0, '{"1":"","2":"","3":""}', '', '', '', '0', '0', '', '', '{"1":"","2":"","3":""}', 0, 0, 0, 0, 0, 0, 0, 0),
(9, '{"1":"\\u041e\\u041e\\u041e \\u00ab\\u0411\\u0438\\u0437\\u043d\\u0435\\u0441-\\u0446\\u0435\\u043d\\u0442\\u0440 \\u0417\\u0430\\u043f\\u043e\\u0440\\u043e\\u0436\\u044c\\u0435\\u00bb","2":"","3":""}', '{"1":"","2":"","3":""}', 0, '{"1":"","2":"","3":""}', '', '', '', '0', '0', '', '', '{"1":"","2":"","3":""}', 0, 0, 0, 0, 0, 0, 0, 0),
(10, '{"1":"\\u0417\\u041e\\u0413\\u041e \\u00ab\\u0414\\u0438\\u0432\\u043e\\u0441\\u0432\\u0456\\u0442\\u00bb","2":"","3":""}', '{"1":"","2":"","3":""}', 0, '{"1":"","2":"","3":""}', '', '', '', '0', '0', '', '', '{"1":"","2":"","3":""}', 0, 0, 0, 0, 0, 0, 0, 0),
(11, '{"1":"Дружелюбовский сельский совет","2":"","3":""}', '{"1":"с. Дружелюбовка, Вольнянского района, Запорожской области","2":"","3":""}', 5, '{"1":"","2":"","3":""}', '', '', '', '[]', '[]', '', '', '{"1":"Дружелюбовский сельский совет","2":"","3":""}', 0, 0, 0, 0, 0, 0, 0, 0),
(12, '{"1":"Носенко Инесса Исааковна","2":"","3":""}', '{"1":"","2":"","3":""}', 0, '{"1":"","2":"","3":""}', '', '', 'http://goodpro.zp.ua', '["5"]', '[]', '', '', '{"1":"","2":"","3":""}', 1, 0, 0, 0, 0, 0, 0, 0),
(13, '{"1":"Американский объединенный распределительный комитет «Джойнт»","2":"","3":""}', '{"1":"","2":"","3":""}', 0, '{"1":"","2":"","3":""}', '', '', '', '[]', '[]', '', '', '{"1":"","2":"","3":""}', 0, 0, 0, 0, 0, 0, 0, 0),
(14, '{"1":"WJR","2":"","3":""}', '{"1":"","2":"","3":""}', 0, '{"1":"","2":"","3":""}', '', '', '', '[]', '[]', '', '', '{"1":"","2":"","3":""}', 0, 0, 0, 0, 0, 0, 0, 0),
(15, '{"1":"Отдел по делам национальностей и религий ЗОГА ","2":"","3":""}', '{"1":"","2":"","3":""}', 0, '{"1":"","2":"","3":""}', '', '', '', '[]', '[]', '', '', '{"1":"","2":"","3":""}', 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_pages`
--

CREATE TABLE IF NOT EXISTS `sp_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COMMENT 'Название',
  `body` text COMMENT 'Контент',
  `meta` text COMMENT 'Меты теги',
  `description` text,
  `slug` varchar(255) DEFAULT NULL,
  `in_footer` tinyint(4) NOT NULL DEFAULT '0',
  `in_header` tinyint(4) NOT NULL DEFAULT '0',
  `system` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `basket` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Страницы' AUTO_INCREMENT=37 ;

--
-- Дамп данных таблицы `sp_pages`
--

INSERT INTO `sp_pages` (`id`, `name`, `body`, `meta`, `description`, `slug`, `in_footer`, `in_header`, `system`, `weight`, `basket`) VALUES
(2, '{"4":"","3":"Ideas","2":"\\u0406\\u0434\\u0435\\u0457","1":"\\u0418\\u0434\\u0435\\u0438"}', '{"4":"","3":"<p>\\"Ideas\\" page in English.<\\/p>","2":"<p>\\u0426\\u0435 \\u043a\\u043e\\u043d\\u0442\\u0435\\u0442\\u043d \\u0441\\u0442\\u043e\\u0440\\u0456\\u043d\\u0443\\u0438 \\"\\u0406\\u0434\\u0435\\u0457\\" \\u043d\\u0430 \\u0443\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0456\\u0439 \\u043c\\u043e\\u0432\\u0456.<\\/p>","1":"<p>\\u041a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b \\"\\u0418\\u0434\\u0435\\u0438\\"<\\/p>"}', '{"4":"","3":"ideas","2":"\\u0456\\u0434\\u0435\\u0457","1":"\\u0438\\u0434\\u0435\\u0438"}', NULL, 'ideas', 0, 1, 1, 6, 0),
(1, '{"1":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b","2":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438","3":"Projects","4":""}', '{"1":"<p>\\u041a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b \\"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b\\"<\\/p>","2":"<p>\\u0426\\u0435 \\u043a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442 \\u0441\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0438 \\"\\u041f\\u0440\\u043e\\u0454\\u043a\\u0442\\u0438\\" \\u043d\\u0430 \\u0443\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0456\\u0439 \\u043c\\u043e\\u0432\\u0456<\\/p>","3":"<p>Content in English<\\/p>","4":""}', '{"1":"\\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b","2":"\\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438","3":"projects","4":""}', '{"1":"","2":"","3":"","4":""}', 'projects', 0, 1, 1, 2, 0),
(22, '{"1":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","2":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0438","3":"Contact us","4":""}', '{"1":"<h3>\\u041d\\u0430\\u0448\\u0438 \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043d\\u044b\\u0435 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0435:<\\/h3>\\n<p>\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d: (050) 777 88 99<\\/p>\\n<p>skype: myskype<\\/p>\\n<p>ISQ: 8799806545<\\/p>\\n<h3 class=\\"gform_title\\">\\u0421\\u0432\\u044f\\u0436\\u0438\\u0442\\u0435\\u0441\\u044c \\u0441 \\u043d\\u0430\\u043c\\u0438 \\u0447\\u0435\\u0440\\u0435\\u0437 \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043d\\u0443\\u044e \\u0444\\u043e\\u0440\\u043c\\u0443<\\/h3>","2":"<h3>\\u041d\\u0430\\u0448\\u0456 \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043d\\u0456 \\u0434\\u0430\\u043d\\u0456:<\\/h3>\\n<p>\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d: (050) 777 88 99<\\/p>\\n<p>skype: myskype<\\/p>\\n<p>ISQ: 8799806545<\\/p>\\n<h3 class=\\"gform_title\\">\\u0417\\u0432''\\u044f\\u0436\\u0456\\u0442\\u044c\\u0441\\u044f \\u0437 \\u043d\\u0438\\u043c\\u0430 \\u0447\\u0435\\u0440\\u0435\\u0437 \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043d\\u0443 \\u0444\\u043e\\u0440\\u043c\\u0443<\\/h3>","3":"<p>Contact Us<\\/p>","4":""}', '{"1":"\\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","2":"\\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0438","3":"contacts","4":""}', '{"1":"","2":"","3":"","4":""}', 'contacts', 1, 0, 1, 9, 0),
(23, '{"1":"\\u0411\\u043b\\u043e\\u0433","2":"\\u0411\\u043b\\u043e\\u0433","3":""}', '{"1":"","2":"","3":""}', '{"1":"\\u0431\\u043b\\u043e\\u0433","2":"\\u0431\\u043b\\u043e\\u0433, \\u043d\\u043e\\u0432\\u0438\\u043d\\u0438, \\u0430\\u043d\\u043e\\u043d\\u0441\\u0438","3":""}', '{"1":"\\u0431\\u043b\\u043e\\u0433, \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438, \\u0430\\u043d\\u043e\\u043d\\u0441\\u044b","2":"\\u043d\\u043e\\u0432\\u0438\\u043d\\u0438","3":""}', 'blog', 0, 0, 1, 8, 0),
(24, '{"1":"О нас","2":"О нас","3":""}', '{"1":"<table border=\\u00220\\u0022>\\u000A<tbody>\\u000A<tr>\\u000A<td>\\u000A<table style=\\u0022width: 90%; margin-left: 5%;\\u0022 border=\\u00220\\u0022>\\u000A<tbody>\\u000A<tr>\\u000A<td>\\u000A<p>&nbsp;</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022text-align: center;\\u0022><strong><span style=\\u0022font-size: 14.0pt;\\u0022><span style=\\u0022color: #ff6600;\\u0022>Сайт &ndash; &ldquo;Успешный проект&rdquo;</span></span></strong></p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022text-align: justify;\\u0022><br />Освещает проекты, проводимые в социальной сфере, малом и среднем бизнесе Запорожья и &nbsp;Запорожской области. Представляет собой&nbsp;информационное поле с методической базой, для обмена опытом по созданию и реализации инновационных проектов.</p>\\u000A<p class=\\u0022MsoNormal\\u0022><!--[if !supportEmptyParas]-->&nbsp;<!--[endif]--></p>\\u000A<p class=\\u0022MsoNormal\\u0022><strong>Цель сайта:</strong></p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-bottom: 6.0pt;\\u0022>1) Дать полное описание проекта (кто, что, где, зачем, как, опрос общественного мнения, фото и видео отчеты) для того, чтоб любой желающий, в любое время, мог получить исчерпывающую информацию о текущих проектах и о ранее проведенных.</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-bottom: 6.0pt;\\u0022>2) Объединить носителей идей с теми, кто их может разработать и реализовать (разработчики) и с теми, кто может их наполнить материальными средствами (грантодатели, спонсоры, инвесторы).</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-bottom: 6.0pt;\\u0022>&nbsp;</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022text-align: center; margin-bottom: 6.0pt;\\u0022><span class=\\u0022bold\\u0022 style=\\u0022font-size: medium;\\u0022>Формула успешного проекта:</span></p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022text-align: center; margin-bottom: 6.0pt;\\u0022><span style=\\u0022color: #ff6600; font-size: large; font-family: ''comic sans ms'', sans-serif;\\u0022>Идея + Команда + Ресурсы = Успешный проект</span></p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022text-align: center; margin-bottom: 6.0pt;\\u0022><span class=\\u0022bold\\u0022 style=\\u0022font-size: medium;\\u0022>Мы хотим, чтоб вы нашли друг друга :)</span></p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022text-align: center; margin-bottom: 6.0pt;\\u0022><span class=\\u0022bold\\u0022 style=\\u0022font-size: medium;\\u0022><br /></span></p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-bottom: 6.0pt;\\u0022><strong>Возможности:</strong></p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-bottom: 6.0pt;\\u0022><span style=\\u0022font-family: ''Times New Roman''; font-size: 13px;\\u0022>&bull;&nbsp;</span>На сайте предложена <span class=\\u0022bold\\u0022>гибкая система поиска</span>. &nbsp;Вы можете найти проект по категориям, по ключевым словам, по разработчикам, не говоря уже о названии и сроках реализации.&nbsp;</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-bottom: 6.0pt;\\u0022><span style=\\u0022font-family: ''Times New Roman''; font-size: 13px;\\u0022>&bull;&nbsp;</span>Лучше всяких слов о специалисте расскажут результаты его работы. Поэтому максимально позаботились о том, чтоб тот вклад, который участник внес в проект, можно было легко отследить. В каждом проекте есть раздел - <span class=\\u0022bold\\u0022>\\u0022Творческая группа\\u0022</span>.</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-bottom: 6.0pt;\\u0022><span style=\\u0022font-family: ''Times New Roman''; font-size: 13px;\\u0022>&bull;&nbsp;</span>Ну и куда же без партнеров и спонсоров? Для них в каждом проекте почетный раздел - <span class=\\u0022bold\\u0022>\\u0022Партнеры\\u0022</span>.</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-bottom: 6.0pt;\\u0022><span style=\\u0022font-family: ''Times New Roman''; font-size: 13px;\\u0022>&bull;&nbsp;</span>Каждый проект имеет свою ленту обсуждения, поэтому комментарий, замечание, вопрос по проекту Вы можете оставить именно в ней. Для более детального общения - создается <span class=\\u0022bold\\u0022>группа проекта в социальных сетях</span> (вконтакте, твиттер).</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-bottom: 6.0pt;\\u0022><span style=\\u0022font-family: ''Times New Roman''; font-size: 13px;\\u0022>&bull;&nbsp;</span>Ну а если у Вас что-то интересное или особенное, или просто вопрос, не относящейся к конкретному проекту, то напишите его, войдя в пункт нижнего меню <span class=\\u0022bold\\u0022>\\u0022Контакты\\u0022</span>.</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-bottom: 6.0pt;\\u0022><span style=\\u0022font-family: ''Times New Roman''; font-size: 13px;\\u0022>&bull;&nbsp;</span>На сайте можно размещать информацию об успешно запущенных проектах, предварительно связавшись с администратором сайта, войдя в пункт нижнего меню&nbsp;<span class=\\u0022bold\\u0022>\\u0022Контакты\\u0022</span>.</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-bottom: 6.0pt;\\u0022>&nbsp;</p>\\u000A<p class=\\u0022MsoNormal center\\u0022 style=\\u0022margin-bottom: 6.0pt;\\u0022><em>Данный сайт является результатом проекта</em> <a title=\\u0022Открыть данный проект\\u0022 href=\\u0022../project/centerip\\u0022 target=\\u0022_blank\\u0022>\\u0022Центр разработки инновационных проектов\\u0022</a></p>\\u000A</td>\\u000A</tr>\\u000A</tbody>\\u000A</table>\\u000A</td>\\u000A</tr>\\u000A</tbody>\\u000A</table>","2":"","3":""}', '{"1":"о нас","2":"","3":""}', '{"1":"о нас","2":"","3":""}', 'about', 0, 1, 0, 10, 0),
(25, '{"1":"\\u041f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430","2":"\\u041f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430","3":"","4":""}', '{"1":"<p>\\u041f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0430\\u0439\\u0442\\u043e\\u043c:<\\/p>","2":"","3":"","4":""}', '{"1":"\\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430","2":"\\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430","3":"","4":""}', '{"1":"\\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430","2":"","3":"","4":""}', 'terms', 1, 0, 0, 10, 0),
(26, '{"1":"\\u0421\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f","2":"\\u0423\\u0433\\u043e\\u0434\\u0438","3":"","4":""}', '{"1":"<p>\\u041a\\u043e\\u043d\\u0442\\u0435\\u043a\\u0442 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f<\\/p>","2":"","3":"","4":""}', '{"1":"\\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f","2":"","3":"","4":""}', '{"1":"\\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f","2":"","3":"","4":""}', 'conditions', 1, 0, 0, 10, 0),
(27, '{"1":"\\u0420\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b","2":"\\u041c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d","3":""}', '{"1":"","2":"","3":""}', '{"1":"\\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430, \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b, \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438","2":"","3":""}', '{"1":"\\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u044b \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430: \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b \\u0438 \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438","2":"","3":""}', 'shop', 0, 1, 1, 4, 0),
(28, '{"1":"\\u041f\\u043e\\u043c\\u043e\\u0449\\u044c","2":"\\u0414\\u043e\\u043f\\u043e\\u043c\\u043e\\u0433\\u0430","3":"","4":""}', '{"1":"<p>\\u041a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b \\"\\u041f\\u043e\\u043c\\u043e\\u0449\\u044c\\"<\\/p>","2":"","3":"","4":""}', '{"1":"\\u043f\\u043e\\u043c\\u043e\\u0449\\u044c","2":"","3":"","4":""}', '{"1":"\\u043f\\u043e\\u043c\\u043e\\u0449\\u044c","2":"","3":"","4":""}', 'help', 1, 0, 0, 10, 0),
(33, '{"1":"\\u0421\\u043e\\u0431\\u044b\\u0442\\u0438\\u044f","2":"","3":""}', '{"1":"","2":"","3":""}', '{"1":"\\u0441\\u043e\\u0431\\u044b\\u0442\\u0438\\u044f","2":"","3":""}', '{"1":"","2":"","3":""}', 'events', 0, 1, 1, 3, 0),
(34, '{"1":"\\u041f\\u043e\\u043b\\u0435\\u0437\\u043d\\u044b\\u0435 \\u0441\\u0441\\u044b\\u043b\\u043a\\u0438","2":"","3":""}', '{"1":"<p>&nbsp;<\\/p>\\n<p class=\\"MsoNormal\\"><span style=\\"font-family: verdana, geneva; font-size: small;\\"><strong><strong><span style=\\"color: black; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: #f5f5ff; background-position: initial initial; background-repeat: initial initial;\\">\\u041f\\u0440\\u0430\\u0432\\u043e\\u0432\\u043e\\u0439 \\u0424\\u043e\\u0440\\u0443\\u043c \\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u044b<\\/span><\\/strong><\\/strong><\\/span><span lang=\\"EN-US\\">&nbsp; &nbsp;- &nbsp;&nbsp;<\\/span><a href=\\"http:\\/\\/forum.pravoved.in.ua\\/\\" target=\\"_blank\\"><span lang=\\"EN-US\\">http:\\/\\/forum.pravoved.in.ua\\/<\\/span><\\/a><span lang=\\"EN-US\\">&nbsp;<\\/span><\\/p>\\n<p class=\\"MsoNormal\\"><strong><span style=\\"font-size: 9.0pt; font-family: Verdana; color: #999999; background: white;\\"><span style=\\"color: #5176b5; text-decoration: none; text-underline: none;\\"><span style=\\"font-family: verdana, geneva; font-size: small;\\"><strong>\\u0424\\u043e\\u0440\\u0443\\u043c\\u044b \\u0433\\u0430\\u0437\\u0435\\u0442\\u044b \\u0427\\u0410\\u0421\\u0422\\u041d\\u042b\\u0419 \\u041f\\u0420\\u0415\\u0414\\u041f\\u0420\\u0418\\u041d\\u0418\\u041c\\u0410\\u0422\\u0415\\u041b\\u042c<\\/strong> <\\/span>-&nbsp;<\\/span><\\/span><\\/strong><a href=\\"http:\\/\\/chp.com.ua\\/forums\\/\\" target=\\"_blank\\"><span lang=\\"EN-US\\">http:\\/\\/chp.com.ua\\/forums\\/<\\/span><\\/a><\\/p>\\n<p class=\\"MsoNormal\\"><strong><span style=\\"color: #1a1aa6; white-space: pre-wrap; font-family: ''times new roman'', times; font-size: medium;\\"><span style=\\"font-family: verdana, geneva; font-size: small;\\">\\u0418\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b \\u043c\\u0430\\u043b\\u043e\\u0433\\u043e \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0430 <\\/span>- <\\/span><\\/strong><a href=\\"http:\\/\\/projects.innovbusiness.ru\\/\\" target=\\"_blank\\">http:\\/\\/projects.innovbusiness.ru\\/<\\/a><\\/p>","2":"","3":""}', '{"1":"\\u041f\\u043e\\u043b\\u0435\\u0437\\u043d\\u044b\\u0435 \\u0441\\u0441\\u044b\\u043b\\u043a\\u0438","2":"","3":""}', '{"1":"\\u041f\\u043e\\u043b\\u0435\\u0437\\u043d\\u044b\\u0435 \\u0441\\u0441\\u044b\\u043b\\u043a\\u0438","2":"","3":""}', 'usref', 1, 0, 0, 1, 0),
(35, '{"1":"\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438","2":"","3":""}', '{"1":"<p>\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438:<\\/p>\\n<p>- \\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0438<\\/p>\\n<p>- \\u0413\\u0440\\u0430\\u043d\\u0442\\u043e\\u0434\\u0430\\u0442\\u0435\\u043b\\u0438<\\/p>\\n<p>- \\u0421\\u043f\\u043e\\u043d\\u0441\\u043e\\u0440\\u044b<\\/p>\\n<p>- \\u0418\\u043d\\u0432\\u0435\\u0441\\u0442\\u043e\\u0440\\u044b<\\/p>\\n<p>- \\u041a\\u0440\\u0435\\u0430\\u0442\\u0438\\u0432\\u0449\\u0438\\u043a\\u0438<\\/p>\\n<p>- \\u0424\\u0438\\u0437.\\u043b\\u0438\\u0446\\u0430<\\/p>\\n<p>- \\u0412\\u0441\\u0435<\\/p>","2":"","3":""}', '{"1":"\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0438 \\u0413\\u0440\\u0430\\u043d\\u0442\\u043e\\u0434\\u0430\\u0442\\u0435\\u043b\\u0438 \\u0421\\u043f\\u043e\\u043d\\u0441\\u043e\\u0440\\u044b \\u0418\\u043d\\u0432\\u0435\\u0441\\u0442\\u043e\\u0440\\u044b \\u041a\\u0440\\u0435\\u0430\\u0442\\u0438\\u0432\\u0449\\u0438\\u043a\\u0438 \\u0424\\u0438\\u0437.\\u043b\\u0438\\u0446\\u0430","2":"","3":""}', '{"1":"\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u0420\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0447\\u0438\\u043a\\u0438 \\u0413\\u0440\\u0430\\u043d\\u0442\\u043e\\u0434\\u0430\\u0442\\u0435\\u043b\\u0438 \\u0421\\u043f\\u043e\\u043d\\u0441\\u043e\\u0440\\u044b \\u0418\\u043d\\u0432\\u0435\\u0441\\u0442\\u043e\\u0440\\u044b \\u041a\\u0440\\u0435\\u0430\\u0442\\u0438\\u0432\\u0449\\u0438\\u043a\\u0438 \\u0424\\u0438\\u0437.\\u043b\\u0438\\u0446\\u0430","2":"","3":""}', 'organization', 0, 1, 1, 5, 0),
(36, '{"1":"\\u041e\\u0431\\u0443\\u0447\\u0435\\u043d\\u0438\\u0435","2":"","3":""}', '{"1":"<p>\\u041e\\u0431\\u0443\\u0447\\u0435\\u043d\\u0438\\u0435:<\\/p>\\n<p>- \\u0417\\u0430\\u043d\\u044f\\u0442\\u0438\\u044f (\\u041a\\u0443\\u0440\\u0441\\u044b, \\u041c\\u0430\\u0441\\u0442\\u0435\\u0440-\\u043a\\u043b\\u0430\\u0441\\u0441\\u044b, \\u041b\\u0435\\u043a\\u0446\\u0438\\u0438, \\u0421\\u0435\\u043c\\u0438\\u043d\\u0430\\u0440\\u044b)<\\/p>\\n<p>- \\u041c\\u0435\\u0442\\u043e\\u0434\\u0438\\u043a\\u0438<\\/p>\\n<p>- \\u0422\\u0440\\u0435\\u043d\\u0435\\u0440\\u044b (\\u0444\\u0438\\u0437.\\u043b\\u0438\\u0446\\u0430)<\\/p>","2":"","3":""}', '{"1":"\\u041e\\u0431\\u0443\\u0447\\u0435\\u043d\\u0438\\u0435 \\u041a\\u0443\\u0440\\u0441\\u044b \\u041c\\u0430\\u0441\\u0442\\u0435\\u0440-\\u043a\\u043b\\u0430\\u0441\\u0441\\u044b, \\u041b\\u0435\\u043a\\u0446\\u0438\\u0438, \\u0421\\u0435\\u043c\\u0438\\u043d\\u0430\\u0440\\u044b, \\u041c\\u0435\\u0442\\u043e\\u0434\\u0438\\u043a\\u0438, \\u0422\\u0440\\u0435\\u043d\\u0435\\u0440\\u044b","2":"","3":""}', '{"1":"\\u041e\\u0431\\u0443\\u0447\\u0435\\u043d\\u0438\\u0435 \\u041a\\u0443\\u0440\\u0441\\u044b \\u041c\\u0430\\u0441\\u0442\\u0435\\u0440-\\u043a\\u043b\\u0430\\u0441\\u0441\\u044b, \\u041b\\u0435\\u043a\\u0446\\u0438\\u0438, \\u0421\\u0435\\u043c\\u0438\\u043d\\u0430\\u0440\\u044b, \\u041c\\u0435\\u0442\\u043e\\u0434\\u0438\\u043a\\u0438, \\u0422\\u0440\\u0435\\u043d\\u0435\\u0440\\u044b","2":"","3":""}', 'education', 0, 1, 1, 7, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_photos_report`
--

CREATE TABLE IF NOT EXISTS `sp_photos_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Связь дополнительного пректа и фотографий' AUTO_INCREMENT=29 ;

--
-- Дамп данных таблицы `sp_photos_report`
--

INSERT INTO `sp_photos_report` (`id`, `entry_id`, `foto`, `thumb`, `description`) VALUES
(18, 2, 'static/images/entries/joins/big/d9a573da71e3a398b25ef162e4d8cdbd.jpg', 'static/images/entries/joins/small/47d2f21035ea0ba034dba7810160f3ad.jpg', '{"1":"Вместе строим Парк","2":"","3":""}'),
(19, 2, 'static/images/entries/joins/big/2f7b3bd3a764628f343946b2f8b36801.jpg', 'static/images/entries/joins/small/70e23f7605a95e392c253b47f4a4b21d.jpg', '{"1":"Выездные программы","2":"","3":""}'),
(20, 2, 'static/images/entries/joins/big/3fc7cd6812b976699342aa348d72e66f.jpg', 'static/images/entries/joins/small/a3d76bf06294c426b86620b1cc131a1c.jpg', '{"1":"Интересные программы Вместе строим Этнопарк","2":"","3":""}'),
(21, 2, 'static/images/entries/joins/big/3767c7ef0cc96057855571106e890eae.jpg', 'static/images/entries/joins/small/f7208a8e93523ecf4f3338809bcb18b1.jpg', '{"1":"Интересные программы Вместе строим Этнопарк","2":"","3":""}'),
(22, 2, 'static/images/entries/joins/big/25360033b409be7671de4117f6536750.jpg', 'static/images/entries/joins/small/bd21e9b9882c6a9e92f94303e248263b.jpg', '{"1":"мастер-класс по плетению веночков","2":"","3":""}'),
(23, 2, 'static/images/entries/joins/big/65b183fc5735bcf4cbcf7b9599f99a1f.jpg', 'static/images/entries/joins/small/4cba6ba83453c68f339c41c1499b3897.jpg', '{"1":"мастер-класс по плетению камышовых матов","2":"","3":""}'),
(24, 2, 'static/images/entries/joins/big/e15d5638cd52b151476925e70954624a.jpg', 'static/images/entries/joins/small/97c0911edf175f6a34e0931bbde57234.jpg', '{"1":"Первые объекты Этносела","2":"","3":""}'),
(25, 15, 'static/images/entries/joins/big/522a9fc151663692adc95a752371f534.jpg', 'static/images/entries/joins/small/2055ac95277799d92dd50781d79295a3.jpg', '{"1":"","2":"","3":""}'),
(26, 15, 'static/images/entries/joins/big/bf7c4e828ef58e1d6c225b4c66e2320f.jpg', 'static/images/entries/joins/small/f9e191d52504a6cdd2e6799a036a8cbc.jpg', '{"1":"","2":"","3":""}'),
(27, 15, 'static/images/entries/joins/big/be8d1f269671757625a95f50940cb053.jpg', 'static/images/entries/joins/small/0312075e3fe656771b731087de75626b.jpg', '{"1":"","2":"","3":""}'),
(28, 15, 'static/images/entries/joins/big/fc94f5f90ba8a474ea98368a56d86571.jpg', 'static/images/entries/joins/small/501b67d8112b43d4c7c8acb7e21cb396.jpg', '{"1":"","2":"","3":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_places`
--

CREATE TABLE IF NOT EXISTS `sp_places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COMMENT 'Название',
  `address` text COMMENT 'Адрес',
  `road_plan` varchar(255) DEFAULT NULL COMMENT 'План проезда',
  `phones` varchar(255) DEFAULT NULL COMMENT 'Телефоны',
  `place_type` int(11) DEFAULT NULL COMMENT 'Тип места',
  `note` text COMMENT 'Примечание',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Места проведения проектов' AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `sp_places`
--

INSERT INTO `sp_places` (`id`, `name`, `address`, `road_plan`, `phones`, `place_type`, `note`) VALUES
(1, '{"1":"ЗНТУ","2":"ЗНТУ","3":""}', '{"1":"ул. Жуковского 64","2":"ул. Жуковського 64","3":""}', NULL, '15975326', 2, '{"1":"Запорожский национальный университет","2":"<p>Запорізький Національний університет</p>","3":""}'),
(4, '{"1":"с.Червонокозацкое","2":"","3":""}', '{"1":"с. Червонокозацкое, Вольнянский района, Запорожская область","2":"","3":""}', NULL, '', 4, '{"1":"","2":"","3":""}'),
(5, '{"1":"\\u0441.\\u0414\\u0440\\u0443\\u0436\\u0435\\u043b\\u044e\\u0431\\u043e\\u0432\\u043a\\u0430","2":"","3":""}', '{"1":"\\u0441. \\u0414\\u0440\\u0443\\u0436\\u0435\\u043b\\u044e\\u0431\\u043e\\u0432\\u043a\\u0430, \\u0412\\u043e\\u043b\\u044c\\u043d\\u044f\\u043d\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d, \\u0417\\u0430\\u043f\\u043e\\u0440\\u043e\\u0436\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","2":"","3":""}', NULL, '', 4, '{"1":"","2":"","3":""}'),
(6, '{"1":"Запорожье и Запорожская область","2":"","3":""}', '{"1":"","2":"","3":""}', NULL, '', 5, '{"1":"","2":"","3":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_places_categories`
--

CREATE TABLE IF NOT EXISTS `sp_places_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Категории мест проведения проектов' AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `sp_places_categories`
--

INSERT INTO `sp_places_categories` (`id`, `name`) VALUES
(1, '{"1":"\\u0428\\u043a\\u043e\\u043b\\u0430","2":"\\u0428\\u043a\\u043e\\u043b\\u0430","3":"School","4":""}'),
(2, '{"1":"\\u0423\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0438\\u0442\\u0435\\u0442","2":"\\u0423\\u043d\\u0456\\u0432\\u0435\\u0440\\u0441\\u0438\\u0442\\u0435\\u0442","3":"Univercity","4":""}'),
(3, '{"1":"\\u0434\\u0435\\u0442\\u0441\\u043a\\u0438\\u0439 \\u0441\\u0430\\u0434","2":"","3":""}'),
(4, '{"1":"\\u0441\\u0435\\u043b\\u043e","2":"","3":""}'),
(5, '{"1":"Область","2":"","3":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_poll`
--

CREATE TABLE IF NOT EXISTS `sp_poll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `on_page` int(11) NOT NULL DEFAULT '-1',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `basket` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Голосования' AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `sp_poll`
--

INSERT INTO `sp_poll` (`id`, `name`, `date_start`, `date_end`, `active`, `on_page`, `project_id`, `basket`) VALUES
(1, '{"1":"Мнение о сайте?","2":"","3":""}', '2011-10-09', '2012-01-31', 1, 0, 0, 0),
(2, '{"1":"\\u0412\\u0430\\u0448\\u0435 \\u043b\\u044e\\u0431\\u0438\\u043c\\u043e\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0433\\u043e\\u0434\\u0430?","2":"","3":"","4":""}', '2011-10-10', '2011-10-16', 1, 27, 0, 0),
(3, '{"1":"\\u0421\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u0432\\u0430\\u043c \\u043b\\u0435\\u0442?","2":"","3":""}', '2011-10-11', '2011-11-09', 1, -1, 3, 0),
(4, '{"1":"На какой языке вы бы хотели общаться?","2":"","3":""}', '2011-12-15', '2012-01-31', 1, -1, 14, 0),
(5, '{"1":"Вы любите помогать людям?","2":"","3":""}', '2011-12-15', '2012-01-31', 1, -1, 15, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_poll_answers`
--

CREATE TABLE IF NOT EXISTS `sp_poll_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) DEFAULT NULL,
  `name` text,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Ответы на опросы' AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `sp_poll_answers`
--

INSERT INTO `sp_poll_answers` (`id`, `poll_id`, `name`, `image`, `thumb`, `count`) VALUES
(1, 1, '{"1":"\\u041f\\u043b\\u043e\\u0445\\u043e\\u0435","2":"","3":"","4":""}', '', '', 0),
(2, 1, '{"1":"\\u041d\\u043e\\u0440\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0435","2":"","3":"","4":""}', '', '', 2),
(3, 1, '{"1":"\\u0425\\u043e\\u0440\\u043e\\u0448\\u0435\\u0435","2":"","3":"","4":""}', '', '', 3),
(4, 1, '{"1":"\\u041e\\u0442\\u043b\\u0438\\u0447\\u043d\\u043e\\u0435","2":"","3":"","4":""}', '', '', 9),
(6, 2, '{"1":"\\u0417\\u0438\\u043c\\u0430","2":"","3":"","4":""}', 'static/images/entries/pollanswers/big/b350a09ff188c6d49f1a97a22bbaaa1e.jpg', 'static/images/entries/pollanswers/small/f4a9d48cfac113091b4740227e864917.jpg', 1),
(7, 2, '{"1":"\\u0412\\u0435\\u0441\\u043d\\u0430","2":"","3":"","4":""}', 'static/images/entries/pollanswers/big/89ed7fdb597359e2c6608e1be5967b8b.jpg', 'static/images/entries/pollanswers/small/879b399be4425e9b75dfa7a1326530eb.jpg', 2),
(8, 2, '{"1":"\\u041b\\u0435\\u0442\\u043e","2":"","3":"","4":""}', 'static/images/entries/pollanswers/big/2c4ac8ecf3666de6ad8512423e82a7c7.jpg', 'static/images/entries/pollanswers/small/8a7a3430dade0246aebfd1a483687b98.jpg', 0),
(9, 2, '{"1":"\\u041e\\u0441\\u0435\\u043d\\u044c","2":"","3":"","4":""}', 'static/images/entries/pollanswers/big/fc8f4ba66e2af84fb2339cf9ab9e0352.jpg', 'static/images/entries/pollanswers/small/85cb94220a3d75605ed838ca1164aa4a.jpg', 0),
(10, 3, '{"1":"\\u0434\\u043e 16 \\u043b\\u0435\\u0442","2":"","3":""}', '', '', 0),
(11, 3, '{"1":"\\u043e\\u0442 17 \\u0434\\u043e 24 \\u043b\\u0435\\u0442","2":"","3":""}', '', '', 3),
(12, 3, '{"1":"\\u043e\\u0442 25 \\u0434\\u043e 40 \\u043b\\u0435\\u0442","2":"","3":""}', '', '', 2),
(13, 3, '{"1":"\\u043e\\u0442 40 \\u0434\\u043e 60 \\u043b\\u0435\\u0442","2":"","3":""}', '', '', 0),
(14, 4, '{"1":"Английский","2":"","3":""}', '', '', 1),
(15, 4, '{"1":"Французский","2":"","3":""}', '', '', 0),
(16, 4, '{"1":"Немецкий","2":"","3":""}', '', '', 0),
(17, 5, '{"1":"Да, конечно!","2":"","3":""}', '', '', 0),
(18, 5, '{"1":"Иногда","2":"","3":""}', '', '', 0),
(19, 5, '{"1":"Нет, ни при каких обстоятельствах","2":"","3":""}', '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_projects`
--

CREATE TABLE IF NOT EXISTS `sp_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` text,
  `boss` text COMMENT 'Руководитель',
  `initiator` varchar(255) DEFAULT NULL COMMENT 'Инициатор',
  `organizer` varchar(255) DEFAULT NULL COMMENT 'Организатор',
  `date_start` date DEFAULT NULL COMMENT 'Сроки проведения',
  `date_end` date DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL COMMENT 'Место проведения',
  `purpose` text COMMENT 'Цель',
  `short_description` text COMMENT 'Краткое описание проекта',
  `category_id` varchar(255) DEFAULT NULL COMMENT 'Категория проекта',
  `tags` text COMMENT 'Ключевые слова',
  `banner` varchar(1024) DEFAULT NULL COMMENT 'Баннер',
  `logo` varchar(255) DEFAULT NULL COMMENT 'Логотип',
  `thumb` varchar(255) DEFAULT NULL,
  `note` text COMMENT 'Примечание',
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(255) DEFAULT NULL,
  `bg_image` varchar(255) DEFAULT NULL,
  `apply_bg` tinyint(4) NOT NULL DEFAULT '0',
  `bg_header_image` varchar(255) DEFAULT NULL,
  `bg_color` varchar(10) NOT NULL DEFAULT '#fff',
  `menu_font` varchar(10) NOT NULL DEFAULT '#fff',
  `title_color` varchar(10) NOT NULL DEFAULT '#E85700',
  `purpose_color` varchar(10) NOT NULL DEFAULT '#ffffff',
  `banner_bg_color` varchar(10) NOT NULL DEFAULT '#FAA61D',
  `in_process` tinyint(4) NOT NULL DEFAULT '0',
  `map` varchar(255) DEFAULT NULL COMMENT 'gmaps координаты',
  `map_description` text COMMENT 'Описание проезда',
  `contacts` text,
  `facebook_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `vkontakte_link` varchar(255) DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `basket` tinyint(4) NOT NULL DEFAULT '0',
  `resourses` varchar(255) DEFAULT NULL,
  `project_plan` varchar(255) DEFAULT NULL,
  `report` text,
  `application_form` varchar(255) DEFAULT NULL,
  `product_links` text,
  `feedback_links` text,
  `workgroups_links` text,
  `paper` text,
  `business_plan` varchar(255) DEFAULT NULL,
  `scheme_budget` varchar(255) DEFAULT NULL,
  `map_img` varchar(255) DEFAULT NULL,
  `top_event` int(11) DEFAULT NULL,
  `territory` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Таблица проэктов' AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `sp_projects`
--

INSERT INTO `sp_projects` (`id`, `user_id`, `name`, `boss`, `initiator`, `organizer`, `date_start`, `date_end`, `place`, `purpose`, `short_description`, `category_id`, `tags`, `banner`, `logo`, `thumb`, `note`, `post_date`, `slug`, `bg_image`, `apply_bg`, `bg_header_image`, `bg_color`, `menu_font`, `title_color`, `purpose_color`, `banner_bg_color`, `in_process`, `map`, `map_description`, `contacts`, `facebook_link`, `twitter_link`, `vkontakte_link`, `project_id`, `active`, `basket`, `resourses`, `project_plan`, `report`, `application_form`, `product_links`, `feedback_links`, `workgroups_links`, `paper`, `business_plan`, `scheme_budget`, `map_img`, `top_event`, `territory`) VALUES
(2, 22, '{"1":"Этносело","2":"Етносело","3":""}', '{"1":"Инесса Носенко","2":"","3":""}', '["2","3"]', '["3","4"]', '2011-07-01', '2011-12-01', '["4"]', '{"1":"Создать условия для отдыха  и самореализации представителей народов, проживающих в Запорожской области, гостей из других областей Украины, а также туристов из других стран мира путем создания историко-культурного комплекса «Этносело» в Вольнянском районе.Этносело - действующая площадка для демонстрации всего национального потенциала нашего края.","2":"<p>Створення етносел на всій Україні</p>","3":""}', '{"1":"Создание историко-культурного комплекса \\u0022Этносело\\u0022 в Вольнянском районе Запорожской области. ","2":"краткий опис","3":""}', '["14","16","17","19"]', '{"1":"этно, село","2":"етно, село","3":""}', 'static/images/entries/project/big/db4ed74bac30c74bfab8b2914de53a22.gif', 'static/images/entries/project/big/1ef4f57270ac19cfd0a5a0c39ab22479.gif', 'static/images/entries/project/small/710d27e1e70bd6ece82b8ea780570c87.gif', '{"1":"<p><strong>На решение какой проблемы напрален данный проект?</strong></p>\\u000A<p>Отсутствие новых туристических объектов, связанных с поликуртурностью Запорожского края.</p>\\u000A<p>Отсутствие комфортных условий для  отдыха и активного проведения свободного времени туристов разных возрастов и различного социального положения на близлежащих территориях  г. Запорожье. В связи с тем, что с. Червоноказацкое расположено в Вольнянском районе  в отдалении от  работающих предприятий , местным жителям практически нет возможности трудоустроиться, местное население либо занимается собственных подсобным хозяйством либо работает в других населенных пунктах. Местный бюджет от этого теряет возможность своего пополнения.</p>\\u000A<p><strong>Проект соответствует Стратегии регионального развития Запорожской области до 2015 года.</strong></p>\\u000A<p>Приоритетная цель &ndash; Запорожский край &ndash; историко-культурный и курортно-туристический центр национального и международного значения.</p>\\u000A<p>Операционная цель - Использование многонациональной культуры Запорожской области как источника уникальности туристического продукта:</p>\\u000A<p>- внедрение новых форм включения в туристический процесс национально-культурных традиций и их сохранение;</p>\\u000A<p>- использование продукции народных промыслов в региональном турпродукте.</p>","2":"<p>Опис проекту</p>","3":""}', '2011-09-14 14:00:00', 'etnoselo', 'fanky/04original.gif', 1, '', '#ff9900', '#fff', '#E85700', '#ffffff', '#ffffff', 0, '35.4803466796875-47.83390064255037', '{"1":"с. Червонокозацкое, Вольнянсктий района, Запорожская область.","2":"","3":""}', '{"1":"<p><span style=\\u0022color: #333333;\\u0022><span style=\\u0022font-size: 11px;\\u0022> </span></span></p>\\u000A<p>ЗОГО &laquo;Дивосвіт&raquo;:</p>\\u000A<p>&nbsp;</p>\\u000A<p>Руководитель проекта - Носенко Инесса Исааковна</p>\\u000A<p>Координатор проекта - Носенко Людмила Борисовна</p>\\u000A<p>&nbsp;</p>\\u000A<p>Телефон: (061)213-80-90</p>","2":"","3":""}', '', 'http://twitter.com/#!/maksgrant', 'http://vkontakte.ru/wall-23581501_63?hash=e572c5a79e4ed3bf34', 0, 1, 0, '6e2129c0fbb84df6c8bc1a0ce2048994.doc', '', '{"1":"<p>hfhgghghg</p>","2":"","3":""}', '', '{"1":"<p>gjgjgjgjhgjh</p>","2":"","3":""}', '{"1":"<p>gkggjhgjhghjg</p>","2":"","3":""}', '{"1":"<p>asdasd</p>","2":"","3":""}', '{"1":"<p>asdasda</p>","2":"","3":""}', '', '', 'static/images/entries/project/big/adc8e245ea9052bbf22d0f0b492b13f9.gif', 4, '["1"]'),
(3, 22, '{"1":"Сайт \\u0022Успешный проект\\u0022","2":"Успішний прект","3":""}', '{"1":"","2":"","3":""}', '[]', '[]', '2011-09-29', '0000-00-00', '[]', '{"1":"<p>Дать полное описание проекта (кто, что, где, зачем, как, опрос общественного мнения, фото и видео отчеты), чтоб любой желающий, в любое время, мог получить исчерпывающую информацию о текущих проектах и о ранее проведенных.</p>","2":"","3":""}', '{"1":"Создать сайт, который освещает проекты, проводимые в социальной сфере, малом и среднем бизнесе","2":"","3":""}', '["14","16"]', '{"1":"сайт, проект","2":"","3":""}', 'static/images/entries/project/big/4ca73f28d0299f63fe1ef13141c9a936.jpg', 'static/images/entries/project/big/b2067a6da901abae73e2ce3dbb60563d.jpg', 'static/images/entries/project/small/3bba059ae73dbe9bd81eb3bfe61936bf.jpg', '{"1":"<p>Создать сайт, который освещает проекты, проводимые в социальной сфере, малом и среднем бизнесе Запорожья и Запорожской области. Создать информационное поле с методической базой, для обмена опытом по созданию и реализации инновационных<br />проектов.</p>","2":"","3":""}', '2011-09-20 14:00:00', 'sp_project', 'real/09original.gif', 1, '', '#000000', '#ffffff', '#522007', '#145F82', '#F1B90C', 1, '35.057373046875-47.85648143832489', '{"1":"<p>ул. Хортицкая 99, доехать можно только на такси.</p>","2":"","3":""}', '{"1":"<p><span class=\\u0022bold\\u0022>skype:</span> maksdominator</p>\\u000A<p><span class=\\u0022bold\\u0022>ISQ:</span> 456889097</p>\\u000A<p><span class=\\u0022bold\\u0022>тел:</span> 068-959-49-46</p>","2":"","3":""}', 'http://facebook.com', 'http://twitter.com', 'http://vkontakte.com', 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '[]'),
(8, 22, '{"1":"Мир творчества","2":"","3":""}', '{"1":"","2":"","3":""}', '[]', '[]', '0000-00-00', '0000-00-00', '[]', '{"1":"<p><span style=\\u0022font-family: ''times new roman'',times; font-size: medium; color: #000000;\\u0022>Проект направлен на поддержку независимой жизни и труда детей, людей с ограниченными возможностями и детей-сирот, живущих как в интернетых учереждениях, так и в семьях. Проект напрвлен на развитие жизненных навыков и трудового потенциала целевой группы.</span></p>","2":"","3":""}', '{"1":"Проект направлен на поддержку независимой жизни и труда детей, людей с ограниченными возможностями и детей-сирот, живущих как в интернетых учереждениях, так и в семьях.","2":"","3":""}', '["14","17","18"]', '{"1":"","2":"","3":""}', 'static/images/entries/project/big/7f35a9b426b3febdf6ba757f1cd48fca.jpg', 'static/images/entries/project/big/6b35e9b63c989915b2d45fe51f3a57fe.jpg', 'static/images/entries/project/small/84a4e394e4b6aad8fdcd4297fd4771c1.jpg', '{"1":"<div class=\\u0022full\\u0022 style=\\u0022background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 8px;\\u0022>\\u000A<p>Проект \\u0022Мир творчества\\u0022 направлен на поддержку независимой жизни и труда детей, людей с ограниченными возможностями и детей-сирот, живущих как в интернетых учереждениях, так и в семьях. Проект напрвлен на развитие жизненных навыков и трудового потенциала целевой группы.</p>\\u000A<p>Проект \\u0022Мир творчества\\u0022&nbsp;оказывает помощь в производстве социального продукта и его продвижение на рынке - выставки-продажи, &nbsp;заказы. В ходе проекта большая часть мастер-классов проводится детьми и людьми с ограниченными возможностями и детьми-сиротами при поддержке специалистов и волонтеров.</p>\\u000A<p>Проект \\u0022Мир творчества\\u0022&nbsp; проводит семинары, конференции, занятия для детей с особыми потребностями и их семей, для детей сирот, семей с приемными детьми, учащимися интернатных учереждений по темам: Жизненные навыки, Образование и Выбор професси.</p>\\u000A</div>","2":"","3":""}', '2011-11-03 06:13:52', 'mirtvor', 'base/13original.gif', 1, '', '#fff', '#ffffff', '#000', '#ffffff', '#ffffff', 0, '35.03265380859375-47.87030156386572', '{"1":"","2":"","3":""}', '{"1":"","2":"","3":""}', '', '', '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '[]'),
(9, 22, '{"1":"Клуб для пожилых «Здоровое старение» ","2":"","3":""}', '{"1":"","2":"","3":""}', '[]', '[]', '2011-10-01', '0000-00-00', '[]', '{"1":"<p class=\\u0022MsoNormal\\u0022><span style=\\u0022color: #000000;\\u0022>Поддержать пожилых людей, особенно жертв тоталитарных режимов, привлечь их в жизнь Запорожской общины, дать возможность обрести уверенность в себе, проявить свои способности, поделиться своими знаниями и опытом, получить опыт самовыражения.</span></p>","2":"","3":""}', '{"1":"Создание программ клуба, способствующих реализации творческих способностей и самовыражению посетителей клуба. ","2":"","3":""}', '["14","17"]', '{"1":"","2":"","3":""}', 'static/images/entries/project/big/c49ef516aad2d07141a1ff0c25c54187.jpg', 'static/images/entries/project/big/ec986b03505adbd14280f2efadd33af5.jpg', 'static/images/entries/project/small/683aba466bfc3f74079d4b85d59346c1.jpg', '{"1":"<div style=\\u0022background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 8px;\\u0022>\\u000A<p><span style=\\u0022font-family: ''times new roman'', times; font-size: medium; color: #000000;\\u0022>Цели проекта:</span></p>\\u000A<ul>\\u000A<li><span class=\\u0022example1\\u0022 style=\\u0022font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>поддержать пожилых людей, особенно жертв тоталитарных режимов;</span></li>\\u000A</ul>\\u000A<p class=\\u0022MsoNormal\\u0022><span class=\\u0022example1\\u0022 style=\\u0022left: -3.799999952316284%; position: absolute; font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>&nbsp;</span></p>\\u000A<div>\\u000A<ul>\\u000A<li><span class=\\u0022example1\\u0022 style=\\u0022font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>привлечь их в жизнь Запорожской общины; </span></li>\\u000A</ul>\\u000A</div>\\u000A<p class=\\u0022MsoNormal\\u0022><span class=\\u0022example1\\u0022 style=\\u0022left: -3.4800000190734863%; position: absolute; font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>&nbsp;</span></p>\\u000A<div>\\u000A<ul>\\u000A<li><span class=\\u0022example1\\u0022 style=\\u0022font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>дать возможность обрести уверенность в себе; </span></li>\\u000A</ul>\\u000A</div>\\u000A<p class=\\u0022MsoNormal\\u0022><span class=\\u0022example1\\u0022 style=\\u0022left: -4.039999961853027%; position: absolute; font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>&nbsp;</span></p>\\u000A<div>\\u000A<ul>\\u000A<li><span class=\\u0022example1\\u0022 style=\\u0022font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>проявить свои способности; </span></li>\\u000A</ul>\\u000A</div>\\u000A<p class=\\u0022MsoNormal\\u0022><span class=\\u0022example1\\u0022 style=\\u0022left: -4.039999961853027%; position: absolute; font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>&nbsp;</span></p>\\u000A<div>\\u000A<ul>\\u000A<li><span class=\\u0022example1\\u0022 style=\\u0022font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>поделиться своими знаниями и опытом; </span></li>\\u000A</ul>\\u000A</div>\\u000A<p class=\\u0022MsoNormal\\u0022><span class=\\u0022example1\\u0022 style=\\u0022left: -4.039999961853027%; position: absolute; font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>&nbsp;</span></p>\\u000A<div>\\u000A<ul>\\u000A<li><span class=\\u0022example1\\u0022 style=\\u0022font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>получить опыт самовыражения; </span></li>\\u000A</ul>\\u000A</div>\\u000A<p class=\\u0022MsoNormal\\u0022><span class=\\u0022example1\\u0022 style=\\u0022left: -4.039999961853027%; position: absolute; font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>&nbsp;</span></p>\\u000A<div>\\u000A<ul>\\u000A<li><span class=\\u0022example1\\u0022 style=\\u0022font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>улучшить качество жизни; </span></li>\\u000A</ul>\\u000A</div>\\u000A<p class=\\u0022MsoNormal\\u0022><span class=\\u0022example1\\u0022 style=\\u0022left: -4.039999961853027%; position: absolute; font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>&nbsp;</span></p>\\u000A<div>\\u000A<ul>\\u000A<li><span class=\\u0022example1\\u0022 style=\\u0022font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>создать диалог между поколениями.</span></li>\\u000A</ul>\\u000A</div>\\u000A<div>\\u000A<h1><span class=\\u0022example1\\u0022 style=\\u0022font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>Задачи проекта:</span><span class=\\u0022example1\\u0022 style=\\u0022font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>&nbsp;</span></h1>\\u000A<ul>\\u000A<li><span style=\\u0022font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022><span style=\\u0022font: normal normal normal 7pt/normal ''Times New Roman'';\\u0022>&nbsp;</span>Объединение пожилых людей, особенно жертв тоталитарных режимов через просветительскую работу и совместное времяпрепровождение;</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><span class=\\u0022example1\\u0022 style=\\u0022font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>Привлечение пожилых людей, особенно жертв тоталитарных режимов к волонтерской деятельности.</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><span class=\\u0022example1\\u0022 style=\\u0022font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>Создание программ клуба, способствующих реализации творческих способностей и самовыражению посетителей клуба.</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><span class=\\u0022example1\\u0022 style=\\u0022font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022><span style=\\u0022font: normal normal normal 7pt/normal ''Times New Roman'';\\u0022> </span>Осуществление связи и диалога поколений в общине Запорожья и области.</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><span class=\\u0022example1\\u0022 style=\\u0022font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>Борьба с негативными стереотипами отношения к старости.</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><span class=\\u0022example1\\u0022 style=\\u0022font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>Знакомство детей и подростков с внутренним миром пожилого человека, создание пространства для диалога.</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><span class=\\u0022example1\\u0022 style=\\u0022font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>Создание престарелых атмосферы уверенности в завтрашнем дне.</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><span class=\\u0022example1\\u0022 style=\\u0022font-family: ''times new roman'', times; background-color: #ffffff; font-size: medium; color: #000000;\\u0022>Осуществление программ оздоровительной физкультуры.</span></li>\\u000A</ul>\\u000A</div>\\u000A<p>&nbsp;</p>\\u000A</div>","2":"","3":""}', '2011-11-03 06:47:40', 'clubold', 'base/16original.gif', 1, '', '#fff', '#ffffff', '#000', '#ffffff', '#ffffff', 0, '', '{"1":"","2":"","3":""}', '{"1":"","2":"","3":""}', '', '', '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '[]'),
(7, 22, '{"1":"Центр разработки инновационных проектов","2":"","3":""}', '{"1":"","2":"","3":""}', '[]', '[]', '2011-01-01', '2011-12-01', '[]', '{"1":"<p>Создать \\u0022Центр разработки и внедрения инновационных проектов\\u0022 на базе историко-туристического комплекса \\u0022Этносело\\u0022 в Вольнянском районе Запорожской области.</p>","2":"","3":""}', '{"1":"Создание центра для подготовки, разработки, апробации мини-проектов, пилотных проектов и их последующего внедрения субъектами предпринимательской деятельности, НГО, НКО, физ.лицам в сельской местности.","2":"","3":""}', '["14","16","17"]', '{"1":"Проекты, инновации, методики, успешные проекты, реализованные проекты","2":"","3":""}', 'static/images/entries/project/big/de8adb0401d11afcf75203269cf57c39.jpg', 'static/images/entries/project/big/0defa6048e94f70f4a70cd4f65ef5606.jpg', 'static/images/entries/project/small/f79efb3a17de24e88e2f8f63104383ba.jpg', '{"1":"<p class=\\u0022MsoNormal full\\u0022 style=\\u0022text-align: justify;\\u0022>Отсутствие возможностей развития сельской территории и создания и развития мелкого и среднего бизнеса на селе.</p>\\u000A<p class=\\u0022MsoNormal full\\u0022 style=\\u0022text-align: justify;\\u0022>Отсутствие информационного поля, обучающего центра, методической базы для получения,обмена и обсуждения уже существующего опыта по созданию и реализации новых креативных программ и проектов в сельской местности.</p>\\u000A<p class=\\u0022full\\u0022>\\u0022Центр\\u0022 создает условия для подготовки, разработки, апробации  мини-проектов, пилотных проектов и их последующего внедрения субъектам  предпринимательской деятельности, НГО, НКО, физ.лицам в сельской  местности.</p>\\u000A<p class=\\u0022MsoNormal full\\u0022>Проект соответствует приоритетам<span style=\\u0022font-size: 14.0pt; mso-font-kerning: 12.0pt;\\u0022>&nbsp;&nbsp;</span>Комплексной программыразвития малого предпринимательства в Запорожской области на 2011 &ndash; 2012гг. &ndash; &laquo;Развитие малого и среднего бизнеса в Запорожской области, создание рабочих мест&raquo;:</p>\\u000A<p class=\\u0022MsoNormal full\\u0022>&nbsp;Создать благоприятный инвестиционный климат, развитие инфраструктуры&nbsp;  поддержки малого предпринимательства, в том числе в малых городах и  сельской местности - создание инновационного инновационного парка в  сельской местности.</p>","2":"","3":""}', '2011-11-03 04:51:40', 'centerip', 'base/52original.gif', 1, '', '#fff', '#ffffff', '#000', '#ffffff', '#000000', 0, '35.52978515625-47.96785877999253', '{"1":"","2":"","3":""}', '{"1":"<p>Контакты</p>","2":"","3":""}', '', '', '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '[]'),
(10, 22, '{"1":"Абилитационная программа для  детей и молодых людей с особыми потребностями и их родителей","2":"","3":""}', '{"1":"","2":"","3":""}', '[]', '[]', '0000-00-00', '0000-00-00', '[]', '{"1":"<p class=\\u0022MsoNormal\\u0022 style=\\u0022text-align: justify;\\u0022><span style=\\u0022color: #ff6600;\\u0022><strong></strong><span style=\\u0022color: #000000;\\u0022>предоставление комплекса социальных и социально-педагогических услуг семьям, которые воспитывают детей и молодых людей с особыми потребностями. </span></span></p>","2":"","3":""}', '{"1":"Предоставление комплекса социальных и социально-педагогических услуг семьям, которые воспитывают детей и молодых людей с особыми потребностями. ","2":"","3":""}', '["14"]', '{"1":"","2":"","3":""}', 'static/images/entries/project/big/28d694f68a69438d8fa0591ed649d0c8.gif', 'static/images/entries/project/big/ca74bd6e2706c62aeb270168723073c4.jpg', 'static/images/entries/project/small/7381a9de0c34e84ba82a60921550550c.jpg', '{"1":"<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin: 0cm 2.85pt 0.0001pt; text-align: justify; text-indent: 35.45pt;\\u0022><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><strong>Главные принципы программы</strong> &ndash; участие в комплексных реабилитационных, абилитационных, культурных и образовательных занятиях и активность родителей и детей, направленная на развитие и сохранение возможности детей и их адаптацию.</span></p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-top: 0cm; margin-right: 2.85pt; margin-bottom: .0001pt; margin-left: 2.85pt; text-align: justify; text-indent: 35.45pt;\\u0022><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><br /></span></p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-top: 0cm; margin-right: 2.85pt; margin-bottom: .0001pt; margin-left: 2.85pt; text-align: justify; text-indent: 35.45pt;\\u0022><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><strong>Задачи программы:</strong></span></p>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><span style=\\u0022font: 7.0pt;\\u0022><strong>&nbsp;</strong></span><!--[endif]-->Проведение диагностики психического, физического, интеллектуального развития <span lang=\\u0022UK\\u0022>детей и молодых людей с особыми потребностями</span><span lang=\\u0022UK\\u0022> </span>с целью дальнейшего планирования форм и методов коррекционно-развивающей работы; </span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><span style=\\u0022font: 7.0pt;\\u0022>&nbsp;</span><!--[endif]-->Составление и реализация индивидуальных программ абилитации детей и молодых людей с особыми потребностями;</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><span style=\\u0022font: 7.0pt;\\u0022>&nbsp;</span>Организация и проведение коррекционных и развивающих занятий с узкими специалистами.</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022>Обеспечение режима временного пребывания детей и молодых людей с особыми потребностями в группе дневного посещения с учетом их семейных обстоятельств и интересов;</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><span style=\\u0022font: 7.0pt;\\u0022>&nbsp;</span><!--[endif]-->Оказание психологической и социальной помощи детям и молодым людям с особыми потребностями и их родителям;</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><span style=\\u0022font: 7.0pt;\\u0022>&nbsp;</span><!--[endif]-->Организация досуга детей и молодых людей с особыми потребностями, проведение лечебно-оздоровительных и профилактических мероприятий, выездных оздоровительно &ndash; развлекательных семинаров; </span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022>Организация помощи в трудоустройстве и\\u005Cили получении высшего образования взрослым людям с особыми потребностями;</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><span style=\\u0022font: 7.0pt;\\u0022>&nbsp;</span><!--[endif]-->Привлечение узких специалистов (врачей, юристов, психологов, психотерапевтов) для проведения образовательных семинаров для родителей детей и молодых людей с особыми потребностями;</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022>Организация волонтерского движения детей и молодых людей с особыми потребностями;</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022>Привлечение к сотрудничеству взрослых людей с особыми потребностями;</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022>Привлечение к сотрудничеству городских обществ инвалидов и их родителей;</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><span style=\\u0022font: 7.0pt;\\u0022> </span><!--[endif]-->Возрождение еврейского самосознания родителей и детей через участие в традиционных еврейских праздниках;</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022>Интеграция детей с особыми потребностями в коллектив здоровых детей путем проведения совместных праздников и мероприятий.</span></li>\\u000A</ul>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-top: 0cm; margin-right: 2.85pt; margin-bottom: .0001pt; margin-left: 2.85pt; text-align: justify; text-indent: -2.85pt; mso-list: l1 level1 lfo1; tab-stops: list 12.0pt 48.0pt;\\u0022><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><br /></span></p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-top: 0cm; margin-right: 2.85pt; margin-bottom: .0001pt; margin-left: 35.4pt; text-align: justify; text-indent: 2.9pt;\\u0022><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><strong>Направления работы:</strong></span></p>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022>социальная реабилитация, </span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><!--[endif]-->коррекция и\\u005Cили компенсация утраченных или нарушенных возможностей развития детей; </span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022>проведение развлекательных мероприятий для детей и их родителей; </span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><!--[endif]-->социальная адаптация, развитие и совершенствование бытовых навыков у детей и молодых людей с особыми потребностями; </span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><!--[endif]-->ознакомление детей и родителей с основами еврейской традиции через участие в праздновании знаменательных событий еврейского календаря, проведение семейных Шаббатов; </span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><!--[endif]-->организация психологической поддержки родителям детей и молодых людей с особыми потребностями на занятиях Женского клуба;</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><!--[endif]-->организация консультативной помощи родителям по интересующим их вопросам;</span></li>\\u000A</ul>\\u000A<ul>\\u000A<li><!--[if !supportLists]--><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><!--[endif]-->создание условий для организации Группы самопомощи родителей детей и молодых людей с особыми потребностями.</span></li>\\u000A</ul>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-top: 0cm; margin-right: 2.85pt; margin-bottom: .0001pt; margin-left: 2.85pt; text-align: justify; text-indent: 35.45pt;\\u0022><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><strong>Клиентами программы </strong>являются дети <span lang=\\u0022UK\\u0022>и молодые люди </span>с ограниченными возможностями еврейского и нееврейского происхождения возрастом от 0 до 45 лет. </span></p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-top: 0cm; margin-right: 2.85pt; margin-bottom: .0001pt; margin-left: 2.85pt; text-align: justify; text-indent: 35.45pt;\\u0022>&nbsp;</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-top: 0cm; margin-right: 2.85pt; margin-bottom: .0001pt; margin-left: 2.85pt; text-align: justify; text-indent: 35.45pt;\\u0022><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><strong>Ответственный: </strong>Дорошенко И.Н.</span></p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-top: 0cm; margin-right: 2.85pt; margin-bottom: .0001pt; margin-left: 2.85pt; text-align: justify; text-indent: 35.45pt;\\u0022>&nbsp;</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-top: 0cm; margin-right: 2.85pt; margin-bottom: .0001pt; margin-left: 2.85pt; text-align: justify; text-indent: 35.45pt;\\u0022><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><strong>Постоянные &nbsp;специалисты: </strong>Ремпель Ж.А., Минакова К.Л.</span></p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-top: 0cm; margin-right: 2.85pt; margin-bottom: .0001pt; margin-left: 2.85pt; text-align: justify; text-indent: 35.45pt;\\u0022>&nbsp;</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin-top: 0cm; margin-right: 2.85pt; margin-bottom: .0001pt; margin-left: 2.85pt; text-align: justify; text-indent: 35.45pt;\\u0022><span style=\\u0022font-family: verdana, geneva; font-size: small;\\u0022><strong>Результаты реализации программы: </strong>возрождение традиционных ценностей еврейской семьи, ознакомление с культурой иудаизма нееврейских клиентов программы, формирование толерантного отношения друг к другу среди участников программы; максимальные коррекция&nbsp; и развитие сохранных возможностей жизнедеятельности детей, формирование у родителей детей и молодых людей с ограниченными возможностями активной позиции по отношению к воспитанию своих детей.</span></p>","2":"","3":""}', '2011-11-03 15:42:06', 'abilitac', 'dotted/40original.gif', 1, '', '#fff', '#ffffff', '#000', '#ffffff', '#D9BE9F', 0, '', '{"1":"","2":"","3":""}', '{"1":"","2":"","3":""}', '', '', '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '[]'),
(12, 22, '{"1":"Виховання майбутнього","2":"","3":""}', '{"1":"Гладишев Олексій Сергійович","2":"","3":""}', '[]', '["11"]', '2010-05-01', '2012-09-01', '["5"]', '{"1":"Розв’язання найбільш актуальної проблеми в Дружелюбівській сільській раді - надання змоги дітям розвиватися та отримувати належну дошкільну освіту, а їх батькам працевлаштуватись, шляхом відкриття дитячого садку на 40 місць в 2012році.","2":"","3":""}', '{"1":"Cтворення дитячого садку естетичного виховання у селі Дружелюбівка.","2":"","3":""}', '["14"]', '{"1":"дети, детский сад","2":"","3":""}', 'static/images/entries/project/big/52627f6eae6c2181f3a64b8b622dcdad.gif', 'static/images/entries/project/big/16d59b97e973db3e63b3caa262fc043b.gif', 'static/images/entries/project/small/d0aea7a9c941761fc6bfcfd00f021668.gif', '{"1":"<p>До 1997 року у селі Дружелюбівка функціонував дитячий садок, який належав Дружелюбівському виправному центру № 1, та за рішенням керівництва вказаного підприємства був закритий, як нерентабельний заклад. Приміщення дитячого садку довгий час не використовувалось. У 2004 році будівля була продана податковою інспекцією за борги даного підприємства. На сьогодні, в ній розташоване приватне підприємство \\u0022Транзит-Плюс\\u0022. <br /> <br /> Нині в Дружелюбівській сільській раді не існує дитячого садку, а дитячі садки інших сільських рад занадто переповнені та занадто віддалені. За бажанням батьків, кількість дітей, яка буде відвідувати дитячий садок становить понад 40 осіб. Вже існує маршрут та транспорт для підвезення дітей, а також слід зазначити, що будівля де планується відкрити дитячий садок, має зручне розташування (в селі з найбільшою кількістю жителів - 444 чол.) На даний час, у сільській раді нараховується 96 громадян, віком до шести років. <br /> <br /> Однією з найголовніших проблем Дружелюбівської сільської ради є відсутність можливості отримання дітьми дошкільного віку належного виховання, а шлях до її вирішення лежить через створення дитячого садку естетичного виховання. <br /> <br /> Також проблемою є неможливість влаштування на роботу та втрачання професійної придатності з плином часу одного з батьків дитини, оскільки батьки вимушені виховувати дітей самостійно до досягнення шестирічного віку. <br /> <br /> У разі створення дитячого садку естетичного виховання вирішиться ряд важливих проблем: <br /> &bull;          Створення додаткових умов для всебічного розвитку особистості дитини; <br /> &bull;          Оздоровлення та покращення рівня підготовки дітей до школи; <br /> &bull;          Збільшення кількості працевлаштованих; <br /> &bull;          Поява нових робочих місць; <br /> &bull;          Збільшення кількості платників податків; <br /> &bull;          Покращення рівня соціальної інфраструктури. <br /><br /> Результати проекту спрямовані на населення віком від 3 до 6 років та від 18 до 60 років. Підставою для визначення цільових груп є діти дошкільного віку, які повинні відвідувати дитячий садок, а саме від 3 до 6 років та їх батьки, віком від 18 до 60 років. <br /> <br /> Згідно даних статистики 96 дітей не можуть отримати належного дошкільного виховання, та стільки ж батьків, які не можуть працевлаштуватися. <br /> <br /> Зі створенням вказаного дошкільного дитячого закладу буде досягнена головна мета &ndash; всебічно, гармонійно, духовно розвинені діти, з певним набором естетичних знань, навичок та умінь, як сукупності духовного багатства індивіда.</p>","2":"","3":""}', '2011-11-29 19:32:18', 'vm', 'base/13original.gif', 1, '', '#fff', '#ffffff', '#ffffff', '#ffffff', '#FAA61D', 0, '35.381813049316406-47.89516850516946', '{"1":"с. Дружелюбовка, Вольнянский район, Запорожская область","2":"","3":""}', '{"1":"<p><span style=\\u0022font-size: 12.0pt;\\u0022 lang=\\u0022UK\\u0022>Гладишев Олексій Сергійович</span></p>","2":"","3":""}', '', '', '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '["2"]');
INSERT INTO `sp_projects` (`id`, `user_id`, `name`, `boss`, `initiator`, `organizer`, `date_start`, `date_end`, `place`, `purpose`, `short_description`, `category_id`, `tags`, `banner`, `logo`, `thumb`, `note`, `post_date`, `slug`, `bg_image`, `apply_bg`, `bg_header_image`, `bg_color`, `menu_font`, `title_color`, `purpose_color`, `banner_bg_color`, `in_process`, `map`, `map_description`, `contacts`, `facebook_link`, `twitter_link`, `vkontakte_link`, `project_id`, `active`, `basket`, `resourses`, `project_plan`, `report`, `application_form`, `product_links`, `feedback_links`, `workgroups_links`, `paper`, `business_plan`, `scheme_budget`, `map_img`, `top_event`, `territory`) VALUES
(13, 22, '{"1":"Проект «Школа межнационального общения»","2":"","3":""}', '{"1":"Носенко Инесса Исааковна","2":"","3":""}', '["12"]', '["4"]', '2005-09-01', '0000-00-00', '[]', '{"1":"Создать систему, которая бы на постоянной основе представляла интересы разных общественных структур, а также научить руководителей и представителей национально-культурных обществ строить свою работу в этой системе самостоятельно, без вмешательства со стороны органов местного самоуправления, уметь аргументированно отстаивать права национальных меньшинств, чтобы не допустить в украинском гражданском обществе межнациональную вражду и социальную несправедливость.","2":"","3":""}', '{"1":"","2":"","3":""}', '["14"]', '{"1":"Народы, национальности, национально-культурные общества, толерантность","2":"","3":""}', 'static/images/entries/project/big/d32778b358a7911789549eeececcdd95.jpg', 'static/images/entries/project/big/3121359918fe283f658eafb92fc2c0bf.jpg', 'static/images/entries/project/small/07d0b2ce272362be0da563287b1272d4.jpg', '{"1":"<p>Представление интересов и защита прав,   объединения, систематическое сопровождение и координацию работы   национально-культурных обществ Запорожья по воспитанию толерантности и   сохранению исторической памяти и культуры народов, проживающих на территории   области и Украины в целом, с целью создания влияния по общественному мнению и   политике, для того, чтобы сообщество приблизилось к справедливому и   достойному обществу; развитие местной филантропии и местных инициатив для   улучшении качества работы местных громад. На примере ЕГЦ &laquo;Мазаль тов&raquo;, который в настоящий момент получает благотворительные взносы в размере 30-40% от полученных грантовых денег, НКТ региона могут совместными усилиями создать самодостаточные национальные общества, профессионально управляющие пожертвованиями, способными сформировать ендавмент как постоянный источник доходов и обеспечения стабильности организации.</p>","2":"","3":""}', '2011-12-15 18:02:30', 'school_of_communication', 'dirty/25original.gif', 1, '', '#fff', '#333', '#333', '#000', '#FAA61D', 0, '', '{"1":"","2":"","3":""}', '{"1":"","2":"","3":""}', '', 'http://twitter.com/#!/maksgrant', '', 0, 1, 0, 'e993f6be637830cda851d6f394a004ef.doc', '', '{"1":"<p>Проект &bdquo;Школа межнационального общения&rdquo; направленный на  то, чтобы национально-культурные общества получили необходимые для самостоятельной работы знания, умения, получили пакеты необходимой информации. Деятельность проекта состоит из семинаров, тренингов, круглых столов, консультирования, информационной поддержки, а также массовых мероприятий общекультурной и общественной направленности. Формы встреч сориентированы на разные возрастные аудитории: детскую, молодежную и для взрослых людей и происходят в разных формах: тренинг, деловая игра, беседа, обмен опытом, ролевая игра, практическое занятие и другое, но общим для них является интерактивный диалог, познавательная направленность, воспитание лидерских навыков, в участниках, общее творчество. Планируется создание интернет-портала негосударственных и национально-культурных организаций Запорожской области для обмена информацией и налаживания взаимодействия.</p>","2":"","3":""}', '', '{"1":"<p>Участники национально-культурных обществ принимают участие в мероприятиях и проектах, которые направлены на выявление общих черт в разнообразных культурах, общих моментов истории, средств совместной социальной и общественной работы. Для руководителей национально-культурных обществ проектом предлагается учеба на семинарах и тренингах по проблемам планирования работы, администрирования и организационного обеспечения общественных организаций, по работе с социально незащищенными слоями населения, пакет документов и консультирования по фандрейзингу для общественных организаций, юридическое консультирование, информационная поддержка деятельности, обмен опытом и другой. Дважды на год запланированы выездные семинары для участников и руководителей национально-культурных обществ, где в течение нескольких дней они будут иметь возможность обмениваться опытом, планировать совместимые мероприятия и программы, получать дополнительные знания и навыки общественной работы.</p>","2":"","3":""}', '{"1":"<p><a href=\\u0022http://ngo.zp.ua/index.php?option=com_content&amp;task=view&amp;id=1190&amp;Itemid=42 http://vkontakte.ru/club23581501#/club23581501?z=photo-23581501_238518726%2Fc6a623a5967ba2e5c9\\u0022>http://ngo.zp.ua/index.php?option=com_content&amp;task=view&amp;id=1190&amp;Itemid=42 http://vkontakte.ru/club23581501#/club23581501?z=photo-23581501_238518726%2Fc6a623a5967ba2e5c9</a></p>\\u000A<p>&laquo;ДЕЛАТЬ НА ЗЕМЛЕ ЧТО-ТО ХОРОШЕЕ&raquo;</p>\\u000A<p><!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal</w:View> <w:Zoom>0</w:Zoom> <w:PunctuationKerning /> <w:ValidateAgainstSchemas /> <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false</w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText> <w:Compatibility> <w:BreakWrappedTables /> <w:SnapToGridInCell /> <w:WrapTextWithPunct /> <w:UseAsianBreakRules /> <w:DontGrowAutofit /> </w:Compatibility> <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel> </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\\u0022false\\u0022 LatentStyleCount=\\u0022156\\u0022> </w:LatentStyles> </xml><![endif]--><!--[if gte mso 10]>\\u000A<style>\\u000A /* Style Definitions */\\u000A table.MsoNormalTable\\u000A\\u0009{mso-style-name:\\u0022Обычная таблица\\u0022;\\u000A\\u0009mso-tstyle-rowband-size:0;\\u000A\\u0009mso-tstyle-colband-size:0;\\u000A\\u0009mso-style-noshow:yes;\\u000A\\u0009mso-style-parent:\\u0022\\u0022;\\u000A\\u0009mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\\u000A\\u0009mso-para-margin:0cm;\\u000A\\u0009mso-para-margin-bottom:.0001pt;\\u000A\\u0009mso-pagination:widow-orphan;\\u000A\\u0009font-size:10.0pt;\\u000A\\u0009font-family:\\u0022Times New Roman\\u0022;\\u000A\\u0009mso-ansi-language:#0400;\\u000A\\u0009mso-fareast-language:#0400;\\u000A\\u0009mso-bidi-language:#0400;}\\u000A</style>\\u000A<![endif]--></p>\\u000A<p class=\\u0022MsoNormal\\u0022>В сентябре прошлого года мы публиковали информацию о создании историко-туристического комплекса &laquo;Этносело&raquo; в Вольнянском районе Запорожской области. Недавно мы снова побывали в этом месте. На однодневную программу выходного дня, состоявшуюся 16-го апреля в селе Червонокозацком, были приглашены представители Немецкого культурного центра, греческого общества &laquo;Эллада&raquo;, грузинского общества им. Ш. Руставели, члены Еврейского общинного центра &laquo;Мазаль Тов&raquo; (Запорожье), волонтеры из организации &laquo;Твори добро, Украина!&raquo; и многие другие.</p>\\u000A<p class=\\u0022MsoNormal\\u0022>Теперь совсем уже скоро здесь раскинется настоящий этно-культурный и рекреационный центр, в котором можно будет узнать много интересного о жизни, быте, культуре народов, проживавших на территории этого края. Уже сегодня рядом с будущим этнографическим селом очищен ставок (к лету здесь будет вымощен песчаный пляж), высажены первые деревья.</p>\\u000A<p class=\\u0022MsoNormal\\u0022><span>&nbsp;</span>Всем гостям было предложено посадить своими руками молодые деревца, оставить настоящую живую память о себе, внести свой посильный вклад в прекрасное дело &ndash; создание парка этнографических периодов.</p>\\u000A<p class=\\u0022MsoNormal\\u0022>В этот день состоялась закладка дубовой аллеи, которая была посвящена Франции. Координатор проекта &laquo;Этносело&raquo;, директор ЕОЦ &laquo;Мазаль Тов&raquo;, руководитель Запорожской общественной организации &laquo;Дивосвіт&raquo; Инесса Носенко рассказывала:</p>\\u000A<p class=\\u0022MsoNormal\\u0022>&laquo;Французская компания &laquo;Ив Роше&raquo;, узнав от нас о таком интересном проекте, который способствует облагораживанию, озеленению нашей планеты, выделила деньги на саженцы. Ведь концепция этой компании такова: &laquo;Если ты что-то взял у природы, верни в десять раз больше&raquo;. В целях одной из программ этой компании &ndash; посадить 15 миллионов деревьев к 2015 году. Мы с вами тоже вложили свою частицу в этот проект. А хозяин компании Жак Роше попросил нас, чтобы мы посадили здесь молодой дуб в память о его отце, основателе компании.</p>\\u000A<p class=\\u0022MsoNormal\\u0022><span style=\\u0022font-size: 12pt; font-family: &quot;Times New Roman&quot;;\\u0022>&hellip;Когда мы начинали проект &laquo;Этносело&raquo;, жители этого села были уверены, что в заброшенной глухой деревне ничего сделать нельзя, и первые полтора года они нас встречали словами: &laquo;Цього не може бути! Такого взагалі не буває!&raquo; И </span>когда приезжали американцы и косили траву, когда приезжали англичане и работали вместе с нами, чистили ставок, когда приезжали гости из разных городов Украины &ndash; Киева, Днепропетровска, Херсона, Харькова &ndash; они все еще не верили во все это. Но сегодня они являются одними из главных наших волонтеров: следят за посаженными деревьями; местные народные умельцы (это и народная вышивка, и ткачество, и вязание снопов, и стрижка овец и многое другое) обучают приезжих гостей своему мастерству. Жители села теперь с удовольствием оказывают нам содействие, во всех народных праздниках охотно принимают участие ученики местной школы.</p>\\u000A<p class=\\u0022MsoNormal\\u0022>Так что моя абсолютная фантастическая уверенность в том, что каждый человек мечтает делать на Земле что-то хорошее &ndash; сбывается, и наше &laquo;Этносело&raquo; &ndash; главный тому пример&raquo;.</p>\\u000A<p class=\\u0022MsoNormal\\u0022>Программы выходного дня проходят в Червонокозацком не впервые, и в самое ближайшее время планируется еще несколько поездок с отдыхом на природе, хороводами, песнями, и таким благим делом, как высаживание молодых деревьев. Во многих мероприятиях в &laquo;Этноселе&raquo; принимал участие Центр &laquo;Ткума&raquo;, организовывавший передвижные музейные выставки, &laquo;беседы под открытым небом&raquo; на темы истории евреев и межнациональных отношений в Украине, презентации литературы. Впереди у нас еще немало совместных проектов.</p>\\u000A<p class=\\u0022MsoNormal\\u0022>На 2011-й год запланировано много нового: будут построены первые &laquo;этнодома&raquo;, выложены первые тропинки в парке этнографических периодов, которые смогут увидеть все желающие.</p>","2":"","3":""}', '{"1":"<p><a href=\\u0022http://twitter.com/#!/maksgrant\\u0022>http://twitter.com/#!/maksgrant</a></p>\\u000A<p><a href=\\u0022http://mazaltov-maksgrant.blogspot.com/2011/04/blog-post_5505.html?spref=tw\\u0022>http://mazaltov-maksgrant.blogspot.com/2011/04/blog-post_5505.html?spref=tw</a></p>","2":"","3":""}', '{"1":"","2":"","3":""}', '', '', '', 5, '["3"]'),
(14, 22, '{"1":"Языковой клуб общения","2":"","3":""}', '{"1":"","2":"","3":""}', '[]', '[]', '2011-09-01', '0000-00-00', '[]', '{"1":"дать возможность участникам познакомится с иностранными языками в неформальной форме через погружение, снять «языковой барьер» ","2":"","3":""}', '{"1":"«Языковой клуб общения» дает возможность участникам познакомиться с иностранными языками в интересной игровой форме через современные методики: СПИД дейтинг, пикап, игры, тренинги, караоке, просмотр кинофильмов. Главное, что позволяет данный клуб – снять языковой барьер и дать  возможность  участникам уверенно говорить на иностранном языке,  не стесняясь своего незнания. Клиенты получают практику общения и практику креативного выхода из ситуаций в неродной языковой среде.","2":"","3":""}', '["14"]', '{"1":"","2":"","3":""}', 'static/images/entries/project/big/69230f580858c9480c0c1158bc6bfb94.jpg', 'static/images/entries/project/big/5878f8ac14b6493591944504b29dd6a0.jpg', 'static/images/entries/project/small/24810b88b6c1b39262f4b7e00b26e6a1.jpg', '{"1":"<p><!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal</w:View> <w:Zoom>0</w:Zoom> <w:PunctuationKerning ></w:PunctuationKerning> <w:ValidateAgainstSchemas ></w:ValidateAgainstSchemas> <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false</w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText> <w:Compatibility> <w:BreakWrappedTables ></w:BreakWrappedTables> <w:SnapToGridInCell ></w:SnapToGridInCell> <w:WrapTextWithPunct ></w:WrapTextWithPunct> <w:UseAsianBreakRules ></w:UseAsianBreakRules> <w:DontGrowAutofit ></w:DontGrowAutofit> </w:Compatibility> <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel> </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\\u0022false\\u0022 LatentStyleCount=\\u0022156\\u0022> </w:LatentStyles> </xml><![endif]--><!--[if gte mso 10]> <mce:style><!   /* Style Definitions */  table.MsoNormalTable \\u0009{mso-style-name:\\u0022Обычная таблица\\u0022; \\u0009mso-tstyle-rowband-size:0; \\u0009mso-tstyle-colband-size:0; \\u0009mso-style-noshow:yes; \\u0009mso-style-parent:\\u0022\\u0022; \\u0009mso-padding-alt:0cm 5.4pt 0cm 5.4pt; \\u0009mso-para-margin:0cm; \\u0009mso-para-margin-bottom:.0001pt; \\u0009mso-pagination:widow-orphan; \\u0009font-size:10.0pt; \\u0009font-family:\\u0022Times New Roman\\u0022; \\u0009mso-ansi-language:#0400; \\u0009mso-fareast-language:#0400; \\u0009mso-bidi-language:#0400;} --> <!--[endif]--><span class=\\u0022fulltext\\u0022><span style=\\u0022font-size: 12pt;\\u0022>Неформальный клуб общения, который объединяет разные языковые клубы на всевозможных языках! Английский, немецкий, иврит, украинский, турецкий, французский....Вы сможете выбрать! Вы сможете выучить новый язык! Вы сможете улучшить свои знания! </span></span><span style=\\u0022font-size: 12pt;\\u0022><br /> <br /> <span class=\\u0022fulltext\\u0022>В чем наша\\u0022новинка\\u0022?</span><br /> <br /> <span class=\\u0022fulltext\\u0022>Мы сказали твердое \\u0022НЕТ\\u0022 скучному обычному преподаванию : лекциям, занятиям, домашним заданиям. </span><br /> <br /> <span class=\\u0022fulltext\\u0022>Учение не должно превращаться в мучение!</span><br /> <br /> <span class=\\u0022fulltext\\u0022>Мы даем зеленый свет неформальному образованию! Изучение иностранных языков через различные тренинги: как личностные, так и бизнес тренинги , творческие и кулинарные мастер классы, тематические вечеринки и многое другое, но обязательно увлекательное и интересное!</span><br /> <br /> <span class=\\u0022fulltext\\u0022>Мы хотим охватить всевозможную лексику: экономика, юриспруденция, сленг, кулинарию, разговорную и много другое!</span></span></p>","2":"","3":""}', '2011-12-16 10:36:36', 'language_club', 'base/05original.gif', 1, '', '#fff', '#fff', '#333', '#333', '#FAA61D', 0, '35.10090476287587-47.85016746221604', '{"1":"","2":"","3":""}', '{"1":"","2":"","3":""}', '', '', '', 13, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '["3"]'),
(15, 22, '{"1":"Служба семьи «Jewish Family Service»","2":"","3":""}', '{"1":"","2":"","3":""}', '[]', '[]', '0000-00-00', '0000-00-00', '[]', '{"1":"оказание помощи семьям – клиентам программы в активизации внутренних и привлечении формальных и неформальных ресурсов для повышения их качества жизни и улучшения функционирования, путем предоставления комплекса качественных социально-психологических услуг, реализуя современные технологии реабилитации и коррекции и привлекая членов общины к волонтерскому движению.","2":"","3":""}', '{"1":"оказание помощи семьям – клиентам программы в активизации внутренних и привлечении формальных и неформальных ресурсов для повышения их качества жизни и улучшения функционирования, путем предоставления комплекса качественных социально-психологических услуг, реализуя современные технологии реабилитации и коррекции и привлекая членов общины к волонтерскому движению.","2":"","3":""}', '["14"]', '{"1":"","2":"","3":""}', 'static/images/entries/project/big/4a74556e56c30d65eee46f4cb2142395.jpg', 'static/images/entries/project/big/51e228d1acbe61e9c8a31306a2ab40d8.jpg', 'static/images/entries/project/small/729cd6985654db7c97536d9f454e8a34.jpg', '{"1":"<p><!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal</w:View> <w:Zoom>0</w:Zoom> <w:PunctuationKerning ></w:PunctuationKerning> <w:ValidateAgainstSchemas ></w:ValidateAgainstSchemas> <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false</w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText> <w:Compatibility> <w:BreakWrappedTables ></w:BreakWrappedTables> <w:SnapToGridInCell ></w:SnapToGridInCell> <w:WrapTextWithPunct ></w:WrapTextWithPunct> <w:UseAsianBreakRules ></w:UseAsianBreakRules> <w:DontGrowAutofit ></w:DontGrowAutofit> </w:Compatibility> <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel> </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\\u0022false\\u0022 LatentStyleCount=\\u0022156\\u0022> </w:LatentStyles> </xml><![endif]--><!--[if gte mso 10]> <mce:style><!   /* Style Definitions */  table.MsoNormalTable \\u0009{mso-style-name:\\u0022Обычная таблица\\u0022; \\u0009mso-tstyle-rowband-size:0; \\u0009mso-tstyle-colband-size:0; \\u0009mso-style-noshow:yes; \\u0009mso-style-parent:\\u0022\\u0022; \\u0009mso-padding-alt:0cm 5.4pt 0cm 5.4pt; \\u0009mso-para-margin:0cm; \\u0009mso-para-margin-bottom:.0001pt; \\u0009mso-pagination:widow-orphan; \\u0009font-size:10.0pt; \\u0009font-family:\\u0022Times New Roman\\u0022; \\u0009mso-ansi-language:#0400; \\u0009mso-fareast-language:#0400; \\u0009mso-bidi-language:#0400;} --> <!--[endif]--></p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin: 0cm 2.85pt 0.0001pt; text-align: justify; text-indent: 35.45pt;\\u0022><strong>Задачи программы:</strong><strong></strong><span></span></p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin: 0cm 2.85pt 0.0001pt; text-align: justify; text-indent: 35.45pt;\\u0022><span><span>1.<span> </span></span></span>Предоставление помощи семье в осознании своей ответственности за психологическое, физическое и умственное развитие ребенка;</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin: 0cm 2.85pt 0.0001pt; text-align: justify; text-indent: 35.45pt;\\u0022><span><span>2.<span> </span></span></span>Интеграция семей в еврейскую общинную жизнь и предоставление поддержки и помощи силами волонтеров и специалистов широкого профиля.</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin: 0cm 2.85pt 0.0001pt; text-align: justify; text-indent: 35.45pt;\\u0022><span><span>3.<span>&nbsp; </span></span></span>Гармонизация и стабилизация еврейской семьи как социального института.</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin: 0cm 2.85pt 0.0001pt; text-align: justify; text-indent: 35.45pt;\\u0022><span><span>4.<span>&nbsp; </span></span></span>Оказание материальной помощи семьям &ndash; клиентам программы для поддержания их в тяжелых жизненных ситуациях;</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin: 0cm 2.85pt 0.0001pt; text-align: justify; text-indent: 35.45pt;\\u0022><span><span>5.<span> </span></span></span>Социальная профилактика, психолого-педагогическая помощь и социальная реабилитация еврейских семей; семей, воспитывающих детей с ограниченными возможностями; дисфункциональных семей, в которых есть дети.</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin: 0cm 2.85pt 0.0001pt; text-align: justify; text-indent: 35.45pt;\\u0022><span><span>6.<span>&nbsp; </span></span></span>Формирование общественного мнения к проблемам семьи, дисфункциональных семей, в которых есть дети, семей, воспитывающих детей с ограниченными возможностями.</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin: 0cm 2.85pt 0.0001pt; text-align: justify; text-indent: 35.45pt;\\u0022><span><span>7.<span>&nbsp;&nbsp; </span></span></span>Реализация различных форм и методов групповой работы с семьями с целью привлечения, возвращения их к еврейской культуре, еврейского возрождения.</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin: 0cm 2.85pt 0.0001pt; text-align: justify; text-indent: 35.45pt;\\u0022><span><span>8.<span>&nbsp;&nbsp; </span></span></span>Разработка форм и методов социальной и психологической помощи семье и внедрение технологий социальной адаптации и поддержки семьи в практике современного общества.</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin: 0cm 2.85pt 0.0001pt; text-align: justify; text-indent: 35.45pt;\\u0022><span><span>9.<span>&nbsp;&nbsp;&nbsp; </span></span></span>Консолидация всех сил общества &ndash; органов власти, ведомств и учреждений, работающих по вопросам семьи и брака, общественности в процессе социальной адаптации и реабилитации семьи.</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022margin: 0cm 2.85pt 0.0001pt; text-align: justify; text-indent: 35.45pt;\\u0022><span><span>10.<span>&nbsp; </span></span></span>Развитие волонтерского движения.</p>","2":"","3":""}', '2011-12-16 11:02:17', 'jewish_family', 'base/16original.gif', 1, '', '#fff', '#ffffff', '#333', '#333', '#FAA61D', 0, '35.13626863248646-47.839877065056974', '{"1":"","2":"","3":""}', '{"1":"<p><!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal</w:View> <w:Zoom>0</w:Zoom> <w:PunctuationKerning ></w:PunctuationKerning> <w:ValidateAgainstSchemas ></w:ValidateAgainstSchemas> <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false</w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText> <w:Compatibility> <w:BreakWrappedTables ></w:BreakWrappedTables> <w:SnapToGridInCell ></w:SnapToGridInCell> <w:WrapTextWithPunct ></w:WrapTextWithPunct> <w:UseAsianBreakRules ></w:UseAsianBreakRules> <w:DontGrowAutofit ></w:DontGrowAutofit> </w:Compatibility> <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel> </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\\u0022false\\u0022 LatentStyleCount=\\u0022156\\u0022> </w:LatentStyles> </xml><![endif]--><!--[if gte mso 10]> <mce:style><!   /* Style Definitions */  table.MsoNormalTable \\u0009{mso-style-name:\\u0022Обычная таблица\\u0022; \\u0009mso-tstyle-rowband-size:0; \\u0009mso-tstyle-colband-size:0; \\u0009mso-style-noshow:yes; \\u0009mso-style-parent:\\u0022\\u0022; \\u0009mso-padding-alt:0cm 5.4pt 0cm 5.4pt; \\u0009mso-para-margin:0cm; \\u0009mso-para-margin-bottom:.0001pt; \\u0009mso-pagination:widow-orphan; \\u0009font-size:10.0pt; \\u0009font-family:\\u0022Times New Roman\\u0022; \\u0009mso-ansi-language:#0400; \\u0009mso-fareast-language:#0400; \\u0009mso-bidi-language:#0400;} --> <!--[endif]--></p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022text-align: justify; text-indent: 27pt;\\u0022>Еврейская служба семьи работает в режиме постоянного контакта с семьями &ndash; клиентами программы, непрерывно ведется отслеживание актуальных нужд и потребностей наших клиентов с целью их максимального удовлетворения в рамках наших возможностей и повышения качества жизни еврейских семей.</p>\\u000A<p class=\\u0022MsoNormal\\u0022 style=\\u0022text-align: justify; text-indent: 27pt;\\u0022>&laquo;Еврейская служба семьи&raquo; работает каждый будний день с 8:30 до 17:00 в 21 кабинете по адресу: ул. Победы, 4. Наш телефон &ndash; 213-80-90.</p>","2":"","3":""}', '', '', '', 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '[]');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_projects_categories`
--

CREATE TABLE IF NOT EXISTS `sp_projects_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Категории проэктов' AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `sp_projects_categories`
--

INSERT INTO `sp_projects_categories` (`id`, `name`) VALUES
(14, '{"1":"\\u0421\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435","2":"\\u0421\\u043e\\u0446\\u0456\\u0430\\u043b\\u044c\\u043d\\u0456","3":"Social","4":""}'),
(19, '{"1":"\\u0422\\u0443\\u0440\\u0438\\u0437\\u043c","2":"","3":""}'),
(16, '{"1":"\\u0411\\u0438\\u0437\\u043d\\u0435\\u0441","2":"","3":""}'),
(17, '{"1":"\\u041a\\u0443\\u043b\\u044c\\u0442\\u0443\\u0440\\u043d\\u044b\\u0435","2":"","3":""}'),
(18, '{"1":"\\u0420\\u0430\\u0437\\u0432\\u043b\\u0435\\u043a\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435","2":"","3":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_projects_comments`
--

CREATE TABLE IF NOT EXISTS `sp_projects_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` varchar(255) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '0',
  `body` varchar(1024) DEFAULT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Комментарии к проектам' AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `sp_projects_comments`
--

INSERT INTO `sp_projects_comments` (`id`, `project_id`, `date`, `author`, `visible`, `body`, `comment_id`) VALUES
(1, 2, '2011-11-20 08:00:00', 'Макс', 1, 'Привет мир!', 0),
(2, 2, '2011-11-20 08:00:00', 'Иван', 1, 'Привет Макс!', 1),
(3, 2, '2011-11-21 08:33:53', 'Макс', 1, 'Как дела?', 0),
(4, 2, '2011-11-21 08:34:26', 'Николай', 1, 'Привет Иван!', 2),
(5, 2, '2011-11-21 08:37:30', 'Ольга', 1, 'Проект заслуживает внимания!', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_projects_partners`
--

CREATE TABLE IF NOT EXISTS `sp_projects_partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) DEFAULT NULL,
  `organizations_id` int(11) DEFAULT NULL,
  `type` enum('partner','sponsor','grantor','general_sponsor','creative_time') NOT NULL DEFAULT 'partner',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Связь проэкта и его партнеров' AUTO_INCREMENT=31 ;

--
-- Дамп данных таблицы `sp_projects_partners`
--

INSERT INTO `sp_projects_partners` (`id`, `entry_id`, `organizations_id`, `type`) VALUES
(24, 2, 2, 'partner'),
(25, 2, 3, 'sponsor'),
(26, 13, 4, 'partner'),
(27, 13, 13, 'sponsor'),
(28, 13, 14, 'sponsor'),
(29, 13, 15, 'sponsor'),
(30, 13, 13, 'grantor');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_scopes`
--

CREATE TABLE IF NOT EXISTS `sp_scopes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Сферы деятельности' AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `sp_scopes`
--

INSERT INTO `sp_scopes` (`id`, `name`) VALUES
(2, '{"1":"\\u041c\\u0435\\u0434\\u0438\\u0446\\u0438\\u043d\\u0430","2":"\\u041c\\u0435\\u0434\\u0456\\u0446\\u0438\\u043d\\u0430","3":"Medics","4":""}'),
(3, '{"1":"\\u041f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435","2":"","3":""}'),
(4, '{"1":"\\u044d\\u043a\\u043e\\u043d\\u043e\\u043c\\u0438\\u043a\\u0430","2":"","3":""}'),
(5, '{"1":"\\u043a\\u0443\\u043b\\u044c\\u0442\\u0443\\u0440\\u0430","2":"","3":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_services`
--

CREATE TABLE IF NOT EXISTS `sp_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COMMENT 'Название услуг',
  `supplier` int(11) DEFAULT NULL COMMENT 'Поставщик услуги',
  `price` float DEFAULT NULL COMMENT 'Цена услуги',
  `terms` text COMMENT 'Сроки',
  `tags` text,
  `type` int(11) DEFAULT NULL COMMENT 'Вид услуги',
  `project_result` int(11) DEFAULT NULL COMMENT 'Результат проекта',
  `condition` text COMMENT 'Условия оказания услуги',
  `note` text COMMENT 'Примечание',
  `foto` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `basket` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Услуги' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_services`
--

INSERT INTO `sp_services` (`id`, `name`, `supplier`, `price`, `terms`, `tags`, `type`, `project_result`, `condition`, `note`, `foto`, `thumb`, `basket`) VALUES
(2, '{"1":"\\u0423\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0430 \\u041f\\u041e","2":"\\u0412\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f \\u041f\\u0417","3":"Installing programs","4":""}', 2, 200, '{"1":"\\u041f\\u041e, \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440","2":"\\u041f\\u0417, \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440","3":"programs, istalling","4":""}', NULL, 2, 3, '{"1":"<p>\\u0425\\u043e\\u0440\\u043e\\u0448\\u0435\\u0435 \\u0441\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u0438\\u0435<\\/p>","2":"<p>\\u0414\\u043e\\u0431\\u0440\\u0435<\\/p>","3":"<p>Good<\\/p>","4":""}', '{"1":"<p>\\u0423\\u0441\\u0442\\u0430\\u043d\\u0430\\u0432\\u043b\\u0438\\u0432\\u0430\\u0435\\u043c \\u0432\\u0441\\u0451<\\/p>","2":"<p>\\u0412\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u044e\\u0454\\u043c\\u043e \\u0432\\u0441\\u0435<\\/p>","3":"<p>Note<\\/p>","4":""}', 'static/images/entries/service/big/65aecfc4f4cdf774535f097725ac86f6.jpg', 'static/images/entries/service/small/d0cf6b6e4a2ab02d06b5275f27c0b83e.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_services_categories`
--

CREATE TABLE IF NOT EXISTS `sp_services_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Категории услуг' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_services_categories`
--

INSERT INTO `sp_services_categories` (`id`, `name`) VALUES
(2, '{"4":"","3":"Masage","2":"\\u041c\\u0430\\u0441\\u0430\\u0436","1":"\\u041c\\u0430\\u0441\\u0441\\u0430\\u0436"}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_sessions`
--

CREATE TABLE IF NOT EXISTS `sp_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sp_sessions`
--

INSERT INTO `sp_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('f318f001c9a26f57a9aeaaa5097782e0', '127.0.0.1', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.', 1324027014, 'a:4:{s:4:"lang";s:7:"russian";s:7:"lang_id";s:1:"1";s:8:"admin_id";s:2:"22";s:7:"project";s:2:"12";}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_settings`
--

CREATE TABLE IF NOT EXISTS `sp_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(1024) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `logo` varchar(1024) DEFAULT NULL,
  `logo_thumb` varchar(1024) DEFAULT NULL,
  `background` varchar(1024) DEFAULT NULL,
  `copy_text` varchar(1024) DEFAULT NULL,
  `default_background` tinyint(4) NOT NULL DEFAULT '1',
  `bg_color` varchar(255) DEFAULT NULL,
  `bgcolor_trigger` tinyint(4) NOT NULL DEFAULT '0',
  `theme` varchar(255) NOT NULL DEFAULT 'standart',
  `site_banner` varchar(255) DEFAULT NULL,
  `admin_banner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_settings`
--

INSERT INTO `sp_settings` (`id`, `site_name`, `keywords`, `description`, `logo`, `logo_thumb`, `background`, `copy_text`, `default_background`, `bg_color`, `bgcolor_trigger`, `theme`, `site_banner`, `admin_banner`) VALUES
(1, '{"1":"\\u0423\\u0441\\u043f\\u0435\\u0448\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442","2":"\\u0412\\u0434\\u0430\\u043b\\u0438\\u0439 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442","3":"Successful project"}', '{"1":"\\u043e\\u0441\\u0432\\u0435\\u0449\\u0435\\u043d\\u0438\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u043e\\u0432 \\u0432 \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0441\\u0444\\u0435\\u0440\\u0435, \\u043c\\u0430\\u043b\\u043e\\u043c \\u0438 \\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u043c \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0435","2":"","3":""}', '{"1":"\\u043e\\u0441\\u0432\\u0435\\u0449\\u0435\\u043d\\u0438\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u043e\\u0432 \\u0432 \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0441\\u0444\\u0435\\u0440\\u0435, \\u043c\\u0430\\u043b\\u043e\\u043c \\u0438 \\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u043c \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0435","2":"","3":""}', '{"1":"static\\/images\\/entries\\/settings\\/big\\/67b936d61e3d6320f9e748dac2e46a85.png","2":"static\\/images\\/entries\\/settings\\/big\\/0db64a8ea35372cb11d12fd6c9c0acb6.png","3":"static\\/images\\/entries\\/settings\\/big\\/4f170316005e240855177f2247f57876.png"}', '{"1":"","2":"1","3":""}', 'static/images/entries/settings/big/afbbc190993035cdc7f59437d80606e4.png', '{"1":"\\u0412\\u0441\\u0435 \\u043f\\u0440\\u0430\\u0432\\u0430 \\u0437\\u0430\\u0449\\u0438\\u0449\\u0435\\u043d\\u044b","2":"\\u0423\\u0441\\u0456 \\u043f\\u0440\\u0430\\u0432\\u0430 \\u0437\\u0430\\u0445\\u0438\\u0449\\u0435\\u043d\\u0456","3":"All rights reserved"}', 1, '#00ff66', 0, 'main', 'undefined', '');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_territories`
--

CREATE TABLE IF NOT EXISTS `sp_territories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Территориальная нацеленность проекта ' AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `sp_territories`
--

INSERT INTO `sp_territories` (`id`, `name`) VALUES
(1, '{"1":"\\u0420\\u0430\\u0439\\u043e\\u043d","2":"\\u0420\\u0430\\u0439\\u043e\\u043d","3":"Region","4":""}'),
(2, '{"1":"село","2":"","3":""}'),
(3, '{"1":"Запорожская область","2":"","3":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_users`
--

CREATE TABLE IF NOT EXISTS `sp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `suname` text,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `about` text,
  `foto` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `verify_code` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `signup` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `basket` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Пользователи' AUTO_INCREMENT=25 ;

--
-- Дамп данных таблицы `sp_users`
--

INSERT INTO `sp_users` (`id`, `name`, `suname`, `email`, `phone`, `about`, `foto`, `thumb`, `password`, `verify_code`, `confirmed`, `group_id`, `signup`, `basket`) VALUES
(22, '{"1":"Макс","2":"Макс","3":"Max"}', '{"1":"","2":"Дмітрієв","3":"Dmitriev"}', 'devmax@mail.loc', '0689594947', '{"1":"Это Я!","2":"<p>Це я!</p>","3":"<p>It''s I!</p>"}', 'static/images/entries/user/big/b04ae926a8f7bfd9ae61cb5eee2fe9b4.jpg', 'static/images/entries/user/small/ff209ca1374a23f34877e0f442968974.jpg', 'c5fe25896e49ddfe996db7508cf00534', '16bc2beab3afc1a77f77c0fe5d8c896b', 1, 1, '2011-09-21 14:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_videos_report`
--

CREATE TABLE IF NOT EXISTS `sp_videos_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Связь дополнительного пректа и видео' AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `sp_videos_report`
--

