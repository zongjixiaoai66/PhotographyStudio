/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t103`;
CREATE DATABASE IF NOT EXISTS `t103` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t103`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot07j52/upload/1620269548220.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot07j52/upload/1620269800481.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot07j52/upload/1620269808559.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discusssheyingzuopin`;
CREATE TABLE IF NOT EXISTS `discusssheyingzuopin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620270281456 DEFAULT CHARSET=utf8mb3 COMMENT='摄影作品评论表';

DELETE FROM `discusssheyingzuopin`;
INSERT INTO `discusssheyingzuopin` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(71, '2021-05-06 02:41:40', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(72, '2021-05-06 02:41:40', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(73, '2021-05-06 02:41:40', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(74, '2021-05-06 02:41:40', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(75, '2021-05-06 02:41:40', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(76, '2021-05-06 02:41:40', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1620270027140, '2021-05-06 03:00:26', 36, 1620269840250, '1', '拍摄得不错', NULL);

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620270086496 DEFAULT CHARSET=utf8mb3 COMMENT='摄影圈';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `addtime`, `title`, `content`, `parentid`, `userid`, `username`, `isdone`) VALUES
	(41, '2021-05-06 02:41:40', '帖子标题1', '帖子内容1', 1, 1, '用户名1', '开放'),
	(42, '2021-05-06 02:41:40', '帖子标题2', '帖子内容2', 2, 2, '用户名2', '开放'),
	(44, '2021-05-06 02:41:40', '帖子标题4', '帖子内容4', 4, 4, '用户名4', '开放'),
	(45, '2021-05-06 02:41:40', '帖子标题5', '帖子内容5', 5, 5, '用户名5', '开放'),
	(46, '2021-05-06 02:41:40', '帖子标题6', '帖子内容6', 6, 6, '用户名6', '开放'),
	(1620270078277, '2021-05-06 03:01:17', '西湖的美', '<p>都说西湖美，可是很多人亲身去了西湖却又周多抱怨&ldquo;不过如此！&rdquo;。西湖的美，到底美在哪里，确实是个值得探讨的问题。</p>\n<p>&nbsp;</p>\n<p>记得第一次游西湖是大学军训后去的，那个时候还是初秋，太阳并没有收敛什么依旧的带着炎热。</p>\n<p>&nbsp;</p>\n<p>早上八点坐公交在苏堤下了车，由于是周末人特别多，一车人挤在一节车厢里在那个节气简直令人窒息。还没游西湖人已憔悴了一半，玩的心情似乎也凉了一截。</p>\n<p>&nbsp;</p>\n<p>下了车来到外湖旁的一个小卖部，说是小卖部其实就是赚西湖钱的部。问老板娘租一台相机多少钱，她竟一口说出押金两百、一小时十块的高价，吓得旁边的同学惊呼&ldquo;两百块啊！靠！我买台相机也才几百块&hellip;..&rdquo;。我摇摇头，唉了一声招手走人。反正人也累得没多少力气了，还拿个相机添什么麻烦，手上轻点又不会死。</p>\n<p>&nbsp;</p>\n<p>没走多远我们还是被眼前的美景给镇住了，后悔刚才没跟那老婆子多讨价还价一会。看着满湖的碧水，清澈见底湖水下的游鱼，微风轻拂掠过湖面卷起的涟漪，以及那水波逐影折出一道道弯曲的碧影&hellip;&hellip;这数不尽、看不完的景色似乎把眼球里都装饰得美轮美奂，此刻才真正的感受到来杭州旅游真的很醉人。</p>\n<p>&nbsp;</p>', 0, 1620269840250, '1', '开放');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620269793182 DEFAULT CHARSET=utf8mb3 COMMENT='系统公告';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(61, '2021-05-06 02:41:40', '标题1', '简介1', 'http://localhost:8080/springboot07j52/upload/1620269488304.jpg', '<p>内容1</p>'),
	(62, '2021-05-06 02:41:40', '标题2', '简介2', 'http://localhost:8080/springboot07j52/upload/1620269494908.jpg', '<p>内容2</p>'),
	(63, '2021-05-06 02:41:40', '标题3', '简介3', 'http://localhost:8080/springboot07j52/upload/1620269506968.jpg', '<p>内容3</p>'),
	(64, '2021-05-06 02:41:40', '标题4', '简介4', 'http://localhost:8080/springboot07j52/upload/1620269514685.jpg', '<p>内容4</p>'),
	(65, '2021-05-06 02:41:40', '标题5', '简介5', 'http://localhost:8080/springboot07j52/upload/1620269522251.jpg', '<p>内容5</p>'),
	(66, '2021-05-06 02:41:40', '标题6', '简介6', 'http://localhost:8080/springboot07j52/upload/1620269537718.jpg', '<p>内容6</p>'),
	(1620269793181, '2021-05-06 02:56:32', '公告A', '公告', 'http://localhost:8080/springboot07j52/upload/1620269776792.jpg', '<p>公告内容KFSKGJDKGDTH</p><p><img src="http://localhost:8080/springboot07j52/upload/1620269791172.jpg"></p>');

DROP TABLE IF EXISTS `sheyingzuopin`;
CREATE TABLE IF NOT EXISTS `sheyingzuopin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuopinmingcheng` varchar(200) DEFAULT NULL COMMENT '作品名称',
  `zuopinfenlei` varchar(200) DEFAULT NULL COMMENT '作品分类',
  `zuopinfengmian` varchar(200) DEFAULT NULL COMMENT '作品封面',
  `zuopinjianjie` longtext COMMENT '作品简介',
  `zuopinneirong` longtext COMMENT '作品内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620270233622 DEFAULT CHARSET=utf8mb3 COMMENT='摄影作品';

DELETE FROM `sheyingzuopin`;
INSERT INTO `sheyingzuopin` (`id`, `addtime`, `zuopinmingcheng`, `zuopinfenlei`, `zuopinfengmian`, `zuopinjianjie`, `zuopinneirong`, `faburiqi`, `yonghuming`, `nicheng`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`) VALUES
	(31, '2021-05-06 02:41:39', '作品名称1', '作品分类1', 'http://localhost:8080/springboot07j52/upload/1620269396233.jpg', '作品简介1', '<p>作品内容1</p>', '2021-05-06', '用户名1', '昵称1', 1, 1, '2024-02-16 08:43:47', 3),
	(32, '2021-05-06 02:41:39', '作品名称2', '作品分类2', 'http://localhost:8080/springboot07j52/upload/1620269404048.jpg', '作品简介2', '<p>作品内容2</p>', '2021-05-06', '用户名2', '昵称2', 6, 2, '2024-02-16 08:45:03', 16),
	(33, '2021-05-06 02:41:39', '作品名称3', '作品分类3', 'http://localhost:8080/springboot07j52/upload/1620269411074.jpg', '作品简介3', '<p>作品内容3</p>', '2021-05-06', '用户名3', '昵称3', 3, 3, '2021-05-06 11:02:12', 7),
	(34, '2021-05-06 02:41:39', '作品名称4', '作品分类4', 'http://localhost:8080/springboot07j52/upload/1620269446974.jpg', '作品简介4', '<p>作品内容4</p>', '2021-05-06', '用户名4', '昵称4', 4, 4, '2021-05-06 10:50:15', 5),
	(35, '2021-05-06 02:41:39', '作品名称5', '作品分类5', 'http://localhost:8080/springboot07j52/upload/1620269456311.jpg', '作品简介5', '<p>作品内容5</p>', '2021-05-06', '用户名5', '昵称5', 5, 5, '2024-02-16 08:47:54', 8),
	(36, '2021-05-06 02:41:39', '作品名称6', '作品分类6', 'http://localhost:8080/springboot07j52/upload/1620269476126.jpg', '作品简介6', '<p>作品内容6</p>', '2021-05-06', '用户名6', '昵称6', 7, 6, '2024-02-16 08:46:57', 13),
	(1620270233621, '2021-05-06 03:03:53', '花红柳绿', '风景', 'http://localhost:8080/springboot07j52/upload/1620270189182.jpg', '在春暖花开之际，青塔湖龙井徒步穿越，寻找春天的脚步，感受明媚春光中，不自然所赐予的花红柳绿的美景，不禁令人神清气爽；', '<p>在春暖花开之际，青塔湖龙井徒步穿越，寻找春天的脚步，感受明媚春光中，不自然所赐予的花红柳绿的美景，不禁令人神清气爽；</p><p><img src="http://localhost:8080/springboot07j52/upload/1620270231392.jpg"></p>', '2021-05-06', '1', '小鱼', 1, 0, '2021-05-06 11:04:44', 3);

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708044472833 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1620270270542, '2021-05-06 03:04:29', 11, 1620270233621, 'sheyingzuopin', '花红柳绿', 'http://localhost:8080/springboot07j52/upload/1620270189182.jpg'),
	(1708044301712, '2024-02-16 00:45:01', 11, 32, 'sheyingzuopin', '作品名称2', 'http://localhost:8080/springboot07j52/upload/1620269404048.jpg'),
	(1708044472832, '2024-02-16 00:47:52', 11, 35, 'sheyingzuopin', '作品名称5', 'http://localhost:8080/springboot07j52/upload/1620269456311.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', '89bx324k88h5jw9aojgoi8lqbfthwuzo', '2021-05-06 02:49:42', '2024-02-16 01:46:38'),
	(2, 1620269840250, '1', 'yonghu', '用户', 'xzvjpintvexxgxbqihufpvd0lu5smaqv', '2021-05-06 02:58:13', '2021-05-06 04:04:56'),
	(3, 11, '用户1', 'yonghu', '用户', 'kxa02vdnh2g9ej2tao7vh7ar37wth0h2', '2021-05-06 03:04:20', '2024-02-16 01:47:41');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-06 02:41:40');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1620269840251 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `touxiang`, `nicheng`, `xingbie`, `nianling`, `lianxidianhua`) VALUES
	(11, '2021-05-06 02:41:39', '用户1', '123456', '姓名1', 'http://localhost:8080/springboot07j52/upload/yonghu_touxiang1.jpg', '昵称1', '男', 1, '13823888881'),
	(12, '2021-05-06 02:41:39', '用户2', '123456', '姓名2', 'http://localhost:8080/springboot07j52/upload/yonghu_touxiang2.jpg', '昵称2', '男', 2, '13823888882'),
	(13, '2021-05-06 02:41:39', '用户3', '123456', '姓名3', 'http://localhost:8080/springboot07j52/upload/yonghu_touxiang3.jpg', '昵称3', '男', 3, '13823888883'),
	(14, '2021-05-06 02:41:39', '用户4', '123456', '姓名4', 'http://localhost:8080/springboot07j52/upload/yonghu_touxiang4.jpg', '昵称4', '男', 4, '13823888884'),
	(15, '2021-05-06 02:41:39', '用户5', '123456', '姓名5', 'http://localhost:8080/springboot07j52/upload/yonghu_touxiang5.jpg', '昵称5', '男', 5, '13823888885'),
	(16, '2021-05-06 02:41:39', '用户6', '123456', '姓名6', 'http://localhost:8080/springboot07j52/upload/yonghu_touxiang6.jpg', '昵称6', '男', 6, '13823888886'),
	(1620269840250, '2021-05-06 02:57:20', '1', '11', '陈一', 'http://localhost:8080/springboot07j52/upload/1620270169412.png', '小鱼', '女', 22, '12312312312');

DROP TABLE IF EXISTS `zuopinfenlei`;
CREATE TABLE IF NOT EXISTS `zuopinfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuopinfenlei` varchar(200) NOT NULL COMMENT '作品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zuopinfenlei` (`zuopinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1620269766290 DEFAULT CHARSET=utf8mb3 COMMENT='作品分类';

DELETE FROM `zuopinfenlei`;
INSERT INTO `zuopinfenlei` (`id`, `addtime`, `zuopinfenlei`) VALUES
	(21, '2021-05-06 02:41:39', '作品分类1'),
	(22, '2021-05-06 02:41:39', '作品分类2'),
	(23, '2021-05-06 02:41:39', '作品分类3'),
	(24, '2021-05-06 02:41:39', '作品分类4'),
	(25, '2021-05-06 02:41:39', '作品分类5'),
	(26, '2021-05-06 02:41:39', '作品分类6'),
	(1620269761093, '2021-05-06 02:56:00', '风景'),
	(1620269766289, '2021-05-06 02:56:05', '建筑');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
