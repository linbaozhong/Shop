CREATE TABLE `sellers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL COMMENT '商家全称',
  `name` varchar(20) NOT NULL COMMENT '商家简称',
  `country` int(11) NOT NULL DEFAULT '1' COMMENT '国家',
  `province` int(11) NOT NULL DEFAULT '0' COMMENT '省(市)',
  `city` int(11) NOT NULL DEFAULT '0' COMMENT '城市',
  `street` varchar(45) NOT NULL DEFAULT '' COMMENT '街道',
  `address` varchar(45) NOT NULL DEFAULT '' COMMENT '详细地址',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creator` int(11) NOT NULL DEFAULT '0',
  `updatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updater` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商家';
CREATE TABLE `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sellersId` int(11) NOT NULL COMMENT '商家id',
  `fullname` varchar(100) NOT NULL COMMENT '商家全称',
  `name` varchar(20) NOT NULL COMMENT '商家简称',
  `country` int(11) NOT NULL DEFAULT '1' COMMENT '国家',
  `province` int(11) NOT NULL DEFAULT '0' COMMENT '省(市)',
  `city` int(11) NOT NULL DEFAULT '0' COMMENT '城市',
  `street` varchar(45) NOT NULL COMMENT '街道',
  `address` varchar(45) NOT NULL COMMENT '详细地址',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creator` int(11) NOT NULL DEFAULT '0',
  `updatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updater` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sellers` (`sellersId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='店铺';
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` bigint(20) NOT NULL DEFAULT '0' COMMENT '手机号',
  `pwd` varchar(32) NOT NULL COMMENT '密码',
  `awd` varchar(32) DEFAULT NULL COMMENT '自动码',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile_UNIQUE` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户';
CREATE TABLE `users_sellers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL COMMENT '用户id',
  `sellersId` int(11) NOT NULL COMMENT '商家id',
  PRIMARY KEY (`id`),
  KEY `sellers` (`sellersId`),
  KEY `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户-商家';
CREATE TABLE `users_stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL COMMENT '用户id',
  `storesId` int(11) NOT NULL COMMENT '店铺id',
  PRIMARY KEY (`id`),
  KEY `user` (`userId`),
  KEY `stores` (`storesId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户-店铺';
