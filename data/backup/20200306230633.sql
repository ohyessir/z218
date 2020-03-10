-- MySQL database dump










  `address_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `area` varchar(120) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `default` int(1) DEFAULT '0',
  `time` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`address_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;









  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `auth_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '0' COMMENT '名字',
  `account` varchar(30) NOT NULL COMMENT '管理员账号',
  `password` varchar(32) NOT NULL COMMENT '管理员密码',
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员账号密码';











  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `title` varchar(100) NOT NULL DEFAULT '无' COMMENT '标题',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '文章类型',
  `keyword` varchar(200) NOT NULL DEFAULT '无' COMMENT '关键词',
  `content` text NOT NULL COMMENT '内容',
  `time` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  `show` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示，0不显示/1显示',
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文章表';









  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(30) NOT NULL DEFAULT '无' COMMENT '名称',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `show` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示，0不显示/1显示',
  `ico` varchar(10) NOT NULL DEFAULT 'help' COMMENT '类型图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1018 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文章类型表';














  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `auth` varchar(50) NOT NULL,
  `addtime` varchar(50) NOT NULL,
  `updatetime` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='角色';













  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `bank` varchar(30) NOT NULL DEFAULT '无' COMMENT '所属银行',
  `account` varchar(30) NOT NULL DEFAULT '0' COMMENT '银行卡号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1058 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='银行卡';











  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `name` varchar(20) NOT NULL DEFAULT '无' COMMENT '提现姓名',
  `alipay` varchar(30) NOT NULL DEFAULT '无' COMMENT '支付宝',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '提现金额',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态，0未提现/1已提现/2提现失败',
  `time` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '提交时间',
  `time2` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '处理时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='提现记录';









  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `price` varchar(20) NOT NULL DEFAULT '0',
  `pub_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='本地币种价格设置(根据用户自己命名)';































































  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `money` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `vip` int(1) NOT NULL DEFAULT '0' COMMENT '会员开通',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '会员状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;










  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `content` text,
  `read` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
































  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) DEFAULT NULL COMMENT '时间戳',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;











  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '类型,1收入/2支出',
  `reason` varchar(200) NOT NULL DEFAULT '无' COMMENT '摘要',
  `before` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '加入前余额',
  `time` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5729763 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='财务表';

















































































  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `goods_j_name` varchar(100) DEFAULT NULL,
  `classify_id` int(11) DEFAULT NULL COMMENT '所属分类ID',
  `goods_price` decimal(8,2) DEFAULT '0.00' COMMENT '价格',
  `goods_kc` int(11) DEFAULT '0' COMMENT '商品库存默认0',
  `goods_remark` varchar(255) DEFAULT NULL COMMENT '商品简介',
  `goods_content` text COMMENT '商品详情',
  `photo` varchar(255) DEFAULT NULL COMMENT '商品缩略图',
  `tujilist` varchar(255) DEFAULT NULL COMMENT '商品轮播图',
  `add_time` varchar(100) DEFAULT NULL COMMENT '添加时间',
  `state` int(1) DEFAULT '1' COMMENT '状态1显示0隐藏',
  `tuijian` int(1) DEFAULT '1' COMMENT '1推荐0不推荐',
  `goods_freight` decimal(11,2) DEFAULT '0.00' COMMENT '运费',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;









  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classify_title` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `classify_goods_num` int(11) DEFAULT '0' COMMENT '商品数量',
  `photo` varchar(255) DEFAULT NULL COMMENT '分类缩略图',
  `add_time` varchar(255) DEFAULT NULL COMMENT '添加时间',
  `state` int(1) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;














  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `webname` varchar(100) NOT NULL DEFAULT '默认网站' COMMENT '网站名称',
  `company` varchar(100) NOT NULL DEFAULT '公司名称' COMMENT '公司名称',
  `tel` varchar(50) NOT NULL DEFAULT '400-000-0000' COMMENT '客服电话',
  `address` varchar(500) NOT NULL DEFAULT '公司地址' COMMENT '公司地址',
  `notice` varchar(500) NOT NULL DEFAULT '网站公告' COMMENT '网站公告',
  `service` varchar(500) NOT NULL DEFAULT 'http://www.yourdomain.com' COMMENT '客服地址',
  `app` varchar(500) NOT NULL DEFAULT 'http://www.yourdomain.com' COMMENT 'app下载链接',
  `icp` varchar(30) NOT NULL DEFAULT '京ICP备12345678号' COMMENT '备案号',
  `wechat` varchar(100) NOT NULL DEFAULT '微信客服' COMMENT '微信客服',
  `qq` varchar(100) NOT NULL DEFAULT '10000' COMMENT 'QQ客服',
  `cash` int(11) NOT NULL DEFAULT '0' COMMENT '最低提现金额',
  `ranking` varchar(1000) NOT NULL DEFAULT '0' COMMENT '排行榜',
  `contract` varchar(5000) NOT NULL DEFAULT '0' COMMENT '合同模板',
  `pay_bank` varchar(200) NOT NULL DEFAULT '无' COMMENT '银行入款支付描述',
  `pay_bank_type` varchar(50) NOT NULL DEFAULT '无' COMMENT '收款银行',
  `pay_bank_name` varchar(50) NOT NULL DEFAULT '无' COMMENT '收款银行开户名',
  `pay_bank_account` varchar(50) NOT NULL DEFAULT '无' COMMENT '收款银行账号',
  `pay_bank_status` int(11) NOT NULL DEFAULT '0' COMMENT '收款银行是否显示，0不显示/1显示',
  `qr_wechat` varchar(200) NOT NULL DEFAULT '无' COMMENT '微信扫码支付描述',
  `qr_wechat_img` varchar(100) NOT NULL DEFAULT '无' COMMENT '微信二维码地址',
  `qr_wechat_status` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示微信扫码,0隐藏/1显示',
  `qr_alipay` varchar(200) NOT NULL DEFAULT '无' COMMENT '支付宝扫码支付描述',
  `qr_alipay_img` varchar(100) NOT NULL DEFAULT '无' COMMENT '支付宝二维码地址',
  `qr_alipay_status` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示支付宝扫码,0隐藏/1显示',
  `online_wechat` int(11) NOT NULL DEFAULT '0' COMMENT '是否显示微信在线支付,0隐藏/1显示',
  `activity_url` varchar(200) NOT NULL DEFAULT '#' COMMENT '活动链接',
  `activity_status` int(11) NOT NULL DEFAULT '0' COMMENT '活动是否开启,0关闭,1开启',
  `jiesuan` int(11) NOT NULL DEFAULT '1' COMMENT '是否开启结算,0关闭/1开启',
  `web` int(11) NOT NULL DEFAULT '1' COMMENT '是否开启电脑版,0关闭/1开启',
  `sms` int(11) NOT NULL DEFAULT '1' COMMENT '短信开关,0关/1开',
  `template` varchar(10) NOT NULL DEFAULT 'one' COMMENT '手机模板',
  `video` varchar(200) NOT NULL DEFAULT '无' COMMENT '视频地址',
  `smsname` varchar(200) NOT NULL DEFAULT '无' COMMENT '短信签名',
  `smskey` varchar(200) NOT NULL DEFAULT '无' COMMENT '短信密钥',
  `token` varchar(200) NOT NULL DEFAULT '无' COMMENT '程序授权码',
  `allowable` varchar(100) NOT NULL,
  `withdrawals` varchar(100) NOT NULL,
  `charged` varchar(100) NOT NULL,
  `icar` int(50) NOT NULL,
  `kstatus` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='网站信息';










  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `order_sn` varchar(32) NOT NULL DEFAULT '' COMMENT '订单号',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '项目ID',
  `title` varchar(200) NOT NULL DEFAULT '无' COMMENT '项目标题',
  `money` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '投资金额',
  `day` int(11) NOT NULL DEFAULT '0' COMMENT '项目天数',
  `rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '项目费率',
  `type1` int(11) NOT NULL DEFAULT '0' COMMENT '项目类型1',
  `type2` varchar(50) NOT NULL DEFAULT '无' COMMENT '项目类型2',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '还款状态',
  `time` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '投资时间',
  `pay_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单支付状态0是未支付1是支付完成',
  `pay_time` int(11) NOT NULL DEFAULT '0' COMMENT '支付更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2672 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目投资表';
















  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `iid` int(11) NOT NULL DEFAULT '0' COMMENT '投资记录ID',
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '投资期数',
  `title` varchar(200) NOT NULL DEFAULT '无' COMMENT '项目标题',
  `money1` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '待还利息',
  `money2` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '待还本金',
  `time1` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '预计还款时间',
  `time2` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '实际还款时间',
  `pay1` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '预计还款金额',
  `pay2` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实际还款金额',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '项目记录,0未还款/1还款',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8737 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目投资详情表';

















































































































































































































  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `title` varchar(100) NOT NULL DEFAULT '无' COMMENT '标题',
  `desc` varchar(144) NOT NULL DEFAULT '无' COMMENT '项目描述',
  `img` varchar(50) NOT NULL DEFAULT 'no_img.jpg' COMMENT '图片链接',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总金额',
  `rate` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '费率',
  `percent` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '模拟进度',
  `day` int(11) NOT NULL DEFAULT '0' COMMENT '期限',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '返款类型',
  `min` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '最小投资金额',
  `max` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '最大投资金额',
  `num` int(11) NOT NULL DEFAULT '1' COMMENT '最大投资次数',
  `guarantee` varchar(200) NOT NULL DEFAULT '担保公司' COMMENT '担保公司',
  `limit` int(11) NOT NULL DEFAULT '0' COMMENT '最大购买分数',
  `content` text NOT NULL,
  `time` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '开始时间',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `frbl` decimal(5,2) DEFAULT '0.00' COMMENT '分润比例',
  `red` decimal(5,2) DEFAULT NULL,
  `class` varchar(20) NOT NULL,
  `clock` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='项目表';

















  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `bid` varchar(30) NOT NULL DEFAULT '无' COMMENT '商户号',
  `appid` varchar(100) NOT NULL DEFAULT '无' COMMENT 'APPID',
  `appkey` varchar(100) NOT NULL DEFAULT '无' COMMENT '密钥',
  `domain` varchar(100) NOT NULL DEFAULT '无' COMMENT '域名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='在线支付';










  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `address_id` int(11) DEFAULT NULL COMMENT '地址ID',
  `member_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `pay_time` varchar(11) DEFAULT NULL COMMENT '支付时间',
  `add_time` varchar(11) DEFAULT NULL COMMENT '下单时间',
  `fh_time` varchar(11) DEFAULT NULL,
  `state` int(2) DEFAULT '1' COMMENT '1未付款 2已付款 3已发货 4完成',
  `type` int(2) DEFAULT NULL COMMENT '商品类别1套餐2普通商品',
  `order_sn` varchar(50) DEFAULT NULL COMMENT '订单号',
  `total` decimal(11,2) DEFAULT '0.00' COMMENT '商品总价',
  `kd_dh` varchar(50) DEFAULT NULL,
  `kd_name` varchar(50) DEFAULT NULL,
  `freight` decimal(11,2) DEFAULT NULL,
  `tixingfahuo` int(1) DEFAULT '0' COMMENT '提醒发货1已提醒0未提醒',
  `sh_time` varchar(11) DEFAULT NULL COMMENT '收货时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;









  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL COMMENT '订单ID',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `goods_price` decimal(8,2) DEFAULT NULL COMMENT '商品价格',
  `goods_num` int(11) DEFAULT '0' COMMENT '商品数量',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `goods_photo` varchar(255) DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;









  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL COMMENT '订单ID',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `goods_price` decimal(8,2) DEFAULT NULL COMMENT '商品价格',
  `goods_num` int(11) DEFAULT '0' COMMENT '商品数量',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `goods_photo` varchar(255) DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;









  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_sn` varchar(32) NOT NULL DEFAULT '' COMMENT '订单号',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '发起支付时间',
  `note` text COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_uid_order` (`order_sn`,`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户支付日志记录数据表';














  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_sn` varchar(32) NOT NULL DEFAULT '' COMMENT '订单号',
  `is_success` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态0未确认1已确认2取消',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `note` text COMMENT '备注',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_order` (`order_sn`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='支付回调日志记录数据表';











  `id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `add_time` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL DEFAULT '#000',
  `sort` varchar(20) NOT NULL,
  `user_class` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;










  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `type` varchar(20) NOT NULL DEFAULT '无' COMMENT '付款方式',
  `orderid` varchar(50) NOT NULL DEFAULT '无' COMMENT '订单编号',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '充值状态，0未充值/1已充值',
  `warn` int(11) NOT NULL DEFAULT '0' COMMENT '充值提醒',
  `reason` varchar(100) NOT NULL DEFAULT '无' COMMENT '充值摘要',
  `time` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '提交时间',
  `time2` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11003 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='充值表';











  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `register` int(11) NOT NULL DEFAULT '0' COMMENT '用户注册',
  `register2` int(11) NOT NULL DEFAULT '0' COMMENT '邀请注册',
  `recharge` int(11) NOT NULL DEFAULT '0' COMMENT '充值奖励',
  `invest1` int(11) NOT NULL DEFAULT '0' COMMENT '投资一级奖励',
  `invest2` int(11) NOT NULL DEFAULT '0' COMMENT '投资二级奖励',
  `invest3` int(11) NOT NULL DEFAULT '0' COMMENT '投资三级奖励',
  `inv1` int(11) NOT NULL DEFAULT '0' COMMENT '团队奖1代日收益',
  `inv2` int(11) NOT NULL DEFAULT '0' COMMENT '团队奖2代日收益',
  `investment_copper` varchar(50) NOT NULL DEFAULT '0' COMMENT '铜钻投资',
  `investment_diamonds` varchar(50) NOT NULL DEFAULT '0' COMMENT '钻石投资',
  `shouyilu` varchar(50) NOT NULL COMMENT '收益率',
  `tuijianjiang1` varchar(255) NOT NULL COMMENT '铜钻级别推荐奖',
  `tuijianjiang2` varchar(255) NOT NULL COMMENT '钻石级别推荐奖',
  `tixian` varchar(200) NOT NULL COMMENT '提现最低',
  `daily_tuijian` varchar(200) NOT NULL COMMENT '每天推荐人数',
  `company_dividends` varchar(200) NOT NULL COMMENT '获得公司分红百分比',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='奖励设置';










  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `path` varchar(100) NOT NULL DEFAULT '#' COMMENT '图片路径',
  `url` varchar(100) NOT NULL DEFAULT '#' COMMENT '图片链接',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '图片类型，1电脑/2手机',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `show` int(11) NOT NULL DEFAULT '0' COMMENT '显示，0不显示/1显示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='幻灯片';











  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `type` varchar(20) NOT NULL DEFAULT '无' COMMENT '短信类型',
  `msg` varchar(80) NOT NULL DEFAULT '无' COMMENT '内容',
  `code` varchar(20) NOT NULL DEFAULT '0' COMMENT '编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='短信模板';

















  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `phone` varchar(11) NOT NULL DEFAULT '无' COMMENT '手机号码',
  `msg` varchar(100) NOT NULL DEFAULT '无' COMMENT '短信记录',
  `code` varchar(100) NOT NULL DEFAULT '0' COMMENT '返回代码',
  `time` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发送时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=18692 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='短信记录';









  `id` int(50) NOT NULL AUTO_INCREMENT,
  `uid` int(50) NOT NULL,
  `content` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;









  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vals` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;









  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `phone` varchar(50) NOT NULL DEFAULT '0' COMMENT '手机号',
  `name` varchar(20) NOT NULL DEFAULT '无' COMMENT '姓名',
  `idcard` varchar(18) NOT NULL DEFAULT '无' COMMENT '身份证号码',
  `auth` int(11) NOT NULL DEFAULT '0' COMMENT '是否认证,0未认证/1已认证',
  `password` varchar(32) NOT NULL DEFAULT '0' COMMENT '登录密码',
  `password2` varchar(32) NOT NULL DEFAULT '0' COMMENT '交易密码',
  `top` int(11) NOT NULL DEFAULT '0' COMMENT '推荐人',
  `member` int(11) NOT NULL DEFAULT '0' COMMENT '会员等级',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '奖金',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT '投资金额',
  `income` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总收益金额',
  `logintime` varchar(20) NOT NULL DEFAULT '0' COMMENT '登录时间',
  `clock` int(11) NOT NULL DEFAULT '0' COMMENT '是否锁定,0否/1是',
  `qiandao` varchar(20) NOT NULL DEFAULT '0' COMMENT '签到时间',
  `time` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '注册时间',
  `reg_ip` varchar(20) NOT NULL,
  `jifen` varchar(200) DEFAULT '0' COMMENT '积分',
  `dongjiemoney` varchar(100) DEFAULT NULL,
  `meirifenhong` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '每日分红',
  `padian` varchar(100) DEFAULT '0' COMMENT '帕点奖',
  `alipay` varchar(255) DEFAULT NULL COMMENT '支付宝',
  `level` varchar(255) DEFAULT '0' COMMENT '级别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=55538 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员表';





















































  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(20) NOT NULL DEFAULT '无' COMMENT '等级名称',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT '等级积分',
  `level` varchar(10) NOT NULL DEFAULT '0' COMMENT '等级加息利率',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8030 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='会员等级表';











  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `title` varchar(31) NOT NULL DEFAULT '' COMMENT '部门名称',
  `menu_auth` text NOT NULL COMMENT '权限列表',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门信息表';









  `id` int(10) NOT NULL AUTO_INCREMENT,
  `terms` varchar(100) NOT NULL COMMENT '条件',
  `vals` varchar(200) NOT NULL COMMENT '收益参数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;









  `id` int(20) NOT NULL AUTO_INCREMENT,
  `uid` int(20) NOT NULL,
  `paypal` varchar(255) NOT NULL,
  `time` varchar(200) NOT NULL,
  `dayyuebao` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;






