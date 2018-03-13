-- phpMyAdmin SQL Dump
-- version 2.11.2.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 06 月 11 日 05:36
-- 服务器版本: 5.0.45
-- PHP 版本: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- 数据库: `zengpin`
--
DROP DATABASE IF EXISTS  `zengpin`;
CREATE DATABASE `zengpin` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `zengpin`;

-- --------------------------------------------------------

--
-- 表的结构 `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `cartid` int(200) NOT NULL auto_increment,
  `username` varchar(255) collate utf8_unicode_ci NOT NULL,
  `proid` int(200) NOT NULL,
  `proname` varchar(255) collate utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `proamount` int(255) NOT NULL,
  PRIMARY KEY  (`cartid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=45 ;

--
-- 导出表中的数据 `carts`
--

INSERT INTO `carts` (`cartid`, `username`, `proid`, `proname`, `price`, `proamount`) VALUES
(31, 'qqqqqq', 2, '欧珀莱修颜防晒隔离霜', 210.00, 1),
(32, 'qqqqqq', 1, '韩束隔离轻薄防晒乳', 89.00, 3),
(33, 'ooooooo', 2, '欧珀莱修颜防晒隔离霜', 210.00, 1),
(38, 'wwwwww', 1, '韩束隔离轻薄防晒乳', 89.00, 1),
(40, 'wwwwww', 6, '玉兰油Pro-x肌源活颜隔离防晒乳 ', 268.00, 1),
(41, 'wwwwww', 12, '春纪美白防晒粉罗宾套装', 59.00, 1),
(42, 'wwwwww', 8, '安热沙防晒露60ml', 300.00, 3),
(43, 'wwwwww', 7, '彼丽水感清透隔离防晒修护套装', 69.00, 1),
(44, 'wwwwww', 13, '梦妆肌蜜隔离霜 #02 薄荷绿 35ml', 140.00, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dingdan`
--

DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE IF NOT EXISTS `dingdan` (
  `ddid` int(200) NOT NULL auto_increment,
  `username` varchar(255) collate utf8_unicode_ci NOT NULL,
  `proname` varchar(255) collate utf8_unicode_ci NOT NULL,
  `proamount` int(255) NOT NULL,
  `heji` decimal(10,1) NOT NULL,
  `shouhuoren` varchar(255) collate utf8_unicode_ci NOT NULL,
  `shouhuodizhi` varchar(255) collate utf8_unicode_ci NOT NULL,
  `dianhua` int(255) NOT NULL,
  `shouhuotime` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`ddid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=138 ;

--
-- 导出表中的数据 `dingdan`
--

INSERT INTO `dingdan` (`ddid`, `username`, `proname`, `proamount`, `heji`, `shouhuoren`, `shouhuodizhi`, `dianhua`, `shouhuotime`) VALUES
(86, 'ssssss', '玉兰油透白隔离防晒乳液40ml', 2, 238.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(87, 'ssssss', '欧珀莱烈日防晒隔离液', 1, 210.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(88, 'ssssss', '欧珀莱修颜防晒隔离霜', 1, 210.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(97, 'songjia', '珀莱雅水动力经典套装', 3, 627.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(98, 'songjia', '珀莱雅水动力经典套装', 3, 627.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(99, 'songjia', '韩束隔离轻薄防晒乳', 1, 89.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(100, 'songjia', '玉兰油透白隔离防晒乳液40ml', 1, 119.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(101, 'songjia', '欧珀莱烈日防晒隔离液', 1, 210.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(102, 'songjia', '欧珀莱修颜防晒隔离霜', 1, 210.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(108, 'abcd123', '珀莱雅水动力经典套装', 2, 418.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(109, 'abcd123', '欧珀莱烈日防晒隔离液', 1, 210.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(110, 'abcd123', '玉兰油透白隔离防晒乳液40ml', 1, 119.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(111, 'pppppp', '玉兰油轻透倍护隔离防晒液40ml', 1, 119.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(112, 'pppppp', '玉兰油Pro-x肌源活颜隔离防晒乳 ', 2, 536.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(113, 'pppppp', '珀莱雅水动力经典套装', 5, 1045.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(125, 'qqqqqq', '欧珀莱修颜防晒隔离霜', 1, 210.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(126, 'qqqqqq', '韩束隔离轻薄防晒乳', 3, 267.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(127, 'qqqqqq', '欧珀莱修颜防晒隔离霜', 1, 210.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(128, 'qqqqqq', '韩束隔离轻薄防晒乳', 3, 267.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(129, 'qqqqqq', '珀莱雅水动力经典套装', 8, 1672.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(130, 'ooooooo', '欧珀莱修颜防晒隔离霜', 2, 420.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(131, 'ooooooo', '欧珀莱烈日防晒隔离液', 2, 420.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(132, 'ooooooo', '欧珀莱修颜防晒隔离霜', 2, 420.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(133, 'ooooooo', '欧珀莱烈日防晒隔离液', 2, 420.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(134, 'ooooooo', '珀莱雅水动力经典套装', 8, 1672.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(135, 'wwwwww', '韩束隔离轻薄防晒乳', 1, 89.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(136, 'wwwwww', '珀莱雅水动力经典套装', 3, 627.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货'),
(137, '', '珀莱雅水动力经典套装', 3, 627.0, '王婷', '四川省 成都市 武侯区 跳伞塔街道科院街6号', 152, '周六日及节假日收货');

-- --------------------------------------------------------

--
-- 表的结构 `gonggao`
--

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `ggid` int(255) NOT NULL auto_increment,
  `text` varchar(500) collate utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY  (`ggid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- 导出表中的数据 `gonggao`
--

INSERT INTO `gonggao` (`ggid`, `text`, `time`) VALUES
(1, '最近曾品网更新很多好东西啦', '2017-06-02 14:13:10'),
(2, '韩束隔离霜打九折啦！！！', '2017-06-02 14:13:11'),
(3, '玻璃双很好用！', '2017-06-02 14:14:33'),
(4, '曾品网界面很美！', '2017-06-02 14:16:08'),
(5, '该死的温柔！', '2017-06-02 14:41:29'),
(13, '赠品网大降价，破产啦！韩束隔离防嗮撒地质一折，还不来买，待何时！！！！！', '2017-06-02 15:11:37'),
(15, '大减价啊！', '2017-06-02 19:51:12'),
(16, '符合规范及', '2017-06-03 09:34:50');

-- --------------------------------------------------------

--
-- 表的结构 `manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE IF NOT EXISTS `manager` (
  `managerid` int(255) NOT NULL auto_increment,
  `mname` varchar(255) collate utf8_unicode_ci NOT NULL,
  `mpassword` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`managerid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- 导出表中的数据 `manager`
--

INSERT INTO `manager` (`managerid`, `mname`, `mpassword`) VALUES
(4, '123', '123');

-- --------------------------------------------------------

--
-- 表的结构 `pingluns`
--

DROP TABLE IF EXISTS `pingluns`;
CREATE TABLE IF NOT EXISTS `pingluns` (
  `plid` int(200) NOT NULL auto_increment,
  `username` varchar(255) collate utf8_unicode_ci NOT NULL,
  `comment` varchar(255) collate utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY  (`plid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- 导出表中的数据 `pingluns`
--

INSERT INTO `pingluns` (`plid`, `username`, `comment`, `time`) VALUES
(14, 'wwwwww', '恶趣味翁无群', '2017-06-03 10:19:03'),
(15, 'wwwwww', '哈哈哈', '2017-06-04 21:53:25'),
(16, 'wwwwww', '诶我去二', '2017-06-04 21:54:53'),
(17, 'wwwwww', '大时代', '2017-06-04 21:56:33'),
(18, 'wwwwww', 'www', '2017-06-05 23:00:20');

-- --------------------------------------------------------

--
-- 表的结构 `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `proid` int(200) NOT NULL auto_increment,
  `proname` varchar(255) collate utf8_unicode_ci NOT NULL,
  `newprice` decimal(10,2) NOT NULL,
  `oldprice` decimal(10,2) NOT NULL,
  `proimg` varchar(255) collate utf8_unicode_ci default NULL,
  `prodiscount` decimal(10,1) NOT NULL,
  `proamount` int(200) default '10',
  PRIMARY KEY  (`proid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- 导出表中的数据 `products`
--

INSERT INTO `products` (`proid`, `proname`, `newprice`, `oldprice`, `proimg`, `prodiscount`, `proamount`) VALUES
(1, '韩束隔离轻薄防晒乳', 89.00, 95.00, 'imgs/pro_img1.jpg', 9.4, 10),
(2, '欧珀莱修颜防晒隔离霜', 210.00, 209.00, 'imgs/pro_img2.jpg', 10.0, 10),
(3, '玉兰油透白隔离防晒乳液40ml', 119.00, 150.00, 'imgs/pro_img3.jpg', 7.9, 10),
(4, '欧珀莱烈日防晒隔离液', 210.00, 210.00, 'imgs/pro_img4.jpg', 10.0, 10),
(5, '玉兰油轻透倍护隔离防晒液40ml', 119.00, 150.00, 'imgs/pro_img5.jpg', 7.9, 10),
(6, '玉兰油Pro-x肌源活颜隔离防晒乳 ', 268.00, 360.00, 'imgs/pro_img6.jpg', 7.4, 10),
(7, '彼丽水感清透隔离防晒修护套装', 69.00, 219.00, 'imgs/pro_img7.jpg', 3.2, 10),
(8, '安热沙防晒露60ml', 300.00, 300.00, 'imgs/pro_img8.jpg', 10.0, 10),
(9, '安热沙防晒啫喱60g', 300.00, 300.00, 'imgs/pro_img9.jpg', 10.0, 10),
(10, '韩束水润清透防晒喷雾', 99.00, 120.00, 'imgs/pro_img10.jpg', 8.2, 10),
(11, '欧珀莱赋润防晒隔离乳', 200.00, 200.00, 'imgs/pro_img11.jpg	', 10.0, 10),
(12, '春纪美白防晒粉罗宾套装', 59.00, 145.00, 'imgs/pro_img12.jpg	', 4.1, 10),
(13, '梦妆肌蜜隔离霜 #02 薄荷绿 35ml', 140.00, 140.00, 'imgs/pro_img13.jpg', 10.0, 10),
(14, '韩束隔离水漾防晒乳40ml 见实物', 99.00, 120.00, 'imgs/pro_img14.jpg', 8.2, 10),
(15, '韩束隔离轻薄防晒乳 见实物', 89.00, 95.00, 'imgs/pro_img15.jpg', 9.4, 10),
(16, '玉兰油OLAY高倍隔离防晒乳液40ml', 119.00, 150.00, 'imgs/pro_img16.jpg', 7.9, 10),
(17, '百雀羚水嫩莹透隔离修颜霜SPF30 ', 167.00, 168.00, 'imgs/pro_img17.jpg', 9.9, 10),
(18, '姬芮姬芮卸妆隔离明星套装 （乐蜂专供）', 156.00, 305.00, 'imgs/pro_img18.jpg', 5.1, 10),
(19, '相宜本草红景天幼白隔离防护乳', 98.00, 99.00, 'imgs/pro_img19.jpg', 9.9, 10),
(20, '丸美巧克力丝滑隔离霜套装', 148.00, 318.00, 'imgs/pro_img20.jpg', 4.7, 10);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(200) NOT NULL auto_increment,
  `username` varchar(255) collate utf8_unicode_ci NOT NULL,
  `password` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=224 ;

--
-- 导出表中的数据 `users`
--

INSERT INTO `users` (`userid`, `username`, `password`) VALUES
(213, 'ssssss', 'ssssss'),
(214, 'qqqqqq', 'qqqqqq'),
(215, 'pppppp', 'pppppp'),
(216, 'qqqqqqq', 'qqqqqqq'),
(217, 'ooooooo', 'ooooooo'),
(218, 'ppppppp', 'ppppppp'),
(220, 'rrrrrrr', 'rrrrrr'),
(222, 'abcd123', 'abcd123'),
(223, 'wwwwww', 'wwwwww');
