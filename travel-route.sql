/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : travel-route

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 17/05/2021 17:50:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bbs
-- ----------------------------
DROP TABLE IF EXISTS `bbs`;
CREATE TABLE `bbs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '正文',
  `score` tinyint(2) NULL DEFAULT 0 COMMENT '评分',
  `ref_id` int(11) NULL DEFAULT 0 COMMENT '业务ID',
  `type` tinyint(2) NULL DEFAULT 0 COMMENT '类型（0-景点 1-酒店）',
  `create_user` int(11) NULL DEFAULT 0 COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `del_flag` tinyint(2) NULL DEFAULT 0 COMMENT '删除状态（0-正常 1-删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bbs
-- ----------------------------
INSERT INTO `bbs` VALUES (40, '阿斯顿', 3, 20, 1, 21, '2021-03-02 22:03:43', 0);
INSERT INTO `bbs` VALUES (41, '234', 1, 20, 1, 21, '2021-03-02 22:15:37', 0);
INSERT INTO `bbs` VALUES (42, '234', 4, 20, 1, 21, '2021-03-02 22:17:27', 0);
INSERT INTO `bbs` VALUES (43, '234', 3, 20, 1, 21, '2021-03-02 22:18:17', 0);
INSERT INTO `bbs` VALUES (44, '34', 1, 20, 1, 21, '2021-03-02 22:19:34', 0);
INSERT INTO `bbs` VALUES (45, '453', 5, 20, 1, 21, '2021-03-02 22:31:29', 0);
INSERT INTO `bbs` VALUES (46, '234', 5, 20, 1, 21, '2021-03-02 22:33:42', 0);
INSERT INTO `bbs` VALUES (47, 'sz', 5, 20, 1, 26, '2021-03-03 03:04:55', 0);
INSERT INTO `bbs` VALUES (48, '234', 4, 20, 0, 28, '2021-03-03 03:21:41', 0);
INSERT INTO `bbs` VALUES (49, 'adad', 1, 20, 0, 21, '2021-04-07 14:15:33', 0);
INSERT INTO `bbs` VALUES (50, 'w认为你', 5, 21, 0, 21, '2021-04-15 14:52:02', 0);

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `star` tinyint(2) NULL DEFAULT 0 COMMENT '星级',
  `description` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `address` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `lng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务电话',
  `price` decimal(12, 0) NULL COMMENT '价格',
  `click_times` int(11) NULL DEFAULT 0 COMMENT '点击次数',
  `create_user` int(11) NULL DEFAULT 0 COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `last_update_user` int(11) NULL DEFAULT 0 COMMENT '最后一次修改人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次修改时间',
  `del_flag` tinyint(2) NULL DEFAULT 0 COMMENT '删除状态（0-正常 1-删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '酒店表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO `hotel` VALUES (20, '鸟日子酒店', 5, '鸟日子酒店(贵阳锐珲店)位于云岩区中山东路，地处贵阳市喷水池，小十字商圈，近蔡家街，附近有文昌阁、市民政局、百货大楼，以及贵州特色小吃一条街，等，交通便捷 ，购物方便，还有免费停车场供客人使用， 这是一家以住宿为主的个性化时尚酒店，引进欧洲后现代派简约装修风格，并融入视觉色彩的艺术冲击。', '中国贵州省贵阳市云岩区', '106.71677112579346', '26.579311551202363', '0854-4645646', 234, 0, 21, '2021-03-02 02:02:29', 0, NULL, 0);

-- ----------------------------
-- Table structure for hotel_photo
-- ----------------------------
DROP TABLE IF EXISTS `hotel_photo`;
CREATE TABLE `hotel_photo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hotel_id` int(11) NULL DEFAULT 0 COMMENT '景点ID',
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  `create_user` int(11) NULL DEFAULT 0 COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '酒店照片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel_photo
-- ----------------------------
INSERT INTO `hotel_photo` VALUES (29, 20, 'scenicSpotPhoto\\03e4e4d4-3b0a-4511-b37b-2333a7173533.jpg', 21, '2021-04-07 08:28:14');
INSERT INTO `hotel_photo` VALUES (30, 20, 'scenicSpotPhoto\\3ba2fc03-32ef-4c80-9bcc-1e27d8675ab9.jpg', 21, '2021-04-07 08:28:33');

-- ----------------------------
-- Table structure for scenic_spot
-- ----------------------------
DROP TABLE IF EXISTS `scenic_spot`;
CREATE TABLE `scenic_spot`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `star` tinyint(2) NULL DEFAULT 0 COMMENT '星级',
  `description` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `address` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `lng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务电话',
  `price` decimal(12, 0) NULL COMMENT '价格',
  `click_times` int(11) NULL DEFAULT 0 COMMENT '点击次数',
  `create_user` int(11) NULL DEFAULT 0 COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `last_update_user` int(11) NULL DEFAULT 0 COMMENT '最后一次修改人',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次修改时间',
  `del_flag` tinyint(2) NULL DEFAULT 0 COMMENT '删除状态（0-正常 1-删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '景点表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scenic_spot
-- ----------------------------
INSERT INTO `scenic_spot` VALUES (20, '梵净山', 3, '梵净山是武陵山脉的主峰，海拨2572米，总面积约567平方公里，古老的地层和优良的生态环境，使独特的风光，蘑菇石、金顶、黔金丝猴，莫不是“独一无二，惊世骇俗”。梵净山亦是中国五大佛教圣地。自古以来，以弥勒道场梵净山而与文殊道场五台山、地藏王道场九华山、普贤道场峨眉山、观音道场普陀山而齐名。这里留下了10至14亿年前形成的奇特地貌景观：孤峰突兀，断崖陡绝，沟谷深邃，瀑流跌宕，亿万斯年的风雨侵蚀，雕琢了老金顶附近的高山石林峰群，诸如“蘑菇石”、“老鹰岩”、“万卷', '中国贵州省铜仁市江口县太平镇', '108.7722659111023', '27.83887301115122', '0854-10086', 128, 0, 21, '2021-03-02 01:57:28', 0, NULL, 0);
INSERT INTO `scenic_spot` VALUES (21, '小七孔景区', 4, '小七孔风景区位于贵州省荔波县城南部30余公里的群峰之中，距大七孔景区5公里，景区全长7公里，面积约10平方公里，有百多个游览景点。是集山、水、林、洞、湖、瀑为一体的原始奇景。1988。因其特有的古朴，幽静等特点令中外游客赞不绝口。联合国组织的专家组曾到这里考察后评价：“小七孔风景区响水河上横跨着一座青石砌成的七孔拱桥，为道光十五年所建。”“小七孔风景区”因此得名，由于景区特有的奇、俊、秀、古、雄等自然美，加之饱含浓郁的布依、水、苗、瑶等民族风情，每年吸引近百万', '中国贵州省黔南布依族苗族自治州荔波县', '107.88750171661377', '25.41148809038483', '0854-10086', 190, 0, 21, '2021-03-03 02:58:49', 0, NULL, 0);
INSERT INTO `scenic_spot` VALUES (22, '西江千户苗寨', 4, '西江位于凯里的东南，从雷山路口折向东北，约有1000多户人家，所以称为“千户苗寨”。西江千户苗寨的房屋大多是木吊脚楼，都是用枫木搭成，依山势向两边展开，暗红色的枫木板壁在夕阳照射下一片金黄，如果游客秋天来此，可看到屋前屋后的巨大枫木红叶片片，丰收的景色真的很美.西江还有远迎闻名的银匠村，银饰制作巧夺天工。西江千户苗寨姑娘的挑花刺绣，制作相当精美。', '中国贵州省黔东南苗族侗族自治州凯里市', '107.97925472259521', '26.566914181388725', '0854-10089', 116, 0, 21, '2021-03-03 03:15:07', 0, NULL, 0);
INSERT INTO `scenic_spot` VALUES (23, '北京大学', 5, '我', '中国贵州省贵阳市乌当区', '106.78785160922416', '26.638136610538087', '515626', 500, 0, 21, '2021-03-04 09:18:05', 0, NULL, 1);
INSERT INTO `scenic_spot` VALUES (24, '黄果树瀑布', 5, '黄果树瀑布是黄果树景区核心景区，是国家首批5A级风景区，位于贵州省安顺市镇宁布依族苗族自治县境内的白水河上，瀑布高度为77.8米，其中主瀑高67米；瀑布宽101米，其中主瀑顶宽83.3米。黄果树瀑布属喀斯特地貌中的侵蚀裂典型瀑布。黄果树瀑布不只一个瀑布的存在，以它为核心，在它的上游和下游20千米的河段上，共形成了雄、奇、险、秀风格各异的瀑布18个，瀑布因为当地一种常见的植物“黄果树”而得名。下、前、后、左、右六个方位观赏的瀑布。它以其雄奇壮阔的大瀑布、连环密布的瀑布群而', '中国贵州省安顺市镇宁布依族苗族自治县二桥南路38号', '105.77274084091187', '26.056981375342477', '0854-10084', 268, 0, 21, '2021-03-10 00:35:05', 0, NULL, 0);
INSERT INTO `scenic_spot` VALUES (25, '平坝樱花园', 3, '平坝农场是贵州省大的花卉苗木培育基地，主要品种有桂花、红枫、香樟、雪松、玉兰、含笑等十余种风景绿化树木，可供游客观赏。场内还有2000余亩茶叶、6000余亩樱花、3000余亩桃花。平坝农场万亩樱花园有成千上万的游客慕名而来，由此成为了花海旅游观光的胜地', '中国贵州省贵阳市南明区', '106.75284147262573', '26.554429996368683', '0854-11111', 46, 0, 21, '2021-03-10 00:36:30', 0, NULL, 0);
INSERT INTO `scenic_spot` VALUES (26, '龙宫', 3, '龙宫总体面积达60平方公里，分为中心、漩塘、油菜湖、仙人箐等四大景区。龙宫风景区是以暗河溶洞为主称奇、并集旱溶洞、峡谷、瀑布、峰林、绝壁、溪河、石林等多种喀斯特地质地貌景观为一体的国家重点风景名胜区。\n\n龙宫有四大特色：一是被游客誉称为“中国惟美水溶洞”的地下暗河溶洞。龙宫水溶洞长达15公里，为国内之冠——龙宫观音洞。总体面积达2万多平方米。龙宫龙门飞瀑——龙门飞瀑，高50余米，宽26米，流水以喷泻之势钻山劈石，气势磅礴，万马奔腾，十', '中国贵州省安顺市镇宁布依族苗族自治县黄果树大道73号', '105.76932907104492', '26.057452749059056', '0854-04547', 88, 0, 21, '2021-03-10 00:37:48', 0, NULL, 0);
INSERT INTO `scenic_spot` VALUES (27, '织金洞', 4, '织金洞洞内恒温10-16度，是理想的旅行气候。织金洞地质公园现勘察发现长度为12.1公里，面积70多万平方米，划分为迎宾厅、讲经堂、塔林宫、寿星宫、灵宵殿、水晶宫、广寒宫、十万大山、宴会大厅、水乡泽国、金鼠宫、曼谷长廊等12个大厅。由于尚未全部开发，今天参观的是8个大厅，占三分之二面积。', '中国贵州省毕节市织金县官寨乡', '105.90067148208618', '26.76941276897584', '0854-00456', 88, 0, 21, '2021-03-10 00:38:42', 0, NULL, 0);
INSERT INTO `scenic_spot` VALUES (28, '多彩贵州城极地海洋世界', 2, '多彩贵州城极地海洋世界是集海洋文化、科普教育、休闲观赏为一体的综合性大型海洋动物展馆。展馆由亚马逊热带雨林区、海洋珊瑚礁鱼区、凶猛鲨鱼区、极地世界、海底隧道区、梦幻水母区、科普展示区、美人鱼剧场、海豚欢乐剧场等七大展区两个欢乐剧场组成。贵州极地海洋馆展示了北极熊、白鲸、海豚等濒危物种及国家一级保护动物中华鲟、扬子鳄、娃娃鱼等300多个品种上万尾（只）海洋生物。', '中国贵州省贵阳市南明区', '106.78097248077393', '26.530684431669293', '0854-456489', 170, 0, 21, '2021-03-10 00:39:22', 0, NULL, 0);
INSERT INTO `scenic_spot` VALUES (29, '四季贵州山地温泉水世界', 3, '四季贵州是贵州省内的水上乐园，引入世界先进的设计理念，以国际知名、国内高水平的戏水设备，以情景式体验游玩为线索，极地冰雪为主题，为贵州青年、情侣、家庭游客打造属于自己的欢乐世界。', '中国贵州省贵阳市清镇市', '106.4839768409729', '26.57375682943891', '0854-456798', 46, 0, 21, '2021-03-10 00:39:58', 0, NULL, 0);
INSERT INTO `scenic_spot` VALUES (30, '青岩古镇', 3, '青岩古镇，位于贵阳市南郊，距市区约29公里。它是贵州四大古镇之一，一座建于600年前的军事古镇 。古镇内设计精巧、工艺精湛的明清古建筑交错密布，寺庙、楼阁画栋雕梁、飞角重檐相间。悠悠古韵，2013顶峰国际非物质文化遗产保护与传承旅游规划项目。小镇隶属贵州省贵阳市，迄今已有620多年的历史。古镇曾有九寺、八庙、三宫、三阁、一院、一楼，还有石牌坊、城墙等古建筑群。原为土城，经数百年历史沧桑，经多次整修扩建，由土城而渐成街巷纵横错综之石城。', '中国贵州省贵阳市花溪区南明清街29号', '106.68816804885864', '26.33379341223037', '0854-457956', 10, 0, 21, '2021-03-10 00:42:18', 0, NULL, 0);
INSERT INTO `scenic_spot` VALUES (31, '天河潭旅游度假区', 5, '天河潭旅游度假区，国家AAAA级旅游景区，位于贵阳市与贵安新区交界处，距贵阳市中心20公里，具有山、水、瀑布、溶洞、幽潭、峡谷等观赏性自然旅游资源，并配套休闲娱乐、餐饮购物、商务会议、民俗体验、户外婚庆等多元化服务为一体的大型旅游综合体。', '中国贵州省贵阳市花溪区', '106.58145904541016', '26.442281683399393', '0845-456768146', 75, 0, 21, '2021-03-10 00:43:28', 0, NULL, 0);
INSERT INTO `scenic_spot` VALUES (32, '/afdas', 4, '131', '中国北京市北京市昌平区鼓楼南大街15号', '116.2327628955245', '40.22040142097847', '131', 123, 0, 21, '2021-04-07 14:14:47', 0, NULL, 1);
INSERT INTO `scenic_spot` VALUES (33, 'ryez', 4, 'ss', '中国天津市天津市宝坻区', '117.3024134337902', '39.7177281477462', '1233', 123, 0, 25, '2021-04-07 14:19:59', 0, NULL, 1);

-- ----------------------------
-- Table structure for scenic_spot_photo
-- ----------------------------
DROP TABLE IF EXISTS `scenic_spot_photo`;
CREATE TABLE `scenic_spot_photo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `scenic_spot_id` int(11) NULL DEFAULT 0 COMMENT '景点ID',
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  `create_user` int(11) NULL DEFAULT 0 COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '景点照片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scenic_spot_photo
-- ----------------------------
INSERT INTO `scenic_spot_photo` VALUES (32, 22, 'scenicSpotPhoto\\abbbf600-697a-4163-8093-a636b040f0ab.jpg', 21, '2021-03-10 00:29:50');
INSERT INTO `scenic_spot_photo` VALUES (33, 22, 'scenicSpotPhoto\\55200682-b537-4a53-a077-813660373b6a.jpg', 21, '2021-03-10 00:29:54');
INSERT INTO `scenic_spot_photo` VALUES (34, 22, 'scenicSpotPhoto\\20cbdeca-8616-4edc-8438-4e202fa20638.jpg', 21, '2021-03-10 00:30:00');
INSERT INTO `scenic_spot_photo` VALUES (35, 21, 'scenicSpotPhoto\\19ebeb74-698e-4ab8-a594-ef2c432cb4e8.jpg', 21, '2021-03-10 00:31:53');
INSERT INTO `scenic_spot_photo` VALUES (36, 21, 'scenicSpotPhoto\\b843fda2-9e3e-422f-99e9-1ae079afb6ec.jpg', 21, '2021-03-10 00:31:59');
INSERT INTO `scenic_spot_photo` VALUES (37, 21, 'scenicSpotPhoto\\1319e051-972d-4f91-b04c-6124d99d35fb.jpg', 21, '2021-03-10 00:32:08');
INSERT INTO `scenic_spot_photo` VALUES (39, 20, 'scenicSpotPhoto\\be4d8967-a8ce-4e72-a786-f63f83ce1b30.jpg', 21, '2021-03-10 00:33:19');
INSERT INTO `scenic_spot_photo` VALUES (40, 20, 'scenicSpotPhoto\\a086f571-634b-41bd-a630-d6503f90f58d.png', 21, '2021-03-10 00:33:26');
INSERT INTO `scenic_spot_photo` VALUES (41, 24, 'scenicSpotPhoto\\4f8e94ec-1aa9-43a6-9d1b-9d2633c5c884.jpg', 21, '2021-03-10 00:35:26');
INSERT INTO `scenic_spot_photo` VALUES (42, 24, 'scenicSpotPhoto\\b8626f9f-fe7d-494f-b496-66c2e260e673.jpg', 21, '2021-03-10 00:35:33');
INSERT INTO `scenic_spot_photo` VALUES (43, 25, 'scenicSpotPhoto\\bafa10e4-48e0-4d50-9e43-3c36cd276de6.jpg', 21, '2021-03-10 00:36:47');
INSERT INTO `scenic_spot_photo` VALUES (44, 25, 'scenicSpotPhoto\\03a9c292-421d-4651-bf05-4fa8b2018380.jpg', 21, '2021-03-10 00:36:49');
INSERT INTO `scenic_spot_photo` VALUES (45, 26, 'scenicSpotPhoto\\95743197-286b-4fb6-8690-b28746c58956.jpg', 21, '2021-03-10 00:38:04');
INSERT INTO `scenic_spot_photo` VALUES (46, 26, 'scenicSpotPhoto\\4abc99e7-afe0-48a0-b0c1-3e994a4a41c2.jpg', 21, '2021-03-10 00:38:09');
INSERT INTO `scenic_spot_photo` VALUES (47, 27, 'scenicSpotPhoto\\cfb9f79e-e0e5-4c48-8f61-e7108b7a4cfb.jpg', 21, '2021-03-10 00:40:48');
INSERT INTO `scenic_spot_photo` VALUES (48, 27, 'scenicSpotPhoto\\42d06827-cb29-4bea-b836-c8ae9f247c8d.jpg', 21, '2021-03-10 00:40:51');
INSERT INTO `scenic_spot_photo` VALUES (49, 28, 'scenicSpotPhoto\\9f693bba-e401-4492-a450-724f50ca2888.jpg', 21, '2021-03-10 00:41:06');
INSERT INTO `scenic_spot_photo` VALUES (50, 28, 'scenicSpotPhoto\\39845b23-ac61-4811-b238-37bb099f2deb.jpg', 21, '2021-03-10 00:41:11');
INSERT INTO `scenic_spot_photo` VALUES (51, 29, 'scenicSpotPhoto\\756f6b69-1156-4c1e-891a-6a552e01cf0b.jpg', 21, '2021-03-10 00:41:29');
INSERT INTO `scenic_spot_photo` VALUES (52, 29, 'scenicSpotPhoto\\48b02304-b4a6-407e-894a-b21203e772c5.jpg', 21, '2021-03-10 00:41:33');
INSERT INTO `scenic_spot_photo` VALUES (57, 31, 'scenicSpotPhoto\\03f824f6-32f6-42ef-bed9-7a7b55a72d1f.jpg', 21, '2021-04-07 08:29:03');
INSERT INTO `scenic_spot_photo` VALUES (58, 31, 'scenicSpotPhoto\\36fc102a-97bb-4a47-ae06-bb036d6a1b88.jpg', 21, '2021-04-07 08:29:21');
INSERT INTO `scenic_spot_photo` VALUES (59, 30, 'scenicSpotPhoto\\8fc10b64-4d21-4275-8ba5-f159bbaebe27.jpg', 21, '2021-04-07 08:30:01');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `slat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐',
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'QQ',
  `role` tinyint(2) NULL DEFAULT 0 COMMENT '角色（0-超级管理员 1-内容提供员 2-普通用户）',
  `create_user` int(11) NULL DEFAULT 0 COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `last_login_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次登录时间',
  `login_times` int(11) NULL DEFAULT 0 COMMENT '登录次数',
  `del_flag` tinyint(2) NULL DEFAULT 0 COMMENT '删除状态（0-正常 1-删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (21, 'admin', 'a3d808b36251437ed64455484475d500', 'ceec', '123', '超级管理员', '', '', 0, 0, '2021-03-02 01:32:36', '2021-05-03 09:05:44', 32, 0);
INSERT INTO `user` VALUES (22, 'test', 'ae2d8d516effe9f9bf4812cae5be5754', 'b32f', '', '测试a', '', '', 0, 21, '2021-03-02 01:33:09', NULL, 0, 0);
INSERT INTO `user` VALUES (23, 'a', 'f5efaa36cbb907a62c48548b010763c4', '34ce', '', 'asd', '', '', 2, 0, '2021-03-02 02:13:37', '2021-05-03 09:36:01', 6, 0);
INSERT INTO `user` VALUES (24, 'aa', 'b43d0c9dcb29faacf8de392e325cb40a', 'e97b', '', 'a', '', '', 2, 0, '2021-03-02 02:14:20', NULL, 0, 0);
INSERT INTO `user` VALUES (25, 'content', '641adf442bd19a7bc4526f11e6912c91', 'e53c', '', '内容提供员', NULL, NULL, 1, 21, '2021-03-03 02:45:26', '2021-05-03 09:21:55', 11, 0);
INSERT INTO `user` VALUES (26, 'visitor', '520bae6649b42ff5a3c8c58b7fcfc5a9', '0993', '', 'a', '', '', 2, 0, '2021-03-03 03:03:22', '2021-03-03 03:03:34', 1, 0);
INSERT INTO `user` VALUES (27, 'content2', '452e6008ec80c75d13ab8a7a80972c30', 'cae5', '', '123', NULL, NULL, 1, 21, '2021-03-03 03:17:43', NULL, 0, 0);
INSERT INTO `user` VALUES (28, 'visitor2', 'c6d9aa89b677dd5e2d30970d77d39ad1', 'fada', '', 'asd', '', '', 2, 0, '2021-03-03 03:19:42', '2021-03-03 03:20:01', 1, 0);
INSERT INTO `user` VALUES (29, '23', '978868c23c4c22e2298d45ff2c5d1c0e', '2bea', '', 'wo', NULL, NULL, 1, 21, '2021-04-25 09:43:53', NULL, 0, 0);
INSERT INTO `user` VALUES (30, 'zhang', '39a1c2d2d266192687dddfb804b36e22', 'cefc', '', '超有钱', NULL, NULL, 0, 21, '2021-04-25 11:05:07', NULL, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
