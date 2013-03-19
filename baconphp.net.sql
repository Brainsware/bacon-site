-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 19, 2013 at 05:23 PM
-- Server version: 5.1.50-community
-- PHP Version: 5.4.0-ZS5.6.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `baconphp.net`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `slug` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `published_at` date NOT NULL DEFAULT '0000-00-00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `user_id`, `slug`, `title`, `content`, `created_at`, `updated_at`, `published_at`, `active`) VALUES
(19, 1, '1-release', 'First public Bacon release!', 'We, [Brainsware](http://brainsware.org), have developed Bacon over the last years to cover all our clients'' common use cases and thus have created a base for fast and robust web development using PHP. Since we do not want to keep that to ourselves, Bacon is now released to the wild under the Apache-2.0 license.\n\n### What makes Bacon special?\n\nPHP and its surrounding development environment, as well as web development practices in general, have evolved quite a bit in the past years and we tried to keep in touch with that. Thus Bacon strives to integrate in all the new and shiny infrastructure available for PHP developers.\n\n* A very permissive license (Apache-2.0)\n* Full usage of [PHP 5.4 features](http://php.net/releases/5_4_0.php), especially in the underlying general purpose library [Sauce](https://github.com/Brainsware/sauce)\n* [PSR-0](https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-0.md) and mostly [PSR-1](https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-1-basic-coding-standard.md) compatible (we prefer `#under_score` method names instead of `#camelCase`)\n* Available as [Composer](http://getcomposer.org) [packages](https://packagist.org/packages/brainsware) for ease of installation and dependency management\n* Library, website and skeleton project fully available for you to fork on [Github](https://github.com/Brainsware)\n\n### What does Bacon provide?\n\nBacon is still quite small and minimalistic, it does however implement a complete MVC structure. With this structure and some conventions Bacon makes it very easy to cover a wide variety of use cases of modern web development.\n\n* A simple [ORM](http://en.wikipedia.org/wiki/Object-relational_mapping)\n* [RESTful routing](http://en.wikipedia.org/wiki/Representational_state_transfer): a simple, standardized way of mapping URIs to controllers also following our principle of *convention over configuration*\n* Robust controller infrastructure including the standard template engine [Twig](http://twig.sensiolabs.org/)\n* Standardized upload handling for asynchronous XHR as well as classic HTML uploads\n* Simple ways of turning your controllers into web services or AJAX API endpoints\n* Support for [CoffeeScript](http://coffeescript.org)\n\n### Where will Bacon go?\n\nAs good as we think Bacon is already, we still have a lot of features lined up in our queue:\n\n* Migrations, validations and associations for the ORM\n* Standardized error and error message handling in the ORM and controllers\n* Internationalization and localization\n* Proper, automatable unit and regression testing suite with a simple [DSL](http://en.wikipedia.org/wiki/Domain-specific_language) for Bacon, Sauce and the applications built with it\n* API documentation generation that integrates neatly with the rest of documentation\n* Keep up-to-date with new features in PHP\n\nWe will try to keep and improve the usability of Bacon as a whole, to further ease web development.\n\nIf you have any questions, feature request or just want to get in touch don''t hesitate to contact us on [Github](https://github.com/Brainsware/bacon). We also encourage you to fiddle around with Bacon and its environment yourself, if you feel like something is missing, you found a typo or just want to experiment. So fork us and send us pull requests!', '2013-01-30 10:18:59', '2013-01-30 10:18:59', '2013-03-19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `token`) VALUES
(1, 'Daniel Khalil', 'd.khalil@brainsware.org', ''),
(2, 'Alexander Pánek', 'a.panek@brainsware.org', ''),
(3, 'Igor Galić', 'i.galic@brainsware.org', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
