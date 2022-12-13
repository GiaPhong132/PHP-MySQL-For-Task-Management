-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2022 at 07:22 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `urban_wasting_collection`
--

-- --------------------------------------------------------

--
-- Table structure for table `backofficer`
--

CREATE TABLE `backofficer` (
  `id` int(7) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `backofficer`
--

INSERT INTO `backofficer` (`id`, `email`, `name`, `phone`) VALUES
(9999999, 'admin@gmail.com', 'admin', '012-345-6789');

-- --------------------------------------------------------

--
-- Table structure for table `mcp`
--

CREATE TABLE `mcp` (
  `id` int(7) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `capacity` float DEFAULT NULL,
  `isFull` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mcp`
--

INSERT INTO `mcp` (`id`, `location`, `capacity`, `isFull`) VALUES
(1, 'Vilcun', 83.82, 1),
(2, 'Mirzapur', 98.86, 1),
(3, 'Xufu', 156.77, 1),
(4, 'Jeleuk', 188.94, 1),
(5, 'Amphoe Sikhiu', 180.68, 1),
(6, 'Al Hoceima', 184.49, 1),
(7, 'Liberta', 79.05, 1),
(8, 'Leme', 147.42, 0),
(9, 'Krasica', 197.41, 1),
(10, 'Segoro', 76.79, 1),
(11, 'Rislane', 149.28, 0),
(12, 'Torre do Pinhao', 85.27, 1),
(13, 'Santa Ana', 97.17, 1),
(14, 'Itacurubi del Rosario', 105.91, 1),
(15, 'Ballitoville', 80.96, 1),
(16, 'Hatsukaichi', 111.08, 1),
(17, 'Maardu', 150.01, 1),
(18, 'Cachada', 62.83, 1),
(19, 'Karatau', 57.82, 1),
(20, 'Le Pontet', 70.82, 0);

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` int(7) NOT NULL,
  `MCP_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `MCP_id`) VALUES
(1, 1),
(2, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 3),
(10, 3),
(12, 3),
(16, 4),
(22, 4),
(23, 4),
(24, 5),
(25, 5),
(27, 5),
(28, 6),
(30, 6),
(32, 6),
(34, 7),
(36, 7),
(37, 7),
(38, 8),
(39, 8),
(40, 8),
(43, 9),
(44, 9),
(45, 9),
(50, 10),
(52, 10),
(53, 10),
(55, 11),
(57, 11),
(60, 12),
(61, 12),
(63, 13),
(66, 13),
(68, 14),
(69, 14),
(70, 15),
(71, 15),
(72, 16),
(73, 16),
(75, 17),
(76, 17),
(77, 18),
(80, 18),
(96, 19),
(98, 19),
(99, 20),
(100, 20);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `name` varchar(255) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `id` int(7) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`name`, `phone`, `email`, `id`, `type`) VALUES
('Abbie Olford', '149805724', 'ksharrocks0@yelp.com', 1, 'Janitor'),
('Abeu Le Clercq', '654429913', 'bstruthers1@hibu.com', 2, 'Janitor'),
('Al MacCaghan', '786881412', 'wchanning2@last.fm', 3, 'Janitor'),
('Anabal Micka', '475457233', 'bspinola3@sitemeter.com', 4, 'Janitor'),
('Ansell Wills', '927510975', 'lveel4@wsj.com', 5, 'Janitor'),
('Ashely Tonge', '128385059', 'mpedro5@wikipedia.org', 6, 'Janitor'),
('Bartholomew Giannini', '79174708', 'tbernath6@soundcloud.com', 7, 'Janitor'),
('Bartholomew Huntall', '158962586', 'cloos7@hostgator.com', 8, 'Janitor'),
('Beauregard Haisell', '315413542', 'hsinnock8@cnbc.com', 9, 'Janitor'),
('Berkie Lilleycrop', '824735681', 'evercruysse9@slate.com', 10, 'Janitor'),
('Blaine Spinola', '814386362', 'pspurwaya@netscape.com', 11, 'Janitor'),
('Brandy Zanicchi', '316346620', 'gsedgmanb@godaddy.com', 12, 'Janitor'),
('Bren Struthers', '223698825', 'hfrippsc@chicagotribune.com', 13, 'Janitor'),
('Brigham Scott', '682436823', 'jgrunderd@51.la', 14, 'Janitor'),
('Caresse Jordin', '366708080', 'psadliere@yandex.ru', 15, 'Janitor'),
('Carina Loos', '839868172', 'aolfordf@shutterfly.com', 16, 'Janitor'),
('Cheryl Rappport', '53565704', 'ggusneyg@marriott.com', 17, 'Janitor'),
('Chris Seldner', '463830428', 'lhethronh@google.cn', 18, 'Janitor'),
('Christie Reynoldson', '746290095', 'dboutellieri@weebly.com', 19, 'Janitor'),
('Cleon Lillyman', '474123235', 'raccombj@xinhuanet.com', 20, 'Janitor'),
('Corinne Langshaw', '512610573', 'pscayk@tinyurl.com', 21, 'Janitor'),
('Cortney Owlner', '897167364', 'ranticl@chron.com', 22, 'Janitor'),
('Curtis Giovannelli', '57734383', 'atongem@booking.com', 23, 'Janitor'),
('Dalia Unwin', '475519703', 'sdaintithn@pbs.org', 24, 'Janitor'),
('Ddene Parncutt', '625152815', 'fkryskao@hud.gov', 25, 'Janitor'),
('Dewey Dallinder', '827083421', 'okeirp@wordpress.com', 26, 'Janitor'),
('Diego Priscott', '878749799', 'egrahameq@ibm.com', 27, 'Janitor'),
('Dru Boutellier', '931963491', 'clangshawr@prnewswire.com', 28, 'Janitor'),
('Earvin Grahame', '807309771', 'wboshiers@liveinternet.ru', 29, 'Janitor'),
('Eduino Meni', '123911809', 'lgilyattt@cnbc.com', 30, 'Janitor'),
('Emelyne Vercruysse', '126076727', 'ngrelkau@indiegogo.com', 31, 'Janitor'),
('Ermina Attrie', '252628878', 'alev@jiathis.com', 32, 'Janitor'),
('Eziechiele Maryska', '583869130', 'bscottw@seesaa.net', 33, 'Janitor'),
('Frasco Kryska', '372783680', 'kshotboltx@archive.org', 34, 'Janitor'),
('Gavin Sedgman', '175878972', 'ddallindery@newsvine.com', 35, 'Janitor'),
('Gianni Goodram', '604380623', 'yexterz@fda.gov', 36, 'Janitor'),
('Giustina Tenby', '363102434', 'rrosini10@acquirethisname.com', 37, 'Janitor'),
('Greer Bonehill', '926483793', 'cgiovannelli11@cisco.com', 38, 'Janitor'),
('Greggory Gusney', '646497120', 'blilleycrop12@deviantart.com', 39, 'Janitor'),
('Guthry Hoys', '803356087', 'tcooke13@webs.com', 40, 'Janitor'),
('Hollie Fripps', '808009329', 'slandis14@sun.com', 41, 'Janitor'),
('Hoyt Sinnock', '265940580', 'mallwell15@gnu.org', 42, 'Janitor'),
('Jillane McConnal', '502466519', 'cjordin16@ucoz.com', 43, 'Janitor'),
('Joel Savary', '65763820', 'sogorman17@sogou.com', 44, 'Janitor'),
('Jojo Leedes', '662586104', 'pfirsby18@discuz.net', 45, 'Janitor'),
('Jorey Grunder', '195394537', 'bzanicchi19@4shared.com', 46, 'Janitor'),
('Joshua Hellard', '766120731', 'nscotfurth1a@psu.edu', 47, 'Janitor'),
('Kendra Shotbolt', '826566975', 'jsavary1b@imageshack.us', 48, 'Janitor'),
('Kenon Sharrocks', '731244822', 'dunwin1c@umn.edu', 49, 'Janitor'),
('Kettie Bascomb', '18223771', 'cowlner1d@tamu.edu', 50, 'Janitor'),
('Kinna Thorpe', '749506023', 'rkumaar1e@harvard.edu', 51, 'Janitor'),
('Lanna Gilyatt', '671091206', 'msilkstone1f@washington.edu', 52, 'Collector'),
('Latisha McCabe', '112824748', 'jleedes1g@examiner.com', 53, 'Collector'),
('Layney Veel', '41672014', 'kthorpe1h@whitehouse.gov', 54, 'Collector'),
('Leonard Caig', '634951775', 'tbernardotti1i@theglobeandmail.com', 55, 'Collector'),
('Leslie Blagdon', '557443976', 'ptrevers1j@mac.com', 56, 'Collector'),
('Linet Ironside', '924895279', 'bhuntall1k@prlog.org', 57, 'Collector'),
('Lorelei Hethron', '187702148', 'sduberry1l@techcrunch.com', 58, 'Collector'),
('Lorelei Solway', '819317077', 'msevior1m@odnoklassniki.ru', 59, 'Collector'),
('Maitilde Allwell', '369308324', 'cseldner1n@feedburner.com', 60, 'Collector'),
('Matty Silkstone', '84344911', 'jhellard1o@bizjournals.com', 61, 'Collector'),
('Melicent Sevior', '932981207', 'wvasilmanov1p@marriott.com', 62, 'Collector'),
('Milty Pedro', '518746605', 'dpriscott1q@scientificamerican.com', 63, 'Collector'),
('Miof mela Bott', '527373955', 'gtenby1r@sfgate.com', 64, 'Collector'),
('Morty MacDermott', '177444781', 'gbonehill1s@bizjournals.com', 65, 'Collector'),
('Nelson Scotfurth', '39918495', 'creynoldson1t@twitter.com', 66, 'Collector'),
('Nettie Corradino', '164334703', 'lsolway1u@chicagotribune.com', 67, 'Collector'),
('Nikki Grelka', '903231327', 'bgiannini1v@mlb.com', 68, 'Collector'),
('Noel Grieg', '314220637', 'mmela1w@google.com', 69, 'Collector'),
('Norrie Filinkov', '966072372', 'sziemke1x@marriott.com', 70, 'Collector'),
('Orlan Keir', '31950956', 'rolden1y@elpais.com', 71, 'Collector'),
('Pammie Scay', '157704841', 'rbrookesbie1z@cnn.com', 72, 'Collector'),
('Panchito Spurway', '696573504', 'bhaisell20@clickbank.net', 73, 'Collector'),
('Petronilla Sadlier', '71384127', 'wsawday21@nature.com', 74, 'Collector'),
('Phip Guage', '965922235', 'pguage22@zdnet.com', 75, 'Collector'),
('Phyllis Firsby', '788070942', 'ngrieg23@macromedia.com', 76, 'Collector'),
('Pippo Trevers', '755039100', 'kbascomb24@mayoclinic.com', 77, 'Collector'),
('Rafe Masden', '967000912', 'lcaig25@time.com', 78, 'Collector'),
('Ranee Olden', '653719020', 'ggoodram26@cdc.gov', 79, 'Collector'),
('Reynold Kumaar', '45357392', 'ghoys27@wired.com', 80, 'Collector'),
('Roger Brookesbie', '474751952', 'zpetworth28@dmoz.org', 81, 'Collector'),
('Rosalinda Accomb', '168273595', 'rmuggleston29@symantec.com', 82, 'Collector'),
('Rowland Muggleston', '121314225', 'emaryska2a@answers.com', 83, 'Collector'),
('Royal Antic', '331254782', 'amicka2b@nifty.com', 84, 'Collector'),
('Rube Rosini', '51546497', 'lblagdon2c@mit.edu', 85, 'Collector'),
('Sallee Girton', '918382761', 'dparncutt2d@jalbum.net', 86, 'Collector'),
('Shepherd Ziemke', '6785057', 'lironside2e@google.com.hk', 87, 'Collector'),
('Skip Landis', '573013375', 'mmacdermott2f@histats.com', 88, 'Collector'),
('Stefanie Duberry', '256761149', 'amaccaghan2g@nymag.com', 89, 'Collector'),
('Stesha Daintith', '405157869', 'sgirton2h@trellian.com', 90, 'Collector'),
('Susette O\'Gorman', '985127537', 'eattrie2i@springer.com', 91, 'Collector'),
('Tallia Bernardotti', '726765749', 'jmcconnal2j@imageshack.us', 92, 'Collector'),
('Teddy Cooke', '779475630', 'emeni2k@unc.edu', 93, 'Collector'),
('Teirtza Bernath', '366044861', 'ncorradino2l@netvibes.com', 94, 'Collector'),
('Weber Sawday', '961089178', 'rmasden2m@altervista.org', 95, 'Collector'),
('Wernher Vasilmanov', '891519967', 'clillyman2n@godaddy.com', 96, 'Collector'),
('Wiatt Boshier', '4541992', 'nfilinkov2o@japanpost.jp', 97, 'Collector'),
('Worth Channing', '516728131', 'crappport2p@cmu.edu', 98, 'Collector'),
('Yard Exter', '7811882', 'awills2q@ft.com', 99, 'Collector'),
('Zedekiah Petworth', '53251225', 'lmccabe2r@shareasale.com', 100, 'Collector');

-- --------------------------------------------------------

--
-- Table structure for table `taskcollector`
--

CREATE TABLE `taskcollector` (
  `id` int(7) NOT NULL,
  `status` varchar(12) NOT NULL DEFAULT 'Completed',
  `date_assigned` date NOT NULL,
  `staff_id` int(7) DEFAULT NULL,
  `truck_id` int(7) DEFAULT NULL,
  `mcp_id` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taskcollector`
--

INSERT INTO `taskcollector` (`id`, `status`, `date_assigned`, `staff_id`, `truck_id`, `mcp_id`) VALUES
(1, 'Completed', '2022-03-25', 25, 14, 7),
(2, 'Completed', '2022-08-25', 16, 15, 13),
(3, 'Completed', '2022-07-21', 29, 45, 8),
(4, 'Cancel', '2022-05-12', 21, 1, 14),
(5, 'Cancel', '2022-10-19', 41, 34, 7),
(6, 'Pending', '2022-06-22', 14, 9, 7),
(7, 'Completed', '2022-05-09', 3, 43, 14),
(8, 'Completed', '2022-09-12', 1, 37, 3),
(9, 'Cancel', '2022-11-27', 29, 2, 3),
(10, 'Completed', '2022-08-05', 48, 19, 16),
(11, 'In Progress', '2022-05-17', 16, 19, 8),
(12, 'In Progress', '2022-03-24', 37, 32, 14),
(13, 'Pending', '2022-05-20', 14, 44, 15),
(14, 'Completed', '2022-11-15', 43, 34, 11),
(15, 'Cancel', '2022-09-09', 13, 29, 19),
(16, 'Pending', '2022-09-10', 35, 31, 2),
(17, 'Completed', '2022-11-28', 7, 6, 12),
(18, 'In Progress', '2022-11-23', 23, 28, 1),
(19, 'Completed', '2022-04-07', 41, 13, 18),
(20, 'In Progress', '2022-09-08', 21, 35, 7);

-- --------------------------------------------------------

--
-- Table structure for table `taskjanitor`
--

CREATE TABLE `taskjanitor` (
  `id` int(7) NOT NULL,
  `status` varchar(12) NOT NULL DEFAULT 'Completed',
  `date_assigned` date NOT NULL,
  `staff_id` int(7) DEFAULT NULL,
  `troller_id` int(7) DEFAULT NULL,
  `point_id` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taskjanitor`
--

INSERT INTO `taskjanitor` (`id`, `status`, `date_assigned`, `staff_id`, `troller_id`, `point_id`) VALUES
(1, 'Completed', '2022-03-25', 51, 1, 1),
(2, 'Completed', '2022-08-25', 52, 2, 2),
(3, 'Completed', '2022-07-21', 53, 3, 3),
(4, 'Cancel', '2022-05-12', 54, 4, 4),
(5, 'Cancel', '2022-10-19', 55, 5, 5),
(6, 'Pending', '2022-06-22', 56, 6, 6),
(7, 'Completed', '2022-05-09', 57, 7, 7),
(8, 'Completed', '2022-09-12', 58, 8, 8),
(9, 'Cancel', '2022-11-27', 59, 9, 9),
(10, 'Completed', '2022-08-05', 60, 10, 10),
(11, 'In Progress', '2022-05-17', 61, 11, 11),
(12, 'In Progress', '2022-03-24', 62, 12, 12),
(13, 'Pending', '2022-05-20', 63, 13, 13),
(14, 'Completed', '2022-11-15', 64, 14, 14),
(15, 'Cancel', '2022-09-09', 65, 15, 15),
(16, 'Pending', '2022-09-10', 66, 16, 16),
(17, 'Completed', '2022-11-28', 67, 17, 17),
(18, 'In Progress', '2022-11-23', 68, 18, 18),
(19, 'Completed', '2022-04-07', 69, 19, 19),
(20, 'In Progress', '2022-09-08', 70, 20, 20),
(21, 'Pending', '2022-10-10', 71, 21, 21),
(22, 'Pending', '2022-10-28', 72, 22, 22),
(23, 'Pending', '2022-11-16', 73, 23, 23),
(24, 'In Progress', '2022-12-10', 74, 24, 24),
(25, 'In Progress', '2022-10-30', 75, 25, 25),
(26, 'In Progress', '2022-12-05', 76, 26, 26),
(27, 'In Progress', '2022-11-17', 77, 27, 27),
(28, 'Completed', '2022-11-12', 78, 28, 28),
(29, 'Completed', '2022-10-22', 79, 29, 29),
(30, 'Completed', '2022-12-08', 80, 30, 30),
(31, 'Completed', '2022-10-21', 81, 31, 31),
(32, 'Completed', '2022-12-03', 82, 32, 32),
(33, 'Completed', '2022-11-17', 83, 33, 33),
(34, 'Completed', '2022-11-16', 84, 34, 34),
(35, 'Completed', '2022-10-29', 85, 35, 35),
(36, 'Completed', '2022-10-28', 86, 36, 36),
(37, 'Cancel', '2022-11-06', 87, 37, 37),
(38, 'Cancel', '2022-10-12', 88, 38, 38),
(39, 'Cancel', '2022-11-18', 89, 39, 39),
(40, 'Cancel', '2022-11-09', 90, 40, 40);

-- --------------------------------------------------------

--
-- Table structure for table `troller`
--

CREATE TABLE `troller` (
  `id` int(7) NOT NULL,
  `capacity` float DEFAULT NULL,
  `isAvailable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `troller`
--

INSERT INTO `troller` (`id`, `capacity`, `isAvailable`) VALUES
(1, 562.49, 0),
(2, 757.64, 1),
(3, 872.81, 0),
(4, 840.22, 0),
(5, 869.72, 0),
(6, 638.51, 1),
(7, 719.33, 1),
(8, 525.7, 1),
(9, 883.3, 0),
(10, 838.03, 0),
(11, 539.84, 1),
(12, 706.48, 0),
(13, 727.67, 0),
(14, 741.06, 0),
(15, 593.19, 1),
(16, 590.69, 0),
(17, 754.77, 0),
(18, 716.05, 1),
(19, 769.16, 1),
(20, 683.51, 0),
(21, 764.44, 0),
(22, 752.41, 1),
(23, 724.29, 0),
(24, 645.75, 1),
(25, 700.53, 1),
(26, 852.83, 0),
(27, 683.36, 1),
(28, 559.82, 0),
(29, 561.22, 1),
(30, 779.49, 1),
(31, 855.98, 1),
(32, 669.69, 1),
(33, 522.66, 0),
(34, 619.84, 1),
(35, 537.71, 1),
(36, 503.87, 1),
(37, 844.93, 1),
(38, 841.65, 0),
(39, 525.33, 1),
(40, 845.63, 1),
(41, 764.41, 0),
(42, 726.58, 1),
(43, 676.36, 0),
(44, 627.04, 0),
(45, 770.48, 1),
(46, 777.2, 0),
(47, 873.81, 0),
(48, 710.08, 0),
(49, 633.91, 1),
(50, 810.78, 0);

-- --------------------------------------------------------

--
-- Table structure for table `truck`
--

CREATE TABLE `truck` (
  `id` int(7) NOT NULL,
  `capacity` float DEFAULT NULL,
  `isAvailable` int(11) NOT NULL,
  `vehicleNum` int(7) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `fuelConsumption` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `truck`
--

INSERT INTO `truck` (`id`, `capacity`, `isAvailable`, `vehicleNum`, `weight`, `fuelConsumption`) VALUES
(1, 760.71, 0, 9222077, 3587.45, 14.38),
(2, 657.36, 0, 9435297, 1704.04, 14.91),
(3, 703.3, 1, 1603488, 4171.49, 8.84),
(4, 681.85, 0, 6858650, 4405.63, 5.88),
(5, 804.86, 1, 2901707, 3713.4, 7.58),
(6, 810.16, 0, 3534801, 1003.2, 12.3),
(7, 782.31, 1, 4782595, 4678.95, 14.33),
(8, 613.91, 1, 2786950, 2636.7, 8.28),
(9, 812.09, 0, 8206446, 2985.91, 11.34),
(10, 582.05, 0, 2406008, 2450.94, 5.83),
(11, 556.41, 1, 5884562, 1498.53, 10.61),
(12, 877.81, 0, 5234489, 4317.13, 5.23),
(13, 520.51, 0, 9158807, 4970.95, 13.56),
(14, 799.74, 1, 7882528, 3351.67, 10.02),
(15, 690.46, 1, 7641146, 1557.64, 14.77),
(16, 665.82, 0, 4514482, 1696.85, 14.36),
(17, 725.44, 0, 6238799, 4795.39, 14.77),
(18, 552.17, 1, 3582636, 3168.93, 11.25),
(19, 813.36, 1, 3579733, 1640.09, 11.69),
(20, 840.9, 1, 6750737, 4828.81, 6.97),
(21, 742.46, 0, 2333856, 2772.11, 7.94),
(22, 883.99, 0, 2766930, 4775.23, 8.1),
(23, 508.95, 1, 8851009, 3850.69, 13.24),
(24, 703.07, 1, 6539692, 1061.82, 14.44),
(25, 666.73, 1, 4513091, 3045.34, 8.59),
(26, 748.19, 0, 8007544, 2330.69, 14.32),
(27, 769.39, 0, 3934327, 4098.21, 5.39),
(28, 785.25, 1, 1812819, 2870.37, 9.26),
(29, 868.57, 1, 6037692, 4485.02, 8.59),
(30, 697.33, 0, 4669617, 1098.05, 5.48),
(31, 886.14, 0, 2861011, 2227.55, 11.04),
(32, 504.73, 0, 9433834, 4722.09, 12.86),
(33, 621.35, 1, 2534192, 4267.28, 9.1),
(34, 683.13, 0, 7621586, 3607.57, 14.02),
(35, 718.86, 1, 7763918, 3510.39, 7.63),
(36, 629.15, 0, 8562126, 3450.66, 12.61),
(37, 786.26, 0, 1902078, 3088.42, 5.94),
(38, 507.55, 1, 2906071, 3771.9, 13.84),
(39, 888.04, 1, 5485900, 2444.79, 8.05),
(40, 721.34, 1, 6232465, 1136.36, 5.55),
(41, 869.02, 1, 1277068, 3539.78, 11.02),
(42, 684.92, 1, 4485700, 3660.13, 5.36),
(43, 761.15, 0, 6309341, 1629.74, 6.4),
(44, 859.59, 1, 4571640, 1784.3, 9.3),
(45, 880.53, 0, 4464875, 3119.34, 11.37),
(46, 649.57, 1, 7334937, 3799.01, 11.05),
(47, 545.77, 0, 4813560, 3050.73, 9.7),
(48, 588.95, 1, 7089198, 4762.8, 12.96),
(49, 682.63, 0, 3860793, 2971.32, 8.96),
(50, 519.6, 0, 7449966, 2812.03, 11.6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backofficer`
--
ALTER TABLE `backofficer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `mcp`
--
ALTER TABLE `mcp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`,`MCP_id`),
  ADD KEY `MCP_id` (`MCP_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `taskcollector`
--
ALTER TABLE `taskcollector`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `truck_id` (`truck_id`),
  ADD KEY `mcp_id` (`mcp_id`);

--
-- Indexes for table `taskjanitor`
--
ALTER TABLE `taskjanitor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `troller_id` (`troller_id`),
  ADD KEY `point_id` (`point_id`);

--
-- Indexes for table `troller`
--
ALTER TABLE `troller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `truck`
--
ALTER TABLE `truck`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehicleNum` (`vehicleNum`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_ibfk_1` FOREIGN KEY (`MCP_id`) REFERENCES `mcp` (`id`);

--
-- Constraints for table `taskcollector`
--
ALTER TABLE `taskcollector`
  ADD CONSTRAINT `taskcollector_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`),
  ADD CONSTRAINT `taskcollector_ibfk_2` FOREIGN KEY (`truck_id`) REFERENCES `truck` (`id`),
  ADD CONSTRAINT `taskcollector_ibfk_3` FOREIGN KEY (`mcp_id`) REFERENCES `mcp` (`id`);

--
-- Constraints for table `taskjanitor`
--
ALTER TABLE `taskjanitor`
  ADD CONSTRAINT `taskjanitor_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`),
  ADD CONSTRAINT `taskjanitor_ibfk_2` FOREIGN KEY (`troller_id`) REFERENCES `troller` (`id`),
  ADD CONSTRAINT `taskjanitor_ibfk_3` FOREIGN KEY (`point_id`) REFERENCES `points` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
