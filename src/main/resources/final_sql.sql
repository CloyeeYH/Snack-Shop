SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- author 13
-- qq交流群 796794009
-- email 2449207463@qq.com
-- link https://github.com/newbee-ltd
-- Table structure for tb_newbee_mall_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_admin_user`;
CREATE TABLE `tb_newbee_mall_admin_user`  (
  `admin_user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `login_user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员登陆名称',
  `login_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员登陆密码',
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员显示昵称',
  `locked` tinyint(4) NULL DEFAULT 0 COMMENT '是否锁定 0未锁定 1已锁定无法登陆',
  PRIMARY KEY (`admin_user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- author 13
-- qq交流群 796794009
-- email 2449207463@qq.com
-- link https://github.com/newbee-ltd
-- Records of tb_newbee_mall_admin_user
-- ----------------------------
INSERT INTO `tb_newbee_mall_admin_user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '十三', 0);
INSERT INTO `tb_newbee_mall_admin_user` VALUES (2, 'newbee-admin1', 'e10adc3949ba59abbe56e057f20f883e', '新蜂01', 0);
INSERT INTO `tb_newbee_mall_admin_user` VALUES (3, 'newbee-admin2', 'e10adc3949ba59abbe56e057f20f883e', '新蜂02', 0);

-- ----------------------------
-- author 13
-- qq交流群 796794009
-- email 2449207463@qq.com
-- link https://github.com/newbee-ltd
-- Table structure for tb_newbee_mall_carousel
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_carousel`;
CREATE TABLE `tb_newbee_mall_carousel`  (
  `carousel_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '首页轮播图主键id',
  `carousel_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '轮播图',
  `redirect_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '\'##\'' COMMENT '点击后的跳转地址(默认不跳转)',
  `carousel_rank` int(11) NOT NULL DEFAULT 0 COMMENT '排序值(字段越大越靠前)',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user` int(11) NOT NULL DEFAULT 0 COMMENT '创建者id',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `update_user` int(11) NOT NULL DEFAULT 0 COMMENT '修改者id',
  PRIMARY KEY (`carousel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- author 13
-- qq交流群 796794009
-- email 2449207463@qq.com
-- link https://github.com/newbee-ltd
-- Records of tb_newbee_mall_carousel
-- ----------------------------
INSERT INTO `tb_newbee_mall_carousel` VALUES (2, 'https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/banner1.png', 'https://juejin.im/book/5da2f9d4f265da5b81794d48/section/5da2f9d6f265da5b794f2189', 13, 0, '2019-11-29 00:00:00', 0, '2019-11-29 00:00:00', 0);
INSERT INTO `tb_newbee_mall_carousel` VALUES (5, 'https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/banner2.png', 'https://juejin.im/book/5da2f9d4f265da5b81794d48/section/5da2f9d6f265da5b794f2189', 0, 0, '2019-11-29 00:00:00', 0, '2019-11-29 00:00:00', 0);

-- ----------------------------
-- author 13
-- qq交流群 796794009
-- email 2449207463@qq.com
-- link https://github.com/newbee-ltd
-- Table structure for tb_newbee_mall_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_goods_category`;
CREATE TABLE `tb_newbee_mall_goods_category`  (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `category_level` tinyint(4) NOT NULL DEFAULT 0 COMMENT '分类级别(1-一级分类 2-二级分类 3-三级分类)',
  `parent_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '父分类id',
  `category_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `category_rank` int(11) NOT NULL DEFAULT 0 COMMENT '排序值(字段越大越靠前)',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user` int(11) NOT NULL DEFAULT 0 COMMENT '创建者id',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `update_user` int(11) NULL DEFAULT 0 COMMENT '修改者id',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- author 13
-- qq交流群 796794009
-- email 2449207463@qq.com
-- link https://github.com/newbee-ltd
-- Records of tb_newbee_mall_goods_category
-- ----------------------------
INSERT INTO `tb_newbee_mall_goods_category` VALUES (15, 1, 0, 'Yoga', 100, 0, '2019-09-11 18:45:40', 0, '2019-09-11 18:45:40', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (16, 1, 0, '小新', 99, 0, '2019-09-11 18:46:07', 0, '2019-09-11 18:46:07', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (17, 2, 15, 'Yoga', 10, 0, '2019-09-11 18:46:32', 0, '2019-09-11 18:46:32', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (18, 2, 15, 'Yoga', 9, 0, '2019-09-11 18:46:43', 0, '2019-09-11 18:46:43', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (19, 2, 15, 'Yoga', 8, 0, '2019-09-11 18:46:52', 0, '2019-09-11 18:46:52', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (20, 3, 17, 'YoGa1', 0, 0, '2019-09-11 18:47:38', 0, '2019-09-11 18:47:38', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (31, 3, 17, 'Yoga2', 0, 0, '2019-09-11 18:49:30', 0, '2019-09-11 18:49:30', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (43, 3, 18, 'Yoga1', 0, 0, '2019-09-11 18:53:14', 0, '2019-09-11 18:53:14', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (58, 3, 19, 'Yoga2', 0, 0, '2019-09-11 18:57:09', 0, '2019-09-11 18:57:09', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (59, 1, 0, '拯救者', 97, 0, '2019-09-12 00:08:46', 0, '2019-09-12 00:08:46', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (60, 1, 0, 'ThinkBook', 96, 0, '2019-09-12 00:09:00', 0, '2019-09-12 00:09:00', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (61, 1, 0, 'Thinkpad', 98, 0, '2019-09-12 00:09:27', 0, '2019-09-12 00:09:27', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (62, 1, 0, '平板', 94, 0, '2019-09-12 00:09:51', 0, '2019-09-17 18:22:34', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (63, 1, 0, '台式机', 93, 0, '2019-09-12 00:10:07', 0, '2019-09-12 00:10:07', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (64, 1, 0, '配件', 92, 0, '2019-09-12 00:10:35', 0, '2019-09-12 00:16:30', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (65, 1, 0, '显示器', 0, 0, '2019-09-12 00:11:17', 0, '2019-09-12 00:11:17', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (66, 1, 0, '服务专区', 91, 0, '2019-09-12 00:11:30', 0, '2019-09-12 00:11:30', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (67, 2, 16, '服务专区', 91, 0, '2019-09-12 00:11:30', 0, '2019-09-12 00:11:30', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (68, 3, 67, '服务专区', 91, 0, '2019-09-12 00:11:30', 0, '2019-09-12 00:11:30', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (69, 2, 59, '服务专区', 91, 0, '2019-09-12 00:11:30', 0, '2019-09-12 00:11:30', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (70, 3, 69, '服务专区', 91, 0, '2019-09-12 00:11:30', 0, '2019-09-12 00:11:30', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (71, 2, 60, '服务专区', 91, 0, '2019-09-12 00:11:30', 0, '2019-09-12 00:11:30', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (72, 3, 71, '服务专区', 91, 0, '2019-09-12 00:11:30', 0, '2019-09-12 00:11:30', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (73, 2, 59, '服务专区', 91, 0, '2019-09-12 00:11:30', 0, '2019-09-12 00:11:30', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (74, 3, 73, '服务专区', 91, 0, '2019-09-12 00:11:30', 0, '2019-09-12 00:11:30', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (75, 2, 61, '服务专区', 91, 0, '2019-09-12 00:11:30', 0, '2019-09-12 00:11:30', 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (76, 3, 75, '服务专区', 91, 0, '2019-09-12 00:11:30', 0, '2019-09-12 00:11:30', 0);


-- ----------------------------
-- author 13
-- qq交流群 796794009
-- email 2449207463@qq.com
-- link https://github.com/newbee-ltd
-- Table structure for tb_newbee_mall_goods_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_goods_info`;
CREATE TABLE `tb_newbee_mall_goods_info`  (
  `goods_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品表主键id',
  `goods_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品名',
  `goods_intro` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品简介',
  `goods_category_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '关联分类id',
  `goods_cover_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '/admin/dist/img/no-img.png' COMMENT '商品主图',
  `goods_carousel` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '/admin/dist/img/no-img.png' COMMENT '商品轮播图',
  `goods_detail_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品详情',
  `original_price` int(11) NOT NULL DEFAULT 1 COMMENT '商品价格',
  `selling_price` int(11) NOT NULL DEFAULT 1 COMMENT '商品实际售价',
  `stock_num` int(11) NOT NULL DEFAULT 0 COMMENT '商品库存数量',
  `tag` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品标签',
  `goods_sell_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '商品上架状态 0-下架 1-上架',
  `create_user` int(11) NOT NULL DEFAULT 0 COMMENT '添加者主键id',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '商品添加时间',
  `update_user` int(11) NOT NULL DEFAULT 0 COMMENT '修改者主键id',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '商品修改时间',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10896 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- author 13
-- qq交流群 796794009
-- email 2449207463@qq.com
-- link https://github.com/newbee-ltd
-- Records of tb_newbee_mall_goods_info
-- ----------------------------

INSERT INTO `tb_newbee_mall_goods_info` VALUES (10251, '小新 Air 14 2019款 14.0英寸超轻薄笔记本 轻奢灰', 'AMD Ryzen 5 3500U/Windows 10 家庭中文版/14.0英寸/4GB+8GB/512G SSD/集成显卡/轻奢灰', 0, '/goods-img/a4132109-8f18-4399-affd-a81fad6902c8.jpg', '/goods-img/a4132109-8f18-4399-affd-a81fad6902c8.jpg', '商品介紹頁面素材由Apple提供', 7999, 7168, 1000, '', 0, 0, '2019-09-18 13:25:52', 0, '2019-09-18 13:25:52');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10252, '2019款 小新 Pro 13 13.3英寸超轻薄笔记本 银色', 'AMD Ryzen 5 3550H/Windows 10 家庭中文版/13.3英寸/16GB/512G SSD/集成显卡/银色', 0, '/goods-img/65b62668-3be5-48b0-a40c-bd05826a38c2.jpg', '/goods-img/65b62668-3be5-48b0-a40c-bd05826a38c2.jpg', '商品介紹頁面素材由Apple提供', 10399, 9799, 1000, '', 0, 0, '2019-09-18 13:25:52', 0, '2019-09-18 13:25:52');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10253, '小新 14 满血锐龙版 14.0英寸轻薄笔记本 渣渣灰', 'AMD Ryzen 5 3500U/Windows 10 家庭中文版/14.0英寸/4GB+4GB/1T+256G SSD/集成显卡/渣渣灰', 0, '/goods-img/cb899039-a705-473d-9785-f245a6ed4d89.jpg', '/goods-img/cb899039-a705-473d-9785-f245a6ed4d89.jpg', '商品介紹頁面素材由Apple提供', 8899, 8499, 1000, '', 0, 0, '2019-09-18 13:25:52', 0, '2019-09-18 13:25:52');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10254, 'YOGA C940 全新十代英特尔酷睿i7 14.0英寸轻薄笔记本 深空灰', '全新十代英特尔酷睿i7-1065G7/Windows 10 家庭中文版/14.0英寸/16GB/1T SSD/集成显卡/深空灰', 20, '/goods-img/7810bc9d-236f-4386-a0ef-45a831b49bf2.jpg', '/goods-img/7810bc9d-236f-4386-a0ef-45a831b49bf2.jpg', '商品介紹頁面素材由Apple提供', 8899, 8499, 996, '再次倾心', 0, 0, '2019-09-18 13:25:52', 0, '2019-09-18 13:25:52');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10255, '拯救者 Y7000P 2019 英特尔酷睿i5 15.6英寸专业电竞本 黑色', '九代英特尔酷睿i5-9300H/Windows 10 家庭中文版/15.6英寸/16G/1T SSD/ GeForce GTX 1650 4G独显/黑色', 0, '/goods-img/53019ece-5e61-4de9-8eac-e1f00a4ef7e3.jpg', '/goods-img/53019ece-5e61-4de9-8eac-e1f00a4ef7e3.jpg', '商品介绍加载中...', 8056, 6968, 1000, '', 0, 0, '2019-09-18 13:25:52', 0, '2019-09-18 13:25:52');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10256, 'Y9000X 英特尔酷睿i7 15.6英寸高性能标压轻薄笔记本', '九代英特尔酷睿i7-9750H/Windows 10 家庭中文版/15.6英寸/32G/1T SSD/ 集成显卡/深空灰', 0, '/goods-img/f08404a7-0459-4289-aa60-dd1735c95bbe.jpg', '/goods-img/f08404a7-0459-4289-aa60-dd1735c95bbe.jpg', '商品介紹頁面素材由Apple提供', 11499, 10699, 1000, '', 0, 0, '2019-09-18 13:25:52', 0, '2019-09-18 13:25:52');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10257, 'ThinkPad X390 4G版 英特尔酷睿i5 笔记本电脑 20Q0A00CCD', '八代英特尔酷睿i5-8265U/Windows 10家庭中文版/8GB/512GB SSD/UHD 620显示芯片/13.3英寸/4G版', 0, '/goods-img/83740c28-473c-4954-b0dc-3cadab5a87d1.jpg', '/goods-img/83740c28-473c-4954-b0dc-3cadab5a87d1.jpg', '商品介绍加载中...', 6200, 5488, 1000, '', 0, 0, '2019-09-18 13:25:52', 0, '2019-09-18 13:25:52');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10258, 'ThinkBook 13s 英特尔酷睿i5 笔记本电脑 20R9009SCD 钛灰银 ', '八代英特尔酷睿i5-8265U/Windows 10家庭中文版/8GB/256GB SSD/Intel® UHD Graphics 620/13.3英寸FHD IPS LED背光显示屏/钛灰银', 0, '/goods-img/78957148-4c0c-4194-bc46-7360d7b1aa65.jpg', '/goods-img/78957148-4c0c-4194-bc46-7360d7b1aa65.jpg', '商品介紹頁面素材由Apple提供', 10399, 9799, 1000, '', 0, 0, '2019-09-18 13:25:52', 0, '2019-09-18 13:25:52');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10259, 'ThinkBook 14s 英特尔酷睿i5 笔记本电脑 20RM0012CD 钛灰银', '八代英特尔酷睿i5-8265U/Windows 10家庭中文版/8GB/512GB SSD/AMD Radeon 540X 2G/14英寸FHD IPS LED背光显示屏/钛灰银秒杀', 0, '/goods-img/85787c16-8443-4db0-9cae-a811a20a0832.jpg', '/goods-img/85787c16-8443-4db0-9cae-a811a20a0832.jpg', '商品介紹頁面素材由Apple提供', 13899, 12999, 1000, '', 0, 0, '2019-09-18 13:25:52', 0, '2019-09-18 13:25:52');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10260, 'ThinkPad X1 Yoga 2019 英特尔酷睿i5笔记本电脑20QFA006CD水雾灰', '八代英特尔酷睿i5-8265U/Windows 10家庭中文版/8GB/512GB SSD/手写笔/14英寸WQHD IPS LED背光触控显示屏/水雾灰', 0, '/goods-img/82bdafc6-5828-495e-b77c-21598938b896.jpg', '/goods-img/82bdafc6-5828-495e-b77c-21598938b896.jpg', '商品介紹頁面素材由Apple提供', 10399, 9799, 1000, '', 0, 0, '2019-09-18 13:25:52', 0, '2019-09-18 13:25:52');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10261, 'YOGA S740-14IIL 英特尔酷睿i5 14英寸笔记本 深空灰', '第十代英特尔酷睿i5-1035G1/Windows 10 家庭中文版/8G/512G SSD/GeForce MX250 2G独显/深空灰', 20, '/goods-img/270cdf75-8a7f-410e-8f2f-8eeba24f0503.jpg', '/goods-img/270cdf75-8a7f-410e-8f2f-8eeba24f0503.jpg', '商品介绍加载中...', 8899, 7888, 1000, '', 0, 0, '2019-09-18 13:25:52', 0, '2019-09-18 13:25:52');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10262, 'YOGA C740 全新十代英特尔酷睿i7 14.0英寸轻薄笔记本 深灰', '全新十代英特尔酷睿i7-10710U/Windows 10 家庭中文版/14.0英寸/16GB/512G SSD/集成显卡/深灰', 20, '/goods-img/7928eb46-9e1c-420e-a8ab-6c358d01891b.jpg', '/goods-img/7928eb46-9e1c-420e-a8ab-6c358d01891b.jpg', '商品介紹頁面素材由Apple提供', 18199, 17099, 1000, '', 0, 0, '2019-09-18 13:25:52', 0, '2019-09-18 13:25:52');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10263, '拯救者 Y7000 2019高色域 英特尔酷睿i5 15.6英寸游戏笔记本 黑色', '九代英特尔酷睿i5-9300H/Windows 10 家庭中文版/15.6英寸/8G/512G SSD/ GeForce GTX 1660Ti 6G独显/黑色', 0, '/goods-img/11968b35-9431-4b1c-a648-6ff46945ebf4.jpg', '/goods-img/11968b35-9431-4b1c-a648-6ff46945ebf4.jpg', '商品介绍加载中...', 6988, 5988, 1000, '', 0, 0, '2019-09-18 13:25:52', 0, '2019-09-18 13:25:52');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10264, '拯救者 Y7000P 2018 英特尔酷睿i5 15.6英寸专业电竞本 黑色', '九代英特尔酷睿i5-9300H/Windows 10 家庭中文版/15.6英寸/16G/1T SSD/ GeForce GTX 1660Ti 6G独显/黑色', 0, '/goods-img/fb08ec83-2960-47f7-8679-8b78896c30d5.jpg', '/goods-img/fb08ec83-2960-47f7-8679-8b78896c30d5.jpg', '商品介绍加载中...', 6188, 5488, 1000, '', 0, 0, '2019-09-18 13:25:52', 0, '2019-09-18 13:25:52');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10265, 'Y9000X 英特尔酷睿i7 15.6英寸高性能标压轻薄笔记本 ', '九代英特尔酷睿i7-9750H/Windows 10 家庭中文版/15.6英寸 4K/16G/1T SSD/ 集成显卡/深空灰', 0, '/goods-img/50748763-c0d6-4e73-80e5-864818fa3246.jpg', '/goods-img/50748763-c0d6-4e73-80e5-864818fa3246.jpg', '商品介紹頁面素材由Apple提供', 8899, 8499, 1000, '', 0, 0, '2019-09-18 13:25:52', 0, '2019-09-18 13:25:52');


-- ----------------------------
-- author 13
-- qq交流群 796794009
-- email 2449207463@qq.com
-- link https://github.com/newbee-ltd
-- Table structure for tb_newbee_mall_index_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_index_config`;
CREATE TABLE `tb_newbee_mall_index_config`  (
  `config_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '首页配置项主键id',
  `config_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '显示字符(配置搜索时不可为空，其他可为空)',
  `config_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1-搜索框热搜 2-搜索下拉框热搜 3-(首页)热销商品 4-(首页)新品上线 5-(首页)为你推荐',
  `goods_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '商品id 默认为0',
  `redirect_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '##' COMMENT '点击后的跳转地址(默认不跳转)',
  `config_rank` int(11) NOT NULL DEFAULT 0 COMMENT '排序值(字段越大越靠前)',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user` int(11) NOT NULL DEFAULT 0 COMMENT '创建者id',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最新修改时间',
  `update_user` int(11) NULL DEFAULT 0 COMMENT '修改者id',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- author 13
-- qq交流群 796794009
-- email 2449207463@qq.com
-- link https://github.com/newbee-ltd
-- Records of tb_newbee_mall_index_config
-- ----------------------------
INSERT INTO `tb_newbee_mall_index_config` VALUES (1, '热销商品 小新 Air 14 2019款 14.0英寸超轻薄笔记本 轻奢灰', 3, 10251, '##', 10, 0, '2019-09-18 17:04:56', 0, '2019-09-18 17:04:56', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (2, '热销商品 2019款 小新 Pro 13 13.3英寸超轻薄笔记本 银色', 3, 10252, '##', 100, 0, '2019-09-18 17:05:27', 0, '2019-09-18 17:05:27', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (3, '热销商品 小新 14 满血锐龙版 14.0英寸轻薄笔记本 渣渣灰', 3, 10253, '##', 300, 0, '2019-09-18 17:08:02', 0, '2019-09-18 17:08:02', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (4, '热销商品 YOGA C940 全新十代英特尔酷睿i7 14.0英寸轻薄笔记本 深空灰', 3, 10254, '##', 101, 0, '2019-09-18 17:08:56', 0, '2019-09-18 17:08:56', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (5, '新品上线 YOGA C940 全新十代英特尔酷睿i7 14.0英寸轻薄笔记本 深空灰', 4, 10254, '##', 105, 0, '2019-09-18 17:10:36', 0, '2019-09-18 17:10:36', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (6, '新品上线 ThinkPad X1 Yoga 2019 英特尔酷睿i5笔记本电脑20QFA006CD水雾灰', 4, 10260, '##', 104, 0, '2019-09-18 17:11:05', 0, '2019-09-18 17:11:05', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (7, '新品上线 拯救者 Y7000 2019高色域 英特尔酷睿i5 15.6英寸游戏笔记本 黑色', 4, 10263, '##', 102, 0, '2019-09-18 17:11:44', 0, '2019-09-18 17:11:44', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (8, '新品上线 Y9000X 英特尔酷睿i7 15.6英寸高性能标压轻薄笔记本 ', 4, 10265, '##', 101, 0, '2019-09-18 17:11:58', 0, '2019-09-18 17:11:58', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (9, '新品上线 YOGA C740 全新十代英特尔酷睿i7 14.0英寸轻薄笔记本 深灰', 4, 10262, '##', 100, 0, '2019-09-18 17:12:29', 0, '2019-09-18 17:12:29', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (10, 'YOGA C940 全新十代英特尔酷睿i7 14.0英寸轻薄笔记本 深空灰', 5, 10254, '##', 98, 0, '2019-09-18 17:47:23', 0, '2019-09-18 17:47:23', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (11, 'Y9000X 英特尔酷睿i7 15.6英寸高性能标压轻薄笔记本', 5, 10265, '##', 100, 0, '2019-09-18 17:47:44', 0, '2019-09-18 17:47:44', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (12, '拯救者 Y7000P 2019 英特尔酷睿i5 15.6英寸专业电竞本 黑色', 5, 10264, '##', 102, 0, '2019-09-18 17:48:00', 0, '2019-09-18 17:48:00', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (13, '小新 Air 14 2019款 14.0英寸超轻薄笔记本 轻奢灰', 5, 10251, '##', 101, 0, '2019-09-18 17:49:11', 0, '2019-09-18 17:49:11', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (14, 'YOGA C740 全新十代英特尔酷睿i7 14.0英寸轻薄笔记本 深灰', 5, 10262, '##', 100, 0, '2019-09-18 17:49:28', 0, '2019-09-18 17:49:28', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (15, '2019款 小新 Pro 13 13.3英寸超轻薄笔记本 银色', 5, 10252, '##', 100, 0, '2019-09-18 17:50:18', 0, '2019-09-18 17:50:18', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (16, '小新 14 满血锐龙版 14.0英寸轻薄笔记本 渣渣灰', 5, 10253, '##', 99, 0, '2019-09-18 17:52:03', 0, '2019-09-18 17:52:03', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (17, 'ThinkBook 14s 英特尔酷睿i5 笔记本电脑 20RM0012CD 钛灰银', 5, 10259, '##', 100, 0, '2019-09-18 17:52:19', 0, '2019-09-18 17:52:19', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (18, 'ThinkBook 13s 英特尔酷睿i5 笔记本电脑 20R9009SCD 钛灰银', 5, 10258, '##', 101, 0, '2019-09-18 17:52:50', 0, '2019-09-18 17:52:50', 0);
INSERT INTO `tb_newbee_mall_index_config` VALUES (19, '拯救者 Y7000 2019高色域 英特尔酷睿i5 15.6英寸游戏笔记本 黑色', 5, 10263, '##', 100, 0, '2019-09-18 17:54:07', 0, '2019-09-18 17:54:07', 0);


-- ----------------------------
-- author 13
-- qq交流群 796794009
-- email 2449207463@qq.com
-- link https://github.com/newbee-ltd
-- Table structure for tb_newbee_mall_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_order`;
CREATE TABLE `tb_newbee_mall_order`  (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单表主键id',
  `order_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户主键id',
  `total_price` int(11) NOT NULL DEFAULT 1 COMMENT '订单总价',
  `pay_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '支付状态:0.未支付,1.支付成功,-1:支付失败',
  `pay_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0.无 1.支付宝支付 2.微信支付',
  `pay_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `order_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '订单状态:0.待支付 1.已支付 2.配货完成 3:出库成功 4.交易成功 -1.手动关闭 -2.超时关闭 -3.商家关闭',
  `extra_info` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单body',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `user_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人手机号',
  `user_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人收货地址',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最新修改时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- author 13
-- qq交流群 796794009
-- email 2449207463@qq.com
-- link https://github.com/newbee-ltd
-- Records of tb_newbee_mall_order
-- ----------------------------
INSERT INTO `tb_newbee_mall_order` VALUES (1, '15688187285093508', 1, 2492, 1, 2, '2019-09-18 23:00:18', -1, '', '', '', 'xafsdufhpwe', 0, '2019-09-18 22:53:07', '2019-09-18 22:55:32');
INSERT INTO `tb_newbee_mall_order` VALUES (2, '15688188616936181', 1, 135, 1, 1, '2019-09-18 23:01:06', 1, '', '', '', 'xafsdufhpwe', 0, '2019-09-18 22:55:20', '2019-09-18 23:01:06');
INSERT INTO `tb_newbee_mall_order` VALUES (3, '15689089426956979', 1, 15487, 1, 1, '2019-09-20 00:16:03', 3, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-19 23:56:40', '2019-09-20 00:10:39');
INSERT INTO `tb_newbee_mall_order` VALUES (4, '15689090398492576', 1, 8499, 0, 0, NULL, 0, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-19 23:58:18', '2019-09-19 23:58:18');
INSERT INTO `tb_newbee_mall_order` VALUES (5, '15689096266448452', 1, 115, 1, 2, '2019-09-20 00:13:52', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-20 00:08:04', '2019-09-20 00:13:52');
INSERT INTO `tb_newbee_mall_order` VALUES (6, '15691645776131562', 7, 7998, 1, 1, '2019-09-22 23:05:53', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-22 22:57:15', '2019-09-22 23:05:53');
INSERT INTO `tb_newbee_mall_order` VALUES (7, '15691648465397435', 7, 13998, 1, 2, '2019-09-22 23:07:38', -1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-22 23:01:44', '2019-09-22 23:02:10');
INSERT INTO `tb_newbee_mall_order` VALUES (8, '15691649071896878', 7, 1246, 1, 1, '2019-09-22 23:08:31', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-22 23:02:45', '2019-09-22 23:08:31');
INSERT INTO `tb_newbee_mall_order` VALUES (9, '15691649748362177', 7, 25656, 1, 1, '2019-09-22 23:09:39', 4, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-22 23:03:52', '2019-09-22 23:50:45');
INSERT INTO `tb_newbee_mall_order` VALUES (10, '15691652286194502', 7, 16197, 0, 0, NULL, 0, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-22 23:08:06', '2019-09-22 23:08:06');
INSERT INTO `tb_newbee_mall_order` VALUES (11, '15692210075967186', 6, 5999, 1, 2, '2019-09-23 17:03:05', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-23 14:43:27', '2019-09-23 17:03:05');
INSERT INTO `tb_newbee_mall_order` VALUES (12, '15692218454123239', 6, 7245, 0, 0, NULL, 0, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-23 14:57:25', '2019-09-23 14:57:25');
INSERT INTO `tb_newbee_mall_order` VALUES (13, '15692225252983527', 6, 5488, 1, 2, '2019-09-23 15:38:54', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-23 15:08:45', '2019-09-23 15:38:54');
INSERT INTO `tb_newbee_mall_order` VALUES (14, '15692291639125640', 6, 9046, 1, 2, '2019-09-23 16:59:32', -1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2709', 0, '2019-09-23 16:59:23', '2019-09-23 16:59:40');
INSERT INTO `tb_newbee_mall_order` VALUES (15, '15692295348262843', 6, 65, 1, 2, '2019-09-23 17:06:17', 1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2709', 0, '2019-09-23 17:05:34', '2019-09-23 17:06:17');
INSERT INTO `tb_newbee_mall_order` VALUES (16, '15692298037679052', 6, 15233, 1, 2, '2019-09-23 17:10:08', 1, '', '', '', '上海浦东新区XX路XX号 999 137xxxx7797', 0, '2019-09-23 17:10:03', '2019-09-23 17:10:08');
INSERT INTO `tb_newbee_mall_order` VALUES (17, '15694781962831307', 7, 1246, 1, 2, '2019-09-26 14:10:12', -1, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-26 14:09:56', '2019-09-26 14:10:22');
INSERT INTO `tb_newbee_mall_order` VALUES (18, '15698039249771093', 7, 3199, 0, 0, NULL, 0, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-09-30 08:38:26', '2019-09-30 08:38:26');
INSERT INTO `tb_newbee_mall_order` VALUES (19, '15702783557537865', 7, 6819, 0, 0, NULL, 0, '', '', '', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, '2019-10-05 20:20:10', '2019-10-05 20:20:10');
INSERT INTO `tb_newbee_mall_order` VALUES (20, '15702847670935185', 6, 3999, 1, 2, '2019-10-05 22:13:03', 1, '', '', '', '上海浦东新区XX路XX号 999 137xxxx7797', 0, '2019-10-05 22:12:47', '2019-10-05 22:13:03');

-- ----------------------------
-- author 13
-- qq交流群 796794009
-- email 2449207463@qq.com
-- link https://github.com/newbee-ltd
-- Table structure for tb_newbee_mall_order_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_order_item`;
CREATE TABLE `tb_newbee_mall_order_item`  (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单关联购物项主键id',
  `order_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '订单主键id',
  `goods_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '关联商品id',
  `goods_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '下单时商品的名称(订单快照)',
  `goods_cover_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '下单时商品的主图(订单快照)',
  `selling_price` int(11) NOT NULL DEFAULT 1 COMMENT '下单时商品的价格(订单快照)',
  `goods_count` int(11) NOT NULL DEFAULT 1 COMMENT '数量(订单快照)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- author 13
-- qq交流群 796794009
-- email 2449207463@qq.com
-- link https://github.com/newbee-ltd
-- Records of tb_newbee_mall_order_item
-- ----------------------------
INSERT INTO `tb_newbee_mall_order_item` VALUES (1, 1, 10180, 'Apple AirPods 配充电盒', '/goods-img/64768a8d-0664-4b29-88c9-2626578ffbd1.jpg', 1246, 2, '2019-09-18 22:53:07');
INSERT INTO `tb_newbee_mall_order_item` VALUES (2, 2, 10147, 'MUJI 羽毛 靠垫', '/goods-img/0f701215-b782-40c7-8bbd-97b51be56461.jpg', 65, 1, '2019-09-18 22:55:20');
INSERT INTO `tb_newbee_mall_order_item` VALUES (3, 2, 10158, '无印良品 女式粗棉线条纹长袖T恤', 'http://localhost:28089/goods-img/5488564b-8335-4b0c-a5a4-52f3f03ee728.jpg', 70, 1, '2019-09-18 22:55:20');
INSERT INTO `tb_newbee_mall_order_item` VALUES (4, 3, 10742, '华为 HUAWEI P30 Pro', '/goods-img/dda1d575-cdac-4eb4-a118-3834490166f7.jpg', 5488, 1, '2019-09-19 23:56:40');
INSERT INTO `tb_newbee_mall_order_item` VALUES (5, 3, 10320, 'Apple iPhone 11 Pro', '/goods-img/0025ad55-e260-4a00-be79-fa5b8c5ac0de.jpg', 9999, 1, '2019-09-19 23:56:40');
INSERT INTO `tb_newbee_mall_order_item` VALUES (6, 4, 10254, 'Apple 2019款 MacBook Air 13.3', '/goods-img/7810bc9d-236f-4386-a0ef-45a831b49bf2.jpg', 8499, 1, '2019-09-19 23:58:18');
INSERT INTO `tb_newbee_mall_order_item` VALUES (7, 5, 10104, '无印良品 MUJI 修正带', '/goods-img/98ce17e1-890e-4eaf-856a-7fce8ffebc4c.jpg', 15, 1, '2019-09-20 00:08:04');
INSERT INTO `tb_newbee_mall_order_item` VALUES (8, 5, 10110, '无印良品 MUJI 基础润肤乳霜', '/goods-img/30036561-a150-4ea7-9106-29bbea278909.jpg', 100, 1, '2019-09-20 00:08:04');
INSERT INTO `tb_newbee_mall_order_item` VALUES (9, 6, 10895, 'HUAWEI Mate 30 4000万超感光徕卡影像', '/goods-img/mate30-3.png', 3999, 2, '2019-09-22 22:57:15');
INSERT INTO `tb_newbee_mall_order_item` VALUES (10, 7, 10895, 'HUAWEI Mate 30 4000万超感光徕卡影像', '/goods-img/mate30-3.png', 3999, 1, '2019-09-22 23:01:44');
INSERT INTO `tb_newbee_mall_order_item` VALUES (11, 7, 10320, 'Apple iPhone 11 Pro', '/goods-img/0025ad55-e260-4a00-be79-fa5b8c5ac0de.jpg', 9999, 1, '2019-09-22 23:01:44');
INSERT INTO `tb_newbee_mall_order_item` VALUES (12, 8, 10180, 'Apple AirPods 配充电盒', '/goods-img/64768a8d-0664-4b29-88c9-2626578ffbd1.jpg', 1246, 1, '2019-09-22 23:02:45');
INSERT INTO `tb_newbee_mall_order_item` VALUES (13, 9, 10237, 'MAC 雾面丝绒哑光子弹头口红', 'http://localhost:28089/goods-img/1930d79b-88bd-4c5c-8510-0697c9ad2578.jpg', 165, 4, '2019-09-22 23:03:52');
INSERT INTO `tb_newbee_mall_order_item` VALUES (14, 9, 10254, 'Apple 2019款 MacBook Air 13.3', '/goods-img/7810bc9d-236f-4386-a0ef-45a831b49bf2.jpg', 8499, 2, '2019-09-22 23:03:52');
INSERT INTO `tb_newbee_mall_order_item` VALUES (15, 9, 10195, '索尼 WH-1000XM3 头戴式耳机', 'http://localhost:28089/goods-img/0dc503b2-90a2-4971-9723-c085a1844b76.jpg', 2599, 1, '2019-09-22 23:03:52');
INSERT INTO `tb_newbee_mall_order_item` VALUES (16, 9, 10894, 'HUAWEI Mate 30 Pro', '/goods-img/mate30p3.png', 5399, 1, '2019-09-22 23:03:52');
INSERT INTO `tb_newbee_mall_order_item` VALUES (17, 10, 10894, 'HUAWEI Mate 30 Pro', '/goods-img/mate30p3.png', 5399, 3, '2019-09-22 23:08:06');
INSERT INTO `tb_newbee_mall_order_item` VALUES (18, 11, 10279, 'Apple iPhone 11 (A2223)', '/goods-img/a0d09f94-9c46-4ee1-aaef-dfd132e7543e.jpg', 5999, 1, '2019-09-23 14:43:27');
INSERT INTO `tb_newbee_mall_order_item` VALUES (19, 12, 10279, 'Apple iPhone 11 (A2223)', '/goods-img/a0d09f94-9c46-4ee1-aaef-dfd132e7543e.jpg', 5999, 1, '2019-09-23 14:57:26');
INSERT INTO `tb_newbee_mall_order_item` VALUES (20, 12, 10159, 'Apple AirPods 配充电盒', '/goods-img/53c9f268-7cd4-4fac-909c-2dc066625655.jpg', 1246, 1, '2019-09-23 14:57:26');
INSERT INTO `tb_newbee_mall_order_item` VALUES (21, 13, 10742, '华为 HUAWEI P30 Pro', '/goods-img/dda1d575-cdac-4eb4-a118-3834490166f7.jpg', 5488, 1, '2019-09-23 15:08:46');
INSERT INTO `tb_newbee_mall_order_item` VALUES (22, 14, 10158, '无印良品 女式粗棉线条纹长袖T恤', '/goods-img/5488564b-8335-4b0c-a5a4-52f3f03ee728.jpg', 70, 1, '2019-09-23 16:59:24');
INSERT INTO `tb_newbee_mall_order_item` VALUES (23, 14, 10704, '华为 HUAWEI P30 超感光徕卡三摄麒麟980AI...', '/goods-img/b9e6d770-06dd-40f4-9ae5-31103cec6e5f.jpg', 3988, 1, '2019-09-23 16:59:24');
INSERT INTO `tb_newbee_mall_order_item` VALUES (24, 14, 10739, '华为 HUAWEI P30 Pro', '/goods-img/65c8e729-aeca-4780-977b-4d0d39d4aa2e.jpg', 4988, 1, '2019-09-23 16:59:24');
INSERT INTO `tb_newbee_mall_order_item` VALUES (25, 15, 10147, 'MUJI 羽毛 靠垫', '/goods-img/0f701215-b782-40c7-8bbd-97b51be56461.jpg', 65, 1, '2019-09-23 17:05:34');
INSERT INTO `tb_newbee_mall_order_item` VALUES (26, 16, 10742, '华为 HUAWEI P30 Pro', '/goods-img/dda1d575-cdac-4eb4-a118-3834490166f7.jpg', 5488, 1, '2019-09-23 17:10:03');
INSERT INTO `tb_newbee_mall_order_item` VALUES (27, 16, 10159, 'Apple AirPods 配充电盒', '/goods-img/53c9f268-7cd4-4fac-909c-2dc066625655.jpg', 1246, 1, '2019-09-23 17:10:03');
INSERT INTO `tb_newbee_mall_order_item` VALUES (28, 16, 10254, 'Apple 2019款 MacBook Air 13.3', '/goods-img/7810bc9d-236f-4386-a0ef-45a831b49bf2.jpg', 8499, 1, '2019-09-23 17:10:03');
INSERT INTO `tb_newbee_mall_order_item` VALUES (29, 17, 10180, 'Apple AirPods 配充电盒', '/goods-img/64768a8d-0664-4b29-88c9-2626578ffbd1.jpg', 1246, 1, '2019-09-26 14:09:56');
INSERT INTO `tb_newbee_mall_order_item` VALUES (30, 18, 10779, '华为 HUAWEI Mate 20', '/goods-img/08f9a912-f049-4cf8-a839-115fc6582398.jpg', 3199, 1, '2019-09-30 08:38:26');
INSERT INTO `tb_newbee_mall_order_item` VALUES (31, 19, 10742, '华为 HUAWEI P30 Pro', '/goods-img/dda1d575-cdac-4eb4-a118-3834490166f7.jpg', 5488, 1, '2019-10-05 20:20:10');
INSERT INTO `tb_newbee_mall_order_item` VALUES (32, 19, 10154, '无印良品 MUJI 塑料浴室座椅', '/goods-img/15395057-94e9-4545-a8ee-8aee025f40c5.jpg', 85, 1, '2019-10-05 20:20:10');
INSERT INTO `tb_newbee_mall_order_item` VALUES (33, 19, 10159, 'Apple AirPods 配充电盒', '/goods-img/53c9f268-7cd4-4fac-909c-2dc066625655.jpg', 1246, 1, '2019-10-05 20:20:10');
INSERT INTO `tb_newbee_mall_order_item` VALUES (34, 20, 10895, 'HUAWEI Mate 30 4000万超感光徕卡影像', '/goods-img/mate30-3.png', 3999, 1, '2019-10-05 22:12:47');

-- ----------------------------
-- author 13
-- qq交流群 796794009
-- email 2449207463@qq.com
-- link https://github.com/newbee-ltd
-- Table structure for tb_newbee_mall_shopping_cart_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_shopping_cart_item`;
CREATE TABLE `tb_newbee_mall_shopping_cart_item`  (
  `cart_item_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '购物项主键id',
  `user_id` bigint(20) NOT NULL COMMENT '用户主键id',
  `goods_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '关联商品id',
  `goods_count` int(11) NOT NULL DEFAULT 1 COMMENT '数量(最大为5)',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最新修改时间',
  PRIMARY KEY (`cart_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- author 13
-- qq交流群 796794009
-- email 2449207463@qq.com
-- link https://github.com/newbee-ltd
-- Table structure for tb_newbee_mall_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_user`;
CREATE TABLE `tb_newbee_mall_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户主键id',
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `login_name` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登陆名称(默认为手机号)',
  `password_md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'MD5加密后的密码',
  `introduce_sign` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '个性签名',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货地址',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '注销标识字段(0-正常 1-已注销)',
  `locked_flag` tinyint(4) NOT NULL DEFAULT 0 COMMENT '锁定标识字段(0-未锁定 1-已锁定)',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- author 13
-- qq交流群 796794009
-- email 2449207463@qq.com
-- link https://github.com/newbee-ltd
-- Records of tb_newbee_mall_user
-- ----------------------------
INSERT INTO `tb_newbee_mall_user` VALUES (1, '十三', '13700002703', 'e10adc3949ba59abbe56e057f20f883e', '我不怕千万人阻挡，只怕自己投降', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, 0, '2019-09-22 08:44:57');
INSERT INTO `tb_newbee_mall_user` VALUES (6, '测试用户1', '13711113333', 'dda01dc6d334badcd031102be6bee182', '测试用户1', '上海浦东新区XX路XX号 999 137xxxx7797', 0, 0, '2019-08-29 10:51:39');
INSERT INTO `tb_newbee_mall_user` VALUES (7, '测试用户2测试用户2测试用户2测试用户2', '13811113333', 'dda01dc6d334badcd031102be6bee182', '测试用户2', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, 0, '2019-08-29 10:55:08');
INSERT INTO `tb_newbee_mall_user` VALUES (8, '测试用户3', '13911113333', 'dda01dc6d334badcd031102be6bee182', '测试用户3', '杭州市西湖区xx小区x幢419 十三 137xxxx2703', 0, 0, '2019-08-29 10:55:16');