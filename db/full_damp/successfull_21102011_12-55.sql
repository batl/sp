-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Окт 21 2011 г., 11:50
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Анонсы' AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `sp_anonses`
--

INSERT INTO `sp_anonses` (`id`, `name`, `image`, `thumb`, `description`, `link`, `in_slider`) VALUES
(2, '{"1":"\\"\\u041b\\u0438\\u0433\\u0430 \\u0415\\u0432\\u0440\\u043e\\u043f\\u044b\\"","2":"\\u0410\\u043d\\u043e\\u043d\\u0441","3":""}', 'static/images/entries/anonses/big/aaf56714972d662e0aed2fb39bf092e6.jpg', 'static/images/entries/anonses/small/238261eb986f77d8606221f7b3fcb440.jpg', '{"1":"<p>28 \\u0430\\u043f\\u0440\\u0435\\u043b\\u044f 22:00 \\u041f\\u043e\\u043b\\u0443\\u0444\\u0438\\u043d\\u0430\\u043b \\"\\u041b\\u0438\\u0433\\u0430 \\u0415\\u0432\\u0440\\u043e\\u043f\\u044b\\"<\\/p>","2":"","3":""}', 'http://google.com', 1),
(3, '{"1":"\\u201c\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0441\\u043a\\u0438\\u0435 \\u0432\\u0435\\u0447\\u043e\\u0440\\u043d\\u0438\\u0446\\u044b\\u201d \\u043e\\u0442 \\u0441\\u0442\\u0443\\u0434\\u0438\\u0438 \\u00ab\\u041a\\u0438\\u0432\\u0438\\u00bb","2":"","3":"","4":""}', 'static/images/entries/anonses/big/a74f24fb325eef0172954be691ad0440.jpg', 'static/images/entries/anonses/small/7e7621cf9f71544c1735290357c2c943.jpg', '{"1":"<p><!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal<\\/w:View> <w:Zoom>0<\\/w:Zoom> <w:TrackMoves ><\\/w:TrackMoves> <w:TrackFormatting ><\\/w:TrackFormatting> <w:PunctuationKerning ><\\/w:PunctuationKerning> <w:ValidateAgainstSchemas ><\\/w:ValidateAgainstSchemas> <w:SaveIfXMLInvalid>false<\\/w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false<\\/w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false<\\/w:AlwaysShowPlaceholderText> <w:DoNotPromoteQF ><\\/w:DoNotPromoteQF> <w:LidThemeOther>RU<\\/w:LidThemeOther> <w:LidThemeAsian>X-NONE<\\/w:LidThemeAsian> <w:LidThemeComplexScript>X-NONE<\\/w:LidThemeComplexScript> <w:Compatibility> <w:BreakWrappedTables ><\\/w:BreakWrappedTables> <w:SnapToGridInCell ><\\/w:SnapToGridInCell> <w:WrapTextWithPunct ><\\/w:WrapTextWithPunct> <w:UseAsianBreakRules ><\\/w:UseAsianBreakRules> <w:DontGrowAutofit ><\\/w:DontGrowAutofit> <w:SplitPgBreakAndParaMark ><\\/w:SplitPgBreakAndParaMark> <w:DontVertAlignCellWithSp ><\\/w:DontVertAlignCellWithSp> <w:DontBreakConstrainedForcedTables ><\\/w:DontBreakConstrainedForcedTables> <w:DontVertAlignInTxbx ><\\/w:DontVertAlignInTxbx> <w:Word11KerningPairs ><\\/w:Word11KerningPairs> <w:CachedColBalance ><\\/w:CachedColBalance> <\\/w:Compatibility> <w:BrowserLevel>MicrosoftInternetExplorer4<\\/w:BrowserLevel> <m:mathPr> <m:mathFont m:val=\\"Cambria Math\\" ><\\/m:mathFont> <m:brkBin m:val=\\"before\\" ><\\/m:brkBin> <m:brkBinSub m:val=\\" \\" ><\\/m:brkBinSub> <m:smallFrac m:val=\\"off\\" ><\\/m:smallFrac> <m:dispDef ><\\/m:dispDef> <m:lMargin m:val=\\"0\\" ><\\/m:lMargin> <m:rMargin m:val=\\"0\\" ><\\/m:rMargin> <m:defJc m:val=\\"centerGroup\\" ><\\/m:defJc> <m:wrapIndent m:val=\\"1440\\" ><\\/m:wrapIndent> <m:intLim m:val=\\"subSup\\" ><\\/m:intLim> <m:naryLim m:val=\\"undOvr\\" ><\\/m:naryLim> <\\/m:mathPr><\\/w:WordDocument> <\\/xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\\"false\\" DefUnhideWhenUsed=\\"true\\"   DefSemiHidden=\\"true\\" DefQFormat=\\"false\\" DefPriority=\\"99\\"   LatentStyleCount=\\"267\\"> <w:LsdException Locked=\\"false\\" Priority=\\"0\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Normal\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"heading 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 7\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 8\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 9\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 7\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 8\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 9\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"35\\" QFormat=\\"true\\" Name=\\"caption\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"10\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Title\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"1\\" Name=\\"Default Paragraph Font\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"11\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtitle\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"22\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Strong\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"20\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Emphasis\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"59\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Table Grid\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" UnhideWhenUsed=\\"false\\" Name=\\"Placeholder Text\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"1\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"No Spacing\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" UnhideWhenUsed=\\"false\\" Name=\\"Revision\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"34\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"List Paragraph\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"29\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Quote\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"30\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Quote\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"19\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtle Emphasis\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"21\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Emphasis\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"31\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtle Reference\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"32\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Reference\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"33\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Book Title\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"37\\" Name=\\"Bibliography\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" QFormat=\\"true\\" Name=\\"TOC Heading\\" ><\\/w:LsdException> <\\/w:LatentStyles> <\\/xml><![endif]--><!--[if gte mso 10]> <mce:style><!   \\/* Style Definitions *\\/  table.MsoNormalTable \\t{mso-style-name:\\"\\u041e\\u0431\\u044b\\u0447\\u043d\\u0430\\u044f \\u0442\\u0430\\u0431\\u043b\\u0438\\u0446\\u0430\\"; \\tmso-tstyle-rowband-size:0; \\tmso-tstyle-colband-size:0; \\tmso-style-noshow:yes; \\tmso-style-priority:99; \\tmso-style-qformat:yes; \\tmso-style-parent:\\"\\"; \\tmso-padding-alt:0cm 5.4pt 0cm 5.4pt; \\tmso-para-margin:0cm; \\tmso-para-margin-bottom:.0001pt; \\tmso-pagination:widow-orphan; \\tfont-size:11.0pt; \\tfont-family:\\"Calibri\\",\\"sans-serif\\"; \\tmso-ascii-font-family:Calibri; \\tmso-ascii-theme-font:minor-latin; \\tmso-fareast-font-family:\\"Times New Roman\\"; \\tmso-fareast-theme-font:minor-fareast; \\tmso-hansi-font-family:Calibri; \\tmso-hansi-theme-font:minor-latin; \\tmso-bidi-font-family:\\"Times New Roman\\"; \\tmso-bidi-theme-font:minor-bidi;} --> <!--[endif] --><span style=\\"font-size: 10pt;\\">8 \\u043e\\u043a\\u0442\\u044f\\u0431\\u0440\\u044f, 19:00, \\u043a\\u0430\\u0444\\u0435 &ldquo;\\u0425\\u0443\\u0442\\u043e\\u0440\\u043e\\u043a&rdquo;<\\/span><\\/p>","2":"","3":"","4":""}', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events`
--

CREATE TABLE IF NOT EXISTS `sp_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
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
  `logo` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `tags` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='События' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_events`
--

INSERT INTO `sp_events` (`id`, `user_id`, `name`, `place`, `date_start`, `date_end`, `number_of_sessions`, `schedule`, `price`, `project_id`, `poster`, `description`, `type`, `in_process`, `logo`, `thumb`, `tags`) VALUES
(1, NULL, '{"1":"\\u041a\\u0443\\u0440\\u0441 HTML","2":"HTML \\u043a\\u0443\\u0440\\u0441","3":""}', 1, '2011-09-09', '2011-09-17', 5, '{"1":"<p>\\u0421\\u0432\\u043e\\u0431\\u043e\\u0434\\u043d\\u044b\\u0439<\\/p>","2":"","3":""}', '{"1":"<p>200 - 500<\\/p>","2":"","3":""}', 0, '{"1":"<p>\\u0410\\u0444\\u0438\\u0448\\u0430 \\u0441\\u043e\\u0431\\u044b\\u0442\\u0438\\u044f<\\/p>","2":"","3":""}', '{"1":"<p>\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u0441\\u043e\\u0431\\u044b\\u0442\\u0438\\u044f<\\/p>","2":"","3":""}', 7, 0, 'static/images/entries/event/big/d124a3a4b6a7ee7833bd78174599cc3e.jpg', 'static/images/entries/event/small/895a391497eea190b91fcb750fd274b7.jpg', '{"1":"html, \\u043a\\u0443\\u0440\\u0441","2":"","3":""}'),
(2, 22, '{"1":"\\u041a\\u0443\\u0440\\u0441 Joomla!","2":"","3":""}', 1, '2011-10-01', '2011-10-25', 0, '{"1":"","2":"","3":""}', '{"1":"","2":"","3":""}', 0, '{"1":"","2":"","3":""}', '{"1":"","2":"","3":""}', 7, 0, 'static/images/entries/event/big/a296d08eb6d3713a532f932b3143f0f7.jpg', 'static/images/entries/event/small/af549808006f7eb01e2b4149c57e8448.jpg', '{"1":"joomla, \\u043a\\u0443\\u0440\\u0441","2":"","3":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events_categories`
--

CREATE TABLE IF NOT EXISTS `sp_events_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Категории событий' AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `sp_events_categories`
--

INSERT INTO `sp_events_categories` (`id`, `name`) VALUES
(5, '{"1":"\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u043a\\u043b\\u0430\\u0441\\u0441","2":"\\u041c\\u0430\\u0441\\u0442\\u0435\\u0440 \\u043a\\u043b\\u0430\\u0441","3":"","4":""}'),
(6, '{"1":"\\u0422\\u0440\\u0435\\u043d\\u043d\\u0438\\u043d\\u0433","2":"\\u0422\\u0440\\u0435\\u043d\\u0456\\u043d\\u0433","3":"","4":""}'),
(7, '{"1":"\\u041a\\u0443\\u0440\\u0441","2":"\\u041a\\u0443\\u0440\\u0441","3":"","4":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events_curators`
--

CREATE TABLE IF NOT EXISTS `sp_events_curators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) DEFAULT NULL,
  `organizations_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Связь события и людей проводящих его' AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `sp_events_curators`
--

INSERT INTO `sp_events_curators` (`id`, `entry_id`, `organizations_id`) VALUES
(1, 1, 2),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_events_methods`
--

CREATE TABLE IF NOT EXISTS `sp_events_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) DEFAULT NULL,
  `methods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Связь события и методик' AUTO_INCREMENT=3 ;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) DEFAULT NULL,
  `organizations_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `supplier` int(11) DEFAULT NULL COMMENT 'Поставщик товара ',
  `price` float DEFAULT NULL COMMENT 'Цена товара ',
  `type` int(11) DEFAULT NULL COMMENT 'Вид товара',
  `project_result` int(11) DEFAULT NULL COMMENT 'Результат проекта',
  `foto` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Товары' AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `sp_goods`
--

INSERT INTO `sp_goods` (`id`, `name`, `supplier`, `price`, `type`, `project_result`, `foto`, `thumb`) VALUES
(5, '{"1":"\\u0420\\u043e\\u0431\\u043e\\u0442","2":"\\u0420\\u043e\\u0431\\u043e\\u0442","3":"","4":""}', 2, 35, 2, 2, 'static/images/entries/goods/big/a8710dc3770a80152a8cc112a3dcf44b.jpg', 'static/images/entries/goods/small/fbf0380f8fe2023e3d3c624fad7256da.jpg'),
(6, '{"1":"\\u041a\\u0438\\u0440\\u043f\\u0438\\u0447","2":"","3":""}', 2, 50, 3, 5, 'static/images/entries/goods/big/5b2ef6e9ca80d072ff88da12788113a4.jpg', 'static/images/entries/goods/small/4b7166513744f458c401852ae0e9f071.jpg'),
(7, '{"1":"\\u0426\\u0435\\u043c\\u0435\\u043d\\u0442","2":"","3":""}', 2, 80, 3, 5, 'static/images/entries/goods/big/f32dbda23f43163d4d66310fc85fcbdd.jpg', 'static/images/entries/goods/small/95c4f5068fca61b4ef312dfaee4823da.jpg'),
(8, '{"1":"\\u041a\\u0440\\u0430\\u0441\\u043a\\u0430","2":"","3":""}', 2, 25, 3, 5, 'static/images/entries/goods/big/6147f3c9f77d89c116db0a69f58e3a0f.jpg', 'static/images/entries/goods/small/1c5bad0a29594f56fbfca230579b51d3.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_goods_categories`
--

CREATE TABLE IF NOT EXISTS `sp_goods_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Категории товаров' AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `sp_goods_categories`
--

INSERT INTO `sp_goods_categories` (`id`, `name`) VALUES
(2, '{"4":"","3":"Shoose","2":"\\u041e\\u0431\\u0443\\u0432\\u044c","1":"\\u041e\\u0431\\u0443\\u0432\\u044c"}'),
(3, '{"1":"\\u0421\\u0442\\u0440\\u043e\\u0439\\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u044b","2":"","3":""}'),
(4, '{"1":"some category","2":"","3":""}'),
(5, '{"1":"\\u041d\\u043e\\u0432\\u0430\\u044f \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f","2":"","3":""}');

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
  `description` text COMMENT 'Описание',
  `author` int(11) DEFAULT NULL COMMENT 'Автор',
  `scope` int(11) DEFAULT NULL COMMENT 'Сфера деятельности',
  `tags` text COMMENT 'Ключевые слова ',
  PRIMARY KEY (`id`)
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COMMENT 'Название',
  `short_description` text COMMENT 'Короткое описание',
  `description` text COMMENT 'Описание',
  `date` date DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Новости' AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `sp_news`
--

INSERT INTO `sp_news` (`id`, `name`, `short_description`, `description`, `date`, `project_id`) VALUES
(2, '{"1":"\\u041f\\u043e\\u0435\\u0437\\u0434\\u043a\\u0430 \\u0432 \\u042d\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b\\u043e","2":"\\u0425\\u043e\\u0440\\u043e\\u0448\\u0430 \\u043d\\u043e\\u0432\\u0438\\u043d\\u0430","3":"","4":""}', '{"1":"16 \\u043e\\u043a\\u0442\\u044f\\u0431\\u0440\\u044f \\u0441\\u043e\\u0441\\u0442\\u043e\\u0438\\u0442\\u0441\\u044f \\u043f\\u043e\\u0435\\u0437\\u0434\\u043a\\u0430 \\u0432 \\u042d\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b\\u043e. \\u0421\\u043e\\u0441\\u0442\\u043e\\u0438\\u0442\\u0441\\u044f \\u043f\\u0440\\u0435\\u0437\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u044f \\u043d\\u043e\\u0432\\u043e\\u0439 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u044b \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430 \\u0438 \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u043e\\u0433\\u043e \\u0441\\u0430\\u0439\\u0442\\u0430.","2":"\\u0441\\u0430\\u0439\\u0442 \\u043d\\u0435\\u0437\\u0430\\u0431\\u0430\\u0440\\u043e\\u043c \\u0431\\u0443\\u0434\\u0435 \\u0433\\u043e\\u0442\\u043e\\u0432\\u0438\\u0439","3":"","4":""}', '{"1":"<p><!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal<\\/w:View> <w:Zoom>0<\\/w:Zoom> <w:TrackMoves \\/> <w:TrackFormatting \\/> <w:PunctuationKerning \\/> <w:ValidateAgainstSchemas \\/> <w:SaveIfXMLInvalid>false<\\/w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false<\\/w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false<\\/w:AlwaysShowPlaceholderText> <w:DoNotPromoteQF \\/> <w:LidThemeOther>RU<\\/w:LidThemeOther> <w:LidThemeAsian>X-NONE<\\/w:LidThemeAsian> <w:LidThemeComplexScript>X-NONE<\\/w:LidThemeComplexScript> <w:Compatibility> <w:BreakWrappedTables \\/> <w:SnapToGridInCell \\/> <w:WrapTextWithPunct \\/> <w:UseAsianBreakRules \\/> <w:DontGrowAutofit \\/> <w:SplitPgBreakAndParaMark \\/> <w:DontVertAlignCellWithSp \\/> <w:DontBreakConstrainedForcedTables \\/> <w:DontVertAlignInTxbx \\/> <w:Word11KerningPairs \\/> <w:CachedColBalance \\/> <\\/w:Compatibility> <w:BrowserLevel>MicrosoftInternetExplorer4<\\/w:BrowserLevel> <m:mathPr> <m:mathFont m:val=\\"Cambria Math\\" \\/> <m:brkBin m:val=\\"before\\" \\/> <m:brkBinSub m:val=\\"&#45;-\\" \\/> <m:smallFrac m:val=\\"off\\" \\/> <m:dispDef \\/> <m:lMargin m:val=\\"0\\" \\/> <m:rMargin m:val=\\"0\\" \\/> <m:defJc m:val=\\"centerGroup\\" \\/> <m:wrapIndent m:val=\\"1440\\" \\/> <m:intLim m:val=\\"subSup\\" \\/> <m:naryLim m:val=\\"undOvr\\" \\/> <\\/m:mathPr><\\/w:WordDocument> <\\/xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\\"false\\" DefUnhideWhenUsed=\\"true\\"   DefSemiHidden=\\"true\\" DefQFormat=\\"false\\" DefPriority=\\"99\\"   LatentStyleCount=\\"267\\"> <w:LsdException Locked=\\"false\\" Priority=\\"0\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Normal\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"heading 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 7\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 8\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 9\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 7\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 8\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 9\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"35\\" QFormat=\\"true\\" Name=\\"caption\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"10\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Title\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"1\\" Name=\\"Default Paragraph Font\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"11\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtitle\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"22\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Strong\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"20\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Emphasis\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"59\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Table Grid\\" \\/> <w:LsdException Locked=\\"false\\" UnhideWhenUsed=\\"false\\" Name=\\"Placeholder Text\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"1\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"No Spacing\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" UnhideWhenUsed=\\"false\\" Name=\\"Revision\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"34\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"List Paragraph\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"29\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Quote\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"30\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Quote\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"19\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtle Emphasis\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"21\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Emphasis\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"31\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtle Reference\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"32\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Reference\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"33\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Book Title\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"37\\" Name=\\"Bibliography\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" QFormat=\\"true\\" Name=\\"TOC Heading\\" \\/> <\\/w:LatentStyles> <\\/xml><![endif]--><!--[if gte mso 10]>\\n<style>\\n \\/* Style Definitions *\\/\\n table.MsoNormalTable\\n\\t{mso-style-name:\\"\\u041e\\u0431\\u044b\\u0447\\u043d\\u0430\\u044f \\u0442\\u0430\\u0431\\u043b\\u0438\\u0446\\u0430\\";\\n\\tmso-tstyle-rowband-size:0;\\n\\tmso-tstyle-colband-size:0;\\n\\tmso-style-noshow:yes;\\n\\tmso-style-priority:99;\\n\\tmso-style-qformat:yes;\\n\\tmso-style-parent:\\"\\";\\n\\tmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\\n\\tmso-para-margin:0cm;\\n\\tmso-para-margin-bottom:.0001pt;\\n\\tmso-pagination:widow-orphan;\\n\\tfont-size:11.0pt;\\n\\tfont-family:\\"Calibri\\",\\"sans-serif\\";\\n\\tmso-ascii-font-family:Calibri;\\n\\tmso-ascii-theme-font:minor-latin;\\n\\tmso-fareast-font-family:\\"Times New Roman\\";\\n\\tmso-fareast-theme-font:minor-fareast;\\n\\tmso-hansi-font-family:Calibri;\\n\\tmso-hansi-theme-font:minor-latin;\\n\\tmso-bidi-font-family:\\"Times New Roman\\";\\n\\tmso-bidi-theme-font:minor-bidi;}\\n<\\/style>\\n<![endif]--><\\/p>\\n<p class=\\"MsoNormal\\">16 \\u043e\\u043a\\u0442\\u044f\\u0431\\u0440\\u044f \\u0441\\u043e\\u0441\\u0442\\u043e\\u0438\\u0442\\u0441\\u044f \\u043f\\u043e\\u0435\\u0437\\u0434\\u043a\\u0430 \\u0432 \\u042d\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b\\u043e. \\u0421\\u043e\\u0441\\u0442\\u043e\\u0438\\u0442\\u0441\\u044f \\u043f\\u0440\\u0435\\u0437\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u044f \\u043d\\u043e\\u0432\\u043e\\u0439 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u044b \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430 \\u0438 \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u043e\\u0433\\u043e \\u0441\\u0430\\u0439\\u0442\\u0430.<\\/p>","2":"","3":"","4":""}', '2011-09-20', 0),
(3, '{"1":"\\u041f\\u0440\\u0438\\u0433\\u043b\\u0430\\u0448\\u0430\\u0435\\u043c \\u043d\\u0430 \\u0432\\u0435\\u0447\\u0435\\u0440\\u0438\\u043d\\u043a\\u0443!","2":"","3":"","4":""}', '{"1":"\\u0421\\u0442\\u0443\\u0434\\u0438\\u044f \\u201c\\u041a\\u0438\\u0432\\u0438\\u201d \\u0438 \\u043a\\u0430\\u0444\\u0435 \\u00ab\\u0425\\u0443\\u0442\\u043e\\u0440\\u043e\\u043a\\u00bb \\u043f\\u0440\\u0438\\u0433\\u043b\\u0430\\u0448\\u0430\\u044e\\u0442 \\u0432\\u0441\\u0435\\u0445 \\u043b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0443\\u043a\\u0440\\u0430\\u0438\\u043d\\u0441\\u043a\\u0438\\u0445 \\u0433\\u0443\\u043b\\u044f\\u043d\\u0438\\u0439 \\u043e\\u0442\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0432\\u043c\\u0435\\u0441\\u0442\\u0435 \\u043f\\u0435\\u0440\\u0432\\u0443\\u044e \\u0433\\u043e\\u0434\\u043e\\u0432\\u0449\\u0438\\u043d\\u0443 \\u043a\\u0430\\u0444\\u0435 \\u201c\\u0425\\u0443\\u0442\\u043e\\u0440\\u043e\\u043a\\u201d. ","2":"","3":"","4":""}', '{"1":"<p><!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal<\\/w:View> <w:Zoom>0<\\/w:Zoom> <w:TrackMoves \\/> <w:TrackFormatting \\/> <w:PunctuationKerning \\/> <w:ValidateAgainstSchemas \\/> <w:SaveIfXMLInvalid>false<\\/w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false<\\/w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false<\\/w:AlwaysShowPlaceholderText> <w:DoNotPromoteQF \\/> <w:LidThemeOther>RU<\\/w:LidThemeOther> <w:LidThemeAsian>X-NONE<\\/w:LidThemeAsian> <w:LidThemeComplexScript>X-NONE<\\/w:LidThemeComplexScript> <w:Compatibility> <w:BreakWrappedTables \\/> <w:SnapToGridInCell \\/> <w:WrapTextWithPunct \\/> <w:UseAsianBreakRules \\/> <w:DontGrowAutofit \\/> <w:SplitPgBreakAndParaMark \\/> <w:DontVertAlignCellWithSp \\/> <w:DontBreakConstrainedForcedTables \\/> <w:DontVertAlignInTxbx \\/> <w:Word11KerningPairs \\/> <w:CachedColBalance \\/> <\\/w:Compatibility> <w:BrowserLevel>MicrosoftInternetExplorer4<\\/w:BrowserLevel> <m:mathPr> <m:mathFont m:val=\\"Cambria Math\\" \\/> <m:brkBin m:val=\\"before\\" \\/> <m:brkBinSub m:val=\\"&#45;-\\" \\/> <m:smallFrac m:val=\\"off\\" \\/> <m:dispDef \\/> <m:lMargin m:val=\\"0\\" \\/> <m:rMargin m:val=\\"0\\" \\/> <m:defJc m:val=\\"centerGroup\\" \\/> <m:wrapIndent m:val=\\"1440\\" \\/> <m:intLim m:val=\\"subSup\\" \\/> <m:naryLim m:val=\\"undOvr\\" \\/> <\\/m:mathPr><\\/w:WordDocument> <\\/xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\\"false\\" DefUnhideWhenUsed=\\"true\\"   DefSemiHidden=\\"true\\" DefQFormat=\\"false\\" DefPriority=\\"99\\"   LatentStyleCount=\\"267\\"> <w:LsdException Locked=\\"false\\" Priority=\\"0\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Normal\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"heading 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 7\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 8\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 9\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 7\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 8\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 9\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"35\\" QFormat=\\"true\\" Name=\\"caption\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"10\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Title\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"1\\" Name=\\"Default Paragraph Font\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"11\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtitle\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"22\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Strong\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"20\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Emphasis\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"59\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Table Grid\\" \\/> <w:LsdException Locked=\\"false\\" UnhideWhenUsed=\\"false\\" Name=\\"Placeholder Text\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"1\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"No Spacing\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" UnhideWhenUsed=\\"false\\" Name=\\"Revision\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"34\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"List Paragraph\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"29\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Quote\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"30\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Quote\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 1\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 2\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 3\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 4\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 5\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 6\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"19\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtle Emphasis\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"21\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Emphasis\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"31\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtle Reference\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"32\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Reference\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"33\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Book Title\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"37\\" Name=\\"Bibliography\\" \\/> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" QFormat=\\"true\\" Name=\\"TOC Heading\\" \\/> <\\/w:LatentStyles> <\\/xml><![endif]--><!--[if gte mso 10]>\\n<style>\\n \\/* Style Definitions *\\/\\n table.MsoNormalTable\\n\\t{mso-style-name:\\"\\u041e\\u0431\\u044b\\u0447\\u043d\\u0430\\u044f \\u0442\\u0430\\u0431\\u043b\\u0438\\u0446\\u0430\\";\\n\\tmso-tstyle-rowband-size:0;\\n\\tmso-tstyle-colband-size:0;\\n\\tmso-style-noshow:yes;\\n\\tmso-style-priority:99;\\n\\tmso-style-qformat:yes;\\n\\tmso-style-parent:\\"\\";\\n\\tmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\\n\\tmso-para-margin:0cm;\\n\\tmso-para-margin-bottom:.0001pt;\\n\\tmso-pagination:widow-orphan;\\n\\tfont-size:11.0pt;\\n\\tfont-family:\\"Calibri\\",\\"sans-serif\\";\\n\\tmso-ascii-font-family:Calibri;\\n\\tmso-ascii-theme-font:minor-latin;\\n\\tmso-fareast-font-family:\\"Times New Roman\\";\\n\\tmso-fareast-theme-font:minor-fareast;\\n\\tmso-hansi-font-family:Calibri;\\n\\tmso-hansi-theme-font:minor-latin;\\n\\tmso-bidi-font-family:\\"Times New Roman\\";\\n\\tmso-bidi-theme-font:minor-bidi;}\\n<\\/style>\\n<![endif]--><\\/p>\\n<p class=\\"MsoNormal\\" style=\\"margin: 6pt 0cm;\\"><span style=\\"font-size: 10pt; font-family: &quot;Verdana&quot;,&quot;sans-serif&quot;;\\">\\u0421\\u0442\\u0443\\u0434\\u0438\\u044f &ldquo;\\u041a\\u0438\\u0432\\u0438&rdquo; \\u0438 \\u043a\\u0430\\u0444\\u0435 &laquo;\\u0425\\u0443\\u0442\\u043e\\u0440\\u043e\\u043a&raquo; \\u043f\\u0440\\u0438\\u0433\\u043b\\u0430\\u0448\\u0430\\u044e\\u0442 \\u0432\\u0441\\u0435\\u0445 \\u043b\\u044e\\u0431\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0443\\u043a\\u0440\\u0430\\u0438\\u043d\\u0441\\u043a\\u0438\\u0445 \\u0433\\u0443\\u043b\\u044f\\u043d\\u0438\\u0439 \\u043e\\u0442\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0432\\u043c\\u0435\\u0441\\u0442\\u0435 \\u043f\\u0435\\u0440\\u0432\\u0443\\u044e \\u0433\\u043e\\u0434\\u043e\\u0432\\u0449\\u0438\\u043d\\u0443 \\u043a\\u0430\\u0444\\u0435 &ldquo;\\u0425\\u0443\\u0442\\u043e\\u0440\\u043e\\u043a&rdquo;.<span>&nbsp; <\\/span><\\/span><\\/p>","2":"","3":"","4":""}', '2011-10-04', 0);
INSERT INTO `sp_news` (`id`, `name`, `short_description`, `description`, `date`, `project_id`) VALUES
(4, '{"1":"\\u0428\\u043a\\u043e\\u043b\\u0430 \\u0413\\u0440\\u0430\\u043d\\u0442\\u043e\\u043f\\u0438\\u0441\\u0446\\u0435\\u0432","2":"","3":"","4":""}', '{"1":"2 \\u043e\\u043a\\u0442\\u044f\\u0431\\u0440\\u044f \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0428\\u043a\\u043e\\u043b\\u0430 \\u0413\\u0440\\u0430\\u043d\\u0442\\u043e\\u043f\\u0438\\u0441\\u0446\\u0435\\u0432. \\u0412\\u0441\\u0442\\u0440\\u0435\\u0447\\u0430 \\u0441\\u043e\\u0441\\u0442\\u043e\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0414\\u043e\\u043c\\u0435 \\u041c\\u0430\\u043a\\u0441\\u0430 \\u0413\\u0440\\u0430\\u043d\\u0442\\u0430 \\u0432 12:00.","2":"","3":"","4":""}', '{"1":"<p><!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal<\\/w:View> <w:Zoom>0<\\/w:Zoom> <w:TrackMoves ><\\/w:TrackMoves> <w:TrackFormatting ><\\/w:TrackFormatting> <w:PunctuationKerning ><\\/w:PunctuationKerning> <w:ValidateAgainstSchemas ><\\/w:ValidateAgainstSchemas> <w:SaveIfXMLInvalid>false<\\/w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false<\\/w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false<\\/w:AlwaysShowPlaceholderText> <w:DoNotPromoteQF ><\\/w:DoNotPromoteQF> <w:LidThemeOther>RU<\\/w:LidThemeOther> <w:LidThemeAsian>X-NONE<\\/w:LidThemeAsian> <w:LidThemeComplexScript>X-NONE<\\/w:LidThemeComplexScript> <w:Compatibility> <w:BreakWrappedTables ><\\/w:BreakWrappedTables> <w:SnapToGridInCell ><\\/w:SnapToGridInCell> <w:WrapTextWithPunct ><\\/w:WrapTextWithPunct> <w:UseAsianBreakRules ><\\/w:UseAsianBreakRules> <w:DontGrowAutofit ><\\/w:DontGrowAutofit> <w:SplitPgBreakAndParaMark ><\\/w:SplitPgBreakAndParaMark> <w:DontVertAlignCellWithSp ><\\/w:DontVertAlignCellWithSp> <w:DontBreakConstrainedForcedTables ><\\/w:DontBreakConstrainedForcedTables> <w:DontVertAlignInTxbx ><\\/w:DontVertAlignInTxbx> <w:Word11KerningPairs ><\\/w:Word11KerningPairs> <w:CachedColBalance ><\\/w:CachedColBalance> <\\/w:Compatibility> <w:BrowserLevel>MicrosoftInternetExplorer4<\\/w:BrowserLevel> <m:mathPr> <m:mathFont m:val=\\"Cambria Math\\" ><\\/m:mathFont> <m:brkBin m:val=\\"before\\" ><\\/m:brkBin> <m:brkBinSub m:val=\\" \\" ><\\/m:brkBinSub> <m:smallFrac m:val=\\"off\\" ><\\/m:smallFrac> <m:dispDef ><\\/m:dispDef> <m:lMargin m:val=\\"0\\" ><\\/m:lMargin> <m:rMargin m:val=\\"0\\" ><\\/m:rMargin> <m:defJc m:val=\\"centerGroup\\" ><\\/m:defJc> <m:wrapIndent m:val=\\"1440\\" ><\\/m:wrapIndent> <m:intLim m:val=\\"subSup\\" ><\\/m:intLim> <m:naryLim m:val=\\"undOvr\\" ><\\/m:naryLim> <\\/m:mathPr><\\/w:WordDocument> <\\/xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\\"false\\" DefUnhideWhenUsed=\\"true\\"   DefSemiHidden=\\"true\\" DefQFormat=\\"false\\" DefPriority=\\"99\\"   LatentStyleCount=\\"267\\"> <w:LsdException Locked=\\"false\\" Priority=\\"0\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Normal\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"heading 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 7\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 8\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"9\\" QFormat=\\"true\\" Name=\\"heading 9\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 7\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 8\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" Name=\\"toc 9\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"35\\" QFormat=\\"true\\" Name=\\"caption\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"10\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Title\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"1\\" Name=\\"Default Paragraph Font\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"11\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtitle\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"22\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Strong\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"20\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Emphasis\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"59\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Table Grid\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" UnhideWhenUsed=\\"false\\" Name=\\"Placeholder Text\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"1\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"No Spacing\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" UnhideWhenUsed=\\"false\\" Name=\\"Revision\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"34\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"List Paragraph\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"29\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Quote\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"30\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Quote\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 1\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 2\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 3\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 4\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 5\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"60\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Shading Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"61\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light List Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"62\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Light Grid Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"63\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 1 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"64\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Shading 2 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"65\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 1 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"66\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium List 2 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"67\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 1 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"68\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 2 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"69\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Medium Grid 3 Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"70\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Dark List Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"71\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Shading Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"72\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful List Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"73\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" Name=\\"Colorful Grid Accent 6\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"19\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtle Emphasis\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"21\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Emphasis\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"31\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Subtle Reference\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"32\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Intense Reference\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"33\\" SemiHidden=\\"false\\"    UnhideWhenUsed=\\"false\\" QFormat=\\"true\\" Name=\\"Book Title\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"37\\" Name=\\"Bibliography\\" ><\\/w:LsdException> <w:LsdException Locked=\\"false\\" Priority=\\"39\\" QFormat=\\"true\\" Name=\\"TOC Heading\\" ><\\/w:LsdException> <\\/w:LatentStyles> <\\/xml><![endif]--><!--[if gte mso 10]> <mce:style><!   \\/* Style Definitions *\\/  table.MsoNormalTable \\t{mso-style-name:\\"\\u041e\\u0431\\u044b\\u0447\\u043d\\u0430\\u044f \\u0442\\u0430\\u0431\\u043b\\u0438\\u0446\\u0430\\"; \\tmso-tstyle-rowband-size:0; \\tmso-tstyle-colband-size:0; \\tmso-style-noshow:yes; \\tmso-style-priority:99; \\tmso-style-qformat:yes; \\tmso-style-parent:\\"\\"; \\tmso-padding-alt:0cm 5.4pt 0cm 5.4pt; \\tmso-para-margin:0cm; \\tmso-para-margin-bottom:.0001pt; \\tmso-pagination:widow-orphan; \\tfont-size:11.0pt; \\tfont-family:\\"Calibri\\",\\"sans-serif\\"; \\tmso-ascii-font-family:Calibri; \\tmso-ascii-theme-font:minor-latin; \\tmso-fareast-font-family:\\"Times New Roman\\"; \\tmso-fareast-theme-font:minor-fareast; \\tmso-hansi-font-family:Calibri; \\tmso-hansi-theme-font:minor-latin; \\tmso-bidi-font-family:\\"Times New Roman\\"; \\tmso-bidi-theme-font:minor-bidi;} --> <!--[endif] --><\\/p>\\n<p class=\\"MsoNormal\\" style=\\"margin: 6pt 0cm;\\"><span style=\\"font-size: 10pt;\\">2 \\u043e\\u043a\\u0442\\u044f\\u0431\\u0440\\u044f \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u0435\\u0442 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u0428\\u043a\\u043e\\u043b\\u0430 \\u0413\\u0440\\u0430\\u043d\\u0442\\u043e\\u043f\\u0438\\u0441\\u0446\\u0435\\u0432. \\u0412\\u0441\\u0442\\u0440\\u0435\\u0447\\u0430 \\u0441\\u043e\\u0441\\u0442\\u043e\\u0438\\u0442\\u0441\\u044f \\u0432 \\u0414\\u043e\\u043c\\u0435 \\u041c\\u0430\\u043a\\u0441\\u0430 \\u0413\\u0440\\u0430\\u043d\\u0442\\u0430 \\u0432 12:00.<\\/span><\\/p>","2":"","3":"","4":""}', '2011-09-30', 0),
(5, '{"1":"\\u0423\\u0447\\u0435\\u043d\\u044b\\u0435 \\u0441\\u043c\\u043e\\u0433\\u043b\\u0438 \\u0438\\u0437\\u043c\\u0435\\u0440\\u0438\\u0442\\u044c \\u0442\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0443 \\u041c\\u0430\\u0440\\u0441\\u0430","2":"","3":""}', '{"1":"\\u0418\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438 \\u0438\\u0437 \\u041a\\u0430\\u043b\\u0438\\u0444\\u043e\\u0440\\u043d\\u0438\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0433\\u043e \\u0438\\u043d\\u0441\\u0442\\u0438\\u0442\\u0443\\u0442\\u0430 (\\u0421\\u0428\\u0410) \\u043f\\u0435\\u0440\\u0432\\u044b\\u043c\\u0438 \\u0441\\u043c\\u043e\\u0433\\u043b\\u0438 \\u00ab\\u043d\\u0435\\u043f\\u043e\\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u00bb \\u0438\\u0437\\u043c\\u0435\\u0440\\u0438\\u0442\\u044c \\u0442\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0443 \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u0438 \\u041c\\u0430\\u0440\\u0441\\u0430 \\u0432 \\u0434\\u0430\\u043b\\u0451\\u043a\\u043e\\u043c \\u043f\\u0440\\u043e\\u0448\\u043b\\u043e\\u043c.","2":"","3":""}', '{"1":"<p>\\u0418\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438 \\u0438\\u0437 \\u041a\\u0430\\u043b\\u0438\\u0444\\u043e\\u0440\\u043d\\u0438\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0433\\u043e \\u0438\\u043d\\u0441\\u0442\\u0438\\u0442\\u0443\\u0442\\u0430 (\\u0421\\u0428\\u0410)  \\u043f\\u0435\\u0440\\u0432\\u044b\\u043c\\u0438 \\u0441\\u043c\\u043e\\u0433\\u043b\\u0438 &laquo;\\u043d\\u0435\\u043f\\u043e\\u0441\\u0440\\u0435\\u0434\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e&raquo; \\u0438\\u0437\\u043c\\u0435\\u0440\\u0438\\u0442\\u044c \\u0442\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0443 \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u0438 \\u041c\\u0430\\u0440\\u0441\\u0430 \\u0432  \\u0434\\u0430\\u043b\\u0451\\u043a\\u043e\\u043c \\u043f\\u0440\\u043e\\u0448\\u043b\\u043e\\u043c.<br \\/><br \\/>\\u0412\\u044b\\u0432\\u043e\\u0434? \\u0414\\u0435\\u0439\\u0441\\u0442\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e, \\u043f\\u043b\\u0430\\u043d\\u0435\\u0442\\u0430 \\u043a\\u043e\\u0433\\u0434\\u0430-\\u0442\\u043e \\u0431\\u044b\\u043b\\u0430 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0442\\u0451\\u043f\\u043b\\u043e\\u0439 \\u0438 \\u0432\\u043b\\u0430\\u0436\\u043d\\u043e\\u0439.<br \\/><br \\/>\\u0423\\u0447\\u0451\\u043d\\u044b\\u0435  \\u043f\\u0440\\u043e\\u0430\\u043d\\u0430\\u043b\\u0438\\u0437\\u0438\\u0440\\u043e\\u0432\\u0430\\u043b\\u0438 \\u043a\\u0430\\u0440\\u0431\\u043e\\u043d\\u0430\\u0442\\u043d\\u044b\\u0435 \\u043c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044b \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442\\u043e\\u043c 3,6&ndash;4 \\u043c\\u0438\\u043b\\u043b\\u0438\\u0430\\u0440\\u0434\\u0430 \\u043b\\u0435\\u0442 \\u0438\\u0437  \\u043c\\u0430\\u0440\\u0441\\u0438\\u0430\\u043d\\u0441\\u043a\\u043e\\u0433\\u043e \\u043c\\u0435\\u0442\\u0435\\u043e\\u0440\\u0438\\u0442\\u0430 \\u0438 \\u0443\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u0438\\u043b\\u0438, \\u0447\\u0442\\u043e \\u043e\\u043d\\u0438 \\u0441\\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u043b\\u0438\\u0441\\u044c \\u043f\\u0440\\u0438  \\u0442\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0435 \\u043e\\u043a\\u043e\\u043b\\u043e 18 \\u02daC.<br \\/><br \\/>\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430 \\u0438\\u043c\\u0435\\u0435\\u0442 \\u0440\\u0435\\u0448\\u0430\\u044e\\u0449\\u0435\\u0435 \\u0437\\u043d\\u0430\\u0447\\u0435\\u043d\\u0438\\u0435 \\u0434\\u043b\\u044f  \\u043f\\u043e\\u043d\\u0438\\u043c\\u0430\\u043d\\u0438\\u044f \\u043a\\u043b\\u0438\\u043c\\u0430\\u0442\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0439 \\u0438\\u0441\\u0442\\u043e\\u0440\\u0438\\u0438 \\u041a\\u0440\\u0430\\u0441\\u043d\\u043e\\u0439 \\u043f\\u043b\\u0430\\u043d\\u0435\\u0442\\u044b. \\u041c\\u0430\\u0440\\u0441\\u043e\\u0445\\u043e\\u0434\\u044b \\u0438 \\u043e\\u0440\\u0431\\u0438\\u0442\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435  \\u043a\\u043e\\u0441\\u043c\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0430\\u043f\\u043f\\u0430\\u0440\\u0430\\u0442\\u044b \\u043d\\u0430\\u0448\\u043b\\u0438 \\u043d\\u0430\\u043c\\u0451\\u043a\\u0438 \\u043d\\u0430 \\u0434\\u0440\\u0435\\u0432\\u043d\\u0438\\u0435 \\u0434\\u0435\\u043b\\u044c\\u0442\\u044b \\u0440\\u0435\\u043a \\u0438 \\u0432\\u044b\\u0441\\u043e\\u0445\\u0448\\u0438\\u0435  \\u043e\\u0437\\u0451\\u0440\\u0430, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u043d\\u044b\\u0435 \\u043e\\u0442\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u043c\\u043e\\u0436\\u043d\\u043e \\u0438\\u043d\\u0442\\u0435\\u0440\\u043f\\u0440\\u0435\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c \\u043a\\u0430\\u043a  \\u0441\\u0432\\u0438\\u0434\\u0435\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u043e \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u044f \\u0432\\u043e\\u0434\\u044b \\u0432 \\u0433\\u043b\\u0443\\u0431\\u043e\\u043a\\u043e\\u0439 \\u0434\\u0440\\u0435\\u0432\\u043d\\u043e\\u0441\\u0442\\u0438. \\u0414\\u0435\\u043b\\u043e \\u0431\\u044b\\u043b\\u043e \\u0437\\u0430 \\u043f\\u0440\\u044f\\u043c\\u044b\\u043c\\u0438  \\u0434\\u0430\\u043d\\u043d\\u044b\\u043c\\u0438.<br \\/><br \\/>\\u0411\\u044b\\u043b\\u043e \\u0432\\u044b\\u0434\\u0432\\u0438\\u043d\\u0443\\u0442\\u043e \\u043c\\u043d\\u043e\\u0436\\u0435\\u0441\\u0442\\u0432\\u043e \\u0433\\u0438\\u043f\\u043e\\u0442\\u0435\\u0437. \\u041e\\u0434\\u043d\\u0438 \\u0433\\u043e\\u0432\\u043e\\u0440\\u044f\\u0442, \\u0447\\u0442\\u043e  \\u043c\\u0438\\u043d\\u0435\\u0440\\u0430\\u043b\\u044b \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u043b\\u0438\\u0441\\u044c, \\u043a\\u043e\\u0433\\u0434\\u0430 \\u043d\\u0430\\u0441\\u044b\\u0449\\u0435\\u043d\\u043d\\u0430\\u044f \\u043a\\u0430\\u0440\\u0431\\u043e\\u043d\\u0430\\u0442\\u0430\\u043c\\u0438 \\u043c\\u0430\\u0433\\u043c\\u0430 \\u043e\\u0441\\u0442\\u044b\\u043b\\u0430 \\u0438  \\u043a\\u0440\\u0438\\u0441\\u0442\\u0430\\u043b\\u043b\\u0438\\u0437\\u043e\\u0432\\u0430\\u043b\\u0430\\u0441\\u044c. \\u0414\\u0440\\u0443\\u0433\\u0438\\u0435 \\u043f\\u043e\\u043b\\u0430\\u0433\\u0430\\u044e\\u0442, \\u0447\\u0442\\u043e \\u043a\\u0430\\u0440\\u0431\\u043e\\u043d\\u0430\\u0442\\u044b \\u043d\\u0430\\u0440\\u043e\\u0441\\u043b\\u0438 \\u0432 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u0435  \\u0433\\u0438\\u0434\\u0440\\u043e\\u0442\\u0435\\u0440\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0432. \\u0415\\u0449\\u0451 \\u043e\\u0434\\u043d\\u0430 \\u0438\\u0434\\u0435\\u044f \\u0437\\u0430\\u043a\\u043b\\u044e\\u0447\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0442\\u043e\\u043c, \\u0447\\u0442\\u043e  \\u043a\\u0430\\u0440\\u0431\\u043e\\u043d\\u0430\\u0442\\u044b \\u043e\\u0441\\u0430\\u0436\\u0434\\u0430\\u043b\\u0438\\u0441\\u044c \\u0438\\u0437 \\u0441\\u043e\\u043b\\u0435\\u0432\\u044b\\u0445 \\u0440\\u0430\\u0441\\u0442\\u0432\\u043e\\u0440\\u043e\\u0432. \\u0414\\u043b\\u044f \\u044d\\u0442\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441\\u043e\\u0432 \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u0430  \\u0441\\u0430\\u043c\\u0430\\u044f \\u0440\\u0430\\u0437\\u043d\\u0430\\u044f \\u0442\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430: \\u043e\\u0442 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0447\\u0435\\u043c 700 \\u02daC \\u0432 \\u043f\\u0435\\u0440\\u0432\\u043e\\u043c \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435 \\u0434\\u043e  \\u043c\\u0438\\u043d\\u0443\\u0441\\u043e\\u0432\\u043e\\u0439 &mdash; \\u0432 \\u043f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0435\\u043c.<\\/p>","2":"","3":""}', '2011-10-21', 3),
(6, '{"1":"\\u0422\\u0435\\u043f\\u0435\\u0440\\u044c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0440\\u0430\\u0441\\u043f\\u0435\\u0447\\u0430\\u0442\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0435\\u2026 \\u043b\\u0438\\u0446\\u043e ","2":"","3":""}', '{"1":"\\u042f\\u043f\\u043e\\u043d\\u0446\\u044b \\u0441\\u043d\\u043e\\u0432\\u0430 \\u0443\\u0434\\u0438\\u0432\\u0438\\u043b\\u0438 \\u043c\\u0438\\u0440. \\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f REAL-f \\u043f\\u0440\\u0438\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442 \\u0437\\u0430\\u043a\\u0430\\u0437\\u044b \\u043d\\u0430 \\u0438\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u0447\\u0440\\u0435\\u0437\\u0432\\u044b\\u0447\\u0430\\u0439\\u043d\\u043e \\u0440\\u0435\\u0430\\u043b\\u0438\\u0441\\u0442\\u0438\\u0447\\u043d\\u044b\\u0445 3D-\\u043a\\u043e\\u043f\\u0438\\u0439 \\u043b\\u0438\\u0446 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432.","2":"","3":""}', '{"1":"<p>\\u0414\\u0435\\u0442\\u0430\\u043b\\u0438 \\u043c\\u0430\\u0441\\u043e\\u043a \\u043f\\u0440\\u043e\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u043d\\u044b \\u043d\\u0430\\u0441\\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0442\\u043e\\u043d\\u043a\\u043e, \\u0447\\u0442\\u043e \\u0432\\u0438\\u0434\\u043d\\u044b \\u043f\\u043e\\u0440\\u044b \\u043a\\u043e\\u0436\\u0438 \\u0438, \\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, \\u0440\\u0438\\u0441\\u0443\\u043d\\u043e\\u043a \\u043a\\u0440\\u043e\\u0432\\u0435\\u043d\\u043e\\u0441\\u043d\\u044b\\u0445 \\u0441\\u043e\\u0441\\u0443\\u0434\\u043e\\u0432 \\u0433\\u043b\\u0430\\u0437\\u0430.<\\/p>\\n<p>\\u042f\\u043f\\u043e\\u043d\\u0446\\u044b \\u0443\\u0442\\u0432\\u0435\\u0440\\u0436\\u0434\\u0430\\u044e\\u0442, \\u0447\\u0442\\u043e \\u0434\\u043e\\u0431\\u0438\\u043b\\u0438\\u0441\\u044c &laquo;\\u043d\\u0435\\u0432\\u0438\\u0434\\u0430\\u043d\\u043d\\u043e\\u0433\\u043e, \\u043f\\u043e\\u0434\\u043b\\u0438\\u043d\\u043d\\u043e\\u0433\\u043e \\u0440\\u0435\\u0430\\u043b\\u0438\\u0437\\u043c\\u0430&raquo;.  \\u0421\\u0432\\u043e\\u044e \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044e REAL-f \\u043d\\u0430\\u0437\\u044b\\u0432\\u0430\\u0435\\u0442 3DFP, \\u0447\\u0442\\u043e \\u043c\\u043e\\u0436\\u043d\\u043e \\u0440\\u0430\\u0441\\u0448\\u0438\\u0444\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c \\u043a\\u0430\\u043a  &laquo;\\u0442\\u0440\\u0435\\u043c\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0444\\u043e\\u0442\\u043e\\u0444\\u043e\\u0440\\u043c\\u044b&raquo; (3 Dimension Photo Form).<\\/p>\\n<p>\\u042d\\u0442\\u043e \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0431\\u044b\\u0442\\u044c \\u043d\\u0435 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u043c\\u0430\\u0441\\u043a\\u0430, \\u043d\\u043e \\u0438 \\u043a\\u043e\\u043f\\u0438\\u044f \\u0432\\u0441\\u0435\\u0439 \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b \\u0446\\u0435\\u043b\\u0438\\u043a\\u043e\\u043c. \\u0418 \\u0442\\u043e \\u0438 \\u0434\\u0440\\u0443\\u0433\\u043e\\u0435 \\u0432\\u044b\\u043f\\u0443\\u0441\\u043a\\u0430\\u0435\\u0442\\u0441\\u044f \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0432 \\u043d\\u0430\\u0442\\u0443\\u0440\\u0430\\u043b\\u044c\\u043d\\u0443\\u044e \\u0432\\u0435\\u043b\\u0438\\u0447\\u0438\\u043d\\u0443.<\\/p>\\n<p><img style=\\"width: 450px; height: 254px;\\" src=\\"http:\\/\\/i.obozrevatel.com\\/13\\/1204510\\/inner\\/344236.jpg\\" alt=\\"\\" \\/><\\/p>\\n<p><em>\\u0424\\u043e\\u0442\\u043e: \\u0443 \\u0432\\u0441\\u0435\\u0445 \\u043c\\u0430\\u0441\\u043e\\u043a \\u0438 \\u043a\\u043e\\u043f\\u0438\\u0439 \\u0433\\u043e\\u043b\\u043e\\u0432 \\u0432\\u0441\\u0435\\u0433\\u0434\\u0430 \\u0437\\u0430\\u043a\\u0440\\u044b\\u0442\\u044b \\u0440\\u0442\\u044b &ndash; \\u044f\\u043f\\u043e\\u043d\\u0446\\u044b \\u043d\\u0435 \\u0431\\u0435\\u0440\\u0443\\u0442\\u0441\\u044f \\u0437\\u0430 \\u0432\\u043e\\u0441\\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e \\u0437\\u0443\\u0431\\u043e\\u0432<\\/em><\\/p>\\n<p>&nbsp;<\\/p>\\n<p>3D-\\u043c\\u043e\\u0434\\u0435\\u043b\\u044c \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b \\u044f\\u043f\\u043e\\u043d\\u0446\\u044b \\u0441\\u043e\\u0437\\u0434\\u0430\\u044e\\u0442 \\u043d\\u0430 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0435 \\u0444\\u043e\\u0442\\u043e\\u0433\\u0440\\u0430\\u0444\\u0438\\u0439, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0435 \\u0434\\u0435\\u043b\\u0430\\u044e\\u0442  \\u0438\\u0441\\u043a\\u043b\\u044e\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0432 \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0441\\u0442\\u0443\\u0434\\u0438\\u0438. \\u0424\\u043e\\u0442\\u043e\\u0441\\u0435\\u0441\\u0441\\u0438\\u044f \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442 \\u043a\\u0430\\u043a \\u043c\\u0438\\u043d\\u0438\\u043c\\u0443\\u043c \\u0447\\u0430\\u0441.<\\/p>\\n<p>\\u0417\\u0430\\u0442\\u0435\\u043c \\u0432 \\u0434\\u0435\\u043b\\u043e \\u0438\\u0434\\u0435\\u0442 3D-\\u043f\\u0440\\u0438\\u043d\\u0442\\u0435\\u0440, \\u0442\\u0432\\u043e\\u0440\\u044f\\u0449\\u0438\\u0439 \\u043c\\u0430\\u0441\\u043a\\u0443 \\u0438\\u043b\\u0438 &laquo;\\u0433\\u043e\\u043b\\u043e\\u0432\\u0443&raquo; \\u0438\\u0437  \\u043f\\u043e\\u043b\\u0438\\u0432\\u0438\\u043d\\u0438\\u043b\\u0445\\u043b\\u043e\\u0440\\u0438\\u0434\\u0430. \\u041d\\u0430 \\u0432\\u044b\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u0435 \\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430 \\u0444\\u0438\\u0440\\u043c\\u0435 REAL-f \\u0442\\u0440\\u0435\\u0431\\u0443\\u0435\\u0442\\u0441\\u044f  \\u0434\\u0432\\u0435-\\u0442\\u0440\\u0438 \\u043d\\u0435\\u0434\\u0435\\u043b\\u0438.<\\/p>\\n<p>\\u042f\\u043f\\u043e\\u043d\\u0446\\u044b \\u0441\\u0447\\u0438\\u0442\\u0430\\u044e\\u0442, \\u0447\\u0442\\u043e \\u0442\\u0430\\u043a\\u043e\\u0439 \\u043f\\u043e\\u0440\\u0442\\u0440\\u0435\\u0442 (\\u0441\\u0432\\u043e\\u0439 \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u043b\\u044e\\u0431\\u0438\\u043c\\u043e\\u0433\\u043e  \\u0447\\u0435\\u043b\\u043e\\u0432\\u0435\\u043a\\u0430) \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u044b \\u0431\\u0443\\u0434\\u0443\\u0442 \\u0434\\u0435\\u043b\\u0430\\u0442\\u044c &laquo;\\u043d\\u0430 \\u043f\\u0430\\u043c\\u044f\\u0442\\u044c&raquo;. \\u0421\\u0430\\u043c\\u043e \\u0441\\u043e\\u0431\\u043e\\u0439, 3DFP &ndash; \\u043d\\u0435  \\u0434\\u0435\\u0448\\u0451\\u0432\\u043e\\u0435 \\u0443\\u0434\\u043e\\u0432\\u043e\\u043b\\u044c\\u0441\\u0442\\u0432\\u0438\\u0435.<\\/p>\\n<p>\\u041a\\u043e\\u043f\\u0438\\u044f \\u043b\\u0438\\u0446\\u0430 \\u043e\\u0446\\u0435\\u043d\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u043e\\u043a\\u043e\\u043b\\u043e $4 \\u0442\\u044b\\u0441., \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b &ndash;$6 \\u0442\\u044b\\u0441. \\u041f\\u043e\\u0432\\u0442\\u043e\\u0440\\u043d\\u044b\\u0435 \\u043a\\u043e\\u043f\\u0438\\u0438  \\u0441\\u0442\\u043e\\u044f\\u0442 \\u0434\\u0435\\u0448\\u0435\\u0432\\u043b\\u0435 \\u0432 2-5 \\u0440\\u0430\\u0437. \\u041d\\u0430 \\u0441\\u0432\\u043e\\u044e \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044e REAL-f \\u0434\\u0430\\u0451\\u0442 \\u0442\\u0440\\u0451\\u0445\\u043b\\u0435\\u0442\\u043d\\u044e\\u044e  \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044e.<\\/p>","2":"","3":""}', '2011-10-28', 3);

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
  `scope` int(11) DEFAULT NULL COMMENT 'Сфера деятельности',
  `activities` int(11) DEFAULT NULL COMMENT 'Направления деятельности',
  `logo` varchar(255) DEFAULT NULL COMMENT 'Логотип',
  `thumb` varchar(255) DEFAULT NULL,
  `description` text COMMENT 'Описание',
  `grantor` tinyint(4) DEFAULT NULL,
  `investor` tinyint(4) DEFAULT NULL,
  `individual` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Организации' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_organizations`
--

INSERT INTO `sp_organizations` (`id`, `name`, `address`, `place`, `boss`, `phone`, `email`, `sites`, `scope`, `activities`, `logo`, `thumb`, `description`, `grantor`, `investor`, `individual`) VALUES
(2, '{"1":"\\u0418\\u043d\\u0442\\u0435\\u043b\\u043b\\u0435\\u043a\\u0442 \\u0441\\u0435\\u0440\\u0432\\u0438\\u0441","2":"\\u0406\\u043d\\u0442\\u0435\\u043b\\u0435\\u043a\\u0442 \\u0441\\u0435\\u0440\\u0432\\u0456\\u0441","3":"","4":""}', '{"1":"\\u0433. \\u0414\\u043d\\u0435\\u043f\\u0440\\u043e\\u043f\\u0435\\u0442\\u0440\\u043e\\u0432\\u0441\\u043a","2":"\\u043c. \\u0414\\u043d\\u0456\\u043f\\u0440\\u043e\\u043f\\u0435\\u0442\\u0440\\u043e\\u0432\\u0441\\u044c\\u043a","3":"","4":""}', 0, '{"1":"\\u0413\\u043e\\u0440\\u0435\\u043b\\u043a\\u043e \\u0421\\u0435\\u0440\\u0433\\u0435\\u0439","2":"\\u0413\\u043e\\u0440\\u0435\\u043b\\u043a\\u043e \\u0421\\u0435\\u0440\\u0433\\u0456\\u0439","3":"","4":""}', '555', 'intelser@mail.com', 'intelserv.dp.ua', 0, 0, 'static/images/entries/dictionary/organizations/big/ff8acbb8ef19ff65d18b4413e94e091c.jpg', 'static/images/entries/dictionary/organizations/small/48192e3478260b7370adef9ff1a71f94.jpg', '{"1":"<p>\\u0423\\u0447\\u0435\\u0442 \\u0442\\u0440\\u0443\\u0434\\u0430 \\u0438 \\u0437\\u0430\\u0440\\u0430\\u0431\\u043e\\u0442\\u043d\\u043e\\u0439 \\u043f\\u043b\\u0430\\u0442\\u044b<\\/p>","2":"<p>\\u0417\\u0430\\u0440\\u043e\\u0431\\u0456\\u0442\\u043d\\u0430 \\u043f\\u043b\\u0430\\u0442\\u043d\\u044f<\\/p>","3":"","4":""}', 0, 0, 1);

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Страницы' AUTO_INCREMENT=34 ;

--
-- Дамп данных таблицы `sp_pages`
--

INSERT INTO `sp_pages` (`id`, `name`, `body`, `meta`, `description`, `slug`, `in_footer`, `in_header`, `system`, `weight`) VALUES
(2, '{"4":"","3":"Ideas","2":"\\u0406\\u0434\\u0435\\u0457","1":"\\u0418\\u0434\\u0435\\u0438"}', '{"4":"","3":"<p>\\"Ideas\\" page in English.<\\/p>","2":"<p>\\u0426\\u0435 \\u043a\\u043e\\u043d\\u0442\\u0435\\u0442\\u043d \\u0441\\u0442\\u043e\\u0440\\u0456\\u043d\\u0443\\u0438 \\"\\u0406\\u0434\\u0435\\u0457\\" \\u043d\\u0430 \\u0443\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0456\\u0439 \\u043c\\u043e\\u0432\\u0456.<\\/p>","1":"<p>\\u041a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b \\"\\u0418\\u0434\\u0435\\u0438\\"<\\/p>"}', '{"4":"","3":"ideas","2":"\\u0456\\u0434\\u0435\\u0457","1":"\\u0438\\u0434\\u0435\\u0438"}', NULL, 'ideas', 0, 1, 1, 1),
(1, '{"1":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b","2":"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438","3":"Projects","4":""}', '{"1":"<p>\\u041a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b \\"\\u041f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b\\"<\\/p>","2":"<p>\\u0426\\u0435 \\u043a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442 \\u0441\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0438 \\"\\u041f\\u0440\\u043e\\u0454\\u043a\\u0442\\u0438\\" \\u043d\\u0430 \\u0443\\u043a\\u0440\\u0430\\u0457\\u043d\\u0441\\u044c\\u043a\\u0456\\u0439 \\u043c\\u043e\\u0432\\u0456<\\/p>","3":"<p>Content in English<\\/p>","4":""}', '{"1":"\\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b","2":"\\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0438","3":"projects","4":""}', '{"1":"","2":"","3":"","4":""}', 'projects', 0, 1, 1, 0),
(22, '{"1":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","2":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0438","3":"Contact us","4":""}', '{"1":"<h3>\\u041d\\u0430\\u0448\\u0438 \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043d\\u044b\\u0435 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0435:<\\/h3>\\n<p>\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d: (050) 777 88 99<\\/p>\\n<p>skype: myskype<\\/p>\\n<p>ISQ: 8799806545<\\/p>\\n<h3 class=\\"gform_title\\">\\u0421\\u0432\\u044f\\u0436\\u0438\\u0442\\u0435\\u0441\\u044c \\u0441 \\u043d\\u0430\\u043c\\u0438 \\u0447\\u0435\\u0440\\u0435\\u0437 \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043d\\u0443\\u044e \\u0444\\u043e\\u0440\\u043c\\u0443<\\/h3>","2":"<h3>\\u041d\\u0430\\u0448\\u0456 \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043d\\u0456 \\u0434\\u0430\\u043d\\u0456:<\\/h3>\\n<p>\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d: (050) 777 88 99<\\/p>\\n<p>skype: myskype<\\/p>\\n<p>ISQ: 8799806545<\\/p>\\n<h3 class=\\"gform_title\\">\\u0417\\u0432''\\u044f\\u0436\\u0456\\u0442\\u044c\\u0441\\u044f \\u0437 \\u043d\\u0438\\u043c\\u0430 \\u0447\\u0435\\u0440\\u0435\\u0437 \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043d\\u0443 \\u0444\\u043e\\u0440\\u043c\\u0443<\\/h3>","3":"<p>Contact Us<\\/p>","4":""}', '{"1":"\\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","2":"\\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0438","3":"contacts","4":""}', '{"1":"","2":"","3":"","4":""}', 'contacts', 1, 0, 1, 2),
(23, '{"1":"\\u0411\\u043b\\u043e\\u0433","2":"\\u0411\\u043b\\u043e\\u0433","3":""}', '{"1":"","2":"","3":""}', '{"1":"\\u0431\\u043b\\u043e\\u0433","2":"\\u0431\\u043b\\u043e\\u0433, \\u043d\\u043e\\u0432\\u0438\\u043d\\u0438, \\u0430\\u043d\\u043e\\u043d\\u0441\\u0438","3":""}', '{"1":"\\u0431\\u043b\\u043e\\u0433, \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438, \\u0430\\u043d\\u043e\\u043d\\u0441\\u044b","2":"\\u043d\\u043e\\u0432\\u0438\\u043d\\u0438","3":""}', 'blog', 0, 0, 1, 3),
(24, '{"1":"\\u041e \\u043d\\u0430\\u0441","2":"\\u041e \\u043d\\u0430\\u0441","3":"","4":""}', '{"1":"<p>\\u041d\\u0430 \\u0441\\u0430\\u0439\\u0442\\u0435 \\u043c\\u043e\\u0436\\u043d\\u043e \\u0440\\u0430\\u0437\\u043c\\u0435\\u0449\\u0430\\u0442\\u044c \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044e \\u043e \\u0443\\u0441\\u043f\\u0435\\u0448\\u043d\\u043e \\u0437\\u0430\\u043f\\u0443\\u0449\\u0435\\u043d\\u043d\\u044b\\u0445 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430\\u0445.<\\/p>","2":"","3":"","4":""}', '{"1":"\\u043e \\u043d\\u0430\\u0441","2":"","3":"","4":""}', '{"1":"\\u043e \\u043d\\u0430\\u0441","2":"","3":"","4":""}', 'about', 0, 1, 0, 4),
(25, '{"1":"\\u041f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430","2":"\\u041f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430","3":"","4":""}', '{"1":"<p>\\u041f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0441\\u0430\\u0439\\u0442\\u043e\\u043c:<\\/p>","2":"","3":"","4":""}', '{"1":"\\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430","2":"\\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430","3":"","4":""}', '{"1":"\\u043f\\u0440\\u0430\\u0432\\u0438\\u043b\\u0430","2":"","3":"","4":""}', 'terms', 1, 0, 0, 5),
(26, '{"1":"\\u0421\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f","2":"\\u0423\\u0433\\u043e\\u0434\\u0438","3":"","4":""}', '{"1":"<p>\\u041a\\u043e\\u043d\\u0442\\u0435\\u043a\\u0442 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b \\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f<\\/p>","2":"","3":"","4":""}', '{"1":"\\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f","2":"","3":"","4":""}', '{"1":"\\u0441\\u043e\\u0433\\u043b\\u0430\\u0448\\u0435\\u043d\\u0438\\u044f","2":"","3":"","4":""}', 'conditions', 1, 0, 0, 6),
(27, '{"1":"\\u041c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d","2":"\\u041c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d","3":"","4":""}', '{"1":"","2":"","3":"","4":""}', '{"1":"\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d","2":"","3":"","4":""}', '{"1":"\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d","2":"","3":"","4":""}', 'shop', 0, 1, 1, 7),
(28, '{"1":"\\u041f\\u043e\\u043c\\u043e\\u0449\\u044c","2":"\\u0414\\u043e\\u043f\\u043e\\u043c\\u043e\\u0433\\u0430","3":"","4":""}', '{"1":"<p>\\u041a\\u043e\\u043d\\u0442\\u0435\\u043d\\u0442 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b \\"\\u041f\\u043e\\u043c\\u043e\\u0449\\u044c\\"<\\/p>","2":"","3":"","4":""}', '{"1":"\\u043f\\u043e\\u043c\\u043e\\u0449\\u044c","2":"","3":"","4":""}', '{"1":"\\u043f\\u043e\\u043c\\u043e\\u0449\\u044c","2":"","3":"","4":""}', 'help', 1, 0, 0, 8),
(33, '{"1":"\\u0421\\u043e\\u0431\\u044b\\u0442\\u0438\\u044f","2":"","3":""}', '{"1":"","2":"","3":""}', '{"1":"\\u0441\\u043e\\u0431\\u044b\\u0442\\u0438\\u044f","2":"","3":""}', '{"1":"","2":"","3":""}', 'events', 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_photos_report`
--

CREATE TABLE IF NOT EXISTS `sp_photos_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Связь дополнительного пректа и фотографий' AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `sp_photos_report`
--

INSERT INTO `sp_photos_report` (`id`, `entry_id`, `foto`, `thumb`) VALUES
(1, 2, 'static/images/entries/joins/big/6b8d8f42bdd795c7cde6a95e45cb118f.jpg', 'static/images/entries/joins/small/f661bd5e0b9cbb8e5645333c1abbe5af.jpg'),
(2, 2, 'static/images/entries/joins/big/5ea23a0cf78f19c2f4c1465d59135bbf.jpg', 'static/images/entries/joins/small/0c60b7ce1680029767b60617fa32e570.jpg'),
(4, 3, 'static/images/entries/joins/big/93f780115580fa84b9868f7919476123.jpg', 'static/images/entries/joins/small/919735abdbcd25205aa5886df7f4d470.jpg'),
(5, 4, 'static/images/entries/joins/big/15cac80e62d8edfbfd256b2fc806eeae.png', 'static/images/entries/joins/small/a4d4f0cf3fc6e60ad339333a92cea9c8.png'),
(6, 4, 'static/images/entries/joins/big/12a90a27780d7a57320d7d440988f56e.png', 'static/images/entries/joins/small/907569d045460965d92e97bfa59894c7.png'),
(7, 4, 'static/images/entries/joins/big/459cf27733cb09a5f5344b0c46336b4f.png', 'static/images/entries/joins/small/0746d32791ef9b14d5afbc8823415926.png'),
(8, 4, 'static/images/entries/joins/big/466fdb5706c9ce0b7100a5fa0a824dcf.png', 'static/images/entries/joins/small/ab3d5a803f6e2afbdd14785b6fe3d79f.png');

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Категории мест проведения проектов' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_places_categories`
--

INSERT INTO `sp_places_categories` (`id`, `name`) VALUES
(1, '{"1":"\\u0428\\u043a\\u043e\\u043b\\u0430","2":"\\u0428\\u043a\\u043e\\u043b\\u0430","3":"School","4":""}'),
(2, '{"1":"\\u0423\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0438\\u0442\\u0435\\u0442","2":"\\u0423\\u043d\\u0456\\u0432\\u0435\\u0440\\u0441\\u0438\\u0442\\u0435\\u0442","3":"Univercity","4":""}');

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Голосования' AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `sp_poll`
--

INSERT INTO `sp_poll` (`id`, `name`, `date_start`, `date_end`, `active`, `on_page`, `project_id`) VALUES
(1, '{"1":"\\u041c\\u043d\\u0435\\u043d\\u0438\\u0435 \\u043e \\u0441\\u0430\\u0439\\u0442\\u0435?","2":"","3":""}', '2011-10-09', '2011-10-17', 1, 0, 0),
(2, '{"1":"\\u0412\\u0430\\u0448\\u0435 \\u043b\\u044e\\u0431\\u0438\\u043c\\u043e\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0433\\u043e\\u0434\\u0430?","2":"","3":"","4":""}', '2011-10-10', '2011-10-16', 1, 27, 0),
(3, '{"1":"\\u0421\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u0432\\u0430\\u043c \\u043b\\u0435\\u0442?","2":"","3":""}', '2011-10-11', '2011-11-09', 1, -1, 3);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Ответы на опросы' AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `sp_poll_answers`
--

INSERT INTO `sp_poll_answers` (`id`, `poll_id`, `name`, `image`, `thumb`, `count`) VALUES
(1, 1, '{"1":"\\u041f\\u043b\\u043e\\u0445\\u043e\\u0435","2":"","3":"","4":""}', '', '', 0),
(2, 1, '{"1":"\\u041d\\u043e\\u0440\\u043c\\u0430\\u043b\\u044c\\u043d\\u043e\\u0435","2":"","3":"","4":""}', '', '', 2),
(3, 1, '{"1":"\\u0425\\u043e\\u0440\\u043e\\u0448\\u0435\\u0435","2":"","3":"","4":""}', '', '', 3),
(4, 1, '{"1":"\\u041e\\u0442\\u043b\\u0438\\u0447\\u043d\\u043e\\u0435","2":"","3":"","4":""}', '', '', 1),
(6, 2, '{"1":"\\u0417\\u0438\\u043c\\u0430","2":"","3":"","4":""}', 'static/images/entries/pollanswers/big/b350a09ff188c6d49f1a97a22bbaaa1e.jpg', 'static/images/entries/pollanswers/small/f4a9d48cfac113091b4740227e864917.jpg', 1),
(7, 2, '{"1":"\\u0412\\u0435\\u0441\\u043d\\u0430","2":"","3":"","4":""}', 'static/images/entries/pollanswers/big/89ed7fdb597359e2c6608e1be5967b8b.jpg', 'static/images/entries/pollanswers/small/879b399be4425e9b75dfa7a1326530eb.jpg', 2),
(8, 2, '{"1":"\\u041b\\u0435\\u0442\\u043e","2":"","3":"","4":""}', 'static/images/entries/pollanswers/big/2c4ac8ecf3666de6ad8512423e82a7c7.jpg', 'static/images/entries/pollanswers/small/8a7a3430dade0246aebfd1a483687b98.jpg', 0),
(9, 2, '{"1":"\\u041e\\u0441\\u0435\\u043d\\u044c","2":"","3":"","4":""}', 'static/images/entries/pollanswers/big/fc8f4ba66e2af84fb2339cf9ab9e0352.jpg', 'static/images/entries/pollanswers/small/85cb94220a3d75605ed838ca1164aa4a.jpg', 0),
(10, 3, '{"1":"\\u0434\\u043e 16 \\u043b\\u0435\\u0442","2":"","3":""}', '', '', 0),
(11, 3, '{"1":"\\u043e\\u0442 17 \\u0434\\u043e 24 \\u043b\\u0435\\u0442","2":"","3":""}', '', '', 1),
(12, 3, '{"1":"\\u043e\\u0442 25 \\u0434\\u043e 40 \\u043b\\u0435\\u0442","2":"","3":""}', '', '', 0),
(13, 3, '{"1":"\\u043e\\u0442 40 \\u0434\\u043e 60 \\u043b\\u0435\\u0442","2":"","3":""}', '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_projects`
--

CREATE TABLE IF NOT EXISTS `sp_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` text,
  `boss` text COMMENT 'Руководитель',
  `initiator` int(11) DEFAULT NULL COMMENT 'Инициатор',
  `organizer` int(11) DEFAULT NULL COMMENT 'Организатор',
  `date_start` date DEFAULT NULL COMMENT 'Сроки проведения',
  `date_end` date DEFAULT NULL,
  `place` int(11) DEFAULT NULL COMMENT 'Место проведения',
  `purpose` text COMMENT 'Цель',
  `short_description` text COMMENT 'Краткое описание проекта',
  `category_id` int(11) DEFAULT NULL COMMENT 'Категория проекта',
  `tags` text COMMENT 'Ключевые слова',
  `banner` varchar(1024) DEFAULT NULL COMMENT 'Баннер',
  `logo` varchar(255) DEFAULT NULL COMMENT 'Логотип',
  `thumb` varchar(255) DEFAULT NULL,
  `poster` text COMMENT 'Афиша',
  `note` text COMMENT 'Примечание',
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(255) DEFAULT NULL,
  `bg_image` varchar(255) DEFAULT NULL,
  `bg_color` varchar(10) NOT NULL DEFAULT '#fff',
  `in_process` tinyint(4) NOT NULL DEFAULT '0',
  `map` varchar(255) DEFAULT NULL COMMENT 'gmaps координаты',
  `map_description` text COMMENT 'Описание проезда',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Таблица проэктов' AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `sp_projects`
--

INSERT INTO `sp_projects` (`id`, `user_id`, `name`, `boss`, `initiator`, `organizer`, `date_start`, `date_end`, `place`, `purpose`, `short_description`, `category_id`, `tags`, `banner`, `logo`, `thumb`, `poster`, `note`, `post_date`, `slug`, `bg_image`, `bg_color`, `in_process`, `map`, `map_description`) VALUES
(2, 22, '{"1":"\\u042d\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b\\u043e","2":"\\u0415\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b\\u043e","3":""}', NULL, NULL, NULL, '2011-10-12', '2011-10-22', 0, '{"1":"<p>\\u0421\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u0435 \\u042d\\u0442\\u043d\\u043e\\u0441\\u0451\\u043b \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0435<\\/p>","2":"<p>\\u0421\\u0442\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u044f \\u0435\\u0442\\u043d\\u043e\\u0441\\u0435\\u043b \\u043d\\u0430 \\u0432\\u0441\\u0456\\u0439 \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0456<\\/p>","3":""}', '{"1":"\\u041a\\u0440\\u0430\\u0442\\u043a\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435","2":"\\u043a\\u0440\\u0430\\u0442\\u043a\\u0438\\u0439 \\u043e\\u043f\\u0438\\u0441","3":""}', 14, '{"1":"\\u044d\\u0442\\u043d\\u043e, \\u0441\\u0435\\u043b\\u043e","2":"\\u0435\\u0442\\u043d\\u043e, \\u0441\\u0435\\u043b\\u043e","3":""}', '', 'static/images/entries/project/big/9dc03043d5e65cc66b71eb71c9560d12.jpg', 'static/images/entries/project/small/5618888b2be1b2abc76fd82b41ce5e59.jpg', '{"1":"<p>\\u0410\\u0444\\u0438\\u0448\\u0430 \\u043f\\u0440\\u043e\\u044d\\u043a\\u0442\\u0430<\\/p>","2":"<p>\\u0430\\u0444\\u0456\\u0448\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0443<\\/p>","3":""}', '{"1":"<p>\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/p>","2":"<p>\\u041e\\u043f\\u0438\\u0441 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0443<\\/p>","3":""}', '2011-09-14 00:00:00', 'etnoselo', 'static/images/entries/project/big/d6a5cb36e09da38416f1069aede54fba.jpg', '#11075c', 1, NULL, NULL),
(3, 22, '{"1":"\\u0421\\u0430\\u0439\\u0442 \\"\\u0423\\u0434\\u0430\\u0447\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\"","2":"\\u0423\\u0441\\u043f\\u0456\\u0448\\u043d\\u0438\\u0439 \\u043f\\u0440\\u0435\\u043a\\u0442","3":""}', NULL, NULL, NULL, '2011-09-29', '0000-00-00', 0, '{"1":"<p>\\u0414\\u0430\\u0442\\u044c \\u043f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430 (\\u043a\\u0442\\u043e, \\u0447\\u0442\\u043e, \\u0433\\u0434\\u0435, \\u0437\\u0430\\u0447\\u0435\\u043c, \\u043a\\u0430\\u043a, \\u043e\\u043f\\u0440\\u043e\\u0441 \\u043e\\u0431\\u0449\\u0435\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0433\\u043e \\u043c\\u043d\\u0435\\u043d\\u0438\\u044f, \\u0444\\u043e\\u0442\\u043e \\u0438 \\u0432\\u0438\\u0434\\u0435\\u043e \\u043e\\u0442\\u0447\\u0435\\u0442\\u044b), \\u0447\\u0442\\u043e\\u0431 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0436\\u0435\\u043b\\u0430\\u044e\\u0449\\u0438\\u0439, \\u0432 \\u043b\\u044e\\u0431\\u043e\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f, \\u043c\\u043e\\u0433 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u044c \\u0438\\u0441\\u0447\\u0435\\u0440\\u043f\\u044b\\u0432\\u0430\\u044e\\u0449\\u0443\\u044e \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044e \\u043e \\u0442\\u0435\\u043a\\u0443\\u0449\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430\\u0445 \\u0438 \\u043e \\u0440\\u0430\\u043d\\u0435\\u0435 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u043d\\u044b\\u0445.<\\/p>","2":"","3":""}', '{"1":"\\u0421\\u043e\\u0437\\u0434\\u0430\\u0442\\u044c \\u0441\\u0430\\u0439\\u0442, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043e\\u0441\\u0432\\u0435\\u0449\\u0430\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b, \\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0438\\u043c\\u044b\\u0435 \\u0432 \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0441\\u0444\\u0435\\u0440\\u0435, \\u043c\\u0430\\u043b\\u043e\\u043c \\u0438 \\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u043c \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0435","2":"","3":""}', 14, '{"1":"\\u0441\\u0430\\u0439\\u0442, \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442","2":"","3":""}', 'static/images/entries/project/big/4ca73f28d0299f63fe1ef13141c9a936.jpg', 'static/images/entries/project/big/4f43b070fae81d17c8d1186402afd29d.png', 'static/images/entries/project/small/66ef1c92269c6240e9774e37bc850bb5.png', '{"1":"<p>\\u0421\\u043e\\u0437\\u0434\\u0430\\u0442\\u044c \\u0441\\u0430\\u0439\\u0442, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043e\\u0441\\u0432\\u0435\\u0449\\u0430\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b, \\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0438\\u043c\\u044b\\u0435 \\u0432 \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0441\\u0444\\u0435\\u0440\\u0435,  \\u043c\\u0430\\u043b\\u043e\\u043c \\u0438 \\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u043c \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0435 \\u0417\\u0430\\u043f\\u043e\\u0440\\u043e\\u0436\\u044c\\u044f \\u0438 \\u0417\\u0430\\u043f\\u043e\\u0440\\u043e\\u0436\\u0441\\u043a\\u043e\\u0439 \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u0438. \\u0421\\u043e\\u0437\\u0434\\u0430\\u0442\\u044c  \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u043e\\u0435 \\u043f\\u043e\\u043b\\u0435 \\u0441 \\u043c\\u0435\\u0442\\u043e\\u0434\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0439 \\u0431\\u0430\\u0437\\u043e\\u0439, \\u0434\\u043b\\u044f \\u043e\\u0431\\u043c\\u0435\\u043d\\u0430 \\u043e\\u043f\\u044b\\u0442\\u043e\\u043c \\u043f\\u043e \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u044e \\u0438  \\u0440\\u0435\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0445<br \\/>\\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u043e\\u0432.<\\/p>","2":"","3":""}', '{"1":"<p>\\u0421\\u043e\\u0437\\u0434\\u0430\\u0442\\u044c \\u0441\\u0430\\u0439\\u0442, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043e\\u0441\\u0432\\u0435\\u0449\\u0430\\u0435\\u0442 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u044b, \\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0438\\u043c\\u044b\\u0435 \\u0432 \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0441\\u0444\\u0435\\u0440\\u0435, \\u043c\\u0430\\u043b\\u043e\\u043c \\u0438 \\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u043c \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0435 \\u0417\\u0430\\u043f\\u043e\\u0440\\u043e\\u0436\\u044c\\u044f \\u0438 \\u0417\\u0430\\u043f\\u043e\\u0440\\u043e\\u0436\\u0441\\u043a\\u043e\\u0439 \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u0438. \\u0421\\u043e\\u0437\\u0434\\u0430\\u0442\\u044c \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u043e\\u0435 \\u043f\\u043e\\u043b\\u0435 \\u0441 \\u043c\\u0435\\u0442\\u043e\\u0434\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0439 \\u0431\\u0430\\u0437\\u043e\\u0439, \\u0434\\u043b\\u044f \\u043e\\u0431\\u043c\\u0435\\u043d\\u0430 \\u043e\\u043f\\u044b\\u0442\\u043e\\u043c \\u043f\\u043e \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u044e \\u0438 \\u0440\\u0435\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 \\u0438\\u043d\\u043d\\u043e\\u0432\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0445<br \\/>\\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u043e\\u0432.<\\/p>","2":"","3":""}', '2011-09-20 00:00:00', 'sp_project', '', '#000000', 0, '35.057373046875-47.85648143832489', '{"1":"<p>\\u0442\\u0435\\u0441\\u0442<\\/p>","2":"","3":""}'),
(4, 2, '{"1":"\\u0422\\u0435\\u0441\\u0442","2":"","3":"","4":""}', NULL, NULL, NULL, '2011-09-21', NULL, 0, '{"1":"<p>\\u0422\\u0435\\u0441\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435<\\/p>","2":"","3":"","4":""}', '{"1":"\\u043a\\u0440\\u0430\\u0442\\u043a\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435","2":"","3":"","4":""}', 15, '{"1":"\\u0442\\u0435\\u0441\\u0442","2":"","3":"","4":""}', '', 'static/images/entries/project/big/9ad4366561e668496974477bab00490d.jpg', 'static/images/entries/project/small/403ead924196b2a2bd95cbd50e65ac4d.jpg', '{"1":"<p>\\u0442\\u0435\\u0441\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435<\\/p>","2":"","3":"","4":""}', '{"1":"<p>\\u041f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430 \\"\\u0422\\u0435\\u0441\\u0442\\"<\\/p>","2":"","3":"","4":""}', '2011-09-28 15:37:13', 'test', '', '', 0, NULL, NULL),
(5, 22, '{"1":"\\u0422\\u0435\\u0441\\u0442\\u043e\\u0432\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442","2":"","3":"","4":""}', NULL, NULL, NULL, '2011-09-30', NULL, 1, '{"1":"<p>\\u041f\\u0440\\u043e\\u0432\\u0435\\u0434\\u0435\\u043d\\u0438\\u0435 \\u0442\\u0449\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0433\\u043e \\u0442\\u0435\\u0441\\u0442\\u0438\\u043d\\u0433\\u0430<\\/p>","2":"","3":"","4":""}', '{"1":"\\u043a\\u0440\\u0430\\u0442\\u043a\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430 ","2":"","3":"","4":""}', 15, '{"1":"\\u0442\\u0435\\u0441\\u0442\\u0438\\u043d\\u0433","2":"","3":"","4":""}', 'static/images/entries/project/big/3d1a9c914557a981a765f9464ccc4a01.jpg', 'static/images/entries/project/big/51d0ac89aff1a53df3ed4e370e03c25b.jpg', 'static/images/entries/project/small/5266c1b93a186c0c657a8dd1f4007067.jpg', '{"1":"<p>\\u0422\\u0435\\u0441\\u0442\\u0438\\u043d\\u0433 \\u0430\\u0444\\u0438\\u0448\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/p>","2":"","3":"","4":""}', '{"1":"<p>\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430 \\"\\u0422\\u0435\\u0441\\u0442\\u0438\\u043d\\u0433\\"<\\/p>","2":"","3":"","4":""}', '2011-09-29 15:40:12', 'testing', 'static/images/entries/project/big/606596bdc2d56185aae35ad640d02c89.jpg', '#14381a', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sp_projectsstages`
--

CREATE TABLE IF NOT EXISTS `sp_projectsstages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `projects_id` int(11) DEFAULT NULL COMMENT 'Основной проэкт',
  `territory` int(11) DEFAULT NULL COMMENT 'Территориальная нацеленность проекта',
  `description` text COMMENT 'Продукты и результаты описания проекта ',
  `resourses` varchar(255) DEFAULT NULL COMMENT 'Ресурсы (doc-файл)',
  `project_plan` varchar(255) DEFAULT NULL COMMENT 'План проекта (doc-файл)',
  `top_event` int(11) DEFAULT NULL COMMENT 'Топовое событие проекта',
  `report` text COMMENT 'Отчет о мероприятиях ',
  `application_form` varchar(255) DEFAULT NULL COMMENT 'Аппликационная форма (doc и pdf – файл)',
  `product_links` varchar(2000) DEFAULT NULL COMMENT 'Ссылка на продукты проекта (т + ссылки)',
  `feedback_links` varchar(2000) DEFAULT NULL COMMENT 'Ссылки на отзывы в прессе (т + ссылки)',
  `workgroups_links` varchar(2000) DEFAULT NULL COMMENT 'Ссылки на рабочие группы в социальных сетях',
  `social_links` varchar(2000) DEFAULT NULL COMMENT 'Ссылки проекта в социальных сетях',
  `business_plan` varchar(255) DEFAULT NULL COMMENT 'Бизнес-план (doc и pdf – файл)',
  `scheme_budget` varchar(255) DEFAULT NULL COMMENT 'Схема бюджета – (xls-файл )',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Дополнительные проэкты' AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `sp_projectsstages`
--

INSERT INTO `sp_projectsstages` (`id`, `name`, `projects_id`, `territory`, `description`, `resourses`, `project_plan`, `top_event`, `report`, `application_form`, `product_links`, `feedback_links`, `workgroups_links`, `social_links`, `business_plan`, `scheme_budget`) VALUES
(2, '{"1":"\\u042d\\u0442\\u0430\\u043f \\u043f\\u0435\\u0440\\u0432\\u044b\\u0439","2":"","3":"","4":""}', 2, 1, '{"1":"<p>\\u0425\\u043e\\u0440\\u043e\\u0448\\u0438\\u0439 \\u043f\\u0440\\u043e\\u044d\\u043a\\u0442<\\/p>","2":"","3":"","4":""}', '9a531195f1843f11af0df02d0c99b753.doc', '8181792716ee56a847eb57e7ddfdf3bc.doc', 0, '{"1":"<p>\\u041e\\u0442\\u0447\\u0435\\u0442 \\u043e \\u043f\\u0440\\u043e\\u044d\\u043a\\u0442\\u0435<\\/p>","2":"","3":"","4":""}', '7f4d2a88ac18c70446a6de11c2cde227.doc', 'Ссылки на продукты проэкта', 'Ссылки на отзывы о проэкте', 'Ссылки на рабочие группы проэкта', 'Ссылки на социальные сети проэкта', '7e940a557088380c7d70bc7cf2290831.doc', 'e2a89cdb1e9787bed5a20b1900174371.doc'),
(3, '{"1":"\\u044d\\u0442\\u0430\\u043f 1","2":"","3":"","4":""}', 4, 1, '{"1":"<p>\\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u043f\\u0435\\u0440\\u0432\\u043e\\u0433\\u043e \\u044d\\u0442\\u043e\\u043f\\u0430 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430 \\"\\u0422\\u0435\\u0441\\u0442\\"<\\/p>","2":"","3":"","4":""}', NULL, NULL, 1, '{"1":"","2":"","3":"","4":""}', NULL, '', '', '', '', NULL, NULL),
(4, '{"1":"\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u0441\\u0442\\u0440\\u0443\\u043a\\u0442\\u0443\\u0440\\u044b \\u0431\\u0430\\u0437\\u044b \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445","2":"","3":""}', 3, 0, '{"1":"<p>\\u0422\\u0449\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043f\\u043b\\u0430\\u043d\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0441\\u0442\\u0440\\u0443\\u043a\\u0442\\u0443\\u0440\\u044b \\u0431\\u0430\\u0437\\u044b \\u0434\\u0430\\u043d\\u043d\\u044b\\u0445 \\u0434\\u043b\\u044f \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0433\\u0438\\u0431\\u043a\\u043e\\u0439 \\u044d\\u043a\\u0441\\u043f\\u043b\\u0443\\u0430\\u0442\\u0438\\u0446\\u0438\\u0438 \\u0438 \\u0432\\u043e\\u0437\\u043c\\u043e\\u0436\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0440\\u0430\\u0441\\u0448\\u0435\\u0440\\u0435\\u043d\\u0438\\u044f \\u0444\\u0443\\u043d\\u043a\\u0446\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0441\\u0430\\u0439\\u0442\\u0430.<\\/p>","2":"","3":""}', 'e6ae6b1304493963f9741937277329be.doc', '31c128055a851243437c72c629e52a83.doc', 0, '{"1":"","2":"","3":""}', '', 'http://successful.iblogger.org', '', 'http://vkontakte.ru/tsiplyakov', 'http://vkontakte.ru/tsiplyakov', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_projectsstages_partners`
--

CREATE TABLE IF NOT EXISTS `sp_projectsstages_partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) DEFAULT NULL,
  `organizations_id` int(11) DEFAULT NULL,
  `type` enum('partner','sponsor','grantor','general_sponsor','creative_time') NOT NULL DEFAULT 'partner',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Связь проэкта и его партнеров' AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `sp_projectsstages_partners`
--

INSERT INTO `sp_projectsstages_partners` (`id`, `entry_id`, `organizations_id`, `type`) VALUES
(2, 2, 2, 'creative_time'),
(3, 2, 2, 'grantor'),
(5, 3, 2, 'partner'),
(6, 4, 2, 'grantor');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_projects_categories`
--

CREATE TABLE IF NOT EXISTS `sp_projects_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Категории проэктов' AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `sp_projects_categories`
--

INSERT INTO `sp_projects_categories` (`id`, `name`) VALUES
(14, '{"1":"\\u0421\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435","2":"\\u0421\\u043e\\u0446\\u0456\\u0430\\u043b\\u044c\\u043d\\u0456","3":"Social","4":""}'),
(15, '{"1":"\\u0421\\u043f\\u043e\\u0440\\u0442","2":"","3":"","4":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_scopes`
--

CREATE TABLE IF NOT EXISTS `sp_scopes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Сферы деятельности' AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `sp_scopes`
--

INSERT INTO `sp_scopes` (`id`, `name`) VALUES
(2, '{"1":"\\u041c\\u0435\\u0434\\u0438\\u0446\\u0438\\u043d\\u0430","2":"\\u041c\\u0435\\u0434\\u0456\\u0446\\u0438\\u043d\\u0430","3":"Medics","4":""}'),
(3, '{"1":"\\u041f\\u0440\\u043e\\u0433\\u0440\\u0430\\u043c\\u043c\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435","2":"","3":""}');

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
  `type` int(11) DEFAULT NULL COMMENT 'Вид услуги',
  `project_result` int(11) DEFAULT NULL COMMENT 'Результат проекта',
  `condition` text COMMENT 'Условия оказания услуги',
  `note` text COMMENT 'Примечание',
  `foto` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Услуги' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `sp_services`
--

INSERT INTO `sp_services` (`id`, `name`, `supplier`, `price`, `terms`, `type`, `project_result`, `condition`, `note`, `foto`, `thumb`) VALUES
(2, '{"1":"\\u0423\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043a\\u0430 \\u041f\\u041e","2":"\\u0412\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f \\u041f\\u0417","3":"Installing programs","4":""}', 2, 200, '{"1":"\\u041f\\u041e, \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440","2":"\\u041f\\u0417, \\u043a\\u043e\\u043c\\u043f\\u044c\\u044e\\u0442\\u0435\\u0440","3":"programs, istalling","4":""}', 2, 3, '{"1":"<p>\\u0425\\u043e\\u0440\\u043e\\u0448\\u0435\\u0435 \\u0441\\u043e\\u0441\\u0442\\u043e\\u044f\\u043d\\u0438\\u0435<\\/p>","2":"<p>\\u0414\\u043e\\u0431\\u0440\\u0435<\\/p>","3":"<p>Good<\\/p>","4":""}', '{"1":"<p>\\u0423\\u0441\\u0442\\u0430\\u043d\\u0430\\u0432\\u043b\\u0438\\u0432\\u0430\\u0435\\u043c \\u0432\\u0441\\u0451<\\/p>","2":"<p>\\u0412\\u0441\\u0442\\u0430\\u043d\\u043e\\u0432\\u043b\\u044e\\u0454\\u043c\\u043e \\u0432\\u0441\\u0435<\\/p>","3":"<p>Note<\\/p>","4":""}', 'static/images/entries/service/big/65aecfc4f4cdf774535f097725ac86f6.jpg', 'static/images/entries/service/small/d0cf6b6e4a2ab02d06b5275f27c0b83e.jpg');

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
('fb8934effaa34785104d4b93bf9a88d3', '127.0.0.1', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.', 1319187437, 'a:5:{s:4:"lang";s:7:"russian";s:7:"lang_id";s:1:"1";s:8:"admin_id";s:2:"22";s:7:"user_id";s:2:"22";s:7:"project";s:1:"3";}'),
('034ab11a910e7bbdfff91472e67a929a', '127.0.0.1', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.', 1319187437, 'a:3:{s:4:"lang";s:7:"russian";s:7:"lang_id";s:1:"1";s:7:"project";s:1:"3";}'),
('433d87bf1b593f6d1b54fd6c172d77b6', '127.0.0.1', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.', 1319189566, 'a:3:{s:4:"lang";s:7:"russian";s:7:"lang_id";s:1:"1";s:7:"project";s:1:"3";}');

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
(1, '{"1":"\\u0423\\u0434\\u0430\\u0447\\u043d\\u044b\\u0439 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442","2":"\\u0412\\u0434\\u0430\\u043b\\u0438\\u0439 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442","3":"Successful project"}', '{"1":"\\u043e\\u0441\\u0432\\u0435\\u0449\\u0435\\u043d\\u0438\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u043e\\u0432 \\u0432 \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0441\\u0444\\u0435\\u0440\\u0435, \\u043c\\u0430\\u043b\\u043e\\u043c \\u0438 \\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u043c \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0435","2":"","3":""}', '{"1":"\\u043e\\u0441\\u0432\\u0435\\u0449\\u0435\\u043d\\u0438\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u043e\\u0432 \\u0432 \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u0441\\u0444\\u0435\\u0440\\u0435, \\u043c\\u0430\\u043b\\u043e\\u043c \\u0438 \\u0441\\u0440\\u0435\\u0434\\u043d\\u0435\\u043c \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\\u0435","2":"","3":""}', '{"1":"static\\/images\\/entries\\/settings\\/big\\/67b936d61e3d6320f9e748dac2e46a85.png","2":"static\\/images\\/entries\\/settings\\/big\\/0db64a8ea35372cb11d12fd6c9c0acb6.png","3":"static\\/images\\/entries\\/settings\\/big\\/4f170316005e240855177f2247f57876.png"}', '{"1":"","2":"1","3":""}', 'static/images/entries/settings/big/afbbc190993035cdc7f59437d80606e4.png', '{"1":"\\u041a\\u043e\\u043f\\u0438\\u0440\\u0430\\u0439\\u0442","2":"\\u041a\\u043e\\u043f\\u0456\\u0440\\u0430\\u0439\\u0442","3":"Copyright"}', 1, '#00ff66', 0, 'main', 'undefined', '');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_territories`
--

CREATE TABLE IF NOT EXISTS `sp_territories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Пользователи' AUTO_INCREMENT=25 ;

--
-- Дамп данных таблицы `sp_users`
--

INSERT INTO `sp_users` (`id`, `name`, `suname`, `email`, `phone`, `about`, `foto`, `thumb`, `password`, `verify_code`, `confirmed`, `group_id`, `signup`) VALUES
(22, '{"1":"\\u041c\\u0430\\u043a\\u0441","2":"\\u041c\\u0430\\u043a\\u0441","3":"Max","4":""}', '{"1":"\\u0414\\u043c\\u0438\\u0442\\u0440\\u0438\\u0435\\u0432","2":"\\u0414\\u043c\\u0456\\u0442\\u0440\\u0456\\u0454\\u0432","3":"Dmitriev","4":""}', 'maxdmitrief@gmail.com', '0689594947', '{"1":"<p>\\u042d\\u0442\\u043e \\u042f!<\\/p>","2":"<p>\\u0426\\u0435 \\u044f!<\\/p>","3":"<p>It''s I!<\\/p>","4":""}', 'static/images/entries/user/big/b04ae926a8f7bfd9ae61cb5eee2fe9b4.jpg', 'static/images/entries/user/small/ff209ca1374a23f34877e0f442968974.jpg', 'c5fe25896e49ddfe996db7508cf00534', '16bc2beab3afc1a77f77c0fe5d8c896b', 1, 1, '2011-09-21 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `sp_videos_report`
--

CREATE TABLE IF NOT EXISTS `sp_videos_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Связь дополнительного пректа и видео' AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `sp_videos_report`
--

INSERT INTO `sp_videos_report` (`id`, `entry_id`, `url`) VALUES
(2, 2, 'http://youtu.be/LTct5tBkcaU'),
(3, 2, 'http://youtu.be/t-b-Wgiaqe4');
