-- phpMyAdmin SQL Dump
-- version 3.4.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Сен 17 2011 г., 23:04
-- Версия сервера: 5.0.45
-- Версия PHP: 5.2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `successfull`
--

-- --------------------------------------------------------

--
-- Структура таблицы `sp_activities`
--

CREATE TABLE IF NOT EXISTS `sp_activities` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(1024) default NULL,
  PRIMARY KEY  (`id`)
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
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(2000) default NULL COMMENT 'Название',
  `image` varchar(255) default NULL COMMENT 'Картинка',
  `thumb` varchar(255) default NULL,
  `description` text COMMENT 'Описание',
  `link` varchar(255) default NULL COMMENT 'Ссылка',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Анонсы' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events`
--

CREATE TABLE IF NOT EXISTS `sp_events` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(2000) default NULL COMMENT 'Название',
  `place` int(11) default NULL COMMENT 'Место проведения',
  `date_start` date default NULL COMMENT 'Дата начала',
  `date_end` date default NULL COMMENT 'Дата конца',
  `number_of_sessions` int(11) default NULL COMMENT 'Кол-во занятий',
  `schedule` text COMMENT 'Расписание',
  `price` varchar(2000) default NULL COMMENT 'Стоимость',
  `project_id` int(11) default NULL COMMENT 'В рамках какого проекта',
  `poster` text COMMENT 'Афиша',
  `description` text COMMENT 'Описание',
  `type` int(11) default NULL COMMENT 'Категория события',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='События' AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sp_events`
--

INSERT INTO `sp_events` (`id`, `name`, `place`, `date_start`, `date_end`, `number_of_sessions`, `schedule`, `price`, `project_id`, `poster`, `description`, `type`) VALUES
(1, '{"1":"\\u041a\\u0443\\u0440\\u0441 HTML","2":"","3":"","4":""}', 1, '2011-09-09', '2011-09-17', 5, '{"1":"<p>\\u0421\\u0432\\u043e\\u0431\\u043e\\u0434\\u043d\\u044b\\u0439<\\/p>","2":"","3":"","4":""}', '{"1":"<p>200 - 500<\\/p>","2":"","3":"","4":""}', 0, '{"1":"<p>\\u0410\\u0444\\u0438\\u0448\\u0430 \\u0441\\u043e\\u0431\\u044b\\u0442\\u0438\\u044f<\\/p>","2":"","3":"","4":""}', '{"1":"<p>\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u0441\\u043e\\u0431\\u044b\\u0442\\u0438\\u044f<\\/p>","2":"","3":"","4":""}', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events_categories`
--

CREATE TABLE IF NOT EXISTS `sp_events_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Категории событий' AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `sp_events_categories`
--

INSERT INTO `sp_events_categories` (`id`, `name`) VALUES
(5, '{"1":"\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u043a\\u043b\\u0430\\u0441\\u0441","2":"","3":"","4":""}'),
(6, '{"1":"\\u0422\\u0440\\u0435\\u043d\\u043d\\u0438\\u043d\\u0433","2":"","3":"","4":""}'),
(7, '{"1":"\\u041a\\u0443\\u0440\\u0441","2":"","3":"","4":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events_curators`
--

CREATE TABLE IF NOT EXISTS `sp_events_curators` (
  `id` int(11) NOT NULL auto_increment,
  `entry_id` int(11) default NULL,
  `organizations_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Связь события и людей проводящих его' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_events_curators`
--

INSERT INTO `sp_events_curators` (`id`, `entry_id`, `organizations_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events_methods`
--

CREATE TABLE IF NOT EXISTS `sp_events_methods` (
  `id` int(11) NOT NULL auto_increment,
  `entry_id` int(11) default NULL,
  `methods_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Связь события и методик' AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sp_events_methods`
--

INSERT INTO `sp_events_methods` (`id`, `entry_id`, `methods_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events_organizes`
--

CREATE TABLE IF NOT EXISTS `sp_events_organizes` (
  `id` int(11) NOT NULL auto_increment,
  `entry_id` int(11) default NULL,
  `organizations_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Связь события и организаторов события' AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sp_events_organizes`
--

INSERT INTO `sp_events_organizes` (`id`, `entry_id`, `organizations_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_goods`
--

CREATE TABLE IF NOT EXISTS `sp_goods` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `supplier` int(11) default NULL COMMENT 'Поставщик товара ',
  `price` float default NULL COMMENT 'Цена товара ',
  `type` int(11) default NULL COMMENT 'Вид товара',
  `project_result` int(11) default NULL COMMENT 'Результат проекта',
  `foto` varchar(255) default NULL,
  `thumb` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Товары' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_goods`
--

INSERT INTO `sp_goods` (`id`, `name`, `supplier`, `price`, `type`, `project_result`, `foto`, `thumb`) VALUES
(2, '{"4":"","3":"Computer","2":"\\u041a\\u043e\\u043c\\u043f''\\u044e\\u0442\\u0435\\u0440","1":"\\u041a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440"}', 0, 3000, 2, 0, 'goods/big/3031990ac6ba46771bc91e3c488bc635.jpg', 'goods/small/bd96072845dc6fdf703017052ad94a53.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_goods_categories`
--

CREATE TABLE IF NOT EXISTS `sp_goods_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Категории товаров' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_goods_categories`
--

INSERT INTO `sp_goods_categories` (`id`, `name`) VALUES
(2, '{"4":"","3":"Shoose","2":"\\u041e\\u0431\\u0443\\u0432\\u044c","1":"\\u041e\\u0431\\u0443\\u0432\\u044c"}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_grants`
--

CREATE TABLE IF NOT EXISTS `sp_grants` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(1024) default NULL COMMENT 'Название',
  `description` text COMMENT 'Описание',
  `deadline` date default NULL COMMENT 'Дэдлайн',
  `scope` int(11) default NULL COMMENT 'Сфера деятельности',
  `grantor` int(11) default NULL COMMENT 'Грантодатель',
  `links` varchar(255) default NULL COMMENT 'Ссылка на сайт',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Гранты' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_grants`
--

INSERT INTO `sp_grants` (`id`, `name`, `description`, `deadline`, `scope`, `grantor`, `links`) VALUES
(2, '{"1":"\\u0413\\u0440\\u0430\\u043d\\u0442","2":"\\u0413\\u0440\\u0430\\u043d\\u0442","3":"","4":""}', '{"1":"<p>\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u0433\\u0440\\u0430\\u043d\\u0442\\u0430<\\/p>","2":"<p>\\u041e\\u043f\\u0438\\u0441 \\u0433\\u0440\\u0430\\u043d\\u0442\\u0430<\\/p>","3":"","4":""}', '0000-00-00', 2, 0, 'http://goole.com');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_groups`
--

CREATE TABLE IF NOT EXISTS `sp_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(1024) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Группы пользователей' AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `sp_groups`
--

INSERT INTO `sp_groups` (`id`, `name`) VALUES
(1, '{"4":"","3":"Administrators","2":"\\u0410\\u0434\\u043c\\u0456\\u043d\\u0456\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440\\u0438","1":"\\u0410\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440"}'),
(6, '{"4":"","3":"Publicators","2":"\\u041f\\u0443\\u0431\\u043b\\u0456\\u043a\\u0430\\u0442\\u043e\\u0440\\u0438","1":"\\u041f\\u0443\\u0431\\u043b\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440"}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_ideas`
--

CREATE TABLE IF NOT EXISTS `sp_ideas` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL COMMENT 'Название',
  `description` varchar(2000) default NULL COMMENT 'Описание',
  `author` int(11) default NULL COMMENT 'Автор',
  `scope` int(11) default NULL COMMENT 'Сфера деятельности',
  `tags` varchar(255) default NULL COMMENT 'Ключевые слова ',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Идеи' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_ideas`
--

INSERT INTO `sp_ideas` (`id`, `name`, `description`, `author`, `scope`, `tags`) VALUES
(2, '{"1":"\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0435 \\u044d\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b\\u0430","2":"\\u0421\\u0442\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u044f \\u0435\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b\\u0430","3":"","4":""}', '{"1":"<p>\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u0438\\u0434\\u0435\\u0438<\\/p>","2":"<p>\\u041e\\u043f\\u0438\\u0441 \\u0456\\u0434\\u0435\\u0457<\\/p>","3":"","4":""}', NULL, 0, '{"1":"\\u044d\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b\\u043e","2":"\\u0435\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b\\u043e","3":"","4":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_languages`
--

CREATE TABLE IF NOT EXISTS `sp_languages` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `flag` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `sp_languages`
--

INSERT INTO `sp_languages` (`id`, `name`, `flag`) VALUES
(1, 'russian', 'russian.png'),
(2, 'ukrainian', 'ukrainian.png'),
(3, 'english', 'english.png'),
(4, 'german', 'german.png');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_methods`
--

CREATE TABLE IF NOT EXISTS `sp_methods` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(1024) default NULL COMMENT 'Название',
  `author` varchar(1024) default NULL COMMENT 'Автор',
  `description` text COMMENT 'Описание',
  `links` varchar(2000) default NULL COMMENT 'Cсылки на doc-файлы',
  `scope` int(11) default NULL COMMENT 'Сфера деятельности',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Методики' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_methods`
--

INSERT INTO `sp_methods` (`id`, `name`, `author`, `description`, `links`, `scope`) VALUES
(2, '{"1":"\\u041c\\u0435\\u0442\\u043e\\u0434 \\u0442\\u044b\\u043a\\u0430","2":"\\u041c\\u0435\\u0442\\u043e\\u0434 \\u0422\\u0438\\u043a\\u0443","3":"","4":""}', '{"1":"\\u041d\\u0430\\u0440\\u043e\\u0434","2":"\\u041d\\u0430\\u0440\\u043e\\u0434","3":"","4":""}', '{"1":"<p>\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u043c\\u0435\\u0442\\u043e\\u0434\\u0430<\\/p>","2":"<p>\\u041e\\u043f\\u0438\\u0441 \\u043c\\u0435\\u0442\\u043e\\u0434\\u0443<\\/p>","3":"","4":""}', '{"1":"<p>\\u0421\\u0441\\u044b\\u043b\\u043a\\u0438 \\u043d\\u0430 \\u043c\\u0435\\u0442\\u043e\\u0434<\\/p>","2":"<p>\\u041f\\u043e\\u0441\\u0438\\u043b\\u0430\\u043d\\u043d\\u044f \\u043d\\u0430 \\u043c\\u0435\\u0442\\u043e\\u0434<\\/p>","3":"","4":""}', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_news`
--

CREATE TABLE IF NOT EXISTS `sp_news` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(2000) default NULL COMMENT 'Название',
  `short_description` varchar(2000) default NULL COMMENT 'Короткое описание',
  `description` text COMMENT 'Описание',
  `date` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Новости' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_organizations`
--

CREATE TABLE IF NOT EXISTS `sp_organizations` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(1024) default NULL COMMENT 'Название',
  `address` varchar(1024) default NULL COMMENT 'Юридический адрес',
  `place` int(11) default NULL COMMENT 'Место дислокации',
  `boss` varchar(1024) default NULL COMMENT 'Директор',
  `phone` varchar(255) default NULL COMMENT 'Тел.',
  `email` varchar(255) default NULL COMMENT 'Email',
  `sites` varchar(255) default NULL COMMENT 'Сайты',
  `scope` int(11) default NULL COMMENT 'Сфера деятельности',
  `activities` int(11) default NULL COMMENT 'Направления деятельности',
  `logo` varchar(255) default NULL COMMENT 'Логотип',
  `thumb` varchar(255) default NULL,
  `description` text COMMENT 'Описание',
  `grantor` tinyint(4) default NULL,
  `investor` tinyint(4) default NULL,
  `individual` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Организации' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_organizations`
--

INSERT INTO `sp_organizations` (`id`, `name`, `address`, `place`, `boss`, `phone`, `email`, `sites`, `scope`, `activities`, `logo`, `thumb`, `description`, `grantor`, `investor`, `individual`) VALUES
(2, '{"1":"\\u0418\\u043d\\u0442\\u0435\\u043b\\u043b\\u0435\\u043a\\u0442 \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441","2":"\\u0406\\u043d\\u0442\\u0435\\u043b\\u0435\\u043a\\u0442 \\u0441\\u0435\\u0440\\u0432\\u0456\\u0441","3":"","4":""}', '{"1":"\\u0433. \\u0414\\u043d\\u0435\\u043f\\u0440\\u043e\\u043f\\u0435\\u0442\\u0440\\u043e\\u0432\\u0441\\u043a","2":"\\u043c. \\u0414\\u043d\\u0456\\u043f\\u0440\\u043e\\u043f\\u0435\\u0442\\u0440\\u043e\\u0432\\u0441\\u044c\\u043a","3":"","4":""}', 0, '{"1":"\\u0413\\u043e\\u0440\\u0435\\u043b\\u043a\\u043e \\u0421\\u0435\\u0440\\u0433\\u0435\\u0439","2":"\\u0413\\u043e\\u0440\\u0435\\u043b\\u043a\\u043e \\u0421\\u0435\\u0440\\u0433\\u0456\\u0439","3":"","4":""}', '555', 'intelser@mail.com', 'intelserv.dp.ua', 0, 0, 'dictionary/organizations/big/99c1c2020a43b2a6073e918b7b46741c.jpg', 'dictionary/organizations/small/3a85f12658116358a74f2dd2958ec694.jpg', '{"1":"<p>\\u0423\\u0447\\u0435\\u0442 \\u0442\\u0440\\u0443\\u0434\\u0430 \\u0438 \\u0437\\u0430\\u0440\\u0430\\u0431\\u043e\\u0442\\u043d\\u043e\\u0439 \\u043f\\u043b\\u0430\\u0442\\u044b<\\/p>","2":"<p>\\u0417\\u0430\\u0440\\u043e\\u0431\\u0456\\u0442\\u043d\\u0430 \\u043f\\u043b\\u0430\\u0442\\u043d\\u044f<\\/p>","3":"","4":""}', 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_pages`
--

CREATE TABLE IF NOT EXISTS `sp_pages` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(1024) default NULL COMMENT 'Название',
  `body` varchar(10000) default NULL COMMENT 'Контент',
  `meta` varchar(1024) default NULL COMMENT 'Меты теги',
  `slug` varchar(255) default NULL,
  `in_footer` tinyint(4) NOT NULL default '0',
  `in_header` tinyint(4) NOT NULL default '0',
  `system` tinyint(4) NOT NULL default '0',
  `weight` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Страницы' AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `sp_pages`
--

INSERT INTO `sp_pages` (`id`, `name`, `body`, `meta`, `slug`, `in_footer`, `in_header`, `system`, `weight`) VALUES
(2, '{"4":"","3":"Ideas","2":"\\u0406\\u0434\\u0435\\u0457","1":"\\u0418\\u0434\\u0435\\u0438"}', '{"4":"","3":"<p>\\"Ideas\\" page in English.<\\/p>","2":"<p>\\u0426\\u0435 \\u043a\\u043e\\u043d\\u0442\\u0435\\u0442\\u043d \\u0441\\u0442\\u043e\\u0440\\u0456\\u043d\\u0443\\u0438 \\"\\u0406\\u0434\\u0435\\u0457\\" \\u043d\\u0430 \\u0443\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0456\\u0439 \\u043c\\u043e\\u0432\\u0456.<\\/p>","1":"<p>\\u041a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b \\"\\u0418\\u0434\\u0435\\u0438\\"<\\/p>"}', '{"4":"","3":"ideas","2":"\\u0456\\u0434\\u0435\\u0457","1":"\\u0438\\u0434\\u0435\\u0438"}', 'ideas', 0, 1, 0, 0),
(1, '{"4":"","3":"Projects","2":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438","1":"\\u041f\\u0440\\u043e\\u044d\\u043a\\u0442\\u044b"}', '{"4":"","3":"<p>Content in English<\\/p>","2":"<p>\\u0426\\u0435 \\u043a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442 \\u0441\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0438 \\"\\u041f\\u0440\\u043e\\u0454\\u043a\\u0442\\u0438\\" \\u043d\\u0430 \\u0443\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0456\\u0439 \\u043c\\u043e\\u0432\\u0456<\\/p>","1":"<p>\\u041a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b \\"\\u041f\\u0440\\u043e\\u044d\\u043a\\u0442\\u044b\\"<\\/p>"}', '{"4":"","3":"projects","2":"\\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438","1":"\\u043f\\u0440\\u043e\\u044d\\u043a\\u0442\\u044b"}', 'projects', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_photos`
--

CREATE TABLE IF NOT EXISTS `sp_photos` (
  `id` int(11) NOT NULL auto_increment,
  `url` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_photos_report`
--

CREATE TABLE IF NOT EXISTS `sp_photos_report` (
  `id` int(11) NOT NULL auto_increment,
  `project_more_id` int(11) default NULL,
  `photo_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Связь дополнительного пректа и фотографий' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_places`
--

CREATE TABLE IF NOT EXISTS `sp_places` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(1024) default NULL COMMENT 'Название',
  `address` varchar(1024) default NULL COMMENT 'Адрес',
  `road_plan` varchar(255) default NULL COMMENT 'План проезда',
  `phones` varchar(255) default NULL COMMENT 'Телефоны',
  `place_type` int(11) default NULL COMMENT 'Тип места',
  `note` text COMMENT 'Примечание',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Места проведения проектов' AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sp_places`
--

INSERT INTO `sp_places` (`id`, `name`, `address`, `road_plan`, `phones`, `place_type`, `note`) VALUES
(1, '{"1":"\\u0417\\u041d\\u0422\\u0423","2":"\\u0417\\u041d\\u0422\\u0423","3":"","4":""}', '{"1":"\\u0443\\u043b. \\u0416\\u0443\\u043a\\u043e\\u0432\\u0441\\u043a\\u043e\\u0433\\u043e 64","2":"\\u0443\\u043b. \\u0416\\u0443\\u043a\\u043e\\u0432\\u0441\\u044c\\u043a\\u043e\\u0433\\u043e 64","3":"","4":""}', NULL, '15975326', 2, '{"1":"<p>\\u0417\\u0430\\u043f\\u043e\\u0440\\u043e\\u0436\\u0441\\u043a\\u0438\\u0439 \\u043d\\u0430\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0438\\u0442\\u0435\\u0442<\\/p>","2":"<p>\\u0417\\u0430\\u043f\\u043e\\u0440\\u0456\\u0437\\u044c\\u043a\\u0438\\u0439 \\u041d\\u0430\\u0446\\u0456\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u0438\\u0439 \\u0443\\u043d\\u0456\\u0432\\u0435\\u0440\\u0441\\u0438\\u0442\\u0435\\u0442<\\/p>","3":"","4":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_places_categories`
--

CREATE TABLE IF NOT EXISTS `sp_places_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(1024) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Категории мест проведения проектов' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_places_categories`
--

INSERT INTO `sp_places_categories` (`id`, `name`) VALUES
(1, '{"1":"\\u0428\\u043a\\u043e\\u043b\\u0430","2":"\\u0428\\u043a\\u043e\\u043b\\u0430","3":"School","4":""}'),
(2, '{"1":"\\u0423\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0438\\u0442\\u0435\\u0442","2":"\\u0423\\u043d\\u0456\\u0432\\u0435\\u0440\\u0441\\u0438\\u0442\\u0435\\u0442","3":"Univercity","4":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_projects`
--

CREATE TABLE IF NOT EXISTS `sp_projects` (
  `id` int(11) NOT NULL auto_increment,
  `name` text,
  `boss` varchar(1024) default NULL COMMENT 'Руководитель',
  `initiator` int(11) default NULL COMMENT 'Инициатор',
  `organizer` int(11) default NULL COMMENT 'Организатор',
  `date` date default NULL COMMENT 'Сроки проведения',
  `place` int(11) default NULL COMMENT 'Место проведения',
  `purpose` text COMMENT 'Цель',
  `short_description` text COMMENT 'Краткое описание проекта',
  `category_id` int(11) default NULL COMMENT 'Категория проекта',
  `tags` varchar(1024) default NULL COMMENT 'Ключевые слова',
  `banner` varchar(1024) default NULL COMMENT 'Баннер',
  `logo` varchar(255) default NULL COMMENT 'Логотип',
  `thumb` varchar(255) default NULL,
  `poster` text COMMENT 'Афиша',
  `note` text COMMENT 'Примечание',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Таблица проэктов' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_projects`
--

INSERT INTO `sp_projects` (`id`, `name`, `boss`, `initiator`, `organizer`, `date`, `place`, `purpose`, `short_description`, `category_id`, `tags`, `banner`, `logo`, `thumb`, `poster`, `note`) VALUES
(2, '{"1":"\\u042d\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b\\u043e","2":"\\u0415\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b\\u043e","3":"","4":""}', NULL, NULL, NULL, '0000-00-00', 0, '{"1":"<p>\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0435 \\u042d\\u0442\\u043d\\u043e\\u0441\\u0451\\u043b \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0435<\\/p>","2":"<p>\\u0421\\u0442\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u044f \\u0435\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b \\u043d\\u0430 \\u0432\\u0441\\u0456\\u0439 \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0456<\\/p>","3":"","4":""}', '{"1":"\\u041a\\u043e\\u0440\\u043e\\u0442\\u043a\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435","2":"\\u043a\\u0440\\u0430\\u0442\\u043a\\u0438\\u0439 \\u043e\\u043f\\u0438\\u0441","3":"","4":""}', 14, '{"1":"\\u044d\\u0442\\u043d\\u043e, \\u0441\\u0435\\u043b\\u043e","2":"\\u0435\\u0442\\u043d\\u043e, \\u0441\\u0435\\u043b\\u043e","3":"","4":""}', NULL, 'project/big/21502e2a9423512fba1557f52a7f1727.jpg', 'project/small/a497dd9e057d570a1888b4d612c3744d.jpg', '{"1":"<p>\\u0410\\u0444\\u0438\\u0448\\u0430 \\u043f\\u0440\\u043e\\u044d\\u043a\\u0442\\u0430<\\/p>","2":"<p>\\u0430\\u0444\\u0456\\u0448\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0443<\\/p>","3":"","4":""}', '{"1":"<p>\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u043f\\u0440\\u043e\\u044d\\u043a\\u0442\\u0430<\\/p>","2":"<p>\\u041e\\u043f\\u0438\\u0441 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0443<\\/p>","3":"","4":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_projects_categories`
--

CREATE TABLE IF NOT EXISTS `sp_projects_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Категории проэктов' AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `sp_projects_categories`
--

INSERT INTO `sp_projects_categories` (`id`, `name`) VALUES
(14, '{"1":"\\u0421\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435","2":"\\u0421\\u043e\\u0446\\u0456\\u0430\\u043b\\u044c\\u043d\\u0456","3":"Social","4":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_projects_more`
--

CREATE TABLE IF NOT EXISTS `sp_projects_more` (
  `id` int(11) NOT NULL auto_increment,
  `projects_id` int(11) default NULL COMMENT 'Основной проэкт',
  `territory` int(11) default NULL COMMENT 'Территориальная нацеленность проекта',
  `description` varchar(2000) default NULL COMMENT 'Продукты и результаты описания проекта ',
  `resourses` varchar(255) default NULL COMMENT 'Ресурсы (doc-файл)',
  `project_plan` varchar(255) default NULL COMMENT 'План проекта (doc-файл)',
  `top_event` int(11) default NULL COMMENT 'Топовое событие проекта',
  `report` varchar(2000) default NULL COMMENT 'Отчет о мероприятиях ',
  `application_form` varchar(255) default NULL COMMENT 'Аппликационная форма (doc и pdf – файл)',
  `product_links` varchar(2000) default NULL COMMENT 'Ссылка на продукты проекта (т + ссылки)',
  `feedback_links` varchar(2000) default NULL COMMENT 'Ссылки на отзывы в прессе (т + ссылки)',
  `workgroups_links` varchar(2000) default NULL COMMENT 'Ссылки на рабочие группы в социальных сетях',
  `social_links` varchar(2000) default NULL COMMENT 'Ссылки проекта в социальных сетях',
  `business_plan` varchar(255) default NULL COMMENT 'Бизнес-план (doc и pdf – файл)',
  `scheme_budget` varchar(255) default NULL COMMENT 'Схема бюджета – (xls-файл )',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Дополнительные проэкты' AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sp_projects_more`
--

INSERT INTO `sp_projects_more` (`id`, `projects_id`, `territory`, `description`, `resourses`, `project_plan`, `top_event`, `report`, `application_form`, `product_links`, `feedback_links`, `workgroups_links`, `social_links`, `business_plan`, `scheme_budget`) VALUES
(1, 0, 0, '<p>Описание дополнительного проэкта</p>', NULL, NULL, 0, '<p>отчет по проекту</p>', NULL, '<p>Ссылки на продукты проэкта</p>', '<p>Ссылки на отзывы о проэкте</p>', '<p>Ссылки на рабочие группы проэкта</p>', '<p>Ссылки на социалоные сети проэкта</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_projects_more_partners`
--

CREATE TABLE IF NOT EXISTS `sp_projects_more_partners` (
  `id` int(11) NOT NULL auto_increment,
  `project_more_id` int(11) default NULL,
  `organization_id` int(11) default NULL,
  `type` enum('partner','sponsor','grantor','general_sponsor','creative_time') NOT NULL default 'partner',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Связь проэкта и его партнеров' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_scopes`
--

CREATE TABLE IF NOT EXISTS `sp_scopes` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(1024) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Сферы деятельности' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_scopes`
--

INSERT INTO `sp_scopes` (`id`, `name`) VALUES
(2, '{"1":"\\u041c\\u0435\\u0434\\u0438\\u0446\\u0438\\u043d\\u0430","2":"\\u041c\\u0435\\u0434\\u0456\\u0446\\u0438\\u043d\\u0430","3":"Medics","4":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_services`
--

CREATE TABLE IF NOT EXISTS `sp_services` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL COMMENT 'Название услуг',
  `supplier` int(11) default NULL COMMENT 'Поставщик услуги',
  `price` float default NULL COMMENT 'Цена услуги',
  `terms` varchar(255) default NULL COMMENT 'Сроки',
  `type` int(11) default NULL COMMENT 'Вид услуги',
  `project_result` int(11) default NULL COMMENT 'Результат проекта',
  `condition` varchar(255) default NULL COMMENT 'Условия оказания услуги',
  `note` varchar(2000) default NULL COMMENT 'Примечание',
  `foto` varchar(255) default NULL,
  `thumb` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Услуги' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_services`
--

INSERT INTO `sp_services` (`id`, `name`, `supplier`, `price`, `terms`, `type`, `project_result`, `condition`, `note`, `foto`, `thumb`) VALUES
(2, '{"4":"","3":"Installing programs","2":"\\u0412\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f \\u041f\\u0417","1":"\\u0423\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0430 \\u041f\\u041e"}', 0, 200, '{"4":"","3":"programs, istalling","2":"\\u041f\\u0417, \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440","1":"\\u041f\\u041e, \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440"}', 0, 0, '{"4":"","3":"<p>Good<\\/p>","2":"<p>\\u0414\\u043e\\u0431\\u0440\\u0435<\\/p>","1":"<p>\\u0425\\u043e\\u0440\\u043e\\u0448\\u0435\\u0435 \\u0441\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u0438\\u0435<\\/p>"}', '{"4":"","3":"<p>Note<\\/p>","2":"<p>\\u0412\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u044e\\u0454\\u043c\\u043e \\u0432\\u0441\\u0435<\\/p>","1":"<p>\\u0423\\u0441\\u0442\\u0430\\u043d\\u0430\\u0432\\u043b\\u0438\\u0432\\u0430\\u0435\\u043c \\u0432\\u0441\\u0451<\\/p>"}', 'service/big/7088d3f4c3f8d3a36bc31388e00fea85.jpg', 'service/small/057d50aa91b05df931f122a1f7fc7219.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_services_categories`
--

CREATE TABLE IF NOT EXISTS `sp_services_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
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
  `session_id` varchar(40) NOT NULL default '0',
  `ip_address` varchar(16) NOT NULL default '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL default '0',
  `user_data` text NOT NULL,
  PRIMARY KEY  (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sp_sessions`
--

INSERT INTO `sp_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('d5ec029969b32b21daf5a0e57d5b6838', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0) Gecko/2010010', 1316289492, 'a:4:{s:4:"lang";s:7:"russian";s:7:"lang_id";s:1:"1";s:8:"admin_id";s:2:"22";s:7:"user_id";s:2:"22";}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_territories`
--

CREATE TABLE IF NOT EXISTS `sp_territories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(1024) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Территориальная нацеленность проекта ' AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sp_territories`
--

INSERT INTO `sp_territories` (`id`, `name`) VALUES
(1, '{"1":"\\u0420\\u0430\\u0439\\u043e\\u043d","2":"\\u0420\\u0430\\u0439\\u043e\\u043d","3":"Region","4":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_users`
--

CREATE TABLE IF NOT EXISTS `sp_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(1024) default NULL,
  `suname` varchar(1024) default NULL,
  `email` varchar(255) default NULL,
  `phone` varchar(25) default NULL,
  `about` varchar(1024) default NULL,
  `foto` varchar(255) default NULL,
  `thumb` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `verify_code` varchar(255) default NULL,
  `confirmed` tinyint(4) NOT NULL default '0',
  `group_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Пользователи' AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `sp_users`
--

INSERT INTO `sp_users` (`id`, `name`, `suname`, `email`, `phone`, `about`, `foto`, `thumb`, `password`, `verify_code`, `confirmed`, `group_id`) VALUES
(22, '{"1":"\\u041c\\u0430\\u043a\\u0441\\u0438\\u043c","2":"\\u041c\\u0430\\u043a\\u0441","3":"Max","4":""}', '{"1":"\\u0414\\u043c\\u0438\\u0442\\u0440\\u0438\\u0435\\u0432","2":"\\u0414\\u043c\\u0456\\u0442\\u0440\\u0456\\u0454\\u0432","3":"Dmitriev","4":""}', 'maxdmitrief@gmail.com', '0689594947', '{"1":"<p>\\u042d\\u0442\\u043e \\u042f!<\\/p>","2":"<p>\\u0426\\u0435 \\u044f!<\\/p>","3":"<p>It''s I!<\\/p>","4":""}', 'user/big/bde769bd97e4c85b00e0038ba43f39a0.jpg', 'user/small/ea3785c8f8c182cfdcdf687861100ecd.jpg', 'c5fe25896e49ddfe996db7508cf00534', '16bc2beab3afc1a77f77c0fe5d8c896b', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_videos`
--

CREATE TABLE IF NOT EXISTS `sp_videos` (
  `id` int(11) NOT NULL auto_increment,
  `url` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_videos_report`
--

CREATE TABLE IF NOT EXISTS `sp_videos_report` (
  `id` int(11) NOT NULL auto_increment,
  `project_more_id` int(11) default NULL,
  `video_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Связь дополнительного пректа и видео' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
