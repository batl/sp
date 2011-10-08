-- phpMyAdmin SQL Dump
-- version 3.4.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Сен 11 2011 г., 22:42
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
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Направления деятельности' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_anonses`
--

CREATE TABLE IF NOT EXISTS `sp_anonses` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL COMMENT 'Название',
  `image` varchar(255) default NULL COMMENT 'Картинка',
  `description` varchar(1000) default NULL COMMENT 'Описание',
  `link` varchar(255) default NULL COMMENT 'Ссылка',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Анонсы' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events`
--

CREATE TABLE IF NOT EXISTS `sp_events` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL COMMENT 'Название',
  `place` int(11) default NULL COMMENT 'Место проведения',
  `date_start` date default NULL COMMENT 'Дата начала',
  `date_end` date default NULL COMMENT 'Дата конца',
  `number_of_sessions` int(11) default NULL COMMENT 'Кол-во занятий',
  `schedule` varchar(2000) default NULL COMMENT 'Расписание',
  `price` varchar(2000) default NULL COMMENT 'Стоимость',
  `project_id` int(11) default NULL COMMENT 'В рамках какого проекта',
  `poster` varchar(2000) default NULL COMMENT 'Афиша',
  `description` varchar(2000) default NULL COMMENT 'Описание',
  `type` int(11) default NULL COMMENT 'Категория события',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='События' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events_categories`
--

CREATE TABLE IF NOT EXISTS `sp_events_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Категории событий' AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `sp_events_categories`
--

INSERT INTO `sp_events_categories` (`id`, `name`) VALUES
(1, 'Тренинг'),
(2, 'Семинар'),
(3, 'Мастер-класс'),
(4, 'Событие');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events_curators`
--

CREATE TABLE IF NOT EXISTS `sp_events_curators` (
  `event_id` int(11) default NULL,
  `organization_id` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Связь события и людей проводящих его';

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events_methods`
--

CREATE TABLE IF NOT EXISTS `sp_events_methods` (
  `event_id` int(11) default NULL,
  `method_id` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Связь события и методик';

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events_organizes`
--

CREATE TABLE IF NOT EXISTS `sp_events_organizes` (
  `event_id` int(11) default NULL,
  `organization_id` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Связь события и организаторов события';

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
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Товары' AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sp_goods`
--

INSERT INTO `sp_goods` (`id`, `name`, `supplier`, `price`, `type`, `project_result`) VALUES
(1, 'Тапки', 0, 10, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_goods_categories`
--

CREATE TABLE IF NOT EXISTS `sp_goods_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Категории товаров' AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sp_goods_categories`
--

INSERT INTO `sp_goods_categories` (`id`, `name`) VALUES
(1, 'Обувь');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_grants`
--

CREATE TABLE IF NOT EXISTS `sp_grants` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL COMMENT 'Название',
  `description` varchar(2000) default NULL COMMENT 'Описание',
  `deadline` date default NULL COMMENT 'Дэдлайн',
  `scope` int(11) default NULL COMMENT 'Сфера деятельности',
  `grantor` int(11) default NULL COMMENT 'Грантодатель',
  `links` varchar(255) default NULL COMMENT 'Ссылка на сайт',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Гранты' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_groups`
--

CREATE TABLE IF NOT EXISTS `sp_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Группы пользователей' AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `sp_groups`
--

INSERT INTO `sp_groups` (`id`, `name`) VALUES
(1, 'Администраторы'),
(3, 'Публикаторы');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Идеи' AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sp_ideas`
--

INSERT INTO `sp_ideas` (`id`, `name`, `description`, `author`, `scope`, `tags`) VALUES
(1, 'Создание этносела', '<p>Есть идея создать этносело В Украине</p>', NULL, 0, 'создание, этносело');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_methods`
--

CREATE TABLE IF NOT EXISTS `sp_methods` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL COMMENT 'Название',
  `author` varchar(255) default NULL COMMENT 'Автор',
  `description` varchar(2000) default NULL COMMENT 'Описание',
  `links` varchar(2000) default NULL COMMENT 'Cсылки на doc-файлы',
  `scope` int(11) default NULL COMMENT 'Сфера деятельности',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Методики' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_news`
--

CREATE TABLE IF NOT EXISTS `sp_news` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL COMMENT 'Название',
  `short_description` varchar(255) default NULL COMMENT 'Короткое описание',
  `description` varchar(2000) default NULL COMMENT 'Описание',
  `date` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Новости' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_organizations`
--

CREATE TABLE IF NOT EXISTS `sp_organizations` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL COMMENT 'Название',
  `address` varchar(255) default NULL COMMENT 'Юридический адрес',
  `place` int(11) default NULL COMMENT 'Место дислокации',
  `boss` int(11) default NULL COMMENT 'Директор',
  `phone` varchar(255) default NULL COMMENT 'Тел.',
  `email` varchar(255) default NULL COMMENT 'Email',
  `sites` varchar(255) default NULL COMMENT 'Сайты',
  `scope` int(11) default NULL COMMENT 'Сфера деятельности',
  `activities` int(11) default NULL COMMENT 'Направления деятельности',
  `logo` varchar(255) default NULL COMMENT 'Логотип',
  `description` varchar(2000) default NULL COMMENT 'Описание',
  `grantor` tinyint(4) default NULL,
  `investor` tinyint(4) default NULL,
  `individual` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Организации' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_pages`
--

CREATE TABLE IF NOT EXISTS `sp_pages` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL COMMENT 'Название',
  `body` varchar(5000) default NULL COMMENT 'Контент',
  `meta` varchar(255) default NULL COMMENT 'Меты теги',
  `slug` varchar(255) default NULL,
  `in_footer` tinyint(4) NOT NULL default '0',
  `in_header` tinyint(4) NOT NULL default '0',
  `system` tinyint(4) NOT NULL default '0',
  `weight` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Страницы' AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `sp_pages`
--

INSERT INTO `sp_pages` (`id`, `name`, `body`, `meta`, `slug`, `in_footer`, `in_header`, `system`, `weight`) VALUES
(1, 'О Нас', '<p>Контент страницы "О нас". Контент.</p>', 'о нас, о вас, о них, о ней', 'about', 0, 1, 0, 0),
(3, 'Ссылки', '<p>http://google.com</p>', 'полезные ссылки', 'links', 0, 1, 0, 0),
(4, 'Контакты', '<p>Наш адрес: не дом и не улица. Наш адрес - Советский Союз.</p>', 'контакты', 'contacts', 1, 0, 0, 0),
(5, 'Правила', '<p>Правила:</p>', 'правила', 'privacy', 1, 0, 0, 0),
(6, 'Соглашения', '<p>Соглашения:</p>', 'соглашения', 'conditions', 1, 0, 0, 0),
(7, 'Проекты', '<p>Проэкты</p>', 'проэкты', 'project', 0, 1, 1, 0),
(8, 'Идеи', '<p>идеи</p>', 'идеи', 'ideas', 0, 1, 1, 1);

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
  `project_more_id` int(11) default NULL,
  `photo_id` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Связь дополнительного пректа и фотографий';

-- --------------------------------------------------------

--
-- Структура таблицы `sp_places`
--

CREATE TABLE IF NOT EXISTS `sp_places` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL COMMENT 'Название',
  `address` varchar(255) default NULL COMMENT 'Адрес',
  `road_plan` varchar(255) default NULL COMMENT 'План проезда',
  `phones` varchar(255) default NULL COMMENT 'Телефоны',
  `place_type` int(11) default NULL COMMENT 'Тип места',
  `note` varchar(2000) default NULL COMMENT 'Примечание',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Места проведения проектов' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_places_categories`
--

CREATE TABLE IF NOT EXISTS `sp_places_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Категории мест проведения проектов' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_projects`
--

CREATE TABLE IF NOT EXISTS `sp_projects` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `boss` int(11) default NULL COMMENT 'Руководитель',
  `initiator` int(11) default NULL COMMENT 'Инициатор',
  `organizer` int(11) default NULL COMMENT 'Организатор',
  `date` date default NULL COMMENT 'Сроки проведения',
  `place` int(11) default NULL COMMENT 'Место проведения',
  `purpose` varchar(500) default NULL COMMENT 'Цель',
  `short_description` varchar(250) default NULL COMMENT 'Краткое описание проекта',
  `category_id` int(11) default NULL COMMENT 'Категория проекта',
  `tags` varchar(255) default NULL COMMENT 'Ключевые слова',
  `banner` varchar(255) default NULL COMMENT 'Баннер',
  `logo` varchar(255) default NULL COMMENT 'Логотип',
  `poster` varchar(2000) default NULL COMMENT 'Афиша',
  `note` varchar(2000) default NULL COMMENT 'Примечание',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Таблица проэктов' AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sp_projects`
--

INSERT INTO `sp_projects` (`id`, `name`, `boss`, `initiator`, `organizer`, `date`, `place`, `purpose`, `short_description`, `category_id`, `tags`, `banner`, `logo`, `poster`, `note`) VALUES
(1, 'Этносело', NULL, NULL, NULL, '0000-00-00', 0, '<p>Создание ентосел по всей стране</p>', 'Еснтосело - это не просто село ...', 0, 'этносело', NULL, NULL, '<p>Афиша проекта "Этносело"</p>', '<p>Описание проэкта "Этносело"</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_projects_categories`
--

CREATE TABLE IF NOT EXISTS `sp_projects_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Категории проэктов' AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `sp_projects_categories`
--

INSERT INTO `sp_projects_categories` (`id`, `name`) VALUES
(1, 'Web'),
(2, 'Территориальные'),
(3, 'Государственные'),
(4, 'Музыкальные');

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
  `project_more_id` int(11) default NULL,
  `organization_id` int(11) default NULL,
  `type` enum('partner','sponsor','grantor','general_sponsor','creative_time') NOT NULL default 'partner'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Связь проэкта и его партнеров';

-- --------------------------------------------------------

--
-- Структура таблицы `sp_scopes`
--

CREATE TABLE IF NOT EXISTS `sp_scopes` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Сферы деятельности' AUTO_INCREMENT=1 ;

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
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Услуги' AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sp_services`
--

INSERT INTO `sp_services` (`id`, `name`, `supplier`, `price`, `terms`, `type`, `project_result`, `condition`, `note`) VALUES
(1, 'Стрижка', 0, 40, 'стрижка', 0, 0, '<p>Стрижки качественные</p>', '<p>Прейскурант стрижек:</p>\n<p>1. Под ноль</p>\n<p>2. Модельная</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_services_categories`
--

CREATE TABLE IF NOT EXISTS `sp_services_categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Категории услуг' AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `sp_services_categories`
--

INSERT INTO `sp_services_categories` (`id`, `name`) VALUES
(1, 'Косметические услуги');

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
('f9b93b52a44a1b34b9a8e99781eceac2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 5.1; rv:6.0) Gecko/2010010', 1315769847, 'a:1:{s:8:"admin_id";s:1:"1";}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_territories`
--

CREATE TABLE IF NOT EXISTS `sp_territories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Территориальная нацеленность проекта ' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `sp_users`
--

CREATE TABLE IF NOT EXISTS `sp_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `suname` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `phone` varchar(25) default NULL,
  `about` varchar(255) default NULL,
  `foto` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `verify_code` varchar(255) default NULL,
  `confirmed` tinyint(4) NOT NULL default '0',
  `group_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Пользователи' AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `sp_users`
--

INSERT INTO `sp_users` (`id`, `name`, `suname`, `email`, `phone`, `about`, `foto`, `password`, `verify_code`, `confirmed`, `group_id`) VALUES
(1, 'Макс', 'Дмитриев', 'maxdmitrief@gmail.com', '0689594946', 'Это я!', NULL, 'e10adc3949ba59abbe56e057f20f883e', '5b24c854cb0c2115ea64aa0373220816', 1, 1),
(2, 'Марсель', 'Шавалов', 'marseilshavalov@gmail.com', NULL, '<p>Настоящий друг!</p>', NULL, NULL, NULL, 1, 1);

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
  `project_more_id` int(11) default NULL,
  `video_id` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Связь дополнительного пректа и видео';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
